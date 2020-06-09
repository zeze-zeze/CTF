import io
import sys
import struct
import time
import functools

OBJECT_VTABLE = 0x410108

u64 = lambda b: struct.unpack('<Q', b)[0]
p64 = lambda v: struct.pack('<Q', v)

def search_object(data):
    last_off = 0
    sig = p64(OBJECT_VTABLE)
    while True:
        last_off = data.find(sig, last_off + 1)
        if last_off == -1:
            break
        else:
            yield last_off

def raw2int(d):
    if d is not None:
        return int((d - 5) / 10)
    return None
def int2raw(v):
    if v is not None:
        return v * 10 + 5
    return None
def rawp2intp(p):
    return tuple(map(raw2int, p))
def intp2rawp(p):
    return tuple(map(int2raw, p))

class Process:
    def __init__(self, pid):
        self.fp = open('/proc/%d/mem' % pid, 'rb+', 0)

    def writemem(self, addr, data):
        self.fp.seek(addr, io.SEEK_SET)
        self.fp.write(data)

    def readmem(self, addr, size):
        self.fp.seek(addr, io.SEEK_SET)
        return self.fp.read(size)

    def readint(self, addr):
        return u64(self.readmem(addr, 8))

    def readdbl(self, addr):
        return struct.unpack('<d', self.readmem(addr, 8))[0]

    def writedbl(self, addr, val):
        b = struct.pack('<d', val)
        self.writemem(addr, b)

class MemoryDiffer:
    def snapshot(self):
        raise NotImplemented()

    def first_scan(self):
        self.last = self.snapshot()

    def next_scan(self):
        curr = self.snapshot()
        changed = []
        for i, (a, b) in enumerate(zip(self.last, curr)):
            if a != b:
                changed.append(i)
        self.last = curr
        return changed

class Cheat(Process):
    def set_raw_pos(self, dbl_vals, x=None, y=None, z=None):
        if x is not None: self.writedbl(dbl_vals + 12*8, x)
        if y is not None: self.writedbl(dbl_vals + 13*8, y)
        if z is not None: self.writedbl(dbl_vals + 14*8, z)

    def get_raw_pos(self, dbl_vals):
        return (
            self.readdbl(dbl_vals + 12*8),
            self.readdbl(dbl_vals + 13*8),
            self.readdbl(dbl_vals + 14*8),
        )

    def get_pos(self, dbl_vals):
        return tuple(map(raw2int, self.get_raw_pos(dbl_vals)))

    def set_pos(dbl_vals, x=None, y=None, z=None):
        self.set_raw_pos(dbl_vals, int2raw(x), int2raw(y), int2raw(z))

class Pos:
    def __init__(self, proc, dbl_vals):
        self.proc = proc
        self.dbl_vals = dbl_vals
        self.set_raw_pos = functools.partial(self.set_raw_pos, dbl_vals)
        self.get_raw_pos = functools.partial(self.get_raw_pos, dbl_vals)
        self.set_pos = functools.partial(self.set_pos, dbl_vals)
        self.set_pos = functools.partial(self.set_pos, dbl_vals)

class ObjectPositionDiffer(MemoryDiffer):
    def __init__(self, proc, addrs):
        self.proc = proc
        self.addrs = addrs

    def snapshot(self):
        return [
            (self.proc.get_raw_pos(i))
            for i in self.addrs
        ]

def main(pid, args):
    with open('/proc/%d/maps' % pid, 'r') as fp:
        lines = list(fp)
        first_line = lines[0]

    assert '00400000-00413000 r-xp' in first_line and \
           '/memfd:' in first_line and \
           '(deleted)' in first_line

    heap_line = [ i for i in lines if '[heap]' in i ][0]
    heap = int(heap_line.split('-')[0], 16)
    heap_end = int(heap_line.split('-')[1].split(' ')[0], 16)
    heap_size = heap_end - heap

    print('[*] heap at 0x%x to 0x%x' % (heap, heap_end))

    proc = Cheat(pid)

    player_ptr = proc.readint(0xdc0588)
    #print('[*] one object located at 0x%x' % player_ptr)
    vtable = proc.readint(player_ptr)
    double_values = proc.readint(player_ptr + 8)
    #print('[*] vtable at 0x%x' % vtable)
    #print('[*] double_values at 0x%x' % double_values)
    assert vtable == OBJECT_VTABLE

    heap_data = proc.readmem(heap, heap_size)

    all_objects_addr = [
        i + heap
        for i in search_object(heap_data)
    ]

    all_objects_dbl_vals = [
        u64(heap_data[i-heap+8:i-heap+16])
        for i in all_objects_addr
    ]

    assert all_objects_dbl_vals[0] == double_values

    # never too slow
    proc.writemem(0x406E29, bytes([0x90, 0xe9]))

    def watch():
        changed = set()
        differ = ObjectPositionDiffer(proc, all_objects_dbl_vals)
        differ.first_scan()
        while True:
            time.sleep(0.6)
            print(time.time())
            print('You are at %r' % (proc.get_pos(all_objects_dbl_vals[0]), ))
            changing = differ.next_scan()
            changed.update(changing)
            print('Changed since hack start: %r' % (changed, ))
            print('Changed since last scan: %r' % (changing, ))

    if 'watch' in args:
        return watch()

    import IPython
    IPython.embed()

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('Usage: %s pid [args ...]' % sys.argv[1])
    main(int(sys.argv[1], 10), sys.argv[2:])

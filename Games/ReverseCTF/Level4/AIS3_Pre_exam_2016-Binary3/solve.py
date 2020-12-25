import angr
import claripy

p = angr.Project("./binary3", auto_load_libs = False)

flag_chars = [claripy.BVS(f'flag_{i}', 8) for i in range(30)]
flag = claripy.Concat(*flag_chars)

st = p.factory.entry_state(stdin = flag)

for k in flag_chars:
    st.solver.add(k >= 32)
    st.solver.add(k <= 126)

st.solver.add(flag_chars[0] == b'a')
st.solver.add(flag_chars[1] == b'i')
st.solver.add(flag_chars[2] == b's')
st.solver.add(flag_chars[3] == b'3')
st.solver.add(flag_chars[4] == b'{')

simgr = p.factory.simgr(st)
simgr.explore(find = 0x402476, avoid = (0x40247d, 0x401D46, 0x401D86, 0x401DD1, ))

print(simgr.found[0].posix.dumps(0))

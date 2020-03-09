import angr

p = angr.Project('./crackme', load_options={"auto_load_libs": False})
state = p.factory.entry_state()
sm = p.factory.simgr(state)
sm.explore(find=0x402166)
st = sm.found[0]
code = st.posix.dumps(0).strip('\x00')
print code

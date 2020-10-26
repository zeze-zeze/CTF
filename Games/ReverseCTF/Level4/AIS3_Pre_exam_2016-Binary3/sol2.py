import angr

p = angr.Project('binary3')
#state = pr.factory.entry_state()
#sm = pr.factory.simgr(state)
ex = p.surveyors.Explorer(find=addr(0x402471, ), avoid=(0x40247d, ))
ex.run()
print(ex.found[0].state.posix.dumps(0))

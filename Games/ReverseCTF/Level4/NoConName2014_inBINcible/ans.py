import gdb
charset = list("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!?_-@")
listflag = list("0000000000000000")
continue_num = 0
gdb.execute('file inbincible')
gdb.execute('b*0x08049118')
for i in range(0,16) :
	for j in charset :
		listflag[i] = j
		gdb.execute('run '+''.join(listflag))
		tmp = continue_num
		while tmp > 0 :
			gdb.execute('c')
			tmp = tmp - 1
		b00l = gdb.execute('x/bx ($esp + 0x1b)',to_string = True)
		if b00l[15] == '1' :
			continue_num = continue_num+1
			break
print ''.join(listflag)

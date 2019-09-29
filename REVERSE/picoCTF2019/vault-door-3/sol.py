#coding=utf-8

rev = 'jU5t_a_sna_3lpm16g84c_u_4_m0r846' 

password = ['+'] * 32

for i in range(8):
    password[i] = rev[i]

for i in range(8,16):
    password[23-i] = rev[i]

for i in range(16, 32, 2):
    password[46-i] = rev[i]

for i in range(31, 15, -2):
    password[i] = rev[i]

print ''.join(password)
 

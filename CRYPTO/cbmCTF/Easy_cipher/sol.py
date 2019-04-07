# python2
# coding=utf-8
import base64

def decryptRailFence(cipher, key): 
  
    # create the matrix to cipher  
    # plain text key = rows ,  
    # length(text) = columns 
    # filling the rail matrix to  
    # distinguish filled spaces 
    # from blank ones 
    rail = [['\n' for i in range(len(cipher))]  
                  for j in range(key)] 
      
    # to find the direction 
    dir_down = None
    row, col = 0, 0
      
    # mark the places with '*' 
    for i in range(len(cipher)): 
        if row == 0: 
            dir_down = True
        if row == key - 1: 
            dir_down = False
          
        # place the marker 
        rail[row][col] = '*'
        col += 1
          
        # find the next row  
        # using direction flag 
        if dir_down: 
            row += 1
        else: 
            row -= 1
              
    # now we can construct the  
    # fill the rail matrix 
    index = 0
    for i in range(key): 
        for j in range(len(cipher)): 
            if ((rail[i][j] == '*') and
               (index < len(cipher))): 
                rail[i][j] = cipher[index] 
                index += 1
          
    # now read the matrix in  
    # zig-zag manner to construct 
    # the resultant text 
    result = [] 
    row, col = 0, 0
    for i in range(len(cipher)): 
          
        # check the direction of flow 
        if row == 0: 
            dir_down = True
        if row == key-1: 
            dir_down = False
              
        # place the marker 
        if (rail[row][col] != '*'): 
            result.append(rail[row][col]) 
            col += 1
              
        # find the next row using 
        # direction flag 
        if dir_down: 
            row += 1
        else: 
            row -= 1
    return("".join(result)) 

cipher=open('easy_cipher').read()
rail=2
while 1:
  res=decryptRailFence(cipher, rail)
  print res
  flag=base64.b64decode(res)
  if 'ctf' in flag:
    print flag
    break
  rail+=1
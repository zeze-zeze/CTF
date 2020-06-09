# Lab 8 election, Note++

* 學號: 0616018
* 姓名: 林哲宇

## election
### 大綱
1. 題目理解
2. 解題流程
3. exploit
4. 心得

### 題目理解
一開始要的選單有 login, register, exit。要 login 的話，會先 `memcmp(buf, token, len)`，其中 buf 是全域變數，token 是區域變數，如果兩個字串相等才可以 login。register 則是用來更新 token，並且將剩餘票數全域變數 vote 設為 10。最後的 handler 則是用氣泡排序印出最高票的候選人。

login 之後的選單有 vote, say something, logout，vote 就是將選擇的候選人的票數加一，自己的剩餘票數 vote 減一。say something 就是將字串輸入到一個區域變數 msg。logout 就是 return 回到第一個選單。

### 解題流程
1. leak canary, text address
2. overflow
3. stack migration, return to csu, leak libc address
4. ROP, get shell

#### 1. leak canary, text address
首先看第一個選單，login 的部分使用 memcmp，注意到它第三個變數 len 是使用 buf 的長度，也就是說我們可以比對 buf 長度的字串，無論 token 有多長。

這部分我們就可以針對 canary 進行暴力搜索，因為 buf 最長長度比 token 多 0x10，所以我們能將 canary 爆出來。其中 canary 只有八 bytes，另外 8 bytes 經過 gdb 知道是 text 段的位址，於是我就得到了這兩樣東西。

#### 2. overflow
第二個選單中的 say something，用來寫入的是 read，而輸入的長度是候選人的得票數，也就是說我們只要投給某個候選人幾票，就可以輸入多長的字串。

這部分就是簡單的 stack overflow，由於 msg 是區域變數，我們可以控制 stack，進而控制 return address。

這步驟有個小插曲，因為每次 login 只有十票可以投，所以不夠用的話要一直重複做 register, login 的步驟。

#### 3. stack migration, return to csu, leak libc address
上一步雖然成功 overflow 了，仔細一看竟然只能剛剛好蓋到 return address，所以這邊我使用 stack migration，鋪好 canary後將 rsp 最終引到 buf。

好不容易能控制程式流程了，然而卻還是無法開 shell，因為 gadget 不夠用。因此必須要先拿到 libc address，才可以有更多東西用。

我本來的想法是先將 libc address 給 leak 出來，再從 main 重來一次，但是我發現不管怎麼做程式都會死掉，所以我最後換了方法。

我先用 puts 將 puts@got leak 出來，接著利用 return to csu 同時控制 rsi, rdx，最後 call read，如此一來我可以將我的輸入再次寫到 buf。

結論: 這邊分兩個步驟，用 puts 拿到 libc，再 read，這樣在一次 ROP 內就可以把剛剛拿到的 libc 再接著放到 stack。

#### 4. ROP, get shell
既然現在有了 libc，又可以繼續 ROP，接下來要做的事就很簡單了。輕鬆構造出 `execve("/bin/sh", 0, 0)` 的 payload，執行就拿捯 shell 了。

### 心得
這題我基本上把講師提到的東西都用上了，不過我還是不太理解為什麼第三步在重跑 main 的時候會出錯，明明應該會做 stack 的整理呀......

還有我本來想用 system("/bin/sh")，但是程式也會死掉，跟進去看也看不出所以然，也不是 alignment 的問題 QQ

解題狀況比想像中好一點，看到洞的當下可以快速反應可以使用的招數，講師跟題目讚讚。

## Note++ 大綱


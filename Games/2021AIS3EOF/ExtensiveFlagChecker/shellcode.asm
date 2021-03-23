00000000  20F8              and al,bh
00000002  4B0000            o64 add [r8],al
00000005  488D051A000000    lea rax,[rel 0x26]
0000000C  48C7C3D74B0000    mov rbx,0x4bd7
00000013  8A5418FF          mov dl,[rax+rbx-0x1]
00000017  80C21A            add dl,0x1a
0000001A  885418FF          mov [rax+rbx-0x1],dl
0000001E  48FFCB            dec rbx
00000021  4885DB            test rbx,rbx
00000024  75ED              jnz 0x13
00000026  2E73EB            cs jnc 0x14
00000029  00E6              add dh,ah
0000002B  E6E6              out 0xe6,al
0000002D  2EAD              cs lodsd
0000002F  A99C31E6E6        test eax,0xe6e6319c
00000034  703A              jo 0x70
00000036  FE                db 0xfe
00000037  E566              in eax,0x66
00000039  D8B86E3AFEE5      fdivr dword [rax-0x1a01c592]
0000003F  2EE5B1            cs in eax,0xb1
00000042  2E6BC15B          cs imul eax,ecx,byte +0x5b
00000046  D38045BDAEB8      rol dword [rax-0x475142bb],cl
0000004C  B8B880FBF7        mov eax,0xf7fb80b8
00000051  2D7FB8B83E        sub eax,0x3eb8b87f
00000056  6C                insb
00000057  B013              mov al,0x13
00000059  38F6              cmp dh,dh
0000005B  E340              jrcxz 0x9d
0000005D  6C                insb
0000005E  B013              mov al,0x13
00000060  8013FF            adc byte [rbx],0xff
00000063  803DEF8D25B172    cmp byte [rel 0xffffffffb1258e59],0x72
0000006A  EA                db 0xea
0000006B  1F                db 0x1f
0000006C  E9E9E9B130        jmp 0x30b1ea5a
00000071  2C7D              sub al,0x7d
00000073  B4E9              mov ah,0xe9
00000075  E96FDD21E8        jmp 0xffffffffe821dde9
0000007A  69F74871DD21      imul esi,edi,dword 0x21dd7148
00000080  E8B1E834B1        call 0xffffffffb134e936
00000085  6A64              push byte +0x64
00000087  7A52              jpe 0xdb
00000089  A0D75F2A484848A0  mov al,[qword 0x21a04848482a5fd7]
         -21
00000092  25759D4848        and eax,0x48489d75
00000097  DA743009          fidiv dword [rax+rsi+0x9]
0000009B  C82225E0          enter 0x2522,0xe0
0000009F  7430              jz 0xd1
000000A1  09A0091DA0DF      or [rax-0x205fe2f7],esp
000000A7  ED                in eax,dx
000000A8  8F                db 0x8f
000000A9  B7DF              mov bh,0xdf
000000AB  1AA271474747      sbb ah,[rdx+0x47474771]
000000B1  DF644839          fbld tword [rax+rcx*2+0x39]
000000B5  E047              loopne 0xfe
000000B7  4721B36F4CC7F9    and [r11-0x638b391],r14d
000000BE  E81FB36F4C        call 0x4c6fb3e2
000000C3  DF4C60DF          fisttp word [rax-0x21]
000000C7  2230              and dh,[rax]
000000C9  D2FA              sar dl,cl
000000CB  C07D054E          sar byte [rbp+0x5],byte 0x4e
000000CF  E8E8E8C043        call 0x43c0e9bc
000000D4  67F9              a32 stc
000000D6  BFE8E87E14        mov edi,0x147ee8e8
000000DB  50                push rax
000000DC  6B6866EB          imul ebp,[rax+0x66],byte -0x15
000000E0  8014506B          adc byte [rax+rdx*2],0x6b
000000E4  C06B3FC0          shr byte [rbx+0x3f],byte 0xc0
000000E8  858FF59D41FA      test [rdi-0x5be620b],ecx
000000EE  82                db 0x82
000000EF  CF                iret
000000F0  A9A9A941C0        test eax,0xc041a9a9
000000F5  C4                db 0xc4
000000F6  193F              sbb [rdi],edi
000000F8  A9A9FF95D1        test eax,0xd195ffa9
000000FD  682917D101        push qword 0x1d11729
00000102  95                xchg eax,ebp
00000103  D16841            shr dword [rax+0x41],1
00000106  68BC41020C        push qword 0xc0241bc
0000010B  721A              jc 0x127
0000010D  3952CA            cmp [rdx-0x36],edx
00000110  A7                cmpsd
00000111  D1D1              rcl ecx,1
00000113  D139              sar dword [rcx],1
00000115  080C10            or [rax+rdx],cl
00000118  37                db 0x37
00000119  D1D1              rcl ecx,1
0000011B  F73DA920510F      idiv dword [rel 0xf5121ca]
00000121  F5                cmc
00000122  F9                stc
00000123  3DA9203920        cmp eax,0x203920a9
00000128  1439              adc al,0x39
0000012A  4A                rex.wx
0000012B  C4                db 0xc4
0000012C  9A                db 0x9a
0000012D  F2                repne
0000012E  45                rex.rb
0000012F  2EA6              cs cmpsb
00000131  B37D              mov bl,0x7d
00000133  7D7D              jnl 0x1b2
00000135  45                rex.rb
00000136  C4                db 0xc4
00000137  B80F437D7D        mov eax,0x7d7d430f
0000013C  0399B57CFDCB      add ebx,[rcx-0x3402834b]
00000142  0E                db 0x0e
00000143  0599B57C45        add eax,0x457cb599
00000148  7CC0              jl 0x10a
0000014A  45                rex.rb
0000014B  26                es
0000014C  F0                lock
0000014D  F6                db 0xf6
0000014E  CE                db 0xce
0000014F  C6                db 0xc6
00000150  DD6514            frstor [rbp+0x14]
00000153  0E                db 0x0e
00000154  0E                db 0x0e
00000155  0E                db 0x0e
00000156  C6                db 0xc6
00000157  A34FDD240E0EE4D2  mov [qword 0xb6d2e40e0e24dd4f],eax
         -B6
00000160  6B8E4C7F86D2B6    imul ecx,[rsi-0x2d7980b4],byte -0x4a
00000167  6BC66B            imul eax,esi,byte +0x6b
0000016A  47                rex.rxb
0000016B  C6                db 0xc6
0000016C  E5F7              in eax,0xf7
0000016E  F5                cmc
0000016F  3D7534DCA3        cmp eax,0xa3dc3475
00000174  7D7D              jnl 0x1f3
00000176  7D75              jnl 0x1ed
00000178  F2                repne
00000179  1E                db 0x1e
0000017A  B9737D7D33        mov ecx,0x337d7d73
0000017F  11A57AFD8B77      adc [rbp+0x778bfd7a],esp
00000185  3511A57A75        xor eax,0x757aa511
0000018A  7A16              jpe 0x1a2
0000018C  755C              jnz 0x1ea
0000018E  862C94            xchg ch,[rsp+rdx*4]
00000191  3F                db 0x3f
00000192  FE                db 0xfe
00000193  76F1              jna 0x186
00000195  7777              ja 0x20e
00000197  773F              ja 0x1d8
00000199  10143C            adc [rsp+rdi],dl
0000019C  417777            ja 0x216
0000019F  0183EFE8F7B9      add [rbx-0x46081711],eax
000001A5  C2FF83            ret 0x83ff
000001A8  EF                out dx,eax
000001A9  E83FE8BC3F        call 0x3fbce9ed
000001AE  F62C86            imul byte [rsi+rax*4]
000001B1  9E                sahf
000001B2  F8                clc
000001B3  E33B              jrcxz 0x1f0
000001B5  CA7070            retf 0x7070
000001B8  70F8              jo 0x1b2
000001BA  7DE1              jnl 0x19d
000001BC  BA1A7070DA        mov edx,0xda70701a
000001C1  CC                int3
000001C2  E875F00231        call 0x3102f23c
000001C7  B8CCE875F8        mov eax,0xf875e8cc
000001CC  7549              jnz 0x217
000001CE  F8                clc
000001CF  BBB98B03D9        mov ebx,0xd9038bb9
000001D4  16                db 0x16
000001D5  2E                cs
000001D6  27                db 0x27
000001D7  3131              xor [rcx],esi
000001D9  31D9              xor ecx,ebx
000001DB  EC                in al,dx
000001DC  C06AD731          shr byte [rdx-0x29],byte 0x31
000001E0  3117              xor [rdi],edx
000001E2  9D                popf
000001E3  2964B1EF          sub [rcx+rsi*4-0x11],esp
000001E7  C8199D29          enter 0x9d19,0x29
000001EB  64D964C8D9        fldenv [fs:rax+rcx*8-0x27]
000001F0  AE                scasb
000001F1  181E              sbb [rsi],bl
000001F3  7686              jna 0x17b
000001F5  EF                out dx,eax
000001F6  47B4DE            mov r12b,0xde
000001F9  DE                db 0xde
000001FA  DE86650926E3      fiadd word [rsi-0x1cd9f69b]
00000200  DE                db 0xde
00000201  DE24EA            fisub word [rdx+rbp*8]
00000204  D6                salc
00000205  7D5E              jnl 0x265
00000207  4C7FC6            o64 jg 0x1d0
0000020A  EA                db 0xea
0000020B  D6                salc
0000020C  7D86              jnl 0x194
0000020E  7D31              jnl 0x241
00000210  86C7              xchg al,bh
00000212  C1                db 0xc1
00000213  37                db 0x37
00000214  4F97              xchg rax,r15
00000216  6E                outsb
00000217  56                push rsi
00000218  257F7F7F97        and eax,0x977f7f7f
0000021D  F4                hlt
0000021E  90                nop
0000021F  F4                hlt
00000220  6A7F              push byte +0x7f
00000222  7FB5              jg 0x1d9
00000224  63                db 0x63
00000225  C7                db 0xc7
00000226  3CFF              cmp al,0xff
00000228  DD18              fstp qword [rax]
0000022A  D7                xlatb
0000022B  63                db 0x63
0000022C  C7                db 0xc7
0000022D  3C97              cmp al,0x97
0000022F  3C88              cmp al,0x88
00000231  97                xchg eax,edi
00000232  D6                salc
00000233  B826CEEE0D        mov eax,0xdeece26
00000238  F5                cmc
00000239  1C16              sbb al,0x16
0000023B  16                db 0x16
0000023C  16                db 0x16
0000023D  EE                out dx,al
0000023E  4BD7              o64 xlatb
00000240  285916            sub [rcx+0x16],bl
00000243  16                db 0x16
00000244  2C1A              sub al,0x1a
00000246  1E                db 0x1e
00000247  F396              rep xchg eax,esi
00000249  44                rex.r
0000024A  2F                db 0x2f
0000024B  2E1A1E            sbb bl,[cs:rsi]
0000024E  F3EE              rep out dx,al
00000250  F36F              rep outsd
00000252  EE                out dx,al
00000253  751F              jnz 0x274
00000255  C5                db 0xc5
00000256  ED                in eax,dx
00000257  D7                xlatb
00000258  8800              mov [rax],al
0000025A  312F              xor [rdi],ebp
0000025C  2F                db 0x2f
0000025D  2F                db 0x2f
0000025E  D7                xlatb
0000025F  C2EE80            ret 0x80ee
00000262  B42F              mov ah,0x2f
00000264  2F                db 0x2f
00000265  4153              push r11
00000267  07                db 0x07
00000268  BAAF59E617        mov edx,0x17e659af
0000026D  53                push rbx
0000026E  07                db 0x07
0000026F  BAD7BA56D7        mov edx,0xd756bad7
00000274  80C690            add dh,0x90
00000277  E84889C15A        call 0x5ac18bc4
0000027C  0000              add [rax],al
0000027E  0048CB            add [rax-0x35],cl
00000281  57                push rdi
00000282  54                push rsp
00000283  B500              mov ch,0x0
00000285  00EA              add dl,ch
00000287  A4                movsb
00000288  386380            cmp [rbx-0x80],ah
0000028B  1208              adc cl,[rax]
0000028D  88A4386348639F    mov [rax+rdi-0x609cb79d],ah
00000294  48                rex.w
00000295  41                rex.b
00000296  0F                db 0x0f
00000297  91                xchg eax,ecx
00000298  E9404109B2        jmp 0xffffffffb20943dd
0000029D  0808              or [rax],cl
0000029F  0840D3            or [rax-0x2d],al
000002A2  9F                lahf
000002A3  1F                db 0x1f
000002A4  4D0808            o64 or [r8],r9b
000002A7  82                db 0x82
000002A8  8CB01B882A6A      mov [rax+0x6a2a881b],segr6
000002AE  808CB01B401B5740  or byte [rax+rsi*4+0x571b401b],0x40
000002B6  89C7              mov edi,eax
000002B8  19A1DE17DFB0      sbb [rcx-0x4f20e822],esp
000002BE  E6E6              out 0xe6,al
000002C0  E6DE              out 0xde,al
000002C2  C9                leave
000002C3  352853E6E6        xor eax,0xe6e65328
000002C8  809A4E1166180C    sbb byte [rdx+0x1866114e],0xc
000002CF  1E                db 0x1e
000002D0  9A                db 0x9a
000002D1  4E11DE            adc rsi,r11
000002D4  11CD              adc ebp,ecx
000002D6  DE5F3D            ficomp word [rdi+0x3d]
000002D9  AF                scasd
000002DA  77E4              ja 0x2c0
000002DC  BD25C20C0C        mov ebp,0xc0cc225
000002E1  0CE4              or al,0xe4
000002E3  0B4F79            or ecx,[rdi+0x79]
000002E6  B10C              mov cl,0xc
000002E8  0CF2              or al,0xf2
000002EA  8834B3            mov [rbx+rsi*4],dh
000002ED  8C5A80            mov [rdx-0x80],ds
000002F0  A4                movsb
000002F1  8834B3            mov [rbx+rsi*4],dh
000002F4  E4B3              in al,0xb3
000002F6  07                db 0x07
000002F7  E4A5              in al,0xa5
000002F9  97                xchg eax,edi
000002FA  95                xchg eax,ebp
000002FB  9D                popf
000002FC  50                push rax
000002FD  E991FE9898        jmp 0xffffffff98990193
00000302  98                cwde
00000303  50                push rax
00000304  A7                cmpsd
00000305  2B7850            sub edi,[rax+0x50]
00000308  98                cwde
00000309  98                cwde
0000030A  2E14E0            cs adc al,0xe0
0000030D  AF                scasd
0000030E  1826              sbb [rsi],ah
00000310  5C                pop rsp
00000311  1014E0            adc [rax],dl
00000314  AF                scasd
00000315  50                push rax
00000316  AF                scasd
00000317  235011            and edx,[rax+0x11]
0000031A  33814964A53D      xor eax,[rcx+0x3da56449]
00000320  C25C5C            ret 0x5c5c
00000323  5C                pop rsp
00000324  64835FBB64        sbb dword [fs:rdi-0x45],byte +0x64
00000329  5C                pop rsp
0000032A  5C                pop rsp
0000032B  F20034FB          repne add [rbx+rdi*8],dh
0000032F  DCEA              fsub to st2
00000331  9A                db 0x9a
00000332  A4                movsb
00000333  0034FB            add [rbx+rdi*8],dh
00000336  64FB              fs sti
00000338  8764BD17          xchg esp,[rbp+rdi*4+0x17]
0000033C  ED                in eax,dx
0000033D  C5                db 0xc5
0000033E  DE17              ficom word [rdi]
00000340  6F                outsd
00000341  4496              xchg eax,esi
00000343  96                xchg eax,esi
00000344  96                xchg eax,esi
00000345  DECD              fmulp st5
00000347  99                cdq
00000348  18DE              sbb dh,bl
0000034A  96                xchg eax,esi
0000034B  96                xchg eax,esi
0000034C  F4                hlt
0000034D  8AAE65169C6F      mov ch,[rsi+0x6f9c1665]
00000353  1E                db 0x1e
00000354  8AAE65DE6581      mov ch,[rsi-0x7e9a219b]
0000035A  DEEF              fsubp st7
0000035C  51                push rcx
0000035D  5F                pop rdi
0000035E  B7D7              mov bh,0xd7
00000360  1E                db 0x1e
00000361  96                xchg eax,esi
00000362  456F              outsd
00000364  6F                outsd
00000365  6F                outsd
00000366  D7                xlatb
00000367  2CC0              sub al,0xc0
00000369  CE                db 0xce
0000036A  D7                xlatb
0000036B  6F                outsd
0000036C  6F                outsd
0000036D  F5                cmc
0000036E  5B                pop rbx
0000036F  6764EF            fs out dx,eax
00000372  CD4C              int 0x4c
00000374  17                db 0x17
00000375  5B                pop rbx
00000376  6764D7            fs a32 xlatb
00000379  64C8D71658        fs enter 0x16d7,0x58
0000037E  86BE5AF951B0      xchg bh,[rsi-0x4fae06a6]
00000384  52                push rdx
00000385  52                push rdx
00000386  52                push rdx
00000387  5A                pop rdx
00000388  CF                iret
00000389  63                db 0x63
0000038A  465A              pop rdx
0000038C  52                push rdx
0000038D  52                push rdx
0000038E  20FE              and dh,bh
00000390  6A27              push byte +0x27
00000392  D2C8              ror al,cl
00000394  0D9AFE6A27        or eax,0x276afe9a
00000399  5A                pop rdx
0000039A  27                db 0x27
0000039B  6B5AD1FB          imul ebx,[rdx-0x2f],byte -0x5
0000039F  0199A5CE9613      add [rcx+0x1396cea5],ebx
000003A5  0D0D0DA52C        or eax,0x2ca50d0d
000003AA  C028A5            shr byte [rax],byte 0xa5
000003AD  0D0D83A975        or eax,0x75a9830d
000003B2  D4                db 0xd4
000003B3  8D                db 0x8d
000003B4  CB                retf
000003B5  B3E5              mov bl,0xe5
000003B7  A975D4A5D4        test eax,0xd4a5d475
000003BC  F8                clc
000003BD  A5                movsd
000003BE  16                db 0x16
000003BF  C8462E6F          enter 0x2e46,0x6f
000003C3  D0F8              sar al,1
000003C5  6D                insd
000003C6  57                push rdi
000003C7  57                push rdi
000003C8  57                push rdi
000003C9  6F                outsd
000003CA  CE                db 0xce
000003CB  326D6F            xor ch,[rbp+0x6f]
000003CE  57                push rdi
000003CF  57                push rdi
000003D0  1D13FF56D7        sbb eax,0xd756ff13
000003D5  95                xchg eax,ebp
000003D6  4AAF              scasq
000003D8  13FF              adc edi,edi
000003DA  56                push rsi
000003DB  6F                outsd
000003DC  56                push rsi
000003DD  CA6F78            retf 0x786f
000003E0  9A                db 0x9a
000003E1  2830              sub [rax],dh
000003E3  72B1              jc 0x396
000003E5  69FC4A4A4A72      imul edi,esp,dword 0x724a4a4a
000003EB  5B                pop rbx
000003EC  AF                scasd
000003ED  55                push rbp
000003EE  DB4A4A            fisttp dword [rdx+0x4a]
000003F1  EC                in al,dx
000003F2  7602              jna 0x3f6
000003F4  F3CAA45A          rep retf 0x5aa4
000003F8  327602            xor dh,[rsi+0x2]
000003FB  F372F3            rep jc 0x3f1
000003FE  D7                xlatb
000003FF  72E9              jc 0x3ea
00000401  A7                cmpsd
00000402  D9916261192C      fst dword [rcx+0x2c196162]
00000408  3A3A              cmp bh,[rdx]
0000040A  3A628B            cmp ah,[rdx-0x75]
0000040D  1F                db 0x1f
0000040E  B20B              mov dl,0xb
00000410  3A3A              cmp bh,[rdx]
00000412  1C66              sbb al,0x66
00000414  72A3              jc 0x3b9
00000416  BA045B2266        mov edx,0x66225b04
0000041B  72A3              jc 0x3c0
0000041D  62                db 0x62
0000041E  A34762999789C103  mov [qword 0x2c03c18997996247],eax
         -2C
00000427  A4                movsb
00000428  61                db 0x61
00000429  5B                pop rbx
0000042A  5B                pop rbx
0000042B  5B                pop rbx
0000042C  03CA              add ecx,edx
0000042E  66DA4A5B          o16 fimul dword [rdx+0x5b]
00000432  5B                pop rbx
00000433  F1                int1
00000434  1F                db 0x1f
00000435  3382DBE9D2C3      xor eax,[rdx-0x3c2d1625]
0000043B  1F                db 0x1f
0000043C  33820382CE03      xor eax,[rdx+0x3ce8203]
00000442  247E              and al,0x7e
00000444  748C              jz 0x3d2
00000446  6815CDAEC0        push qword 0xffffffffc0aecd15
0000044B  C0C068            rol al,byte 0x68
0000044E  739F              jnc 0x3ef
00000450  2AF3              sub dh,bl
00000452  C0C0BE            rol al,byte 0xbe
00000455  0498              add al,0x98
00000457  CB                retf
00000458  40                rex
00000459  265C              es pop rsp
0000045B  280498            sub [rax+rbx*4],al
0000045E  CB                retf
0000045F  68CBC7684D        push qword 0x4d68c7cb
00000464  37                db 0x37
00000465  9D                popf
00000466  F5                cmc
00000467  1459              adc al,0x59
00000469  A1EA5C5C5C14877B  mov eax,[qword 0xb17b87145c5c5cea]
         -B1
00000472  07                db 0x07
00000473  5C                pop rsp
00000474  5C                pop rsp
00000475  7A18              jpe 0x48f
00000477  846FDC            test [rdi-0x24],ch
0000047A  22EB              and ch,bl
0000047C  54                push rsp
0000047D  18846F146F3314    sbb [rdi+rbp*2+0x14336f14],al
00000484  21E3              and ebx,esp
00000486  B1B9              mov cl,0xb9
00000488  B10A              mov cl,0xa
0000048A  F2                repne
0000048B  07                db 0x07
0000048C  F9                stc
0000048D  F9                stc
0000048E  F9                stc
0000048F  B138              mov cl,0x38
00000491  6C                insb
00000492  55                push rbp
00000493  B8F9F95755        mov eax,0x5557f9f9
00000498  E120              loope 0x4ba
0000049A  798F              jns 0x42b
0000049C  ED                in eax,dx
0000049D  F1                int1
0000049E  55                push rbp
0000049F  E120              loope 0x4c1
000004A1  B120              mov cl,0x20
000004A3  64B172            fs mov cl,0x72
000004A6  D4                db 0xd4
000004A7  02EA              add ch,dl
000004A9  F5                cmc
000004AA  C6                db 0xc6
000004AB  DEEB              fsubp st3
000004AD  ED                in eax,dx
000004AE  ED                in eax,dx
000004AF  ED                in eax,dx
000004B0  F5                cmc
000004B1  74A0              jz 0x453
000004B3  50                push rax
000004B4  F4                hlt
000004B5  ED                in eax,dx
000004B6  ED                in eax,dx
000004B7  9BD145EC          wait rol dword [rbp-0x14],1
000004BB  6D                insd
000004BC  1303              adc eax,[rbx]
000004BE  35D145ECF5        xor eax,0xf5ec45d1
000004C3  EC                in al,dx
000004C4  08F5              or ch,dh
000004C6  5E                pop rsi
000004C7  58                pop rax
000004C8  4E                rex.wrx
000004C9  66B798            o16 mov bh,0x98
000004CC  7015              jo 0x4e3
000004CE  CF                iret
000004CF  CF                iret
000004D0  CF                iret
000004D1  B7EE              mov bh,0xee
000004D3  EA                db 0xea
000004D4  4D6E              o64 outsb
000004D6  CF                iret
000004D7  CF                iret
000004D8  45                rex.rb
000004D9  F3                rep
000004DA  07                db 0x07
000004DB  C6                db 0xc6
000004DC  4F                rex.wrxb
000004DD  6D                insd
000004DE  C8F7F307          enter 0xf3f7,0x7
000004E2  C6                db 0xc6
000004E3  B7C6              mov bh,0xc6
000004E5  D2                db 0xd2
000004E6  B7F0              mov bh,0xf0
000004E8  62                db 0x62
000004E9  E038              loopne 0x523
000004EB  20FF              and bh,bh
000004ED  27                db 0x27
000004EE  4EC8C8C820        o64 enter 0xc8c8,0x20
000004F3  7509              jnz 0x4fe
000004F5  6B82C8C8DE2490    imul eax,[rdx+0x24dec8c8],byte -0x70
000004FC  3D480615E0        cmp eax,0xe0150648
00000501  2490              and al,0x90
00000503  3D203DC120        cmp eax,0x20c13d20
00000508  A7                cmpsd
00000509  71F7              jno 0x502
0000050B  DF7BE2            fistp qword [rbx-0x1e]
0000050E  4AD903            o64 fld dword [rbx]
00000511  0303              add eax,[rbx]
00000513  7B28              jpo 0x53d
00000515  9C                pushf
00000516  B39D              mov bl,0x9d
00000518  0303              add eax,[rbx]
0000051A  E95F2B9083        jmp 0xffffffff8390307e
0000051F  810D3B5F2B907B90  or dword [rel 0xffffffff902b6464],0x7b14907b
         -147B
00000529  CAC45A            retf 0x5ac4
0000052C  C24504            ret 0x445
0000052F  8CC7              mov edi,es
00000531  0D0D0D45BE        or eax,0xbe450d0d
00000536  3A36              cmp dh,[rsi]
00000538  330D0DB7F1D5      xor ecx,[rel 0xffffffffd5f1bc4b]
0000053E  C6                db 0xc6
0000053F  8D                db 0x8d
00000540  DF2F              fild qword [rdi]
00000542  05F1D5C645        add eax,0x45c6d5f1
00000547  C6                db 0xc6
00000548  12450C            adc al,[rbp+0xc]
0000054B  A23C6463826AC5CB  mov [qword 0xcbcbc56a8263643c],al
         -CB
00000554  CB                retf
00000555  63                db 0x63
00000556  3C48              cmp al,0x48
00000558  8911              mov [rcx],edx
0000055A  CB                retf
0000055B  CB                retf
0000055C  F5                cmc
0000055D  9F                lahf
0000055E  B3A4              mov bl,0xa4
00000560  4BAD              lodsq
00000562  B423              mov ah,0x23
00000564  9F                lahf
00000565  B3A4              mov bl,0xa4
00000567  63                db 0x63
00000568  A4                movsb
00000569  E063              loopne 0x5ce
0000056B  EA                db 0xea
0000056C  B09A              mov al,0x9a
0000056E  E27C              loop 0x5ec
00000570  3DB57AB4B4        cmp eax,0xb4b47ab5
00000575  B47C              mov ah,0x7c
00000577  A3679DEEB4B42AF0  mov [qword 0xcf02ab4b4ee9d67],eax
         -0C
00000580  FB                sti
00000581  3402              xor al,0x2
00000583  57                push rdi
00000584  BCF00CFB7C        mov esp,0x7cfb0cf0
00000589  FB                sti
0000058A  0F                db 0x0f
0000058B  7C35              jl 0x5c2
0000058D  DF                db 0xdf
0000058E  E51D              in eax,0x1d
00000590  853A              test [rdx],edi
00000592  92                xchg eax,edx
00000593  C3                ret
00000594  FD                std
00000595  FD                std
00000596  FD                std
00000597  85B004A137FD      test [rax-0x2c85efc],esi
0000059D  FD                std
0000059E  B369              mov bl,0x69
000005A0  95                xchg eax,ebp
000005A1  887D3B            mov [rbp+0x3b],bh
000005A4  3E                ds
000005A5  C5                db 0xc5
000005A6  69958885880C8512  imul edx,[rbp+0xc888588],dword 0x2dc1285
         -DC02
000005B0  1AF6              sbb dh,dh
000005B2  196194            sbb [rcx-0x6c],esp
000005B5  3E3E3EF61F        neg byte [ds:rdi]
000005BA  F3EBD8            rep jmp short 0x595
000005BD  3E                ds
000005BE  3E                ds
000005BF  C4                db 0xc4
000005C0  4A86E7            o64 xchg spl,dil
000005C3  BE0C58364A        mov esi,0x4a36580c
000005C8  86E7              xchg ah,bh
000005CA  F6E7              mul bh
000005CC  0BF6              or esi,esi
000005CE  E11B              loope 0x5eb
000005D0  51                push rcx
000005D1  F9                stc
000005D2  CC                int3
000005D3  1F                db 0x1f
000005D4  27                db 0x27
000005D5  4A3434            o64 xor al,0x34
000005D8  34CC              xor al,0xcc
000005DA  4589FA            mov r10d,r15d
000005DD  BE34347A70        mov esi,0x707a3434
000005E2  5C                pop rsp
000005E3  ED                in eax,dx
000005E4  B432              mov ah,0x32
000005E6  240C              and al,0xc
000005E8  705C              jo 0x646
000005EA  ED                in eax,dx
000005EB  CC                int3
000005EC  ED                in eax,dx
000005ED  61                db 0x61
000005EE  CC                int3
000005EF  A7                cmpsd
000005F0  F1                int1
000005F1  97                xchg eax,edi
000005F2  FF                db 0xff
000005F3  3C8F              cmp al,0x8f
000005F5  57                push rdi
000005F6  9A                db 0x9a
000005F7  2424              and al,0x24
000005F9  243C              and al,0x3c
000005FB  3539C39724        xor eax,0x2497c339
00000600  24EA              and al,0xea
00000602  402CFD            sub al,0xfd
00000605  A4                movsb
00000606  32897C402CFD      xor cl,[rcx-0x2d3bf84]
0000060C  3CFD              cmp al,0xfd
0000060E  113CD7            adc [rdi+rdx*8],edi
00000611  01672F            add [rdi+0x2f],esp
00000614  07                db 0x07
00000615  1A62D5            sbb ah,[rdx-0x2b]
00000618  0F                db 0x0f
00000619  0F                db 0x0f
0000061A  0F07              sysret
0000061C  C09487A20F0FA5CB  rcl byte [rdi+rax*4-0x5af0f05e],byte 0xcb
00000624  37                db 0x37
00000625  088FFD7D47CB      or [rdi-0x34b88203],cl
0000062B  37                db 0x37
0000062C  0807              or [rdi],al
0000062E  08EC              or ah,ch
00000630  07                db 0x07
00000631  E21C              loop 0x64f
00000633  F2BAB508D067      repne mov edx,0x67d008b5
00000639  7D7D              jnl 0x6b8
0000063B  7DB5              jnl 0x5f2
0000063D  327692            xor dh,[rsi-0x6e]
00000640  90                nop
00000641  7D7D              jnl 0x6c0
00000643  57                push rdi
00000644  C9                leave
00000645  C5                db 0xc5
00000646  1AFD              sbb bh,ch
00000648  1F                db 0x1f
00000649  1B75C9            sbb esi,[rbp-0x37]
0000064C  C5                db 0xc5
0000064D  1AB51A2EB550      sbb dh,[rbp+0x50b52e1a]
00000653  FE00              inc byte [rax]
00000655  686F82EA19        push qword 0x19ea826f
0000065A  D7                xlatb
0000065B  D7                xlatb
0000065C  D7                xlatb
0000065D  6F                outsd
0000065E  B4C8              mov ah,0xc8
00000660  CDAA              int 0xaa
00000662  D7                xlatb
00000663  D7                xlatb
00000664  89737F            mov [rbx+0x7f],esi
00000667  7C57              jl 0x6c0
00000669  C12E2F            shr dword [rsi],byte 0x2f
0000066C  737F              jnc 0x6ed
0000066E  7C6F              jl 0x6df
00000670  7CE0              jl 0x652
00000672  6F                outsd
00000673  6AB0              push byte -0x50
00000675  9A                db 0x9a
00000676  E286              loop 0x5fe
00000678  7B63              jpo 0x6dd
0000067A  B02E              mov al,0x2e
0000067C  2E2E864DD1        xchg cl,[cs:rbp-0x2f]
00000681  C3                ret
00000682  A32E2E60BA16B5AE  mov [qword 0x88aeb516ba602e2e],eax
         -88
0000068B  CE                db 0xce
0000068C  C6                db 0xc6
0000068D  BA16B586B5        mov edx,0xb586b516
00000692  0986E31953DB      or [rsi-0x24ace61d],eax
00000698  665B              pop bx
0000069A  4390              xchg eax,r8d
0000069C  8E8E8E662D31      mov cs,[rsi+0x312d668e]
000006A2  CA838E            retf 0x8e83
000006A5  8EC0              mov es,eax
000006A7  1AF6              sbb dh,dh
000006A9  150E18D1A6        adc eax,0xa6d1180e
000006AE  1AF6              sbb dh,dh
000006B0  1566156966        adc eax,0x66691566
000006B5  C3                ret
000006B6  7933              jns 0x6eb
000006B8  BBC94C747F        mov ebx,0x7f744cc9
000006BD  D1D1              rcl ecx,1
000006BF  D1C9              ror ecx,1
000006C1  2A2E              sub ch,[rsi]
000006C3  4E34D1            o64 xor al,0xd1
000006C6  D12F              shr dword [rdi],1
000006C8  DD19              fstp qword [rcx]
000006CA  B251              mov dl,0x51
000006CC  17                db 0x17
000006CD  3589DD19B2        xor eax,0xb219dd89
000006D2  C9                leave
000006D3  B246              mov dl,0x46
000006D5  C9                leave
000006D6  F4                hlt
000006D7  16                db 0x16
000006D8  E46C              in al,0x6c
000006DA  0518204BCD        add eax,0xcd4b2018
000006DF  CDCD              int 0xcd
000006E1  05C6AAA3E0        add eax,0xe0a3aac6
000006E6  CDCD              int 0xcd
000006E8  BB59956E4D        mov ebx,0x4d6e9559
000006ED  53                push rbx
000006EE  AE                scasb
000006EF  C5                db 0xc5
000006F0  59                pop rcx
000006F1  95                xchg eax,ebp
000006F2  6E                outsb
000006F3  056EC205A0        add eax,0xa005c26e
000006F8  D290B876132B      rcl byte [rax+0x2b1376b8],cl
000006FE  00AEAEAE76B5      add [rsi-0x4a895152],ch
00000704  D1                db 0xd1
00000705  7732              ja 0x739
00000707  AE                scasb
00000708  AE                scasb
00000709  D022              shl byte [rdx],1
0000070B  E68D              out 0x8d,al
0000070D  2E88823622E68D    mov [cs:rdx-0x7219ddca],al
00000714  768D              jna 0x6a3
00000716  B976ABA97B        mov ecx,0x7ba9ab76
0000071B  F3E24F            rep loop 0x76d
0000071E  875C5A5A          xchg ebx,[rdx+rbx*2+0x5a]
00000722  5A                pop rdx
00000723  E241              loop 0x766
00000725  FD                std
00000726  9A                db 0x9a
00000727  9E                sahf
00000728  5A                pop rdx
00000729  5A                pop rdx
0000072A  6C                insb
0000072B  CE                db 0xce
0000072C  D239              sar byte [rcx],cl
0000072E  DA745BA2          fidiv dword [rbx+rbx*2-0x5e]
00000732  CE                db 0xce
00000733  D239              sar byte [rcx],cl
00000735  E239              loop 0x770
00000737  25E20715D7        and eax,0xd71507e2
0000073C  AF                scasd
0000073D  135EA6            adc ebx,[rsi-0x5a]
00000740  ED                in eax,dx
00000741  5B                pop rbx
00000742  5B                pop rbx
00000743  5B                pop rbx
00000744  1300              adc eax,[rax]
00000746  2C28              sub al,0x28
00000748  8F                db 0x8f
00000749  5B                pop rbx
0000074A  5B                pop rbx
0000074B  3DFFC308DB        cmp eax,0xdb08c3ff
00000750  259DD3FFC3        and eax,0xc3ffd39d
00000755  0813              or [rbx],dl
00000757  082413            or [rbx+rdx],ah
0000075A  26                es
0000075B  D4                db 0xd4
0000075C  F6BE318C142B      idiv byte [rsi+0x2b148c31]
00000762  59                pop rcx
00000763  59                pop rcx
00000764  59                pop rcx
00000765  31CE              xor esi,ecx
00000767  CA3F2D            retf 0x2d3f
0000076A  59                pop rcx
0000076B  59                pop rcx
0000076C  7B1D              jpo 0x78b
0000076E  2116              and [rsi],edx
00000770  D9                db 0xd9
00000771  D327              shl dword [rdi],cl
00000773  F1                int1
00000774  1D21163116        sbb eax,0x16311621
00000779  82                db 0x82
0000077A  3194B2E46C9F72    xor [rdx+rsi*4+0x729f6ce4],edx
00000781  FA                cli
00000782  8527              test [rdi],esp
00000784  27                db 0x27
00000785  27                db 0x27
00000786  9F                lahf
00000787  A0C4823327277583  mov al,[qword 0x6f837527273382c4]
         -6F
00000790  08A71D205F83      or [rdi-0x7ca0dfe3],ah
00000796  6F                outsd
00000797  089F08BC9F7A      or [rdi+0x7a9fbc08],bl
0000079D  CC                int3
0000079E  6AD2              push byte -0x2e
000007A0  7E89              jng 0x72b
000007A2  91                xchg eax,ecx
000007A3  D4                db 0xd4
000007A4  E6E6              out 0xe6,al
000007A6  E67E              out 0x7e,al
000007A8  A7                cmpsd
000007A9  DBEA              fucomi st2
000007AB  22E6              and ah,dh
000007AD  E644              out 0x44,al
000007AF  F2                repne
000007B0  4E0F669C253EF24E  pcmpgtd mm3,[rbp+r12+0xf4ef23e]
         -0F
000007B9  7E0F              jng 0x7ca
000007BB  F37E11            rep jng 0x7cf
000007BE  43C169DDBA        shr dword [r9-0x23],byte 0xba
000007C3  6203252525DD88    vpternlogd ymm27{k5},ymm27,ymm29,byte 0x88
000007CA  6C                insb
000007CB  D4                db 0xd4
000007CC  51                push rcx
000007CD  252533A12D        and eax,0x2da13325
000007D2  50                push rax
000007D3  A5                movsd
000007D4  DB12              fist dword [rdx]
000007D6  9D                popf
000007D7  A12D50DD5004DDE2  mov eax,[qword 0x14e2dd0450dd502d]
         -14
000007E0  92                xchg eax,edx
000007E1  9A                db 0x9a
000007E2  7CAD              jl 0x791
000007E4  3502C4C4C4        xor eax,0xc4c4c402
000007E9  7C2B              jl 0x816
000007EB  5F                pop rdi
000007EC  62                db 0x62
000007ED  DFC4              ffreep st4
000007EF  C4                db 0xc4
000007F0  B230              mov dl,0x30
000007F2  CC                int3
000007F3  B344              mov bl,0x44
000007F5  2ACE              sub cl,dh
000007F7  3C30              cmp al,0x30
000007F9  CC                int3
000007FA  B37C              mov bl,0x7c
000007FC  B377              mov bl,0x77
000007FE  7CB5              jl 0x7b5
00000800  C7                db 0xc7
00000801  A5                movsd
00000802  8DB61FB7F0CE      lea esi,[rsi-0x310f48e1]
00000808  CE                db 0xce
00000809  CE                db 0xce
0000080A  B6A1              mov dh,0xa1
0000080C  ED                in eax,dx
0000080D  7B6D              jpo 0x87c
0000080F  CE                db 0xce
00000810  CE                db 0xce
00000811  A04286F94ED8C276  mov al,[qword 0x4276c2d84ef98642]
         -42
0000081A  86F9              xchg bh,cl
0000081C  B6F9              mov dh,0xf9
0000081E  F5                cmc
0000081F  B637              mov dh,0x37
00000821  8567FF            test [rdi-0x1],esp
00000824  62                db 0x62
00000825  5B                pop rbx
00000826  F3FC              rep cld
00000828  DADA              fcmovu st2
0000082A  DA629D            fisub dword [rdx-0x63]
0000082D  E99269DADA        jmp 0xffffffffdada71c4
00000832  EC                in al,dx
00000833  4E7255            o64 jc 0x88b
00000836  5A                pop rdx
00000837  54                push rsp
00000838  7222              jc 0x85c
0000083A  4E7255            o64 jc 0x892
0000083D  62                db 0x62
0000083E  55                push rbp
0000083F  116273            adc [rdx+0x73],esp
00000842  61                db 0x61
00000843  233B              and edi,[rbx]
00000845  2AC3              sub al,bl
00000847  2B647272          sub esp,[rdx+rsi*2+0x72]
0000084B  722A              jc 0x877
0000084D  B561              mov ch,0x61
0000084F  E5E1              in eax,0xe1
00000851  7272              jc 0x8c5
00000853  74E6              jz 0x83b
00000855  DA3DF23CACEA      fidivr dword [rel 0xffffffffeaac454d]
0000085B  E6DA              out 0xda,al
0000085D  3D2A3DF92A        cmp eax,0x2af93d2a
00000862  AB                stosd
00000863  E9BBA370C9        jmp 0xffffffffc970ac23
00000868  712A              jno 0x894
0000086A  F8                clc
0000086B  F8                clc
0000086C  F8                clc
0000086D  703B              jo 0x8aa
0000086F  07                db 0x07
00000870  56                push rsi
00000871  87F8              xchg edi,eax
00000873  F8                clc
00000874  FA                cli
00000875  7CA0              jl 0x817
00000877  63                db 0x63
00000878  7812              js 0x88c
0000087A  D830              fdiv dword [rax]
0000087C  7CA0              jl 0x81e
0000087E  63                db 0x63
0000087F  7063              jo 0x8e4
00000881  9F                lahf
00000882  70F1              jo 0x875
00000884  4FC1A950A9510AD8  shr qword [r9+0xa51a950],byte 0xd8
0000088C  D8D8              fcomp st0
0000088E  50                push rax
0000088F  1BE7              sbb esp,edi
00000891  0167D8            add [rdi-0x28],esp
00000894  D8DA              fcomp st2
00000896  5C                pop rsp
00000897  808358E269905C    add byte [rbx-0x6f961da8],0x5c
0000089E  80835083FF50D1    add byte [rbx+0x50ff8350],0xd1
000008A5  2F                db 0x2f
000008A6  E1C9              loope 0x871
000008A8  8F                db 0x8f
000008A9  18E0              sbb al,ah
000008AB  E97777778F        jmp 0xffffffff8f778027
000008B0  2A767B            sub dh,[rsi+0x7b]
000008B3  F67777            div byte [rdi+0x77]
000008B6  395BFF            cmp [rbx-0x1],ebx
000008B9  72F7              jc 0x8b2
000008BB  B1BE              mov cl,0xbe
000008BD  CF                iret
000008BE  5B                pop rbx
000008BF  FF728F            push qword [rdx-0x71]
000008C2  724E              jc 0x912
000008C4  8F                db 0x8f
000008C5  60                db 0x60
000008C6  FE                db 0xfe
000008C7  7038              jo 0x901
000008C9  26A5              es movsd
000008CB  1D7CBEBEBE        sbb eax,0xbebebe7c
000008D0  26733F            es jnc 0x912
000008D3  CF                iret
000008D4  BFBEBEACA2        mov edi,0xa2acbebe
000008D9  36                ss
000008DA  4B                rex.wxb
000008DB  3EE41C            ds in al,0x1c
000008DE  66A2364B264B2726  o16 mov [qword 0xb79d26274b264b36],al
         -9DB7
000008E8  CDC5              int 0xc5
000008EA  90                nop
000008EB  4F                rex.wrxb
000008EC  67                a32
000008ED  1E                db 0x1e
000008EE  48                rex.w
000008EF  48                rex.w
000008F0  4890              xchg rax,rax
000008F2  E551              in eax,0x51
000008F4  56                push rsi
000008F5  26                es
000008F6  48                rex.w
000008F7  488EBC601DC85642  mov segr7,qword [rax+0x4256c81d]
000008FF  D0BC601D901DF9    sar byte [rax-0x6e26fe3],1
00000906  90                nop
00000907  E709              out 0x9,eax
00000909  97                xchg eax,edi
0000090A  6F                outsd
0000090B  BAF1195C42        mov edx,0x425c19f1
00000910  42                rex.x
00000911  42BABB6F1D14      mov edx,0x141d6fbb
00000917  42                rex.x
00000918  428C3E            mov [rsi],segr7
0000091B  4A83C294          add rdx,byte -0x6c
0000091F  9E                sahf
00000920  FA                cli
00000921  3E4A83BA8387BA99  cmp qword [ds:rdx-0x6645787d],byte +0x17
         -17
0000092A  89517E            mov [rcx+0x7e],edx
0000092D  95                xchg eax,ebp
0000092E  9D                popf
0000092F  90                nop
00000930  8686867EBF93      xchg al,[rsi-0x6c40817a]
00000936  F6A8868680E2      imul byte [rax-0x1d7f797a]
0000093C  4E                rex.wrx
0000093D  07                db 0x07
0000093E  06                db 0x06
0000093F  1843BE            sbb [rbx-0x42],al
00000942  E24E              loop 0x992
00000944  07                db 0x07
00000945  7E07              jng 0x94e
00000947  8B7E1D            mov edi,[rsi+0x1d]
0000094A  9B4DF5            wait o64 cmc
0000094D  7B4C              jpo 0x99b
0000094F  94                xchg eax,esp
00000950  C9                leave
00000951  43                rex.xb
00000952  43                rex.xb
00000953  437B42            jpo 0x998
00000956  F6BAE1434359      idiv byte [rdx+0x594343e1]
0000095C  9F                lahf
0000095D  2B0A              sub ecx,[rdx]
0000095F  C3                ret
00000960  61                db 0x61
00000961  17                db 0x17
00000962  3B9F2B0A7B0A      cmp ebx,[rdi+0xa7b0a2b]
00000968  6E                outsb
00000969  7B14              jpo 0x97f
0000096B  DEA4EC47487075    fisub word [rsp+rbp*8+0x75704847]
00000972  6F                outsd
00000973  6F                outsd
00000974  6F                outsd
00000975  476E              outsb
00000977  42B10D            mov cl,0xd
0000097A  6F                outsd
0000097B  6F                outsd
0000097C  45EB77            jmp short 0x9f6
0000097F  B6EF              mov dh,0xef
00000981  1DC607EB77        sbb eax,0x77eb07c6
00000986  B647              mov dh,0x47
00000988  B67A              mov dh,0x7a
0000098A  47                rex.rxb
0000098B  F0AA              lock stosb
0000098D  00E8              add al,ch
0000098F  4E2DA540C6C6      sub rax,0xffffffffc6c640a5
00000995  C6                db 0xc6
00000996  4E                rex.wrx
00000997  27                db 0x27
00000998  53                push rbx
00000999  6D                insd
0000099A  68C6C6508A        push qword 0xffffffff8a50c6c6
0000099F  7E1F              jng 0x9c0
000009A1  46E8EB0E8A7E      call 0x7e8a1892
000009A7  1F                db 0x1f
000009A8  4E                rex.wrx
000009A9  1F                db 0x1f
000009AA  5B                pop rbx
000009AB  4E254B358DED      and rax,0xffffffffed8d354b
000009B1  58                pop rax
000009B2  50                push rax
000009B3  BF252525ED        mov edi,0xed252525
000009B8  A24E012725254F69  mov [qword 0x5d694f252527014e],al
         -5D
000009C1  9A                db 0x9a
000009C2  A5                movsd
000009C3  37                db 0x37
000009C4  F4                hlt
000009C5  AD                lodsd
000009C6  695D9AED9A36ED    imul ebx,[rbp-0x66],dword 0xed369aed
000009CD  D026              shl byte [rsi],1
000009CF  2038              and [rax],bh
000009D1  6C                insb
000009D2  39E1              cmp ecx,esp
000009D4  7EF4              jng 0x9ca
000009D6  F4                hlt
000009D7  F4                hlt
000009D8  6C                insb
000009D9  43                rex.xb
000009DA  8F                db 0x8f
000009DB  E736              out 0x36,eax
000009DD  F4                hlt
000009DE  F4                hlt
000009DF  0E                db 0x0e
000009E0  88DC              mov ah,bl
000009E2  6B74B6462C        imul esi,[rsi+rsi*4+0x46],byte +0x2c
000009E7  88DC              mov ah,bl
000009E9  6B6C6B276C        imul ebp,[rbx+rbp*2+0x27],byte +0x6c
000009EE  61                db 0x61
000009EF  17                db 0x17
000009F0  7119              jno 0xa0b
000009F2  7AD7              jpe 0x9cb
000009F4  BF4C626262        mov edi,0x6262624c
000009F9  7AD1              jpe 0x9cc
000009FB  9D                popf
000009FC  BC5B6262DC        mov esp,0xdc62625b
00000A01  56                push rsi
00000A02  EA                db 0xea
00000A03  39E2              cmp edx,esp
00000A05  740D              jz 0xa14
00000A07  3A56EA            cmp dl,[rsi-0x16]
00000A0A  397A39            cmp [rdx+0x39],edi
00000A0D  157A3F854F        adc eax,0x4f853f7a
00000A12  37                db 0x37
00000A13  C5                db 0xc5
00000A14  B038              mov al,0x38
00000A16  F30D0D0DC596      rep or eax,0x96c50d0d
00000A1C  124C940D          adc cl,[rsp+rdx*4+0xd]
00000A20  0DE311151E        or eax,0x1e1511e3
00000A25  8D8B06051115      lea ecx,[rbx+0x15110506]
00000A2B  1E                db 0x1e
00000A2C  C5                db 0xc5
00000A2D  1E                db 0x1e
00000A2E  EA                db 0xea
00000A2F  C5                db 0xc5
00000A30  B8BA6810E4        mov eax,0xe41068ba
00000A35  7F47              jg 0xa7e
00000A37  728C              jc 0x9c5
00000A39  8C8CE45D59C4A3    mov [rsp-0x5c3ba6a3],cs
00000A40  8C8C224074850C    mov [rdx+0xc857440],cs
00000A47  5A                pop rdx
00000A48  C5                db 0xc5
00000A49  2440              and al,0x40
00000A4B  7485              jz 0x9d2
00000A4D  E485              in al,0x85
00000A4F  91                xchg eax,ecx
00000A50  E4C7              in al,0xc7
00000A52  21775F            and [rdi+0x5f],esi
00000A55  8D1A              lea ebx,[rdx]
00000A57  92                xchg eax,edx
00000A58  67                a32
00000A59  C5                db 0xc5
00000A5A  C5                db 0xc5
00000A5B  C58D5438          vandpd ymm7,ymm14,yword [rax]
00000A5F  1456              adc al,0x56
00000A61  C5                db 0xc5
00000A62  C5                db 0xc5
00000A63  B7B1              mov bh,0xb1
00000A65  3D4C452F17        cmp eax,0x172f454c
00000A6A  CDB1              int 0xb1
00000A6C  3D4C8D4C60        cmp eax,0x604c8d4c
00000A71  8D12              lea edx,[rdx]
00000A73  10E2              adc dl,ah
00000A75  BA03989055        mov edx,0x55909803
00000A7A  BBBBBB034A        mov ebx,0x4a03bbbb
00000A7F  0E                db 0x0e
00000A80  19C4              sbb esp,eax
00000A82  BBBBE51733        mov ebx,0x3317e5bb
00000A87  023B              add bh,[rbx]
00000A89  8D18              lea ebx,[rax]
00000A8B  43                rex.xb
00000A8C  17                db 0x17
00000A8D  3302              xor eax,[rdx]
00000A8F  0302              add eax,[rdx]
00000A91  F60310            test byte [rbx],0x10
00000A94  26                es
00000A95  60                db 0x60
00000A96  B8D03BC33A        mov eax,0x3ac33bd0
00000A9B  1818              sbb [rax],bl
00000A9D  18D0              sbb al,dl
00000A9F  2561034F18        and eax,0x184f0361
00000AA4  180A              sbb [rdx],cl
00000AA6  1C40              sbb al,0x40
00000AA8  8D987210101C      lea ebx,[rax+0x1c101072]
00000AAE  40                rex
00000AAF  8D                db 0x8d
00000AB0  D08D39D043E9      ror byte [rbp-0x16bc2fc7],1
00000AB6  53                push rbx
00000AB7  DBD8              fcmovnu st0
00000AB9  C3                ret
00000ABA  CB                retf
00000ABB  62                db 0x62
00000ABC  60                db 0x60
00000ABD  60                db 0x60
00000ABE  60                db 0x60
00000ABF  D8CD              fmul st5
00000AC1  093437            or [rdi+rsi],esi
00000AC4  60                db 0x60
00000AC5  60                db 0x60
00000AC6  B244              mov dl,0x44
00000AC8  48F5              o64 cmc
00000ACA  E0AA              loopne 0xa76
00000ACC  A818              test al,0x18
00000ACE  44                rex.r
00000ACF  48F5              o64 cmc
00000AD1  D8F5              fdiv st5
00000AD3  E1D8              loope 0xaad
00000AD5  4B51              push r9
00000AD7  DBE3              fninit
00000AD9  B09B              mov al,0x9b
00000ADB  133A              adc edi,[rdx]
00000ADD  A8A8              test al,0xa8
00000ADF  A8B0              test al,0xb0
00000AE1  75B1              jnz 0xa94
00000AE3  F1                int1
00000AE4  5F                pop rdi
00000AE5  A8A8              test al,0xa8
00000AE7  EA                db 0xea
00000AE8  0C40              or al,0x40
00000AEA  4D2802            o64 sub [r10],r8b
00000AED  56                push rsi
00000AEE  F00C40            lock or al,0x40
00000AF1  4DB04D            o64 mov r8b,0x4d
00000AF4  99                cdq
00000AF5  B093              mov al,0x93
00000AF7  E9037BF2E5        jmp 0xffffffffe5f285ff
00000AFC  7D7C              jnl 0xb7a
00000AFE  8A8A8AF2CF7B      mov cl,[rdx+0x7bcff28a]
00000B04  E4CA              in al,0xca
00000B06  8A8AECDE82A7      mov cl,[rdx-0x587d2114]
00000B0C  0AB45B32DE82A7    or dh,[rbx+rbx*2-0x587d21ce]
00000B13  F2A7              repne cmpsd
00000B15  83F2FD            xor edx,byte -0x3
00000B18  13ED              adc ebp,ebp
00000B1A  452300            and r8d,[r8]
00000B1D  38515B            cmp [rcx+0x5b],dl
00000B20  5B                pop rbx
00000B21  5B                pop rbx
00000B22  232E              and ebp,[rsi]
00000B24  6AE4              push byte -0x1c
00000B26  9B5B              wait pop rbx
00000B28  5B                pop rbx
00000B29  C1BF73C6DBD9D1    sar dword [rdi-0x2624398d],byte 0xd1
00000B30  63                db 0x63
00000B31  BF73C623C6        mov edi,0xc623c673
00000B36  1223              adc ah,[rbx]
00000B38  B8E228A0E5        mov eax,0xe5a028e2
00000B3D  9A                db 0x9a
00000B3E  F2DBBDBDBDE5E0    repne fstp tword [rbp-0x1f1a4243]
00000B45  6C                insb
00000B46  1DFDBDBD0B        sbb eax,0xbbdbdfd
00000B4B  B135              mov cl,0x35
00000B4D  58                pop rax
00000B4E  3DB38225B1        cmp eax,0xb12582b3
00000B53  3558E558D4        xor eax,0xd458e558
00000B58  E572              in eax,0x72
00000B5A  64E2BA            fs loop 0xb17
00000B5D  AA                stosb
00000B5E  758D              jnz 0xaed
00000B60  E8828282AA        call 0xffffffffaa828de7
00000B65  93                xchg eax,ebx
00000B66  07                db 0x07
00000B67  6B428282          imul eax,[rdx-0x7e],byte -0x7e
00000B6B  F8                clc
00000B6C  0E                db 0x0e
00000B6D  DA                db 0xda
00000B6E  EB02              jmp short 0xb72
00000B70  F0E76A            lock out 0x6a,eax
00000B73  0E                db 0x0e
00000B74  DA                db 0xda
00000B75  EBAA              jmp short 0xb21
00000B77  EBAF              jmp short 0xb28
00000B79  AA                stosb
00000B7A  0D9F1D152D        or eax,0x2d151d9f
00000B7F  58                pop rax
00000B80  90                nop
00000B81  A3E5E5E52DBE22FF  mov [qword 0xa5ff22be2de5e5e5],eax
         -A5
00000B8A  E5E5              in eax,0xe5
00000B8C  B3C1              mov bl,0xc1
00000B8E  DDB6651BB6ED      fnsave [rsi-0x1249e49b]
00000B94  C1DDB6            rcr ebp,byte 0xb6
00000B97  2DB68A2D10        sub eax,0x102d8ab6
00000B9C  7AE0              jpe 0xb7e
00000B9E  F8                clc
00000B9F  0E                db 0x0e
00000BA0  9B4330B6B6B60EBD  wait xor [r14-0x42f1494a],sil
00000BA8  090B              or [rbx],ecx
00000BAA  F6B6B6E0AA1E      div byte [rsi+0x1eaae0b6]
00000BB0  E536              in eax,0x36
00000BB2  289F4EAA1EE5      sub [rdi-0x1ae155b2],bl
00000BB8  0E                db 0x0e
00000BB9  E5E1              in eax,0xe1
00000BBB  0E                db 0x0e
00000BBC  C3                ret
00000BBD  71B3              jno 0xb72
00000BBF  7B7D              jpo 0xc3e
00000BC1  F2                repne
00000BC2  9A                db 0x9a
00000BC3  872525257DEC      xchg esp,[rel 0xffffffffec7d30ee]
00000BC9  68F1652525        push qword 0x252565f1
00000BCE  B759              mov bh,0x59
00000BD0  4D94              xchg rax,r12
00000BD2  A5                movsd
00000BD3  0FF9BD594D947D    psubw mm7,[rbp+0x7d944d59]
00000BDA  94                xchg eax,esp
00000BDB  60                db 0x60
00000BDC  7D1A              jnl 0xbf8
00000BDE  300A              xor [rdx],cl
00000BE0  52                push rdx
00000BE1  91                xchg eax,ecx
00000BE2  BE263BF9F9        mov esi,0xf9f93b26
00000BE7  F9                stc
00000BE8  91                xchg eax,ecx
00000BE9  D8DC              fcomp st4
00000BEB  A4                movsb
00000BEC  E0F9              loopne 0xbe7
00000BEE  F9                stc
00000BEF  0BC5              or eax,ebp
00000BF1  C12079            shl dword [rax],byte 0x79
00000BF4  335051            xor edx,[rax+0x51]
00000BF7  C5                db 0xc5
00000BF8  C12091            shl dword [rax],byte 0x91
00000BFB  205491A6          and [rcx+rdx*4-0x5a],dl
00000BFF  44F6DE            neg sil
00000C02  B237              mov dl,0x37
00000C04  9F                lahf
00000C05  141A              adc al,0x1a
00000C07  1A1A              sbb bl,[rdx]
00000C09  B221              mov dl,0x21
00000C0B  E554              in eax,0x54
00000C0D  C9                leave
00000C0E  1A1A              sbb bl,[rdx]
00000C10  24E6              and al,0xe6
00000C12  A2099ABC6972E6A2  mov [qword 0x9a2e67269bc9a09],al
         -09
00000C1B  B209              mov dl,0x9
00000C1D  FD                std
00000C1E  B21F              mov dl,0x1f
00000C20  6D                insd
00000C21  2F                db 0x2f
00000C22  D7                xlatb
00000C23  119C941F696969    adc [rsp+rdx*4+0x6969691f],ebx
00000C2A  1162FE            adc [rdx-0x2],esp
00000C2D  887A69            mov [rdx+0x69],bh
00000C30  698FFD61BAE92751  imul ecx,[rdi-0x16459e03],dword 0xfdd15127
         -D1FD
00000C3A  61                db 0x61
00000C3B  BA11BAE611        mov edx,0x11e6ba11
00000C40  1436              adc al,0x36
00000C42  443C29            cmp al,0x29
00000C45  144C              adc al,0x4c
00000C47  37                db 0x37
00000C48  81818129FA56F952  add dword [rcx+0x56fa2981],0x818152f9
         -8181
00000C52  6755              push rbp
00000C54  7992              jns 0xbe8
00000C56  012F              add [rdi],ebp
00000C58  F2E955799229      bnd jmp 0x299285b3
00000C5E  92                xchg eax,edx
00000C5F  FE                db 0xfe
00000C60  29CC              sub esp,ecx
00000C62  4EBC34CA0FB7CCF2  mov rsp,0xf2f2f2ccb70fca34
         -F2F2
00000C6C  CA39FD            retf 0xfd39
00000C6F  89E1              mov ecx,esp
00000C71  F2F21CFE          repne sbb al,0xfe
00000C75  3A21              cmp ah,[rcx]
00000C77  72E4              jc 0xc5d
00000C79  62                db 0x62
00000C7A  8AFE              mov bh,dh
00000C7C  3A21              cmp ah,[rcx]
00000C7E  CA2155            retf 0x5521
00000C81  CA3785            retf 0x8537
00000C84  87AF5A9F47DC      xchg ebp,[rdi-0x23b860a6]
00000C8A  0202              add al,[rdx]
00000C8C  025A89            add bl,[rdx-0x77]
00000C8F  4D207102          o64 and [r9+0x2],r14b
00000C93  02AC8E4AB18284    add ch,[rsi+rcx*4-0x7b7d4eb6]
00000C9A  401A8E4AB15AB1    sbb cl,[rsi-0x4ea54eb6]
00000CA1  655A              gs pop rdx
00000CA3  C7                db 0xc7
00000CA4  95                xchg eax,ebp
00000CA5  97                xchg eax,edi
00000CA6  BF78B5DDD6        mov edi,0xd6ddb578
00000CAB  40                rex
00000CAC  40                rex
00000CAD  4078BB            js 0xc6b
00000CB0  17                db 0x17
00000CB1  0D834040C6        or eax,0xc6404083
00000CB6  1408              adc al,0x8
00000CB8  C3                ret
00000CB9  C06E7B38          shr byte [rsi+0x7b],byte 0x38
00000CBD  1408              adc al,0x8
00000CBF  C3                ret
00000CC0  78C3              js 0xc85
00000CC2  EF                out dx,eax
00000CC3  785D              js 0xd22
00000CC5  BFCD955992        mov edi,0x925995cd
00000CCA  DAA7A1A1A159      fisub dword [rdi+0x59a1a1a1]
00000CD0  80AC35A8A1A157F5  sub byte [rbp+rsi+0x57a1a1a8],0xf5
00000CD8  29E8              sub eax,ebp
00000CDA  210F              and [rdi],ecx
00000CDC  B619              mov dh,0x19
00000CDE  F5                cmc
00000CDF  29E8              sub eax,ebp
00000CE1  59                pop rcx
00000CE2  E884595A94        call 0xffffffff945a666b
00000CE7  0A726E            or dh,[rdx+0x6e]
00000CEA  DDE5              fucom st5
00000CEC  D4                db 0xd4
00000CED  B6B6              mov dh,0xb6
00000CEF  B66E              mov dh,0x6e
00000CF1  831F8F            sbb dword [rdi],byte -0x71
00000CF4  28B6B6446AFE      sub [rsi-0x195bb4a],dh
00000CFA  2B36              sub esi,[rsi]
00000CFC  2CA1              sub al,0xa1
00000CFE  2E6AFE            cs push byte -0x2
00000D01  2B6E2B            sub ebp,[rsi+0x2b]
00000D04  97                xchg eax,edi
00000D05  6E                outsb
00000D06  656795            gs xchg eax,ebp
00000D09  BD8392DA29        mov ebp,0x29da9283
00000D0E  AB                stosd
00000D0F  AB                stosd
00000D10  AB                stosd
00000D11  8380ACB10DABAB    add dword [rax-0x54f24e54],byte -0x55
00000D18  196F93            sbb [rdi-0x6d],ebp
00000D1B  E82B515F43        call 0x435f5e4b
00000D20  6F                outsd
00000D21  93                xchg eax,ebx
00000D22  E883E88483        call 0xffffffff8384f5aa
00000D27  5A                pop rdx
00000D28  94                xchg eax,esp
00000D29  0A7297            or dh,[rdx-0x69]
00000D2C  AE                scasb
00000D2D  366D              ss insd
00000D2F  5F                pop rdi
00000D30  5F                pop rdi
00000D31  5F                pop rdi
00000D32  97                xchg eax,edi
00000D33  AC                lodsb
00000D34  80CA49            or dl,0x49
00000D37  5F                pop rdi
00000D38  5F                pop rdi
00000D39  5D                pop rbp
00000D3A  3BA734DFA567      cmp esp,[rdi+0x67a5df34]
00000D40  57                push rdi
00000D41  3BA7349734F8      cmp esp,[rdi-0x7cb68cc]
00000D47  97                xchg eax,edi
00000D48  B648              mov dh,0x48
00000D4A  26                es
00000D4B  0E                db 0x0e
00000D4C  0F664EA5          pcmpgtd mm1,[rsi-0x5b]
00000D50  7777              ja 0xdc9
00000D52  770F              ja 0xd63
00000D54  A4                movsb
00000D55  98                cwde
00000D56  4781777755739F8C  xor dword [r15+0x77],0x8c9f7355
00000D5E  F7ED              imul ebp
00000D60  43CF              iret
00000D62  739F              jnc 0xd03
00000D64  8C0F              mov [rdi],cs
00000D66  8CF0              mov eax,segr6
00000D68  0FCE              bswap esi
00000D6A  C07EC63B          sar byte [rsi-0x3a],byte 0x3b
00000D6E  2A92C1434343      sub dl,[rdx+0x434343c1]
00000D74  3BF8              cmp edi,eax
00000D76  8430              test [rax],dh
00000D78  E543              in eax,0x43
00000D7A  437167            jno 0xde4
00000D7D  4B80C3D9          o64 add r11b,0xd9
00000D81  D27B67            sar byte [rbx+0x67],cl
00000D84  4B803B80          o64 cmp byte [r11],0x80
00000D88  FC                cld
00000D89  3B12              cmp edx,[rdx]
00000D8B  4C02CA            o64 add r9b,dl
00000D8E  C4                db 0xc4
00000D8F  3B03              cmp eax,[rbx]
00000D91  226C6C6C          and ch,[rsp+rbp*2+0x6c]
00000D95  C4                db 0xc4
00000D96  99                cdq
00000D97  25C6766C6C        and eax,0x6c6c76c6
00000D9C  D210              rcl byte [rax],cl
00000D9E  94                xchg eax,esp
00000D9F  A1EC8A75041094A1  mov eax,[qword 0xc4a1941004758aec]
         -C4
00000DA8  A1DDC4836DF35BED  mov eax,[qword 0x96ed5bf36d83c4dd]
         -96
00000DB1  BE17757575        mov esi,0x75757517
00000DB6  ED                in eax,dx
00000DB7  90                nop
00000DB8  BC769B7575        mov esp,0x75759b76
00000DBD  67191D18F5AF5E    sbb [dword rel 0x5eb002dc],ebx
00000DC4  2D191D18ED        sub eax,0xed181d19
00000DC9  1854ED3E          sbb [rbp+rbp*8+0x3e],dl
00000DCD  448E36            mov segr6,[rsi]
00000DD0  9C                pushf
00000DD1  0DD54E8484        or eax,0x84844ed5
00000DD6  849C0F7BB09284    test [rdi+rcx-0x7b6d4f85],bl
00000DDD  841E              test [rsi],bl
00000DDF  684C170416        push qword 0x1604174c
00000DE4  0FDC684C          paddusb mm5,[rax+0x4c]
00000DE8  17                db 0x17
00000DE9  9C                pushf
00000DEA  17                db 0x17
00000DEB  739C              jnc 0xd89
00000DED  55                push rbp
00000DEE  23E5              and esp,ebp
00000DF0  AD                lodsd
00000DF1  47DE463D          fiadd word [r14+0x3d]
00000DF5  0F                db 0x0f
00000DF6  0F                db 0x0f
00000DF7  0F4784F8106E0F0F  cmova eax,[rax+rdi*8+0xf0f6e10]
00000DFF  CD6B              int 0x6b
00000E01  37                db 0x37
00000E02  AC                lodsb
00000E03  8F                db 0x8f
00000E04  D5                db 0xd5
00000E05  FD                std
00000E06  07                db 0x07
00000E07  6B37AC            imul esi,[rdi],byte -0x54
00000E0A  47AC              lodsb
00000E0C  B047              mov al,0x47
00000E0E  C6                db 0xc6
00000E0F  A0D6FEA948504FD1  mov al,[qword 0xd1d14f5048a9fed6]
         -D1
00000E18  D1A97EE21F58      shr dword [rcx+0x581fe27e],1
00000E1E  D1D1              rcl ecx,1
00000E20  5F                pop rdi
00000E21  5D                pop rbp
00000E22  59                pop rcx
00000E23  2651              es push rcx
00000E25  B756              mov bh,0x56
00000E27  695D5926A9269A    imul ebx,[rbp+0x59],dword 0x9a26a926
00000E2E  A9D00A6068        test eax,0x68600ad0
00000E33  3EA7              ds cmpsd
00000E35  9F                lahf
00000E36  80565656          adc byte [rsi+0x56],0x56
00000E3A  3E6965F337565690  imul esp,[ds:rbp-0xd],dword 0x90565637
00000E42  CAAE61            retf 0x61ae
00000E45  D6                salc
00000E46  488B7ECA          mov rdi,[rsi-0x36]
00000E4A  AE                scasb
00000E4B  61                db 0x61
00000E4C  3E                ds
00000E4D  61                db 0x61
00000E4E  AD                lodsd
00000E4F  3E                ds
00000E50  1F                db 0x1f
00000E51  1D2F47A9A2        sbb eax,0xa2a9472f
00000E56  DA03              fiadd dword [rbx]
00000E58  2121              and [rcx],esp
00000E5A  21A9BC08E932      and [rcx+0x32e908bc],ebp
00000E60  2121              and [rcx],esp
00000E62  53                push rbx
00000E63  95                xchg eax,ebp
00000E64  D9B4A1DB04E995    fnstenv [rcx-0x6a16fb25]
00000E6B  D9B4A9B490A95A    fnstenv [rcx+rbp*4+0x5aa990b4]
00000E72  006AC2            add [rdx-0x3e],ch
00000E75  1CEB              sbb al,0xeb
00000E77  332A              xor ebp,[rdx]
00000E79  0404              add al,0x4
00000E7B  041C              add al,0x1c
00000E7D  09CD              or ebp,ecx
00000E7F  A93B0404BA        test eax,0xba04043b
00000E84  60                db 0x60
00000E85  CC                int3
00000E86  1184C2275C60CC    adc [rdx+rax*8-0x339fa3d9],eax
00000E8D  111C11            adc [rcx+rdx],ebx
00000E90  051CB3F543        add eax,0x43f5b31c
00000E95  CB                retf
00000E96  294850            sub [rax+0x50],ecx
00000E99  4FB1B1            o64 mov r9b,0xb1
00000E9C  B129              mov cl,0x29
00000E9E  FE                db 0xfe
00000E9F  62                db 0x62
00000EA0  93                xchg eax,ebx
00000EA1  98                cwde
00000EA2  B1B1              mov cl,0xb1
00000EA4  5F                pop rdi
00000EA5  DD59E6            fstp qword [rcx-0x1a]
00000EA8  317716            xor [rdi+0x16],esi
00000EAB  69DD59E629E6      imul ebx,ebp,dword 0xe629e659
00000EB1  1A29              sbb ch,[rcx]
00000EB3  D08A2028FE67      ror byte [rdx+0x67fe2820],1
00000EB9  5F                pop rdi
00000EBA  40                rex
00000EBB  16                db 0x16
00000EBC  16                db 0x16
00000EBD  16                db 0x16
00000EBE  FE                db 0xfe
00000EBF  29257F371616      sub [rel 0x16164644],esp
00000EC5  50                push rax
00000EC6  8A6E81            mov ch,[rsi-0x7f]
00000EC9  96                xchg eax,esi
00000ECA  08673E            or [rdi+0x3e],ah
00000ECD  8A6E81            mov ch,[rsi-0x7f]
00000ED0  FE816DFEDFDD      inc byte [rcx-0x22200193]
00000ED6  2F                db 0x2f
00000ED7  47BD164E67B5      mov r13d,0xb5674e16
00000EDD  B5B5              mov ch,0xb5
00000EDF  BD600CB926        mov ebp,0x26b90c60
00000EE4  B5B5              mov ch,0xb5
00000EE6  F729              imul dword [rcx]
00000EE8  2D5835BF9C        sub eax,0x9cbf3558
00000EED  FD                std
00000EEE  292D58BD5834      sub [rel 0x3458cc4c],ebp
00000EF4  BDCE641E76        mov ebp,0x761e64ce
00000EF9  045B              add al,0x5b
00000EFB  F3D29C9C9C04C9C5  rep rcr byte [rsp+rbx*4-0x3a36fb64],cl
00000F03  A5                movsd
00000F04  C89C9C42          enter 0x9c9c,0x42
00000F08  0014C1            add [rcx+rax*8],dl
00000F0B  1CBA              sbb al,0xba
00000F0D  D7                xlatb
00000F0E  440014C1          add [rcx+rax*8],r10b
00000F12  04C1              add al,0xc1
00000F14  8D0473            lea eax,[rbx+rsi*2]
00000F17  5D                pop rbp
00000F18  A37B71A078BF6969  mov [qword 0x696969bf78a0717b],eax
         -69
00000F21  71C6              jno 0xee9
00000F23  E2A7              loop 0xecc
00000F25  A5                movsd
00000F26  69692F3D81BEE9    imul ebp,[rcx+0x2f],dword 0xe9be813d
00000F2D  17                db 0x17
00000F2E  B2B1              mov dl,0xb1
00000F30  3D81BE71BE        cmp eax,0xbe71be81
00000F35  EA                db 0xea
00000F36  71F8              jno 0xf30
00000F38  7A68              jpe 0xfa2
00000F3A  407AB3            jpe 0xef0
00000F3D  8B4CB2B2          mov ecx,[rdx+rsi*4-0x4e]
00000F41  B27A              mov dl,0x7a
00000F43  3D79572EB2        cmp eax,0xb22e5779
00000F48  B25C              mov dl,0x5c
00000F4A  C6                db 0xc6
00000F4B  AA                stosb
00000F4C  D5                db 0xd5
00000F4D  32342B            xor dh,[rbx+rbp]
00000F50  BAC6AAD57A        mov edx,0x7ad5aac6
00000F55  D5                db 0xd5
00000F56  C17A0B71          sar dword [rdx+0xb],byte 0x71
00000F5A  5B                pop rbx
00000F5B  53                push rbx
00000F5C  D91A              fstp dword [rdx]
00000F5E  121B              adc bl,[rbx]
00000F60  B1B1              mov cl,0xb1
00000F62  B1D9              mov cl,0xd9
00000F64  1460              adc al,0x60
00000F66  316DB1            xor [rbp-0x4f],ebp
00000F69  B1EB              mov cl,0xeb
00000F6B  65                gs
00000F6C  49                rex.wb
00000F6D  4C3133            xor [rbx],r14
00000F70  7A19              jpe 0xf8b
00000F72  65                gs
00000F73  49                rex.wb
00000F74  4C                rex.wr
00000F75  D9                db 0xd9
00000F76  4C68D9929822      push qword 0x229892d9
00000F7C  3A32              cmp dh,[rdx]
00000F7E  91                xchg eax,ecx
00000F7F  F9                stc
00000F80  E47A              in al,0x7a
00000F82  7A7A              jpe 0xffe
00000F84  328B3FB37E7A      xor cl,[rbx+0x7a7eb33f]
00000F8A  7A34              jpe 0xfc0
00000F8C  06                db 0x06
00000F8D  E253              loop 0xfe2
00000F8F  FA                cli
00000F90  DC8C7206E25332    fmul qword [rdx+rsi*2+0x3253e206]
00000F97  53                push rbx
00000F98  7732              ja 0xfcc
00000F9A  7967              jns 0x1003
00000F9C  8971D8            mov [rcx-0x28],esi
00000F9F  874FF2            xchg ecx,[rdi-0xe]
00000FA2  60                db 0x60
00000FA3  60                db 0x60
00000FA4  60                db 0x60
00000FA5  D8C9              fmul st1
00000FA7  8D4E54            lea ecx,[rsi+0x54]
00000FAA  60                db 0x60
00000FAB  60                db 0x60
00000FAC  425C              pop rsp
00000FAE  0871E0            or [rcx-0x20],dh
00000FB1  5A                pop rdx
00000FB2  C9                leave
00000FB3  185C0871          sbb [rax+rcx+0x71],bl
00000FB7  D871A5            fdiv dword [rcx-0x5b]
00000FBA  D8CF              fmul st7
00000FBC  D5                db 0xd5
00000FBD  5F                pop rdi
00000FBE  672102            and [edx],eax
00000FC1  8A77C9            mov dh,[rdi-0x37]
00000FC4  C9                leave
00000FC5  C9                leave
00000FC6  2160EC            and [rax-0x14],esp
00000FC9  B275              mov dl,0x75
00000FCB  C9                leave
00000FCC  C9                leave
00000FCD  473DD1A8494F      cmp eax,0x4f49a8d1
00000FD3  70E1              jo 0xfb6
00000FD5  3DD1A821A8        cmp eax,0xa821a8d1
00000FDA  C4                db 0xc4
00000FDB  210A              and [rdx],ecx
00000FDD  B41A              mov ah,0x1a
00000FDF  E256              loop 0x1037
00000FE1  93                xchg eax,ebx
00000FE2  9B                wait
00000FE3  4C                rex.wr
00000FE4  FE                db 0xfe
00000FE5  FE                db 0xfe
00000FE6  FE                db 0xfe
00000FE7  56                push rsi
00000FE8  F9                stc
00000FE9  E58A              in eax,0x8a
00000FEB  4D                rex.wrb
00000FEC  FE                db 0xfe
00000FED  FE                db 0xfe
00000FEE  5C                pop rsp
00000FEF  7286              jc 0xf77
00000FF1  61                db 0x61
00000FF2  7E54              jng 0x1048
00000FF4  07                db 0x07
00000FF5  16                db 0x16
00000FF6  7286              jc 0xf7e
00000FF8  61                db 0x61
00000FF9  56                push rsi
00000FFA  61                db 0x61
00000FFB  BD561B6DEB        mov ebp,0xeb6d1b56
00001000  73BF              jnc 0xfc1
00001002  FA                cli
00001003  C26D07            ret 0x76d
00001006  07                db 0x07
00001007  07                db 0x07
00001008  BF58844CAC        mov edi,0xac4c8458
0000100D  07                db 0x07
0000100E  07                db 0x07
0000100F  3D0B6FE087        cmp eax,0x87e06f0b
00001014  A5                movsd
00001015  D9FF              fcos
00001017  0B6FE0            or ebp,[rdi-0x20]
0000101A  BFE0DCBF42        mov edi,0x42bfdce0
0000101F  4C52              push rdx
00001021  5A                pop rdx
00001022  453880EBEDEDED    cmp [r8-0x12121215],r8b
00001029  459E              sahf
0000102B  2A0B              sub cl,[rbx]
0000102D  B2ED              mov dl,0xed
0000102F  ED                in eax,dx
00001030  FB                sti
00001031  7135              jno 0x1068
00001033  466D              insd
00001035  D3C6              rol esi,cl
00001037  857135            test [rcx+0x35],esi
0000103A  46                rex.rx
0000103B  45                rex.rb
0000103C  46224500          and r8b,[rbp+0x0]
00001040  52                push rdx
00001041  50                push rax
00001042  18EE              sbb dh,ch
00001044  D3CB              ror ebx,cl
00001046  E0C6              loopne 0x100e
00001048  C6C6EE            mov dh,0xee
0000104B  55                push rbp
0000104C  698701C6C6D0823E  imul eax,[rdi-0x2f3939ff],dword 0x466d3e82
         -6D46
00001056  48E9AE823E6D      jmp qword 0x6d3e930a
0000105C  EE                out dx,al
0000105D  6D                insd
0000105E  51                push rcx
0000105F  EE                out dx,al
00001060  4B                rex.wxb
00001061  61                db 0x61
00001062  7B73              jpo 0x10d7
00001064  CB                retf
00001065  104825            adc [rax+0x25],cl
00001068  0303              add eax,[rbx]
0000106A  03CB              add ecx,ebx
0000106C  7246              jc 0x10b4
0000106E  BB5E0303D5        mov ebx,0xd503035e
00001073  7F1B              jg 0x1090
00001075  2A831DAC8B7F      sub al,[rbx+0x7f8bac1d]
0000107B  1B2A              sbb ebp,[rdx]
0000107D  CB                retf
0000107E  2AAECBC8BEF8      sub ch,[rsi-0x7413735]
00001084  B014              mov al,0x14
00001086  57                push rdi
00001087  0F5EACACAC1409CD  divps xmm5,oword [rsp+rbp*4-0x32f6eb54]
0000108F  59                pop rcx
00001090  25ACACCEF8        and eax,0xf8ceacac
00001095  E4A1              in al,0xa1
00001097  2C26              sub al,0x26
00001099  02D4              add dl,ah
0000109B  F8                clc
0000109C  E4A1              in al,0xa1
0000109E  14A1              adc al,0xa1
000010A0  F5                cmc
000010A1  148F              adc al,0x8f
000010A3  C5                db 0xc5
000010A4  7F37              jg 0x10dd
000010A6  F659F1            neg byte [rcx-0xf]
000010A9  888E8E8EF6F3      mov [rsi-0xc097172],cl
000010AF  57                push rdi
000010B0  AC                lodsb
000010B1  0F8E8EF8EA46      jng near 0x46eb0945
000010B7  AB                stosd
000010B8  0E                db 0x0e
000010B9  A0E0B6EA46ABF6AB  mov al,[qword 0x9fabf6ab46eab6e0]
         -9F
000010C2  F6712F            div byte [rcx+0x2f]
000010C5  61                db 0x61
000010C6  B9E86B63D6        mov ecx,0xd6636be8
000010CB  E0E0              loopne 0x10ad
000010CD  E0E8              loopne 0x10b7
000010CF  61                db 0x61
000010D0  25539DE0E0        and eax,0xe0e09d53
000010D5  E6DC              out 0xdc,al
000010D7  98                cwde
000010D8  99                cdq
000010D9  60                db 0x60
000010DA  7E57              jng 0x1133
000010DC  A8DC              test al,0xdc
000010DE  98                cwde
000010DF  99                cdq
000010E0  E8994DE8E3        call 0xffffffffe3e85e7e
000010E5  FD                std
000010E6  F30B51C4          rep or edx,[rcx-0x3c]
000010EA  9C                pushf
000010EB  EF                out dx,eax
000010EC  C9                leave
000010ED  C9                leave
000010EE  C9                leave
000010EF  51                push rcx
000010F0  3AEE              cmp ch,dh
000010F2  65CF              gs iret
000010F4  C9                leave
000010F5  C9                leave
000010F6  7F85              jg 0x107d
000010F8  81124987D111      adc dword [rdx],0x11d18749
000010FE  858112511296      test [rcx-0x69edaeee],eax
00001104  51                push rcx
00001105  1C86              sbb al,0x86
00001107  2C64              sub al,0x64
00001109  495C              pop r12
0000110B  8427              test [rdi],ah
0000110D  D1D1              rcl ecx,1
0000110F  D14942            ror dword [rcx+0x42],1
00001112  56                push rsi
00001113  4687D1            xchg r10d,ecx
00001116  D1                db 0xd1
00001117  F76DB9            imul dword [rbp-0x47]
0000111A  8A51FF            mov dl,[rcx-0x1]
0000111D  43896DB9          mov [r13-0x47],ebp
00001121  8A498A            mov cl,[rcx-0x76]
00001124  AE                scasb
00001125  49049E            o64 add al,0x9e
00001128  94                xchg eax,esp
00001129  FC                cld
0000112A  97                xchg eax,edi
0000112B  9A                db 0x9a
0000112C  62                db 0x62
0000112D  659F              gs lahf
0000112F  9F                lahf
00001130  9F                lahf
00001131  97                xchg eax,edi
00001132  B024              mov al,0x24
00001134  ED                in eax,dx
00001135  459F              lahf
00001137  9F                lahf
00001138  B5AB              mov ch,0xab
0000113A  87B81F2D58D7      xchg edi,[rax-0x28a7d2e1]
00001140  AB                stosd
00001141  87B897B8FC97      xchg edi,[rax-0x68034769]
00001147  E26C              loop 0x11b5
00001149  323A              xor bh,[rdx]
0000114B  E0CD              loopne 0x111a
0000114D  2522585858        and eax,0x58585822
00001152  E087              loopne 0x10db
00001154  E3E1              jrcxz 0x1137
00001156  82                db 0x82
00001157  58                pop rax
00001158  58                pop rax
00001159  52                push rdx
0000115A  BCB07FD8CA        mov esp,0xcad87fb0
0000115F  F0A0BCB07FE07F6B  lock mov al,[qword 0xa5e06b7fe07fb0bc]
         -E0A5
00001169  7B95              jpo 0x1100
0000116B  6D                insd
0000116C  88552D            mov [rbp+0x2d],dl
0000116F  4A808080886FCB30  o64 add byte [rax-0x34907780],0x30
00001177  2A8080BA4418      sub al,[rax+0x1844ba80]
0000117D  27                db 0x27
0000117E  0022              add [rdx],ah
00001180  FE4844            dec byte [rax+0x44]
00001183  1827              sbb [rdi],ah
00001185  8827              mov [rdi],ah
00001187  53                push rbx
00001188  88ADA39DF596      mov [rbp-0x690a625d],ch
0000118E  DB                db 0xdb
0000118F  2334FE            and esi,[rsi+rdi*8]
00001192  FE                db 0xfe
00001193  FE                db 0xfe
00001194  96                xchg eax,esi
00001195  116509            adc [rbp+0x9],esp
00001198  94                xchg eax,esp
00001199  FE                db 0xfe
0000119A  FEC4              inc ah
0000119C  3A4619            cmp al,[rsi+0x19]
0000119F  7EAC              jng 0x114d
000011A1  D8D6              fcom st6
000011A3  3A4619            cmp al,[rsi+0x19]
000011A6  96                xchg eax,esi
000011A7  19FD              sbb ebp,edi
000011A9  96                xchg eax,esi
000011AA  A3AD737B2CD119FA  mov [qword 0x54fa19d12c7b73ad],eax
         -54
000011B3  54                push rsp
000011B4  54                push rsp
000011B5  2C87              sub al,0x87
000011B7  2BB65A54548A      sub esi,[rsi-0x75ababa6]
000011BD  109C0FD462806C    adc [rdi+rcx+0x6c8062d4],bl
000011C4  109C0F2C0FE32C    adc [rdi+rcx+0x2ce30f2c],bl
000011CB  99                cdq
000011CC  93                xchg eax,ebx
000011CD  697138452D6680    imul esi,[rcx+0x38],dword 0x80662d45
000011D4  808038CB27C586    add byte [rax-0x3ad834c8],0x86
000011DB  808076A4285300    add byte [rax+0x5328a476],0x0
000011E2  DE04F8            fiadd word [rax+rdi*8]
000011E5  A4                movsb
000011E6  285338            sub [rbx+0x38],dl
000011E9  53                push rbx
000011EA  5F                pop rdi
000011EB  38ADCF3D2564      cmp [rbp+0x64253dcf],ch
000011F1  61                db 0x61
000011F2  2912              sub [rdx],edx
000011F4  CC                int3
000011F5  CC                int3
000011F6  CC                int3
000011F7  64D7              fs xlatb
000011F9  43C8ADCCCC        enter 0xccad,0xcc
000011FE  2220              and ah,[rax]
00001200  54                push rsp
00001201  DF4C3AA5          fisttp word [rdx+rdi-0x5b]
00001205  2420              and al,0x20
00001207  54                push rsp
00001208  DF64DFFB          fbld tword [rdi+rbx*8-0x5]
0000120C  64A9ABF9C1FD      fs test eax,0xfdc1f9ab
00001212  08D0              or al,dl
00001214  0BA5A5A5FDEE      or esp,[rbp-0x11025a5b]
0000121A  4A                rex.wx
0000121B  82                db 0x82
0000121C  54                push rsp
0000121D  A5                movsd
0000121E  A5                movsd
0000121F  DB                db 0xdb
00001220  F9                stc
00001221  AD                lodsd
00001222  96                xchg eax,esi
00001223  256313BDF9        and eax,0xf9bd1363
00001228  AD                lodsd
00001229  96                xchg eax,esi
0000122A  FD                std
0000122B  96                xchg eax,esi
0000122C  82                db 0x82
0000122D  FD                std
0000122E  50                push rax
0000122F  7220              jc 0x1251
00001231  2887925AFD4F      sub [rdi+0x4ffd5a92],al
00001237  4F                rex.wrxb
00001238  4F87A0BCEDCE4F    xchg r12,[r8+0x4fceedbc]
0000123F  4F0DA3F7E8CF      or rax,0xffffffffcfe8f7a3
00001245  851547A3F7E8      test [rel 0xffffffffe8f7b592],edx
0000124B  87E8              xchg ebp,eax
0000124D  94                xchg eax,esp
0000124E  87DA              xchg ebx,edx
00001250  446A32            push byte +0x32
00001253  6D                insd
00001254  F8                clc
00001255  801715            adc byte [rdi],0x15
00001258  15156D3A86        adc eax,0x863a6d15
0000125D  F4                hlt
0000125E  C4                db 0xc4
0000125F  151567E91D        adc eax,0x1de96715
00001264  82                db 0x82
00001265  95                xchg eax,ebp
00001266  2F                db 0x2f
00001267  41AD              lodsd
00001269  E91D826D82        jmp 0xffffffff826d948b
0000126E  5E                pop rsi
0000126F  6D                insd
00001270  004E90            add [rsi-0x70],cl
00001273  58                pop rax
00001274  B14C              mov cl,0x4c
00001276  F4                hlt
00001277  BB393939B1        mov ebx,0xb1393939
0000127C  DEBAD1883939      fidivr word [rdx+0x393988d1]
00001282  8BDD              mov ebx,ebp
00001284  E146              loope 0x12cc
00001286  B9E3BDF1DD        mov ecx,0xddf1bde3
0000128B  E146              loope 0x12d3
0000128D  B146              mov cl,0x46
0000128F  F2B174            repne mov cl,0x74
00001292  62                db 0x62
00001293  84AC958850BFBD    test [rbp+rdx*4-0x4240af78],ch
0000129A  BDBD954AEE        mov ebp,0xee4a95bd
0000129F  CA4CBD            retf 0xbd4c
000012A2  BD2F192572        mov ebp,0x7225192f
000012A7  3D774CD519        cmp eax,0x19d54c77
000012AC  25729572C6        and eax,0xc6729572
000012B1  95                xchg eax,ebp
000012B2  D0D6              rcl dh,1
000012B4  C028C2            shr byte [rax],byte 0xc2
000012B7  19C1              sbb ecx,eax
000012B9  E44A              in al,0x4a
000012BB  4A                rex.wx
000012BC  4AC25B2F          retq 0x2f5b
000012C0  28BD4A4A5416      sub [rbp+0x16544a4a],bh
000012C6  92                xchg eax,edx
000012C7  63                db 0x63
000012C8  CACCCB            retf 0xcbcc
000012CB  0216              add dl,[rsi]
000012CD  92                xchg eax,edx
000012CE  63                db 0x63
000012CF  C26307            ret 0x763
000012D2  C24197            ret 0x9741
000012D5  F1                int1
000012D6  3963C4            cmp [rbx-0x3c],esp
000012D9  8CF9              mov ecx,segr7
000012DB  CB                retf
000012DC  CB                retf
000012DD  CB                retf
000012DE  63                db 0x63
000012DF  7AF6              jpe 0x12d7
000012E1  8C60CB            mov [rax-0x35],fs
000012E4  CB                retf
000012E5  49                rex.wb
000012E6  8F                db 0x8f
000012E7  93                xchg eax,ebx
000012E8  C24BF1            ret 0xf14b
000012EB  3CA3              cmp al,0xa3
000012ED  8F                db 0x8f
000012EE  93                xchg eax,ebx
000012EF  C263C2            ret 0xc263
000012F2  6E                outsb
000012F3  63                db 0x63
000012F4  0C9E              or al,0x9e
000012F6  DC2486            fsub qword [rsi+rax*4]
000012F9  B31B              mov bl,0x1b
000012FB  CC                int3
000012FC  CE                db 0xce
000012FD  CE                db 0xce
000012FE  CE                db 0xce
000012FF  8601              xchg al,[rcx]
00001301  1DF296CECE        sbb eax,0xcece96f2
00001306  1C42              sbb al,0x42
00001308  76E9              jna 0x12f3
0000130A  4EB4E3            o64 mov spl,0xe3
0000130D  C64276E9          mov byte [rdx+0x76],0xe9
00001311  86E9              xchg ch,cl
00001313  55                push rbp
00001314  869B45EB93CB      xchg bl,[rbx-0x346c14bb]
0000131A  FE                db 0xfe
0000131B  F6C1E3            test cl,0xe3
0000131E  E3E3              jrcxz 0x1303
00001320  CB                retf
00001321  0C50              or al,0x50
00001323  50                push rax
00001324  3BE3              cmp esp,ebx
00001326  E371              jrcxz 0x1399
00001328  AF                scasd
00001329  9B                wait
0000132A  C4                db 0xc4
0000132B  63                db 0x63
0000132C  49A80B            o64 test al,0xb
0000132F  AF                scasd
00001330  9B                wait
00001331  C4                db 0xc4
00001332  CB                retf
00001333  C4                db 0xc4
00001334  38CB              cmp bl,cl
00001336  7688              jna 0x12c0
00001338  265E              es pop rsi
0000133A  3E99              ds cdq
0000133C  7164              jno 0x13a2
0000133E  7676              jna 0x13b6
00001340  763E              jna 0x1380
00001342  87CB              xchg ecx,ebx
00001344  6C                insb
00001345  EE                out dx,al
00001346  7676              jna 0x13be
00001348  D4                db 0xd4
00001349  52                push rdx
0000134A  CE                db 0xce
0000134B  9F                lahf
0000134C  F67C497E          idiv byte [rcx+rcx*2+0x7e]
00001350  52                push rdx
00001351  CE                db 0xce
00001352  9F                lahf
00001353  3E9F              ds lahf
00001355  F33EF1            ds rep int1
00001358  C3                ret
00001359  21F9              and ecx,edi
0000135B  21E6              and esi,esp
0000135D  EE                out dx,al
0000135E  67                a32
0000135F  49                rex.wb
00001360  49                rex.wb
00001361  49214410BA        and [r8+rdx-0x46],rax
00001366  7149              jno 0x13b1
00001368  49F7ED            imul r13
0000136B  91                xchg eax,ecx
0000136C  8CC9              mov ecx,cs
0000136E  9F                lahf
0000136F  1361ED            adc esp,[rcx-0x13]
00001372  91                xchg eax,ecx
00001373  8C21              mov [rcx],fs
00001375  8CA8216ED83E      mov [rax+0x3ed86e21],gs
0000137B  06                db 0x06
0000137C  AF                scasd
0000137D  54                push rsp
0000137E  1C3D              sbb al,0x3d
00001380  D7                xlatb
00001381  D7                xlatb
00001382  D7                xlatb
00001383  AF                scasd
00001384  0A8677FFD7D7      or al,[rsi-0x28280089]
0000138A  8D                db 0x8d
0000138B  CB                retf
0000138C  9F                lahf
0000138D  92                xchg eax,edx
0000138E  57                push rdi
0000138F  254BEFCB9F        and eax,0x9fcbef4b
00001394  92                xchg eax,edx
00001395  AF                scasd
00001396  92                xchg eax,edx
00001397  3EAF              ds scasd
00001399  9C                pushf
0000139A  6E                outsb
0000139B  EC                in al,dx
0000139C  74E3              jz 0x1381
0000139E  50                push rax
0000139F  38B14B4B4BE3      cmp [rcx-0x1cb4b4b5],dh
000013A5  F6FA              idiv dl
000013A7  9E                sahf
000013A8  53                push rbx
000013A9  4B                rex.wxb
000013AA  4BE157            o64 loope 0x1404
000013AD  73DE              jnc 0x138d
000013AF  CB                retf
000013B0  095FA3            or [rdi-0x5d],ebx
000013B3  57                push rdi
000013B4  73DE              jnc 0x1394
000013B6  E3DE              jrcxz 0x1396
000013B8  F2E3B8            repne jrcxz 0x1373
000013BB  82                db 0x82
000013BC  28F0              sub al,dh
000013BE  0F8CB4FD3737      jl near 0x37381178
000013C4  37                db 0x37
000013C5  0FA2              cpuid
000013C7  6659              pop cx
000013C9  BF3737EDE3        mov edi,0xe3ed3737
000013CE  5F                pop rdi
000013CF  AA                stosb
000013D0  B765              mov bh,0x65
000013D2  18CF              sbb bh,cl
000013D4  E35F              jrcxz 0x1435
000013D6  AA                stosb
000013D7  0FAA              rsm
000013D9  1E                db 0x1e
000013DA  0F34              sysenter
000013DC  AE                scasb
000013DD  A4                movsb
000013DE  AC                lodsb
000013DF  F03B03            lock cmp eax,[rbx]
000013E2  BE181818F0        mov esi,0xf0181818
000013E7  81E50BD11818      and ebp,0x1818d10b
000013ED  4E                rex.wrx
000013EE  D4                db 0xd4
000013EF  208998D6DEB0      and [rcx-0x4f212968],cl
000013F5  D4                db 0xd4
000013F6  2089F0899DF0      and [rcx-0xf627610],cl
000013FC  838DD31B6A951D    or dword [rbp-0x6a95e42d],byte +0x1d
00001403  78D2              js 0x13d7
00001405  D2D2              rcl dl,cl
00001407  6ABB              push byte -0x45
00001409  3F                db 0x3f
0000140A  368BD2            ss mov edx,edx
0000140D  D2483E            ror byte [rax+0x3e],cl
00001410  5A                pop rdx
00001411  C3                ret
00001412  52                push rdx
00001413  40862A            xchg bpl,[rdx]
00001416  3E5A              ds pop rdx
00001418  C3                ret
00001419  6AC3              push byte -0x3d
0000141B  17                db 0x17
0000141C  6A9D              push byte -0x63
0000141E  876DF5            xchg ebp,[rbp-0xb]
00001421  8E41B9            mov es,[rcx-0x47]
00001424  6C                insb
00001425  8686868E5733      xchg al,[rsi+0x33578e86]
0000142B  CB                retf
0000142C  A7                cmpsd
0000142D  8686BC5A3E0F      xchg al,[rsi+0xf3e5abc]
00001433  06                db 0x06
00001434  54                push rsp
00001435  82                db 0x82
00001436  CE                db 0xce
00001437  5A                pop rdx
00001438  3E0F8E0FFB8E39    ds jng near 0x398f0f4e
0000143F  EB09              jmp short 0x144a
00001441  2172E5            and [rdx-0x1b],esi
00001444  7D40              jnl 0x1486
00001446  8A8A8A729B77      mov cl,[rdx+0x779b728a]
0000144C  C0EB8A            shr bl,byte 0x8a
0000144F  8AD0              mov dl,al
00001451  9E                sahf
00001452  E213              loop 0x1467
00001454  0AB8A9B29EE2      or bh,[rax-0x1d614d57]
0000145A  137213            adc esi,[rdx+0x13]
0000145D  9F                lahf
0000145E  72FD              jc 0x145d
00001460  8F                db 0x8f
00001461  CD45              int 0x45
00001463  71A6              jno 0x140b
00001465  3EBFA9A9A971      ds mov edi,0x71a9a9a9
0000146B  AC                lodsb
0000146C  7832              js 0x14a0
0000146E  9C                pushf
0000146F  A9A9AF9DC1        test eax,0xc19dafa9
00001474  A4                movsb
00001475  29472B            sub [rdi+0x2b],eax
00001478  319DC1A471A4      xor [rbp-0x5b8e5b3f],ebx
0000147E  E071              loopne 0x14f1
00001480  BEF0EEC6C7        mov esi,0xc7c6eef0
00001485  EC                in al,dx
00001486  A4                movsb
00001487  DD5F5F            fstp qword [rdi+0x5f]
0000148A  5F                pop rdi
0000148B  C7                db 0xc7
0000148C  5A                pop rdx
0000148D  16                db 0x16
0000148E  57                push rdi
0000148F  CA5F5F            retf 0x5f5f
00001492  4D53              push r11
00001494  97                xchg eax,edi
00001495  B2DF              mov dl,0xdf
00001497  1522875397        adc eax,0x97538722
0000149C  B2C7              mov dl,0xc7
0000149E  B27E              mov dl,0x7e
000014A0  C7                db 0xc7
000014A1  248E              and al,0x8e
000014A3  54                push rsp
000014A4  0C3A              or al,0x3a
000014A6  452D94222222      sub eax,0x22222294
000014AC  3AA74B979722      cmp ah,[rdi+0x2297974b]
000014B2  2284EECA6FA20C    and al,[rsi+rbp*8+0xca26fca]
000014B9  D8FA              fdivr st2
000014BB  EE                out dx,al
000014BC  CA6F3A            retf 0x3a6f
000014BF  6F                outsd
000014C0  63                db 0x63
000014C1  3AADB39D25CC      cmp ch,[rbp-0x33da624d]
000014C7  27                db 0x27
000014C8  AF                scasd
000014C9  6E                outsb
000014CA  3434              xor al,0x34
000014CC  34CC              xor al,0xcc
000014CE  91                xchg eax,ecx
000014CF  35B2013434        xor eax,0x343401b2
000014D4  5E                pop rsi
000014D5  B0DC              mov al,0xdc
000014D7  39B4561D8CB0DC    cmp [rsi+rdx*2-0x234f73e3],esi
000014DE  39CC              cmp esp,ecx
000014E0  39ADCC2F3D5F      cmp [rbp+0x5f3d2fcc],ebp
000014E6  87E5              xchg esp,ebp
000014E8  52                push rdx
000014E9  AA                stosb
000014EA  B31D              mov bl,0x1d
000014EC  1D1DE508BC        sbb eax,0xbc08e51d
000014F1  FA                cli
000014F2  A7                cmpsd
000014F3  1D1D03A915        sbb eax,0x15a9031d
000014F8  60                db 0x60
000014F9  9D                popf
000014FA  BB06A5A915        mov ebx,0x15a9a506
000014FF  60                db 0x60
00001500  E560              in eax,0x60
00001502  24E5              and al,0xe5
00001504  2A147A            sub dl,[rdx+rdi*2]
00001507  F2B049            repne mov al,0x49
0000150A  61                db 0x61
0000150B  4EA8A8            o64 test al,0xa8
0000150E  A8B0              test al,0xb0
00001510  3F                db 0x3f
00001511  A37442A8A85EF420  mov [qword 0x3720f45ea8a84274],eax
         -37
0000151A  28C6              sub dh,al
0000151C  8070F420          xor byte [rax-0xc],0x20
00001520  37                db 0x37
00001521  B037              mov al,0x37
00001523  8BB0E17B71E9      mov esi,[rax-0x168e841f]
00001529  F8                clc
0000152A  3119              xor [rcx],ebx
0000152C  D6                salc
0000152D  808080F8375BCB    add byte [rax+0x5b37f880],0xcb
00001534  BA8080062C        mov edx,0x2c068080
00001539  883F              mov [rdi],bh
0000153B  006EB8            add [rsi-0x48],ch
0000153E  B82C883FF8        mov eax,0xf83f882c
00001543  3F                db 0x3f
00001544  B3F8              mov bl,0xf8
00001546  99                cdq
00001547  838991C01921BE    or dword [rcx+0x2119c091],byte -0x42
0000154E  686868C0FF        push qword 0xffffffffffc06868
00001553  63                db 0x63
00001554  86E2              xchg ah,dl
00001556  68682ED450        push qword 0x50d42e68
0000155B  67E8669380D4      call 0xffffffffd480a8c7
00001561  50                push rax
00001562  67C067DBC0        shl byte [edi-0x25],byte 0xc0
00001567  A1EB91798BBAE25D  mov eax,[qword 0x935de2ba8b7991eb]
         -93
00001570  93                xchg eax,ebx
00001571  93                xchg eax,ebx
00001572  8BF4              mov esi,esp
00001574  187621            sbb [rsi+0x21],dh
00001577  93                xchg eax,ebx
00001578  93                xchg eax,ebx
00001579  6D                insd
0000157A  9F                lahf
0000157B  BB5C13B5FB        mov ebx,0xfbb5135c
00001580  4B9F              o64 lahf
00001582  BB5C8B5CB0        mov ebx,0xb05c8b5c
00001587  8B62E0            mov esp,[rdx-0x20]
0000158A  32DA              xor bl,dl
0000158C  E3F2              jrcxz 0x1580
0000158E  9A                db 0x9a
0000158F  35ABABABE3        xor eax,0xe3ababab
00001594  2C90              sub al,0x90
00001596  5B                pop rbx
00001597  F9                stc
00001598  AB                stosd
00001599  AB                stosd
0000159A  45                rex.rb
0000159B  37                db 0x37
0000159C  53                push rbx
0000159D  142B              adc al,0x2b
0000159F  5D                pop rbp
000015A0  BBA3375314        mov ebx,0x145337a3
000015A5  E314              jrcxz 0x15bb
000015A7  A8E3              test al,0xe3
000015A9  1AD8              sbb bl,al
000015AB  6A12              push byte +0x12
000015AD  3342EA            xor eax,[rdx-0x16]
000015B0  65BBBBBB337C      gs mov ebx,0x7c33bbbb
000015B6  60                db 0x60
000015B7  B469              mov ah,0x69
000015B9  BBBBD567C3        mov ebx,0xc367d5bb
000015BE  043B              add al,0x3b
000015C0  1DDC7367C3        sbb eax,0xc36773dc
000015C5  0433              add al,0x33
000015C7  0478              add al,0x78
000015C9  336AC8            xor ebp,[rdx-0x38]
000015CC  1AA26E9981D0      sbb ah,[rdx-0x2f7e6692]
000015D2  96                xchg eax,esi
000015D3  96                xchg eax,esi
000015D4  96                xchg eax,esi
000015D5  6E                outsb
000015D6  DBDF              fcmovnu st7
000015D8  9C                pushf
000015D9  94                xchg eax,esp
000015DA  96                xchg eax,esi
000015DB  96                xchg eax,esi
000015DC  00623E            add [rdx+0x3e],ah
000015DF  0316              add edx,[rsi]
000015E1  F8                clc
000015E2  9C                pushf
000015E3  AE                scasb
000015E4  62                db 0x62
000015E5  3E036E03          add ebp,[ds:rsi+0x3]
000015E9  B76E              mov bh,0x6e
000015EB  01C7              add edi,eax
000015ED  F1                int1
000015EE  79A4              jns 0x1594
000015F0  9F                lahf
000015F1  F722              mul dword [rdx]
000015F3  9C                pushf
000015F4  9C                pushf
000015F5  9C                pushf
000015F6  A4                movsb
000015F7  7DD9              jnl 0x15d2
000015F9  FFA79C9CD210      jmp [rdi+0x10d29c9c]
000015FF  F4                hlt
00001600  95                xchg eax,ebp
00001601  1C8A              sbb al,0x8a
00001603  32E4              xor ah,ah
00001605  10F4              adc ah,dh
00001607  95                xchg eax,ebp
00001608  A4                movsb
00001609  95                xchg eax,ebp
0000160A  41A4              movsb
0000160C  77D1              ja 0x15df
0000160E  E7FF              out 0xff,eax
00001610  26B9918CBEBE      es mov ecx,0xbebe8c91
00001616  BE26AF6BAA        mov esi,0xaa6baf26
0000161B  41BEBE3CB2B6      mov r14d,0xb6b23cbe
00001621  873E              xchg edi,[rsi]
00001623  E4E0              in al,0xe0
00001625  66B2B6            o16 mov dl,0xb6
00001628  8726              xchg esp,[rsi]
0000162A  87B326118381      xchg esi,[rbx-0x7e7ceeda]
00001630  99                cdq
00001631  98                cwde
00001632  6B33B2            imul esi,[rbx],byte -0x4e
00001635  E0E0              loopne 0x1617
00001637  E098              loopne 0x15d1
00001639  B5B9              mov ch,0xb9
0000163B  F1                int1
0000163C  A3E0E0628CA8FD60  mov [qword 0x6a60fda88c62e0e0],eax
         -6A
00001645  3C58              cmp al,0x58
00001647  8CA8FD98FD11      mov [rax+0x11fd98fd],gs
0000164D  98                cwde
0000164E  B3A1              mov bl,0xa1
00001650  63                db 0x63
00001651  4B7C6F            o64 jl 0x16c3
00001654  17                db 0x17
00001655  B664              mov dh,0x64
00001657  64647C79          fs jl 0x16d4
0000165B  FD                std
0000165C  66                o16
0000165D  C7                db 0xc7
0000165E  646466308C81E49E  o16 xor [fs:rcx+rax*4+0x3cdf9ee4],cl
         -DF3C
00001668  308C817C81757C    xor [rcx+rax*4+0x7c75817c],cl
0000166F  97                xchg eax,edi
00001670  0587CF8794        add eax,0x9487cf87
00001675  2CD9              sub al,0xd9
00001677  DF                db 0xdf
00001678  DF                db 0xdf
00001679  DF87965230BC      fild word [rdi-0x43cfad6a]
0000167F  DF                db 0xdf
00001680  DFE9              fucomip st1
00001682  53                push rbx
00001683  B76E              mov bh,0x6e
00001685  5F                pop rdi
00001686  81434753B76E87    add dword [rbx+0x47],0x876eb753
0000168D  6E                outsb
0000168E  1A87ACCA7CB4      sbb al,[rdi-0x4b833554]
00001694  43B028            mov r8b,0x28
00001697  F5                cmc
00001698  7B7B              jpo 0x1715
0000169A  7B43              jpo 0x16df
0000169C  72CE              jc 0x166c
0000169E  43387B7B          cmp [r11+0x7b],dil
000016A2  056FB34AFB        add eax,0xfb4ab36f
000016A7  AD                lodsd
000016A8  6A03              push byte +0x3
000016AA  6F                outsd
000016AB  B34A              mov bl,0x4a
000016AD  43                rex.xb
000016AE  4AB643            o64 mov sil,0x43
000016B1  A8E6              test al,0xe6
000016B3  F8                clc
000016B4  50                push rax
000016B5  62                db 0x62
000016B6  4DB5E8            o64 mov r13b,0xe8
000016B9  6A6A              push byte +0x6a
000016BB  6A62              push byte +0x62
000016BD  3357D3            xor edx,[rdi-0x2d]
000016C0  A5                movsd
000016C1  6A6A              push byte +0x6a
000016C3  98                cwde
000016C4  76F2              jna 0x16b8
000016C6  5B                pop rbx
000016C7  EA                db 0xea
000016C8  E0CC              loopne 0x1696
000016CA  A276F25B625B2F62  mov [qword 0x35622f5b625bf276],al
         -35
000016D3  FFE5              jmp rbp
000016D5  ED                in eax,dx
000016D6  1023              adc [rbx],ah
000016D8  0BA6F8F8F810      or esp,[rsi+0x10f8f8f8]
000016DE  69ED1A7BF8F8      imul ebp,ebp,dword 0xf8f87b1a
000016E4  16                db 0x16
000016E5  2460              and al,0x60
000016E7  7178              jno 0x1761
000016E9  4E                rex.wrx
000016EA  4350              push r8
000016EC  2460              and al,0x60
000016EE  7110              jno 0x1700
000016F0  7165              jno 0x1757
000016F2  108BB5BB43EB      adc [rbx-0x14bc444b],cl
000016F8  98                cwde
000016F9  F0194343          lock sbb [rbx+0x43],eax
000016FD  43EB76            jmp short 0x1776
00001700  32D0              xor dl,al
00001702  97                xchg eax,edi
00001703  43                rex.xb
00001704  43                rex.xb
00001705  49B73B            o64 mov r15b,0x3b
00001708  AE                scasb
00001709  C3                ret
0000170A  E150              loope 0x175c
0000170C  AB                stosd
0000170D  B73B              mov bh,0x3b
0000170F  AE                scasb
00001710  EBAE              jmp short 0x16c0
00001712  FA                cli
00001713  EB70              jmp short 0x1785
00001715  0AE0              or ah,al
00001717  F8                clc
00001718  52                push rdx
00001719  CB                retf
0000171A  E3A0              jrcxz 0x16bc
0000171C  4A                rex.wx
0000171D  4A                rex.wx
0000171E  4A52              push rdx
00001720  019D0E7E4A4A      add [rbp+0x4a4a7e0e],ebx
00001726  90                nop
00001727  9E                sahf
00001728  A299CA9847129EA2  mov [qword 0x99a29e124798ca99],al
         -99
00001731  52                push rdx
00001732  99                cdq
00001733  25526375D3        and eax,0xd3756352
00001738  AB                stosd
00001739  7F4E              jg 0x1789
0000173B  D6                salc
0000173C  6D                insd
0000173D  47                rex.rxb
0000173E  47                rex.rxb
0000173F  477FD4            jg 0x1716
00001742  50                push rax
00001743  B07B              mov al,0x7b
00001745  47                rex.rxb
00001746  47DD9B0F1CC725    fstp qword [r11+0x25c71c0f]
0000174D  96                xchg eax,esi
0000174E  3F                db 0x3f
0000174F  9B0F1C7F1C        wait hint_nop39 dword [rdi+0x1c]
00001754  A87F              test al,0x7f
00001756  56                push rsi
00001757  7846              js 0x179f
00001759  2E107F87          adc [cs:rdi-0x79],bh
0000175D  26D8D8            es fcomp st0
00001760  D810              fcom dword [rax]
00001762  65717E            gs jno 0x17e3
00001765  8CD8              mov eax,ds
00001767  D896ACE08D58      fcom dword [rsi+0x588de0ac]
0000176D  6E                outsb
0000176E  D9D0              fnop
00001770  AC                lodsb
00001771  E08D              loopne 0x1700
00001773  108D691007B9      adc [rbp-0x46f8ef97],cl
00001779  37                db 0x37
0000177A  DFA1427A73D9      fbld tword [rcx-0x268c85be]
00001780  D9                db 0xd9
00001781  D9A10400A6DD      fldenv [rcx-0x2259fffc]
00001787  D9                db 0xd9
00001788  D9833D115C59      fld dword [rbx+0x595c113d]
0000178E  BB8AE13D11        mov ebx,0x113de18a
00001793  5C                pop rsp
00001794  A15CC8A1FA780AE2  mov eax,[qword 0xf0e20a78faa1c85c]
         -F0
0000179D  91                xchg eax,ecx
0000179E  89DA              mov edx,ebx
000017A0  0808              or [rax],cl
000017A2  08F0              or al,dh
000017A4  AB                stosd
000017A5  7748              ja 0x17ef
000017A7  9C                pushf
000017A8  0808              or [rax],cl
000017AA  EA                db 0xea
000017AB  7C20              jl 0x17cd
000017AD  0388D2B7307C      add ecx,[rax+0x7c30b7d2]
000017B3  2003              and [rbx],al
000017B5  F0039FF0094F59    lock add ebx,[rdi+0x594f09f0]
000017BC  311F              xor [rdi],ebx
000017BE  DEF6              fdivrp st6
000017C0  ED                in eax,dx
000017C1  B7B7              mov bh,0xb7
000017C3  B71F              mov bh,0x1f
000017C5  8CC8              mov eax,cs
000017C7  A4                movsb
000017C8  3BB7B77D9B8F      cmp esi,[rdi-0x70648249]
000017CE  44                rex.r
000017CF  37                db 0x37
000017D0  15845F9B8F        adc eax,0x8f9b5f84
000017D5  44                rex.r
000017D6  1F                db 0x1f
000017D7  44701F            jo 0x17f9
000017DA  76E0              jna 0x17bc
000017DC  86FE              xchg bh,dh
000017DE  6A51              push byte +0x51
000017E0  49E082            o64 loopne 0x1765
000017E3  82                db 0x82
000017E4  82                db 0x82
000017E5  6A5F              push byte +0x5f
000017E7  6B04FB82          imul eax,[rbx+rdi*8],byte -0x7e
000017EB  82                db 0x82
000017EC  F0                lock
000017ED  66                o16
000017EE  9A                db 0x9a
000017EF  7702              ja 0x17f3
000017F1  98                cwde
000017F2  9BAA              wait stosb
000017F4  66                o16
000017F5  9A                db 0x9a
000017F6  776A              ja 0x1862
000017F8  77F3              ja 0x17ed
000017FA  6AC9              push byte -0x37
000017FC  E319              jrcxz 0x1817
000017FE  F1                int1
000017FF  E364              jrcxz 0x1865
00001801  7C3D              jl 0x1840
00001803  9B9B9BE366        wait jrcxz 0x186e
00001808  B2B4              mov dl,0xb4
0000180A  62                db 0x62
0000180B  9B9BAD            wait lodsd
0000180E  5F                pop rdi
0000180F  B33E              mov bl,0x3e
00001811  1B0581235FB3      sbb eax,[rel 0xffffffffb35f3b98]
00001817  3EE33E            ds jrcxz 0x1858
0000181A  DA                db 0xda
0000181B  E3FC              jrcxz 0x1819
0000181D  6AAC              push byte -0x54
0000181F  841DBE56D7B5      test [rel 0xffffffffb5d76ee3],bl
00001825  B5B5              mov ch,0xb5
00001827  1D50EC61DC        sbb eax,0xdc61ec50
0000182C  B5B5              mov ch,0xb5
0000182E  47392DE8356F78    cmp [rel 0x786f4e1d],r13d
00001835  5D                pop rbp
00001836  392DE81DE8D4      cmp [rel 0xffffffffd4e83624],ebp
0000183C  1DD6A4C65E        sbb eax,0x5ec6a4d6
00001841  50                push rax
00001842  3F                db 0x3f
00001843  47                rex.rxb
00001844  267878            es js 0x18bf
00001847  7850              js 0x1899
00001849  1DB1F96178        sbb eax,0x7861f9b1
0000184E  7856              js 0x18a6
00001850  A4                movsb
00001851  E0E5              loopne 0x1838
00001853  F8                clc
00001854  7E11              jng 0x1867
00001856  90                nop
00001857  A4                movsb
00001858  E0E5              loopne 0x183f
0000185A  50                push rax
0000185B  E5A9              in eax,0xa9
0000185D  50                push rax
0000185E  C7                db 0xc7
0000185F  39F7              cmp edi,esi
00001861  5F                pop rdi
00001862  E7B6              out 0xb6,eax
00001864  9E                sahf
00001865  0DCFCFCFE7        or eax,0xe7cfcfcf
0000186A  B418              mov ah,0x18
0000186C  AD                lodsd
0000186D  88CF              mov bh,cl
0000186F  CF                iret
00001870  BD4B377C4F        mov ebp,0x4f7c374b
00001875  B5EA              mov ch,0xea
00001877  27                db 0x27
00001878  4B                rex.wxb
00001879  37                db 0x37
0000187A  7CE7              jl 0x1863
0000187C  7CB0              jl 0x182e
0000187E  E71E              out 0x1e,eax
00001880  800E56            or byte [rsi],0x56
00001883  F23BF3            repne cmp esi,ebx
00001886  68EAEAEAF2        push qword 0xfffffffff2eaeaea
0000188B  49BD1FADEAEA1886  mov r13,0x41428618eaeaad1f
         -4241
00001895  6A70              push byte +0x70
00001897  86B2864241F2      xchg dh,[rdx-0xdbebd7a]
0000189D  41                rex.b
0000189E  C5                db 0xc5
0000189F  F27315            bnd jnc 0x18b7
000018A2  E35B              jrcxz 0x18ff
000018A4  66BFD78C          mov di,0x8cd7
000018A8  3E3E3E666D        ds insw
000018AD  B116              mov cl,0x16
000018AF  61                db 0x61
000018B0  3E3EFC            ds cld
000018B3  EA                db 0xea
000018B4  B665              mov dh,0x65
000018B6  BE846326EA        mov esi,0xea266384
000018BB  B665              mov dh,0x65
000018BD  6665396657        cmp [gs:rsi+0x57],sp
000018C2  8947DF            mov [rdi-0x21],eax
000018C5  9B5A              wait pop rdx
000018C7  E241              loop 0x190a
000018C9  63                db 0x63
000018CA  63                db 0x63
000018CB  63                db 0x63
000018CC  9BC8FC98AC        wait enter 0x98fc,0xac
000018D1  63                db 0x63
000018D2  63                db 0x63
000018D3  B14F              mov cl,0x4f
000018D5  EBD0              jmp short 0x18a7
000018D7  E379              jrcxz 0x1952
000018D9  E9DB4FEBD0        jmp 0xffffffffd0eb68b9
000018DE  9BD0949B6264D2FA  wait rcl byte [rbx+rbx*4-0x52d9b9e],1
000018E6  85E4              test esp,esp
000018E8  0C7B              or al,0x7b
000018EA  AD                lodsd
000018EB  AD                lodsd
000018EC  AD                lodsd
000018ED  85B2F6BF63AD      test [rdx-0x529c400a],esi
000018F3  AD                lodsd
000018F4  2B99959A2D23      sub ebx,[rcx+0x232d9a95]
000018FA  90                nop
000018FB  C5                db 0xc5
000018FC  99                cdq
000018FD  95                xchg eax,ebp
000018FE  9A                db 0x9a
000018FF  859ACE858C5E      test [rdx+0x5e8c85ce],ebx
00001905  7C84              jl 0x188b
00001907  887179            mov [rcx+0x79],dh
0000190A  AE                scasb
0000190B  90                nop
0000190C  90                nop
0000190D  90                nop
0000190E  88FF              mov bh,bh
00001910  63                db 0x63
00001911  A9F690903E        test eax,0x3e9090f6
00001916  EC                in al,dx
00001917  F8                clc
00001918  A7                cmpsd
00001919  1066C5            adc [rsi-0x3b],ah
0000191C  48EC              o64 in al,dx
0000191E  F8                clc
0000191F  A7                cmpsd
00001920  88A75B88F90B      mov [rdi+0xbf9885b],ah
00001926  4951              push r9
00001928  97                xchg eax,edi
00001929  2C14              sub al,0x14
0000192B  7D3F              jnl 0x196c
0000192D  3F                db 0x3f
0000192E  3F                db 0x3f
0000192F  97                xchg eax,edi
00001930  5A                pop rdx
00001931  7E6B              jng 0x199e
00001933  853F              test [rdi],edi
00001935  3F                db 0x3f
00001936  CD0B              int 0xb
00001938  4722BFC5EF570B    and r15b,[r15+0xb57efc5]
0000193F  47229722169794    and r10b,[r15-0x6b68e9de]
00001946  06                db 0x06
00001947  648C07            mov [fs:rdi],es
0000194A  9C                pushf
0000194B  044D              add al,0x4d
0000194D  EF                out dx,eax
0000194E  EF                out dx,eax
0000194F  EF                out dx,eax
00001950  07                db 0x07
00001951  8A6EBE            mov ch,[rsi-0x42]
00001954  D5                db 0xd5
00001955  EF                out dx,eax
00001956  EF                out dx,eax
00001957  FD                std
00001958  5B                pop rbx
00001959  D7                xlatb
0000195A  726F              jc 0x19cb
0000195C  2506C75BD7        and eax,0xd75bc706
00001961  7207              jc 0x196a
00001963  7206              jc 0x196b
00001965  07                db 0x07
00001966  8416              test [rsi],dl
00001968  F4                hlt
00001969  7C0C              jl 0x1977
0000196B  25ED023434        and eax,0x343402ed
00001970  340C              xor al,0xc
00001972  33B76AAA3434      xor esi,[rdi+0x3434aa6a]
00001978  B2B0              mov dl,0xb0
0000197A  DCBBB4EA93CC      fdivr qword [rbx-0x336c154c]
00001980  B0DC              mov al,0xdc
00001982  BB0CBBEF0C        mov ebx,0xcefbb0c
00001987  6D                insd
00001988  3F                db 0x3f
00001989  9D                popf
0000198A  85EB              test ebx,ebp
0000198C  52                push rdx
0000198D  5A                pop rdx
0000198E  15939393EB        adc eax,0xeb939393
00001993  94                xchg eax,esp
00001994  8066BD93          and byte [rsi-0x43],0x93
00001998  93                xchg eax,ebx
00001999  45E7FB            out 0xfb,eax
0000199C  9C                pushf
0000199D  13CD              adc ecx,ebp
0000199F  95                xchg eax,ebp
000019A0  AB                stosd
000019A1  E7FB              out 0xfb,eax
000019A3  9C                pushf
000019A4  EB9C              jmp short 0x1942
000019A6  18EB              sbb bl,ch
000019A8  DA                db 0xda
000019A9  E84AF209B0        call 0xffffffffb00a0bf8
000019AE  7813              js 0x19c3
000019B0  D1D1              rcl ecx,1
000019B2  D109              ror dword [rcx],1
000019B4  B26E              mov dl,0x6e
000019B6  017BD1            add [rbx-0x2f],edi
000019B9  D14375            rol dword [rbx+0x75],1
000019BC  99                cdq
000019BD  7A51              jpe 0x1a10
000019BF  BB3EC97599        mov ebx,0x9975c93e
000019C4  7A09              jpe 0x19cf
000019C6  7A06              jpe 0x19ce
000019C8  09F8              or eax,edi
000019CA  D6                salc
000019CB  E8D0AF561B        call 0x1b56c9a0
000019D0  7A6E              jpe 0x1a40
000019D2  96                xchg eax,esi
000019D3  3E3E56            ds push rsi
000019D6  17                db 0x17
000019D7  BAA2BE3E3E        mov edx,0x3e3ebea2
000019DC  3EF5              ds cmc
000019DE  BFD29B3E3E        mov edi,0x3e3e9bd2
000019E3  0E                db 0x0e
000019E4  3E3E3E19BFD29B3E  sbb [ds:rdi+0x3e3e9bd2],edi
         -3E
000019ED  DF5619            fist word [rsi+0x19]
000019F0  3E56              ds push rsi
000019F2  93                xchg eax,ebx
000019F3  BFF69B3E3E        mov edi,0x3e3e9bf6
000019F8  56                push rsi
000019F9  19BFF69B3E3E      sbb [rdi+0x3e3e9bf6],edi
000019FF  56                push rsi
00001A00  19FE              sbb esi,edi
00001A02  5E                pop rsi
00001A03  56                push rsi
00001A04  19FE              sbb esi,edi
00001A06  C6                db 0xc6
00001A07  56                push rsi
00001A08  A17E9E5693BFFE3F  mov eax,[qword 0x3e3ffebf93569e7e]
         -3E
00001A11  3E56              ds push rsi
00001A13  19BFFE3F3E3E      sbb [rdi+0x3e3e3ffe],edi
00001A19  56                push rsi
00001A1A  A1B62E5693BFFE96  mov eax,[qword 0x3e96febf93562eb6]
         -3E
00001A23  3E332B            xor ebp,[ds:rbx]
00001A26  3E3E3E56          ds push rsi
00001A2A  19BFFE963E3E      sbb [rdi+0x3e3e96fe],edi
00001A30  56                push rsi
00001A31  A17E5656A17E2E56  mov eax,[qword 0x93562e7ea156567e]
         -93
00001A3A  BFD69B3E3E        mov edi,0x3e3e9bd6
00001A3F  56                push rsi
00001A40  19BFD69B3E3E      sbb [rdi+0x3e3e9bd6],edi
00001A46  56                push rsi
00001A47  19FE              sbb esi,edi
00001A49  96                xchg eax,esi
00001A4A  56                push rsi
00001A4B  93                xchg eax,ebx
00001A4C  BF7E9B3E3E        mov edi,0x3e3e9b7e
00001A51  56                push rsi
00001A52  19BF7E9B3E3E      sbb [rdi+0x3e3e9b7e],edi
00001A58  56                push rsi
00001A59  193E              sbb [rsi],edi
00001A5B  56                push rsi
00001A5C  196F7E            sbb [rdi+0x7e],ebp
00001A5F  9B3E3E56          ds wait push rsi
00001A63  A1449656197456DB  mov eax,[qword 0xa4db567419569644]
         -A4
00001A6C  96                xchg eax,esi
00001A6D  56                push rsi
00001A6E  136E56            adc ebp,[rsi+0x56]
00001A71  93                xchg eax,ebx
00001A72  BFA69B3E3E        mov edi,0x3e3e9ba6
00001A77  56                push rsi
00001A78  19BFA69B3E3E      sbb [rdi+0x3e3e9ba6],edi
00001A7E  56                push rsi
00001A7F  856E56            test [rsi+0x56],ebp
00001A82  93                xchg eax,ebx
00001A83  4456              push rsi
00001A85  A6                cmpsb
00001A86  BDBDBDBDBD        mov ebp,0xbdbdbdbd
00001A8B  BDBDBD567B        mov ebp,0x7b56bdbd
00001A90  4456              push rsi
00001A92  19BFD69B3E3E      sbb [rdi+0x3e3e9bd6],edi
00001A98  0DC53E0DC5        or eax,0xc50d3ec5
00001A9D  7ECF              jng 0x1a6e
00001A9F  AB                stosd
00001AA0  5B                pop rbx
00001AA1  832856            sub dword [rax],byte +0x56
00001AA4  4656              push rsi
00001AA6  0D6D6E56A6        or eax,0xa6566e6d
00001AAB  11E7              adc edi,esp
00001AAD  0F33              rdpmc
00001AAF  2D5585BB56        sub eax,0x56bb8555
00001AB4  23448F64          and eax,[rdi+rcx*4+0x64]
00001AB8  56                push rsi
00001AB9  19BFFE963E3E      sbb [rdi+0x3e3e96fe],edi
00001ABF  56                push rsi
00001AC0  19FE              sbb esi,edi
00001AC2  0E                db 0x0e
00001AC3  56                push rsi
00001AC4  93                xchg eax,ebx
00001AC5  4456              push rsi
00001AC7  A6                cmpsb
00001AC8  16                db 0x16
00001AC9  096F76            or [rdi+0x76],ebp
00001ACC  7356              jnc 0x1b24
00001ACE  26E556            es in eax,0x56
00001AD1  9B6E              wait outsb
00001AD3  56                push rsi
00001AD4  93                xchg eax,ebx
00001AD5  BF56963E3E        mov edi,0x3e3e9656
00001ADA  56                push rsi
00001ADB  19BFFE963E3E      sbb [rdi+0x3e3e96fe],edi
00001AE1  56                push rsi
00001AE2  19FE              sbb esi,edi
00001AE4  2E56              cs push rsi
00001AE6  A1B62E5693BFFE96  mov eax,[qword 0x3e96febf93562eb6]
         -3E
00001AEF  3E56              ds push rsi
00001AF1  19BFFE963E3E      sbb [rdi+0x3e3e96fe],edi
00001AF7  56                push rsi
00001AF8  A17E2E5623BFFE3F  mov eax,[qword 0x3e3ffebf23562e7e]
         -3E
00001B01  3E0DBF7B1D1D      ds or eax,0x1d1d7bbf
00001B07  1D56F5BF1E        sbb eax,0x1ebff556
00001B0C  9B3E3E1D1D1D1D56  ds wait sbb eax,0x561d1d1d
00001B14  F5                cmc
00001B15  BFAE9B3E3E        mov edi,0x3e3e9bae
00001B1A  3E3E3E3E56        ds push rsi
00001B1F  F5                cmc
00001B20  BF469B3E3E        mov edi,0x3e3e9b46
00001B25  3E3E3E3EE8F5BFEE  ds call 0xffffffff9beedb23
         -9B
00001B2E  3E3E0A3E          or bh,[ds:rsi]
00001B32  E8F5BF349B        call 0xffffffff9b34db2c
00001B37  3E3EDD3E          fnstsw [ds:rsi]
00001B3B  E8F5BF329B        call 0xffffffff9b32db35
00001B40  3E3EDD3E          fnstsw [ds:rsi]
00001B44  E8F5BF389B        call 0xffffffff9b38db3e
00001B49  3E3E0A3E          or bh,[ds:rsi]
00001B4D  E8F5BF869B        call 0xffffffff9b86db47
00001B52  3E3E0A3E          or bh,[ds:rsi]
00001B56  E8F5BF4C9B        call 0xffffffff9b4cdb50
00001B5B  3E3EE13E          ds loope 0x1b9d
00001B5F  E8F5BF0A9B        call 0xffffffff9b0adb59
00001B64  3E3E6C            ds insb
00001B67  3EE8F5BFF09B      ds call 0xffffffff9bf0db62
00001B6D  3E3E0A3E          or bh,[ds:rsi]
00001B71  E8F5BF5E9B        call 0xffffffff9b5edb6b
00001B76  3E3EA5            ds movsd
00001B79  3EE8F5BF249B      ds call 0xffffffff9b24db74
00001B7F  3E3ED33E          sar dword [ds:rsi],cl
00001B83  E8F5BF629B        call 0xffffffff9b62db7d
00001B88  3E3E803EE8        cmp byte [ds:rsi],0xe8
00001B8D  F5                cmc
00001B8E  BFE89B3E3E        mov edi,0x3e3e9be8
00001B93  023E              add bh,[rsi]
00001B95  E8F5BF369B        call 0xffffffff9b36db8f
00001B9A  3E3ECD3E          ds int 0x3e
00001B9E  E8F5BFBC9B        call 0xffffffff9bbcdb98
00001BA3  3E3EA5            ds movsd
00001BA6  3EE8F5BFFA9B      ds call 0xffffffff9bfadba1
00001BAC  3E3E91            ds xchg eax,ecx
00001BAF  3EE8F5BFE09B      ds call 0xffffffff9be0dbaa
00001BB5  3E3E0A3E          or bh,[ds:rsi]
00001BB9  E8F5BFCE9B        call 0xffffffff9bcedbb3
00001BBE  3E3E323E          xor bh,[ds:rsi]
00001BC2  E8F5BF949B        call 0xffffffff9b94dbbc
00001BC7  3E                ds
00001BC8  3E                ds
00001BC9  FF                db 0xff
00001BCA  3EE8F5BF129B      ds call 0xffffffff9b12dbc5
00001BD0  3E3E57            ds push rdi
00001BD3  3EE8F5BF189B      ds call 0xffffffff9b18dbce
00001BD9  3E3EEE            ds out dx,al
00001BDC  3EE8F5BFE69B      ds call 0xffffffff9be6dbd7
00001BE2  3E3E0A3E          or bh,[ds:rsi]
00001BE6  E8F5BF2C9B        call 0xffffffff9b2cdbe0
00001BEB  3E3E083E          or [ds:rsi],bh
00001BEF  E8F5BF6A9B        call 0xffffffff9b6adbe9
00001BF4  3E                ds
00001BF5  3E                ds
00001BF6  9A                db 0x9a
00001BF7  3EE8F5BF509B      ds call 0xffffffff9b50dbf2
00001BFD  3E3E5B            ds pop rbx
00001C00  3EE8F5BFBE9B      ds call 0xffffffff9bbedbfb
00001C06  3E3E753E          ds jnz 0x1c48
00001C0A  E8F5BF849B        call 0xffffffff9b84dc04
00001C0F  3E3E203E          and [ds:rsi],bh
00001C13  E8F5BFC29B        call 0xffffffff9bc2dc0d
00001C18  3E3E323E          xor bh,[ds:rsi]
00001C1C  E8F5BFC89B        call 0xffffffff9bc8dc16
00001C21  3E3E863E          xchg bh,[ds:rsi]
00001C25  E8F5BF169B        call 0xffffffff9b16dc1f
00001C2A  3E3E323E          xor bh,[ds:rsi]
00001C2E  E8F5BF9C9B        call 0xffffffff9b9cdc28
00001C33  3E3E3E3E56        ds push rsi
00001C38  17                db 0x17
00001C39  BFEE9B3E3E        mov edi,0x3e3e9bee
00001C3E  56                push rsi
00001C3F  93                xchg eax,ebx
00001C40  BF569B3E3E        mov edi,0x3e3e9b56
00001C45  E8F5BFFE9B        call 0xffffffff9bfedc3f
00001C4A  3E3E6C            ds insb
00001C4D  3EE8F5BFC49B      ds call 0xffffffff9bc4dc48
00001C53  3E3EAA            ds stosb
00001C56  3EF5              ds cmc
00001C58  BF2E9B3E3E        mov edi,0x3e3e9b2e
00001C5D  0E                db 0x0e
00001C5E  3E3E3E56          ds push rsi
00001C62  F5                cmc
00001C63  BFC69B3E3E        mov edi,0x3e3e9bc6
00001C68  3E3E3E3EF5        ds cmc
00001C6D  BF769B3E3E        mov edi,0x3e3e9b76
00001C72  FE                db 0xfe
00001C73  3E3E3E56          ds push rsi
00001C77  17                db 0x17
00001C78  BFFE9B3E3E        mov edi,0x3e3e9bfe
00001C7D  56                push rsi
00001C7E  93                xchg eax,ebx
00001C7F  BF9E9B3E3E        mov edi,0x3e3e9b9e
00001C84  56                push rsi
00001C85  F5                cmc
00001C86  BF0E9B3E3E        mov edi,0x3e3e9b0e
00001C8B  3E3E3E3E56        ds push rsi
00001C90  F5                cmc
00001C91  BF269B3E3E        mov edi,0x3e3e9b26
00001C96  3E3E3E3E56        ds push rsi
00001C9B  EC                in al,dx
00001C9C  A6                cmpsb
00001C9D  22BC2538C5F5B6    and bh,[rbp-0x490a3ac8]
00001CA4  56                push rsi
00001CA5  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001CAB  56                push rsi
00001CAC  9B6E              wait outsb
00001CAE  56                push rsi
00001CAF  93                xchg eax,ebx
00001CB0  BF26963E3E        mov edi,0x3e3e9626
00001CB5  B9745619BF        mov ecx,0xbf195674
00001CBA  2696              es xchg eax,esi
00001CBC  3E3E56            ds push rsi
00001CBF  A17E425693BF2696  mov eax,[qword 0x3e9626bf9356427e]
         -3E
00001CC8  3E56              ds push rsi
00001CCA  19BF26963E3E      sbb [rdi+0x3e3e9626],edi
00001CD0  193E              sbb [rsi],edi
00001CD2  A7                cmpsd
00001CD3  EE                out dx,al
00001CD4  FF                db 0xff
00001CD5  3E                ds
00001CD6  3E                ds
00001CD7  8F                db 0x8f
00001CD8  7056              jo 0x1d30
00001CDA  19BF26963E3E      sbb [rdi+0x3e3e9626],edi
00001CE0  56                push rsi
00001CE1  3F                db 0x3f
00001CE2  16                db 0x16
00001CE3  3E3E3E56          ds push rsi
00001CE7  93                xchg eax,ebx
00001CE8  BF263F3E3E        mov edi,0x3e3e3f26
00001CED  56                push rsi
00001CEE  19BF263F3E3E      sbb [rdi+0x3e3e3f26],edi
00001CF4  193E              sbb [rsi],edi
00001CF6  93                xchg eax,ebx
00001CF7  4456              push rsi
00001CF9  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001CFF  56                push rsi
00001D00  9B4456            wait push rsi
00001D03  A6                cmpsb
00001D04  E622              out 0x22,al
00001D06  BC2538C5F5        mov esp,0xf5c53825
00001D0B  B656              mov dh,0x56
00001D0D  9B6E              wait outsb
00001D0F  56                push rsi
00001D10  93                xchg eax,ebx
00001D11  BF0E3F3E3E        mov edi,0x3e3e3f0e
00001D16  56                push rsi
00001D17  19BF0E3F3E3E      sbb [rdi+0x3e3e3f0e],edi
00001D1D  19FE              sbb esi,edi
00001D1F  4A93              xchg rax,rbx
00001D21  4456              push rsi
00001D23  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001D29  56                push rsi
00001D2A  9B4456            wait push rsi
00001D2D  A6                cmpsb
00001D2E  E622              out 0x22,al
00001D30  BC2538C5F5        mov esp,0xf5c53825
00001D35  B656              mov dh,0x56
00001D37  9B6E              wait outsb
00001D39  56                push rsi
00001D3A  93                xchg eax,ebx
00001D3B  BF763F3E3E        mov edi,0x3e3e3f76
00001D40  56                push rsi
00001D41  19BF0E3F3E3E      sbb [rdi+0x3e3e3f0e],edi
00001D47  19FE              sbb esi,edi
00001D49  9E                sahf
00001D4A  93                xchg eax,ebx
00001D4B  4456              push rsi
00001D4D  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001D53  56                push rsi
00001D54  9B4456            wait push rsi
00001D57  A6                cmpsb
00001D58  E622              out 0x22,al
00001D5A  BC2538C5F5        mov esp,0xf5c53825
00001D5F  B656              mov dh,0x56
00001D61  9B6E              wait outsb
00001D63  56                push rsi
00001D64  93                xchg eax,ebx
00001D65  BF9E3F3E3E        mov edi,0x3e3e3f9e
00001D6A  56                push rsi
00001D6B  19BF0E3F3E3E      sbb [rdi+0x3e3e3f0e],edi
00001D71  19FE              sbb esi,edi
00001D73  A293445619BF5696  mov [qword 0x3e9656bf19564493],al
         -3E
00001D7C  3E56              ds push rsi
00001D7E  9B4456            wait push rsi
00001D81  A6                cmpsb
00001D82  E622              out 0x22,al
00001D84  BC2538C5F5        mov esp,0xf5c53825
00001D89  B656              mov dh,0x56
00001D8B  9B6E              wait outsb
00001D8D  56                push rsi
00001D8E  93                xchg eax,ebx
00001D8F  BFC63F3E3E        mov edi,0x3e3e3fc6
00001D94  F5                cmc
00001D95  BF52963E3E        mov edi,0x3e3e9652
00001D9A  1D1D1D1DA1        sbb eax,0xa11d1d1d
00001D9F  BF52963E3E        mov edi,0x3e3e9652
00001DA4  9B19BF52963E3E    wait sbb [rdi+0x3e3e9652],edi
00001DAB  56                push rsi
00001DAC  17                db 0x17
00001DAD  72BF              jc 0x1d6e
00001DAF  3E3E3E3E56        ds push rsi
00001DB4  19BF9E3F3E3E      sbb [rdi+0x3e3e3f9e],edi
00001DBA  56                push rsi
00001DBB  9B6E              wait outsb
00001DBD  193E              sbb [rsi],edi
00001DBF  93                xchg eax,ebx
00001DC0  4456              push rsi
00001DC2  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001DC8  56                push rsi
00001DC9  9B4456            wait push rsi
00001DCC  A6                cmpsb
00001DCD  E622              out 0x22,al
00001DCF  BC2538C5F5        mov esp,0xf5c53825
00001DD4  B656              mov dh,0x56
00001DD6  9B6E              wait outsb
00001DD8  56                push rsi
00001DD9  93                xchg eax,ebx
00001DDA  BF2E3F3E3E        mov edi,0x3e3e3f2e
00001DDF  F5                cmc
00001DE0  BFDA3F3E3E        mov edi,0x3e3e3fda
00001DE5  3E3E3E3EF5        ds cmc
00001DEA  BF0E963E3E        mov edi,0x3e3e960e
00001DEF  9B3E3E3E56        ds wait push rsi
00001DF4  F5                cmc
00001DF5  BF76963E3E        mov edi,0x3e3e9676
00001DFA  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00001E03  99                cdq
00001E04  3F                db 0x3f
00001E05  3E3E196F0E        sbb [ds:rdi+0xe],ebp
00001E0A  96                xchg eax,esi
00001E0B  3E3EF34493        ds rep xchg eax,ebx
00001E10  6E                outsb
00001E11  B37E              mov bl,0x7e
00001E13  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00001E17  93                xchg eax,ebx
00001E18  BF0E963E3E        mov edi,0x3e3e960e
00001E1D  19BF0E963E3E      sbb [rdi+0x3e3e960e],edi
00001E23  DB                db 0xdb
00001E24  B621              mov dh,0x21
00001E26  AB                stosd
00001E27  BF0E963E3E        mov edi,0x3e3e960e
00001E2C  56                push rsi
00001E2D  19BF76963E3E      sbb [rdi+0x3e3e9676],edi
00001E33  56                push rsi
00001E34  17                db 0x17
00001E35  EE                out dx,al
00001E36  9B56              wait push rsi
00001E38  93                xchg eax,ebx
00001E39  6F                outsd
00001E3A  7696              jna 0x1dd2
00001E3C  3E3E56            ds push rsi
00001E3F  196F2E            sbb [rdi+0x2e],ebp
00001E42  3F                db 0x3f
00001E43  3E3E56            ds push rsi
00001E46  9B6E              wait outsb
00001E48  0DD83E16BF        or eax,0xbf163ed8
00001E4D  99                cdq
00001E4E  3F                db 0x3f
00001E4F  3E3EBE27993F3E    ds mov esi,0x3e3f9927
00001E56  3E                ds
00001E57  3E                ds
00001E58  8F                db 0x8f
00001E59  A856              test al,0x56
00001E5B  19BF76963E3E      sbb [rdi+0x3e3e9676],edi
00001E61  F3BF0E963E3E      rep mov edi,0x3e3e960e
00001E67  19BF0E963E3E      sbb [rdi+0x3e3e960e],edi
00001E6D  CF                iret
00001E6E  9F                lahf
00001E6F  7AB2              jpe 0x1e23
00001E71  1A13              sbb dl,[rbx]
00001E73  BFDA3F3E3E        mov edi,0x3e3e3fda
00001E78  A127DA3F3E3E3E0D  mov eax,[qword 0xbf0d3e3e3e3fda27]
         -BF
00001E81  C3                ret
00001E82  1D1D1D19BF        sbb eax,0xbf191d1d
00001E87  52                push rdx
00001E88  96                xchg eax,esi
00001E89  3E3E56            ds push rsi
00001E8C  17                db 0x17
00001E8D  723E              jc 0x1ecd
00001E8F  56                push rsi
00001E90  19BFC63F3E3E      sbb [rdi+0x3e3e3fc6],edi
00001E96  56                push rsi
00001E97  9B6E              wait outsb
00001E99  0DC53E0DC5        or eax,0xc50d3ec5
00001E9E  7E56              jng 0x1ef6
00001EA0  17                db 0x17
00001EA1  72BF              jc 0x1e62
00001EA3  3E3E3E3E56        ds push rsi
00001EA8  19BF763F3E3E      sbb [rdi+0x3e3e3f76],edi
00001EAE  56                push rsi
00001EAF  9B6E              wait outsb
00001EB1  193E              sbb [rsi],edi
00001EB3  93                xchg eax,ebx
00001EB4  4456              push rsi
00001EB6  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001EBC  56                push rsi
00001EBD  17                db 0x17
00001EBE  DA0456            fiadd dword [rsi+rdx*2]
00001EC1  17                db 0x17
00001EC2  BF969B3E3E        mov edi,0x3e3e9b96
00001EC7  56                push rsi
00001EC8  EC                in al,dx
00001EC9  E622              out 0x22,al
00001ECB  BC2538C5F5        mov esp,0xf5c53825
00001ED0  B656              mov dh,0x56
00001ED2  9B5C              wait pop rsp
00001ED4  56                push rsi
00001ED5  93                xchg eax,ebx
00001ED6  2E56              cs push rsi
00001ED8  17                db 0x17
00001ED9  BF969B3E3E        mov edi,0x3e3e9b96
00001EDE  56                push rsi
00001EDF  192E              sbb [rsi],ebp
00001EE1  56                push rsi
00001EE2  19BF0E3F3E3E      sbb [rdi+0x3e3e3f0e],edi
00001EE8  56                push rsi
00001EE9  23449431          and eax,[rsp+rdx*4+0x31]
00001EED  56                push rsi
00001EEE  17                db 0x17
00001EEF  BF969B3E3E        mov edi,0x3e3e9b96
00001EF4  56                push rsi
00001EF5  192E              sbb [rsi],ebp
00001EF7  56                push rsi
00001EF8  19BF263F3E3E      sbb [rdi+0x3e3e3f26],edi
00001EFE  19FE              sbb esi,edi
00001F00  4293              xchg eax,ebx
00001F02  DB5619            fist dword [rsi+0x19]
00001F05  BF0E3F3E3E        mov edi,0x3e3e3f0e
00001F0A  56                push rsi
00001F0B  9BD6              wait salc
00001F0D  56                push rsi
00001F0E  234405C0          and eax,[rbp+rax-0x40]
00001F12  56                push rsi
00001F13  17                db 0x17
00001F14  BF969B3E3E        mov edi,0x3e3e9b96
00001F19  56                push rsi
00001F1A  F5                cmc
00001F1B  3E3E3E3E3E56      ds push rsi
00001F21  19BF969B3E3E      sbb [rdi+0x3e3e9b96],edi
00001F27  9A                db 0x9a
00001F28  17                db 0x17
00001F29  BFAE9B3E3E        mov edi,0x3e3e9bae
00001F2E  56                push rsi
00001F2F  17                db 0x17
00001F30  6F                outsd
00001F31  2E9B3E3E56        ds wait push rsi
00001F36  17                db 0x17
00001F37  17                db 0x17
00001F38  1E                db 0x1e
00001F39  9B3E3EF5          ds wait cmc
00001F3D  02A2EE3E3E3E      add ah,[rdx+0x3e3e3eee]
00001F43  3E56              ds push rsi
00001F45  F5                cmc
00001F46  02A2563E3E3E      add ah,[rdx+0x3e3e3e56]
00001F4C  3EF5              ds cmc
00001F4E  02A2FEFE3E3E      add ah,[rdx+0x3e3efefe]
00001F54  3EF5              ds cmc
00001F56  02A2269B3E3E      add ah,[rdx+0x3e3e9b26]
00001F5C  3EF5              ds cmc
00001F5E  02A20EB53E3E      add ah,[rdx+0x3e3eb50e]
00001F64  3EF5              ds cmc
00001F66  02A276BE3E3E      add ah,[rdx+0x3e3ebe76]
00001F6C  3E56              ds push rsi
00001F6E  F5                cmc
00001F6F  02A29E3E3E3E      add ah,[rdx+0x3e3e3e9e]
00001F75  3E57              ds push rdi
00001F77  93                xchg eax,ebx
00001F78  DBD3              fcmovnbe st3
00001F7A  93                xchg eax,ebx
00001F7B  6E                outsb
00001F7C  EC                in al,dx
00001F7D  3E3E3EBE1D6E93BF  ds mov esi,0xbf936e1d
00001F85  42                rex.x
00001F86  3F                db 0x3f
00001F87  3E3EA127423F3E3E  mov eax,[ds:qword 0x1ce33e3e3e3f4227]
         -3EE31C
00001F92  A6                cmpsb
00001F93  9B3E3E3E33573A    wait xor edx,[ds:rdi+0x3a]
00001F9A  3E3E56            ds push rsi
00001F9D  EC                in al,dx
00001F9E  A6                cmpsb
00001F9F  22BC2538C5F5B6    and bh,[rbp-0x490a3ac8]
00001FA6  56                push rsi
00001FA7  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00001FAD  56                push rsi
00001FAE  9B6E              wait outsb
00001FB0  56                push rsi
00001FB1  93                xchg eax,ebx
00001FB2  BF9E963E3E        mov edi,0x3e3e969e
00001FB7  B9745619BF        mov ecx,0xbf195674
00001FBC  9E                sahf
00001FBD  96                xchg eax,esi
00001FBE  3E3E56            ds push rsi
00001FC1  A17E425693BF9E96  mov eax,[qword 0x3e969ebf9356427e]
         -3E
00001FCA  3E56              ds push rsi
00001FCC  19BF9E963E3E      sbb [rdi+0x3e3e969e],edi
00001FD2  193E              sbb [rsi],edi
00001FD4  A7                cmpsd
00001FD5  EE                out dx,al
00001FD6  FF                db 0xff
00001FD7  3E                ds
00001FD8  3E                ds
00001FD9  8F                db 0x8f
00001FDA  7056              jo 0x2032
00001FDC  19BF9E963E3E      sbb [rdi+0x3e3e969e],edi
00001FE2  56                push rsi
00001FE3  3F                db 0x3f
00001FE4  16                db 0x16
00001FE5  3E3E3E56          ds push rsi
00001FE9  93                xchg eax,ebx
00001FEA  BF66423E3E        mov edi,0x3e3e4266
00001FEF  56                push rsi
00001FF0  19BF66423E3E      sbb [rdi+0x3e3e4266],edi
00001FF6  193E              sbb [rsi],edi
00001FF8  93                xchg eax,ebx
00001FF9  4456              push rsi
00001FFB  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00002001  56                push rsi
00002002  9B4456            wait push rsi
00002005  A6                cmpsb
00002006  E622              out 0x22,al
00002008  BC2538C5F5        mov esp,0xf5c53825
0000200D  B656              mov dh,0x56
0000200F  9B6E              wait outsb
00002011  56                push rsi
00002012  93                xchg eax,ebx
00002013  BF4E423E3E        mov edi,0x3e3e424e
00002018  56                push rsi
00002019  19BF4E423E3E      sbb [rdi+0x3e3e424e],edi
0000201F  19FE              sbb esi,edi
00002021  4A93              xchg rax,rbx
00002023  4456              push rsi
00002025  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
0000202B  56                push rsi
0000202C  9B4456            wait push rsi
0000202F  A6                cmpsb
00002030  E622              out 0x22,al
00002032  BC2538C5F5        mov esp,0xf5c53825
00002037  B656              mov dh,0x56
00002039  9B6E              wait outsb
0000203B  56                push rsi
0000203C  93                xchg eax,ebx
0000203D  BFB6423E3E        mov edi,0x3e3e42b6
00002042  56                push rsi
00002043  19BF4E423E3E      sbb [rdi+0x3e3e424e],edi
00002049  19FE              sbb esi,edi
0000204B  9E                sahf
0000204C  93                xchg eax,ebx
0000204D  4456              push rsi
0000204F  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00002055  56                push rsi
00002056  9B4456            wait push rsi
00002059  A6                cmpsb
0000205A  E622              out 0x22,al
0000205C  BC2538C5F5        mov esp,0xf5c53825
00002061  B656              mov dh,0x56
00002063  9B6E              wait outsb
00002065  56                push rsi
00002066  93                xchg eax,ebx
00002067  BFDE423E3E        mov edi,0x3e3e42de
0000206C  56                push rsi
0000206D  19BF4E423E3E      sbb [rdi+0x3e3e424e],edi
00002073  19FE              sbb esi,edi
00002075  A293445619BF5696  mov [qword 0x3e9656bf19564493],al
         -3E
0000207E  3E56              ds push rsi
00002080  9B4456            wait push rsi
00002083  A6                cmpsb
00002084  E622              out 0x22,al
00002086  BC2538C5F5        mov esp,0xf5c53825
0000208B  B656              mov dh,0x56
0000208D  9B6E              wait outsb
0000208F  56                push rsi
00002090  93                xchg eax,ebx
00002091  BF06423E3E        mov edi,0x3e3e4206
00002096  F5                cmc
00002097  BF4A963E3E        mov edi,0x3e3e964a
0000209C  1D1D1D1DA1        sbb eax,0xa11d1d1d
000020A1  BF4A963E3E        mov edi,0x3e3e964a
000020A6  9B19BF4A963E3E    wait sbb [rdi+0x3e3e964a],edi
000020AD  56                push rsi
000020AE  17                db 0x17
000020AF  72BF              jc 0x2070
000020B1  3E3E3E3E56        ds push rsi
000020B6  19BFDE423E3E      sbb [rdi+0x3e3e42de],edi
000020BC  56                push rsi
000020BD  9B6E              wait outsb
000020BF  193E              sbb [rsi],edi
000020C1  93                xchg eax,ebx
000020C2  4456              push rsi
000020C4  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
000020CA  56                push rsi
000020CB  9B4456            wait push rsi
000020CE  A6                cmpsb
000020CF  E622              out 0x22,al
000020D1  BC2538C5F5        mov esp,0xf5c53825
000020D6  B656              mov dh,0x56
000020D8  9B6E              wait outsb
000020DA  56                push rsi
000020DB  93                xchg eax,ebx
000020DC  BF6E423E3E        mov edi,0x3e3e426e
000020E1  F5                cmc
000020E2  BF1A423E3E        mov edi,0x3e3e421a
000020E7  3E3E3E3EF5        ds cmc
000020EC  BFC6963E3E        mov edi,0x3e3e96c6
000020F1  9B3E3E3E56        ds wait push rsi
000020F6  F5                cmc
000020F7  BF2E963E3E        mov edi,0x3e3e962e
000020FC  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002105  D9423E            fld dword [rdx+0x3e]
00002108  3E196FC6          sbb [ds:rdi-0x3a],ebp
0000210C  96                xchg eax,esi
0000210D  3E3EF34493        ds rep xchg eax,ebx
00002112  6E                outsb
00002113  B37E              mov bl,0x7e
00002115  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002119  93                xchg eax,ebx
0000211A  BFC6963E3E        mov edi,0x3e3e96c6
0000211F  19BFC6963E3E      sbb [rdi+0x3e3e96c6],edi
00002125  DB                db 0xdb
00002126  B621              mov dh,0x21
00002128  AB                stosd
00002129  BFC6963E3E        mov edi,0x3e3e96c6
0000212E  56                push rsi
0000212F  19BF2E963E3E      sbb [rdi+0x3e3e962e],edi
00002135  56                push rsi
00002136  17                db 0x17
00002137  EE                out dx,al
00002138  9B56              wait push rsi
0000213A  93                xchg eax,ebx
0000213B  6F                outsd
0000213C  2E96              cs xchg eax,esi
0000213E  3E3E56            ds push rsi
00002141  196F6E            sbb [rdi+0x6e],ebp
00002144  42                rex.x
00002145  3E3E56            ds push rsi
00002148  9B6E              wait outsb
0000214A  0DD83E16BF        or eax,0xbf163ed8
0000214F  D9423E            fld dword [rdx+0x3e]
00002152  3EBE27D9423E      ds mov esi,0x3e42d927
00002158  3E                ds
00002159  3E                ds
0000215A  8F                db 0x8f
0000215B  A856              test al,0x56
0000215D  19BF2E963E3E      sbb [rdi+0x3e3e962e],edi
00002163  F3BFC6963E3E      rep mov edi,0x3e3e96c6
00002169  19BFC6963E3E      sbb [rdi+0x3e3e96c6],edi
0000216F  CF                iret
00002170  DB91E97713BF      fist dword [rcx-0x40ec8817]
00002176  1A423E            sbb al,[rdx+0x3e]
00002179  3EA1271A423E3E3E  mov eax,[ds:qword 0xbf0d3e3e3e421a27]
         -0DBF
00002183  C3                ret
00002184  1D1D1D19BF        sbb eax,0xbf191d1d
00002189  4A96              xchg rax,rsi
0000218B  3E3E56            ds push rsi
0000218E  17                db 0x17
0000218F  723E              jc 0x21cf
00002191  56                push rsi
00002192  19BF06423E3E      sbb [rdi+0x3e3e4206],edi
00002198  56                push rsi
00002199  9B6E              wait outsb
0000219B  0DC53E0DC5        or eax,0xc50d3ec5
000021A0  7E56              jng 0x21f8
000021A2  17                db 0x17
000021A3  72BF              jc 0x2164
000021A5  3E3E3E3E56        ds push rsi
000021AA  19BFB6423E3E      sbb [rdi+0x3e3e42b6],edi
000021B0  56                push rsi
000021B1  9B6E              wait outsb
000021B3  193E              sbb [rsi],edi
000021B5  93                xchg eax,ebx
000021B6  4456              push rsi
000021B8  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
000021BE  56                push rsi
000021BF  17                db 0x17
000021C0  DA0456            fiadd dword [rsi+rdx*2]
000021C3  17                db 0x17
000021C4  BF3E9B3E3E        mov edi,0x3e3e9b3e
000021C9  56                push rsi
000021CA  EC                in al,dx
000021CB  E622              out 0x22,al
000021CD  BC2538C5F5        mov esp,0xf5c53825
000021D2  B656              mov dh,0x56
000021D4  9B5C              wait pop rsp
000021D6  56                push rsi
000021D7  93                xchg eax,ebx
000021D8  2E56              cs push rsi
000021DA  17                db 0x17
000021DB  BF3E9B3E3E        mov edi,0x3e3e9b3e
000021E0  56                push rsi
000021E1  192E              sbb [rsi],ebp
000021E3  56                push rsi
000021E4  19BF4E423E3E      sbb [rdi+0x3e3e424e],edi
000021EA  56                push rsi
000021EB  23449431          and eax,[rsp+rdx*4+0x31]
000021EF  56                push rsi
000021F0  17                db 0x17
000021F1  BF3E9B3E3E        mov edi,0x3e3e9b3e
000021F6  56                push rsi
000021F7  192E              sbb [rsi],ebp
000021F9  56                push rsi
000021FA  19BF66423E3E      sbb [rdi+0x3e3e4266],edi
00002200  19FE              sbb esi,edi
00002202  4293              xchg eax,ebx
00002204  DB5619            fist dword [rsi+0x19]
00002207  BF4E423E3E        mov edi,0x3e3e424e
0000220C  56                push rsi
0000220D  9BD6              wait salc
0000220F  56                push rsi
00002210  234405C0          and eax,[rbp+rax-0x40]
00002214  56                push rsi
00002215  17                db 0x17
00002216  BF3E9B3E3E        mov edi,0x3e3e9b3e
0000221B  56                push rsi
0000221C  F5                cmc
0000221D  3E3E3E3E3EF5      ds cmc
00002223  BFAE9B3E3E        mov edi,0x3e3e9bae
00002228  3E3E3E3E56        ds push rsi
0000222D  F5                cmc
0000222E  BF469B3E3E        mov edi,0x3e3e9b46
00002233  3E3E3E3E56        ds push rsi
00002238  F5                cmc
00002239  FF663E            jmp [rsi+0x3e]
0000223C  3E3E3E56          ds push rsi
00002240  19BF3E9B3E3E      sbb [rdi+0x3e3e9b3e],edi
00002246  56                push rsi
00002247  1917              sbb [rdi],edx
00002249  1E                db 0x1e
0000224A  9B3E3E56          ds wait push rsi
0000224E  F5                cmc
0000224F  02A2FE3E3E3E      add ah,[rdx+0x3e3e3efe]
00002255  3E56              ds push rsi
00002257  17                db 0x17
00002258  AF                scasd
00002259  6656              push si
0000225B  93                xchg eax,ebx
0000225C  32A226F502A2      xor ah,[rdx-0x5dfd0ada]
00002262  0E                db 0x0e
00002263  EA                db 0xea
00002264  3E3E3E56          ds push rsi
00002268  93                xchg eax,ebx
00002269  3C56              cmp al,0x56
0000226B  93                xchg eax,ebx
0000226C  32A27656176F      xor ah,[rdx+0x6f175676]
00002272  AE                scasb
00002273  9B3E3E56          ds wait push rsi
00002277  93                xchg eax,ebx
00002278  32A29E5BA33E      xor ah,[rdx+0x3ea35b9e]
0000227E  3E3E3E5B          ds pop rbx
00002282  A6                cmpsb
00002283  3E3E3E3EEC        ds in al,dx
00002288  3E3E3E3E1D6E93BF  ds sbb eax,0x42bf936e
         -42
00002291  3F                db 0x3f
00002292  3E3EA127423F3E3E  mov eax,[ds:qword 0x1ce33e3e3e3f4227]
         -3EE31C
0000229D  A6                cmpsb
0000229E  043E              add al,0x3e
000022A0  3E3E33C4          ds xor eax,esp
000022A4  F33E3E56          ds rep push rsi
000022A8  19BF469B3E3E      sbb [rdi+0x3e3e9b46],edi
000022AE  56                push rsi
000022AF  93                xchg eax,ebx
000022B0  3C56              cmp al,0x56
000022B2  9B6E              wait outsb
000022B4  F5                cmc
000022B5  3E3E3E3E3E56      ds push rsi
000022BB  EC                in al,dx
000022BC  A6                cmpsb
000022BD  22BC2538C5F5B6    and bh,[rbp-0x490a3ac8]
000022C4  56                push rsi
000022C5  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
000022CB  56                push rsi
000022CC  9B6E              wait outsb
000022CE  56                push rsi
000022CF  93                xchg eax,ebx
000022D0  BF96963E3E        mov edi,0x3e3e9696
000022D5  B9745619BF        mov ecx,0xbf195674
000022DA  96                xchg eax,esi
000022DB  96                xchg eax,esi
000022DC  3E3E56            ds push rsi
000022DF  A17E425693BF9696  mov eax,[qword 0x3e9696bf9356427e]
         -3E
000022E8  3E56              ds push rsi
000022EA  19BF96963E3E      sbb [rdi+0x3e3e9696],edi
000022F0  193E              sbb [rsi],edi
000022F2  A7                cmpsd
000022F3  EE                out dx,al
000022F4  FF                db 0xff
000022F5  3E                ds
000022F6  3E                ds
000022F7  8F                db 0x8f
000022F8  7056              jo 0x2350
000022FA  19BF96963E3E      sbb [rdi+0x3e3e9696],edi
00002300  56                push rsi
00002301  3F                db 0x3f
00002302  16                db 0x16
00002303  3E3E3E56          ds push rsi
00002307  93                xchg eax,ebx
00002308  BF7E423E3E        mov edi,0x3e3e427e
0000230D  56                push rsi
0000230E  19BF7E423E3E      sbb [rdi+0x3e3e427e],edi
00002314  193E              sbb [rsi],edi
00002316  93                xchg eax,ebx
00002317  4456              push rsi
00002319  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
0000231F  56                push rsi
00002320  9B4456            wait push rsi
00002323  A6                cmpsb
00002324  E622              out 0x22,al
00002326  BC2538C5F5        mov esp,0xf5c53825
0000232B  B656              mov dh,0x56
0000232D  9B6E              wait outsb
0000232F  56                push rsi
00002330  93                xchg eax,ebx
00002331  BFA6423E3E        mov edi,0x3e3e42a6
00002336  56                push rsi
00002337  19BFA6423E3E      sbb [rdi+0x3e3e42a6],edi
0000233D  19FE              sbb esi,edi
0000233F  4A93              xchg rax,rbx
00002341  4456              push rsi
00002343  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00002349  56                push rsi
0000234A  9B4456            wait push rsi
0000234D  A6                cmpsb
0000234E  E622              out 0x22,al
00002350  BC2538C5F5        mov esp,0xf5c53825
00002355  B656              mov dh,0x56
00002357  9B6E              wait outsb
00002359  56                push rsi
0000235A  93                xchg eax,ebx
0000235B  BF8E423E3E        mov edi,0x3e3e428e
00002360  56                push rsi
00002361  19BFA6423E3E      sbb [rdi+0x3e3e42a6],edi
00002367  19FE              sbb esi,edi
00002369  9E                sahf
0000236A  93                xchg eax,ebx
0000236B  4456              push rsi
0000236D  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
00002373  56                push rsi
00002374  9B4456            wait push rsi
00002377  A6                cmpsb
00002378  E622              out 0x22,al
0000237A  BC2538C5F5        mov esp,0xf5c53825
0000237F  B656              mov dh,0x56
00002381  9B6E              wait outsb
00002383  56                push rsi
00002384  93                xchg eax,ebx
00002385  BFF6423E3E        mov edi,0x3e3e42f6
0000238A  56                push rsi
0000238B  19BFA6423E3E      sbb [rdi+0x3e3e42a6],edi
00002391  19FE              sbb esi,edi
00002393  A293445619BF5696  mov [qword 0x3e9656bf19564493],al
         -3E
0000239C  3E56              ds push rsi
0000239E  9B4456            wait push rsi
000023A1  A6                cmpsb
000023A2  E622              out 0x22,al
000023A4  BC2538C5F5        mov esp,0xf5c53825
000023A9  B656              mov dh,0x56
000023AB  9B6E              wait outsb
000023AD  56                push rsi
000023AE  93                xchg eax,ebx
000023AF  BF1E423E3E        mov edi,0x3e3e421e
000023B4  F5                cmc
000023B5  BF42963E3E        mov edi,0x3e3e9642
000023BA  1D1D1D1DA1        sbb eax,0xa11d1d1d
000023BF  BF42963E3E        mov edi,0x3e3e9642
000023C4  9B19BF42963E3E    wait sbb [rdi+0x3e3e9642],edi
000023CB  56                push rsi
000023CC  17                db 0x17
000023CD  72BF              jc 0x238e
000023CF  3E3E3E3E56        ds push rsi
000023D4  19BFF6423E3E      sbb [rdi+0x3e3e42f6],edi
000023DA  56                push rsi
000023DB  9B6E              wait outsb
000023DD  193E              sbb [rsi],edi
000023DF  93                xchg eax,ebx
000023E0  4456              push rsi
000023E2  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
000023E8  56                push rsi
000023E9  9B4456            wait push rsi
000023EC  A6                cmpsb
000023ED  E622              out 0x22,al
000023EF  BC2538C5F5        mov esp,0xf5c53825
000023F4  B656              mov dh,0x56
000023F6  9B6E              wait outsb
000023F8  56                push rsi
000023F9  93                xchg eax,ebx
000023FA  BF46423E3E        mov edi,0x3e3e4246
000023FF  F5                cmc
00002400  BFF2423E3E        mov edi,0x3e3e42f2
00002405  3E3E3E3EF5        ds cmc
0000240A  BF3E963E3E        mov edi,0x3e3e963e
0000240F  9B3E3E3E56        ds wait push rsi
00002414  F5                cmc
00002415  BF66B53E3E        mov edi,0x3e3eb566
0000241A  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002423  51                push rcx
00002424  42                rex.x
00002425  3E3E196F3E        sbb [ds:rdi+0x3e],ebp
0000242A  96                xchg eax,esi
0000242B  3E3EF34493        ds rep xchg eax,ebx
00002430  6E                outsb
00002431  B37E              mov bl,0x7e
00002433  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002437  93                xchg eax,ebx
00002438  BF3E963E3E        mov edi,0x3e3e963e
0000243D  19BF3E963E3E      sbb [rdi+0x3e3e963e],edi
00002443  DB                db 0xdb
00002444  B621              mov dh,0x21
00002446  AB                stosd
00002447  BF3E963E3E        mov edi,0x3e3e963e
0000244C  56                push rsi
0000244D  19BF66B53E3E      sbb [rdi+0x3e3eb566],edi
00002453  56                push rsi
00002454  17                db 0x17
00002455  EE                out dx,al
00002456  9B56              wait push rsi
00002458  93                xchg eax,ebx
00002459  6F                outsd
0000245A  66B53E            o16 mov ch,0x3e
0000245D  3E56              ds push rsi
0000245F  196F46            sbb [rdi+0x46],ebp
00002462  42                rex.x
00002463  3E3E56            ds push rsi
00002466  9B6E              wait outsb
00002468  0DD83E16BF        or eax,0xbf163ed8
0000246D  51                push rcx
0000246E  42                rex.x
0000246F  3E3EBE2751423E    ds mov esi,0x3e425127
00002476  3E                ds
00002477  3E                ds
00002478  8F                db 0x8f
00002479  A856              test al,0x56
0000247B  19BF66B53E3E      sbb [rdi+0x3e3eb566],edi
00002481  F3BF3E963E3E      rep mov edi,0x3e3e963e
00002487  19BF3E963E3E      sbb [rdi+0x3e3e963e],edi
0000248D  CF                iret
0000248E  3321              xor esp,[rcx]
00002490  B19E              mov cl,0x9e
00002492  13BFF2423E3E      adc edi,[rdi+0x3e3e42f2]
00002498  A127F2423E3E3E0D  mov eax,[qword 0xbf0d3e3e3e42f227]
         -BF
000024A1  C3                ret
000024A2  1D1D1D19BF        sbb eax,0xbf191d1d
000024A7  4296              xchg eax,esi
000024A9  3E3E56            ds push rsi
000024AC  17                db 0x17
000024AD  723E              jc 0x24ed
000024AF  56                push rsi
000024B0  19BF1E423E3E      sbb [rdi+0x3e3e421e],edi
000024B6  56                push rsi
000024B7  9B6E              wait outsb
000024B9  0DC53E0DC5        or eax,0xc50d3ec5
000024BE  7E56              jng 0x2516
000024C0  17                db 0x17
000024C1  72BF              jc 0x2482
000024C3  3E3E3E3E56        ds push rsi
000024C8  19BF8E423E3E      sbb [rdi+0x3e3e428e],edi
000024CE  56                push rsi
000024CF  9B6E              wait outsb
000024D1  193E              sbb [rsi],edi
000024D3  93                xchg eax,ebx
000024D4  4456              push rsi
000024D6  19BF56963E3E      sbb [rdi+0x3e3e9656],edi
000024DC  56                push rsi
000024DD  17                db 0x17
000024DE  DA0456            fiadd dword [rsi+rdx*2]
000024E1  17                db 0x17
000024E2  FF4E56            dec dword [rsi+0x56]
000024E5  EC                in al,dx
000024E6  E622              out 0x22,al
000024E8  BC2538C5F5        mov esp,0xf5c53825
000024ED  B656              mov dh,0x56
000024EF  9B5C              wait pop rsp
000024F1  56                push rsi
000024F2  93                xchg eax,ebx
000024F3  2E56              cs push rsi
000024F5  17                db 0x17
000024F6  FF4E56            dec dword [rsi+0x56]
000024F9  192E              sbb [rsi],ebp
000024FB  56                push rsi
000024FC  19BFA6423E3E      sbb [rdi+0x3e3e42a6],edi
00002502  56                push rsi
00002503  23449477          and eax,[rsp+rdx*4+0x77]
00002507  56                push rsi
00002508  17                db 0x17
00002509  FF4E56            dec dword [rsi+0x56]
0000250C  192E              sbb [rsi],ebp
0000250E  56                push rsi
0000250F  19BF7E423E3E      sbb [rdi+0x3e3e427e],edi
00002515  19FE              sbb esi,edi
00002517  4293              xchg eax,ebx
00002519  DB5619            fist dword [rsi+0x19]
0000251C  BFA6423E3E        mov edi,0x3e3e42a6
00002521  56                push rsi
00002522  9BD6              wait salc
00002524  56                push rsi
00002525  23440599          and eax,[rbp+rax-0x67]
00002529  56                push rsi
0000252A  17                db 0x17
0000252B  FF4E56            dec dword [rsi+0x56]
0000252E  F5                cmc
0000252F  3E3E3E3E3E56      ds push rsi
00002535  19FF              sbb edi,edi
00002537  4E56              push rsi
00002539  196F1E            sbb [rdi+0x1e],ebp
0000253C  9B3E3E56          ds wait push rsi
00002540  93                xchg eax,ebx
00002541  8B1D6E5693B6      mov ebx,[rel 0xffffffffb6937bb5]
00002547  56                push rsi
00002548  93                xchg eax,ebx
00002549  BF16423E3E        mov edi,0x3e3e4216
0000254E  56                push rsi
0000254F  17                db 0x17
00002550  FF                db 0xff
00002551  7A56              jpe 0x25a9
00002553  196F16            sbb [rdi+0x16],ebp
00002556  42                rex.x
00002557  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000255D  88FF              mov bh,bh
0000255F  2D3EF5BFC2        sub eax,0xc2bff53e
00002564  42                rex.x
00002565  3E3E3E3E3E3E56    ds push rsi
0000256C  17                db 0x17
0000256D  FF                db 0xff
0000256E  7A56              jpe 0x25c6
00002570  93                xchg eax,ebx
00002571  BFE6423E3E        mov edi,0x3e3e42e6
00002576  F5                cmc
00002577  BFC2423E3E        mov edi,0x3e3e42c2
0000257C  3E3E3E3EF5        ds cmc
00002581  BF92B53E3E        mov edi,0x3e3eb592
00002586  9B3E3E3E56        ds wait push rsi
0000258B  F5                cmc
0000258C  BFB6B53E3E        mov edi,0x3e3eb5b6
00002591  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000259A  05423E3E19        add eax,0x193e3e42
0000259F  6F                outsd
000025A0  92                xchg eax,edx
000025A1  B53E              mov ch,0x3e
000025A3  3EF34493          ds rep xchg eax,ebx
000025A7  6E                outsb
000025A8  B37E              mov bl,0x7e
000025AA  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000025AE  93                xchg eax,ebx
000025AF  BF92B53E3E        mov edi,0x3e3eb592
000025B4  19BF92B53E3E      sbb [rdi+0x3e3eb592],edi
000025BA  DB                db 0xdb
000025BB  B621              mov dh,0x21
000025BD  AB                stosd
000025BE  BF92B53E3E        mov edi,0x3e3eb592
000025C3  56                push rsi
000025C4  19BFB6B53E3E      sbb [rdi+0x3e3eb5b6],edi
000025CA  56                push rsi
000025CB  17                db 0x17
000025CC  EE                out dx,al
000025CD  9B56              wait push rsi
000025CF  93                xchg eax,ebx
000025D0  6F                outsd
000025D1  B6B5              mov dh,0xb5
000025D3  3E3E56            ds push rsi
000025D6  196FE6            sbb [rdi-0x1a],ebp
000025D9  42                rex.x
000025DA  3E3E56            ds push rsi
000025DD  9B6E              wait outsb
000025DF  0DD83E16BF        or eax,0xbf163ed8
000025E4  05423E3EBE        add eax,0xbe3e3e42
000025E9  27                db 0x27
000025EA  05423E3E3E        add eax,0x3e3e3e42
000025EF  8F                db 0x8f
000025F0  A856              test al,0x56
000025F2  19BFB6B53E3E      sbb [rdi+0x3e3eb5b6],edi
000025F8  F3BF92B53E3E      rep mov edi,0x3e3eb592
000025FE  19BF92B53E3E      sbb [rdi+0x3e3eb592],edi
00002604  CF                iret
00002605  ED                in eax,dx
00002606  D9FE              fsin
00002608  90                nop
00002609  93                xchg eax,ebx
0000260A  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002611  136E93            adc ebp,[rsi-0x6d]
00002614  BFC2423E3E        mov edi,0x3e3e42c2
00002619  56                push rsi
0000261A  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002623  C2423E            ret 0x3e42
00002626  3E3E121CA6        adc bl,[ds:rsi]
0000262B  213E              and [rsi],edi
0000262D  3E3E334F1F        xor ecx,[ds:rdi+0x1f]
00002632  3E3E56            ds push rsi
00002635  17                db 0x17
00002636  FF                db 0xff
00002637  7A56              jpe 0x268f
00002639  196F16            sbb [rdi+0x16],ebp
0000263C  42                rex.x
0000263D  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002643  88FF              mov bh,bh
00002645  2D3EF5BFC2        sub eax,0xc2bff53e
0000264A  42                rex.x
0000264B  3E3E3E3E3E3E56    ds push rsi
00002652  17                db 0x17
00002653  FF                db 0xff
00002654  7A56              jpe 0x26ac
00002656  93                xchg eax,ebx
00002657  BF36423E3E        mov edi,0x3e3e4236
0000265C  F5                cmc
0000265D  BFC2423E3E        mov edi,0x3e3e42c2
00002662  3E3E3E3EF5        ds cmc
00002667  BFE2B53E3E        mov edi,0x3e3eb5e2
0000266C  9B3E3E3E56        ds wait push rsi
00002671  F5                cmc
00002672  BF06B53E3E        mov edi,0x3e3eb506
00002677  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002680  55                push rbp
00002681  42                rex.x
00002682  3E3E196FE2        sbb [ds:rdi-0x1e],ebp
00002687  B53E              mov ch,0x3e
00002689  3EF34493          ds rep xchg eax,ebx
0000268D  6E                outsb
0000268E  B37E              mov bl,0x7e
00002690  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002694  93                xchg eax,ebx
00002695  BFE2B53E3E        mov edi,0x3e3eb5e2
0000269A  19BFE2B53E3E      sbb [rdi+0x3e3eb5e2],edi
000026A0  DB                db 0xdb
000026A1  B621              mov dh,0x21
000026A3  AB                stosd
000026A4  BFE2B53E3E        mov edi,0x3e3eb5e2
000026A9  56                push rsi
000026AA  19BF06B53E3E      sbb [rdi+0x3e3eb506],edi
000026B0  56                push rsi
000026B1  17                db 0x17
000026B2  EE                out dx,al
000026B3  9B56              wait push rsi
000026B5  93                xchg eax,ebx
000026B6  6F                outsd
000026B7  06                db 0x06
000026B8  B53E              mov ch,0x3e
000026BA  3E56              ds push rsi
000026BC  196F36            sbb [rdi+0x36],ebp
000026BF  42                rex.x
000026C0  3E3E56            ds push rsi
000026C3  9B6E              wait outsb
000026C5  0DD83E16BF        or eax,0xbf163ed8
000026CA  55                push rbp
000026CB  42                rex.x
000026CC  3E3EBE2755423E    ds mov esi,0x3e425527
000026D3  3E                ds
000026D4  3E                ds
000026D5  8F                db 0x8f
000026D6  A856              test al,0x56
000026D8  19BF06B53E3E      sbb [rdi+0x3e3eb506],edi
000026DE  F3BFE2B53E3E      rep mov edi,0x3e3eb5e2
000026E4  19BFE2B53E3E      sbb [rdi+0x3e3eb5e2],edi
000026EA  CF                iret
000026EB  E8D47EDA93        call 0xffffffff93daa5c4
000026F0  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000026F7  136E93            adc ebp,[rsi-0x6d]
000026FA  BFC2423E3E        mov edi,0x3e3e42c2
000026FF  56                push rsi
00002700  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002709  C2423E            ret 0x3e42
0000270C  3E3E121CA6        adc bl,[ds:rsi]
00002711  213E              and [rsi],edi
00002713  3E3E334DA2        xor ecx,[ds:rbp-0x5e]
00002718  3E3E56            ds push rsi
0000271B  17                db 0x17
0000271C  FF                db 0xff
0000271D  7A56              jpe 0x2775
0000271F  196F16            sbb [rdi+0x16],ebp
00002722  42                rex.x
00002723  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002729  88FF              mov bh,bh
0000272B  2D3EF5BFC2        sub eax,0xc2bff53e
00002730  42                rex.x
00002731  3E3E3E3E3E3E56    ds push rsi
00002738  17                db 0x17
00002739  FF                db 0xff
0000273A  7A56              jpe 0x2792
0000273C  93                xchg eax,ebx
0000273D  BF86423E3E        mov edi,0x3e3e4286
00002742  F5                cmc
00002743  BFC2423E3E        mov edi,0x3e3e42c2
00002748  3E3E3E3EF5        ds cmc
0000274D  BFB2B53E3E        mov edi,0x3e3eb5b2
00002752  9B3E3E3E56        ds wait push rsi
00002757  F5                cmc
00002758  BFD6B53E3E        mov edi,0x3e3eb5d6
0000275D  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002766  A5                movsd
00002767  42                rex.x
00002768  3E3E196FB2        sbb [ds:rdi-0x4e],ebp
0000276D  B53E              mov ch,0x3e
0000276F  3EF34493          ds rep xchg eax,ebx
00002773  6E                outsb
00002774  B37E              mov bl,0x7e
00002776  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000277A  93                xchg eax,ebx
0000277B  BFB2B53E3E        mov edi,0x3e3eb5b2
00002780  19BFB2B53E3E      sbb [rdi+0x3e3eb5b2],edi
00002786  DB                db 0xdb
00002787  B621              mov dh,0x21
00002789  AB                stosd
0000278A  BFB2B53E3E        mov edi,0x3e3eb5b2
0000278F  56                push rsi
00002790  19BFD6B53E3E      sbb [rdi+0x3e3eb5d6],edi
00002796  56                push rsi
00002797  17                db 0x17
00002798  EE                out dx,al
00002799  9B56              wait push rsi
0000279B  93                xchg eax,ebx
0000279C  6F                outsd
0000279D  D6                salc
0000279E  B53E              mov ch,0x3e
000027A0  3E56              ds push rsi
000027A2  196F86            sbb [rdi-0x7a],ebp
000027A5  42                rex.x
000027A6  3E3E56            ds push rsi
000027A9  9B6E              wait outsb
000027AB  0DD83E16BF        or eax,0xbf163ed8
000027B0  A5                movsd
000027B1  42                rex.x
000027B2  3E3EBE27A5423E    ds mov esi,0x3e42a527
000027B9  3E                ds
000027BA  3E                ds
000027BB  8F                db 0x8f
000027BC  A856              test al,0x56
000027BE  19BFD6B53E3E      sbb [rdi+0x3e3eb5d6],edi
000027C4  F3BFB2B53E3E      rep mov edi,0x3e3eb5b2
000027CA  19BFB2B53E3E      sbb [rdi+0x3e3eb5b2],edi
000027D0  CF                iret
000027D1  46396A3C          cmp [rdx+0x3c],r13d
000027D5  93                xchg eax,ebx
000027D6  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000027DD  136E93            adc ebp,[rsi-0x6d]
000027E0  BFC2423E3E        mov edi,0x3e3e42c2
000027E5  56                push rsi
000027E6  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000027EF  C2423E            ret 0x3e42
000027F2  3E3E121CA6        adc bl,[ds:rsi]
000027F7  213E              and [rsi],edi
000027F9  3E3E3333          xor esi,[ds:rbx]
000027FD  013E              add [rsi],edi
000027FF  3E56              ds push rsi
00002801  17                db 0x17
00002802  FF                db 0xff
00002803  7A56              jpe 0x285b
00002805  196F16            sbb [rdi+0x16],ebp
00002808  42                rex.x
00002809  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000280F  88FF              mov bh,bh
00002811  2D3EF5BFC2        sub eax,0xc2bff53e
00002816  42                rex.x
00002817  3E3E3E3E3E3E56    ds push rsi
0000281E  17                db 0x17
0000281F  FF                db 0xff
00002820  7A56              jpe 0x2878
00002822  93                xchg eax,ebx
00002823  BF56423E3E        mov edi,0x3e3e4256
00002828  F5                cmc
00002829  BFC2423E3E        mov edi,0x3e3e42c2
0000282E  3E3E3E3EF5        ds cmc
00002833  BF82B53E3E        mov edi,0x3e3eb582
00002838  9B3E3E3E56        ds wait push rsi
0000283D  F5                cmc
0000283E  BFA6B53E3E        mov edi,0x3e3eb5a6
00002843  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000284C  7542              jnz 0x2890
0000284E  3E3E196F82        sbb [ds:rdi-0x7e],ebp
00002853  B53E              mov ch,0x3e
00002855  3EF34493          ds rep xchg eax,ebx
00002859  6E                outsb
0000285A  B37E              mov bl,0x7e
0000285C  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002860  93                xchg eax,ebx
00002861  BF82B53E3E        mov edi,0x3e3eb582
00002866  19BF82B53E3E      sbb [rdi+0x3e3eb582],edi
0000286C  DB                db 0xdb
0000286D  B621              mov dh,0x21
0000286F  AB                stosd
00002870  BF82B53E3E        mov edi,0x3e3eb582
00002875  56                push rsi
00002876  19BFA6B53E3E      sbb [rdi+0x3e3eb5a6],edi
0000287C  56                push rsi
0000287D  17                db 0x17
0000287E  EE                out dx,al
0000287F  9B56              wait push rsi
00002881  93                xchg eax,ebx
00002882  6F                outsd
00002883  A6                cmpsb
00002884  B53E              mov ch,0x3e
00002886  3E56              ds push rsi
00002888  196F56            sbb [rdi+0x56],ebp
0000288B  42                rex.x
0000288C  3E3E56            ds push rsi
0000288F  9B6E              wait outsb
00002891  0DD83E16BF        or eax,0xbf163ed8
00002896  7542              jnz 0x28da
00002898  3E3EBE2775423E    ds mov esi,0x3e427527
0000289F  3E                ds
000028A0  3E                ds
000028A1  8F                db 0x8f
000028A2  A856              test al,0x56
000028A4  19BFA6B53E3E      sbb [rdi+0x3e3eb5a6],edi
000028AA  F3BF82B53E3E      rep mov edi,0x3e3eb582
000028B0  19BF82B53E3E      sbb [rdi+0x3e3eb582],edi
000028B6  CF                iret
000028B7  2E91              cs xchg eax,ecx
000028B9  292A              sub [rdx],ebp
000028BB  93                xchg eax,ebx
000028BC  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000028C3  136E93            adc ebp,[rsi-0x6d]
000028C6  BFC2423E3E        mov edi,0x3e3e42c2
000028CB  56                push rsi
000028CC  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000028D5  C2423E            ret 0x3e42
000028D8  3E3E121CA6        adc bl,[ds:rsi]
000028DD  213E              and [rsi],edi
000028DF  3E3E3321          xor esp,[ds:rcx]
000028E3  013E              add [rsi],edi
000028E5  3E56              ds push rsi
000028E7  17                db 0x17
000028E8  FF                db 0xff
000028E9  7A56              jpe 0x2941
000028EB  196F16            sbb [rdi+0x16],ebp
000028EE  42                rex.x
000028EF  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000028F5  88FF              mov bh,bh
000028F7  2D3EF5BFC2        sub eax,0xc2bff53e
000028FC  42                rex.x
000028FD  3E3E3E3E3E3E56    ds push rsi
00002904  17                db 0x17
00002905  FF                db 0xff
00002906  7A56              jpe 0x295e
00002908  93                xchg eax,ebx
00002909  BF26423E3E        mov edi,0x3e3e4226
0000290E  F5                cmc
0000290F  BFC2423E3E        mov edi,0x3e3e42c2
00002914  3E3E3E3EF5        ds cmc
00002919  BFD2B53E3E        mov edi,0x3e3eb5d2
0000291E  9B3E3E3E56        ds wait push rsi
00002923  F5                cmc
00002924  BFF6B53E3E        mov edi,0x3e3eb5f6
00002929  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002932  45                rex.rb
00002933  42                rex.x
00002934  3E3E196FD2        sbb [ds:rdi-0x2e],ebp
00002939  B53E              mov ch,0x3e
0000293B  3EF34493          ds rep xchg eax,ebx
0000293F  6E                outsb
00002940  B37E              mov bl,0x7e
00002942  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002946  93                xchg eax,ebx
00002947  BFD2B53E3E        mov edi,0x3e3eb5d2
0000294C  19BFD2B53E3E      sbb [rdi+0x3e3eb5d2],edi
00002952  DB                db 0xdb
00002953  B621              mov dh,0x21
00002955  AB                stosd
00002956  BFD2B53E3E        mov edi,0x3e3eb5d2
0000295B  56                push rsi
0000295C  19BFF6B53E3E      sbb [rdi+0x3e3eb5f6],edi
00002962  56                push rsi
00002963  17                db 0x17
00002964  EE                out dx,al
00002965  9B56              wait push rsi
00002967  93                xchg eax,ebx
00002968  6F                outsd
00002969  F6B53E3E5619      div byte [rbp+0x19563e3e]
0000296F  6F                outsd
00002970  26                es
00002971  42                rex.x
00002972  3E3E56            ds push rsi
00002975  9B6E              wait outsb
00002977  0DD83E16BF        or eax,0xbf163ed8
0000297C  45                rex.rb
0000297D  42                rex.x
0000297E  3E3EBE2745423E    ds mov esi,0x3e424527
00002985  3E                ds
00002986  3E                ds
00002987  8F                db 0x8f
00002988  A856              test al,0x56
0000298A  19BFF6B53E3E      sbb [rdi+0x3e3eb5f6],edi
00002990  F3BFD2B53E3E      rep mov edi,0x3e3eb5d2
00002996  19BFD2B53E3E      sbb [rdi+0x3e3eb5d2],edi
0000299C  CF                iret
0000299D  9D                popf
0000299E  0C3C              or al,0x3c
000029A0  33934419BFC2      xor edx,[rbx-0x3d40e6bc]
000029A6  42                rex.x
000029A7  3E3E136E93        adc ebp,[ds:rsi-0x6d]
000029AC  BFC2423E3E        mov edi,0x3e3e42c2
000029B1  56                push rsi
000029B2  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000029BB  C2423E            ret 0x3e42
000029BE  3E3E121CA6        adc bl,[ds:rsi]
000029C3  213E              and [rsi],edi
000029C5  3E3E334764        xor eax,[ds:rdi+0x64]
000029CA  3E3E56            ds push rsi
000029CD  17                db 0x17
000029CE  FF                db 0xff
000029CF  7A56              jpe 0x2a27
000029D1  196F16            sbb [rdi+0x16],ebp
000029D4  42                rex.x
000029D5  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000029DB  88FF              mov bh,bh
000029DD  2D3EF5BFC2        sub eax,0xc2bff53e
000029E2  42                rex.x
000029E3  3E3E3E3E3E3E56    ds push rsi
000029EA  17                db 0x17
000029EB  FF                db 0xff
000029EC  7A56              jpe 0x2a44
000029EE  93                xchg eax,ebx
000029EF  BF76423E3E        mov edi,0x3e3e4276
000029F4  F5                cmc
000029F5  BFC2423E3E        mov edi,0x3e3e42c2
000029FA  3E3E3E3EF5        ds cmc
000029FF  BF22B53E3E        mov edi,0x3e3eb522
00002A04  9B3E3E3E56        ds wait push rsi
00002A09  F5                cmc
00002A0A  BF46B53E3E        mov edi,0x3e3eb546
00002A0F  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002A18  95                xchg eax,ebp
00002A19  42                rex.x
00002A1A  3E3E196F22        sbb [ds:rdi+0x22],ebp
00002A1F  B53E              mov ch,0x3e
00002A21  3EF34493          ds rep xchg eax,ebx
00002A25  6E                outsb
00002A26  B37E              mov bl,0x7e
00002A28  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002A2C  93                xchg eax,ebx
00002A2D  BF22B53E3E        mov edi,0x3e3eb522
00002A32  19BF22B53E3E      sbb [rdi+0x3e3eb522],edi
00002A38  DB                db 0xdb
00002A39  B621              mov dh,0x21
00002A3B  AB                stosd
00002A3C  BF22B53E3E        mov edi,0x3e3eb522
00002A41  56                push rsi
00002A42  19BF46B53E3E      sbb [rdi+0x3e3eb546],edi
00002A48  56                push rsi
00002A49  17                db 0x17
00002A4A  EE                out dx,al
00002A4B  9B56              wait push rsi
00002A4D  93                xchg eax,ebx
00002A4E  6F                outsd
00002A4F  46B53E            mov bpl,0x3e
00002A52  3E56              ds push rsi
00002A54  196F76            sbb [rdi+0x76],ebp
00002A57  42                rex.x
00002A58  3E3E56            ds push rsi
00002A5B  9B6E              wait outsb
00002A5D  0DD83E16BF        or eax,0xbf163ed8
00002A62  95                xchg eax,ebp
00002A63  42                rex.x
00002A64  3E3EBE2795423E    ds mov esi,0x3e429527
00002A6B  3E                ds
00002A6C  3E                ds
00002A6D  8F                db 0x8f
00002A6E  A856              test al,0x56
00002A70  19BF46B53E3E      sbb [rdi+0x3e3eb546],edi
00002A76  F3BF22B53E3E      rep mov edi,0x3e3eb522
00002A7C  19BF22B53E3E      sbb [rdi+0x3e3eb522],edi
00002A82  CF                iret
00002A83  93                xchg eax,ebx
00002A84  49                rex.wb
00002A85  DD                db 0xdd
00002A86  F393              rep xchg eax,ebx
00002A88  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002A8F  136E93            adc ebp,[rsi-0x6d]
00002A92  BFC2423E3E        mov edi,0x3e3e42c2
00002A97  56                push rsi
00002A98  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002AA1  C2423E            ret 0x3e42
00002AA4  3E3E121CA6        adc bl,[ds:rsi]
00002AA9  213E              and [rsi],edi
00002AAB  3E3E33457B        xor eax,[ds:rbp+0x7b]
00002AB0  3E3E56            ds push rsi
00002AB3  17                db 0x17
00002AB4  FF                db 0xff
00002AB5  7A56              jpe 0x2b0d
00002AB7  196F16            sbb [rdi+0x16],ebp
00002ABA  42                rex.x
00002ABB  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002AC1  88FF              mov bh,bh
00002AC3  2D3EF5BFC2        sub eax,0xc2bff53e
00002AC8  42                rex.x
00002AC9  3E3E3E3E3E3E56    ds push rsi
00002AD0  17                db 0x17
00002AD1  FF                db 0xff
00002AD2  7A56              jpe 0x2b2a
00002AD4  93                xchg eax,ebx
00002AD5  BFC6423E3E        mov edi,0x3e3e42c6
00002ADA  F5                cmc
00002ADB  BFC2423E3E        mov edi,0x3e3e42c2
00002AE0  3E3E3E3EF5        ds cmc
00002AE5  BFF2B53E3E        mov edi,0x3e3eb5f2
00002AEA  9B3E3E3E56        ds wait push rsi
00002AEF  F5                cmc
00002AF0  BF16B53E3E        mov edi,0x3e3eb516
00002AF5  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002AFE  E542              in eax,0x42
00002B00  3E3E196FF2        sbb [ds:rdi-0xe],ebp
00002B05  B53E              mov ch,0x3e
00002B07  3EF34493          ds rep xchg eax,ebx
00002B0B  6E                outsb
00002B0C  B37E              mov bl,0x7e
00002B0E  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002B12  93                xchg eax,ebx
00002B13  BFF2B53E3E        mov edi,0x3e3eb5f2
00002B18  19BFF2B53E3E      sbb [rdi+0x3e3eb5f2],edi
00002B1E  DB                db 0xdb
00002B1F  B621              mov dh,0x21
00002B21  AB                stosd
00002B22  BFF2B53E3E        mov edi,0x3e3eb5f2
00002B27  56                push rsi
00002B28  19BF16B53E3E      sbb [rdi+0x3e3eb516],edi
00002B2E  56                push rsi
00002B2F  17                db 0x17
00002B30  EE                out dx,al
00002B31  9B56              wait push rsi
00002B33  93                xchg eax,ebx
00002B34  6F                outsd
00002B35  16                db 0x16
00002B36  B53E              mov ch,0x3e
00002B38  3E56              ds push rsi
00002B3A  196FC6            sbb [rdi-0x3a],ebp
00002B3D  42                rex.x
00002B3E  3E3E56            ds push rsi
00002B41  9B6E              wait outsb
00002B43  0DD83E16BF        or eax,0xbf163ed8
00002B48  E542              in eax,0x42
00002B4A  3E3EBE27E5423E    ds mov esi,0x3e42e527
00002B51  3E                ds
00002B52  3E                ds
00002B53  8F                db 0x8f
00002B54  A856              test al,0x56
00002B56  19BF16B53E3E      sbb [rdi+0x3e3eb516],edi
00002B5C  F3BFF2B53E3E      rep mov edi,0x3e3eb5f2
00002B62  19BFF2B53E3E      sbb [rdi+0x3e3eb5f2],edi
00002B68  CF                iret
00002B69  F5                cmc
00002B6A  E784              out 0x84,eax
00002B6C  90                nop
00002B6D  93                xchg eax,ebx
00002B6E  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002B75  136E93            adc ebp,[rsi-0x6d]
00002B78  BFC2423E3E        mov edi,0x3e3e42c2
00002B7D  56                push rsi
00002B7E  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002B87  C2423E            ret 0x3e42
00002B8A  3E3E121CA6        adc bl,[ds:rsi]
00002B8F  213E              and [rsi],edi
00002B91  3E3E330B          xor ecx,[ds:rbx]
00002B95  9E                sahf
00002B96  3E3E56            ds push rsi
00002B99  17                db 0x17
00002B9A  FF                db 0xff
00002B9B  7A56              jpe 0x2bf3
00002B9D  196F16            sbb [rdi+0x16],ebp
00002BA0  42                rex.x
00002BA1  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002BA7  88FF              mov bh,bh
00002BA9  2D3EF5BFC2        sub eax,0xc2bff53e
00002BAE  42                rex.x
00002BAF  3E3E3E3E3E3E56    ds push rsi
00002BB6  17                db 0x17
00002BB7  FF                db 0xff
00002BB8  7A56              jpe 0x2c10
00002BBA  93                xchg eax,ebx
00002BBB  BF96423E3E        mov edi,0x3e3e4296
00002BC0  F5                cmc
00002BC1  BFC2423E3E        mov edi,0x3e3e42c2
00002BC6  3E3E3E3EF5        ds cmc
00002BCB  BFC2B53E3E        mov edi,0x3e3eb5c2
00002BD0  9B3E3E3E56        ds wait push rsi
00002BD5  F5                cmc
00002BD6  BFE6B53E3E        mov edi,0x3e3eb5e6
00002BDB  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002BE4  B542              mov ch,0x42
00002BE6  3E3E196FC2        sbb [ds:rdi-0x3e],ebp
00002BEB  B53E              mov ch,0x3e
00002BED  3EF34493          ds rep xchg eax,ebx
00002BF1  6E                outsb
00002BF2  B37E              mov bl,0x7e
00002BF4  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002BF8  93                xchg eax,ebx
00002BF9  BFC2B53E3E        mov edi,0x3e3eb5c2
00002BFE  19BFC2B53E3E      sbb [rdi+0x3e3eb5c2],edi
00002C04  DB                db 0xdb
00002C05  B621              mov dh,0x21
00002C07  AB                stosd
00002C08  BFC2B53E3E        mov edi,0x3e3eb5c2
00002C0D  56                push rsi
00002C0E  19BFE6B53E3E      sbb [rdi+0x3e3eb5e6],edi
00002C14  56                push rsi
00002C15  17                db 0x17
00002C16  EE                out dx,al
00002C17  9B56              wait push rsi
00002C19  93                xchg eax,ebx
00002C1A  6F                outsd
00002C1B  E6B5              out 0xb5,al
00002C1D  3E3E56            ds push rsi
00002C20  196F96            sbb [rdi-0x6a],ebp
00002C23  42                rex.x
00002C24  3E3E56            ds push rsi
00002C27  9B6E              wait outsb
00002C29  0DD83E16BF        or eax,0xbf163ed8
00002C2E  B542              mov ch,0x42
00002C30  3E3EBE27B5423E    ds mov esi,0x3e42b527
00002C37  3E                ds
00002C38  3E                ds
00002C39  8F                db 0x8f
00002C3A  A856              test al,0x56
00002C3C  19BFE6B53E3E      sbb [rdi+0x3e3eb5e6],edi
00002C42  F3BFC2B53E3E      rep mov edi,0x3e3eb5c2
00002C48  19BFC2B53E3E      sbb [rdi+0x3e3eb5c2],edi
00002C4E  CF                iret
00002C4F  16                db 0x16
00002C50  19D6              sbb esi,edx
00002C52  AA                stosb
00002C53  93                xchg eax,ebx
00002C54  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002C5B  136E93            adc ebp,[rsi-0x6d]
00002C5E  BFC2423E3E        mov edi,0x3e3e42c2
00002C63  56                push rsi
00002C64  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002C6D  C2423E            ret 0x3e42
00002C70  3E3E121CA6        adc bl,[ds:rsi]
00002C75  213E              and [rsi],edi
00002C77  3E3E3339          xor edi,[ds:rcx]
00002C7B  7D3E              jnl 0x2cbb
00002C7D  3E56              ds push rsi
00002C7F  17                db 0x17
00002C80  FF                db 0xff
00002C81  7A56              jpe 0x2cd9
00002C83  196F16            sbb [rdi+0x16],ebp
00002C86  42                rex.x
00002C87  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002C8D  88FF              mov bh,bh
00002C8F  2D3EF5BFC2        sub eax,0xc2bff53e
00002C94  42                rex.x
00002C95  3E3E3E3E3E3E56    ds push rsi
00002C9C  17                db 0x17
00002C9D  FF                db 0xff
00002C9E  7A56              jpe 0x2cf6
00002CA0  93                xchg eax,ebx
00002CA1  BF66213E3E        mov edi,0x3e3e2166
00002CA6  F5                cmc
00002CA7  BFC2423E3E        mov edi,0x3e3e42c2
00002CAC  3E3E3E3EF5        ds cmc
00002CB1  BF12B53E3E        mov edi,0x3e3eb512
00002CB6  9B3E3E3E56        ds wait push rsi
00002CBB  F5                cmc
00002CBC  BF36B53E3E        mov edi,0x3e3eb536
00002CC1  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002CCA  8521              test [rcx],esp
00002CCC  3E3E196F12        sbb [ds:rdi+0x12],ebp
00002CD1  B53E              mov ch,0x3e
00002CD3  3EF34493          ds rep xchg eax,ebx
00002CD7  6E                outsb
00002CD8  B37E              mov bl,0x7e
00002CDA  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002CDE  93                xchg eax,ebx
00002CDF  BF12B53E3E        mov edi,0x3e3eb512
00002CE4  19BF12B53E3E      sbb [rdi+0x3e3eb512],edi
00002CEA  DB                db 0xdb
00002CEB  B621              mov dh,0x21
00002CED  AB                stosd
00002CEE  BF12B53E3E        mov edi,0x3e3eb512
00002CF3  56                push rsi
00002CF4  19BF36B53E3E      sbb [rdi+0x3e3eb536],edi
00002CFA  56                push rsi
00002CFB  17                db 0x17
00002CFC  EE                out dx,al
00002CFD  9B56              wait push rsi
00002CFF  93                xchg eax,ebx
00002D00  6F                outsd
00002D01  36B53E            ss mov ch,0x3e
00002D04  3E56              ds push rsi
00002D06  196F66            sbb [rdi+0x66],ebp
00002D09  213E              and [rsi],edi
00002D0B  3E56              ds push rsi
00002D0D  9B6E              wait outsb
00002D0F  0DD83E16BF        or eax,0xbf163ed8
00002D14  8521              test [rcx],esp
00002D16  3E3EBE2785213E    ds mov esi,0x3e218527
00002D1D  3E                ds
00002D1E  3E                ds
00002D1F  8F                db 0x8f
00002D20  A856              test al,0x56
00002D22  19BF36B53E3E      sbb [rdi+0x3e3eb536],edi
00002D28  F3BF12B53E3E      rep mov edi,0x3e3eb512
00002D2E  19BF12B53E3E      sbb [rdi+0x3e3eb512],edi
00002D34  CF                iret
00002D35  55                push rbp
00002D36  1C3D              sbb al,0x3d
00002D38  50                push rax
00002D39  93                xchg eax,ebx
00002D3A  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002D41  136E93            adc ebp,[rsi-0x6d]
00002D44  BFC2423E3E        mov edi,0x3e3e42c2
00002D49  56                push rsi
00002D4A  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002D53  C2423E            ret 0x3e42
00002D56  3E3E121CA6        adc bl,[ds:rsi]
00002D5B  213E              and [rsi],edi
00002D5D  3E3E33BF303E3E56  xor edi,[ds:rdi+0x563e3e30]
00002D65  17                db 0x17
00002D66  FF                db 0xff
00002D67  7A56              jpe 0x2dbf
00002D69  196F16            sbb [rdi+0x16],ebp
00002D6C  42                rex.x
00002D6D  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002D73  88FF              mov bh,bh
00002D75  2D3EF5BFC2        sub eax,0xc2bff53e
00002D7A  42                rex.x
00002D7B  3E3E3E3E3E3E56    ds push rsi
00002D82  17                db 0x17
00002D83  FF                db 0xff
00002D84  7A56              jpe 0x2ddc
00002D86  93                xchg eax,ebx
00002D87  BFB6213E3E        mov edi,0x3e3e21b6
00002D8C  F5                cmc
00002D8D  BFC2423E3E        mov edi,0x3e3e42c2
00002D92  3E3E3E3EF5        ds cmc
00002D97  BF62B53E3E        mov edi,0x3e3eb562
00002D9C  9B3E3E3E56        ds wait push rsi
00002DA1  F5                cmc
00002DA2  BF86B53E3E        mov edi,0x3e3eb586
00002DA7  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002DB0  D5                db 0xd5
00002DB1  213E              and [rsi],edi
00002DB3  3E196F62          sbb [ds:rdi+0x62],ebp
00002DB7  B53E              mov ch,0x3e
00002DB9  3EF34493          ds rep xchg eax,ebx
00002DBD  6E                outsb
00002DBE  B37E              mov bl,0x7e
00002DC0  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002DC4  93                xchg eax,ebx
00002DC5  BF62B53E3E        mov edi,0x3e3eb562
00002DCA  19BF62B53E3E      sbb [rdi+0x3e3eb562],edi
00002DD0  DB                db 0xdb
00002DD1  B621              mov dh,0x21
00002DD3  AB                stosd
00002DD4  BF62B53E3E        mov edi,0x3e3eb562
00002DD9  56                push rsi
00002DDA  19BF86B53E3E      sbb [rdi+0x3e3eb586],edi
00002DE0  56                push rsi
00002DE1  17                db 0x17
00002DE2  EE                out dx,al
00002DE3  9B56              wait push rsi
00002DE5  93                xchg eax,ebx
00002DE6  6F                outsd
00002DE7  86B53E3E5619      xchg dh,[rbp+0x19563e3e]
00002DED  6F                outsd
00002DEE  B621              mov dh,0x21
00002DF0  3E3E56            ds push rsi
00002DF3  9B6E              wait outsb
00002DF5  0DD83E16BF        or eax,0xbf163ed8
00002DFA  D5                db 0xd5
00002DFB  213E              and [rsi],edi
00002DFD  3EBE27D5213E      ds mov esi,0x3e21d527
00002E03  3E                ds
00002E04  3E                ds
00002E05  8F                db 0x8f
00002E06  A856              test al,0x56
00002E08  19BF86B53E3E      sbb [rdi+0x3e3eb586],edi
00002E0E  F3BF62B53E3E      rep mov edi,0x3e3eb562
00002E14  19BF62B53E3E      sbb [rdi+0x3e3eb562],edi
00002E1A  CF                iret
00002E1B  B552              mov ch,0x52
00002E1D  9C                pushf
00002E1E  5D                pop rbp
00002E1F  93                xchg eax,ebx
00002E20  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002E27  136E93            adc ebp,[rsi-0x6d]
00002E2A  BFC2423E3E        mov edi,0x3e3e42c2
00002E2F  56                push rsi
00002E30  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002E39  C2423E            ret 0x3e42
00002E3C  3E3E121CA6        adc bl,[ds:rsi]
00002E41  213E              and [rsi],edi
00002E43  3E3E33FD          ds xor edi,ebp
00002E47  47                rex.rxb
00002E48  3E3E56            ds push rsi
00002E4B  17                db 0x17
00002E4C  FF                db 0xff
00002E4D  7A56              jpe 0x2ea5
00002E4F  196F16            sbb [rdi+0x16],ebp
00002E52  42                rex.x
00002E53  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002E59  88FF              mov bh,bh
00002E5B  2D3EF5BFC2        sub eax,0xc2bff53e
00002E60  42                rex.x
00002E61  3E3E3E3E3E3E56    ds push rsi
00002E68  17                db 0x17
00002E69  FF                db 0xff
00002E6A  7A56              jpe 0x2ec2
00002E6C  93                xchg eax,ebx
00002E6D  BF06213E3E        mov edi,0x3e3e2106
00002E72  F5                cmc
00002E73  BFC2423E3E        mov edi,0x3e3e42c2
00002E78  3E3E3E3EF5        ds cmc
00002E7D  BF32B53E3E        mov edi,0x3e3eb532
00002E82  9B3E3E3E56        ds wait push rsi
00002E87  F5                cmc
00002E88  BF56B53E3E        mov edi,0x3e3eb556
00002E8D  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002E96  25213E3E19        and eax,0x193e3e21
00002E9B  6F                outsd
00002E9C  32B53E3EF344      xor dh,[rbp+0x44f33e3e]
00002EA2  93                xchg eax,ebx
00002EA3  6E                outsb
00002EA4  B37E              mov bl,0x7e
00002EA6  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002EAA  93                xchg eax,ebx
00002EAB  BF32B53E3E        mov edi,0x3e3eb532
00002EB0  19BF32B53E3E      sbb [rdi+0x3e3eb532],edi
00002EB6  DB                db 0xdb
00002EB7  B621              mov dh,0x21
00002EB9  AB                stosd
00002EBA  BF32B53E3E        mov edi,0x3e3eb532
00002EBF  56                push rsi
00002EC0  19BF56B53E3E      sbb [rdi+0x3e3eb556],edi
00002EC6  56                push rsi
00002EC7  17                db 0x17
00002EC8  EE                out dx,al
00002EC9  9B56              wait push rsi
00002ECB  93                xchg eax,ebx
00002ECC  6F                outsd
00002ECD  56                push rsi
00002ECE  B53E              mov ch,0x3e
00002ED0  3E56              ds push rsi
00002ED2  196F06            sbb [rdi+0x6],ebp
00002ED5  213E              and [rsi],edi
00002ED7  3E56              ds push rsi
00002ED9  9B6E              wait outsb
00002EDB  0DD83E16BF        or eax,0xbf163ed8
00002EE0  25213E3EBE        and eax,0xbe3e3e21
00002EE5  27                db 0x27
00002EE6  25213E3E3E        and eax,0x3e3e3e21
00002EEB  8F                db 0x8f
00002EEC  A856              test al,0x56
00002EEE  19BF56B53E3E      sbb [rdi+0x3e3eb556],edi
00002EF4  F3BF32B53E3E      rep mov edi,0x3e3eb532
00002EFA  19BF32B53E3E      sbb [rdi+0x3e3eb532],edi
00002F00  CF                iret
00002F01  F5                cmc
00002F02  93                xchg eax,ebx
00002F03  95                xchg eax,ebp
00002F04  FA                cli
00002F05  93                xchg eax,ebx
00002F06  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002F0D  136E93            adc ebp,[rsi-0x6d]
00002F10  BFC2423E3E        mov edi,0x3e3e42c2
00002F15  56                push rsi
00002F16  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00002F1F  C2423E            ret 0x3e42
00002F22  3E3E121CA6        adc bl,[ds:rsi]
00002F27  213E              and [rsi],edi
00002F29  3E3E33A34A3E3E56  xor esp,[ds:rbx+0x563e3e4a]
00002F31  17                db 0x17
00002F32  FF                db 0xff
00002F33  7A56              jpe 0x2f8b
00002F35  196F16            sbb [rdi+0x16],ebp
00002F38  42                rex.x
00002F39  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00002F3F  88FF              mov bh,bh
00002F41  2D3EF5BFC2        sub eax,0xc2bff53e
00002F46  42                rex.x
00002F47  3E3E3E3E3E3E56    ds push rsi
00002F4E  17                db 0x17
00002F4F  FF                db 0xff
00002F50  7A56              jpe 0x2fa8
00002F52  93                xchg eax,ebx
00002F53  BFD6213E3E        mov edi,0x3e3e21d6
00002F58  F5                cmc
00002F59  BFC2423E3E        mov edi,0x3e3e42c2
00002F5E  3E3E3E3EF5        ds cmc
00002F63  BF02B53E3E        mov edi,0x3e3eb502
00002F68  9B3E3E3E56        ds wait push rsi
00002F6D  F5                cmc
00002F6E  BF26B53E3E        mov edi,0x3e3eb526
00002F73  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00002F7C  F5                cmc
00002F7D  213E              and [rsi],edi
00002F7F  3E196F02          sbb [ds:rdi+0x2],ebp
00002F83  B53E              mov ch,0x3e
00002F85  3EF34493          ds rep xchg eax,ebx
00002F89  6E                outsb
00002F8A  B37E              mov bl,0x7e
00002F8C  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00002F90  93                xchg eax,ebx
00002F91  BF02B53E3E        mov edi,0x3e3eb502
00002F96  19BF02B53E3E      sbb [rdi+0x3e3eb502],edi
00002F9C  DB                db 0xdb
00002F9D  B621              mov dh,0x21
00002F9F  AB                stosd
00002FA0  BF02B53E3E        mov edi,0x3e3eb502
00002FA5  56                push rsi
00002FA6  19BF26B53E3E      sbb [rdi+0x3e3eb526],edi
00002FAC  56                push rsi
00002FAD  17                db 0x17
00002FAE  EE                out dx,al
00002FAF  9B56              wait push rsi
00002FB1  93                xchg eax,ebx
00002FB2  6F                outsd
00002FB3  26B53E            es mov ch,0x3e
00002FB6  3E56              ds push rsi
00002FB8  196FD6            sbb [rdi-0x2a],ebp
00002FBB  213E              and [rsi],edi
00002FBD  3E56              ds push rsi
00002FBF  9B6E              wait outsb
00002FC1  0DD83E16BF        or eax,0xbf163ed8
00002FC6  F5                cmc
00002FC7  213E              and [rsi],edi
00002FC9  3EBE27F5213E      ds mov esi,0x3e21f527
00002FCF  3E                ds
00002FD0  3E                ds
00002FD1  8F                db 0x8f
00002FD2  A856              test al,0x56
00002FD4  19BF26B53E3E      sbb [rdi+0x3e3eb526],edi
00002FDA  F3BF02B53E3E      rep mov edi,0x3e3eb502
00002FE0  19BF02B53E3E      sbb [rdi+0x3e3eb502],edi
00002FE6  CF                iret
00002FE7  BD8B833293        mov ebp,0x9332838b
00002FEC  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00002FF3  136E93            adc ebp,[rsi-0x6d]
00002FF6  BFC2423E3E        mov edi,0x3e3e42c2
00002FFB  56                push rsi
00002FFC  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003005  C2423E            ret 0x3e42
00003008  3E3E121CA6        adc bl,[ds:rsi]
0000300D  213E              and [rsi],edi
0000300F  3E3E3311          xor edx,[ds:rcx]
00003013  49                rex.wb
00003014  3E3E56            ds push rsi
00003017  17                db 0x17
00003018  FF                db 0xff
00003019  7A56              jpe 0x3071
0000301B  196F16            sbb [rdi+0x16],ebp
0000301E  42                rex.x
0000301F  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003025  88FF              mov bh,bh
00003027  2D3EF5BFC2        sub eax,0xc2bff53e
0000302C  42                rex.x
0000302D  3E3E3E3E3E3E56    ds push rsi
00003034  17                db 0x17
00003035  FF                db 0xff
00003036  7A56              jpe 0x308e
00003038  93                xchg eax,ebx
00003039  BFA6213E3E        mov edi,0x3e3e21a6
0000303E  F5                cmc
0000303F  BFC2423E3E        mov edi,0x3e3e42c2
00003044  3E3E3E3EF5        ds cmc
00003049  BF52B53E3E        mov edi,0x3e3eb552
0000304E  9B3E3E3E56        ds wait push rsi
00003053  F5                cmc
00003054  BF76B53E3E        mov edi,0x3e3eb576
00003059  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003062  C5                db 0xc5
00003063  213E              and [rsi],edi
00003065  3E196F52          sbb [ds:rdi+0x52],ebp
00003069  B53E              mov ch,0x3e
0000306B  3EF34493          ds rep xchg eax,ebx
0000306F  6E                outsb
00003070  B37E              mov bl,0x7e
00003072  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003076  93                xchg eax,ebx
00003077  BF52B53E3E        mov edi,0x3e3eb552
0000307C  19BF52B53E3E      sbb [rdi+0x3e3eb552],edi
00003082  DB                db 0xdb
00003083  B621              mov dh,0x21
00003085  AB                stosd
00003086  BF52B53E3E        mov edi,0x3e3eb552
0000308B  56                push rsi
0000308C  19BF76B53E3E      sbb [rdi+0x3e3eb576],edi
00003092  56                push rsi
00003093  17                db 0x17
00003094  EE                out dx,al
00003095  9B56              wait push rsi
00003097  93                xchg eax,ebx
00003098  6F                outsd
00003099  76B5              jna 0x3050
0000309B  3E3E56            ds push rsi
0000309E  196FA6            sbb [rdi-0x5a],ebp
000030A1  213E              and [rsi],edi
000030A3  3E56              ds push rsi
000030A5  9B6E              wait outsb
000030A7  0DD83E16BF        or eax,0xbf163ed8
000030AC  C5                db 0xc5
000030AD  213E              and [rsi],edi
000030AF  3EBE27C5213E      ds mov esi,0x3e21c527
000030B5  3E                ds
000030B6  3E                ds
000030B7  8F                db 0x8f
000030B8  A856              test al,0x56
000030BA  19BF76B53E3E      sbb [rdi+0x3e3eb576],edi
000030C0  F3BF52B53E3E      rep mov edi,0x3e3eb552
000030C6  19BF52B53E3E      sbb [rdi+0x3e3eb552],edi
000030CC  CF                iret
000030CD  72FE              jc 0x30cd
000030CF  BCE4934419        mov esp,0x194493e4
000030D4  BFC2423E3E        mov edi,0x3e3e42c2
000030D9  136E93            adc ebp,[rsi-0x6d]
000030DC  BFC2423E3E        mov edi,0x3e3e42c2
000030E1  56                push rsi
000030E2  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000030EB  C2423E            ret 0x3e42
000030EE  3E3E121CA6        adc bl,[ds:rsi]
000030F3  213E              and [rsi],edi
000030F5  3E3E33B78C3E3E56  xor esi,[ds:rdi+0x563e3e8c]
000030FD  17                db 0x17
000030FE  FF                db 0xff
000030FF  7A56              jpe 0x3157
00003101  196F16            sbb [rdi+0x16],ebp
00003104  42                rex.x
00003105  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000310B  88FF              mov bh,bh
0000310D  2D3EF5BFC2        sub eax,0xc2bff53e
00003112  42                rex.x
00003113  3E3E3E3E3E3E56    ds push rsi
0000311A  17                db 0x17
0000311B  FF                db 0xff
0000311C  7A56              jpe 0x3174
0000311E  93                xchg eax,ebx
0000311F  BFF6213E3E        mov edi,0x3e3e21f6
00003124  F5                cmc
00003125  BFC2423E3E        mov edi,0x3e3e42c2
0000312A  3E3E3E3EF5        ds cmc
0000312F  BFA2B53E3E        mov edi,0x3e3eb5a2
00003134  9B3E3E3E56        ds wait push rsi
00003139  F5                cmc
0000313A  BFC6B53E3E        mov edi,0x3e3eb5c6
0000313F  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003148  15213E3E19        adc eax,0x193e3e21
0000314D  6F                outsd
0000314E  A2B53E3EF344936E  mov [qword 0xb36e9344f33e3eb5],al
         -B3
00003157  7E83              jng 0x30dc
00003159  5B                pop rbx
0000315A  AB                stosd
0000315B  3E93              ds xchg eax,ebx
0000315D  BFA2B53E3E        mov edi,0x3e3eb5a2
00003162  19BFA2B53E3E      sbb [rdi+0x3e3eb5a2],edi
00003168  DB                db 0xdb
00003169  B621              mov dh,0x21
0000316B  AB                stosd
0000316C  BFA2B53E3E        mov edi,0x3e3eb5a2
00003171  56                push rsi
00003172  19BFC6B53E3E      sbb [rdi+0x3e3eb5c6],edi
00003178  56                push rsi
00003179  17                db 0x17
0000317A  EE                out dx,al
0000317B  9B56              wait push rsi
0000317D  93                xchg eax,ebx
0000317E  6F                outsd
0000317F  C6                db 0xc6
00003180  B53E              mov ch,0x3e
00003182  3E56              ds push rsi
00003184  196FF6            sbb [rdi-0xa],ebp
00003187  213E              and [rsi],edi
00003189  3E56              ds push rsi
0000318B  9B6E              wait outsb
0000318D  0DD83E16BF        or eax,0xbf163ed8
00003192  15213E3EBE        adc eax,0xbe3e3e21
00003197  27                db 0x27
00003198  15213E3E3E        adc eax,0x3e3e3e21
0000319D  8F                db 0x8f
0000319E  A856              test al,0x56
000031A0  19BFC6B53E3E      sbb [rdi+0x3e3eb5c6],edi
000031A6  F3BFA2B53E3E      rep mov edi,0x3e3eb5a2
000031AC  19BFA2B53E3E      sbb [rdi+0x3e3eb5a2],edi
000031B2  CF                iret
000031B3  B47E              mov ah,0x7e
000031B5  B09D              mov al,0x9d
000031B7  93                xchg eax,ebx
000031B8  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000031BF  136E93            adc ebp,[rsi-0x6d]
000031C2  BFC2423E3E        mov edi,0x3e3e42c2
000031C7  56                push rsi
000031C8  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000031D1  C2423E            ret 0x3e42
000031D4  3E3E121CA6        adc bl,[ds:rsi]
000031D9  213E              and [rsi],edi
000031DB  3E3E33B58C3E3E56  xor esi,[ds:rbp+0x563e3e8c]
000031E3  17                db 0x17
000031E4  FF                db 0xff
000031E5  7A56              jpe 0x323d
000031E7  196F16            sbb [rdi+0x16],ebp
000031EA  42                rex.x
000031EB  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000031F1  88FF              mov bh,bh
000031F3  2D3EF5BFC2        sub eax,0xc2bff53e
000031F8  42                rex.x
000031F9  3E3E3E3E3E3E56    ds push rsi
00003200  17                db 0x17
00003201  FF                db 0xff
00003202  7A56              jpe 0x325a
00003204  93                xchg eax,ebx
00003205  BF46213E3E        mov edi,0x3e3e2146
0000320A  F5                cmc
0000320B  BFC2423E3E        mov edi,0x3e3e42c2
00003210  3E3E3E3EF5        ds cmc
00003215  BF72B53E3E        mov edi,0x3e3eb572
0000321A  9B3E3E3E56        ds wait push rsi
0000321F  F5                cmc
00003220  BF96B53E3E        mov edi,0x3e3eb596
00003225  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000322E  65213E            and [gs:rsi],edi
00003231  3E196F72          sbb [ds:rdi+0x72],ebp
00003235  B53E              mov ch,0x3e
00003237  3EF34493          ds rep xchg eax,ebx
0000323B  6E                outsb
0000323C  B37E              mov bl,0x7e
0000323E  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003242  93                xchg eax,ebx
00003243  BF72B53E3E        mov edi,0x3e3eb572
00003248  19BF72B53E3E      sbb [rdi+0x3e3eb572],edi
0000324E  DB                db 0xdb
0000324F  B621              mov dh,0x21
00003251  AB                stosd
00003252  BF72B53E3E        mov edi,0x3e3eb572
00003257  56                push rsi
00003258  19BF96B53E3E      sbb [rdi+0x3e3eb596],edi
0000325E  56                push rsi
0000325F  17                db 0x17
00003260  EE                out dx,al
00003261  9B56              wait push rsi
00003263  93                xchg eax,ebx
00003264  6F                outsd
00003265  96                xchg eax,esi
00003266  B53E              mov ch,0x3e
00003268  3E56              ds push rsi
0000326A  196F46            sbb [rdi+0x46],ebp
0000326D  213E              and [rsi],edi
0000326F  3E56              ds push rsi
00003271  9B6E              wait outsb
00003273  0DD83E16BF        or eax,0xbf163ed8
00003278  65213E            and [gs:rsi],edi
0000327B  3EBE2765213E      ds mov esi,0x3e216527
00003281  3E                ds
00003282  3E                ds
00003283  8F                db 0x8f
00003284  A856              test al,0x56
00003286  19BF96B53E3E      sbb [rdi+0x3e3eb596],edi
0000328C  F3BF72B53E3E      rep mov edi,0x3e3eb572
00003292  19BF72B53E3E      sbb [rdi+0x3e3eb572],edi
00003298  CF                iret
00003299  89A49470934419    mov [rsp+rdx*4+0x19449370],esp
000032A0  BFC2423E3E        mov edi,0x3e3e42c2
000032A5  136E93            adc ebp,[rsi-0x6d]
000032A8  BFC2423E3E        mov edi,0x3e3e42c2
000032AD  56                push rsi
000032AE  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000032B7  C2423E            ret 0x3e42
000032BA  3E3E121CA6        adc bl,[ds:rsi]
000032BF  213E              and [rsi],edi
000032C1  3E3E337BC3        xor edi,[ds:rbx-0x3d]
000032C6  3E3E56            ds push rsi
000032C9  17                db 0x17
000032CA  FF                db 0xff
000032CB  7A56              jpe 0x3323
000032CD  196F16            sbb [rdi+0x16],ebp
000032D0  42                rex.x
000032D1  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000032D7  88FF              mov bh,bh
000032D9  2D3EF5BFC2        sub eax,0xc2bff53e
000032DE  42                rex.x
000032DF  3E3E3E3E3E3E56    ds push rsi
000032E6  17                db 0x17
000032E7  FF                db 0xff
000032E8  7A56              jpe 0x3340
000032EA  93                xchg eax,ebx
000032EB  BF16213E3E        mov edi,0x3e3e2116
000032F0  F5                cmc
000032F1  BFC2423E3E        mov edi,0x3e3e42c2
000032F6  3E3E3E3EF5        ds cmc
000032FB  BF42B53E3E        mov edi,0x3e3eb542
00003300  9B3E3E3E56        ds wait push rsi
00003305  F5                cmc
00003306  BF66483E3E        mov edi,0x3e3e4866
0000330B  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003314  35213E3E19        xor eax,0x193e3e21
00003319  6F                outsd
0000331A  42B53E            mov bpl,0x3e
0000331D  3EF34493          ds rep xchg eax,ebx
00003321  6E                outsb
00003322  B37E              mov bl,0x7e
00003324  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003328  93                xchg eax,ebx
00003329  BF42B53E3E        mov edi,0x3e3eb542
0000332E  19BF42B53E3E      sbb [rdi+0x3e3eb542],edi
00003334  DB                db 0xdb
00003335  B621              mov dh,0x21
00003337  AB                stosd
00003338  BF42B53E3E        mov edi,0x3e3eb542
0000333D  56                push rsi
0000333E  19BF66483E3E      sbb [rdi+0x3e3e4866],edi
00003344  56                push rsi
00003345  17                db 0x17
00003346  EE                out dx,al
00003347  9B56              wait push rsi
00003349  93                xchg eax,ebx
0000334A  6F                outsd
0000334B  66                o16
0000334C  48                rex.w
0000334D  3E3E56            ds push rsi
00003350  196F16            sbb [rdi+0x16],ebp
00003353  213E              and [rsi],edi
00003355  3E56              ds push rsi
00003357  9B6E              wait outsb
00003359  0DD83E16BF        or eax,0xbf163ed8
0000335E  35213E3EBE        xor eax,0xbe3e3e21
00003363  27                db 0x27
00003364  35213E3E3E        xor eax,0x3e3e3e21
00003369  8F                db 0x8f
0000336A  A856              test al,0x56
0000336C  19BF66483E3E      sbb [rdi+0x3e3e4866],edi
00003372  F3BF42B53E3E      rep mov edi,0x3e3eb542
00003378  19BF42B53E3E      sbb [rdi+0x3e3eb542],edi
0000337E  CF                iret
0000337F  FF                db 0xff
00003380  F8                clc
00003381  899F934419BF      mov [rdi-0x40e6bb6d],ebx
00003387  C2423E            ret 0x3e42
0000338A  3E136E93          adc ebp,[ds:rsi-0x6d]
0000338E  BFC2423E3E        mov edi,0x3e3e42c2
00003393  56                push rsi
00003394  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
0000339D  C2423E            ret 0x3e42
000033A0  3E3E121CA6        adc bl,[ds:rsi]
000033A5  213E              and [rsi],edi
000033A7  3E3E33A9C63E3E56  xor ebp,[ds:rcx+0x563e3ec6]
000033AF  17                db 0x17
000033B0  FF                db 0xff
000033B1  7A56              jpe 0x3409
000033B3  196F16            sbb [rdi+0x16],ebp
000033B6  42                rex.x
000033B7  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000033BD  88FF              mov bh,bh
000033BF  2D3EF5BFC2        sub eax,0xc2bff53e
000033C4  42                rex.x
000033C5  3E3E3E3E3E3E56    ds push rsi
000033CC  17                db 0x17
000033CD  FF                db 0xff
000033CE  7A56              jpe 0x3426
000033D0  93                xchg eax,ebx
000033D1  BFE6213E3E        mov edi,0x3e3e21e6
000033D6  F5                cmc
000033D7  BFC2423E3E        mov edi,0x3e3e42c2
000033DC  3E3E3E3EF5        ds cmc
000033E1  BF92483E3E        mov edi,0x3e3e4892
000033E6  9B3E3E3E56        ds wait push rsi
000033EB  F5                cmc
000033EC  BFB6483E3E        mov edi,0x3e3e48b6
000033F1  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000033FA  05213E3E19        add eax,0x193e3e21
000033FF  6F                outsd
00003400  92                xchg eax,edx
00003401  48                rex.w
00003402  3E3EF34493        ds rep xchg eax,ebx
00003407  6E                outsb
00003408  B37E              mov bl,0x7e
0000340A  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000340E  93                xchg eax,ebx
0000340F  BF92483E3E        mov edi,0x3e3e4892
00003414  19BF92483E3E      sbb [rdi+0x3e3e4892],edi
0000341A  DB                db 0xdb
0000341B  B621              mov dh,0x21
0000341D  AB                stosd
0000341E  BF92483E3E        mov edi,0x3e3e4892
00003423  56                push rsi
00003424  19BFB6483E3E      sbb [rdi+0x3e3e48b6],edi
0000342A  56                push rsi
0000342B  17                db 0x17
0000342C  EE                out dx,al
0000342D  9B56              wait push rsi
0000342F  93                xchg eax,ebx
00003430  6F                outsd
00003431  B648              mov dh,0x48
00003433  3E3E56            ds push rsi
00003436  196FE6            sbb [rdi-0x1a],ebp
00003439  213E              and [rsi],edi
0000343B  3E56              ds push rsi
0000343D  9B6E              wait outsb
0000343F  0DD83E16BF        or eax,0xbf163ed8
00003444  05213E3EBE        add eax,0xbe3e3e21
00003449  27                db 0x27
0000344A  05213E3E3E        add eax,0x3e3e3e21
0000344F  8F                db 0x8f
00003450  A856              test al,0x56
00003452  19BFB6483E3E      sbb [rdi+0x3e3e48b6],edi
00003458  F3BF92483E3E      rep mov edi,0x3e3e4892
0000345E  19BF92483E3E      sbb [rdi+0x3e3e4892],edi
00003464  CF                iret
00003465  56                push rsi
00003466  E661              out 0x61,al
00003468  7993              jns 0x33fd
0000346A  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003471  136E93            adc ebp,[rsi-0x6d]
00003474  BFC2423E3E        mov edi,0x3e3e42c2
00003479  56                push rsi
0000347A  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003483  C2423E            ret 0x3e42
00003486  3E3E121CA6        adc bl,[ds:rsi]
0000348B  213E              and [rsi],edi
0000348D  3E3E33AFE53E3E56  xor ebp,[ds:rdi+0x563e3ee5]
00003495  17                db 0x17
00003496  FF                db 0xff
00003497  7A56              jpe 0x34ef
00003499  196F16            sbb [rdi+0x16],ebp
0000349C  42                rex.x
0000349D  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000034A3  88FF              mov bh,bh
000034A5  2D3EF5BFC2        sub eax,0xc2bff53e
000034AA  42                rex.x
000034AB  3E3E3E3E3E3E56    ds push rsi
000034B2  17                db 0x17
000034B3  FF                db 0xff
000034B4  7A56              jpe 0x350c
000034B6  93                xchg eax,ebx
000034B7  BF36213E3E        mov edi,0x3e3e2136
000034BC  F5                cmc
000034BD  BFC2423E3E        mov edi,0x3e3e42c2
000034C2  3E3E3E3EF5        ds cmc
000034C7  BFE2483E3E        mov edi,0x3e3e48e2
000034CC  9B3E3E3E56        ds wait push rsi
000034D1  F5                cmc
000034D2  BF06483E3E        mov edi,0x3e3e4806
000034D7  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000034E0  55                push rbp
000034E1  213E              and [rsi],edi
000034E3  3E196FE2          sbb [ds:rdi-0x1e],ebp
000034E7  48                rex.w
000034E8  3E3EF34493        ds rep xchg eax,ebx
000034ED  6E                outsb
000034EE  B37E              mov bl,0x7e
000034F0  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000034F4  93                xchg eax,ebx
000034F5  BFE2483E3E        mov edi,0x3e3e48e2
000034FA  19BFE2483E3E      sbb [rdi+0x3e3e48e2],edi
00003500  DB                db 0xdb
00003501  B621              mov dh,0x21
00003503  AB                stosd
00003504  BFE2483E3E        mov edi,0x3e3e48e2
00003509  56                push rsi
0000350A  19BF06483E3E      sbb [rdi+0x3e3e4806],edi
00003510  56                push rsi
00003511  17                db 0x17
00003512  EE                out dx,al
00003513  9B56              wait push rsi
00003515  93                xchg eax,ebx
00003516  6F                outsd
00003517  06                db 0x06
00003518  48                rex.w
00003519  3E3E56            ds push rsi
0000351C  196F36            sbb [rdi+0x36],ebp
0000351F  213E              and [rsi],edi
00003521  3E56              ds push rsi
00003523  9B6E              wait outsb
00003525  0DD83E16BF        or eax,0xbf163ed8
0000352A  55                push rbp
0000352B  213E              and [rsi],edi
0000352D  3EBE2755213E      ds mov esi,0x3e215527
00003533  3E                ds
00003534  3E                ds
00003535  8F                db 0x8f
00003536  A856              test al,0x56
00003538  19BF06483E3E      sbb [rdi+0x3e3e4806],edi
0000353E  F3BFE2483E3E      rep mov edi,0x3e3e48e2
00003544  19BFE2483E3E      sbb [rdi+0x3e3e48e2],edi
0000354A  CF                iret
0000354B  1CA7              sbb al,0xa7
0000354D  AD                lodsd
0000354E  9D                popf
0000354F  93                xchg eax,ebx
00003550  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003557  136E93            adc ebp,[rsi-0x6d]
0000355A  BFC2423E3E        mov edi,0x3e3e42c2
0000355F  56                push rsi
00003560  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003569  C2423E            ret 0x3e42
0000356C  3E3E121CA6        adc bl,[ds:rsi]
00003571  213E              and [rsi],edi
00003573  3E3E33AD783E3E56  xor ebp,[ds:rbp+0x563e3e78]
0000357B  17                db 0x17
0000357C  FF                db 0xff
0000357D  7A56              jpe 0x35d5
0000357F  196F16            sbb [rdi+0x16],ebp
00003582  42                rex.x
00003583  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003589  88FF              mov bh,bh
0000358B  2D3EF5BFC2        sub eax,0xc2bff53e
00003590  42                rex.x
00003591  3E3E3E3E3E3E56    ds push rsi
00003598  17                db 0x17
00003599  FF                db 0xff
0000359A  7A56              jpe 0x35f2
0000359C  93                xchg eax,ebx
0000359D  BF86213E3E        mov edi,0x3e3e2186
000035A2  F5                cmc
000035A3  BFC2423E3E        mov edi,0x3e3e42c2
000035A8  3E3E3E3EF5        ds cmc
000035AD  BFB2483E3E        mov edi,0x3e3e48b2
000035B2  9B3E3E3E56        ds wait push rsi
000035B7  F5                cmc
000035B8  BFD6483E3E        mov edi,0x3e3e48d6
000035BD  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000035C6  A5                movsd
000035C7  213E              and [rsi],edi
000035C9  3E196FB2          sbb [ds:rdi-0x4e],ebp
000035CD  48                rex.w
000035CE  3E3EF34493        ds rep xchg eax,ebx
000035D3  6E                outsb
000035D4  B37E              mov bl,0x7e
000035D6  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000035DA  93                xchg eax,ebx
000035DB  BFB2483E3E        mov edi,0x3e3e48b2
000035E0  19BFB2483E3E      sbb [rdi+0x3e3e48b2],edi
000035E6  DB                db 0xdb
000035E7  B621              mov dh,0x21
000035E9  AB                stosd
000035EA  BFB2483E3E        mov edi,0x3e3e48b2
000035EF  56                push rsi
000035F0  19BFD6483E3E      sbb [rdi+0x3e3e48d6],edi
000035F6  56                push rsi
000035F7  17                db 0x17
000035F8  EE                out dx,al
000035F9  9B56              wait push rsi
000035FB  93                xchg eax,ebx
000035FC  6F                outsd
000035FD  D6                salc
000035FE  48                rex.w
000035FF  3E3E56            ds push rsi
00003602  196F86            sbb [rdi-0x7a],ebp
00003605  213E              and [rsi],edi
00003607  3E56              ds push rsi
00003609  9B6E              wait outsb
0000360B  0DD83E16BF        or eax,0xbf163ed8
00003610  A5                movsd
00003611  213E              and [rsi],edi
00003613  3EBE27A5213E      ds mov esi,0x3e21a527
00003619  3E                ds
0000361A  3E                ds
0000361B  8F                db 0x8f
0000361C  A856              test al,0x56
0000361E  19BFD6483E3E      sbb [rdi+0x3e3e48d6],edi
00003624  F3BFB2483E3E      rep mov edi,0x3e3e48b2
0000362A  19BFB2483E3E      sbb [rdi+0x3e3e48b2],edi
00003630  CF                iret
00003631  14BD              adc al,0xbd
00003633  47                rex.rxb
00003634  4693              xchg eax,ebx
00003636  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
0000363D  136E93            adc ebp,[rsi-0x6d]
00003640  BFC2423E3E        mov edi,0x3e3e42c2
00003645  56                push rsi
00003646  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
0000364F  C2423E            ret 0x3e42
00003652  3E3E121CA6        adc bl,[ds:rsi]
00003657  213E              and [rsi],edi
00003659  3E3E3393EF3E3E56  xor edx,[ds:rbx+0x563e3eef]
00003661  17                db 0x17
00003662  FF                db 0xff
00003663  7A56              jpe 0x36bb
00003665  196F16            sbb [rdi+0x16],ebp
00003668  42                rex.x
00003669  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000366F  88FF              mov bh,bh
00003671  2D3EF5BFC2        sub eax,0xc2bff53e
00003676  42                rex.x
00003677  3E3E3E3E3E3E56    ds push rsi
0000367E  17                db 0x17
0000367F  FF                db 0xff
00003680  7A56              jpe 0x36d8
00003682  93                xchg eax,ebx
00003683  BF56213E3E        mov edi,0x3e3e2156
00003688  F5                cmc
00003689  BFC2423E3E        mov edi,0x3e3e42c2
0000368E  3E3E3E3EF5        ds cmc
00003693  BF82483E3E        mov edi,0x3e3e4882
00003698  9B3E3E3E56        ds wait push rsi
0000369D  F5                cmc
0000369E  BFA6483E3E        mov edi,0x3e3e48a6
000036A3  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000036AC  7521              jnz 0x36cf
000036AE  3E3E196F82        sbb [ds:rdi-0x7e],ebp
000036B3  48                rex.w
000036B4  3E3EF34493        ds rep xchg eax,ebx
000036B9  6E                outsb
000036BA  B37E              mov bl,0x7e
000036BC  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000036C0  93                xchg eax,ebx
000036C1  BF82483E3E        mov edi,0x3e3e4882
000036C6  19BF82483E3E      sbb [rdi+0x3e3e4882],edi
000036CC  DB                db 0xdb
000036CD  B621              mov dh,0x21
000036CF  AB                stosd
000036D0  BF82483E3E        mov edi,0x3e3e4882
000036D5  56                push rsi
000036D6  19BFA6483E3E      sbb [rdi+0x3e3e48a6],edi
000036DC  56                push rsi
000036DD  17                db 0x17
000036DE  EE                out dx,al
000036DF  9B56              wait push rsi
000036E1  93                xchg eax,ebx
000036E2  6F                outsd
000036E3  A6                cmpsb
000036E4  48                rex.w
000036E5  3E3E56            ds push rsi
000036E8  196F56            sbb [rdi+0x56],ebp
000036EB  213E              and [rsi],edi
000036ED  3E56              ds push rsi
000036EF  9B6E              wait outsb
000036F1  0DD83E16BF        or eax,0xbf163ed8
000036F6  7521              jnz 0x3719
000036F8  3E3EBE2775213E    ds mov esi,0x3e217527
000036FF  3E                ds
00003700  3E                ds
00003701  8F                db 0x8f
00003702  A856              test al,0x56
00003704  19BFA6483E3E      sbb [rdi+0x3e3e48a6],edi
0000370A  F3BF82483E3E      rep mov edi,0x3e3e4882
00003710  19BF82483E3E      sbb [rdi+0x3e3e4882],edi
00003716  CF                iret
00003717  C3                ret
00003718  B7C2              mov bh,0xc2
0000371A  32934419BFC2      xor dl,[rbx-0x3d40e6bc]
00003720  42                rex.x
00003721  3E3E136E93        adc ebp,[ds:rsi-0x6d]
00003726  BFC2423E3E        mov edi,0x3e3e42c2
0000372B  56                push rsi
0000372C  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003735  C2423E            ret 0x3e42
00003738  3E3E121CA6        adc bl,[ds:rsi]
0000373D  213E              and [rsi],edi
0000373F  3E3E3381723E3E56  xor eax,[ds:rcx+0x563e3e72]
00003747  17                db 0x17
00003748  FF                db 0xff
00003749  7A56              jpe 0x37a1
0000374B  196F16            sbb [rdi+0x16],ebp
0000374E  42                rex.x
0000374F  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003755  88FF              mov bh,bh
00003757  2D3EF5BFC2        sub eax,0xc2bff53e
0000375C  42                rex.x
0000375D  3E3E3E3E3E3E56    ds push rsi
00003764  17                db 0x17
00003765  FF                db 0xff
00003766  7A56              jpe 0x37be
00003768  93                xchg eax,ebx
00003769  BF26213E3E        mov edi,0x3e3e2126
0000376E  F5                cmc
0000376F  BFC2423E3E        mov edi,0x3e3e42c2
00003774  3E3E3E3EF5        ds cmc
00003779  BFD2483E3E        mov edi,0x3e3e48d2
0000377E  9B3E3E3E56        ds wait push rsi
00003783  F5                cmc
00003784  BFF6483E3E        mov edi,0x3e3e48f6
00003789  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003792  45213E            and [r14],r15d
00003795  3E196FD2          sbb [ds:rdi-0x2e],ebp
00003799  48                rex.w
0000379A  3E3EF34493        ds rep xchg eax,ebx
0000379F  6E                outsb
000037A0  B37E              mov bl,0x7e
000037A2  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000037A6  93                xchg eax,ebx
000037A7  BFD2483E3E        mov edi,0x3e3e48d2
000037AC  19BFD2483E3E      sbb [rdi+0x3e3e48d2],edi
000037B2  DB                db 0xdb
000037B3  B621              mov dh,0x21
000037B5  AB                stosd
000037B6  BFD2483E3E        mov edi,0x3e3e48d2
000037BB  56                push rsi
000037BC  19BFF6483E3E      sbb [rdi+0x3e3e48f6],edi
000037C2  56                push rsi
000037C3  17                db 0x17
000037C4  EE                out dx,al
000037C5  9B56              wait push rsi
000037C7  93                xchg eax,ebx
000037C8  6F                outsd
000037C9  F6                db 0xf6
000037CA  48                rex.w
000037CB  3E3E56            ds push rsi
000037CE  196F26            sbb [rdi+0x26],ebp
000037D1  213E              and [rsi],edi
000037D3  3E56              ds push rsi
000037D5  9B6E              wait outsb
000037D7  0DD83E16BF        or eax,0xbf163ed8
000037DC  45213E            and [r14],r15d
000037DF  3EBE2745213E      ds mov esi,0x3e214527
000037E5  3E                ds
000037E6  3E                ds
000037E7  8F                db 0x8f
000037E8  A856              test al,0x56
000037EA  19BFF6483E3E      sbb [rdi+0x3e3e48f6],edi
000037F0  F3BFD2483E3E      rep mov edi,0x3e3e48d2
000037F6  19BFD2483E3E      sbb [rdi+0x3e3e48d2],edi
000037FC  CF                iret
000037FD  7E18              jng 0x3817
000037FF  C83E9344          enter 0x933e,0x44
00003803  19BFC2423E3E      sbb [rdi+0x3e3e42c2],edi
00003809  136E93            adc ebp,[rsi-0x6d]
0000380C  BFC2423E3E        mov edi,0x3e3e42c2
00003811  56                push rsi
00003812  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
0000381B  C2423E            ret 0x3e42
0000381E  3E3E121CA6        adc bl,[ds:rsi]
00003823  213E              and [rsi],edi
00003825  3E3E3327          xor esp,[ds:rdi]
00003829  D13E              sar dword [rsi],1
0000382B  3E56              ds push rsi
0000382D  17                db 0x17
0000382E  FF                db 0xff
0000382F  7A56              jpe 0x3887
00003831  196F16            sbb [rdi+0x16],ebp
00003834  42                rex.x
00003835  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000383B  88FF              mov bh,bh
0000383D  2D3EF5BFC2        sub eax,0xc2bff53e
00003842  42                rex.x
00003843  3E3E3E3E3E3E56    ds push rsi
0000384A  17                db 0x17
0000384B  FF                db 0xff
0000384C  7A56              jpe 0x38a4
0000384E  93                xchg eax,ebx
0000384F  BF76213E3E        mov edi,0x3e3e2176
00003854  F5                cmc
00003855  BFC2423E3E        mov edi,0x3e3e42c2
0000385A  3E3E3E3EF5        ds cmc
0000385F  BF22483E3E        mov edi,0x3e3e4822
00003864  9B3E3E3E56        ds wait push rsi
00003869  F5                cmc
0000386A  BF46483E3E        mov edi,0x3e3e4846
0000386F  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003878  95                xchg eax,ebp
00003879  213E              and [rsi],edi
0000387B  3E196F22          sbb [ds:rdi+0x22],ebp
0000387F  48                rex.w
00003880  3E3EF34493        ds rep xchg eax,ebx
00003885  6E                outsb
00003886  B37E              mov bl,0x7e
00003888  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000388C  93                xchg eax,ebx
0000388D  BF22483E3E        mov edi,0x3e3e4822
00003892  19BF22483E3E      sbb [rdi+0x3e3e4822],edi
00003898  DB                db 0xdb
00003899  B621              mov dh,0x21
0000389B  AB                stosd
0000389C  BF22483E3E        mov edi,0x3e3e4822
000038A1  56                push rsi
000038A2  19BF46483E3E      sbb [rdi+0x3e3e4846],edi
000038A8  56                push rsi
000038A9  17                db 0x17
000038AA  EE                out dx,al
000038AB  9B56              wait push rsi
000038AD  93                xchg eax,ebx
000038AE  6F                outsd
000038AF  46                rex.rx
000038B0  48                rex.w
000038B1  3E3E56            ds push rsi
000038B4  196F76            sbb [rdi+0x76],ebp
000038B7  213E              and [rsi],edi
000038B9  3E56              ds push rsi
000038BB  9B6E              wait outsb
000038BD  0DD83E16BF        or eax,0xbf163ed8
000038C2  95                xchg eax,ebp
000038C3  213E              and [rsi],edi
000038C5  3EBE2795213E      ds mov esi,0x3e219527
000038CB  3E                ds
000038CC  3E                ds
000038CD  8F                db 0x8f
000038CE  A856              test al,0x56
000038D0  19BF46483E3E      sbb [rdi+0x3e3e4846],edi
000038D6  F3BF22483E3E      rep mov edi,0x3e3e4822
000038DC  19BF22483E3E      sbb [rdi+0x3e3e4822],edi
000038E2  CF                iret
000038E3  735C              jnc 0x3941
000038E5  B336              mov bl,0x36
000038E7  93                xchg eax,ebx
000038E8  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000038EF  136E93            adc ebp,[rsi-0x6d]
000038F2  BFC2423E3E        mov edi,0x3e3e42c2
000038F7  56                push rsi
000038F8  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003901  C2423E            ret 0x3e42
00003904  3E3E121CA6        adc bl,[ds:rsi]
00003909  213E              and [rsi],edi
0000390B  3E3E3325743E3E56  xor esp,[rel ds:0x563e7787]
00003913  17                db 0x17
00003914  FF                db 0xff
00003915  7A56              jpe 0x396d
00003917  196F16            sbb [rdi+0x16],ebp
0000391A  42                rex.x
0000391B  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003921  88FF              mov bh,bh
00003923  2D3EF5BFC2        sub eax,0xc2bff53e
00003928  42                rex.x
00003929  3E3E3E3E3E3E56    ds push rsi
00003930  17                db 0x17
00003931  FF                db 0xff
00003932  7A56              jpe 0x398a
00003934  93                xchg eax,ebx
00003935  BFC6213E3E        mov edi,0x3e3e21c6
0000393A  F5                cmc
0000393B  BFC2423E3E        mov edi,0x3e3e42c2
00003940  3E3E3E3EF5        ds cmc
00003945  BFF2483E3E        mov edi,0x3e3e48f2
0000394A  9B3E3E3E56        ds wait push rsi
0000394F  F5                cmc
00003950  BF16483E3E        mov edi,0x3e3e4816
00003955  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000395E  E521              in eax,0x21
00003960  3E3E196FF2        sbb [ds:rdi-0xe],ebp
00003965  48                rex.w
00003966  3E3EF34493        ds rep xchg eax,ebx
0000396B  6E                outsb
0000396C  B37E              mov bl,0x7e
0000396E  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003972  93                xchg eax,ebx
00003973  BFF2483E3E        mov edi,0x3e3e48f2
00003978  19BFF2483E3E      sbb [rdi+0x3e3e48f2],edi
0000397E  DB                db 0xdb
0000397F  B621              mov dh,0x21
00003981  AB                stosd
00003982  BFF2483E3E        mov edi,0x3e3e48f2
00003987  56                push rsi
00003988  19BF16483E3E      sbb [rdi+0x3e3e4816],edi
0000398E  56                push rsi
0000398F  17                db 0x17
00003990  EE                out dx,al
00003991  9B56              wait push rsi
00003993  93                xchg eax,ebx
00003994  6F                outsd
00003995  16                db 0x16
00003996  48                rex.w
00003997  3E3E56            ds push rsi
0000399A  196FC6            sbb [rdi-0x3a],ebp
0000399D  213E              and [rsi],edi
0000399F  3E56              ds push rsi
000039A1  9B6E              wait outsb
000039A3  0DD83E16BF        or eax,0xbf163ed8
000039A8  E521              in eax,0x21
000039AA  3E3EBE27E5213E    ds mov esi,0x3e21e527
000039B1  3E                ds
000039B2  3E                ds
000039B3  8F                db 0x8f
000039B4  A856              test al,0x56
000039B6  19BF16483E3E      sbb [rdi+0x3e3e4816],edi
000039BC  F3BFF2483E3E      rep mov edi,0x3e3e48f2
000039C2  19BFF2483E3E      sbb [rdi+0x3e3e48f2],edi
000039C8  CF                iret
000039C9  F62C10            imul byte [rax+rdx]
000039CC  AF                scasd
000039CD  93                xchg eax,ebx
000039CE  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000039D5  136E93            adc ebp,[rsi-0x6d]
000039D8  BFC2423E3E        mov edi,0x3e3e42c2
000039DD  56                push rsi
000039DE  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000039E7  C2423E            ret 0x3e42
000039EA  3E3E121CA6        adc bl,[ds:rsi]
000039EF  213E              and [rsi],edi
000039F1  3E3E33EB          ds xor ebp,ebx
000039F5  4B                rex.wxb
000039F6  3E3E56            ds push rsi
000039F9  17                db 0x17
000039FA  FF                db 0xff
000039FB  7A56              jpe 0x3a53
000039FD  196F16            sbb [rdi+0x16],ebp
00003A00  42                rex.x
00003A01  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003A07  88FF              mov bh,bh
00003A09  2D3EF5BFC2        sub eax,0xc2bff53e
00003A0E  42                rex.x
00003A0F  3E3E3E3E3E3E56    ds push rsi
00003A16  17                db 0x17
00003A17  FF                db 0xff
00003A18  7A56              jpe 0x3a70
00003A1A  93                xchg eax,ebx
00003A1B  BF96213E3E        mov edi,0x3e3e2196
00003A20  F5                cmc
00003A21  BFC2423E3E        mov edi,0x3e3e42c2
00003A26  3E3E3E3EF5        ds cmc
00003A2B  BFC2483E3E        mov edi,0x3e3e48c2
00003A30  9B3E3E3E56        ds wait push rsi
00003A35  F5                cmc
00003A36  BFE6483E3E        mov edi,0x3e3e48e6
00003A3B  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003A44  B521              mov ch,0x21
00003A46  3E3E196FC2        sbb [ds:rdi-0x3e],ebp
00003A4B  48                rex.w
00003A4C  3E3EF34493        ds rep xchg eax,ebx
00003A51  6E                outsb
00003A52  B37E              mov bl,0x7e
00003A54  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003A58  93                xchg eax,ebx
00003A59  BFC2483E3E        mov edi,0x3e3e48c2
00003A5E  19BFC2483E3E      sbb [rdi+0x3e3e48c2],edi
00003A64  DB                db 0xdb
00003A65  B621              mov dh,0x21
00003A67  AB                stosd
00003A68  BFC2483E3E        mov edi,0x3e3e48c2
00003A6D  56                push rsi
00003A6E  19BFE6483E3E      sbb [rdi+0x3e3e48e6],edi
00003A74  56                push rsi
00003A75  17                db 0x17
00003A76  EE                out dx,al
00003A77  9B56              wait push rsi
00003A79  93                xchg eax,ebx
00003A7A  6F                outsd
00003A7B  E648              out 0x48,al
00003A7D  3E3E56            ds push rsi
00003A80  196F96            sbb [rdi-0x6a],ebp
00003A83  213E              and [rsi],edi
00003A85  3E56              ds push rsi
00003A87  9B6E              wait outsb
00003A89  0DD83E16BF        or eax,0xbf163ed8
00003A8E  B521              mov ch,0x21
00003A90  3E3EBE27B5213E    ds mov esi,0x3e21b527
00003A97  3E                ds
00003A98  3E                ds
00003A99  8F                db 0x8f
00003A9A  A856              test al,0x56
00003A9C  19BFE6483E3E      sbb [rdi+0x3e3e48e6],edi
00003AA2  F3BFC2483E3E      rep mov edi,0x3e3e48c2
00003AA8  19BFC2483E3E      sbb [rdi+0x3e3e48c2],edi
00003AAE  CF                iret
00003AAF  B715              mov bh,0x15
00003AB1  6529934419BFC2    sub [gs:rbx-0x3d40e6bc],edx
00003AB8  42                rex.x
00003AB9  3E3E136E93        adc ebp,[ds:rsi-0x6d]
00003ABE  BFC2423E3E        mov edi,0x3e3e42c2
00003AC3  56                push rsi
00003AC4  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003ACD  C2423E            ret 0x3e42
00003AD0  3E3E121CA6        adc bl,[ds:rsi]
00003AD5  213E              and [rsi],edi
00003AD7  3E3E33994B3E3E56  xor ebx,[ds:rcx+0x563e3e4b]
00003ADF  17                db 0x17
00003AE0  FF                db 0xff
00003AE1  7A56              jpe 0x3b39
00003AE3  196F16            sbb [rdi+0x16],ebp
00003AE6  42                rex.x
00003AE7  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003AED  88FF              mov bh,bh
00003AEF  2D3EF5BFC2        sub eax,0xc2bff53e
00003AF4  42                rex.x
00003AF5  3E3E3E3E3E3E56    ds push rsi
00003AFC  17                db 0x17
00003AFD  FF                db 0xff
00003AFE  7A56              jpe 0x3b56
00003B00  93                xchg eax,ebx
00003B01  BF66043E3E        mov edi,0x3e3e0466
00003B06  F5                cmc
00003B07  BFC2423E3E        mov edi,0x3e3e42c2
00003B0C  3E3E3E3EF5        ds cmc
00003B11  BF12483E3E        mov edi,0x3e3e4812
00003B16  9B3E3E3E56        ds wait push rsi
00003B1B  F5                cmc
00003B1C  BF36483E3E        mov edi,0x3e3e4836
00003B21  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003B2A  85043E            test [rsi+rdi],eax
00003B2D  3E196F12          sbb [ds:rdi+0x12],ebp
00003B31  48                rex.w
00003B32  3E3EF34493        ds rep xchg eax,ebx
00003B37  6E                outsb
00003B38  B37E              mov bl,0x7e
00003B3A  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003B3E  93                xchg eax,ebx
00003B3F  BF12483E3E        mov edi,0x3e3e4812
00003B44  19BF12483E3E      sbb [rdi+0x3e3e4812],edi
00003B4A  DB                db 0xdb
00003B4B  B621              mov dh,0x21
00003B4D  AB                stosd
00003B4E  BF12483E3E        mov edi,0x3e3e4812
00003B53  56                push rsi
00003B54  19BF36483E3E      sbb [rdi+0x3e3e4836],edi
00003B5A  56                push rsi
00003B5B  17                db 0x17
00003B5C  EE                out dx,al
00003B5D  9B56              wait push rsi
00003B5F  93                xchg eax,ebx
00003B60  6F                outsd
00003B61  36                ss
00003B62  48                rex.w
00003B63  3E3E56            ds push rsi
00003B66  196F66            sbb [rdi+0x66],ebp
00003B69  043E              add al,0x3e
00003B6B  3E56              ds push rsi
00003B6D  9B6E              wait outsb
00003B6F  0DD83E16BF        or eax,0xbf163ed8
00003B74  85043E            test [rsi+rdi],eax
00003B77  3EBE2785043E      ds mov esi,0x3e048527
00003B7D  3E                ds
00003B7E  3E                ds
00003B7F  8F                db 0x8f
00003B80  A856              test al,0x56
00003B82  19BF36483E3E      sbb [rdi+0x3e3e4836],edi
00003B88  F3BF12483E3E      rep mov edi,0x3e3e4812
00003B8E  19BF12483E3E      sbb [rdi+0x3e3e4812],edi
00003B94  CF                iret
00003B95  10CB              adc bl,cl
00003B97  95                xchg eax,ebp
00003B98  6593              gs xchg eax,ebx
00003B9A  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003BA1  136E93            adc ebp,[rsi-0x6d]
00003BA4  BFC2423E3E        mov edi,0x3e3e42c2
00003BA9  56                push rsi
00003BAA  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003BB3  C2423E            ret 0x3e42
00003BB6  3E3E121CA6        adc bl,[ds:rsi]
00003BBB  213E              and [rsi],edi
00003BBD  3E3E331F          xor ebx,[ds:rdi]
00003BC1  2E3E3E56          ds push rsi
00003BC5  17                db 0x17
00003BC6  FF                db 0xff
00003BC7  7A56              jpe 0x3c1f
00003BC9  196F16            sbb [rdi+0x16],ebp
00003BCC  42                rex.x
00003BCD  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003BD3  88FF              mov bh,bh
00003BD5  2D3EF5BFC2        sub eax,0xc2bff53e
00003BDA  42                rex.x
00003BDB  3E3E3E3E3E3E56    ds push rsi
00003BE2  17                db 0x17
00003BE3  FF                db 0xff
00003BE4  7A56              jpe 0x3c3c
00003BE6  93                xchg eax,ebx
00003BE7  BFB6043E3E        mov edi,0x3e3e04b6
00003BEC  F5                cmc
00003BED  BFC2423E3E        mov edi,0x3e3e42c2
00003BF2  3E3E3E3EF5        ds cmc
00003BF7  BF62483E3E        mov edi,0x3e3e4862
00003BFC  9B3E3E3E56        ds wait push rsi
00003C01  F5                cmc
00003C02  BF86483E3E        mov edi,0x3e3e4886
00003C07  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003C10  D5                db 0xd5
00003C11  043E              add al,0x3e
00003C13  3E196F62          sbb [ds:rdi+0x62],ebp
00003C17  48                rex.w
00003C18  3E3EF34493        ds rep xchg eax,ebx
00003C1D  6E                outsb
00003C1E  B37E              mov bl,0x7e
00003C20  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003C24  93                xchg eax,ebx
00003C25  BF62483E3E        mov edi,0x3e3e4862
00003C2A  19BF62483E3E      sbb [rdi+0x3e3e4862],edi
00003C30  DB                db 0xdb
00003C31  B621              mov dh,0x21
00003C33  AB                stosd
00003C34  BF62483E3E        mov edi,0x3e3e4862
00003C39  56                push rsi
00003C3A  19BF86483E3E      sbb [rdi+0x3e3e4886],edi
00003C40  56                push rsi
00003C41  17                db 0x17
00003C42  EE                out dx,al
00003C43  9B56              wait push rsi
00003C45  93                xchg eax,ebx
00003C46  6F                outsd
00003C47  86483E            xchg cl,[rax+0x3e]
00003C4A  3E56              ds push rsi
00003C4C  196FB6            sbb [rdi-0x4a],ebp
00003C4F  043E              add al,0x3e
00003C51  3E56              ds push rsi
00003C53  9B6E              wait outsb
00003C55  0DD83E16BF        or eax,0xbf163ed8
00003C5A  D5                db 0xd5
00003C5B  043E              add al,0x3e
00003C5D  3EBE27D5043E      ds mov esi,0x3e04d527
00003C63  3E                ds
00003C64  3E                ds
00003C65  8F                db 0x8f
00003C66  A856              test al,0x56
00003C68  19BF86483E3E      sbb [rdi+0x3e3e4886],edi
00003C6E  F3BF62483E3E      rep mov edi,0x3e3e4862
00003C74  19BF62483E3E      sbb [rdi+0x3e3e4862],edi
00003C7A  CF                iret
00003C7B  CE                db 0xce
00003C7C  AA                stosb
00003C7D  7BB2              jpo 0x3c31
00003C7F  93                xchg eax,ebx
00003C80  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003C87  136E93            adc ebp,[rsi-0x6d]
00003C8A  BFC2423E3E        mov edi,0x3e3e42c2
00003C8F  56                push rsi
00003C90  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003C99  C2423E            ret 0x3e42
00003C9C  3E3E121CA6        adc bl,[ds:rsi]
00003CA1  213E              and [rsi],edi
00003CA3  3E3E33DD          ds xor ebx,ebp
00003CA7  0D3E3E5617        or eax,0x17563e3e
00003CAC  FF                db 0xff
00003CAD  7A56              jpe 0x3d05
00003CAF  196F16            sbb [rdi+0x16],ebp
00003CB2  42                rex.x
00003CB3  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003CB9  88FF              mov bh,bh
00003CBB  2D3EF5BFC2        sub eax,0xc2bff53e
00003CC0  42                rex.x
00003CC1  3E3E3E3E3E3E56    ds push rsi
00003CC8  17                db 0x17
00003CC9  FF                db 0xff
00003CCA  7A56              jpe 0x3d22
00003CCC  93                xchg eax,ebx
00003CCD  BF06043E3E        mov edi,0x3e3e0406
00003CD2  F5                cmc
00003CD3  BFC2423E3E        mov edi,0x3e3e42c2
00003CD8  3E3E3E3EF5        ds cmc
00003CDD  BF32483E3E        mov edi,0x3e3e4832
00003CE2  9B3E3E3E56        ds wait push rsi
00003CE7  F5                cmc
00003CE8  BF56483E3E        mov edi,0x3e3e4856
00003CED  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003CF6  25043E3E19        and eax,0x193e3e04
00003CFB  6F                outsd
00003CFC  32483E            xor cl,[rax+0x3e]
00003CFF  3EF34493          ds rep xchg eax,ebx
00003D03  6E                outsb
00003D04  B37E              mov bl,0x7e
00003D06  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003D0A  93                xchg eax,ebx
00003D0B  BF32483E3E        mov edi,0x3e3e4832
00003D10  19BF32483E3E      sbb [rdi+0x3e3e4832],edi
00003D16  DB                db 0xdb
00003D17  B621              mov dh,0x21
00003D19  AB                stosd
00003D1A  BF32483E3E        mov edi,0x3e3e4832
00003D1F  56                push rsi
00003D20  19BF56483E3E      sbb [rdi+0x3e3e4856],edi
00003D26  56                push rsi
00003D27  17                db 0x17
00003D28  EE                out dx,al
00003D29  9B56              wait push rsi
00003D2B  93                xchg eax,ebx
00003D2C  6F                outsd
00003D2D  56                push rsi
00003D2E  48                rex.w
00003D2F  3E3E56            ds push rsi
00003D32  196F06            sbb [rdi+0x6],ebp
00003D35  043E              add al,0x3e
00003D37  3E56              ds push rsi
00003D39  9B6E              wait outsb
00003D3B  0DD83E16BF        or eax,0xbf163ed8
00003D40  25043E3EBE        and eax,0xbe3e3e04
00003D45  27                db 0x27
00003D46  25043E3E3E        and eax,0x3e3e3e04
00003D4B  8F                db 0x8f
00003D4C  A856              test al,0x56
00003D4E  19BF56483E3E      sbb [rdi+0x3e3e4856],edi
00003D54  F3BF32483E3E      rep mov edi,0x3e3e4832
00003D5A  19BF32483E3E      sbb [rdi+0x3e3e4832],edi
00003D60  CF                iret
00003D61  E77C              out 0x7c,eax
00003D63  1921              sbb [rcx],esp
00003D65  93                xchg eax,ebx
00003D66  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003D6D  136E93            adc ebp,[rsi-0x6d]
00003D70  BFC2423E3E        mov edi,0x3e3e42c2
00003D75  56                push rsi
00003D76  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003D7F  C2423E            ret 0x3e42
00003D82  3E3E121CA6        adc bl,[ds:rsi]
00003D87  213E              and [rsi],edi
00003D89  3E3E3383C03E3E56  xor eax,[ds:rbx+0x563e3ec0]
00003D91  17                db 0x17
00003D92  FF                db 0xff
00003D93  7A56              jpe 0x3deb
00003D95  196F16            sbb [rdi+0x16],ebp
00003D98  42                rex.x
00003D99  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003D9F  88FF              mov bh,bh
00003DA1  2D3EF5BFC2        sub eax,0xc2bff53e
00003DA6  42                rex.x
00003DA7  3E3E3E3E3E3E56    ds push rsi
00003DAE  17                db 0x17
00003DAF  FF                db 0xff
00003DB0  7A56              jpe 0x3e08
00003DB2  93                xchg eax,ebx
00003DB3  BFD6043E3E        mov edi,0x3e3e04d6
00003DB8  F5                cmc
00003DB9  BFC2423E3E        mov edi,0x3e3e42c2
00003DBE  3E3E3E3EF5        ds cmc
00003DC3  BF02483E3E        mov edi,0x3e3e4802
00003DC8  9B3E3E3E56        ds wait push rsi
00003DCD  F5                cmc
00003DCE  BF26483E3E        mov edi,0x3e3e4826
00003DD3  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003DDC  F5                cmc
00003DDD  043E              add al,0x3e
00003DDF  3E196F02          sbb [ds:rdi+0x2],ebp
00003DE3  48                rex.w
00003DE4  3E3EF34493        ds rep xchg eax,ebx
00003DE9  6E                outsb
00003DEA  B37E              mov bl,0x7e
00003DEC  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003DF0  93                xchg eax,ebx
00003DF1  BF02483E3E        mov edi,0x3e3e4802
00003DF6  19BF02483E3E      sbb [rdi+0x3e3e4802],edi
00003DFC  DB                db 0xdb
00003DFD  B621              mov dh,0x21
00003DFF  AB                stosd
00003E00  BF02483E3E        mov edi,0x3e3e4802
00003E05  56                push rsi
00003E06  19BF26483E3E      sbb [rdi+0x3e3e4826],edi
00003E0C  56                push rsi
00003E0D  17                db 0x17
00003E0E  EE                out dx,al
00003E0F  9B56              wait push rsi
00003E11  93                xchg eax,ebx
00003E12  6F                outsd
00003E13  26                es
00003E14  48                rex.w
00003E15  3E3E56            ds push rsi
00003E18  196FD6            sbb [rdi-0x2a],ebp
00003E1B  043E              add al,0x3e
00003E1D  3E56              ds push rsi
00003E1F  9B6E              wait outsb
00003E21  0DD83E16BF        or eax,0xbf163ed8
00003E26  F5                cmc
00003E27  043E              add al,0x3e
00003E29  3EBE27F5043E      ds mov esi,0x3e04f527
00003E2F  3E                ds
00003E30  3E                ds
00003E31  8F                db 0x8f
00003E32  A856              test al,0x56
00003E34  19BF26483E3E      sbb [rdi+0x3e3e4826],edi
00003E3A  F3BF02483E3E      rep mov edi,0x3e3e4802
00003E40  19BF02483E3E      sbb [rdi+0x3e3e4802],edi
00003E46  CF                iret
00003E47  C05C54EF93        rcr byte [rsp+rdx*2-0x11],byte 0x93
00003E4C  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003E53  136E93            adc ebp,[rsi-0x6d]
00003E56  BFC2423E3E        mov edi,0x3e3e42c2
00003E5B  56                push rsi
00003E5C  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003E65  C2423E            ret 0x3e42
00003E68  3E3E121CA6        adc bl,[ds:rsi]
00003E6D  213E              and [rsi],edi
00003E6F  3E3E33F1          ds xor esi,ecx
00003E73  97                xchg eax,edi
00003E74  3E3E56            ds push rsi
00003E77  17                db 0x17
00003E78  FF                db 0xff
00003E79  7A56              jpe 0x3ed1
00003E7B  196F16            sbb [rdi+0x16],ebp
00003E7E  42                rex.x
00003E7F  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003E85  88FF              mov bh,bh
00003E87  2D3EF5BFC2        sub eax,0xc2bff53e
00003E8C  42                rex.x
00003E8D  3E3E3E3E3E3E56    ds push rsi
00003E94  17                db 0x17
00003E95  FF                db 0xff
00003E96  7A56              jpe 0x3eee
00003E98  93                xchg eax,ebx
00003E99  BFA6043E3E        mov edi,0x3e3e04a6
00003E9E  F5                cmc
00003E9F  BFC2423E3E        mov edi,0x3e3e42c2
00003EA4  3E3E3E3EF5        ds cmc
00003EA9  BF52483E3E        mov edi,0x3e3e4852
00003EAE  9B3E3E3E56        ds wait push rsi
00003EB3  F5                cmc
00003EB4  BF76483E3E        mov edi,0x3e3e4876
00003EB9  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003EC2  C5                db 0xc5
00003EC3  043E              add al,0x3e
00003EC5  3E196F52          sbb [ds:rdi+0x52],ebp
00003EC9  48                rex.w
00003ECA  3E3EF34493        ds rep xchg eax,ebx
00003ECF  6E                outsb
00003ED0  B37E              mov bl,0x7e
00003ED2  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00003ED6  93                xchg eax,ebx
00003ED7  BF52483E3E        mov edi,0x3e3e4852
00003EDC  19BF52483E3E      sbb [rdi+0x3e3e4852],edi
00003EE2  DB                db 0xdb
00003EE3  B621              mov dh,0x21
00003EE5  AB                stosd
00003EE6  BF52483E3E        mov edi,0x3e3e4852
00003EEB  56                push rsi
00003EEC  19BF76483E3E      sbb [rdi+0x3e3e4876],edi
00003EF2  56                push rsi
00003EF3  17                db 0x17
00003EF4  EE                out dx,al
00003EF5  9B56              wait push rsi
00003EF7  93                xchg eax,ebx
00003EF8  6F                outsd
00003EF9  7648              jna 0x3f43
00003EFB  3E3E56            ds push rsi
00003EFE  196FA6            sbb [rdi-0x5a],ebp
00003F01  043E              add al,0x3e
00003F03  3E56              ds push rsi
00003F05  9B6E              wait outsb
00003F07  0DD83E16BF        or eax,0xbf163ed8
00003F0C  C5                db 0xc5
00003F0D  043E              add al,0x3e
00003F0F  3EBE27C5043E      ds mov esi,0x3e04c527
00003F15  3E                ds
00003F16  3E                ds
00003F17  8F                db 0x8f
00003F18  A856              test al,0x56
00003F1A  19BF76483E3E      sbb [rdi+0x3e3e4876],edi
00003F20  F3BF52483E3E      rep mov edi,0x3e3e4852
00003F26  19BF52483E3E      sbb [rdi+0x3e3e4852],edi
00003F2C  CF                iret
00003F2D  17                db 0x17
00003F2E  51                push rcx
00003F2F  30D6              xor dh,dl
00003F31  93                xchg eax,ebx
00003F32  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00003F39  136E93            adc ebp,[rsi-0x6d]
00003F3C  BFC2423E3E        mov edi,0x3e3e42c2
00003F41  56                push rsi
00003F42  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00003F4B  C2423E            ret 0x3e42
00003F4E  3E3E121CA6        adc bl,[ds:rsi]
00003F53  213E              and [rsi],edi
00003F55  3E3E3317          xor edx,[ds:rdi]
00003F59  DA3E              fidivr dword [rsi]
00003F5B  3E56              ds push rsi
00003F5D  17                db 0x17
00003F5E  FF                db 0xff
00003F5F  7A56              jpe 0x3fb7
00003F61  196F16            sbb [rdi+0x16],ebp
00003F64  42                rex.x
00003F65  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00003F6B  88FF              mov bh,bh
00003F6D  2D3EF5BFC2        sub eax,0xc2bff53e
00003F72  42                rex.x
00003F73  3E3E3E3E3E3E56    ds push rsi
00003F7A  17                db 0x17
00003F7B  FF                db 0xff
00003F7C  7A56              jpe 0x3fd4
00003F7E  93                xchg eax,ebx
00003F7F  BFF6043E3E        mov edi,0x3e3e04f6
00003F84  F5                cmc
00003F85  BFC2423E3E        mov edi,0x3e3e42c2
00003F8A  3E3E3E3EF5        ds cmc
00003F8F  BFA2483E3E        mov edi,0x3e3e48a2
00003F94  9B3E3E3E56        ds wait push rsi
00003F99  F5                cmc
00003F9A  BFC6483E3E        mov edi,0x3e3e48c6
00003F9F  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00003FA8  15043E3E19        adc eax,0x193e3e04
00003FAD  6F                outsd
00003FAE  A2483E3EF344936E  mov [qword 0xb36e9344f33e3e48],al
         -B3
00003FB7  7E83              jng 0x3f3c
00003FB9  5B                pop rbx
00003FBA  AB                stosd
00003FBB  3E93              ds xchg eax,ebx
00003FBD  BFA2483E3E        mov edi,0x3e3e48a2
00003FC2  19BFA2483E3E      sbb [rdi+0x3e3e48a2],edi
00003FC8  DB                db 0xdb
00003FC9  B621              mov dh,0x21
00003FCB  AB                stosd
00003FCC  BFA2483E3E        mov edi,0x3e3e48a2
00003FD1  56                push rsi
00003FD2  19BFC6483E3E      sbb [rdi+0x3e3e48c6],edi
00003FD8  56                push rsi
00003FD9  17                db 0x17
00003FDA  EE                out dx,al
00003FDB  9B56              wait push rsi
00003FDD  93                xchg eax,ebx
00003FDE  6F                outsd
00003FDF  C6                db 0xc6
00003FE0  48                rex.w
00003FE1  3E3E56            ds push rsi
00003FE4  196FF6            sbb [rdi-0xa],ebp
00003FE7  043E              add al,0x3e
00003FE9  3E56              ds push rsi
00003FEB  9B6E              wait outsb
00003FED  0DD83E16BF        or eax,0xbf163ed8
00003FF2  15043E3EBE        adc eax,0xbe3e3e04
00003FF7  27                db 0x27
00003FF8  15043E3E3E        adc eax,0x3e3e3e04
00003FFD  8F                db 0x8f
00003FFE  A856              test al,0x56
00004000  19BFC6483E3E      sbb [rdi+0x3e3e48c6],edi
00004006  F3BFA2483E3E      rep mov edi,0x3e3e48a2
0000400C  19BFA2483E3E      sbb [rdi+0x3e3e48a2],edi
00004012  CF                iret
00004013  3D50D3DB93        cmp eax,0x93dbd350
00004018  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
0000401F  136E93            adc ebp,[rsi-0x6d]
00004022  BFC2423E3E        mov edi,0x3e3e42c2
00004027  56                push rsi
00004028  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004031  C2423E            ret 0x3e42
00004034  3E3E121CA6        adc bl,[ds:rsi]
00004039  213E              and [rsi],edi
0000403B  3E3E3315993E3E56  xor edx,[rel ds:0x563e7edc]
00004043  17                db 0x17
00004044  FF                db 0xff
00004045  7A56              jpe 0x409d
00004047  196F16            sbb [rdi+0x16],ebp
0000404A  42                rex.x
0000404B  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004051  88FF              mov bh,bh
00004053  2D3EF5BFC2        sub eax,0xc2bff53e
00004058  42                rex.x
00004059  3E3E3E3E3E3E56    ds push rsi
00004060  17                db 0x17
00004061  FF                db 0xff
00004062  7A56              jpe 0x40ba
00004064  93                xchg eax,ebx
00004065  BF46043E3E        mov edi,0x3e3e0446
0000406A  F5                cmc
0000406B  BFC2423E3E        mov edi,0x3e3e42c2
00004070  3E3E3E3EF5        ds cmc
00004075  BF72483E3E        mov edi,0x3e3e4872
0000407A  9B3E3E3E56        ds wait push rsi
0000407F  F5                cmc
00004080  BF96483E3E        mov edi,0x3e3e4896
00004085  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000408E  65043E            gs add al,0x3e
00004091  3E196F72          sbb [ds:rdi+0x72],ebp
00004095  48                rex.w
00004096  3E3EF34493        ds rep xchg eax,ebx
0000409B  6E                outsb
0000409C  B37E              mov bl,0x7e
0000409E  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000040A2  93                xchg eax,ebx
000040A3  BF72483E3E        mov edi,0x3e3e4872
000040A8  19BF72483E3E      sbb [rdi+0x3e3e4872],edi
000040AE  DB                db 0xdb
000040AF  B621              mov dh,0x21
000040B1  AB                stosd
000040B2  BF72483E3E        mov edi,0x3e3e4872
000040B7  56                push rsi
000040B8  19BF96483E3E      sbb [rdi+0x3e3e4896],edi
000040BE  56                push rsi
000040BF  17                db 0x17
000040C0  EE                out dx,al
000040C1  9B56              wait push rsi
000040C3  93                xchg eax,ebx
000040C4  6F                outsd
000040C5  96                xchg eax,esi
000040C6  48                rex.w
000040C7  3E3E56            ds push rsi
000040CA  196F46            sbb [rdi+0x46],ebp
000040CD  043E              add al,0x3e
000040CF  3E56              ds push rsi
000040D1  9B6E              wait outsb
000040D3  0DD83E16BF        or eax,0xbf163ed8
000040D8  65043E            gs add al,0x3e
000040DB  3EBE2765043E      ds mov esi,0x3e046527
000040E1  3E                ds
000040E2  3E                ds
000040E3  8F                db 0x8f
000040E4  A856              test al,0x56
000040E6  19BF96483E3E      sbb [rdi+0x3e3e4896],edi
000040EC  F3BF72483E3E      rep mov edi,0x3e3e4872
000040F2  19BF72483E3E      sbb [rdi+0x3e3e4872],edi
000040F8  CF                iret
000040F9  92                xchg eax,edx
000040FA  60                db 0x60
000040FB  F625934419BF      mul byte [rel 0xffffffffbf198594]
00004101  C2423E            ret 0x3e42
00004104  3E136E93          adc ebp,[ds:rsi-0x6d]
00004108  BFC2423E3E        mov edi,0x3e3e42c2
0000410D  56                push rsi
0000410E  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004117  C2423E            ret 0x3e42
0000411A  3E3E121CA6        adc bl,[ds:rsi]
0000411F  213E              and [rsi],edi
00004121  3E3E33DB          ds xor ebx,ebx
00004125  1C3E              sbb al,0x3e
00004127  3E56              ds push rsi
00004129  17                db 0x17
0000412A  FF                db 0xff
0000412B  7A56              jpe 0x4183
0000412D  196F16            sbb [rdi+0x16],ebp
00004130  42                rex.x
00004131  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004137  88FF              mov bh,bh
00004139  2D3EF5BFC2        sub eax,0xc2bff53e
0000413E  42                rex.x
0000413F  3E3E3E3E3E3E56    ds push rsi
00004146  17                db 0x17
00004147  FF                db 0xff
00004148  7A56              jpe 0x41a0
0000414A  93                xchg eax,ebx
0000414B  BF16043E3E        mov edi,0x3e3e0416
00004150  F5                cmc
00004151  BFC2423E3E        mov edi,0x3e3e42c2
00004156  3E3E3E3EF5        ds cmc
0000415B  BF42483E3E        mov edi,0x3e3e4842
00004160  9B3E3E3E56        ds wait push rsi
00004165  F5                cmc
00004166  BF663F3E3E        mov edi,0x3e3e3f66
0000416B  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00004174  35043E3E19        xor eax,0x193e3e04
00004179  6F                outsd
0000417A  42                rex.x
0000417B  48                rex.w
0000417C  3E3EF34493        ds rep xchg eax,ebx
00004181  6E                outsb
00004182  B37E              mov bl,0x7e
00004184  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004188  93                xchg eax,ebx
00004189  BF42483E3E        mov edi,0x3e3e4842
0000418E  19BF42483E3E      sbb [rdi+0x3e3e4842],edi
00004194  DB                db 0xdb
00004195  B621              mov dh,0x21
00004197  AB                stosd
00004198  BF42483E3E        mov edi,0x3e3e4842
0000419D  56                push rsi
0000419E  19BF663F3E3E      sbb [rdi+0x3e3e3f66],edi
000041A4  56                push rsi
000041A5  17                db 0x17
000041A6  EE                out dx,al
000041A7  9B56              wait push rsi
000041A9  93                xchg eax,ebx
000041AA  6F                outsd
000041AB  66                o16
000041AC  3F                db 0x3f
000041AD  3E3E56            ds push rsi
000041B0  196F16            sbb [rdi+0x16],ebp
000041B3  043E              add al,0x3e
000041B5  3E56              ds push rsi
000041B7  9B6E              wait outsb
000041B9  0DD83E16BF        or eax,0xbf163ed8
000041BE  35043E3EBE        xor eax,0xbe3e3e04
000041C3  27                db 0x27
000041C4  35043E3E3E        xor eax,0x3e3e3e04
000041C9  8F                db 0x8f
000041CA  A856              test al,0x56
000041CC  19BF663F3E3E      sbb [rdi+0x3e3e3f66],edi
000041D2  F3BF42483E3E      rep mov edi,0x3e3e4842
000041D8  19BF42483E3E      sbb [rdi+0x3e3e4842],edi
000041DE  CF                iret
000041DF  831396            adc dword [rbx],byte -0x6a
000041E2  FF934419BFC2      call [rbx-0x3d40e6bc]
000041E8  42                rex.x
000041E9  3E3E136E93        adc ebp,[ds:rsi-0x6d]
000041EE  BFC2423E3E        mov edi,0x3e3e42c2
000041F3  56                push rsi
000041F4  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000041FD  C2423E            ret 0x3e42
00004200  3E3E121CA6        adc bl,[ds:rsi]
00004205  213E              and [rsi],edi
00004207  3E3E3389133E3E56  xor ecx,[ds:rcx+0x563e3e13]
0000420F  17                db 0x17
00004210  FF                db 0xff
00004211  7A56              jpe 0x4269
00004213  196F16            sbb [rdi+0x16],ebp
00004216  42                rex.x
00004217  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000421D  88FF              mov bh,bh
0000421F  2D3EF5BFC2        sub eax,0xc2bff53e
00004224  42                rex.x
00004225  3E3E3E3E3E3E56    ds push rsi
0000422C  17                db 0x17
0000422D  FF                db 0xff
0000422E  7A56              jpe 0x4286
00004230  93                xchg eax,ebx
00004231  BFE6043E3E        mov edi,0x3e3e04e6
00004236  F5                cmc
00004237  BFC2423E3E        mov edi,0x3e3e42c2
0000423C  3E3E3E3EF5        ds cmc
00004241  BF923F3E3E        mov edi,0x3e3e3f92
00004246  9B3E3E3E56        ds wait push rsi
0000424B  F5                cmc
0000424C  BFB63F3E3E        mov edi,0x3e3e3fb6
00004251  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000425A  05043E3E19        add eax,0x193e3e04
0000425F  6F                outsd
00004260  92                xchg eax,edx
00004261  3F                db 0x3f
00004262  3E3EF34493        ds rep xchg eax,ebx
00004267  6E                outsb
00004268  B37E              mov bl,0x7e
0000426A  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000426E  93                xchg eax,ebx
0000426F  BF923F3E3E        mov edi,0x3e3e3f92
00004274  19BF923F3E3E      sbb [rdi+0x3e3e3f92],edi
0000427A  DB                db 0xdb
0000427B  B621              mov dh,0x21
0000427D  AB                stosd
0000427E  BF923F3E3E        mov edi,0x3e3e3f92
00004283  56                push rsi
00004284  19BFB63F3E3E      sbb [rdi+0x3e3e3fb6],edi
0000428A  56                push rsi
0000428B  17                db 0x17
0000428C  EE                out dx,al
0000428D  9B56              wait push rsi
0000428F  93                xchg eax,ebx
00004290  6F                outsd
00004291  B63F              mov dh,0x3f
00004293  3E3E56            ds push rsi
00004296  196FE6            sbb [rdi-0x1a],ebp
00004299  043E              add al,0x3e
0000429B  3E56              ds push rsi
0000429D  9B6E              wait outsb
0000429F  0DD83E16BF        or eax,0xbf163ed8
000042A4  05043E3EBE        add eax,0xbe3e3e04
000042A9  27                db 0x27
000042AA  05043E3E3E        add eax,0x3e3e3e04
000042AF  8F                db 0x8f
000042B0  A856              test al,0x56
000042B2  19BFB63F3E3E      sbb [rdi+0x3e3e3fb6],edi
000042B8  F3BF923F3E3E      rep mov edi,0x3e3e3f92
000042BE  19BF923F3E3E      sbb [rdi+0x3e3e3f92],edi
000042C4  CF                iret
000042C5  88D1              mov cl,dl
000042C7  B423              mov ah,0x23
000042C9  93                xchg eax,ebx
000042CA  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
000042D1  136E93            adc ebp,[rsi-0x6d]
000042D4  BFC2423E3E        mov edi,0x3e3e42c2
000042D9  56                push rsi
000042DA  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000042E3  C2423E            ret 0x3e42
000042E6  3E3E121CA6        adc bl,[ds:rsi]
000042EB  213E              and [rsi],edi
000042ED  3E3E330F          xor ecx,[ds:rdi]
000042F1  96                xchg eax,esi
000042F2  3E3E56            ds push rsi
000042F5  17                db 0x17
000042F6  FF                db 0xff
000042F7  7A56              jpe 0x434f
000042F9  196F16            sbb [rdi+0x16],ebp
000042FC  42                rex.x
000042FD  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004303  88FF              mov bh,bh
00004305  2D3EF5BFC2        sub eax,0xc2bff53e
0000430A  42                rex.x
0000430B  3E3E3E3E3E3E56    ds push rsi
00004312  17                db 0x17
00004313  FF                db 0xff
00004314  7A56              jpe 0x436c
00004316  93                xchg eax,ebx
00004317  BF36043E3E        mov edi,0x3e3e0436
0000431C  F5                cmc
0000431D  BFC2423E3E        mov edi,0x3e3e42c2
00004322  3E3E3E3EF5        ds cmc
00004327  BFE23F3E3E        mov edi,0x3e3e3fe2
0000432C  9B3E3E3E56        ds wait push rsi
00004331  F5                cmc
00004332  BF063F3E3E        mov edi,0x3e3e3f06
00004337  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00004340  55                push rbp
00004341  043E              add al,0x3e
00004343  3E196FE2          sbb [ds:rdi-0x1e],ebp
00004347  3F                db 0x3f
00004348  3E3EF34493        ds rep xchg eax,ebx
0000434D  6E                outsb
0000434E  B37E              mov bl,0x7e
00004350  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004354  93                xchg eax,ebx
00004355  BFE23F3E3E        mov edi,0x3e3e3fe2
0000435A  19BFE23F3E3E      sbb [rdi+0x3e3e3fe2],edi
00004360  DB                db 0xdb
00004361  B621              mov dh,0x21
00004363  AB                stosd
00004364  BFE23F3E3E        mov edi,0x3e3e3fe2
00004369  56                push rsi
0000436A  19BF063F3E3E      sbb [rdi+0x3e3e3f06],edi
00004370  56                push rsi
00004371  17                db 0x17
00004372  EE                out dx,al
00004373  9B56              wait push rsi
00004375  93                xchg eax,ebx
00004376  6F                outsd
00004377  06                db 0x06
00004378  3F                db 0x3f
00004379  3E3E56            ds push rsi
0000437C  196F36            sbb [rdi+0x36],ebp
0000437F  043E              add al,0x3e
00004381  3E56              ds push rsi
00004383  9B6E              wait outsb
00004385  0DD83E16BF        or eax,0xbf163ed8
0000438A  55                push rbp
0000438B  043E              add al,0x3e
0000438D  3EBE2755043E      ds mov esi,0x3e045527
00004393  3E                ds
00004394  3E                ds
00004395  8F                db 0x8f
00004396  A856              test al,0x56
00004398  19BF063F3E3E      sbb [rdi+0x3e3e3f06],edi
0000439E  F3BFE23F3E3E      rep mov edi,0x3e3e3fe2
000043A4  19BFE23F3E3E      sbb [rdi+0x3e3e3fe2],edi
000043AA  CF                iret
000043AB  4334DE            xor al,0xde
000043AE  89934419BFC2      mov [rbx-0x3d40e6bc],edx
000043B4  42                rex.x
000043B5  3E3E136E93        adc ebp,[ds:rsi-0x6d]
000043BA  BFC2423E3E        mov edi,0x3e3e42c2
000043BF  56                push rsi
000043C0  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000043C9  C2423E            ret 0x3e42
000043CC  3E3E121CA6        adc bl,[ds:rsi]
000043D1  213E              and [rsi],edi
000043D3  3E3E330D963E3E56  xor ecx,[rel ds:0x563e8271]
000043DB  17                db 0x17
000043DC  FF                db 0xff
000043DD  7A56              jpe 0x4435
000043DF  196F16            sbb [rdi+0x16],ebp
000043E2  42                rex.x
000043E3  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000043E9  88FF              mov bh,bh
000043EB  2D3EF5BFC2        sub eax,0xc2bff53e
000043F0  42                rex.x
000043F1  3E3E3E3E3E3E56    ds push rsi
000043F8  17                db 0x17
000043F9  FF                db 0xff
000043FA  7A56              jpe 0x4452
000043FC  93                xchg eax,ebx
000043FD  BF86043E3E        mov edi,0x3e3e0486
00004402  F5                cmc
00004403  BFC2423E3E        mov edi,0x3e3e42c2
00004408  3E3E3E3EF5        ds cmc
0000440D  BFB23F3E3E        mov edi,0x3e3e3fb2
00004412  9B3E3E3E56        ds wait push rsi
00004417  F5                cmc
00004418  BFD63F3E3E        mov edi,0x3e3e3fd6
0000441D  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00004426  A5                movsd
00004427  043E              add al,0x3e
00004429  3E196FB2          sbb [ds:rdi-0x4e],ebp
0000442D  3F                db 0x3f
0000442E  3E3EF34493        ds rep xchg eax,ebx
00004433  6E                outsb
00004434  B37E              mov bl,0x7e
00004436  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000443A  93                xchg eax,ebx
0000443B  BFB23F3E3E        mov edi,0x3e3e3fb2
00004440  19BFB23F3E3E      sbb [rdi+0x3e3e3fb2],edi
00004446  DB                db 0xdb
00004447  B621              mov dh,0x21
00004449  AB                stosd
0000444A  BFB23F3E3E        mov edi,0x3e3e3fb2
0000444F  56                push rsi
00004450  19BFD63F3E3E      sbb [rdi+0x3e3e3fd6],edi
00004456  56                push rsi
00004457  17                db 0x17
00004458  EE                out dx,al
00004459  9B56              wait push rsi
0000445B  93                xchg eax,ebx
0000445C  6F                outsd
0000445D  D6                salc
0000445E  3F                db 0x3f
0000445F  3E3E56            ds push rsi
00004462  196F86            sbb [rdi-0x7a],ebp
00004465  043E              add al,0x3e
00004467  3E56              ds push rsi
00004469  9B6E              wait outsb
0000446B  0DD83E16BF        or eax,0xbf163ed8
00004470  A5                movsd
00004471  043E              add al,0x3e
00004473  3EBE27A5043E      ds mov esi,0x3e04a527
00004479  3E                ds
0000447A  3E                ds
0000447B  8F                db 0x8f
0000447C  A856              test al,0x56
0000447E  19BFD63F3E3E      sbb [rdi+0x3e3e3fd6],edi
00004484  F3BFB23F3E3E      rep mov edi,0x3e3e3fb2
0000448A  19BFB23F3E3E      sbb [rdi+0x3e3e3fb2],edi
00004490  CF                iret
00004491  6B0838            imul ecx,[rax],byte +0x38
00004494  81934419BFC2423E  adc dword [rbx-0x3d40e6bc],0x133e3e42
         -3E13
0000449E  6E                outsb
0000449F  93                xchg eax,ebx
000044A0  BFC2423E3E        mov edi,0x3e3e42c2
000044A5  56                push rsi
000044A6  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
000044AF  C2423E            ret 0x3e42
000044B2  3E3E121CA6        adc bl,[ds:rsi]
000044B7  213E              and [rsi],edi
000044B9  3E3E33F3          ds xor esi,ebx
000044BD  B53E              mov ch,0x3e
000044BF  3E56              ds push rsi
000044C1  17                db 0x17
000044C2  FF                db 0xff
000044C3  7A56              jpe 0x451b
000044C5  196F16            sbb [rdi+0x16],ebp
000044C8  42                rex.x
000044C9  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000044CF  88FF              mov bh,bh
000044D1  2D3EF5BFC2        sub eax,0xc2bff53e
000044D6  42                rex.x
000044D7  3E3E3E3E3E3E56    ds push rsi
000044DE  17                db 0x17
000044DF  FF                db 0xff
000044E0  7A56              jpe 0x4538
000044E2  93                xchg eax,ebx
000044E3  BF56043E3E        mov edi,0x3e3e0456
000044E8  F5                cmc
000044E9  BFC2423E3E        mov edi,0x3e3e42c2
000044EE  3E3E3E3EF5        ds cmc
000044F3  BF823F3E3E        mov edi,0x3e3e3f82
000044F8  9B3E3E3E56        ds wait push rsi
000044FD  F5                cmc
000044FE  BFA63F3E3E        mov edi,0x3e3e3fa6
00004503  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000450C  7504              jnz 0x4512
0000450E  3E3E196F82        sbb [ds:rdi-0x7e],ebp
00004513  3F                db 0x3f
00004514  3E3EF34493        ds rep xchg eax,ebx
00004519  6E                outsb
0000451A  B37E              mov bl,0x7e
0000451C  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004520  93                xchg eax,ebx
00004521  BF823F3E3E        mov edi,0x3e3e3f82
00004526  19BF823F3E3E      sbb [rdi+0x3e3e3f82],edi
0000452C  DB                db 0xdb
0000452D  B621              mov dh,0x21
0000452F  AB                stosd
00004530  BF823F3E3E        mov edi,0x3e3e3f82
00004535  56                push rsi
00004536  19BFA63F3E3E      sbb [rdi+0x3e3e3fa6],edi
0000453C  56                push rsi
0000453D  17                db 0x17
0000453E  EE                out dx,al
0000453F  9B56              wait push rsi
00004541  93                xchg eax,ebx
00004542  6F                outsd
00004543  A6                cmpsb
00004544  3F                db 0x3f
00004545  3E3E56            ds push rsi
00004548  196F56            sbb [rdi+0x56],ebp
0000454B  043E              add al,0x3e
0000454D  3E56              ds push rsi
0000454F  9B6E              wait outsb
00004551  0DD83E16BF        or eax,0xbf163ed8
00004556  7504              jnz 0x455c
00004558  3E3EBE2775043E    ds mov esi,0x3e047527
0000455F  3E                ds
00004560  3E                ds
00004561  8F                db 0x8f
00004562  A856              test al,0x56
00004564  19BFA63F3E3E      sbb [rdi+0x3e3e3fa6],edi
0000456A  F3BF823F3E3E      rep mov edi,0x3e3e3f82
00004570  19BF823F3E3E      sbb [rdi+0x3e3e3f82],edi
00004576  CF                iret
00004577  57                push rdi
00004578  92                xchg eax,edx
00004579  B2E5              mov dl,0xe5
0000457B  93                xchg eax,ebx
0000457C  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00004583  136E93            adc ebp,[rsi-0x6d]
00004586  BFC2423E3E        mov edi,0x3e3e42c2
0000458B  56                push rsi
0000458C  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004595  C2423E            ret 0x3e42
00004598  3E3E121CA6        adc bl,[ds:rsi]
0000459D  213E              and [rsi],edi
0000459F  3E3E33E1          ds xor esp,ecx
000045A3  48                rex.w
000045A4  3E3E56            ds push rsi
000045A7  17                db 0x17
000045A8  FF                db 0xff
000045A9  7A56              jpe 0x4601
000045AB  196F16            sbb [rdi+0x16],ebp
000045AE  42                rex.x
000045AF  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
000045B5  88FF              mov bh,bh
000045B7  2D3EF5BFC2        sub eax,0xc2bff53e
000045BC  42                rex.x
000045BD  3E3E3E3E3E3E56    ds push rsi
000045C4  17                db 0x17
000045C5  FF                db 0xff
000045C6  7A56              jpe 0x461e
000045C8  93                xchg eax,ebx
000045C9  BF26043E3E        mov edi,0x3e3e0426
000045CE  F5                cmc
000045CF  BFC2423E3E        mov edi,0x3e3e42c2
000045D4  3E3E3E3EF5        ds cmc
000045D9  BFD23F3E3E        mov edi,0x3e3e3fd2
000045DE  9B3E3E3E56        ds wait push rsi
000045E3  F5                cmc
000045E4  BFF63F3E3E        mov edi,0x3e3e3ff6
000045E9  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000045F2  45043E            add al,0x3e
000045F5  3E196FD2          sbb [ds:rdi-0x2e],ebp
000045F9  3F                db 0x3f
000045FA  3E3EF34493        ds rep xchg eax,ebx
000045FF  6E                outsb
00004600  B37E              mov bl,0x7e
00004602  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004606  93                xchg eax,ebx
00004607  BFD23F3E3E        mov edi,0x3e3e3fd2
0000460C  19BFD23F3E3E      sbb [rdi+0x3e3e3fd2],edi
00004612  DB                db 0xdb
00004613  B621              mov dh,0x21
00004615  AB                stosd
00004616  BFD23F3E3E        mov edi,0x3e3e3fd2
0000461B  56                push rsi
0000461C  19BFF63F3E3E      sbb [rdi+0x3e3e3ff6],edi
00004622  56                push rsi
00004623  17                db 0x17
00004624  EE                out dx,al
00004625  9B56              wait push rsi
00004627  93                xchg eax,ebx
00004628  6F                outsd
00004629  F63F              idiv byte [rdi]
0000462B  3E3E56            ds push rsi
0000462E  196F26            sbb [rdi+0x26],ebp
00004631  043E              add al,0x3e
00004633  3E56              ds push rsi
00004635  9B6E              wait outsb
00004637  0DD83E16BF        or eax,0xbf163ed8
0000463C  45043E            add al,0x3e
0000463F  3EBE2745043E      ds mov esi,0x3e044527
00004645  3E                ds
00004646  3E                ds
00004647  8F                db 0x8f
00004648  A856              test al,0x56
0000464A  19BFF63F3E3E      sbb [rdi+0x3e3e3ff6],edi
00004650  F3BFD23F3E3E      rep mov edi,0x3e3e3fd2
00004656  19BFD23F3E3E      sbb [rdi+0x3e3e3fd2],edi
0000465C  CF                iret
0000465D  FD                std
0000465E  58                pop rax
0000465F  6E                outsb
00004660  13934419BFC2      adc edx,[rbx-0x3d40e6bc]
00004666  42                rex.x
00004667  3E3E136E93        adc ebp,[ds:rsi-0x6d]
0000466C  BFC2423E3E        mov edi,0x3e3e42c2
00004671  56                push rsi
00004672  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
0000467B  C2423E            ret 0x3e42
0000467E  3E3E121CA6        adc bl,[ds:rsi]
00004683  213E              and [rsi],edi
00004685  3E3E3307          xor eax,[ds:rdi]
00004689  3F                db 0x3f
0000468A  3E3E56            ds push rsi
0000468D  17                db 0x17
0000468E  FF                db 0xff
0000468F  7A56              jpe 0x46e7
00004691  196F16            sbb [rdi+0x16],ebp
00004694  42                rex.x
00004695  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000469B  88FF              mov bh,bh
0000469D  2D3EF5BFC2        sub eax,0xc2bff53e
000046A2  42                rex.x
000046A3  3E3E3E3E3E3E56    ds push rsi
000046AA  17                db 0x17
000046AB  FF                db 0xff
000046AC  7A56              jpe 0x4704
000046AE  93                xchg eax,ebx
000046AF  BF76043E3E        mov edi,0x3e3e0476
000046B4  F5                cmc
000046B5  BFC2423E3E        mov edi,0x3e3e42c2
000046BA  3E3E3E3EF5        ds cmc
000046BF  BF223F3E3E        mov edi,0x3e3e3f22
000046C4  9B3E3E3E56        ds wait push rsi
000046C9  F5                cmc
000046CA  BF463F3E3E        mov edi,0x3e3e3f46
000046CF  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000046D8  95                xchg eax,ebp
000046D9  043E              add al,0x3e
000046DB  3E196F22          sbb [ds:rdi+0x22],ebp
000046DF  3F                db 0x3f
000046E0  3E3EF34493        ds rep xchg eax,ebx
000046E5  6E                outsb
000046E6  B37E              mov bl,0x7e
000046E8  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000046EC  93                xchg eax,ebx
000046ED  BF223F3E3E        mov edi,0x3e3e3f22
000046F2  19BF223F3E3E      sbb [rdi+0x3e3e3f22],edi
000046F8  DB                db 0xdb
000046F9  B621              mov dh,0x21
000046FB  AB                stosd
000046FC  BF223F3E3E        mov edi,0x3e3e3f22
00004701  56                push rsi
00004702  19BF463F3E3E      sbb [rdi+0x3e3e3f46],edi
00004708  56                push rsi
00004709  17                db 0x17
0000470A  EE                out dx,al
0000470B  9B56              wait push rsi
0000470D  93                xchg eax,ebx
0000470E  6F                outsd
0000470F  46                rex.rx
00004710  3F                db 0x3f
00004711  3E3E56            ds push rsi
00004714  196F76            sbb [rdi+0x76],ebp
00004717  043E              add al,0x3e
00004719  3E56              ds push rsi
0000471B  9B6E              wait outsb
0000471D  0DD83E16BF        or eax,0xbf163ed8
00004722  95                xchg eax,ebp
00004723  043E              add al,0x3e
00004725  3EBE2795043E      ds mov esi,0x3e049527
0000472B  3E                ds
0000472C  3E                ds
0000472D  8F                db 0x8f
0000472E  A856              test al,0x56
00004730  19BF463F3E3E      sbb [rdi+0x3e3e3f46],edi
00004736  F3BF223F3E3E      rep mov edi,0x3e3e3f22
0000473C  19BF223F3E3E      sbb [rdi+0x3e3e3f22],edi
00004742  CF                iret
00004743  ED                in eax,dx
00004744  0539749344        add eax,0x44937439
00004749  19BFC2423E3E      sbb [rdi+0x3e3e42c2],edi
0000474F  136E93            adc ebp,[rsi-0x6d]
00004752  BFC2423E3E        mov edi,0x3e3e42c2
00004757  56                push rsi
00004758  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004761  C2423E            ret 0x3e42
00004764  3E3E121CA6        adc bl,[ds:rsi]
00004769  213E              and [rsi],edi
0000476B  3E3E3305423E3E56  xor eax,[rel ds:0x563e85b5]
00004773  17                db 0x17
00004774  FF                db 0xff
00004775  7A56              jpe 0x47cd
00004777  196F16            sbb [rdi+0x16],ebp
0000477A  42                rex.x
0000477B  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004781  88FF              mov bh,bh
00004783  2D3EF5BFC2        sub eax,0xc2bff53e
00004788  42                rex.x
00004789  3E3E3E3E3E3E56    ds push rsi
00004790  17                db 0x17
00004791  FF                db 0xff
00004792  7A56              jpe 0x47ea
00004794  93                xchg eax,ebx
00004795  BFC6043E3E        mov edi,0x3e3e04c6
0000479A  F5                cmc
0000479B  BFC2423E3E        mov edi,0x3e3e42c2
000047A0  3E3E3E3EF5        ds cmc
000047A5  BFF23F3E3E        mov edi,0x3e3e3ff2
000047AA  9B3E3E3E56        ds wait push rsi
000047AF  F5                cmc
000047B0  BF163F3E3E        mov edi,0x3e3e3f16
000047B5  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000047BE  E504              in eax,0x4
000047C0  3E3E196FF2        sbb [ds:rdi-0xe],ebp
000047C5  3F                db 0x3f
000047C6  3E3EF34493        ds rep xchg eax,ebx
000047CB  6E                outsb
000047CC  B37E              mov bl,0x7e
000047CE  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000047D2  93                xchg eax,ebx
000047D3  BFF23F3E3E        mov edi,0x3e3e3ff2
000047D8  19BFF23F3E3E      sbb [rdi+0x3e3e3ff2],edi
000047DE  DB                db 0xdb
000047DF  B621              mov dh,0x21
000047E1  AB                stosd
000047E2  BFF23F3E3E        mov edi,0x3e3e3ff2
000047E7  56                push rsi
000047E8  19BF163F3E3E      sbb [rdi+0x3e3e3f16],edi
000047EE  56                push rsi
000047EF  17                db 0x17
000047F0  EE                out dx,al
000047F1  9B56              wait push rsi
000047F3  93                xchg eax,ebx
000047F4  6F                outsd
000047F5  16                db 0x16
000047F6  3F                db 0x3f
000047F7  3E3E56            ds push rsi
000047FA  196FC6            sbb [rdi-0x3a],ebp
000047FD  043E              add al,0x3e
000047FF  3E56              ds push rsi
00004801  9B6E              wait outsb
00004803  0DD83E16BF        or eax,0xbf163ed8
00004808  E504              in eax,0x4
0000480A  3E3EBE27E5043E    ds mov esi,0x3e04e527
00004811  3E                ds
00004812  3E                ds
00004813  8F                db 0x8f
00004814  A856              test al,0x56
00004816  19BF163F3E3E      sbb [rdi+0x3e3e3f16],edi
0000481C  F3BFF23F3E3E      rep mov edi,0x3e3e3ff2
00004822  19BFF23F3E3E      sbb [rdi+0x3e3e3ff2],edi
00004828  CF                iret
00004829  2E91              cs xchg eax,ecx
0000482B  292A              sub [rdx],ebp
0000482D  93                xchg eax,ebx
0000482E  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00004835  136E93            adc ebp,[rsi-0x6d]
00004838  BFC2423E3E        mov edi,0x3e3e42c2
0000483D  56                push rsi
0000483E  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004847  C2423E            ret 0x3e42
0000484A  3E3E121CA6        adc bl,[ds:rsi]
0000484F  213E              and [rsi],edi
00004851  3E3E33CB          ds xor ecx,ebx
00004855  213E              and [rsi],edi
00004857  3E56              ds push rsi
00004859  17                db 0x17
0000485A  FF                db 0xff
0000485B  7A56              jpe 0x48b3
0000485D  196F16            sbb [rdi+0x16],ebp
00004860  42                rex.x
00004861  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004867  88FF              mov bh,bh
00004869  2D3EF5BFC2        sub eax,0xc2bff53e
0000486E  42                rex.x
0000486F  3E3E3E3E3E3E56    ds push rsi
00004876  17                db 0x17
00004877  FF                db 0xff
00004878  7A56              jpe 0x48d0
0000487A  93                xchg eax,ebx
0000487B  BF96043E3E        mov edi,0x3e3e0496
00004880  F5                cmc
00004881  BFC2423E3E        mov edi,0x3e3e42c2
00004886  3E3E3E3EF5        ds cmc
0000488B  BFC23F3E3E        mov edi,0x3e3e3fc2
00004890  9B3E3E3E56        ds wait push rsi
00004895  F5                cmc
00004896  BFE63F3E3E        mov edi,0x3e3e3fe6
0000489B  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
000048A4  B504              mov ch,0x4
000048A6  3E3E196FC2        sbb [ds:rdi-0x3e],ebp
000048AB  3F                db 0x3f
000048AC  3E3EF34493        ds rep xchg eax,ebx
000048B1  6E                outsb
000048B2  B37E              mov bl,0x7e
000048B4  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
000048B8  93                xchg eax,ebx
000048B9  BFC23F3E3E        mov edi,0x3e3e3fc2
000048BE  19BFC23F3E3E      sbb [rdi+0x3e3e3fc2],edi
000048C4  DB                db 0xdb
000048C5  B621              mov dh,0x21
000048C7  AB                stosd
000048C8  BFC23F3E3E        mov edi,0x3e3e3fc2
000048CD  56                push rsi
000048CE  19BFE63F3E3E      sbb [rdi+0x3e3e3fe6],edi
000048D4  56                push rsi
000048D5  17                db 0x17
000048D6  EE                out dx,al
000048D7  9B56              wait push rsi
000048D9  93                xchg eax,ebx
000048DA  6F                outsd
000048DB  E63F              out 0x3f,al
000048DD  3E3E56            ds push rsi
000048E0  196F96            sbb [rdi-0x6a],ebp
000048E3  043E              add al,0x3e
000048E5  3E56              ds push rsi
000048E7  9B6E              wait outsb
000048E9  0DD83E16BF        or eax,0xbf163ed8
000048EE  B504              mov ch,0x4
000048F0  3E3EBE27B5043E    ds mov esi,0x3e04b527
000048F7  3E                ds
000048F8  3E                ds
000048F9  8F                db 0x8f
000048FA  A856              test al,0x56
000048FC  19BFE63F3E3E      sbb [rdi+0x3e3e3fe6],edi
00004902  F3BFC23F3E3E      rep mov edi,0x3e3e3fc2
00004908  19BFC23F3E3E      sbb [rdi+0x3e3e3fc2],edi
0000490E  CF                iret
0000490F  38C7              cmp bh,al
00004911  10ED              adc ch,ch
00004913  93                xchg eax,ebx
00004914  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
0000491B  136E93            adc ebp,[rsi-0x6d]
0000491E  BFC2423E3E        mov edi,0x3e3e42c2
00004923  56                push rsi
00004924  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
0000492D  C2423E            ret 0x3e42
00004930  3E3E121CA6        adc bl,[ds:rsi]
00004935  213E              and [rsi],edi
00004937  3E3E33F9          ds xor edi,ecx
0000493B  043E              add al,0x3e
0000493D  3E56              ds push rsi
0000493F  17                db 0x17
00004940  FF                db 0xff
00004941  7A56              jpe 0x4999
00004943  196F16            sbb [rdi+0x16],ebp
00004946  42                rex.x
00004947  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
0000494D  88FF              mov bh,bh
0000494F  2D3EF5BFC2        sub eax,0xc2bff53e
00004954  42                rex.x
00004955  3E3E3E3E3E3E56    ds push rsi
0000495C  17                db 0x17
0000495D  FF                db 0xff
0000495E  7A56              jpe 0x49b6
00004960  93                xchg eax,ebx
00004961  BF669B3E3E        mov edi,0x3e3e9b66
00004966  F5                cmc
00004967  BFC2423E3E        mov edi,0x3e3e42c2
0000496C  3E3E3E3EF5        ds cmc
00004971  BF123F3E3E        mov edi,0x3e3e3f12
00004976  9B3E3E3E56        ds wait push rsi
0000497B  F5                cmc
0000497C  BF363F3E3E        mov edi,0x3e3e3f36
00004981  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
0000498A  859B3E3E196F      test [rbx+0x6f193e3e],ebx
00004990  123F              adc bh,[rdi]
00004992  3E3EF34493        ds rep xchg eax,ebx
00004997  6E                outsb
00004998  B37E              mov bl,0x7e
0000499A  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
0000499E  93                xchg eax,ebx
0000499F  BF123F3E3E        mov edi,0x3e3e3f12
000049A4  19BF123F3E3E      sbb [rdi+0x3e3e3f12],edi
000049AA  DB                db 0xdb
000049AB  B621              mov dh,0x21
000049AD  AB                stosd
000049AE  BF123F3E3E        mov edi,0x3e3e3f12
000049B3  56                push rsi
000049B4  19BF363F3E3E      sbb [rdi+0x3e3e3f36],edi
000049BA  56                push rsi
000049BB  17                db 0x17
000049BC  EE                out dx,al
000049BD  9B56              wait push rsi
000049BF  93                xchg eax,ebx
000049C0  6F                outsd
000049C1  36                ss
000049C2  3F                db 0x3f
000049C3  3E3E56            ds push rsi
000049C6  196F66            sbb [rdi+0x66],ebp
000049C9  9B3E3E56          ds wait push rsi
000049CD  9B6E              wait outsb
000049CF  0DD83E16BF        or eax,0xbf163ed8
000049D4  859B3E3EBE27      test [rbx+0x27be3e3e],ebx
000049DA  859B3E3E3E8F      test [rbx-0x70c1c1c2],ebx
000049E0  A856              test al,0x56
000049E2  19BF363F3E3E      sbb [rdi+0x3e3e3f36],edi
000049E8  F3BF123F3E3E      rep mov edi,0x3e3e3f12
000049EE  19BF123F3E3E      sbb [rdi+0x3e3e3f12],edi
000049F4  CF                iret
000049F5  C3                ret
000049F6  B7C2              mov bh,0xc2
000049F8  32934419BFC2      xor dl,[rbx-0x3d40e6bc]
000049FE  42                rex.x
000049FF  3E3E136E93        adc ebp,[ds:rsi-0x6d]
00004A04  BFC2423E3E        mov edi,0x3e3e42c2
00004A09  56                push rsi
00004A0A  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004A13  C2423E            ret 0x3e42
00004A16  3E3E121CA6        adc bl,[ds:rsi]
00004A1B  213E              and [rsi],edi
00004A1D  3E3E337F9B        xor edi,[ds:rdi-0x65]
00004A22  3E3E56            ds push rsi
00004A25  17                db 0x17
00004A26  FF                db 0xff
00004A27  7A56              jpe 0x4a7f
00004A29  196F16            sbb [rdi+0x16],ebp
00004A2C  42                rex.x
00004A2D  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004A33  88FF              mov bh,bh
00004A35  2D3EF5BFC2        sub eax,0xc2bff53e
00004A3A  42                rex.x
00004A3B  3E3E3E3E3E3E56    ds push rsi
00004A42  17                db 0x17
00004A43  FF                db 0xff
00004A44  7A56              jpe 0x4a9c
00004A46  93                xchg eax,ebx
00004A47  BFB69B3E3E        mov edi,0x3e3e9bb6
00004A4C  F5                cmc
00004A4D  BFC2423E3E        mov edi,0x3e3e42c2
00004A52  3E3E3E3EF5        ds cmc
00004A57  BF623F3E3E        mov edi,0x3e3e3f62
00004A5C  9B3E3E3E56        ds wait push rsi
00004A61  F5                cmc
00004A62  BF863F3E3E        mov edi,0x3e3e3f86
00004A67  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00004A70  D5                db 0xd5
00004A71  9B3E3E196F62      wait sbb [ds:rdi+0x62],ebp
00004A77  3F                db 0x3f
00004A78  3E3EF34493        ds rep xchg eax,ebx
00004A7D  6E                outsb
00004A7E  B37E              mov bl,0x7e
00004A80  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004A84  93                xchg eax,ebx
00004A85  BF623F3E3E        mov edi,0x3e3e3f62
00004A8A  19BF623F3E3E      sbb [rdi+0x3e3e3f62],edi
00004A90  DB                db 0xdb
00004A91  B621              mov dh,0x21
00004A93  AB                stosd
00004A94  BF623F3E3E        mov edi,0x3e3e3f62
00004A99  56                push rsi
00004A9A  19BF863F3E3E      sbb [rdi+0x3e3e3f86],edi
00004AA0  56                push rsi
00004AA1  17                db 0x17
00004AA2  EE                out dx,al
00004AA3  9B56              wait push rsi
00004AA5  93                xchg eax,ebx
00004AA6  6F                outsd
00004AA7  863F              xchg bh,[rdi]
00004AA9  3E3E56            ds push rsi
00004AAC  196FB6            sbb [rdi-0x4a],ebp
00004AAF  9B3E3E56          ds wait push rsi
00004AB3  9B6E              wait outsb
00004AB5  0DD83E16BF        or eax,0xbf163ed8
00004ABA  D5                db 0xd5
00004ABB  9B3E3EBE27D59B3E  ds wait mov esi,0x3e9bd527
00004AC3  3E                ds
00004AC4  3E                ds
00004AC5  8F                db 0x8f
00004AC6  A856              test al,0x56
00004AC8  19BF863F3E3E      sbb [rdi+0x3e3e3f86],edi
00004ACE  F3BF623F3E3E      rep mov edi,0x3e3e3f62
00004AD4  19BF623F3E3E      sbb [rdi+0x3e3e3f62],edi
00004ADA  CF                iret
00004ADB  46AD              lodsd
00004ADD  7E4F              jng 0x4b2e
00004ADF  93                xchg eax,ebx
00004AE0  4419BFC2423E3E    sbb [rdi+0x3e3e42c2],r15d
00004AE7  136E93            adc ebp,[rsi-0x6d]
00004AEA  BFC2423E3E        mov edi,0x3e3e42c2
00004AEF  56                push rsi
00004AF0  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004AF9  C2423E            ret 0x3e42
00004AFC  3E3E121CA6        adc bl,[ds:rsi]
00004B01  213E              and [rsi],edi
00004B03  3E3E33BD3E3E3E56  xor edi,[ds:rbp+0x563e3e3e]
00004B0B  17                db 0x17
00004B0C  FF                db 0xff
00004B0D  7A56              jpe 0x4b65
00004B0F  196F16            sbb [rdi+0x16],ebp
00004B12  42                rex.x
00004B13  3E3E1974932E      sbb [ds:rbx+rdx*4+0x2e],esi
00004B19  88FF              mov bh,bh
00004B1B  2D3EF5BFC2        sub eax,0xc2bff53e
00004B20  42                rex.x
00004B21  3E3E3E3E3E3E56    ds push rsi
00004B28  17                db 0x17
00004B29  FF                db 0xff
00004B2A  7A56              jpe 0x4b82
00004B2C  93                xchg eax,ebx
00004B2D  BF069B3E3E        mov edi,0x3e3e9b06
00004B32  F5                cmc
00004B33  BFC2423E3E        mov edi,0x3e3e42c2
00004B38  3E3E3E3EF5        ds cmc
00004B3D  BF323F3E3E        mov edi,0x3e3e3f32
00004B42  9B3E3E3E56        ds wait push rsi
00004B47  F5                cmc
00004B48  BF563F3E3E        mov edi,0x3e3e3f56
00004B4D  3E3E3E3EB93A0DD8  ds mov ecx,0xbfd80d3a
         -BF
00004B56  259B3E3E19        and eax,0x193e3e9b
00004B5B  6F                outsd
00004B5C  323F              xor bh,[rdi]
00004B5E  3E3EF34493        ds rep xchg eax,ebx
00004B63  6E                outsb
00004B64  B37E              mov bl,0x7e
00004B66  835BAB3E          sbb dword [rbx-0x55],byte +0x3e
00004B6A  93                xchg eax,ebx
00004B6B  BF323F3E3E        mov edi,0x3e3e3f32
00004B70  19BF323F3E3E      sbb [rdi+0x3e3e3f32],edi
00004B76  DB                db 0xdb
00004B77  B621              mov dh,0x21
00004B79  AB                stosd
00004B7A  BF323F3E3E        mov edi,0x3e3e3f32
00004B7F  56                push rsi
00004B80  19BF563F3E3E      sbb [rdi+0x3e3e3f56],edi
00004B86  56                push rsi
00004B87  17                db 0x17
00004B88  EE                out dx,al
00004B89  9B56              wait push rsi
00004B8B  93                xchg eax,ebx
00004B8C  6F                outsd
00004B8D  56                push rsi
00004B8E  3F                db 0x3f
00004B8F  3E3E56            ds push rsi
00004B92  196F06            sbb [rdi+0x6],ebp
00004B95  9B3E3E56          ds wait push rsi
00004B99  9B6E              wait outsb
00004B9B  0DD83E16BF        or eax,0xbf163ed8
00004BA0  259B3E3EBE        and eax,0xbe3e3e9b
00004BA5  27                db 0x27
00004BA6  259B3E3E3E        and eax,0x3e3e3e9b
00004BAB  8F                db 0x8f
00004BAC  A856              test al,0x56
00004BAE  19BF563F3E3E      sbb [rdi+0x3e3e3f56],edi
00004BB4  F3BF323F3E3E      rep mov edi,0x3e3e3f32
00004BBA  19BFC2423E3E      sbb [rdi+0x3e3e42c2],edi
00004BC0  99                cdq
00004BC1  BF323F3E3E        mov edi,0x3e3e3f32
00004BC6  93                xchg eax,ebx
00004BC7  BFC2423E3E        mov edi,0x3e3e42c2
00004BCC  56                push rsi
00004BCD  A1BF16423E3E21A1  mov eax,[qword 0x27a1213e3e4216bf]
         -27
00004BD6  C2423E            ret 0x3e42
00004BD9  3E3E12B5A6213E3E  adc dh,[ds:rbp+0x3e3e21a6]
00004BE1  3EB93FA63E3E      ds mov ecx,0x3e3ea63f
00004BE7  3E3E56            ds push rsi
00004BEA  1B826E963E3E      sbb eax,[rdx+0x3e3e966e]
00004BF0  07                db 0x07
00004BF1  61                db 0x61
00004BF2  AE                scasb
00004BF3  AE                scasb
00004BF4  AE                scasb
00004BF5  AE                scasb
00004BF6  AE                scasb
00004BF7  AE                scasb

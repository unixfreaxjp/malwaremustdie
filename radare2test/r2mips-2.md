### radare2 v0.10.5 test for Linux/MIPS ###

Reference issue: 

BigEndian support in the ELF parser #5305

https://github.com/radare/radare2/issues/5305

built was successfully tested as per Linux/PPC one here https://github.com/unixfreaxjp/dev/blob/master/r2ppc-7.md with a slight difference in warning during compilation. 
and below is an a bit thorough test result in __Linux/MIPS x32__ (debian) (big endian binaries)

The purpose of the test is for static analysis for big endian binaries in the Linux/MIPS native environmemt. 
We don't expect that the debugger and ESIL is working here.
```asm
################################
##                            ##
##       ENVIRONMENT          ##
##                            ##
################################

$ date
Sat Aug 20 04:23:14 UTC 2016
$ r2 -v
radare2 0.10.6-git 12153 @ linux-mips-32 git.0.10.5-15-ge0ee8cd
commit: e0ee8cdefa96cda4e3d7880561ffb4d94fedddd7 build: 2016-08-19
$ 
$ r2 /bin/ls
 -- Already up-to-date.
[0x00404380]> e asm.arch; e asm.bits ; i~bin
mips
32
file     /bin/ls
bintype  elf
binsz    118808
$ uname -a 
Linux mips 3.2.0-4-4kc-malta #1 Debian 3.2.51-1 mips GNU/Linux
```
## Straight to the running test :)

// check parser vs loaded bins..
```asm
################################
##                            ##
##       RUNNING TEST         ##
##                            ##
################################

[0x00404380]> b 0x100;px
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x00404380  03e0 0021 0411 0001 0020 0825 3c1c 0043  ...!..... .%<..C
0x00404390  279c 32f0 0000 f821 8f84 8018 8fa5 0000  '.2....!........
0x004043a0  27a6 0004 2401 fff8 03a1 e824 27bd ffe0  '...$......$'...
0x004043b0  8f87 801c 8f88 8020 0020 0825 afa8 0010  ....... . .%....
0x004043c0  afa2 0014 afbd 0018 8f99 804c 0020 0825  ...........L. .%
0x004043d0  0320 f809 0020 0825 1000 ffff 0020 0825  . ... .%..... .%
0x004043e0  27bd ffd0 afb3 0028 3c13 0043 9262 b370  '......(<..C.b.p
0x004043f0  afbf 002c afb2 0024 afb1 0020 1440 0018  ...,...$... .@..
0x00404400  afb0 001c 3c12 0043 3c11 0043 2652 aff4  ....<..C<..C&R..
0x00404410  2631 aff8 3c10 0043 0232 8823 8e02 b374  &1..<..C.2.#...t
0x00404420  0011 8883 2631 ffff 0051 182b 1060 000a  ....&1...Q.+.`..
0x00404430  2442 0001 0002 1880 0243 1821 8c79 0000  $B.......C.!.y..
0x00404440  0320 f809 ae02 b374 8e02 b374 0051 182b  . .....t...t.Q.+
0x00404450  1460 fff8 2442 0001 2402 0001 a262 b370  .`..$B..$....b.p
0x00404460  8fbf 002c 8fb3 0028 8fb2 0024 8fb1 0020  ...,...(...$... 
0x00404470  8fb0 001c 03e0 0008 27bd 0030 3c04 0043  ........'..0<..C
[0x00404380]> b 0x100;pd
            ;-- entry0:
            0x00404380      03e00021       move zero, ra
            0x00404384      04110001       bal 0x40438c
            0x00404388      00200825       move at, at
            0x0040438c      3c1c0043       lui gp, 0x43
            0x00404390      279c32f0       addiu gp, gp, 0x32f0
            0x00404394      0000f821       move ra, zero
            0x00404398      8f848018       lw a0, -0x7fe8(gp)          ; [0x42b308:4]=0x402080 loc._ftext
            0x0040439c      8fa50000       lw a1, (sp)
            0x004043a0      27a60004       addiu a2, sp, 4
            0x004043a4      2401fff8       addiu at, zero, -8
            0x004043a8      03a1e824       and sp, sp, at
            0x004043ac      27bdffe0       addiu sp, sp, -0x20
            0x004043b0      8f87801c       lw a3, -0x7fe4(gp)          ; [0x42b30c:4]=0x415d88 sym.__libc_csu_init
            0x004043b4      8f888020       lw t0, -0x7fe0(gp)          ; [0x42b310:4]=0x415d80 sym.__libc_csu_fini
            0x004043b8      00200825       move at, at
            0x004043bc      afa80010       sw t0, 0x10(sp)
            0x004043c0      afa20014       sw v0, 0x14(sp)
            0x004043c4      afbd0018       sw sp, 0x18(sp)
            0x004043c8      8f99804c       lw t9, -0x7fb4(gp)          ; [0x42b33c:4]=0x415ef0 sym.imp.__libc_start_main
            0x004043cc      00200825       move at, at
            0x004043d0      0320f809       jalr t9
            0x004043d4      00200825       move at, at
        `-> 0x004043d8      1000ffff       b 0x4043d8
            0x004043dc      00200825       move at, at
            0x004043e0      27bdffd0       addiu sp, sp, -0x30
            0x004043e4      afb30028       sw s3, 0x28(sp)
            0x004043e8      3c130043       lui s3, 0x43
            0x004043ec      9262b370       lbu v0, -0x4c90(s3)
            0x004043f0      afbf002c       sw ra, 0x2c(sp)
            0x004043f4      afb20024       sw s2, 0x24(sp)
            0x004043f8      afb10020       sw s1, 0x20(sp)
        ,=< 0x004043fc      14400018       bnez v0, 0x404460
        |   0x00404400      afb0001c       sw s0, 0x1c(sp)
        |   0x00404404      3c120043       lui s2, 0x43
        |   0x00404408      3c110043       lui s1, 0x43
        |   0x0040440c      2652aff4       addiu s2, s2, -0x500c
        |   0x00404410      2631aff8       addiu s1, s1, -0x5008
        |   0x00404414      3c100043       lui s0, 0x43
        |   0x00404418      02328823       subu s1, s1, s2
        |   0x0040441c      8e02b374       lw v0, -0x4c8c(s0)
        |   0x00404420      00118883       sra s1, s1, 2
        |   0x00404424      2631ffff       addiu s1, s1, -1
        |   0x00404428      0051182b       sltu v1, v0, s1
       ,==< 0x0040442c      1060000a       beqz v1, 0x404458
       ||   0x00404430      24420001       addiu v0, v0, 1
      .---> 0x00404434      00021880       sll v1, v0, 2
      |||   0x00404438      02431821       addu v1, s2, v1
      |||   0x0040443c      8c790000       lw t9, (v1)
      |||   0x00404440      0320f809       jalr t9
      |||   0x00404444      ae02b374       sw v0, -0x4c8c(s0)
      |||   0x00404448      8e02b374       lw v0, -0x4c8c(s0)
      |||   0x0040444c      0051182b       sltu v1, v0, s1
      `===< 0x00404450      1460fff8       bnez v1, 0x404434
       ||   0x00404454      24420001       addiu v0, v0, 1
       `--> 0x00404458      24020001       addiu v0, zero, 1
        |   0x0040445c      a262b370       sb v0, -0x4c90(s3)
        `-> 0x00404460      8fbf002c       lw ra, 0x2c(sp)
            0x00404464      8fb30028       lw s3, 0x28(sp)
            0x00404468      8fb20024       lw s2, 0x24(sp)
            0x0040446c      8fb10020       lw s1, 0x20(sp)
            0x00404470      8fb0001c       lw s0, 0x1c(sp)
            0x00404474      03e00008       jr ra
            0x00404478      27bd0030       addiu sp, sp, 0x30
            0x0040447c      3c040043       lui a0, 0x43
[0x00404380]> 
```
nice!

Now let's see the visual mode..
```asm
[0x00404380 14% 240 /bin/ls]> ?0;f tmp;s.. @ entry0
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x00000000  7f45 4c46 0102 0100 0000 0000 0000 0000  .ELF............
0x00000010  0002 0008 0000 0001 0040 4380 0000 0034  .........@C....4
0x00000020  0001 d148 1000 1005 0034 0020 000b 0028  ...H.....4. ...(
0x00000030  0023 0022 0000 0006 0000 0034 0040 0034  .#.".......4.@.4
zero 0x00000000       at 0x00000000       v0 0x00000000       v1 0x00000000
  a0 0x80204000       a1 0x464c457f       a2 0x00000000       a3 0x00000000
  t0 0x00000000       t1 0x00000000       t2 0x00000000       t3 0x00000000
  t4 0x00000000       t5 0x00000000       t6 0x00000000       t7 0x00000000
  s0 0x00000000       s1 0x00000000       s2 0x00000000       s3 0x00000000
  s4 0x00000000       s5 0x00000000       s6 0x00000000       s7 0x00000000
  t8 0x00000000       t9 0x00000000       k0 0x00000000       k1 0x00000000
  gp 0x004332f0       sp 0x00000000       fp 0x00000000       ra 0x00000000
  pc 0x004043a0        t 0x00000000
            ;-- entry0:
            0x00404380      03e00021       move zero, ra
            0x00404384      04110001       bal 0x40438c                ;[1]
            0x00404388      00200825       move at, at
            0x0040438c      3c1c0043       lui gp, 0x43
            0x00404390      279c32f0       addiu gp, gp, 0x32f0
            0x00404394      0000f821       move ra, zero
            0x00404398      8f848018       lw a0, -0x7fe8(gp)          ; [0x42b308:4]=0x402080 loc._ftext
            0x0040439c      8fa50000       lw a1, (sp)
            ;-- pc:
            0x004043a0      27a60004       addiu a2, sp, 4
            0x004043a4      2401fff8       addiu at, zero, -8
            0x004043a8      03a1e824       and sp, sp, at
            0x004043ac      27bdffe0       addiu sp, sp, -0x20
            0x004043b0      8f87801c       lw a3, -0x7fe4(gp)          ; [0x42b30c:4]=0x415d88 sym.__libc_csu_init
            0x004043b4      8f888020       lw t0, -0x7fe0(gp)          ; [0x42b310:4]=0x415d80 sym.__libc_csu_fini
            0x004043b8      00200825       move at, at
            0x004043bc      afa80010       sw t0, 0x10(sp)
               :
Press <enter> to return to Visual mode.    sw ra, 0x2c(sp)                                                                             
:> px @pc!0x0FF
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x004043b8  0020 0825 afa8 0010 afa2 0014 afbd 0018  . .%............
0x004043c8  8f99 804c 0020 0825 0320 f809 0020 0825  ...L. .%. ... .%
0x004043d8  1000 ffff 0020 0825 27bd ffd0 afb3 0028  ..... .%'......(
0x004043e8  3c13 0043 9262 b370 afbf 002c afb2 0024  <..C.b.p...,...$
   :
:> pd @pc!0x0FF
            ;-- pc:
            0x004043b8      00200825       move at, at
            0x004043bc      afa80010       sw t0, 0x10(sp)
            0x004043c0      afa20014       sw v0, 0x14(sp)
            0x004043c4      afbd0018       sw sp, 0x18(sp)
            0x004043c8      8f99804c       lw t9, -0x7fb4(gp)          ; [0x42b33c:4]=0x415ef0 sym.imp.__libc_start_main
            0x004043cc      00200825       move at, at
            0x004043d0      0320f809       jalr t9
            0x004043d4      00200825       move at, at
       `=-> 0x004043d8      1000ffff       b 0x4043d8
                :
```
Okay! this is fine, 

..Now vm for analysis test...
```asm
[0x00415d88]> aaaa
[x] Analyze all flags starting with sym. and entry0 (aa)
[x] Analyze len bytes of instructions for references (aar)
[x] Analyze function calls (aac)
[0x0040b820 esil_eq: invalid parametersences (aae)
0x0040b824 esil_eq: invalid parameters
0x0040b838 esil_eq: invalid parameters
0x0040b84c esil_eq: invalid parameters
0x0040b850 esil_eq: invalid parameters
0x0040b864 esil_eq: invalid parameters
0x0040b880 esil_add: invalid parameters
0x0040b884 esil_eq: invalid parameters
0x0040b89c esil_eq: invalid parameters
0x0040b8f4 esil_eq: invalid parameters
0x0040b904 esil_eq: invalid parameters
0x0040b91c esil_eq: invalid parameters
0x0040b930 esil_sub: dst is broken
0x0040ba4c esil_eq: invalid parameters
0x0040ba54 esil_add: invalid parameters
0x0040ba58 esil_eq: invalid parameters
0x0040ba64 esil_eq: invalid parameters
0x0040bfa0 esil_eq: invalid parameters
0x0040bfa8 esil_mul: invalid parameters
0x0040c000 esil_eq: invalid parameters
0x0040c00c esil_add: invalid parameters
0x0040c014 esil_eq: invalid parameters
0x0040c01c esil_mul: invalid parameters
0x0040c024 esil_eq: invalid parameters
0x0040c02c esil_add: invalid parameters
0x0040c390 esil_eq: invalid parameters
0x0040c3a0 esil_eq: invalid parameters
0x0040c3b0 esil_eq: invalid parameters
0x0040c8cc esil_eq: invalid parameters
0x0040c8d4 esil_mul: invalid parameters
0x0040c96c esil_eq: invalid parameters
0x0040c98c esil_mul: invalid parameters
0x0040c9b0 esil_eq: invalid parameters
0x0040c9b4 esil_mul: invalid parameters
0x0040c9bc esil_eq: invalid parameters
0x0040c9d4 esil_eq: invalid parameters
0x0040ca24 esil_eq: invalid parameters
0x0040ca2c esil_add: invalid parameters
0x0040ca34 esil_eq: invalid parameters
0x0040ca3c esil_add: invalid parameters
0x0040ca60 esil_eq: invalid parameters
0x0040ca64 esil_mul: invalid parameters
0x0040ca6c esil_mul: invalid parameters
0x0040ca70 esil_sub: dst is broken
0x0040ca88 esil_eq: invalid parameters
0x0040ca90 esil_add: invalid parameters
0x0040ca98 esil_eq: invalid parameters
0x0040caa0 esil_add: invalid parameters
0x0040cb98 esil_eq: invalid parameters
0x0040cba0 esil_mul: invalid parameters
0x0040cbe4 esil_eq: invalid parameters
0x0040cbec esil_mul: invalid parameters
0x0040cc0c esil_eq: invalid parameters
0x0040cc10 esil_eq: invalid parameters
0x0040cc14 esil_mul: invalid parameters
0x0040cc18 esil_mul: invalid parameters
0x0040cc20 esil_eq: invalid parameters
0x0040cc7c esil_eq: invalid parameters
0x0040cc84 esil_add: invalid parameters
0x0040cc8c esil_eq: invalid parameters
0x0040cc94 esil_add: invalid parameters
0x0040cc9c esil_eq: invalid parameters
0x0040cca0 esil_sub: dst is broken
0x0040ccb8 esil_eq: invalid parameters
0x0040ccc0 esil_add: invalid parameters
0x0040ccc8 esil_eq: invalid parameters
0x0040ccd0 esil_add: invalid parameters
0x0040cd00 esil_eq: invalid parameters
0x0040cd10 esil_eq: invalid parameters
0x0040cd68 esil_eq: invalid parameters
0x0040cd70 esil_eq: invalid parameters
0x0040cd74 esil_eq: invalid parameters
0x0040cda0 esil_eq: invalid parameters
0x0040ceb8 esil_eq: invalid parameters
0x0040cec0 esil_eq: invalid parameters
0x0040ced8 esil_mul: invalid parameters
0x0040cedc esil_eq: invalid parameters
0x0040cef0 esil_eq: invalid parameters
0x0040cefc esil_eq: invalid parameters
0x0040cf00 esil_mul: invalid parameters
0x0040cfa0 esil_eq: invalid parameters
0x0040cfa8 esil_mul: invalid parameters
0x0040d0c4 esil_eq: invalid parameters
0x0040d0c8 esil_eq: invalid parameters
0x0040d4a4 esil_eq: invalid parameters
0x0040d4ac esil_add: invalid parameters
0x004142a4 esil_eq: invalid parameters
0x004142a8 esil_eq: invalid parameters
0x004142ac esil_mul: invalid parameters
0x004142d8 esil_eq: invalid parameters
0x004142dc esil_eq: invalid parameters
0x004142e0 esil_mul: invalid parameters
0x004142e4 esil_sub: dst is broken
0x00414308 esil_sub: dst is broken
0x0041432c esil_eq: invalid parameters
0x00414330 esil_eq: invalid parameters
0x00414334 esil_add: invalid parameters
0x00414338 esil_eq: invalid parameters
0x0041433c esil_mul: invalid parameters
0x00414340 esil_sub: dst is broken
0x00414354 esil_sub: dst is broken
0x0041439c esil_eq: invalid parameters
0x004143a4 esil_mul: invalid parameters
0x004143b4 esil_add: invalid parameters
0x004143b8 esil_eq: invalid parameters
0x004143bc esil_eq: invalid parameters
0x004143c4 esil_add: invalid parameters
0x004143d0 esil_mul: invalid parameters
0x004143d4 esil_add: invalid parameters
0x004143dc esil_add: invalid parameters
[x] Emulate code to find computed references (aae)
[x] Analyze consecutive function (aat)
[aav: using from to 0x400000 0x4f0000
Using vmin 0x100000 and vmax 0x42bf70
aav: using from to 0x400000 0x4f0000
Using vmin 0x100000 and vmax 0x42bf70
[x] Analyze value pointers (aav)
[x] Constructing a function name for fcn.* and sym.func.* functions (aan)
```
## EDIT: aaaa probem also occured in osx.. unrelated new bug maybe had just spotted.

ESIL emulation is having problem, okay.

Let's be sure by following..
```asm
[0x7f250000]> e asm.emu; e asm.emuwrite
false
false
[0x7f250000]> e asm.emu=true; e asm.emuwrite=true
[0x7f250000]> e asm.emu; e asm.emuwrite
true
true
[0x7f250000]> aeim
[0x7f250000]> pd 10
            ;-- ra:
            ;-- pc:
            0x7f250000      ffffffff       invalid                    
            0x7f250004      ffffffff       invalid                    
            0x7f250008      ffffffff       invalid                    
            0x7f25000c      ffffffff       invalid                    
            0x7f250010      ffffffff       invalid                    
            0x7f250014      ffffffff       invalid                    
            0x7f250018      ffffffff       invalid                    
            0x7f25001c      ffffffff       invalid                    
            0x7f250020      ffffffff       invalid                    
            0x7f250024      ffffffff       invalid  
             :
```
I see, it is very "okay" and expected about ESIL, now let's make sure the nalysis -

itself is okay by checking if xrefs are there.. :)
```asm
[0x0040437c]> b 0x0FF;s sym.__libc_csu_init;px
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x00415d88  3c1c 0002 279c d568 0399 e021 27bd ffc8  <...'..h...!'...
0x00415d98  afbf 0034 afb5 0030 afb4 002c afb3 0028  ...4...0...,...(
0x00415da8  afb2 0024 afb1 0020 afb0 001c afbc 0010  ...$... ........
0x00415db8  8f99 802c 0080 9821 00a0 a021 0320 f809  ...,...!...!. ..
0x00415dc8  00c0 a821 8fbc 0010 0020 0825 8f91 8030  ...!..... .%...0
0x00415dd8  8f92 8030 0020 0825 0251 9023 0012 9083  ...0. .%.Q.#....
0x00415de8  1240 000a 0000 8021 8e39 0000 2610 0001  .@.....!.9..&...
0x00415df8  0260 2021 0280 2821 0320 f809 02a0 3021  .` !..(!. ....0!
0x00415e08  0212 102b 1440 fff8 2631 0004 8fbf 0034  ...+.@..&1.....4
0x00415e18  8fb5 0030 8fb4 002c 8fb3 0028 8fb2 0024  ...0...,...(...$
0x00415e28  8fb1 0020 8fb0 001c 03e0 0008 27bd 0038  ... ........'..8
0x00415e38  0020 0825 0020 0825 0000 0000 0000 0000  . .%. .%........
0x00415e48  3c19 0041 2739 5e50 3c1c 0002 279c d4a0  <..A'9^P<...'...
0x00415e58  0399 e021 8f82 8034 0020 0825 1040 0006  ...!...4. .%.@..
0x00415e68  0020 0825 8c46 0000 8f99 8048 0020 0825  . .%.F.....H. .%
0x00415e78  0320 0008 0000 2821 1000 fffb 0000 30    . ....(!......0

[0x00415d88]> pd 5
/ (fcn) sym.__libc_csu_init 176
|           ; arg int arg_10h @ sp+0x10
|           ; arg int arg_1ch @ sp+0x1c
|           ; arg int arg_20h @ sp+0x20
|           ; arg int arg_24h @ sp+0x24
|           ; arg int arg_28h @ sp+0x28
|           ; arg int arg_2ch @ sp+0x2c
|           ; arg int arg_30h @ sp+0x30
|           ; arg int arg_34h @ sp+0x34
|           ; UNKNOWN XREF from 0x00400b60 (unk)
|           ; UNKNOWN XREF from 0x0042b30c (unk)
|           ; DATA XREF from 0x004043b0 (entry0)
|           0x00415d88      3c1c0002       lui gp, 2
|           0x00415d8c      279cd568       addiu gp, gp, -0x2a98
|           0x00415d90      0399e021       addu gp, gp, t9
|           0x00415d94      27bdffc8       addiu sp, sp, -0x38
|           0x00415d98      afbf0034       sw ra, 0x34(sp)
```
Good!

Now let's see the "beloved" grepping "engine"...
```asm
√0x00417cbc string[20] "_s_home_page:___s___n"
0x00417cd0 string[14] "GNU_coreutils"
0x00417ce0 string[39] "http:__www.gnu.org_software_coreutils_"
0x00417d08 string[64] "General_help_using_GNU_software:__http:__www.gnu.org_gethelp____n"
0x00417d4c string[69] "Report__s_translation_bugs_to__http:__translationproject.org_team____n"
0x00417d94 string[65] "For_complete_documentation__run:_info_coreutils___s_invocation___n"
0x00417dd8 string[9] "full_iso"
0x00417de8 string[5] "vdir"
0x00417df0 string[7] "locale"
0x00417df8 string[18] "_usr_share_locale"
0x00417e0c string[14] "QUOTING_STYLE"
0x00417e1c string[65] "ignoring_invalid_value_of_environment_variable_QUOTING_STYLE:__s"
0x00417e60 string[14] "LS_BLOCK_SIZE"
0x00417e70 string[11] "BLOCK_SIZE"
0x00417e7c string[8] "COLUMNS"
0x00417e84 string[59] "ignoring_invalid_width_in_environment_variable_COLUMNS:__s"
0x00417ec0 string[8] "TABSIZE"
0x00417ec8 string[62] "ignoring_invalid_tab_size_in_environment_variable_TABSIZE:__s"
0x00417f08 string[44] "abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
0x00417f34 string[23] "invalid_line_width:__s"
0x00417f54 string[21] "invalid_tab_size:__s"
0x00417f6c string[7] "__sort"
0x00417f74 string[7] "__time"
0x00417f7c string[9] "__format"
0x00417f88 string[8] "__color"
  :
106 imports
havecode true
pic      false
canary   false
nx       false
crypto   false
va       true
intrp    /lib/ld.so.1
bintype  elf
class    ELF32
lang     c
arch     mips
bits     32
machine  MIPS R3000
os       linux
minopsz  4
maxopsz  4
pcalign  4
subsys   linux
endian   big
stripped true
static   false
linenum  false
lsyms    false
relocs   false
rpath    NONE
binsz    118808
[Imports]
ordinal=002 plt=0xffffffff bind=GLOBAL type=FUNC name=__ctype_toupper_loc
ordinal=003 plt=0xffffffff bind=GLOBAL type=FUNC name=fputs_unlocked
ordinal=004 plt=0xffffffff bind=GLOBAL type=FUNC name=getpwnam
ordinal=005 plt=0xffffffff bind=GLOBAL type=FUNC name=raise
ordinal=006 plt=0xffffffff bind=GLOBAL type=FUNC name=strstr
ordinal=008 plt=0xffffffff bind=GLOBAL type=FUNC name=strcmp
ordinal=009 plt=0xffffffff bind=GLOBAL type=FUNC name=__mempcpy_chk
ordinal=011 plt=0xffffffff bind=GLOBAL type=FUNC name=getpwuid
ordinal=012 plt=0xffffffff bind=GLOBAL type=FUNC name=fflush
ordinal=014 plt=0xffffffff bind=GLOBAL type=FUNC name=_exit
ordinal=015 plt=0xffffffff bind=GLOBAL type=FUNC name=sigprocmask
ordinal=016 plt=0xffffffff bind=GLOBAL type=FUNC name=dirfd
ordinal=017 plt=0xffffffff bind=GLOBAL type=FUNC name=wcwidth
ordinal=018 plt=0xffffffff bind=GLOBAL type=FUN
   :

Cs 274877906944 @ 0x00417d08
f str.Report__s_translation_bugs_to__http:__translationproject.org_team___n 298495834718 @ 0x00417d4c
Cs 296352743424 @ 0x00417d4c
f str.For_complete_documentation__run:_info_coreutils___s_invocation__n 281315965530 @ 0x00417d94
Cs 279172874240 @ 0x00417d94
f str.full_iso 40797796897 @ 0x00417dd8
Cs 38654705664 @ 0x00417dd8
f str.vdir 23617927709 @ 0x00417de8
Cs 21474836480 @ 0x00417de8
f str.locale 32207862303 @ 0x00417df0
Cs 30064771072 @ 0x00417df0
f str._usr_share_locale 79452502570 @ 0x00417df8
Cs 77309411328 @ 0x00417df8
f str.QUOTING_STYLE 62272633382 @ 0x00417e0c
Cs 60129542144 @ 0x00417e0c
f str.ignoring_invalid_value_of_environment_variable_QUOTING_STYLE:__s 281315965529 @ 0x00417e1c
Cs 279172874240 @ 0x00417e1c
f str.LS_BLOCK_SIZE 62272633382 @ 0x00417e60
Cs 60129542144 @ 0x00417e60
f str.BLOCK_SIZE 49387731491 @ 0x00417e70
Cs 47244640256 @ 0x00417e70
f str.COLUMNS 36502829600 @ 0x00417e7c
Cs 34359738368 @ 0x00417e7c
f str.ignoring_invalid_width_in_environment_variable_COLUMNS:__s 255546161747 @ 0x00417e84
Cs 253403070464 @ 0x00417e84
f str.TABSIZE 36502829600 @ 0x00417ec0
Cs 34359738368 @ 0x00417ec0
f str.ignoring_invalid_tab_size_in_environment_variable_TABSIZE:__s 268431063638 @ 0x00417ec8
Cs 266287972352 @ 0x00417ec8
f str.abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1
     :
```
Nice! 

At this point the ELF big endian parsing is completely FINE!! kudos!


## debugging test

Now debugging...note: don't expect this is enabled!
```asm
$ 
$ r2 -d /bin/ls       
Process with PID 18092 started...
attach 18092 18092
bin.baddr 0x00400000
Assuming filepath /bin/ls
asm.bits 32
 -- radare2 is WYSIWYF - what you see is what you fix
[0x77e49880]> ## Loaded?? Seriously????
[0x77e49880]> ## Hmm.. let'S see how it is loaded..
[0x77e49880]> !ps ax~radare2; !ps ax~r2
18084 pts/0    S+     0:00 /bin/sh /test/bin/r2 -d /bin/ls
18085 pts/0    S+     0:00 /bin/sh /test/radare2/env.sh /test/bin/prefix/radare2/ radare2 -d /bin/ls
18091 pts/0    S+     0:00 radare2 -d /bin/ls
18092 pts/0    t+     0:00 /bin/ls
[0x77e49880]> 
```
wow.. it looks loaded.. why??
```asm
[0x77e49880 240 /bin/ls]> ?0;f tmp;s.. @ pc
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x7ff40350  0000 0001 7ff4 085d 0000 0000 7ff4 0865  .......].......e
0x7ff40360  7ff4 0879 7ff4 0896 7ff4 08a0 7ff4 08a8  ...y............
0x7ff40370  7ff4 08db 7ff4 08eb 7ff4 08fd 7ff4 0910  ................
0x7ff40380  7ff4 0947 7ff4 0954 7ff4 095e 7ff4 099b  ...G...T...^....
zero 0x00000000       at 0x00000000       v0 0x00000000       v1 0x00000000
  a0 0x00000000       a1 0x00000000       a2 0x00000000       a3 0x00000000
  t0 0x00000000       t1 0x00000000       t2 0x00000000       t3 0x00000000
  t4 0x00000000       t5 0x00000000       t6 0x00000000       t7 0x00000000
  s0 0x55a2b820       s1 0x7fdff374       s2 0x559be038       s3 0x0078d87c
  s4 0x00430000       s5 0x00000002       s6 0x00430000       s7 0x00000014
  s8 0x00000000       s9 0x00000000       k0 0x00000000       k1 0x00000000
  gp 0x00000000       sp 0x7ff40350       fp 0x7fdfea00       ra 0x00000000
  pc 0x77e49880
            ;-- pc:
            0x77e49880      03e0c821       move t9, ra
            0x77e49884      04110001       bal 0x77e4988c              ;[1]
            0x77e49888      00200825       move at, at
            0x77e4988c      3c1c0004       lui gp, 4
            0x77e49890      279ca774       addiu gp, gp, -0x588c
            0x77e49894      039fe021       addu gp, gp, ra
            0x77e49898      0320f821       move ra, t9
            0x77e4989c      8f848018       lw a0, -0x7fe8(gp)
            0x77e498a0      00200825       move at, at
```
let's stepup jut to be sure..
```asm
[0x74000000 240 /bin/ls]> ?0;f tmp;s.. @ pc
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x7ff40350  0000 0001 7ff4 085d 0000 0000 7ff4 0865  .......].......e
0x7ff40360  7ff4 0879 7ff4 0896 7ff4 08a0 7ff4 08a8  ...y............
0x7ff40370  7ff4 08db 7ff4 08eb 7ff4 08fd 7ff4 0910  ................
0x7ff40380  7ff4 0947 7ff4 0954 7ff4 095e 7ff4 099b  ...G...T...^....
zero 0x00000000       at 0x00000000       v0 0x00000000       v1 0x00000000
  a0 0x00000000       a1 0x00000000       a2 0x00000000       a3 0x00000000
  t0 0x00000000       t1 0x00000000       t2 0x00000000       t3 0x00000000
  t4 0x00000000       t5 0x00000000       t6 0x00000000       t7 0x00000000
  s0 0x55a2b820       s1 0x7fdff374       s2 0x559be038       s3 0x0078d87c
  s4 0x00430000       s5 0x00000002       s6 0x00430000       s7 0x00000014
  s8 0x00000000       s9 0x00000000       k0 0x00000000       k1 0x00000000
  gp 0x00000000       sp 0x7ff40350       fp 0x7fdfea00       ra 0x77e4988c
  pc 0x74000000
            ;-- pc:
            0x74000000      ffffffff       invalid  <=== voila!
            0x74000004      ffffffff       invalid  <=== voila!
            0x74000008      ffffffff       invalid  <=== voila!
            0x7400000c      ffffffff       invalid  <=== voila!
            0x74000010      ffffffff       invalid  <=== voila!
[0x74000000]> aaa
[read errro all flags starting with sym. and entry0 (aa)
Cannot find function 'entry0' at 0x00404380
read errro
read errro
read errro
read errro
read errro
read errro
read errro
   :
```
ah! okay!! :-) 

Now let's check the ## breakpoints & steps
```asm
$ r2 -d /bin/ls
Process with PID 18112 started...
attach 18112 18112
bin.baddr 0x00400000
Assuming filepath /bin/ls
asm.bits 32
 -- Too old to crash
[0x77397880]> db
[0x77397880]> pd 0x10
            ;-- pc:
            0x77397880      03e0c821       move t9, ra
            0x77397884      04110001       bal 0x7739788c
            0x77397888      00200825       move at, at
            0x7739788c      3c1c0004       lui gp, 4
            0x77397890      279ca774       addiu gp, gp, -0x588c
            0x77397894      039fe021       addu gp, gp, ra
            0x77397898      0320f821       move ra, t9
            0x7739789c      8f848018       lw a0, -0x7fe8(gp)
            0x773978a0      00200825       move at, at
            0x773978a4      af848010       sw a0, -0x7ff0(gp)
[0x77397880]> db 0x77397890 
[0x77397880]> db
0x77397890 - 0x77397894 4 --x sw break enabled cmd="" name="0x77397890" module="/lib/mips-linux-gnu/ld-2.13.so"
[0x77397880]> dc
child stopped with signal 11
[+] SIGNAL 11 errno=0 addr=0x74000000 code=1 ret=0
attach 18112 1
[0x74000000]> s
0x74000000
```
whoaa.. but this is expected:)

Let's analyze in one upper level ... this should work well then
```asm
[0x74000000]> aaa
[x] Analyze all flags starting with sym. and entry0 (aa)
[Cannot determine xref search boundariesr references (aar)
[x] Analyze len bytes of instructions for references (aar)
[Oops invalid rangen calls (aac)
[x] Analyze function calls (aac)
[ ] [*] Use -AA or aaaa to perform additional experimental analysis.
[x] Constructing a function name for fcn.* and sym.func.* functions (aan))
[0x74000000]> ie
[Entrypoints]
vaddr=0x00404380 paddr=0x00004380 baddr=0x00400000 laddr=0x00000000 type=program
1 entrypoints
```
^ the ie for bins itself..

let's force steps..2see if the row addr match
```asm
[0x00000000]> s 0x77397880
[0x77397880]> so
[0x77397884]> so
[0x77397888]> so
[0x7739788c]> so
[0x77397890]> so
```
okay

back to start and stepping it up...
```asm
[0x77397894]> s 0x77397880
[0x77397880]> db
0x77397890 - 0x77397894 4 --x sw break enabled cmd="" name="0x77397890" module="/lib/mips-linux-gnu/ld-2.13.so"
[0x77397880]> ##### bp is still there, nice.
[0x77397880]> ds
Stepping failed!
[0x74000000]> ds
Stepping failed!
```
okay! :D

"special" how to quit debugging phenomenon..
```asm
[0x74000000]> q
Do you want to quit? (Y/n)
[0x74000000]> y
No buffer yanked already
[0x74000000]> q
Do you want to quit? (Y/n)
[0x74000000]> q
Do you want to quit? (Y/n)
[0x74000000]> q
Do you want to quit? (Y/n)
[0x74000000]> q
Do you want to quit? (Y/n)
[0x74000000]> !killall -9 r2
Killed
[0x74000000]> Do you want to quit? (Y/n)
Do you want to kill the process? (Y/n)
Y
$ 
```

Tested at & by:
```asm
[0x74000000]> !date
Sat Aug 20 05:00:16 UTC 2016
[0x74000000]> !whoami
unixfreaxjp
```

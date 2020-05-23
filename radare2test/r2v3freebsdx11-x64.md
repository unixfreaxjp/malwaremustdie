Compile error occured in CLANG FreeBSD 10.x

Environment:
```asm
 // git version
 $ date&&git describe --all --long&&git reset --hard
Tue Oct 16 18:52:37 JST 2018
heads/master-0-g647a6fa43
HEAD is now at 647a6fa43 Clarify BIOS section mapping in comments

// compiler info
FreeBSD clang version 3.4.1 (tags/RELEASE_34/dot1-final 208032) 20140512
Target: x86_64-unknown-freebsd10.xxx
Thread model: posix

(no compile preset variable aka default)

// from r2 ennvironment check

 - R_CHECKS_LEVEL = 2
 - PREFIX = /usr
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - HAVE_LIBUV = 1
 - USE_CAPSTONE = 0
 - HAVE_PTRACE = 1
 - USE_PTRACE_WRAP = 0
 - HAVE_FORK = 1
 - VERSION = 3.0.0
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - USE_LIB_XXHASH = 0
 - DEBUGGER = 1
 - CC = cc
 - USERCC = gcc
 - HAVE_ARC4RANDOM_UNIFORM = 1
 - HAVE_EXPLICIT_BZERO = 0
 - USEROSTYPE = bsd
 - LIBVERSION = 3.0.0
 - BUILD = amd64-unknown-freebsd
 - HOST = amd64-unknown-freebsd
 - TARGET = amd64-unknown-freebsd
```

There is no error for older FreeBSD using cc compiler
```asm
$ cc --version
cc (GCC) 4.2.1 20070831 patched [FreeBSD]
Copyright (C) 2007 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
$ r2 -v
radare2 3.0.0-git 19489 @ freebsd-x86-32 git.2.9.0-154-g16697b4
commit: 16697b4cc781f553d46aaa63ec474996e2e40dca build: 2018-10-17__03:35:42
```

Error reason is this coded commit: https://github.com/radare/radare2/commit/a018c02cb703b8c11524e9fe2c3fc83f1e0bf5df

Reference for possible error/bug source:
```asm

// #### ERROR: :undefined reference to `clock_nanosleep' ##### // <=== sleep() usleep() NANOSLEEP usage? 

CC rax2.c
cc: warning: argument unused during compilation: '-pie'
LD rax2
/test/radare2/libr/util/libr_util.so: undefined reference to `clock_nanosleep'
cc: error: linker command failed with exit code 1 (use -v to see invocation)


// #### WARNING: :macro45 :redefined9: #####

(425): #define PTRACE_SYSCALL PT_STEPCC idpool.c
(434): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(703):  #define PTRACE_SYSCALL PT_STEP
(706):  #define PTRACE_SYSCALL PT_STEP
(709): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(713): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(734): #define PTRACE_SYSCALL PT_STEP
(737): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(870): #define PTRACE_SYSCALL PT_STEP
(873): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(904): 9#define PTRACE_SYSCALL PT_STEP:CC tags.c
(912): #define PTRACE_SYSCALL PT_STEPnote
(919): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(927): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)SDB linux-arm-32.sdb.txt
(974): #define PTRACE_SYSCALL PT_STEP
(985): 9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):
(991): #define PTRACE_SYSCALL PT_STEP
(1003):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)(aka 'int')
(1123): #define PTRACE_SYSCALL PT_STEP
(1134): :#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) CC fs_fb.c
(1231): #define PTRACE_SYSCALL PT_STEP
(1241): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1347): #define PTRACE_SYSCALL PT_STEPCC cc.c
(1353): :#define PTRACE_SYSCALL PT_STEP89
(1356): previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1359): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1392): #define PTRACE_SYSCALL PT_STEP
(1405): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)CC msvc.c
(1436): 'PTRACE_SYSCALL'pdb/dbi.c#define PTRACE_SYSCALL PT_STEP :
(1440):  #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h
(1446): definition:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 50
(1449): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
(1508): #define PTRACE_SYSCALL PT_STEP
(1516): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1572): #define PTRACE_SYSCALL PT_STEP
(1578): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)'PTRACE_SYSCALL'
(1581): #define PTRACE_SYSCALL PT_STEP
(1584): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1613): #define PTRACE_SYSCALL PT_STEP :In file included from
(1618): : 9#define PTRACE_SYSCALL PT_STEP/test/radare2/libr/include/r_debug.h:/usr/include/sys/ptrace.h
(1622): /test/radare2/libr/include/r_debug.h'PTRACE_SYSCALL'89#define PTRACE_SYSCALL PT_STEP:warning note:
(1625): definitionmacro#define PTRACE_SYSCALL PT_STEP note/usr/include/sys/ptrace.h
(1628):  9#define PTRACE_SYSCALL PT_STEP
(1630): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)   /usr/include/sys/ptrace.h
(1635): /usr/include/sys/ptrace.h:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)previous#define PTRACE_SYSCALL PT_STEP:
(1640): :notedefinition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)89:
(1645): snap.cis#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):note
(1651): /test/radare2/libr/include/r_debug.h3 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)::
(1658): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)warning
(1665):  ::#define PTRACE_SYSCALL PT_STEPredefined39
(1669): In file included from          ^#define PTRACE_SYSCALL PT_STEP/test/radare2/libr/include/r_core.h
(1677): note  :#define PTRACE_SYSCALL PT_STEP: 45warning
(1683): 9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here9:'PTRACE_SYSCALL'#define PTRACE_SYSCALL PT_STEP:
(1687):  :#define PTRACE_SYSCALL PT_STEPmacro        ^#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1694): : #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.hprevious1
(1701): #define PTRACE_SYSCALL PT_STEP
(1702): 89note#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1703): #define PTRACE_SYSCALL PT_STEP::
(1711): In file included from :9definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)p/debug_esil.c :
(1714):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is5
(1719): :4previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)45:
(1726): p/debug_io.c #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1728): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) warning5
(1735): 9macro11#define PTRACE_SYSCALL PT_STEP:  warning warning
(1741): warning#define PTRACE_SYSCALL PT_STEP:
(1748): ::#define PTRACE_SYSCALL PT_STEP45/test/radare2/libr/include/r_debug.h9note
(1754): : :/test/radare2/libr/include/r_debug.his#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) macro'PTRACE_SYSCALL' :/test/radare2/libr/include/r_debug.h
(1758): redefined: :9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)#define PTRACE_SYSCALL PT_STEP :
(1761):   #define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL'        ^1definition        ^
(1768): 89/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEPmacro #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)::
(1774): :#define PTRACE_SYSCALL PT_STEP
(1776): #define PTRACE_SYSCALL PT_STEPnote/usr/include/sys/ptrace.h
(1781): here :#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)previous
(1783):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definitionnote        ^
(1787):  definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is 11
(1792): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(1794): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
(1818): 23:9'PTRACE_SYSCALL'#define PTRACE_SYSCALL PT_STEP:
(1825): In file included from #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h:/test/radare2/libr/include/r_core.h
(1831): :'PTRACE_SYSCALL'::In file included from #define PTRACE_SYSCALL PT_STEP89note 923/test/radare2/libr/include/r_core.h
(1836): 'PTRACE_SYSCALL'warning45/test/radare2/libr/include/r_debug.h #define PTRACE_SYSCALL PT_STEP : ::/usr/include/sys/ptrace.hnoteis
(1840): macro :definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)#define PTRACE_SYSCALL PT_STEP warning
(1845): #define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL': 9
(1847): :macro'PTRACE_SYSCALL'previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) /usr/include/sys/ptrace.h        ^
(1851): : 9/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP ::
(1853): hereprevious 89#define PTRACE_SYSCALL PT_STEP :        ^
(1856): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) note:        ^
(1860): definition: :: warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 989cfile.c generated.
(1865): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) :
(1868): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definitionprevious:
(1871): here  warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)in generated.
(1874):  graph.c#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)core1:        ^
(1895): function45:3#define PTRACE_SYSCALL PT_STEP :23:
(1908): 'PTRACE_SYSCALL'warning:/test/radare2/libr/include/r_debug.h: s#define PTRACE_SYSCALL PT_STEP :  : generated.
(1913): #define PTRACE_SYSCALL PT_STEP  /usr/include/sys/ptrace.h
(1917): #define PTRACE_SYSCALL PT_STEP #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)9
(1921): #define PTRACE_SYSCALL PT_STEPmacro
(1925): In file included from previous 89#define PTRACE_SYSCALL PT_STEPlog.c :
(1930): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 89
(1934): isprevious9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)  :
(1938): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previouswarning generated.
(1942): #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is'PTRACE_SYSCALL'CC cmd_api.c
(1946): redefined warning warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) generated.
(1950): #define PTRACE_SYSCALL PT_STEP        ^
(1966): macro:/test/radare2/libr/include/r_core.h6#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 45::
(1971): #define PTRACE_SYSCALL PT_STEP /test/radare2/libr/include/r_debug.h23gdiff.c
(1980): 'PTRACE_SYSCALL': :/test/radare2/libr/include/r_core.h#define PTRACE_SYSCALL PT_STEP 9:
(1984):  warning: #define PTRACE_SYSCALL PT_STEPredefined: 45definition/usr/include/sys/ptrace.h
(1986): 9vmenus.cis89        ^#define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL':: :
(1991): redefinedwarning/test/radare2/libr/include/r_core.h#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):: :
(1993): 23note:/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP:
(1998): : :#define PTRACE_SYSCALL PT_STEP herepreviousnote89
(2000): definition9        ^warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previous:
(2005):  : 89macro#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here:
(2008):         ^#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definition
(2011):  #define PTRACE_SYSCALL PT_STEP warningis
(2017): previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(2021):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
(2034): ::#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)4523
(2045): #define PTRACE_SYSCALL PT_STEPmacro/test/radare2/libr/include/r_debug.h:
(2051): In file included from #define PTRACE_SYSCALL PT_STEP::
(2057): ::89 #define PTRACE_SYSCALL PT_STEP239:macro
(2061): 45In file included from warning #define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL':blaze.c: definitionnote
(2066):  /usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP : 23redefined#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is:
(2070): here:        ^note'PTRACE_SYSCALL'/test/radare2/libr/include/r_debug.h#define PTRACE_SYSCALL PT_STEP        ^9
(2074): :macro45#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previous :        ^
(2078): : :is#define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h:9
(2082):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX): isnote
(2086):  :redefined: #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definition9
(2088): previous'_ALIGN'is #define PTRACE_SYSCALL PT_STEP          ^
(2093):  #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here
(2098):         ^definition:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
(2103): :1#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)50 warning
(2112): /test/radare2/libr/include/r_debug.h warning4definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX): generated.
(2124): :#define PTRACE_SYSCALL PT_STEP9
(2127): :#define PTRACE_SYSCALL PT_STEP89'PTRACE_SYSCALL'
(2130): /usr/include/sys/ptrace.hnote#define PTRACE_SYSCALL PT_STEP::
(2133): 9previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):
(2137):  warning #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) generated.
(2141): 1#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) warning
```

Complete Error build log:
```asm
$ 
$ sys/install.sh
WARNING: Updating from remote repository
Already up to date.
Building on Linux : computing number of allowed parallel jobs.
Maximum allowed RAM memory per job is 200000 kB.
Number of CPUs is 1 and grep: /proc/meminfo: No such file or directory
current free RAM allows us to run 0 jobs in parallel.
So, the build will run on 8 job(s).

export USE_R2_CAPSTONE=

Removing MCInst.c.orig
Removing MCInst.d
Removing MCInst.o
Removing MCInstrDesc.d
Removing MCInstrDesc.o
Removing MCRegisterInfo.d
Removing MCRegisterInfo.o
Removing SStream.c.orig
Removing SStream.d
Removing SStream.o
Removing arch/AArch64/AArch64BaseInfo.d
Removing arch/AArch64/AArch64BaseInfo.o
Removing arch/AArch64/AArch64Disassembler.d
Removing arch/AArch64/AArch64Disassembler.o
Removing arch/AArch64/AArch64InstPrinter.d
Removing arch/AArch64/AArch64InstPrinter.o
Removing arch/AArch64/AArch64Mapping.d
Removing arch/AArch64/AArch64Mapping.o
Removing arch/AArch64/AArch64Module.d
Removing arch/AArch64/AArch64Module.o
Removing arch/ARM/ARMDisassembler.d
Removing arch/ARM/ARMDisassembler.o
Removing arch/ARM/ARMInstPrinter.d
Removing arch/ARM/ARMInstPrinter.o
Removing arch/ARM/ARMMapping.d
Removing arch/ARM/ARMMapping.o
Removing arch/ARM/ARMModule.d
Removing arch/ARM/ARMModule.o
Removing arch/EVM/EVMDisassembler.d
Removing arch/EVM/EVMDisassembler.o
Removing arch/EVM/EVMInstPrinter.d
Removing arch/EVM/EVMInstPrinter.o
Removing arch/EVM/EVMMapping.d
Removing arch/EVM/EVMMapping.o
Removing arch/EVM/EVMModule.d
Removing arch/EVM/EVMModule.o
Removing arch/M680X/M680XDisassembler.d
Removing arch/M680X/M680XDisassembler.o
Removing arch/M680X/M680XInstPrinter.d
Removing arch/M680X/M680XInstPrinter.o
Removing arch/M680X/M680XModule.d
Removing arch/M680X/M680XModule.o
Removing arch/M68K/M68KDisassembler.d
Removing arch/M68K/M68KDisassembler.o
Removing arch/M68K/M68KInstPrinter.d
Removing arch/M68K/M68KInstPrinter.o
Removing arch/M68K/M68KModule.d
Removing arch/M68K/M68KModule.o
Removing arch/Mips/MipsDisassembler.d
Removing arch/Mips/MipsDisassembler.o
Removing arch/Mips/MipsInstPrinter.d
Removing arch/Mips/MipsInstPrinter.o
Removing arch/Mips/MipsMapping.d
Removing arch/Mips/MipsMapping.o
Removing arch/Mips/MipsModule.d
Removing arch/Mips/MipsModule.o
Removing arch/PowerPC/PPCDisassembler.d
Removing arch/PowerPC/PPCDisassembler.o
Removing arch/PowerPC/PPCInstPrinter.d
Removing arch/PowerPC/PPCInstPrinter.o
Removing arch/PowerPC/PPCMapping.d
Removing arch/PowerPC/PPCMapping.o
Removing arch/PowerPC/PPCModule.d
Removing arch/PowerPC/PPCModule.o
Removing arch/Sparc/SparcDisassembler.d
Removing arch/Sparc/SparcDisassembler.o
Removing arch/Sparc/SparcGenAsmWriter.inc.orig
Removing arch/Sparc/SparcInstPrinter.d
Removing arch/Sparc/SparcInstPrinter.o
Removing arch/Sparc/SparcMapping.d
Removing arch/Sparc/SparcMapping.o
Removing arch/Sparc/SparcModule.d
Removing arch/Sparc/SparcModule.o
Removing arch/SystemZ/SystemZDisassembler.d
Removing arch/SystemZ/SystemZDisassembler.o
Removing arch/SystemZ/SystemZInstPrinter.d
Removing arch/SystemZ/SystemZInstPrinter.o
Removing arch/SystemZ/SystemZMCTargetDesc.d
Removing arch/SystemZ/SystemZMCTargetDesc.o
Removing arch/SystemZ/SystemZMapping.d
Removing arch/SystemZ/SystemZMapping.o
Removing arch/SystemZ/SystemZModule.d
Removing arch/SystemZ/SystemZModule.o
Removing arch/TMS320C64x/TMS320C64xDisassembler.d
Removing arch/TMS320C64x/TMS320C64xDisassembler.o
Removing arch/TMS320C64x/TMS320C64xInstPrinter.d
Removing arch/TMS320C64x/TMS320C64xInstPrinter.o
Removing arch/TMS320C64x/TMS320C64xMapping.d
Removing arch/TMS320C64x/TMS320C64xMapping.o
Removing arch/TMS320C64x/TMS320C64xModule.d
Removing arch/TMS320C64x/TMS320C64xModule.o
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86ATTInstPrinter.d
Removing arch/X86/X86ATTInstPrinter.o
Removing arch/X86/X86Disassembler.d
Removing arch/X86/X86Disassembler.o
Removing arch/X86/X86DisassemblerDecoder.d
Removing arch/X86/X86DisassemblerDecoder.o
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.d
Removing arch/X86/X86IntelInstPrinter.o
Removing arch/X86/X86Mapping.d
Removing arch/X86/X86Mapping.o
Removing arch/X86/X86Module.d
Removing arch/X86/X86Module.o
Removing arch/XCore/XCoreDisassembler.d
Removing arch/XCore/XCoreDisassembler.o
Removing arch/XCore/XCoreInstPrinter.d
Removing arch/XCore/XCoreInstPrinter.o
Removing arch/XCore/XCoreMapping.d
Removing arch/XCore/XCoreMapping.o
Removing arch/XCore/XCoreModule.d
Removing arch/XCore/XCoreModule.o
Removing cs.c.orig
Removing cs.d
Removing cs.o
Removing libcapstone.a
Removing utils.d
Removing utils.o
/test/radare2
configure-plugins: Loading ./plugins.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.chip8 anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.hexagon anal.i4004 anal.i8080 anal.java anal.m68k_cs anal.malbolge anal.mcore anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.wasm anal.ws anal.x86_cs anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.chip8 asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hexagon asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k_cs asm.malbolge asm.mcore asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic asm.ppc_cs asm.ppc_gnu asm.propeller asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.wasm asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.xap asm.xcore_cs asm.xtensa asm.z80 bin.any bin.art bin.avr bin.bf bin.bflt bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mdmp bin.menuet bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.nro bin.nso bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.sfc bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.wasm bin.xbe bin.z64 bin.zimg bin_ldr.ldr_linux bin_xtr.xtr_dyldcache bin_xtr.xtr_fatmach0 bin_xtr.xtr_pemixed bp.arm bp.bf bp.mips bp.ppc bp.x86 core.a2f core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.des crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.serpent crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.io debug.native debug.null debug.qnx debug.rap debug.windbg egg.exec egg.xor fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.io fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.r2 fs.reiserfs fs.sfs fs.tar fs.udf fs.ufs fs.xfs io.ar io.bfdbg io.bochs io.debug io.default io.gdb io.gprobe io.gzip io.http io.ihex io.mach io.malloc io.mmap io.null io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.rbuf io.self io.shm io.sparse io.tcp io.w32 io.w32dbg io.windbg io.winedbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.avr_pseudo parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.sh_pseudo parse.x86_pseudo parse.z80_pseudo
cp: plugins.cfg and ./plugins.cfg are identical (not copied).
checking build system type... amd64-unknown-freebsd
checking host system type... amd64-unknown-freebsd
checking target system type... amd64-unknown-freebsd
checking for working directories... current
using prefix '/usr'
checking for c compiler... cc
checking for dynamic library... libc
checking for patch... /usr/bin/patch
checking for git... /usr/local/bin/git
checking for libmagic ... yes
checking for libz ... yes
checking for libzip ... no
checking for libxxhash ... no
checking declaration of ADDR_NO_RANDOMIZE in sys/personality.h... no
checking function arc4random_uniform() in c... yes
checking function explicit_bzero() in c... no
checking for libssl ... yes
checking pkg-config flags for openssl... no
checking for liblibuv ... no
checking pkg-config flags for libuv... yes
creating ./config-user.mk
creating libr/include/r_userconf.h
creating pkgcfg/r_io.pc
creating pkgcfg/r_magic.pc
creating pkgcfg/r_asm.pc
creating pkgcfg/r_bin.pc
creating pkgcfg/r_anal.pc
creating pkgcfg/r_hash.pc
creating pkgcfg/r_cons.pc
creating pkgcfg/r_core.pc
creating pkgcfg/r_lang.pc
creating pkgcfg/r_socket.pc
creating pkgcfg/r_debug.pc
creating pkgcfg/r_reg.pc
creating pkgcfg/r_config.pc
creating pkgcfg/r_flag.pc
creating pkgcfg/r_syscall.pc
creating pkgcfg/r_util.pc
creating pkgcfg/r_search.pc
creating pkgcfg/r_bp.pc
creating pkgcfg/r_parse.pc
creating pkgcfg/r_fs.pc
creating pkgcfg/r_egg.pc
creating pkgcfg/r_crypto.pc
cleaning temporally files... done

Final report:
 - R_CHECKS_LEVEL = 2
 - PREFIX = /usr
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - HAVE_LIBUV = 1
 - USE_CAPSTONE = 0
 - HAVE_PTRACE = 1
 - USE_PTRACE_WRAP = 0
 - HAVE_FORK = 1
 - VERSION = 3.0.0
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - USE_LIB_XXHASH = 0
 - DEBUGGER = 1
 - CC = cc
 - USERCC = gcc
 - HAVE_ARC4RANDOM_UNIFORM = 1
 - HAVE_EXPLICIT_BZERO = 0
 - USEROSTYPE = bsd
 - LIBVERSION = 3.0.0
 - BUILD = amd64-unknown-freebsd
 - HOST = amd64-unknown-freebsd
 - TARGET = amd64-unknown-freebsd
Generating r_version.h file
CC adler32.c
CC crc32.c
CC deflate.c
CC infback.c
CC inffast.c
CC inflate.c
CC inftrees.c
CC trees.c
CC zutil.c
CC compress.c
CC uncompr.c
CC gzclose.c
CC gzlib.c
CC gzread.c
CC gzwrite.c
ar: warning: creating libr_z.a
CC zip_add.c
CC zip_add_dir.c
CC zip_add_entry.c
CC zip_close.c
CC zip_delete.c
CC zip_dir_add.c
CC zip_dirent.c
CC zip_discard.c
CC zip_entry.c
CC zip_err_str.c
CC zip_error.c
CC zip_error_get.c
CC zip_error_get_sys_type.c
CC zip_error_strerror.c
CC zip_error_to_str.c
CC zip_extra_field.c
CC zip_extra_field_api.c
CC zip_fclose.c
CC zip_fdopen.c
CC zip_file_add.c
CC zip_file_error_get.c
CC zip_file_get_comment.c
CC zip_file_get_offset.c
CC zip_file_rename.c
CC zip_file_replace.c
CC zip_file_set_comment.c
CC zip_file_strerror.c
CC zip_filerange_crc.c
CC zip_fopen.c
CC zip_fopen_encrypted.c
CC zip_fopen_index.c
CC zip_fopen_index_encrypted.c
CC zip_fread.c
CC zip_get_archive_comment.c
CC zip_get_archive_flag.c
CC zip_get_compression_implementation.c
CC zip_get_encryption_implementation.c
CC zip_get_file_comment.c
CC zip_get_num_entries.c
CC zip_get_num_files.c
CC zip_get_name.c
CC zip_name_locate.c
CC zip_new.c
CC zip_open.c
CC zip_rename.c
CC zip_replace.c
CC zip_set_archive_comment.c
CC zip_set_archive_flag.c
CC zip_set_default_password.c
CC zip_set_file_comment.c
CC zip_set_file_compression.c
CC zip_set_name.c
CC zip_source_buffer.c
CC zip_source_close.c
CC zip_source_crc.c
CC zip_source_deflate.c
CC zip_source_error.c
CC zip_source_file.c
CC zip_source_filep.c
CC zip_source_free.c
CC zip_source_function.c
CC zip_source_layered.c
CC zip_source_open.c
CC zip_source_pkware.c
CC zip_source_pop.c
CC zip_source_read.c
CC zip_source_stat.c
CC zip_source_window.c
CC zip_source_zip.c
CC zip_source_zip_new.c
CC zip_stat.c
CC zip_stat_index.c
CC zip_stat_init.c
CC zip_strerror.c
CC zip_string.c
CC zip_unchange.c
CC zip_unchange_all.c
CC zip_unchange_archive.c
CC zip_unchange_data.c
CC zip_utf-8.c
ar: warning: creating libr_zip.a
ar: warning: creating librz.a
CC spp.c
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC sdbht.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
CC dict.c
CC main.c
AR libsdb.a
ar: warning: creating libsdb.a
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC sdbht.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC json.c
CC PIC ns.c
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
CC PIC dict.c
LIB libsdb.so.1.2.0
CC binheap.c
CC mem.c
CC unum.c
CC str.c
CC hex.c
CC file.c
CC range.c
CC tinyrange.c
CC prof.c
CC cache.c
CC sys.c
CC buf.c
sys.c:256CC w32-sys.c
:9: CC ubase64.c
warning: implicitCC base85.c
 declaration of CC base91.c
function 'clock_nanosleep' is CC list.c
invalid in C99 CC flist.c
[-Wimplicit-function-declaration]
        return clock_nanosleep (CLOCK_MONOTONIC, 0, &rqtp, NULL);
CC mixed.c
               ^
1CC btree.c
 warning generated.
CC chmod.c
CC graph.c
CC regcomp.c
CC regerror.c
CC regexec.c
CC uleb128.c
CC sandbox.c
CC calc.c
CC thread.c
CC thread_sem.c
CC thread_lock.c
CC thread_cond.c
CC strpool.c
CC bitmap.c
CC date.c
CC format.c
CC pie.c
CC print.c
CC ctype.c
CC seven.c
CC slist.c
CC randomart.c
CC log.c
CC zip.c
CC debruijn.c
CC utf8.c
CC utf16.c
CC utf32.c
CC strbuf.c
CC lib.c
CC name.c
CC spaces.c
CC signal.c
CC syscmd.c
CC diff.c
In file included from syscmd.c:3CC bdiff.c
:
In file included from /test/radare2/libr/include/r_core.h:23CC stack.c
:
/test/radare2/libr/include/r_debug.h:45:CC queue.c
9: warningCC tree.c
: 'PTRACE_SYSCALL' CC des.c
macro redefined
#define PTRACE_SYSCALL PT_STEPCC idpool.c

        ^
CC punycode.c
/usr/include/sys/ptrace.h:89:9CC pkcs7.c
: noteCC x509.c
: previous definition CC asn1.c
is here
CC astr.c
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
CC json_indent.c
1 warning generated.
CC skiplist.c
CC r_json.c
CC rbtree.c
CC qrcode.c
CC trie.c
CC vector.c
CC str_trim.c
CC ascii_table.c
CC assert.c
LD libr_util.so
CC socket.c
CC proc.c
CC http.c
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
CC serial.c
LD libr_socket.so
[capstone] Already in TIP, no need to update from git
ccHEAD is now at e2c1cd4 Correct use of strncpy function (#1247)
: cc
warning: cc: warning: ccargument unused during compilation: '-L../../libr/util': CC libbochs.c
warning:
argument unused during compilation: '-L../../libr/util': warning
argument unused during compilation: '-L../../libr/util': BUILD SUMARY

argument unused during compilation: '-L../../libr/util'
Hmm...============
  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/MCInst.c b/MCInst.c
COMPILER gcc
|index 1694e5d..758c43f 100644
ar: warning: |--- a/MCInst.c
creating lib/libbochs.a|+++ b/MCInst.c
CC cc

--------------------------
a - src/libbochs.o
Patching file MCInst.c using Plan A...
Hunk #1 succeeded at 18ar: warning: .
HOST_CC cc
creating libr_windbg.aHmm...
  The next patch looks like a unified diff to me...
The text leading up to this was:
--------------------------
HOST_OS freebsd
|diff --git a/cs.c b/cs.c
|index d2ffecc..f12051a 100644
|--- a/cs.c
|+++ b/cs.c
BUILD_OS freebsd
--------------------------
Patching file cs.c using Plan A...
Hunk #1 succeeded at 838 (offset -2 lines)============
.
Hunk #2 succeeded at 856 (offset -2 lines).

Hunk #3 succeeded at 947 (offset 1 line).
Hunk #4 succeeded at 959>>>>>>>>>>>>>>>>
 (offset -2 lines).
done
NATIVE BUILD SDB
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
>>>>>>>>>>>>>>>>
--------------------------
|diff --git a/arch/X86/X86ATTInstPrinter.c b/arch/X86/X86ATTInstPrinter.c
|index 6978a47..b65c1cf 100644
|--- a/arch/X86/X86ATTInstPrinter.c

|+++ b/arch/X86/X86ATTInstPrinter.c
--------------------------
Patching file arch/X86/X86ATTInstPrinter.c using Plan A...
Hunk #1 succeeded at 616 (offset 1 line).
Hmm...  The next patch looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86IntelInstPrinter.c b/arch/X86/X86IntelInstPrinter.c
|index ecc31d4..9fd15f0 100644
|--- a/arch/X86/X86IntelInstPrinter.c
|+++ b/arch/X86/X86IntelInstPrinter.c
--------------------------
Patching file arch/X86/X86IntelInstPrinter.c using Plan A...
Hunk #1 succeeded at 824 (offset 1 line).
done
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/Sparc/SparcGenAsmWriter.inc b/arch/Sparc/SparcGenAsmWriter.inc
|index 9ed9760..9694d05 100644
|--- a/arch/Sparc/SparcGenAsmWriter.inc
|+++ b/arch/Sparc/SparcGenAsmWriter.inc
--------------------------
Patching file arch/Sparc/SparcGenAsmWriter.inc using Plan A...
Hunk #1 succeeded at 1202.
done
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/SStream.c b/SStream.c
|index 90cef53..7ee9fd9 100644
|--- a/SStream.c
|+++ b/SStream.c
--------------------------
Patching file SStream.c using Plan A...
Hunk #1 succeeded at 31.
done
  CC      cs.o
  CC      utils.o
  CC      SStream.o
  CC      MCInstrDesc.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/AArch64/AArch64Module.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/M68K/M68KModule.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KInstPrinter.o
  CC      arch/Mips/MipsInstPrinter.o
  CC      arch/Mips/MipsMapping.o
  CC      arch/Mips/MipsModule.o
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/PowerPC/PPCModule.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZModule.o
CC cdb.c
  CC      arch/SystemZ/SystemZMCTargetDesc.o
CC buffer.c
CC cdb_make.c
CC ls.c
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/X86/X86DisassemblerDecoder.o
CC sdbht.c
CC ht.c
CC sdb.c
  CC      arch/X86/X86Disassembler.o
CC num.c
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
CC base64.c
CC match.c
  CC      arch/X86/X86Module.o
CC json.c
  CC      arch/XCore/XCoreModule.o
  CC      arch/XCore/XCoreDisassembler.o
CC ns.c
CC lock.c
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
  CC      arch/TMS320C64x/TMS320C64xInstPrinter.o
CC util.c
  CC      arch/TMS320C64x/TMS320C64xMapping.o
CC disk.c
CC query.c
CC array.c
  CC      arch/TMS320C64x/TMS320C64xModule.o
  CC      arch/TMS320C64x/TMS320C64xDisassembler.o
CC fmt.c
CC journal.c
CC dict.c
  CC      arch/M680X/M680XInstPrinter.o
CC main.c
  CC      arch/M680X/M680XModule.o
  CC      arch/M680X/M680XDisassembler.o
  CC      arch/EVM/EVMModule.o
  CC      arch/EVM/EVMDisassembler.o
AR libsdb.a
ar: warning: creating libsdb.a  CC      arch/EVM/EVMInstPrinter.o

  CC      arch/EVM/EVMMapping.o
  CC      MCInst.o
BIN sdb
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC sdbht.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
CC dict.c
AR libsdb.a
ar: warning: creating libsdb.a
gmake -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC sdbht.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC json.c
CC PIC ns.c
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
CC PIC dict.c
LIB libsdb.so.1.2.0
gmake -C zip
gmake -C java
CC code.c
CC class.c
CC ops.c
CC dsojson.c
ar: warning: creating libr_java.a
gmake -C tcc
ar: warning: creating libr_tcc.a
gmake -C gdb
CC utils.c
CC common.c
CC arch.c
CC packet.c
CC libgdbr.c
CC responses.c
In file included from src/gdbclient/responses.cCC core.c
:187:
/test/radare2/libr/include/r_debug.h:45:9:CC xml.c
 In file included from src/gdbclient/core.cwarning:: 1308:
'PTRACE_SYSCALL'/test/radare2/libr/include/r_debug.h CC core.c
:macro45 :redefined9:
 #define PTRACE_SYSCALL PT_STEP
warning        ^:
'PTRACE_SYSCALL'/usr/include/sys/ptrace.h :macro89 :redefined9:
 #define PTRACE_SYSCALL PT_STEP
note        ^:
previous /usr/include/sys/ptrace.hdefinition: 89is: 9here:
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
note:         ^
previous 1definition warning  generated.
is here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
1 warning generated.
ar: warning: creating lib/libgdbr.a
a - src/utils.o
a - src/common.o
a - src/arch.o
a - src/packet.o
a - src/libgdbr.o
a - src/gdbclient/responses.o
a - src/gdbclient/core.o
a - src/gdbclient/xml.o
a - src/gdbserver/core.o
gmake -C qnx
CC sigutil.c
CC libqnxr.c
CC utils.c
CC core.c
CC packet.c
In file included from src/core.c:4:
/test/radare2/libr/include/r_debug.h:45:9: warning: 'PTRACE_SYSCALL' macro redefined
#define PTRACE_SYSCALL PT_STEP
        ^
/usr/include/sys/ptrace.h:89:9: note: previous definition is here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
1 warning generated.
ar: warning: creating lib/libqnxr.a
a - src/sigutil.o
a - src/libqnxr.o
a - src/utils.o
a - src/core.o
a - src/packet.o
gmake -C ar
cc: warning: argument unused during compilation: '-L../../libr/util'
ar: warning: creating libr_ar.a
gmake -C grub
CC file.c
CC term.c
CC device.c
CC err.c
CC env.c
CC disk.c
CC fs.c
CC misc.c
CC time.c
CC list.c
CC partition.c
CC mm.c
CC fshelp.c
CC reiserfs.c
CC ext2.c
CC fat.c
CC ntfs.c
CC ntfscomp.c
CC cpio.c
CC tar.c
CC xfs.c
CC ufs.c
CC ufs2.c
CC hfs.c
CC hfsplus.c
CC udf.c
CC iso9660.c
CC minix.c
CC jfs.c
CC fb.c
CC sfs.c
CC grubfs.c
CC msdos.c
CC gpt.c
CC apple.c
CC amiga.c
CC sun.c
CC bsdlabel.c
CC sunpc.c
ar: warning: creating libgrubfs.a
DIR util
DIR hash
CC state.c
CC hash.c
CC hamdist.c
CC crca.c
CC entropy.c
CC calc.c
CC adler32.c
CC luhn.c
CC md4.c
CC md5.c
CC sha1.c
CC sha2.c
CC xxhash.c
LD libr_hash.so
DIR socket
DIR reg
DIR cons
DIR magic
DIR bp
DIR search
CC reg.c
DIR config
CC arena.c
CC value.c
CC cons.c
CC apprentice.c
CC cond.c
CC bp.c
CC pipe.c
CC ascmagic.c
CC search.c
CC config.c
CC double.c
CC bytepat.c
CC bp_watch.c
CC output.c
CC fsmagic.c
CC callback.c
CC profile.c
CC bp_io.c
CC strings.c
CC bp_plugin.c
CC grep.c
LD libr_reg.so
CC funcs.c
LD libr_config.so
CC bp_traptrace.c
CC aes-find.c
CC is_tar.c
CC less.c
CC bp_arm.c
CC rsa-find.c
CC magic.c
CC bp_bf.c
CC utf8.c
CC regexp.c
CC softmagic.c
CC bp_mips.c
CC xrefs.c
CC line.c
CC bp_ppc.c
LD libr_magic.so
CC keyword.c
CC hud.c
CC bp_x86.c
CC rgb.c
In file included from line.c:44:
CC input.c
In file included from LD libr_search.so
./dietline.c:LD libr_bp.so
5:
In file included from CC pal.c
/test/radare2/libr/include/r_core.h:23:
CC editor.c
/test/radare2/libr/include/r_debug.h:45:9: CC 2048.c
warning: 'PTRACE_SYSCALL'CC canvas.c
 macro redefinedCC canvas_line.c

#define PTRACE_SYSCALL PT_STEP
        ^
/usr/include/sys/ptrace.h:89:9: note: previous definition is here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
1 warning generated.
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flag
CC syscall.c
CC lang.c
CC ioports.c
CC io_ar.c
CC io_bfdbg.c
In file included from lang.c:8:
In file included from ./p/pipe.cCC io_bochs.c
CC flag.c
:4:
CC sort.c
In file included from /test/radare2/libr/include/r_core.h:CC io_debug.c
23:
/test/radare2/libr/include/r_debug.h:45CC spaces.c
:9CC io_default.c
:CC crypto_aes.c
 CC zones.c
warningIn file included from : p/io_debug.cCC io_gdb.c
:7SDB dos-x86-16.sdb.txt
'PTRACE_SYSCALL':
 macro/test/radare2/libr/include/r_debug.hCC crypto_aes_algo.c
 :SDB ios-x86-32.sdb.txt
redefined45:
9#define PTRACE_SYSCALL PT_STEP:CC tags.c

 CC crypto_aes_cbc.c
        ^
warning: SDB ios-arm-32.sdb.txt
/usr/include/sys/ptrace.h:'PTRACE_SYSCALL'89 :macroCC io_gprobe.c
9 :redefined
LD libr_flag.so
#define PTRACE_SYSCALL PT_STEPnote
SDB ios-arm-64.sdb.txt
: CC crypto_base64.c
        ^previous
 definitionCC io_gzip.c
 /usr/include/sys/ptrace.his: 89here:9
:CC crypto_base91.c
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
SDB linux-x86-32.sdb.txt
SDB linux-x86-64.sdb.txt
        ^note
: CC io_http.c
previous definition is1  warninghereCC crypto_blowfish.c
 generated.

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)SDB linux-arm-32.sdb.txt

LD libr_lang.so
CC io_ihex.c
        ^
CC crypto_cps2.c
CC crypto_des.c
SDB linux-arm-64.sdb.txt
CC io_mach.c
CC crypto_punycode.c
SDB s110-arm-16.sdb.txt
CC crypto_rc2.c
CC crypto_rc4.c
CC crypto_rc6.c
CC crypto_rol.c
CC crypto_ror.c
CC crypto_rot.c
CC crypto_serpent.c
CC crypto_serpent_algo.c
CC crypto_xor.c
CC crypto.c
LD libr_crypto.so
1 warning generated.
CC io_malloc.c
CC io_mmap.c
SDB linux-mips-32.sdb.txt
SDB linux-sparc-32.sdb.txt
CC io_null.c
SDB darwin-x86-32.sdb.txt
SDB darwin-x86-64.sdb.txt
SDB darwin-arm-32.sdb.txt
SDB darwin-arm-64.sdb.txt
CC io_procpid.c
SDB netbsd-x86-32.sdb.txt
CC io_ptrace.c
SDB freebsd-x86-32.sdb.txt
CC io_qnx.c
SDB openbsd-x86-32.sdb.txt
CC io_r2k.c
SDB openbsd-x86-64.sdb.txt
In file included from SDB windows-x86-32.sdb.txt
p/io_ptrace.c:SDB windows-x86-64.sdb.txt
8:
/test/radare2/libr/include/r_debug.h:45:CC io_r2pipe.c
9: warning: CC io_r2web.c
'PTRACE_SYSCALL' macro CC io_rap.c
redefined
#define PTRACE_SYSCALL PT_STEP
CC io_rbuf.c
        ^
CC io_self.c
/usr/include/sys/ptrace.h:89:9CC io_shm.c
:In file included from  p/io_rap.c:5LD libr_syscall.so
note:
p/io_self.c: In file included from :/test/radare2/libr/include/r_core.h117previousCC io_sparse.c
:: 233definition:
:  is/test/radare2/libr/include/r_debug.h :here45warningCC io_tcp.c
::
9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):
 not         ^CC io_w32.c
yet
warning : implemented p/io_ptrace.cfor:'PTRACE_SYSCALL' 64CC io_w32dbg.c
 this:macro 18 platform:redefined  [-W#warnings]CC io_windbg.c

#define PTRACE_SYSCALL PT_STEP
warning
        #warning not yet implemented for this platform:
        ^
         ^incompatibleCC io_winedbg.c

 pointer/usr/include/sys/ptrace.h :1to89 warning CC io_zip.c
: generated.
integer9 :conversion  passingCC io.c
 note'void *':  toprevious  parameterCC plugin.c
definition  ofis  typehere CC map.c
'r_ptrace_data_t'
 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)(aka 'int')

      CC section.c
        ^[-Wint-conversion]

                buf[x] = (ut32)debug_read_raw (io, pid, (void *)(at++));
CC desc.c
1                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ warning
 generated.
p/io_ptrace.cCC cache.c
:46:85:CC p_cache.c
 note: CC undo.c
expanded from macroCC ioutils.c
 'debug_read_raw'
#define debug_read_raw(io,x,y) r_io_ptrace((io), PTRACE_PEEKTEXT, (x), (void *)(y), NULL)CC fd.c

                                                                                    ^~~~
/usr/include/sys/_null.h:32:14: note: expanded from macro 'NULL'
#define NULL    ((void *)0)
                ^~~~~~~~~~~
/test/radare2/libr/include/r_io.h:505:100: note: passing argument to parameter 'data' here
R_API long r_io_ptrace(RIO *io, r_ptrace_request_t request, pid_t pid, void *addr, r_ptrace_data_t data);
                                                                                                   ^
p/io_ptrace.c:67:14: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'r_ptrace_data_t' (aka 'int')
      [-Wint-conversion]
                lr = (ut32)debug_read_raw (io, pid, at);
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
p/io_ptrace.c:46:85: note: expanded from macro 'debug_read_raw'
#define debug_read_raw(io,x,y) r_io_ptrace((io), PTRACE_PEEKTEXT, (x), (void *)(y), NULL)
                                                                                    ^~~~
/usr/include/sys/_null.h:32:14: note: expanded from macro 'NULL'
#define NULL    ((void *)0)
                ^~~~~~~~~~~
/test/radare2/libr/include/r_io.h:505:100: note: passing argument to parameter 'data' here
R_API long r_io_ptrace(RIO *io, r_ptrace_request_t request, pid_t pid, void *addr, r_ptrace_data_t data);
                                                                                                   ^
p/io_ptrace.c:115:12: warning: cast to 'void *' from smaller integer type 'ptrace_word' (aka 'int') [-Wint-to-void-pointer-cast]
                int rc = debug_write_raw (io, pid, at++, buf[x]); //((ut32*)(at)), buf[x]);
                         ^
p/io_ptrace.c:47:88: note: expanded from macro 'debug_write_raw'
#define debug_write_raw(io,x,y,z) r_io_ptrace((io), PTRACE_POKEDATA, (x), (void *)(y), (void *)(z))
                                                                                       ^
p/io_ptrace.c:115:12: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'r_ptrace_data_t' (aka 'int')
      [-Wint-conversion]
                int rc = debug_write_raw (io, pid, at++, buf[x]); //((ut32*)(at)), buf[x]);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p/io_ptrace.c:47:88: note: expanded from macro 'debug_write_raw'
#define debug_write_raw(io,x,y,z) r_io_ptrace((io), PTRACE_POKEDATA, (x), (void *)(y), (void *)(z))
                                                                                       ^~~~~~~~~~~
/test/radare2/libr/include/r_io.h:505:100: note: passing argument to parameter 'data' here
R_API long r_io_ptrace(RIO *io, r_ptrace_request_t request, pid_t pid, void *addr, r_ptrace_data_t data);
                                                                                                   ^
p/io_ptrace.c:121:8: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'r_ptrace_data_t' (aka 'int')
      [-Wint-conversion]
                lr = debug_read_raw (io, pid, (void*)at);
                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p/io_ptrace.c:46:85: note: expanded from macro 'debug_read_raw'
#define debug_read_raw(io,x,y) r_io_ptrace((io), PTRACE_PEEKTEXT, (x), (void *)(y), NULL)
                                                                                    ^~~~
/usr/include/sys/_null.h:32:14: note: expanded from macro 'NULL'
#define NULL    ((void *)0)
                ^~~~~~~~~~~
/test/radare2/libr/include/r_io.h:505:100: note: passing argument to parameter 'data' here
R_API long r_io_ptrace(RIO *io, r_ptrace_request_t request, pid_t pid, void *addr, r_ptrace_data_t data);
                                                                                                   ^
p/io_ptrace.c:123:7: warning: cast to 'void *' from smaller integer type 'ptrace_word' (aka 'int') [-Wint-to-void-pointer-cast]
                if (debug_write_raw (io, pid, (void*)at, lr)) {
                    ^
p/io_ptrace.c:47:88: note: expanded from macro 'debug_write_raw'
#define debug_write_raw(io,x,y,z) r_io_ptrace((io), PTRACE_POKEDATA, (x), (void *)(y), (void *)(z))
                                                                                       ^
p/io_ptrace.c:123:7: warning: incompatible pointer to integer conversion passing 'void *' to parameter of type 'r_ptrace_data_t' (aka 'int')
      [-Wint-conversion]
                if (debug_write_raw (io, pid, (void*)at, lr)) {
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
p/io_ptrace.c:47:88: note: expanded from macro 'debug_write_raw'
#define debug_write_raw(io,x,y,z) r_io_ptrace((io), PTRACE_POKEDATA, (x), (void *)(y), (void *)(z))
                                                                                       ^~~~~~~~~~~
/test/radare2/libr/include/r_io.h:505:100: note: passing argument to parameter 'data' here
R_API long r_io_ptrace(RIO *io, r_ptrace_request_t request, pid_t pid, void *addr, r_ptrace_data_t data);
                                                                                                   ^
8 warnings generated.
LD libr_io.so
DIR fs
DIR anal
DIR bin
DIR parse
CC anal_6502.c
CC bin.c
CC anal_8051.c
CC dbginfo.c
CC anal_arc.c
  SDB dospart
CC bin_ldr.c
CC anal_arm_cs.c
CC bin_write.c
CC anal_arm_gnu.c
CC demangle.c
CC parse.c
CC be_arm.c
CC anal_avr.c
CC code.c
SDB types.sdb
SDB types-16.sdb
CC dwarf.c
CC parse_6502_pseudo.c
CC filter.c
In file included from dwarf.c:SDB types-32.sdb
CC anal_bf.c
18:
In file included from /test/radare2/libr/include/r_core.h:23:
CC parse_arm_pseudo.c
CC bfile.c
/test/radare2/libr/include/r_debug.h:45:9:CC anal_chip8.c
 SDB types-64.sdb
CC parse_att2intel.c
warning: CC obj.c
'PTRACE_SYSCALL' macro redefinedCC anal_cr16.c
CC fs_ext2.c

#define PTRACE_SYSCALL PT_STEP
        ^
CC parse_avr_pseudo.c
/usr/include/sys/ptrace.h:89SDB types-windows.sdb
:CC fs_fat.c
CC cr16_disas.c
9CC parse_dalvik_pseudo.c
CC open.c
: note: SDB types-x86-windows-32.sdb
previous definition /test/radare2/libr/..//libr/anal/p/../../asm/arch/cr16/cr16_disas.cis: 225CC cp-demangle.c
here:19
:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) CC fs_fb.c

        ^warningCC anal_cris.c

: unused function 'cr16_print_biti_opcode'1  warning[-Wunused-function] generated.

CC fs_hfs.c
static inline int cr16_print_biti_opcode(struct cr16_cmd *cmd, ut16 instr)
SDB types-x86-windows-64.sdb
CC bin_any.c
                  ^
CC parse_m68k_pseudo.c
CC fs_hfsplus.c
1 warning generated.
CC anal_dalvik.c
CC bin_art.c
CC parse_mips_pseudo.c
CC fs_io.c
CC anal_ebc.c
SDB types-linux.sdb
CC bin_avr.c
CC parse_mreplace.c
CC fs_iso9660.c
CC bin_bf.c
CC ebc_disas.c
SDB types-x86-macos-64.sdb
CC mreplace.c
CC fs_jfs.c
CC anal_gb.c
CC bin_bflt.c
CC mmemory.c
CC fs_minix.c
SDB types-arm-ios-16.sdb
CC anal_h8300.c
CC bflt.c
CC parse_ppc_pseudo.c
CC fs_ntfs.c
CC parse_sh_pseudo.c
SDB types-arm-ios-32.sdb
CC bin_bios.c
SDB types-arm-ios-64.sdb
CC h8300_disas.c
CC fs_posix.c
CC parse_x86_pseudo.c
CC bin_bootimg.c
CC fs_r2.c
CC anal_hexagon.c
SDB spec.sdb
SDB cc-x86-64.sdb
SDB cc-x86-32.sdb
CC parse_z80_pseudo.c
CC fs_reiserfs.c
SDB cc-mips-32.sdb
CC fs_sfs.c
CC bin_cgc.c
CC hexagon.c
SDB cc-m68k-32.sdb
LD libr_parse.so
CC hexagon_disas.c
CC bin_coff.c
CC fs_tar.c
CC hexagon_anal.c
CC coff.c
SDB cc-sparc-32.sdb
CC anal_i4004.c
CC fs_udf.c
CC bin_dex.c
CC fs_ufs.c
CC bin_dbginfo_dex.c
SDB cc-arm-64.sdb
CC anal_i8080.c
CC dex.c
SDB cc-arm-32.sdb
CC fs_xfs.c
CC anal_java.c
CC bin_dol.c
CC fs.c
SDB cc-avr-8.sdb
CC anal_m68k_cs.c
CC bin_dyldcache.c
CC file.c
CC anal_malbolge.c
SDB cc-powerpc-32.sdb
CC anal_mcore.c
CC bin_elf.c
In file included from /test/radare2/libr/..//libr/bin/p/bin_dyldcache.c:7:
In file included from CC shell.c
/test/radare2/libr/include/r_core.h:23SDB cc-powerpc-64.sdb
:
CC bin_dbginfo_elf.c
/test/radare2/libr/include/r_debug.h:45:9:CC mcore.c
 SDB cc-xtensa-32.sdb
warning: LD libr_fs.so
CC anal_mips_cs.c
CC bin_write_elf.c
'PTRACE_SYSCALL' macro redefinedSDB cc-riscv-64.sdb

#define PTRACE_SYSCALL PT_STEP
        ^
CC anal_mips_gnu.c
/usr/include/sys/ptrace.hCC elf.c
:89:9CC elf_write.c
:CC anal_msp430.c
 noteCC msp430_disas.c
: CC bin_elf64.c
previous definition isCC bin_dbginfo_elf64.c
 here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
CC anal_nios2.c
        ^
CC bin_write_elf64.c
CC anal_null.c
CC elf64.c
CC anal_pic.c
1 warning generated.
CC elf64_write.c
CC pic_midrange.c
CC bin_fs.c
CC bin_java.c
CC anal_ppc_cs.c
CC vle.c
CC bin_mach0.c
CC mach0.c
CC anal_ppc_gnu.c
CC mach0_classes.c
CC anal_riscv.c
CC mach064_classes.c
CC anal_rsp.c
CC bin_write_mach0.c
CC rsp_idec.c
CC bin_mach064.c
CC anal_sh.c
CC bin_write_mach064.c
CC anal_snes.c
CC mach064.c
CC anal_sparc_cs.c
CC bin_mbn.c
CC anal_sparc_gnu.c
CC bin_mdmp.c
CC mdmp.c
CC anal_sysz.c
CC anal_tms320.c
CC mdmp_pe.c
CC mdmp_pe64.c
CC anal_tms320_c55x_plus.c
CC tms320_dasm.c
CC bin_menuet.c
CC bin_mz.c
CC ins.c
CC mz.c
CC c55plus.c
CC c55plus_decode.c
CC bin_nes.c
CC bin_nin3ds.c
CC decode_funcs.c
CC utils.c
CC bin_ninds.c
CC bin_ningb.c
CC hashtable.c
CC hashvector.c
CC bin_ningba.c
CC bin_nro.c
CC anal_v810.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97CC v810_disas.c
:CC bin_nso.c
25: CC nxo.c
CC anal_v850.c
warning: CC bin_omf.c
unused variableCC v850_disas.c
 CC omf.c
'ins_hash' [-Wunused-variable]
CC anal_vax.c
static HASHCODE_ENTRY_T ins_hash[] = {CC bin_p9.c

                        ^
CC p9bin.c
1CC anal_wasm.c
 warning generated.
CC wasm.c
CC bin_pe.c
CC bin_write_pe.c
CC anal_ws.c
CC anal_x86_cs.c
CC pe.c
CC pe_write.c
CC anal_xap.c
CC bin_pe64.c
CC anal_xcore_cs.c
CC bin_write_pe64.c
CC anal_xtensa.c
CC pe64.c
CC anal_z80.c
CC pe64_write.c
CC meta.c
CC bin_pebble.c
CC reflines.c
CC bin_psxexe.c
CC bin_sfc.c
CC op.c
In file included from meta.c:26CC fcn.c
:
CC bin_smd.c
In file included from /test/radare2/libr/include/r_core.h:23In file included from :
reflines.cCC bb.c
CC bin_sms.c
:/test/radare2/libr/include/r_debug.h3::
45In file included from :/test/radare2/libr/include/r_core.h9:CC var.c
:23 :
CC bin_spc700.c
/test/radare2/libr/include/r_debug.hwarning:: 45:CC cond.c
9'PTRACE_SYSCALL':  macroCC value.c
 redefinedwarning:
CC bin_te.c
#define PTRACE_SYSCALL PT_STEPCC cc.c

'PTRACE_SYSCALL'         ^macro
 redefinedCC diff.c
CC te.c
/usr/include/sys/ptrace.h
:#define PTRACE_SYSCALL PT_STEP89
:9        ^:
 /usr/include/sys/ptrace.hnote:: 89:previous9 :definition  is notehere:
previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
definition         ^is
 here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
CC hint.c
CC bin_vsf.c
11 warning warning generated.
 generated.
CC anal.c
CC bin_wasm.c
CC data.c
CC wasm.c
CC xrefs.c
CC bin_xbe.c
CC esil.c
CC bin_z64.c
CC sign.c
CC bin_zimg.c
CC anal_ex.c
CC zimg.c
CC switch.c
CC bin_xtr_dyldcache.c
In file included from sign.c:7:
CC dyldcache.c
CC state.c
In file included from /test/radare2/libr/include/r_core.h:23CC bin_xtr_fatmach0.c
:
CC cycles.c
/test/radare2/libr/include/r_debug.h:45:9CC esil_sources.c
:CC fatmach0.c
 warningCC bin_xtr_pemixed.c
: CC esil_interrupt.c
'PTRACE_SYSCALL' macroCC esil_stats.c
 CC pemixed.c
redefined
#define PTRACE_SYSCALL PT_STEP
CC bin_ldr_linux.c
CC esil_trace.c
        ^
CC flirt.c
CC demangler.c
/usr/include/sys/ptrace.h:89:CC labels.c
9CC microsoft_demangle.c
: noteCC objc.c
: CC esil2reil.c
previous definitionCC pin.c
 CC cxx.c
is here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)CC msvc.c

CC session.c
        ^
CC swift.c
sign.cCC swift-sd.c
:CC vtable.c
822:9:CC rtti.c
 CC dlang.c
warning: CC rtti_msvc.c
CC pdb_downloader.c
unused variable CC omap.c
'core'CC rtti_itanium.c
 [-Wunused-variable]
CC xtensa-modules.c
        RCore *core = a->coreb.core;CC stream_pe.c

               ^In file included from
pdb/pdb_downloader.cCC xtensa-isa.c
:5:
In file included from /test/radare2/libr/include/r_core.hIn file included from 2:rtti_itanium.c warningCC gdata.c
23:s:
4 generated.
CC elf32-xtensa.c
:
/test/radare2/libr/include/r_debug.hIn file included from :/test/radare2/libr/include/r_core.h45::23CC fpo.c
9:
: /test/radare2/libr/include/r_debug.h:45CC dbi.c
warning:: 9: 'PTRACE_SYSCALL'CC tpi.c
 macrowarning : redefinedCC stream_file.c

'PTRACE_SYSCALL'pdb/dbi.c#define PTRACE_SYSCALL PT_STEP :
macro6 :        ^redefined9CC pdb.c

:
 #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h
:warning89        ^: :
9:'_ALIGN' /usr/include/sys/ptrace.h :macro89 note:redefined: 9:
previous #define _ALIGN 4
definition note        ^is:
 hereprevious /usr/include/x86/_align.h
definition:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 50
is: 9        ^here:

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
note warning:  generated.
        ^
previous definition1  warningis generated.
 here
LD libr_anal.so
#define _ALIGN(p)       (((uintptr_t)(p) + _ALIGNBYTES) & ~_ALIGNBYTES)
        ^
1 warning generated.
LD libr_bin.so
DIR asm
CC asm_6502.c
CC asm_8051.c
CC 8051_disas.c
CC asm_arc.c
CC arc-dis.c
CC arc-ext.c
CC arc-opc.c
CC arcompact-dis.c
CC asm_arm_as.c
CC asm_arm_cs.c
CC armass.c
CC armass64.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC aarch64-dis.c
CC aarch64-dis-2.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC asm_bf.c
CC asm_chip8.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC cris-opc.c
CC asm_dalvik.c
CC asm_dcpu16.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hexagon.c
CC asm_hppa_gnu.c
CC hppa-dis.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
In file included from p/asm_java.c:7:
CC lanai-dis.c
In file included from /test/radare2/libr/include/r_core.h:23CC lanai-opc.c
:
/test/radare2/libr/include/r_debug.h:45:CC asm_lh5801.c
9: CC asm_lm32.c
warning: 'PTRACE_SYSCALL' CC asm_m68k_cs.c
macro redefined
CC asm_malbolge.c
#define PTRACE_SYSCALL PT_STEP
        ^
CC asm_mcore.c
/usr/include/sys/ptrace.h:89CC asm_mcs96.c
:9: CC asm_mips_cs.c
note: previous CC asm_mips_gnu.c
definition is hereCC mips-dis.c

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
CC mips16-opc.c
        ^
1CC mips-opc.c
 warning generated.
CC mipsasm.c
CC asm_msp430.c
CC asm_nios2.c
CC nios2-dis.c
CC nios2-opc.c
CC asm_pic.c
CC pic_baseline.c
CC pic_pic18.c
CC asm_ppc_cs.c
CC libps.c
CC asm_ppc_gnu.c
CC ppc-dis.c
CC ppc-opc.c
CC asm_propeller.c
CC propeller_disas.c
CC asm_riscv.c
CC asm_rsp.c
CC asm_sh.c
CC sh-dis.c
CC asm_snes.c
CC asm_sparc_cs.c
CC asm_sparc_gnu.c
CC sparc-dis.c
CC sparc-opc.c
CC asm_spc700.c
CC asm_sysz.c
CC asm_tms320.c
CC asm_tricore.c
CC tricore-dis.c
CC tricore-opc.c
CC cpu-tricore.c
CC asm_v810.c
CC asm_v850.c
CC asm_vax.c
CC vax-dis.c
CC asm_wasm.c
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC asm_x86_nz.c
CC asm_xap.c
In file included from p/asm_x86_nz.c:4:
In file included from CC asm_xcore_cs.c
/test/radare2/libr/include/r_core.h:23:
CC asm_xtensa.c
/test/radare2/libr/include/r_debug.h:45:9CC xtensa-dis.c
: warningCC asm_z80.c
: 'PTRACE_SYSCALL' macroCC asm.c
 redefined
CC code.c
#define PTRACE_SYSCALL PT_STEP
        ^
In file included from asm.cCC op.c
:/usr/include/sys/ptrace.h4::
89In file included from :/test/radare2/libr/include/r_core.h9::23 :
/test/radare2/libr/include/r_debug.hnote:: 45:previous9 :definition  is warninghere:
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)'PTRACE_SYSCALL'
 macro        ^
redefined
#define PTRACE_SYSCALL PT_STEP
        ^
/usr/include/sys/ptrace.h:89:9: note: previous definition is 1here
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
        ^
 warning generated.
1 warning generated.
LD libr_asm.so
DIR egg
CC egg.c
CC egg_lang.c
CC emit_x86.c
CC emit_arm.c
CC emit_x64.c
CC emit_trace.c
CC egg_Cfile.c
CC egg_exec.c
CC egg_xor.c
LD libr_egg.so
DIR debug
CC signal.c
CC map.c
In file included from signal.c:CC trace.c
3:
/test/radare2/libr/include/r_debug.hIn file included from :map.cCC arg.c
45::39:
: /test/radare2/libr/include/r_debug.h:CC debug.c
45warning:In file included from : 9trace.c:: 3CC plugin.c
'PTRACE_SYSCALL':
 macrowarning/test/radare2/libr/include/r_debug.hIn file included from  : :arg.credefined45::CC snap.c
3
'PTRACE_SYSCALL'9:
#define PTRACE_SYSCALL PT_STEP :In file included from
macro debug.c/test/radare2/libr/include/r_debug.h ::        ^redefined345
warningCC session.c
:
:
: 9#define PTRACE_SYSCALL PT_STEP/test/radare2/libr/include/r_debug.h:/usr/include/sys/ptrace.h
: :'PTRACE_SYSCALL'In file included from 4589        ^ plugin.c::
macro:9warning9 3:: :redefined:
  /usr/include/sys/ptrace.h:
/test/radare2/libr/include/r_debug.h'PTRACE_SYSCALL'89#define PTRACE_SYSCALL PT_STEP:warning note:
45: macro: 9: :        ^9redefinedprevious
:'PTRACE_SYSCALL'
definitionmacro#define PTRACE_SYSCALL PT_STEP note/usr/include/sys/ptrace.h
is: :warningredefined 89:         ^hereprevious:

 9#define PTRACE_SYSCALL PT_STEP
definition:'PTRACE_SYSCALL'
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)   /usr/include/sys/ptrace.h
ismacro        ^:
89        ^herenoteredefined:
: 9

/usr/include/sys/ptrace.h:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)previous#define PTRACE_SYSCALL PT_STEP:

89definition:        ^         ^9note
is
::   hereprevious/usr/include/sys/ptrace.h
:notedefinition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)89:
:is19previous         ^1 warning: here
 warning generated.
 definition generated.
In file included from
snap.cis#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):note
3CC pid.c
In file included from : here1:
session.c        ^ warning:previous

 generated.
/test/radare2/libr/include/r_debug.h3 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)::
definition
45 1:CC dreg.c
/test/radare2/libr/include/r_debug.his        ^ warning9:
 generated.
:45here :9
:CC ddesc.c
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)warning
: In file included from pid.c        ^warning:
'PTRACE_SYSCALL': 3 CC esil.c
:
macro1 'PTRACE_SYSCALL'1/test/radare2/libr/include/r_debug.h warningredefined  warningIn file included from : generated.
macro generated.
dreg.c45
 ::#define PTRACE_SYSCALL PT_STEPredefined39
:
:CC debug_bf.c

In file included from          ^#define PTRACE_SYSCALL PT_STEP/test/radare2/libr/include/r_core.h

In file included from :ddesc.c23warning        ^::
: /usr/include/sys/ptrace.h
5CC debug_bochs.c
::
/test/radare2/libr/include/r_debug.h89In file included from :'PTRACE_SYSCALL':/usr/include/sys/ptrace.h/test/radare2/libr/include/r_debug.hesil.c45 9::::macro:894539  :::
:redefined99 ::/test/radare2/libr/include/r_debug.h
note  :#define PTRACE_SYSCALL PT_STEP: 45warning
In file included from :: previousnotep/debug_bf.cIn file included from warning9        ^ : :p/debug_bochs.c: :
definition4: 'PTRACE_SYSCALL' previous:
4 is :
'PTRACE_SYSCALL'macro/usr/include/sys/ptrace.h definition/test/radare2/libr/include/r_debug.h warning :here :/test/radare2/libr/include/r_debug.hmacro: redefined89is45: :
 :45redefined
9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here9:'PTRACE_SYSCALL'#define PTRACE_SYSCALL PT_STEP:
:9


 :#define PTRACE_SYSCALL PT_STEPmacro        ^#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
         ^

redefined
notewarning        ^:         ^: warning


: #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.hprevious1
:  warning'PTRACE_SYSCALL'/usr/include/sys/ptrace.h89definition generated.
 'PTRACE_SYSCALL':        ^: macro 89
9is1 macro::  warningredefined 9 here generated.
redefined:/usr/include/sys/ptrace.hCC debug_esil.c

 :
#define PTRACE_SYSCALL PT_STEP
89note#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
#define PTRACE_SYSCALL PT_STEP::

note9        ^: :previous        ^
        ^
CC debug_gdb.c

previousdefinition  /usr/include/sys/ptrace.hdefinitionnoteis:/usr/include/sys/ptrace.h :  189:ishere warning:89 previous generated.
9:here
In file included from :9definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)p/debug_esil.c :

:CC debug_io.c
 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is5
         ^:
In file included from notehere
p/debug_gdb.c: note        ^/test/radare2/libr/include/r_debug.h::

:4previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)45:
 previous
:definition 91/test/radare2/libr/include/r_debug.h definition        ^:1 warning:is
  warning generated.
45 is generated.
:here 9herewarningIn file included from :
: CC debug_native.c
p/debug_io.c #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
1:
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) warning5
'PTRACE_SYSCALL' generated.
:
warning        ^ :
        ^macro/test/radare2/libr/include/r_debug.h
 CC debug_null.c
:redefined45'PTRACE_SYSCALL':
9macro11#define PTRACE_SYSCALL PT_STEP:  warning warning
CC debug_qnx.c
 redefined generated.
 generated.
        ^

warning#define PTRACE_SYSCALL PT_STEP:
/usr/include/sys/ptrace.hIn file included from CC debug_rap.c
        ^:'PTRACE_SYSCALL'p/debug_native.c
89 :In file included from :macro4p/debug_null.c9 :
:/usr/include/sys/ptrace.h:redefined4CC debug_windbg.c
: /test/radare2/libr/include/r_debug.h:
89
::#define PTRACE_SYSCALL PT_STEP45/test/radare2/libr/include/r_debug.h9note
::In file included from :: 945p/debug_qnx.c         ^:::previous
 94 ::
notedefinition In file included from :  /usr/include/sys/ptrace.hwarning/test/radare2/libr/include/r_debug.hp/debug_rap.cIn file included from is:: ::p/debug_windbg.cprevious 89warning455: here:: ::
17definition9'PTRACE_SYSCALL'9:

: :/test/radare2/libr/include/r_debug.his#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) macro'PTRACE_SYSCALL' :/test/radare2/libr/include/r_debug.h
  45:hereredefinedmacro:45        ^note warning9:

:
redefined: :9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)#define PTRACE_SYSCALL PT_STEP :
previous

  #define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL'        ^1definition        ^
 warning
 warning
macro: warning generated.
is        ^ :
redefinedhere/usr/include/sys/ptrace.h'PTRACE_SYSCALL':
 'PTRACE_SYSCALL'
89/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEPmacro #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)::
 macro
989redefined 1::        ^redefined warning        ^ 9

 generated.

:#define PTRACE_SYSCALL PT_STEP

#define PTRACE_SYSCALL PT_STEPnote/usr/include/sys/ptrace.h
: :        ^1note89
        ^ warningprevious: :
 generated.
 9definitionprevious:/usr/include/sys/ptrace.h   :/usr/include/sys/ptrace.hisdefinition89:  :89hereisnote9: : :9
here :#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)previous

 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definitionnote        ^
 : note
is:         ^ previous
here previousdefinition
 definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is 11
 is warning warninghere  generated.
 generated.
        ^here

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
 warning        ^ generated.

        ^
1 warning generated.
1 warning generated.
LD libr_debug.so
DIR core
CC core.c
CC cmd.c
In file included from core.cCC cfile.c
:3:
In file included from /test/radare2/libr/include/r_core.hIn file included from :CC cconfig.c
cmd.c23::
18:
/test/radare2/libr/include/r_debug.hIn file included from :CC visual.c
/test/radare2/libr/include/r_core.h45::239In file included from :
:cfile.c :/test/radare2/libr/include/r_debug.hCC cio.c
3::
45warningIn file included from :: /test/radare2/libr/include/r_core.h9In file included from ::cconfig.c23 'PTRACE_SYSCALL':CC yank.c
:
 3macro:
/test/radare2/libr/include/r_debug.hwarning In file included from :: redefined/test/radare2/libr/include/r_core.hIn file included from 45:visual.cCC libs.c
:
23:9'PTRACE_SYSCALL'#define PTRACE_SYSCALL PT_STEP:
3:
:
In file included from  macro/test/radare2/libr/include/r_debug.hIn file included from cio.c         ^:/test/radare2/libr/include/r_core.h:redefined
45:3warning:23:
:
9:
In file included from #define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h:/test/radare2/libr/include/r_core.h
: /test/radare2/libr/include/r_debug.h:In file included from 'PTRACE_SYSCALL'89:23yank.c         ^:45:
:In file included from macro
9warning:3libs.c :: 9/test/radare2/libr/include/r_debug.h:
:redefined ::In file included from 3/usr/include/sys/ptrace.h 45/test/radare2/libr/include/r_core.h:

:'PTRACE_SYSCALL'::In file included from #define PTRACE_SYSCALL PT_STEP89note 923/test/radare2/libr/include/r_core.h
:: macrowarning::
:9 :  23        ^:previousredefined/test/radare2/libr/include/r_debug.h:

  :definition
'PTRACE_SYSCALL'warning45/test/radare2/libr/include/r_debug.h #define PTRACE_SYSCALL PT_STEP : ::/usr/include/sys/ptrace.hnoteis
macro945::   ::89here        ^redefined'PTRACE_SYSCALL' 9:previous
 :9

macro :definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)#define PTRACE_SYSCALL PT_STEP warning
/usr/include/sys/ptrace.h
redefined: is:warning         ^89        ^
: notehere
:
#define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL': 9

:macro'PTRACE_SYSCALL'previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) /usr/include/sys/ptrace.h        ^
:
redefinedmacrodefinition89          ^note:
redefinedis
: 9/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP ::

hereprevious 89#define PTRACE_SYSCALL PT_STEP :        ^

definition9
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) note:        ^
is:
 /usr/include/sys/ptrace.h        ^hereprevious:
 note89/usr/include/sys/ptrace.h1
definition: :: warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 989cfile.c generated.

isprevious:::   9117        ^heredefinition::
  9
isnote:CC graph.c
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) :
herenoteprevious:         ^
 warning
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definitionprevious:
  isdefinition        ^  fix
hereis  debugger-concept1
here  warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)in generated.
In file included from

 graph.c#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)core1:        ^
 1 warning3
[-W#pragma-messages] warning generated.
CC fortune.c
:
        ^ generated.
In file included from

/test/radare2/libr/include/r_core.h#pragma message ("fix debugger-concept in core"):
231:
 warning        ^CC hack.c
 generated.

1/test/radare2/libr/include/r_debug.h warning: generated.
45:CC vasm.c
9cfile.c:: 268In file included from CC patch.c
:fortune.c13:warning:1:  :
In file included from /test/radare2/libr/include/r_core.hCC cbin.c
In file included from 'PTRACE_SYSCALL'warning:hack.c : 23:macro:
3 :
In file included from redefinedunused/test/radare2/libr/include/r_debug.hIn file included from vasm.c :/test/radare2/libr/include/r_core.h:
function45:3#define PTRACE_SYSCALL PT_STEP :23:
In file included from
'setbpint'9:
In file included from patch.c :/test/radare2/libr/include/r_core.h:        ^[-Wunused-function] /test/radare2/libr/include/r_debug.h:3
:23:

45:
In file included from In file included from static bool setbpint(RCore *r, const char *mode, const char *sym) {warning:/test/radare2/libr/include/r_core.hcbin.c/usr/include/sys/ptrace.h
: 9/test/radare2/libr/include/r_debug.h:::::23389            ^ 45:
:
:
'PTRACE_SYSCALL':In file included from 9 9/test/radare2/libr/include/r_debug.h/test/radare2/libr/include/r_core.h:macrowarning:::  :  4523redefined::
39note warning
'PTRACE_SYSCALL'warning:/test/radare2/libr/include/r_debug.h: s#define PTRACE_SYSCALL PT_STEP :  : generated.

macro45previous :         ^redefined'PTRACE_SYSCALL'warning9definition
 : :
macro isCC log.c
#define PTRACE_SYSCALL PT_STEP  /usr/include/sys/ptrace.h
redefined'PTRACE_SYSCALL'here: warning89        ^
macro:
:
#define PTRACE_SYSCALL PT_STEP #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)9
redefined
:'PTRACE_SYSCALL' /usr/include/sys/ptrace.h        ^
         ^:
#define PTRACE_SYSCALL PT_STEPmacro
89
 note:redefined: 9/usr/include/sys/ptrace.h        ^::

In file included from previous 89#define PTRACE_SYSCALL PT_STEPlog.c :
:definition9/usr/include/sys/ptrace.h3 note::        ^:
is:  89
In file included from  :/test/radare2/libr/include/r_core.hhereprevious9: note:/usr/include/sys/ptrace.h23
definition:  ::
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 89
isprevious:/test/radare2/libr/include/r_debug.h1  note9: warning        ^heredefinition: :45 generated.

  :
isprevious9#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)  :
heredefinitionnote  : CC rtr.c
1        ^
is warning
#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previouswarning generated.

here : definition        ^

#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is'PTRACE_SYSCALL'CC cmd_api.c

  heremacro        ^ 11

redefined warning warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) generated.
 generated.


#define PTRACE_SYSCALL PT_STEP        ^
1CC carg.c
In file included from
 warningrtr.c        ^ generated.
:
3:
In file included from /usr/include/sys/ptrace.hCC canal.c
/test/radare2/libr/include/r_core.h::8923::
9CC project.c
:/test/radare2/libr/include/r_debug.h :45:In file included from note9carg.cCC gdiff.c
: :: 31previous:
 warning In file included from  generated.
definitionwarning/test/radare2/libr/include/r_core.hIn file included from  : :canal.cis23: :
6In file included from CC asm.c
here'PTRACE_SYSCALL':
project.c /test/radare2/libr/include/r_debug.hIn file included from :
macro:/test/radare2/libr/include/r_core.h6#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) 45::

redefined:23In file included from 9:
/test/radare2/libr/include/r_core.h        ^
::In file included from
#define PTRACE_SYSCALL PT_STEP /test/radare2/libr/include/r_debug.h23gdiff.c
::
:458        ^warning:/test/radare2/libr/include/r_debug.h:
1
: 9:In file included from  warning:45/test/radare2/libr/include/r_core.h generated.
 ::/usr/include/sys/ptrace.h'PTRACE_SYSCALL'923In file included from : ::
asm.c89macrowarning :CC vmenus.c
: : /test/radare2/libr/include/r_debug.h49redefined::
:warning45In file included from
'PTRACE_SYSCALL': :/test/radare2/libr/include/r_core.h#define PTRACE_SYSCALL PT_STEP 9:
macro:23note 'PTRACE_SYSCALL' :
:         ^redefined
macro/test/radare2/libr/include/r_debug.hprevious
 warning: #define PTRACE_SYSCALL PT_STEPredefined: 45definition/usr/include/sys/ptrace.h
:In file included from  :
9vmenus.cis89        ^#define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL':: :

  3here9macro:
:        ^ In file included from
 /usr/include/sys/ptrace.h
redefinedwarning/test/radare2/libr/include/r_core.h#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):: :
89
23note:/usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP:
        ^: 9:
'PTRACE_SYSCALL'
:89 /test/radare2/libr/include/r_debug.hprevious :        ^macro: 9
 45definition:redefined: note 9is: /usr/include/sys/ptrace.h
: :#define PTRACE_SYSCALL PT_STEP herepreviousnote89
 : :
definition9        ^warning#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previous:
:
is  1 definition warning        ^here /usr/include/sys/ptrace.h'PTRACE_SYSCALL' generated.

isnote:
 : 89macro#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here:
previous9redefined
 :CC disasm.c
        ^#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definition
1

 #define PTRACE_SYSCALL PT_STEP warningis
 generated.
        ^ note
here:         ^
CC plugin.c

previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
definition/usr/include/sys/ptrace.h :        ^is89
 :1here9 warning: generated.

 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)1
In file included from  warningnoteCC task.c
1disasm.c generated.
        ^: : warning
3 generated.
previous:
 In file included from In file included from 1definitionCC panels.c
/test/radare2/libr/include/r_core.hplugin.c ::is warning236 1:
:
here warning generated.
In file included from  generated.
/test/radare2/libr/include/r_debug.h/test/radare2/libr/include/r_core.h
CC pseudo.c
::#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)4523
::
In file included from 9        ^task.c:/test/radare2/libr/include/r_debug.h
:CC vmarks.c
 :345:
:In file included from warning9In file included from /test/radare2/libr/include/r_core.h: :panels.c: :CC anal_tp.c
235:
'PTRACE_SYSCALL':
 warningIn file included from /test/radare2/libr/include/r_debug.hmacro: /test/radare2/libr/include/r_core.h: :In file included from 45redefined23pseudo.c:1'PTRACE_SYSCALL':
:9 warning
 3:In file included from  generated.
#define PTRACE_SYSCALL PT_STEPmacro/test/radare2/libr/include/r_debug.h:
 vmarks.c
 :In file included from :redefined45/test/radare2/libr/include/r_core.h3        ^::warning:


923: CC blaze.c
In file included from #define PTRACE_SYSCALL PT_STEP::
/test/radare2/libr/include/r_core.h
 In file included from :/usr/include/sys/ptrace.h/test/radare2/libr/include/r_debug.h'PTRACE_SYSCALL'anal_tp.c23:        ^: ::
89
warning45macro6:: : :
/test/radare2/libr/include/r_debug.h99redefinedIn file included from ::/usr/include/sys/ptrace.h:/test/radare2/libr/include/r_core.h45 :'PTRACE_SYSCALL'
::89 #define PTRACE_SYSCALL PT_STEP239:macro
:
:note9 warning : :redefined:         ^/test/radare2/libr/include/r_debug.h
:previous
45In file included from warning #define PTRACE_SYSCALL PT_STEP'PTRACE_SYSCALL':blaze.c: definitionnote
 /usr/include/sys/ptrace.h9: : macro::3is        ^ 89 :
'PTRACE_SYSCALL' previous
redefined:In file included from  here 9/test/radare2/libr/include/r_core.hmacrodefinition
:warning:
 /usr/include/sys/ptrace.h#define PTRACE_SYSCALL PT_STEP : 23redefined#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)is:
:

 89
here:        ^note'PTRACE_SYSCALL'/test/radare2/libr/include/r_debug.h#define PTRACE_SYSCALL PT_STEP        ^9
:  :


:macro45#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) previous :        ^
/usr/include/sys/ptrace.h redefined9
:definition:        ^note89
 disasm.c
: :is#define PTRACE_SYSCALL PT_STEP/usr/include/sys/ptrace.h:9
:436previous:herewarning89:1          ^: :9 warningdefinition

9: generated.
 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX): isnote
'PTRACE_SYSCALL'  : /usr/include/sys/ptrace.h here        ^:macrowarningprevious
89 note: CC cundo.c

 :redefined: #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)definition9
 :
previous'_ALIGN'is #define PTRACE_SYSCALL PT_STEP          ^
definitionmacro
here1   warningnote        ^isredefined
 generated.
:
 #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)here

previous#define _ALIGN _ds_comment_align_ (ds, true, false)CC core_a2f.c
 /usr/include/sys/ptrace.h

        ^definition:#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)
 89
        ^is:
 9        ^here:
 /usr/include/x86/_align.h
:1#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX)50 warning
noteIn file included from 11: generated.
: cundo.c warning warning9        ^: generated.
 generated.
:
previous3  :
definitionIn file included from CC core_java.c
 /test/radare2/libr/include/r_core.hnoteis::  23In file included from here:
/test/radare2/libr/..//libr/core/p/core_a2f.cprevious1:
/test/radare2/libr/include/r_debug.h warning4definition#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX): generated.
:

45In file included from is:/test/radare2/libr/include/r_core.h         ^9:here
:In file included from 23 /test/radare2/libr/..//libr/core/p/core_java.c:

:#define _ALIGN(p)       (((uintptr_t)(p) + _ALIGNBYTES) & ~_ALIGNBYTES)6/test/radare2/libr/include/r_debug.h
warning:
:1: In file included from 45        ^ warning/test/radare2/libr/include/r_core.h:
 generated.
:9'PTRACE_SYSCALL'23: :
 macro /test/radare2/libr/include/r_debug.hredefined:warning45:
:#define PTRACE_SYSCALL PT_STEP9
:'PTRACE_SYSCALL'          ^macro
 warningredefined: /usr/include/sys/ptrace.h
:#define PTRACE_SYSCALL PT_STEP89'PTRACE_SYSCALL'
: 9macro        ^:
 redefined
/usr/include/sys/ptrace.hnote#define PTRACE_SYSCALL PT_STEP::
89:previous        ^9
:definition  is/usr/include/sys/ptrace.h :notehere89: :2
9previous#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX):
 definition warning         ^is
note : heres1previous
 generated.
 warning #define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) generated.
definition
 is        ^
here
1#define PTRACE_SYSCALL  (PTRACE_SCE | PTRACE_SCX) warning
 generated.
        ^
1 warning generated.
LD libr_core.so
CC rax2.c
cc: warning: argument unused during compilation: '-pie'
LD rax2
/test/radare2/libr/util/libr_util.so: undefined reference to `clock_nanosleep'
cc: error: linker command failed with exit code 1 (use -v to see invocation)
gmake[2]: *** [../rules.mk:79: rax2] Error 1
gmake[1]: *** [Makefile:14: all] Error 1
gmake: *** [Makefile:62: all] Error 2
$
```

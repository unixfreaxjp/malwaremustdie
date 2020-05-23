Starting new test of [https://github.com/unixfreaxjp/dev/blob/master/r2ppc.md] based on advise received xref:[https://github.com/radare/radare2/issues/4720#issuecomment-214844475] 

Same environment:
```asm
$ sys/user.sh
WARNING: Updating from remote repository
remote: Counting objects: 146, done.
remote: Compressing objects: 100% (42/42), done.
remote: Total 146 (delta 108), reused 93 (delta 93), pack-reused 11
Receiving objects: 100% (146/146), 85.04 KiB, done.
Resolving deltas: 100% (108/108), completed with 75 local objects.
From https://github.com/radare/radare2
   e9dc4ae..26fc8f9  master     -> origin/master
Updating e9dc4ae..26fc8f9
Fast-forward
 libr/anal/p/anal_arm_cs.c               |   18 +++++++++---------
 libr/anal/p/anal_ppc_cs.c               |   23 ++++++++++++++++++++++-
 libr/asm/arch/cr16/cr16_disas.c         |   30 ------------------------------
 libr/asm/arch/dcpu16/dis.c              |    2 +-
 libr/asm/asm.c                          |    1 -
 libr/bin/format/objc/mach0_classes.c    |    2 +-
 libr/config.mk.tail                     |   11 +++++++++--
 libr/core/cmd_anal.c                    |    4 +++-
 libr/crypto/p/Makefile                  |    2 --
 libr/crypto/p/crypto_aes.c              |    2 +-
 libr/crypto/p/crypto_aes_cbc.c          |    2 +-
 libr/debug/p/debug_native.c             |    5 ++---
 libr/debug/p/native/linux/linux_debug.c |    4 ++--
 libr/debug/p/native/xnu/xnu_debug.c     |   50 +++++++++-----------------------------------------
 libr/debug/p/native/xnu/xnu_debug.h     |    2 ++
 libr/hash/xxhash.c                      |    2 +-
 libr/include/sdb/sdb.h                  |   11 +++++++++--
 libr/include/sdb/sdb_version.h          |    2 +-
 libr/io/p/io_debug.c                    |    4 +++-
 libr/magic/Makefile                     |    2 +-
 libr/magic/apprentice.c                 |   24 +++++++++++++-----------
 libr/magic/file.h                       |    4 +++-
 libr/magic/print.c                      |    4 ++--
 libr/parse/p/6502_pseudo.mk             |    2 +-
 libr/parse/p/arm_pseudo.mk              |    2 +-
 libr/parse/p/att2intel.mk               |    2 +-
 libr/parse/p/dalvik_pseudo.mk           |    3 ++-
 libr/parse/p/m68k_pseudo.mk             |    3 ++-
 libr/parse/p/mips_pseudo.mk             |    3 ++-
 libr/parse/p/ppc_pseudo.mk              |    2 +-
 libr/parse/p/x86_pseudo.mk              |    2 +-
 libr/parse/p/z80_pseudo.mk              |    3 ++-
 libr/parse/parse.c                      |    1 -
 libr/rules.mk                           |   10 +++++++++-
 libr/socket/run.c                       |    4 +++-
 libr/util/sys.c                         |   13 ++++++++++++-
 mk/gcc.mk                               |    1 +
 shlr/bochs/Makefile                     |    7 ++++++-
 shlr/gdb/Makefile                       |   10 +++++++++-
 shlr/qnx/Makefile                       |    7 ++++++-
 shlr/qnx/include/utils.h                |    2 +-
 shlr/qnx/src/utils.c                    |    4 ++--
 shlr/sdb/config.mk                      |    4 ++--
 shlr/sdb/src/array.c                    |   95 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------
 shlr/sdb/src/cdb_make.c                 |    2 +-
 shlr/sdb/src/sdb.c                      |   10 +++++-----
 shlr/sdb/src/sdb.h                      |   11 +++++++++--
 shlr/zip/zip/Makefile                   |    2 +-
 shlr/zip/zlib/Makefile                  |    2 +-
 49 files changed, 250 insertions(+), 168 deletions(-)

export USE_R2_CAPSTONE=

```
Obviously debug mode is not yet supported in ppc:
```asm
CC linux_debug.c
CC asm_java.c
p/debug_native.c:1320:2: warning: #warning Unsupported architecture [-Wcpp]
CC asm_lanai_gnu.c
CC lanai-dis.c
CC lanai-opc.c
p/native/linux/linux_debug.c: In function ▒linux_reg_profile▒:
p/native/linux/linux_debug.c:28:2: error: #error "Unsupported Linux CPU"
p/native/linux/linux_debug.c: In function ▒linux_handle_signals▒:
p/native/linux/linux_debug.c:43:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c: In function ▒print_fpu▒:
p/native/linux/linux_debug.c:291:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function ▒linux_reg_read▒:
p/native/linux/linux_debug.c:376:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:383:4: error: unknown type name ▒R_DEBUG_REG_T▒
p/native/linux/linux_debug.c:296:7: warning: variable ▒showfpu▒ set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: In function ▒linux_reg_write▒:
p/native/linux/linux_debug.c:425:43: error: ▒struct user▒ has no member named ▒u_debugreg▒
p/native/linux/linux_debug.c:431:17: error: ▒R_DEBUG_REG_T▒ undeclared (first use in this function)
p/native/linux/linux_debug.c:431:17: note: each undeclared identifier is reported only once for each function it appears in
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:203:13: warning: ▒print_fpu▒ defined but not used [-Wunused-function]
p/native/linux/linux_debug.c: In function ▒linux_reg_profile▒:
p/native/linux/linux_debug.c:30:1: warning: control reaches end of non-void function [-Wreturn-type]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[4]: *** Waiting for unfinished jobs....
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
CC asm_mcs96.c
CC asm_mips_cs.c
CC asm_mips_gnu.c
CC mips-dis.c
CC mips16-opc.c
CC mips-opc.c
CC mipsasm.c
CC asm_msp430.c
CC asm_nios2.c
CC nios2-dis.c
CC nios2-opc.c
CC asm_pic18c.c
CC asm_ppc_cs.c
CC asm_ppc_gnu.c
CC ppc-dis.c
CC ppc-opc.c
CC asm_rar.c
CC asm_riscv.c
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
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC asm_x86_nz.c
CC asm_x86_olly.c
CC disasm.c
CC asmserv.c
CC assembl.c
CC asm_x86_tab.c
CC asm_x86_udis.c
CC asm_xcore_cs.c
CC asm_xtensa.c
CC xtensa-dis.c
CC xtensa-isa.c
CC xtensa-modules.c
CC elf32-xtensa.c
CC asm_z80.c
CC asm_z80_cr.c
CC asm.c
CC code.c
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
```
Continuing testing with the below advise, xfref:[https://github.com/radare/radare2/issues/4720#issuecomment-215074744]
> ![](https://lh3.googleusercontent.com/-S3VpBidVApg/VyC3rhqZ6cI/AAAAAAAAUyg/Km23CGbxgwMtZo6FE3klFvOaSrWQyfPAgCLcB/s600/001.PNG)

Configure part, without debugger wasn't executed well:
```asm
$ ./configure --without-debugger
configure-plugins: Loading ./plugins.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu [...]  parse.x86_pseudo

WARNING: Unknown flag '--without-debugger'.
```
cancelled, it seems invalid option, checking the without option...
```asm
Optional Features:
  --disable-debugger     disable native debugger features   <========== THIS
  --with-sysmagic        force to use system's magic
  --disable-loadlibs     disable loading plugins
  --without-fork         disable fork
  --with-syscapstone     force to use system-wide capstone
  --with-syszip          force to use system's libzip and zlib
  --without-gpl          do not build GPL code (grub, cxx, .
  ```
  retried with --disable-debugger option, testing the option firstly w/autoconf
```asm
$ ./configure --disable-debugger
configure-plugins: Loading ./plugins.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.rc2 crypto.rc4 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... powerpc-unknown-linux-gnu
checking host system type... powerpc-unknown-linux-gnu
checking target system type... powerpc-unknown-linux-gnu
checking for working directories... current
using prefix '/usr/local'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
checking host endianness... big
checking for libmagic ... yes
Using PKGCONFIG: pkg-config
checking pkg-config flags for capstone... no
checking for libz ... no
checking for libzip ... no
checking for libssl ... no
Using PKGCONFIG: pkg-config
checking pkg-config flags for openssl... no
checking for liblua5.1 ... no
creating ./config-user.mk
creating libr/include/r_userconf.h
creating pkgcfg/r_io.pc
creating pkgcfg/r_db.pc
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
creating pkgcfg/r_flags.pc
creating pkgcfg/r_syscall.pc
creating pkgcfg/r_util.pc
creating pkgcfg/r_search.pc
creating pkgcfg/r_bp.pc
creating pkgcfg/r_parse.pc
creating pkgcfg/r_fs.pc
cleaning temporally files... done

Final report:
 - PREFIX = /usr/local
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0  <====== okay
 - HAVE_FORK = 1
 - VERSION = 0.10.3-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 0    <======= disable-debugger
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIL_ENDIAN = 0
 - LIBVERSION = 0.10.3-git
```
looks good now, forming script to use --disable-debugger in this test
patching these code in sys/build.sh
![](https://lh3.googleusercontent.com/-0-GDsLxmuGU/VyDO3_G7iqI/AAAAAAAAUyw/oNeXxF3cSQoNUwqnL0bRbdb0reMqHCaVgCLcB/s920/003.PNG)

Now the sys/user.sh or sys/install.sh should work:
```asm
$ sys/user.sh --without-pull

export USE_R2_CAPSTONE=

configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.rc2 crypto.rc4 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... powerpc-unknown-linux-gnu
checking host system type... powerpc-unknown-linux-gnu
checking target system type... powerpc-unknown-linux-gnu
checking for working directories... current
using prefix '/home/mung/bin/prefix/radare2/'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
checking host endianness... big
checking for libmagic ... yes
Using PKGCONFIG: pkg-config
checking pkg-config flags for capstone... no
checking for libz ... no
checking for libzip ... no
checking for libssl ... no
Using PKGCONFIG: pkg-config
checking pkg-config flags for openssl... no
checking for liblua5.1 ... no
creating ./config-user.mk
creating libr/include/r_userconf.h
creating pkgcfg/r_io.pc
creating pkgcfg/r_db.pc
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
creating pkgcfg/r_flags.pc
creating pkgcfg/r_syscall.pc
creating pkgcfg/r_util.pc
creating pkgcfg/r_search.pc
creating pkgcfg/r_bp.pc
creating pkgcfg/r_parse.pc
creating pkgcfg/r_fs.pc
cleaning temporally files... done

Final report:
 - PREFIX = /test/bin/prefix/radare2/
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 0.10.3-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 0 <=========================== Yes!
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIL_ENDIAN = 0
 - LIBVERSION = 0.10.3-git
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
LIB libr_z.so
ar: creating libr_z.a
CC zip_add.c
CC zip_add_dir.c
CC zip_add_entry.c
CC zip_close.c
CC zip_delete.c
CC zip_dir_add.c

```
..this looks very fine :) build is continuing...
```asm
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
socket.c: In function 'r_socket_close':
socket.c:262:7: warning: unused variable 'buf' [-Wunused-variable]
LD libr_socket.so
[capstone] Already in TIP, no need to update from git
HEAD is now at a4bdbc8 x86: do not print LJMP/LCALL with ptr. this fixes issue #429
patching file arch/X86/X86ATTInstPrinter.c
Hunk #1 succeeded at 600 (offset 24 lines).
patching file arch/X86/X86IntelInstPrinter.c
Hunk #1 succeeded at 795 (offset 39 lines).
patching file Makefile
Hunk #1 succeeded at 285 (offset 6 lines).
Hunk #2 succeeded at 302 (offset 6 lines).
Hunk #3 succeeded at 311 (offset 6 lines).
Hunk #4 succeeded at 323 (offset 1 line).
  CC      cs.o
  CC      MCInstrDesc.o
  CC      utils.o
  CC      SStream.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMModule.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
CC libbochs.c
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64Disassembler.o

BUILD SUMARY
============
COMPILER gcc
CC gcc
HOST_CC gcc
HOST_OS linux
BUILD_OS linux
============

>>>>>>>>>>>>>>>>
NATIVE BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
CC cdb.c
CC buffer.c
ar: creating lib/libbochs.a
a - src/libbochs.o
CC cdb_make.c
  CC      arch/AArch64/AArch64Module.o
CC ls.c
  CC      arch/M68K/M68KInstPrinter.o
CC ht.c
CC sdb.c
CC num.c
ar: creating libr_wind.a
CC base64.c
  CC      arch/M68K/M68KDisassembler.o
CC match.c
CC json.c
CC ns.c
CC lock.c
  CC      arch/M68K/M68KModule.o
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/Mips/MipsInstPrinter.o
CC util.c
CC disk.c
  CC      arch/Mips/MipsMapping.o
  CC      arch/Mips/MipsModule.o
CC query.c
CC array.c
CC fmt.c
  CC      arch/PowerPC/PPCDisassembler.o
CC journal.c
CC main.c
  CC      arch/PowerPC/PPCInstPrinter.o
AR libsdb.a
ar: creating libsdb.a
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCModule.o
BIN sdb
  CC      arch/Sparc/SparcDisassembler.o

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/Sparc/SparcInstPrinter.o
CC cdb.c
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
CC buffer.c
CC cdb_make.c
CC ls.c
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/SystemZ/SystemZInstPrinter.o
CC ht.c
CC sdb.c
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZModule.o
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c
  CC      arch/SystemZ/SystemZMCTargetDesc.o
CC util.c
CC disk.c
  CC      arch/X86/X86DisassemblerDecoder.o
CC query.c
CC array.c
CC fmt.c
CC journal.c
  CC      arch/X86/X86Disassembler.o
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
AR libsdb.a
ar: creating libsdb.a
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreDisassembler.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
  CC      arch/XCore/XCoreModule.o
  CC      MCInst.o
  AR      libcapstone.a
ar: creating ./libcapstone.a
make -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC cdb_make.c
CC PIC buffer.c
CC PIC ls.c
CC PIC sdb.c
CC PIC ht.c
CC PIC base64.c
```
The warning came up so far is so fewer than build with debugger..I collect in here, only two or three (previously..a lot)
```asm
[...]
calc.c: In function 'r_hash_calculate':
calc.c:39:8: warning: unused variable 'pres' [-Wunused-variable]
[...]
CC cr16_disas.c
/test/radare2/libr/..//libr/bin/p/bin_elf.c:581:15: warning: 'patch_relocs' defined but not used [-Wunused-function]
CC dex.c
[...]
```
looks good.. build continuing...

Oh, maybe not that good too, same error looks occurred:
```asm


[...]

CC utils.c
CC hashtable.c
CC hashvector.c
CC pe64.c
CC bin_pebble.c
CC bin_psxexe.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]
CC anal_v810.c

[...]

CC demangler.c
CC microsoft_demangle.c
/test/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 'z80_op' defined but not used [-Wunused-variable]
CC objc.c

[...]

CC anal_ex.c
CC switch.c
anal.c: In function 'r_anal_set_reg_profile':
anal.c:205:7: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
CC state.c

[...]

CC mmemory.c
CC parse_ppc_pseudo.c
CC parse_x86_pseudo.c
LD libr_parse.so
CC parse_z80_pseudo.c
gcc: warning: /test/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done
DIR asm
DIR debug
CC asm_6502.c
CC asm_8051.c

[...] // here comes the debugger... why it is compiled even it was configured as disabled?

CC debug_bf.c
CC asm_cris_gnu.c
CC cris-dis.c
CC debug_bochs.c
CC debug_esil.c
CC cris-opc.c
CC asm_csr.c
CC asm_dalvik.c
CC asm_dcpu16.c
CC debug_gdb.c
CC asm_ebc.c
CC debug_native.c
CC debug_qnx.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hppa_gnu.c
CC debug_rap.c
CC hppa-dis.c
CC debug_wind.c
CC asm_i4004.c
CC linux_debug.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC lanai-opc.c
CC asm_lh5801.c
CC asm_lm32.c
p/native/linux/linux_debug.c: In function 'linux_reg_profile':
p/native/linux/linux_debug.c:28:2: error: #error "Unsupported Linux CPU"
p/native/linux/linux_debug.c: In function 'linux_handle_signals':
p/native/linux/linux_debug.c:43:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c: In function 'print_fpu':
p/native/linux/linux_debug.c:291:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:376:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:383:4: error: unknown type name 'R_DEBUG_REG_T'
p/native/linux/linux_debug.c:296:7: warning: variable 'showfpu' set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: In function 'linux_reg_write':CC asm_m68k.c

p/native/linux/linux_debug.c:425:43: error: 'struct user' has no member named 'u_debugreg'
p/native/linux/linux_debug.c:431:17: error: 'R_DEBUG_REG_T' undeclared (first use in this function)
p/native/linux/linux_debug.c:431:17: note: each undeclared identifier is reported only once for each function it appears in
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:203:13: warning: 'print_fpu' defined but not used [-Wunused-function]
p/native/linux/linux_debug.c: In function 'linux_reg_profile':
p/native/linux/linux_debug.c:30:1: warning: control reaches end of non-void function [-Wreturn-type]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[4]: *** Waiting for unfinished jobs....
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
CC asm_mcs96.c
CC asm_mips_cs.c
CC asm_mips_gnu.c
CC mips-dis.c
CC mips16-opc.c
CC mips-opc.c
CC mipsasm.c
[...]
```
I sweared the config was correct for not using debugger. But it is still compiling native linux debugger why the error occured.
Well, obviously same compilation error is ending the build process:
```asm
CC asm_z80_cr.c
CC asm.c
CC code.c
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /home/mung/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /home/mung/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
```
screenshot for evidence:
![](https://lh3.googleusercontent.com/-FidIEZJWmiE/VyF4Yhs3HTI/AAAAAAAAUzA/ZqHALbGhOcUMYnroJMf0YVUxhAk5XpFKwCLcB/s800/004.PNG)

Write report to the dev upstream #4720:
https://github.com/radare/radare2/issues/4720#issuecomment-215122291

Analyzing, reevaluating the dev and thinking of next approach:
> ![](https://lh3.googleusercontent.com/-9njHiC0tjlA/VyF5Ud6QFaI/AAAAAAAAUzI/GtR3Idvnq5ocTHfjYHKI1c_4ZovXxig3gCLcB/s800/005.PNG)
> figuring what was missing https://github.com/radare/radare2/issues/4720#issuecomment-215298116

Currently in tests:

- Applying Jeffrey Crowell <crowell@bu.edu> patch drafted in https://github.com/radare/radare2/issues/4720#issuecomment-215298116 [done]
- keep build.sh with configure --disable-debugger [done] 
- test the patch AND configure --disable-debugger first [FAILED..see parsed log below]
- test the patch AND enable debugger [task]

Parsed failed log:
```asm
[...]

CC calc.c
CC xxhash.c
calc.c: In function 'r_hash_calculate':
calc.c:39:8: warning: unused variable 'pres' [-Wunused-variable]
CC adler32.c
LD libr_hash.so
DIR socket
DIR reg

[...]

/test/radare2/libr/..//libr/bin/p/bin_elf.c:581:15: warning: 'patch_relocs' defined but not used [-Wunused-function]
CC dex.c
CC anal_bf.c
CC bin_dol.c
CC bin_dyldcache.c
CC bin_elf.c
CC anal_cr16.c

[...]

CC utils.c
CC hashtable.c
CC hashvector.c
CC anal_v810.c
CC v810_disas.c
CC anal_v850.c
CC v850_disas.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]

[...]

CC anal_z80.c
CC meta.c
CC reflines.c
CC ref.c
CC op.c
CC fcn.c
CC bb.c
/test/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 'z80_op' defined but not used [-Wunused-variable]
CC var.c

[...]

CC anal_ex.c
CC switch.c
CC state.c
CC cycles.c
anal.c: In function 'r_anal_set_reg_profile':
anal.c:205:7: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
CC esil_stats.c
CC esil_trace.c
CC flirt.c
CC labels.c
CC esil2reil.c
CC pin.c
LD libr_anal.so
DIR parse
CC parse.c
CC code.c
CC parse_6502_pseudo.c
CC parse_arm_pseudo.c
CC parse_att2intel.c
CC parse_dalvik_pseudo.c
CC parse_m68k_pseudo.c
CC parse_mips_pseudo.c
CC parse_mreplace.c
CC mreplace.c
CC mmemory.c
CC parse_ppc_pseudo.c
CC parse_x86_pseudo.c
LD libr_parse.so
CC parse_z80_pseudo.c
gcc: warning: /test/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done

[...]

CC linux_debug.c
p/native/linux/linux_debug.c: In function 'linux_reg_profile':
p/native/linux/linux_debug.c:30:2: error: #error "Unsupported Linux CPU"
p/native/linux/linux_debug.c: In function 'linux_handle_signals':
p/native/linux/linux_debug.c:45:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c: In function 'print_fpu':
p/native/linux/linux_debug.c:293:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:378:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:385:4: error: unknown type name 'R_DEBUG_REG_T'
p/native/linux/linux_debug.c:298:7: warning: variable 'showfpu' set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: In function 'linux_reg_write':
p/native/linux/linux_debug.c:427:43: error: 'struct user' has no member named 'u_debugreg'
p/native/linux/linux_debug.c:433:17: error: 'R_DEBUG_REG_T' undeclared (first use in this function)
p/native/linux/linux_debug.c:433:17: note: each undeclared identifier is reported only once for each function it appears in
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:205:13: warning: 'print_fpu' defined but not used [-Wunused-function]
p/native/linux/linux_debug.c: In function 'linux_reg_profile':
p/native/linux/linux_debug.c:32:1: warning: control reaches end of non-void function [-Wreturn-type]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[4]: *** Waiting for unfinished jobs....
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
~/radare2$
```
The p/native/linux/linux_debug.c needs more adjustment for ppc CPU, either to be added in linux_ppc.h or in linux_debug.c

Adding report:
https://github.com/radare/radare2/issues/4720#issuecomment-215305072

Made additional test patch and reported at:
https://github.com/radare/radare2/issues/4720#issuecomment-215339789

Done tested the patched #if 0 below:
```asm
--- linux_debug.c.TEST  2016-04-28 09:41:04.000000000 +0000
+++ linux_debug.c.ORIG  2016-04-28 03:15:12.004081151 +0000
@@ -378,16 +378,13 @@
        #warning not implemented for this platform
 #endif
                break;
-
-/* #if 0 commented for ppc */
-       case R_REG_TYPE_SEG:
-       case R_REG_TYPE_FLG:
-       case R_REG_TYPE_GPR:
-               {
-#if 0                  R_DEBUG_REG_T regs;
-                       memset (&regs, 0, sizeof (regs));
-                       memset (buf, 0, size);
-
+       case R_REG_TYPE_SEG:
+       case R_REG_TYPE_FLG:
+       case R_REG_TYPE_GPR:
+               {
+                       R_DEBUG_REG_T regs;
+                       memset (&regs, 0, sizeof (regs));
+                       memset (buf, 0, size);
 #if __arm64__ || __aarch64__
                        {
                        struct iovec io = {
@@ -427,19 +424,13 @@
                long *val = (long*)buf;
                for (i = 0; i < 8; i++) { // DR0-DR7
                        if (i == 4 || i == 5) continue;
-
-/* #if 0 commented for ppc */
-
-#if 0                  if (ptrace (PTRACE_POKEUSER, dbg->pid, r_offsetof (
+                       if (ptrace (PTRACE_POKEUSER, dbg->pid, r_offsetof (
                                        struct user, u_debugreg[i]), val[i])) {
                                eprintf ("ptrace error for dr %d\n", i);
                                perror ("ptrace");
                        }
                }
-
-/* #if 0 commented for ppc */
-#if 0          return sizeof(R_DEBUG_REG_T);
-
+               return sizeof(R_DEBUG_REG_T);
 #else
                return false;
 #endif
```
Using latest linux_debug.c for this test in here: https://github.com/unixfreaxjp/dev/blob/master/linux_debug.c

Follow up from @radare here:
https://github.com/radare/radare2/issues/4720#issuecomment-215410736

Replied and conducting fresh test based on:
https://github.com/radare/radare2/issues/4720#issuecomment-215421056

Goto fresh test in: https://github.com/unixfreaxjp/dev/blob/master/r2ppc-3.md

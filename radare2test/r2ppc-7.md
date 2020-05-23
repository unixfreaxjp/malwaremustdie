### radare2 v0.10.5 ###

Reference issue: 

BigEndian support in the ELF parser #5305

https://github.com/radare/radare2/issues/5305

built and tested in __Linux/PPC x32__ (debian) (big endian binaries)

The purpose of the test is for static analysis for big endian binaries in the Linux/PPC native environmemt. 
We don't expect that the debugger and ESIL is working here.

```asm
################################
##                            ##
##       ENVIRONMENT          ##
##                            ##
################################

[0x10003c90]> !uname -a&&date
Linux powerpc 3.2.0-4-powerpc #1 Debian 3.2.78-1 ppc
Thu Aug 18 05:09:41 UTC 2016
[0x10003c90]> !sudo cat /proc/cpuinfo
cpu             : 740/750
temperature     : 62-64 C (uncalibrated)
clock           : 266.000000MHz
revision        : 3.1 (pvr 0008 0301)
bogomips        : 33.20
timebase        : 16601250
platform        : PowerMac
model           : Power Macintosh
machine         : Power Macintosh
motherboard     : AAPL,PowerMac G3 MacRISC
detected as     : 49 (PowerMac G3 (Silk))
pmac flags      : 00000000
pmac-generation : OldWorld
Memory          : 256 MB
```

### cleanups
```asm
################################
##                            ##
##       CLEANUP              ##
##                            ##
################################

$ make uninstall
cd libr && make uninstall PARENT=1
make[1]: Entering directory `/test//radare2/libr'
# libraries
/test//bin/prefix/radare2//lib/libr_anal.so
/test//bin/prefix/radare2//lib/libr_asm.so
/test//bin/prefix/radare2//lib/libr_bin.so
/test//bin/prefix/radare2//lib/libr_bp.so
/test//bin/prefix/radare2//lib/libr_config.so
/test//bin/prefix/radare2//lib/libr_cons.so
/test//bin/prefix/radare2//lib/libr_core.so
/test//bin/prefix/radare2//lib/libr_crypto.so
/test//bin/prefix/radare2//lib/libr_debug.so
/test//bin/prefix/radare2//lib/libr_egg.so
/test//bin/prefix/radare2//lib/libr_flags.so
/test//bin/prefix/radare2//lib/libr_fs.so
/test//bin/prefix/radare2//lib/libr_hash.so
/test//bin/prefix/radare2//lib/libr_io.so
/test//bin/prefix/radare2//lib/libr_lang.so
/test//bin/prefix/radare2//lib/libr_magic.so
/test//bin/prefix/radare2//lib/libr_parse.so
/test//bin/prefix/radare2//lib/libr_reg.so
/test//bin/prefix/radare2//lib/libr_search.so
/test//bin/prefix/radare2//lib/libr_socket.so
/test//bin/prefix/radare2//lib/libr_syscall.so
/test//bin/prefix/radare2//lib/libr_util.so
# object archives
# includes
if [ -h "/test//bin/prefix/radare2//include/libr" ]; then \
  rm -f "/test//bin/prefix/radare2//include/libr" ; \
 else \
  (cd include && for FILE in * ; do rm -f "/test//bin/prefix/radare2//include/libr/$FILE" ; done) ; \
 fi
# programs
/test//bin/prefix/radare2//bin/t-fun2.sh
/test//bin/prefix/radare2//bin/t-loop2.sh
/test//bin/prefix/radare2//bin/t-nest2.sh
# plugins
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_spc700.so
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_x86_olly.so
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_ppc_gnu.so
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_dalvik.so
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_cr16.so
/test//bin/prefix/radare2//lib/radare2/0.10.4-git/asm_z80_cr.so
      :
      
$ make purge
rm -rf "/test//bin/prefix/radare2//share/doc/radare2"
cd man ; for FILE in *.1 ; do rm -f "/test//bin/prefix/radare2//share/man/man1/$FILE" ; done
rm -f "/test//bin/prefix/radare2//share/man/man1/r2.1"
rm -f "/test//bin/prefix/radare2//lib/libr_"*"."
rm -f "/test//bin/prefix/radare2//lib/pkgconfig/r_"*.pc
rm -rf "/test//bin/prefix/radare2//include/libr"
rm -f "/test//bin/prefix/radare2//lib/radare2/0.10.4-git/-"*
rm -f ~/bin/"rabin2" rm -f ~/bin/"radare2" rm -f ~/bin/"radiff2" rm -f ~/bin/"rafind2" rm -f ~/bin/"ragg2" rm -f ~/bin/"rahash2" rm -f ~/bin/"rarun2" rm -f ~/bin/"rasign2" rm -f ~/bin/"rasm2" rm -f ~/bin/"rax2" rm -f ~/bin/"r2agent" rm -f ~/bin/"r2pm"
rm -f ~/bin/r2
rmdir ~/bin
rmdir: failed to remove `/test//bin': Directory not empty
make: [user-uninstall] Error 1 (ignored)
for FILE in rabin2 radare2 radiff2 rafind2 ragg2 rahash2 rarun2 rasign2 rasm2 rax2 r2agent r2pm ; do rm -f "/test//bin/prefix/radare2//bin/$FILE" ; done
rm -f "/test//bin/prefix/radare2//bin/ragg2-cc"
rm -f "/test//bin/prefix/radare2//bin/r2"
rm -f "/test//bin/prefix/radare2//lib/libr_"*
rm -f "/test//bin/prefix/radare2//lib/libr2."
rm -rf "/test//bin/prefix/radare2//lib/radare2"
rm -rf "/test//bin/prefix/radare2//include/libr"

$ git clean -xdf ; sleep 1 ; git reset --hard ; sleep 1 ; git describe --all --long
Removing shlr/capstone/
HEAD is now at 2f5ead1 Update www-m again
heads/master-0-g2f5ead1
```

### updating
```asm
$ git pull
remote: Counting objects: 2642, done.
remote: Compressing objects: 100% (39/39), done.
remote: Total 2642 (delta 1528), reused 1509 (delta 1509), pack-reused 1094
Receiving objects: 100% (2642/2642), 980.44 KiB | 299 KiB/s, done.
Resolving deltas: 100% (2126/2126), completed with 466 local objects.
From https://github.com/radare/radare2
   2f5ead1..50473d8  master     -> origin/master
 * [new branch]      lcall      -> origin/lcall
 * [new branch]      ring0-io   -> origin/ring0-io
 + 2c4ca7c...4400ea7 sk2        -> origin/sk2  (forced update)
From https://github.com/radare/radare2
 * [new tag]         0.10.4     -> 0.10.4
 * [new tag]         0.10.4-termux4 -> 0.10.4-termux4
 * [new tag]         0.10.5     -> 0.10.5
 * [new tag]         termux     -> termux
Updating 2f5ead1..50473d8
   :
 484 files changed, 22302 insertions(+), 15795 deletions(-)
   :
```

### installing 

```asm
################################
##                            ##
##       BUILD TEST           ##
##                            ##
################################

$ sys/user.sh 
WARNING: Updating from remote repository
Already up-to-date.

export USE_R2_CAPSTONE=

Removing Makefile.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing libcapstone.a
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_udis asm.xap asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.avr bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... powerpc-unknown-linux-gnu
checking host system type... powerpc-unknown-linux-gnu
checking target system type... powerpc-unknown-linux-gnu
checking for working directories... current
using prefix '/test//bin/prefix/radare2/'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
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
 - PREFIX = /test//bin/prefix/radare2/
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 0.10.6-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 0.10.6-git
 - BUILD = powerpc-unknown-linux-gnu
 - HOST = powerpc-unknown-linux-gnu
 - TARGET = powerpc-unknown-linux-gnu
Generating r_version.h file
Update libr/include/r_version.h
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
inflate.c: In function ?inflateMark?:
inflate.c:1512:9: warning: overflow in implicit constant conversion [-Woverflow]
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
CC zip_dirent.c
CC zip_discard.c
CC zip_entry.c
CC zip_err_str.c
CC zip_error.c
CC zip_error_clear.c
CC zip_error_get.c
CC zip_error_get_sys_type.c
CC zip_error_strerror.c
CC zip_error_to_str.c
CC zip_extra_field.c
CC zip_extra_field_api.c
CC zip_fclose.c
CC zip_fdopen.c
CC zip_file_add.c
CC zip_file_error_clear.c
        :
HEAD 5ff595c362695803e01d620d559a112cb186a789
TIP a0f082d32ca3e9d7e6d0b8fbc9b19f2a0978d8e9
HEAD is now at fad7078 Merge branch 'next' of https://github.com/aquynh/capstone into next
Already on 'next'
Your branch is behind 'origin/next' by 9 commits, and can be fast-forwarded.
CC libbochs.c

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

ar: creating lib/libbochs.a
a - src/libbochs.o
ar: creating libr_wind.a
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC ht.c
CC sdb.c
CC base64.c
CC num.c
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
CC main.c
AR libsdb.a
ar: creating libsdb.a
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

remote: Counting objects: 144, done.
remote: Compressing objects: 100% (49/49), done.
remote: Total 144 (delta 86), reused 63 (delta 63), pack-reused 32
Receiving objects: 100% (144/144), 115.06 KiB | 143 KiB/s, done.
CC cdb.cg deltas:  72% (67/92)   
CC cdb_make.c
CC buffer.c
CC ls.c
CC ht.c
CC base64.c
CC match.c
CC sdb.c
CC num.c
CC ns.c
CC json.c
Resolving deltas: 100% (92/92), completed with 42 local objects.
From https://github.com/aquynh/capstone
   5c4277c..fbd27e2  next       -> origin/next
   d99cbc3..252d9b7  master     -> origin/master
CC lock.c
CC util.c
From https://github.com/aquynh/capstone
 * [new tag]         3.0.5-rc1  -> 3.0.5-rc1
 * [new tag]         4.0-alpha3 -> 4.0-alpha3
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
Updating fad7078..fbd27e2
Fast-forward
 .gitignore                            |    2 +
 MCInst.c                              |    1 +
 MCInst.h                              |    1 +
 arch/AArch64/AArch64MappingInsn.inc   |    4 +-
 arch/ARM/ARMInstPrinter.c             |   13 +-
 arch/ARM/ARMMapping.c                 |    1 +
 arch/ARM/ARMMappingInsnOp.inc         |    8 +-
 arch/M68K/M68KDisassembler.c          |  133 ++++++++
 arch/M68K/M68KDisassembler.h          |    4 +
 arch/M68K/M68KInstPrinter.c           |   20 +-
 arch/X86/X86ATTInstPrinter.c          |    8 +-
 arch/X86/X86DisassemblerDecoder.c     |    1 +
 arch/X86/X86IntelInstPrinter.c        |    8 +-
 arch/X86/X86Mapping.c                 |  225 ++++++++++++-
 arch/X86/X86MappingInsnOp.inc         |   36 +-
 arch/X86/X86MappingInsnOp_reduce.inc  |   38 +--
 bindings/java/capstone/X86_const.java | 2646 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------
 bindings/ocaml/x86_const.ml           | 2646 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------
 bindings/python/Makefile              |    3 +-
 bindings/python/capstone/m68k.py      |    3 +-
 bindings/python/capstone/x86_const.py | 2646 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------------------------------------------------
 bindings/python/test_m68k.py          |   11 +-
 cs.c                                  |    9 +-
 include/capstone/capstone.h           |    2 +-
 include/capstone/x86.h                |  185 ++++++++++-
 tests/test_m68k.c                     |   26 +-
 windows/winkernel_mm.c                |    2 +-
 27 files changed, 4868 insertions(+), 3814 deletions(-)
HEAD is now at a0f082d arm: fix issue #744
HEAD is now at a0f082d arm: fix issue #744
patching file arch/X86/X86ATTInstPrinter.c
Hunk #1 succeeded at 604 (offset 28 lines).
patching file arch/X86/X86IntelInstPrinter.c
Hunk #1 succeeded at 799 (offset 43 lines).
patching file arch/X86/X86Mapping.c
Hunk #1 succeeded at 2936 (offset 169 lines).
patching file Makefile
Hunk #1 succeeded at 285 (offset 6 lines).
Hunk #2 succeeded at 302 (offset 6 lines).
Hunk #3 succeeded at 311 (offset 6 lines).
Hunk #4 succeeded at 323 (offset 1 line).
AR libsdb.a
ar: creating libsdb.a
  CC      utils.o
  CC      cs.o
  CC      SStream.o
  CC      MCInstrDesc.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/AArch64/AArch64Module.o
  CC      arch/M68K/M68KInstPrinter.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KModule.o
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/Mips/MipsInstPrinter.o
  CC      arch/Mips/MipsMapping.o
  CC      arch/Mips/MipsModule.o
                :

      :
CC rafind2.c
LD rafind2
CC rarun2.c
LD rarun2
CC ragg2.c
LD ragg2
CC r2agent.c
LD r2agent
mkdir -p "/test//bin/prefix/radare2//share/man/man1"
mkdir -p "/test//bin/prefix/radare2//share/man/man7"
cd man && for FILE in *.1 ; do \
  ln -fs "/test//radare2/man/$FILE" "/test//bin/prefix/radare2//share/man/man1/$FILE" ; done
cd "/test//bin/prefix/radare2//share/man/man1" && ln -fs radare2.1 r2.1
for FILE in *.7 ; do \
  ln -fs "/test//radare2/man/$FILE" "/test//bin/prefix/radare2//share/man/man7/$FILE" ; done
/usr/bin/install -d "/test//bin/prefix/radare2//share/doc/radare2"
cd doc ; for FILE in * ; do \
  ln -fs "/test//radare2/doc/$FILE" "/test//bin/prefix/radare2//share/doc/radare2" ; done
cd pkgcfg ; for FILE in *.pc ; do \
  ln -fs "${PWD}/$FILE" "/test//bin/prefix/radare2//lib/pkgconfig/$FILE" ; done
rm -rf "/test//bin/prefix/radare2//share/radare2/0.10.6-git/www"
rm -rf "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/www" # old dir
mkdir -p "/test//bin/prefix/radare2//share/radare2/0.10.6-git/www"
cd "/test//bin/prefix/radare2//share/radare2/0.10.6-git/www" ; \
  for FILE in "/test//radare2/shlr/www/"* ; do \
   ln -fs "$FILE" "/test//bin/prefix/radare2//share/radare2/0.10.6-git/www" ; done
cd libr && make install-symlink
make[1]: Entering directory `/test//radare2/libr'
mkdir -p "/test//bin/prefix/radare2//bin" \
  "/test//bin/prefix/radare2//include" \
  "/test//bin/prefix/radare2//lib/pkgconfig" \
  "/test//bin/prefix/radare2//lib/radare2/0.10.6-git"
rm -rf "/test//bin/prefix/radare2//include/libr" && ln -fs "/test//radare2/libr/include" "/test//bin/prefix/radare2//include/libr"
cd ../pkgcfg && for FILE in *.pc ; do \
  if [ -e "/test//radare2/libr/../pkgcfg/${FILE}" ] ; then \
   ln -fs "/test//radare2/libr/../pkgcfg/${FILE}" \
    "/test//bin/prefix/radare2//lib/pkgconfig/${FILE}" ; \
  fi ; \
 done
cd "/test//bin/prefix/radare2//lib/radare2" ; rm -f last ; ln -fs "0.10.6-git" last
make[1]: Leaving directory `/test//radare2/libr'
cd binr && make install-symlink
make[1]: Entering directory `/test//radare2/binr'
mkdir -p "/test//bin/prefix/radare2//bin"
for BINARY in rax2 rasm2 rabin2 rahash2 radiff2 radare2 rafind2 rarun2 ragg2 r2agent ; do ln -fs "/test//radare2/binr/$BINARY/$BINARY" "/test//bin/prefix/radare2//bin/$BINARY" ; done
ln -fs "/test//radare2/binr/ragg2/ragg2-cc" "/test//bin/prefix/radare2//bin/ragg2-cc"
ln -fs "/test//radare2/binr/r2pm/r2pm" "/test//bin/prefix/radare2//bin/r2pm"
rm -rf "/test//bin/prefix/radare2//share/radare2/0.10.6-git/r2pm"
mkdir -p "/test//bin/prefix/radare2//share/radare2/0.10.6-git/"
#ln -fs "/test//radare2/binr/r2pm/d" "/test//bin/prefix/radare2//share/radare2/0.10.6-git/r2pm"
ln -fs "/test//bin/prefix/radare2//bin/radare2" "/test//bin/prefix/radare2//bin/r2"
ln -fs "/test//radare2/binr/preload/libr2.so" "/test//bin/prefix/radare2//lib/libr2.so"
cd "/test//bin/prefix/radare2//lib" && \
  mv libr2.so libr2.so.0.10.6-git && \
  ln -fs libr2.so.0.10.6-git libr2.so
make[1]: Leaving directory `/test//radare2/binr'
cd shlr && make install-symlink
make[1]: Entering directory `/test//radare2/shlr'
mkdir -p "/test//bin/prefix/radare2//lib"
#cd tcc ; for FILE in libr_tcc* ; do \
 # ln -fs `pwd`/$FILE /test//bin/prefix/radare2//lib/$FILE ; done
make[1]: Leaving directory `/test//radare2/shlr'
for DIR in libr/cons/d libr/bin/d libr/asm/d libr/syscall/d libr/magic/d libr/anal/d ; do (\
  cd "$DIR" ; \
  echo "$DIR" ; \
  make install-symlink ); \
 done
libr/cons/d
make[1]: Entering directory `/test//radare2/libr/cons/d'
mkdir -p "/test//bin/prefix/radare2//share/radare2/0.10.6-git/cons"
for FILE in * ; do \
  if [ $FILE != Makefile ]; then \
   ln -fs "/test//radare2/libr/cons/d/$FILE" "/test//bin/prefix/radare2//share/radare2/0.10.6-git/cons/$FILE" ; \
  fi ; \
 done
make[1]: Leaving directory `/test//radare2/libr/cons/d'
libr/bin/d
make[1]: Entering directory `/test//radare2/libr/bin/d'
mkdir -p "/test//bin/prefix/radare2//share/radare2/0.10.6-git/format"
for FILE in * ; do \
  if [ "$FILE" != Makefile ]; then \
   ln -fs "/test//radare2/libr/bin/d/$FILE" "/test//bin/prefix/radare2//share/radare2/0.10.6-git/format/$FILE" ; \
  fi ; \
 done
make[1]: Leaving directory `/test//radare2/libr/bin/d'
libr/asm/d
make[1]: Entering directory `/test//radare2/libr/asm/d'
mkdir -p "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/opcodes"
for FILE in *.sdb ; do ln -fs "/test//radare2/libr/asm/d/$FILE" "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/opcodes/$FILE" ; done
make[1]: Leaving directory `/test//radare2/libr/asm/d'
libr/syscall/d
make[1]: Entering directory `/test//radare2/libr/syscall/d'
mkdir -p "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/syscall"
for FILE in *.sdb ; do ln -fs "/test//radare2/libr/syscall/d/$FILE" "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/syscall/$FILE" ; done
make[1]: Leaving directory `/test//radare2/libr/syscall/d'
libr/magic/d
make[1]: Entering directory `/test//radare2/libr/magic/d'
mkdir -p "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/magic"
cd default ; for FILE in * ; do ln -fs "/test//radare2/libr/magic/d/default/$FILE" \
  "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/magic/$FILE" ; done
make[1]: Leaving directory `/test//radare2/libr/magic/d'
libr/anal/d
make[1]: Entering directory `/test//radare2/libr/anal/d'
mkdir -p "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/fcnsign"
for FILE in *.sdb ; do ln -fs "/test//radare2/libr/anal/d/$FILE" "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/fcnsign/$FILE" ; done
make[1]: Leaving directory `/test//radare2/libr/anal/d'
mkdir -p "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/hud"
cd "/test//bin/prefix/radare2//lib/radare2/" ;\
  rm -f last ; ln -fs 0.10.6-git last
cd "/test//bin/prefix/radare2//share/radare2/" ;\
  rm -f last ; ln -fs 0.10.6-git last
ln -fs "/test//radare2/doc/hud" "/test//bin/prefix/radare2//lib/radare2/0.10.6-git/hud/main"
mkdir -p "/test//bin/prefix/radare2//share/radare2/0.10.6-git/"
sys/ldconfig.sh
./configure-plugins --rm-static //test//bin/prefix/radare2//lib/radare2/last/
configure-plugins: Loading ./plugins.cfg ..
Removed 98 shared plugins that are already static
mkdir -p ~/bin
echo "#!/bin/sh" > ~/bin/"rabin2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rabin2' \"\$@\"" >> ~/bin/"rabin2" ; chmod +x ~/bin/"rabin2" ; echo "#!/bin/sh" > ~/bin/"radare2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'radare2' \"\$@\"" >> ~/bin/"radare2" ; chmod +x ~/bin/"radare2" ; echo "#!/bin/sh" > ~/bin/"radiff2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'radiff2' \"\$@\"" >> ~/bin/"radiff2" ; chmod +x ~/bin/"radiff2" ; echo "#!/bin/sh" > ~/bin/"rafind2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rafind2' \"\$@\"" >> ~/bin/"rafind2" ; chmod +x ~/bin/"rafind2" ; echo "#!/bin/sh" > ~/bin/"ragg2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'ragg2' \"\$@\"" >> ~/bin/"ragg2" ; chmod +x ~/bin/"ragg2" ; echo "#!/bin/sh" > ~/bin/"rahash2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rahash2' \"\$@\"" >> ~/bin/"rahash2" ; chmod +x ~/bin/"rahash2" ; echo "#!/bin/sh" > ~/bin/"rarun2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rarun2' \"\$@\"" >> ~/bin/"rarun2" ; chmod +x ~/bin/"rarun2" ; echo "#!/bin/sh" > ~/bin/"rasign2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rasign2' \"\$@\"" >> ~/bin/"rasign2" ; chmod +x ~/bin/"rasign2" ; echo "#!/bin/sh" > ~/bin/"rasm2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rasm2' \"\$@\"" >> ~/bin/"rasm2" ; chmod +x ~/bin/"rasm2" ; echo "#!/bin/sh" > ~/bin/"rax2" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'rax2' \"\$@\"" >> ~/bin/"rax2" ; chmod +x ~/bin/"rax2" ; echo "#!/bin/sh" > ~/bin/"r2agent" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'r2agent' \"\$@\"" >> ~/bin/"r2agent" ; chmod +x ~/bin/"r2agent" ; echo "#!/bin/sh" > ~/bin/"r2pm" ; echo "/test//radare2/env.sh '/test//bin/prefix/radare2/' 'r2pm' \"\$@\"" >> ~/bin/"r2pm" ; chmod +x ~/bin/"r2pm" ;
cd ~/bin ; ln -fs radare2 r2

radare2 is now installed in /test//bin

Now add /test//bin to your PATH
```


### running test for specific big endian case

basic tests
```asm
################################
##                            ##
##       RUNNING TEST         ##
##                            ##
################################

$ r2 -v
radare2 0.10.6-git 12146 @ linux-ppc-32 git.0.10.5-8-g50473d8
commit: 50473d8897962e42c1b03d9e7ab5912e01809d49 build: 2016-08-18

[0x10003890]> !readelf -a /bin/ls|grep endian
  Data:                              2's complement, big endian
[0x00000000]> e asm.arch
ppc
[0x00000000]> e asm.bits
32
[0x00000000]> ie
[Entrypoints]
vaddr=0x10003890 paddr=0x00003890 baddr=0x10000000 laddr=0x00000000 type=program
1 entrypoints
[0x00000000]> s 0x10003890
[0x10003890]> pd
            ;-- entry0:
            0x10003890      7c290b78       mr r9, r1
            0x10003894      54210036       rlwinm r1, r1, 0, 0, 0x1b
            0x10003898      38000000       li r0, 0
            0x1000389c      9421fff0       stwu r1, -0x10(r1)
            0x100038a0      7c0803a6       mtlr r0
            0x100038a4      90010000       stw r0, (r1)
            0x100038a8      3d001001       lis r8, 0x1001
            0x100038ac      85a85630       lwzu r13, 0x5630(r8)
        ,=< 0x100038b0      480118a0       b sym.imp.__libc_start_main
        |   0x100038b4      9421ffe0       stwu r1, -0x20(r1)
        |   0x100038b8      7c0802a6       mflr r0
        |   0x100038bc      93810010       stw r28, 0x10(r1)
        |   0x100038c0      3f801003       lis r28, 0x1003
        |   0x100038c4      90010024       stw r0, 0x24(r1)
        |   0x100038c8      881ca2e0       lbz r0, -0x5d20(r28)
        |   0x100038cc      93a10014       stw r29, 0x14(r1)
        |   0x100038d0      2f800000       cmpwi cr7, r0, 0
        |   0x100038d4      93c10018       stw r30, 0x18(r1)
        |   0x100038d8      93e1001c       stw r31, 0x1c(r1)
        |   0x100038dc      409e0060       bne cr7, 0x1000393c
        |   0x100038e0      3fa01003       lis r29, 0x1003
               :

[0x10003c90]> x @0x10003c90!0x1024
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x10003c90  5400 063e 2b80 0036 41bd ff7c 5400 103a  T..>+..6A..|T..:
0x10003ca0  7c1f 002e 7c00 fa14 7c09 03a6 4e80 0420  |...|...|...N..
0x10003cb0  3929 0001 88e9 0000 2b87 0078 409d 0028  9)......+..x@..(
0x10003cc0  7ce8 3b78 990b 0000 394a 0001 396b 0001  |.;x....9J..9k..
0x10003cd0  3800 0000 2b80 0004 3929 0001 409d feac  8...+...9)..@...
0x10003ce0  4800 003c 54e0 103a 7c0c 002e 7c00 6214  H..<T..:|...|.b.
0x10003cf0  7c09 03a6 4e80 0420 54e7 06fe 3929 0001  |...N.. T...9)..
0x10003d00  98eb 0000 394a 0001 396b 0001 4bff fe94  ....9J..9k..K...
0x10003d10  2f80 0000 409e 001c 3800 0005 6800 0006  /...@...8...h...
0x10003d20  7c00 0034 5400 d97e 6800 0001 4bff ff28  |..4T..~h...K..(
0x10003d30  2f80 003a 409e fe90 4bff ffe0 5508 2036  /..:@...K...U. 6
0x10003d40  3929 0001 7d07 4214 88e9 0000 3908 ffc9  9)..}.B.....9...
0x10003d50  3807 ffd0 5508 063e 5400 063e 2b80 0036  8...U..>T..>+..6
0x10003d60  41bd feb4 4bff ff38 5508 2036 3929 0001  A...K..8U. 69)..
0x10003d70  7d07 4214 88e9 0000 3908 ffd0 3807 ffd0  }.B.....9...8...
0x10003d80  5508 063e 5400 063e 2b80 0036 41bd fe88  U..>T..>+..6A...
0x10003d90  4bff ff0c 3900 000b 4bff ff2c 3900 0009  K...9...K..,9...
0x10003da0  4bff ff24 3900 007f 4bff ff1c 3907 ffd0  K..$9...K...9...
0x10003db0  3800 0002 5508 063e 4bff ff1c 3800 0006  8...U..>K...8...
0x10003dc0  4bff ff14 3900 000d 4bff fefc 3900 000a  K...9...K...9...
0x10003dd0  4bff fef4 3900 000c 4bff feec 3900 001b  K...9...K...9...
0x10003de0  4bff fee4 3900 0008 4bff fedc 3900 0007  K...9...K...9...
0x10003df0  4bff fed4 3900 0020 4bff fecc 3800 0003  K...9.. K...8...
0x10003e00  3900 0000 4bff fed0 3929 0001 88e9 0000  9...K...9)......
0x10003e10  3807 ffc0 5400 063e 2b80 003e 41bd fe2c  8...T..>+..>A..,
   :
``` 
   
###stepping in visual mode###

Don't use debugger, you know this drill..
```asm
[0x100038d8 13% 240 /bin/ls]> ?0;f tmp;s.. @ pc
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x00000000  7f45 4c46 0102 0100 0000 0000 0000 0000  .ELF............
0x00000010  0002 0014 0000 0001 1000 3890 0000 0034  ..........8....4
0x00000020  0001 a3d8 0000 0000 0034 0020 0009 0028  .........4. ...(
0x00000030  001f 001e 0000 0006 0000 0034 1000 0034  ...........4...4
srr0 0x00000000     srr1 0x00000000     r0 0xffffb2e3       r1 0x00000000$
r2 0x00000000       r3 0x00000000       r4 0x00000000       r5 0x00000000
r6 0x00000000       r7 0x00000000       r8 0x00001001       r9 0x00000000
r10 0x00000000      r11 0x00000000      r12 0x00000000      r13 0x00006631
r14 0x00000000      r15 0x00000000      r16 0x00000000      r17 0x00000000
r18 0x00000000      r19 0x00000000      r20 0x00000000      r21 0x00000000
r22 0x00000000      r23 0x00000000      r24 0x00000000      r25 0x00000000
r26 0x00000000      r27 0x00000000      r28 0x00001003      r29 0x00000000
r30 0x00000000      r31 0x00000000       cr 0x00000000      xer 0x00000000
 lr 0x00000000      ctr 0x00000000       mq 0x00000000     vrsave 0x00000000
 pc 0x100038d8
            ;-- pc:                                                $
0x100038d8      93e1001c       stw r31, 0x1c(r1)
            0x100038dc      409e0060       bne cr7, 0x1000393c
            0x100038e0      3fa01003       lis r29, 0x1003
            0x100038e4      3fc01003       lis r30, 0x1003
            0x100038e8      3bbd9ec4       addi r29, r29, -0x613c                                                                                                                               $
0x100038ec      3bde9ec8       addi r30, r30, -0x6138
            0x100038f0      3fe01003       lis r31, 0x1003
            0x100038f4      7fddf050       subf r30, r29, r30
            0x100038f8      813fa2e4       lwz r9, -0x5d1c(r31)
            0x100038fc      7fde1670       srawi r30, r30, 2                                                                                                                                    $
0x10003900      3bdeffff       addi r30, r30, -1
            0x10003904      7f89f040       cmplw cr7, r9, r30
            0x10003908      409c002c       bge cr7, 0x10003934
            0x1000390c      3bffa2e4       addi r31, r31, -0x5d1c
            0x10003910      39290001       addi r9, r9, 1                                                                                                                                       $
0x10003914      5520103a       slwi r0, r9, 2
            0x10003918      913f0000       stw r9, (r31)
            0x1000391c      7c1d002e       lwzx r0, r29, r0
            0x10003920      7c0903a6       mtctr r0
            0x10003924      4e800421       bctrl                                                                                                                                                $
0x10003928      813f0000       lwz r9, (r31)
            0x1000392c      7f89f040       cmplw cr7, r9, r30
            0x10003930      419cffe0       blt cr7, 0x10003910
            0x10003934      38000001       li r0, 1
            0x10003938      981ca2e0       stb r0, -0x5d20(r28)                                                                                                                                 $
0x1000393c      80010024       lwz r0, 0x24(r1)
            0x10003940      83810010       lwz r28, 0x10(r1)
            0x10003944      7c0803a6       mtlr r0
Press <enter> to return to Visual mode.    lwz r29, 0x14(r1)
:> x@r8!44
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x00001001  5f63 7479 7065 5f62 5f6c 6f63 0067 6574  _ctype_b_loc.get
0x00001011  656e 7600 5f5f 6672 6561 6469 6e67 0073  env.__freading.s
0x00001021  7464 6572 7200 7763 7769 6474            tderr.wcwidt
```

grepping stuff ;)
```asm
0x10015d7b string[12] "8sort_files"
0x10015e98 string[11] "_pcdb_lswd"
0x10016248 string[7] "posix_"
0x10016308 string[12] "dev_ino_pop"
0x10016314 string[5] "main"
0x10016374 string[26] "sort_type____sort_version"
0x10016390 string[5] "ls.c"
0x10016398 string[5] "_lu"
0x100163a0 string[6] "__lu"
0x100163b0 string[7] "target"
0x100163b8 string[5] "__s"
0x100163c4 string[8] "_s___s"
0x100163d0 string[10] "__s____s"
0x100163dc string[5] "__"
0x100163e4 string[17] "cannot_access__s"
0x100163f8 string[10] "unlabeled"
0x10016404 string[29] "cannot_read_symbolic_link__s"
0x10016424 string[39] "Try___s___help__for_more_information.__n"
0x1001644c string[33] "Usage:__s__OPTION_...__FILE_...__n"
:
0x10017ddc string[45] "__help_____display_this_help_and_exit__n"
0x10017e0c string[54] "__version__output_version_information_and_exit__n"
0x10017e44 string[154] "__nSIZE_may_be__or_may_be_an_integer_optionally_followed_by__one_of_following:__nKB_1000__K_1024__MB_1000_1000__M_1024_1024__and_so_on_for_G__T__P__E__Z__Y.__n"
0x10017ee0 string[286] "__nUsing_color_to_distinguish_file_types_is_disabled_both_by_default_and__nwith___color_never.__With___color_auto__ls_emits_color_codes_only_when__nstandard_output_is_connected_to_a_terminal.__The_LS_COLORS_environment__nvariable_can_change_the_settings.__Use_the_dircolors_command_to_set_it.__n"
0x10018000 string[152] "__nExit_status:__n_0__if_OK___n_1__if_minor_problems__e.g.__cannot_access_subdirectory____n_2__if_serious_trouble__e.g.__cannot_access_command_line_argument_.__n"
0x10018098 string[23] "__nReport__s_bugs_to__s__n"
0x100180b0 string[22] "bug_coreutils_gnu.org"
0x100180c8 string[20] "_s_home_page:___s___n"
0x100180dc string[14] "GNU_coreutils"
0x100180ec string[39] "http:__www.gnu.org_software_coreutils_"
0x10018114 string[64] "General_help_using_GNU_software:__http:__www.gnu.org_gethelp____n"
0x10018158 string[69] "Report__s_translation_bugs_to__http:__translationproject.org_team____n"
0x100181a0 string[65] "For_complete_documentation__run:_info_coreutils___s_invocation___n"
0x100181e4 string[9] "full_iso"
0x100181f4 string[5] "vdir"
0x100181fc string[7] "locale"
0x10018204 string[18] "_usr_share_locale"
0x10018218 string[14] "QUOTING_STYLE"
0x10018228 string[65] "ignoring_invalid_value_of_environment_variable_QUOTING_STYLE:__s"
0x1001826c string[14] "LS_BLOCK_SIZE"
0x1001827c string[11] "BLOCK_SIZE"
0x10018288 string[8] "COLUMNS"
0x10018290 string[59] "ignoring_invalid_width_in_environment_variable_COLUMNS:__s"
0x100182cc string[8] "TABSIZE"
0x100182d4 string[62] "ignoring_invalid_tab_size_in_environment_variable_TABSIZE:__s"
0x10018314 string[44] "abcdfghiklmnopqrstuvw:xABCDFGHI:LNQRST:UXZ1"
0x10018340 string[23] "invalid_line_width:__s"
0x10018360 string[21] "invalid_tab_size:__s"
0x10018378 string[7] "__sort"
0x10018380 string[7] "__time"
0x10018388 string[9] "__format"
0x10018394 string[8] "__color"
```

###Simple Debugging and ESIL test###

(Re-pasted) Compile/built option:
```asm
Final report:
     :
 - PREFIX = /test//bin/prefix/radare2/
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 0.10.6-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1  <======== HERE
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 0.10.6-git
 - BUILD = powerpc-unknown-linux-gnu
 - HOST = powerpc-unknown-linux-gnu
 - TARGET = powerpc-unknown-linux-gnu
     :
```
The test purpose:
- debug enability test
- ESIL enabilitytest

debugging load basic test.....FAIL
```asm
$ r2 -d /bin/ls
Process with PID 17902 started...
attach 17902 17902
bin.baddr 0x10000000
Assuming filepath /bin/ls
asm.bits 32
r_debug_reg: error reading registers
r_debug_reg: error reading registers
r_debug_reg: error reading registers
 -- Wait a minute! I found a bug, self-fixing ... OK
r_debug_reg: error reading registers
[0x00000000]> 
```
my ESIL command for test.....FAIL
```asm
[0x00000000]> aeso
r_debug_reg: error reading registers
r_debug_reg: error reading registers
r_debug_reg: error reading registers
```

### Additional ###

Can't quit r2 once register error occurred: 

![](https://lh3.googleusercontent.com/7seZOJsXzYSi7D2G9P6MK4KnHWc5PZHlbph8-28WxL6jnFAd44tiq1EwXsTOVCHBQqPZpLrExR9dSh-oVjZiTKPuasI418e0xXOeQEAe_q5c-Xl44UyDvqNjIldEWnbfj9DXUVVjTerrRLxsUHS1IwF1M4P8IDmgwMrXHJD5oCyTWRRfiZArk_7QMos2MJt7SfRiPyj2rfP_rxPxu4-5SIBlB246k2gpfA3STBU3cqyzdGJ7FSmVXDvSMw7XSouNcyAJHbWPRrPd2eNid0ca7NG6g_CnSblDw-gk8LvagHLhSUGGlyS15uZLbblIhxVp65Tk8KIAbeN6j9ikz236-9Wys1IB8SQ0sglg2KAsSdpDOHaFPkIwfsy7i0MLZdCWp06haOAAaxk-qdWPcjGh6x_VvxticN5mDfJllgkga9uEKI2-Sr1Z5xDjws8JOdT8LdH0MIWIfI3bYQ030gR_XzWSDPnfdDafOEJ-aJyvnvKHtV3Sbza86eUEmU24cCFPuehEUC7aeB2eG4SH-p6YXHQJCh2vfkfJnfvZaeQiPtJP1hYgpGiM_a0Jd_LKi-TxIeCQtA95dbXwiTMp_VlBN0hOQmU8gIpFhQa-Og_fuMa89wrw-Q=w289-h394-no)

If you had this problem too..gotta use gracious style to quit, i.e.:
```asm
[0x00000000]> !killall -9 radare2
Killed

[0x10003894]> !kill -9 17894
Killed
```

### Conclusion ##
- Built was done successfully, and Big endian is parsed
- need confirmation on debugger ERROR: r_debug_reg: error reading registers
- Same ERROR lead to ESIL disabiluty (ERROR: r_debug_reg: error reading registers)

@unixfreaxjp

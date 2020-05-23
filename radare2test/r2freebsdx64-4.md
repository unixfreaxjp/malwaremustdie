Error in built log:
```asm
$ date&&git describe --all --long
Tue Nov 29 20:15:21 JST 2016
heads/master-0-g3fa97e9
$ sys/install.sh
WARNING: Updating from remote repository
Already up-to-date.
sudo is /usr/local/bin/sudo

export USE_R2_CAPSTONE=

Removing Makefile.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing arch/X86/X86Mapping.c.orig
Removing libcapstone.a
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_udis asm.xap asm.xcore_cs asm.xtensa asm.z80 bin.any bin.art bin.avr bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.menuet bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.io debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.tcp io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... amd64-unknown-freebsd
checking host system type... amd64-unknown-freebsd
checking target system type... amd64-unknown-freebsd
checking for working directories... current
using prefix '/usr'
checking for c compiler... gcc
checking for dynamic library... libc
checking for patch... /usr/bin/patch
checking for git... /usr/local/bin/git
checking for libmagic ... yes
Using PKGCONFIG: pkg-config
checking pkg-config flags for capstone... no
checking for libz ... yes
checking for libzip ... no
checking for libssl ... yes
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
creating pkgcfg/r_flag.pc
creating pkgcfg/r_syscall.pc
creating pkgcfg/r_util.pc
creating pkgcfg/r_search.pc
creating pkgcfg/r_bp.pc
creating pkgcfg/r_parse.pc
creating pkgcfg/r_fs.pc
cleaning temporally files... done

Final report:
 - PREFIX = /usr
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 1.1.0-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = bsd
 - LIBVERSION = 1.1.0-git
 - BUILD = amd64-unknown-freebsd
 - HOST = amd64-unknown-freebsd
 - TARGET = amd64-unknown-freebsd
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
CC gzlib.c
CC gzread.c
CC gzwrite.c
LIB libr_z.so
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
CC zip_memdup.c
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
LIB libr_zip.so
ar: warning: creating libr_zip.a
ar: warning: creating librz.a
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c
CC util.c
json.c: In function 'sdb_json_set':
json.c:93: warning: 'len[1]' may be used uninitialized in this function
json.c:91: warning: 'beg[1]' may be used uninitialized in this function
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
CC main.c
AR libsdb.a
ar: warning: creating libsdb.a
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC json.c
CC PIC ns.c
json.c: In function 'sdb_json_set':
json.c:93: warning: 'len[1]' may be used uninitialized in this function
json.c:91: warning: 'beg[1]' may be used uninitialized in this function
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.10.4
CC mem.c
CC pool.c
CC num.c
CC str.c
CC hex.c
CC file.c
CC range.c
CC tinyrange.c
CC prof.c
CC cache.c
CC sys.c
CC buf.c
CC w32-sys.c
CC base64.c
sys.c:181:2: warning: #warning TODO: r_sys_bt : unimplemented
sys.c: In function 'r_sys_crash_handler':
sys.c:274: warning: unused variable 'array'
sys.c: In function 'r_sys_perror_str':
sys.c:638: warning: ignoring #pragma push_macro
sys.c:641: warning: ignoring #pragma pop_macro
CC base85.c
CC base91.c
CC list.c
CC flist.c
CC ht.c
CC ht64.c
CC mixed.c
CC btree.c
CC chmod.c
CC graph.c
CC regcomp.c
CC regerror.c
CC regexec.c
CC uleb128.c
CC sandbox.c
CC calc.c
CC thread.c
CC thread_lock.c
CC thread_msg.c
CC strpool.c
CC bitmap.c
CC strht.c
CC p_date.c
CC p_format.c
CC print.c
CC p_seven.c
CC slist.c
CC randomart.c
CC log.c
CC zip.c
CC debruijn.c
CC utf8.c
CC strbuf.c
CC lib.c
CC name.c
CC spaces.c
CC diff.c
CC bdiff.c
CC stack.c
CC queue.c
CC tree.c
CC des.c
CC punycode.c
LD libr_util.so
CC socket.c
CC proc.c
CC http.c
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
run.c: In function 'handle_redirection_proc':
run.c:233: warning: implicit declaration of function 'forkpty'
LD libr_socket.so

CC libbochs.c
BUILD SUMARY
============
COMPILER gcc
CC gcc
HOST_CC gcc
HOST_OS freebsd
BUILD_OS freebsd
============

>>>>>>>>>>>>>>>>
NATIVE BUILD SDB
[capstone] Updating capstone from git...
HEAD a0f082d32ca3e9d7e6d0b8fbc9b19f2a0978d8e9
TIP 5bc875afc63c345347b66476a67c4202413fa75f
>>>>>>>>>>>>>>>>

ar: warning: creating libr_wind.a
ar: warning: creating lib/libbochs.a
a - src/libbochs.o
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
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
CC main.c
AR libsdb.a
ar: warning: creating libsdb.a
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

HEAD is now at 97b3492 Merge pull request #737 from xia0pin9/xia0pin9-arm64-blr
Already on 'next'
Your branch is behind 'origin/next' by 11 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
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
AR libsdb.a
ar: warning: creating libsdb.a
remote: Counting objects: 1095, done.
remote: Compressing objects: 100% (24/24), done.
remote: Total 1095 (delta 351), reused 340 (delta 340), pack-reused 731
Receiving objects: 100% (1095/1095), 1.68 MiB | 1.12 MiB/s, done.
Resolving deltas: 100% (759/759), completed with 141 local objects.
From https://github.com/aquynh/capstone
   fbd27e2..f996ce5  next       -> origin/next
   252d9b7..0de0c8b  master     -> origin/master
Updating 97b3492..f996ce5
Fast-forward
 .gitignore                                      |   4 +
 CMakeLists.txt                                  |  14 +++-
 COMPILE_MSVC.TXT                                |   2 +-
 ChangeLog                                       |  11 +++
 HACK.TXT                                        |   7 +-
 Makefile                                        |  54 +++++++------
 arch/AArch64/AArch64BaseInfo.c                  |   3 +-
 arch/AArch64/AArch64InstPrinter.c               |  14 ++--
 arch/AArch64/AArch64Mapping.c                   |   6 --
 arch/ARM/ARMDisassembler.c                      |   8 +-
 arch/ARM/ARMInstPrinter.c                       |  24 +++++-
 arch/ARM/ARMMapping.c                           |   1 +
 arch/ARM/ARMMappingInsnOp.inc                   |   6 +-
 arch/M68K/M68KDisassembler.c                    | 133 ++++++++++++++++++++++++++++++++
 arch/M68K/M68KDisassembler.h                    |   4 +
 arch/M68K/M68KInstPrinter.c                     |  24 +++++-
 arch/Sparc/SparcInstPrinter.c                   |   4 +
 arch/X86/X86ATTInstPrinter.c                    |  11 ++-
 arch/X86/X86DisassemblerDecoder.c               |   1 +
 arch/X86/X86GenAsmWriter.inc                    |  28 +++++--
 arch/X86/X86GenAsmWriter1.inc                   |   4 +-
 arch/X86/X86Mapping.c                           |  61 ++++++++++++---
 arch/X86/X86MappingInsn.inc                     |  14 ++--
 arch/X86/X86MappingInsnOp.inc                   |   8 +-
 arch/X86/X86MappingInsn_reduce.inc              |  10 +--
 arch/XCore/XCoreInstPrinter.c                   |  13 ++--
 bindings/java/TestArm.java                      |  14 ++--
 bindings/java/TestArm64.java                    |   8 +-
 bindings/java/TestBasic.java                    |   2 +-
 bindings/java/TestMips.java                     |  10 +--
 bindings/java/TestPpc.java                      |   8 +-
 bindings/java/TestSparc.java                    |  10 +--
 bindings/java/TestSystemz.java                  |   8 +-
 bindings/java/TestX86.java                      |  14 ++--
 bindings/java/TestXcore.java                    |   8 +-
 bindings/java/capstone/Arm.java                 |   6 +-
 bindings/java/capstone/Arm64_const.java         |   4 +-
 bindings/java/capstone/Capstone.java            |  40 ++++++++++
 bindings/java/capstone/X86_const.java           |   4 +-
 bindings/ocaml/arm64_const.ml                   |   4 +-
 bindings/ocaml/test_basic.ml                    |  67 ++++++++++++++++
 bindings/ocaml/x86_const.ml                     |   4 +-
 bindings/python/.gitignore                      |   8 +-
 bindings/python/{README.TXT => BUILDING.txt}    |  61 ++++-----------
 bindings/python/MANIFEST.in                     |   6 +-
 bindings/python/Makefile                        | 122 ++++++++----------------------
 bindings/python/PKG-INFO.src                    |  14 ----
 bindings/python/PKG-INFO.win                    |  14 ----
 bindings/python/README.pypi-src                 |  55 --------------
 bindings/python/{README.pypi-win => README.txt} |  19 +++--
 bindings/python/capstone/__init__.py            | 109 ++++++++++++++-------------
 bindings/python/capstone/arm64_const.py         |   4 +-
 bindings/python/capstone/x86_const.py           |   4 +-
 bindings/python/prebuilt/win32/.gitignore       |   3 -
 bindings/python/prebuilt/win64/.gitignore       |   3 -
 bindings/python/setup.py                        | 259 ++++++++++++++++++++++++++++++--------------------------------
 bindings/python/setup_cython.py                 | 138 ++++++++++++++++++++++++++-------
 bindings/python/test_arm.py                     |   4 +-
 bindings/python/test_m68k.py                    |  11 ++-
 bindings/python/test_skipdata.py                |   2 +-
 contrib/cs_driver/cs_driver/cs_driver.c         |   4 +-
 cs.c                                            |   3 +-
 cstool/Makefile                                 |  35 +++++++++
 cstool/README                                   |  48 ++++++++++++
 cstool/cstool.c                                 | 415 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 cstool/cstool_arm.c                             | 156 ++++++++++++++++++++++++++++++++++++++
 cstool/cstool_arm64.c                           | 140 ++++++++++++++++++++++++++++++++++
 cstool/cstool_m68k.c                            | 121 +++++++++++++++++++++++++++++
 cstool/cstool_mips.c                            |  47 ++++++++++++
 cstool/cstool_ppc.c                             |  90 ++++++++++++++++++++++
 cstool/cstool_sparc.c                           |  54 +++++++++++++
 cstool/cstool_systemz.c                         |  56 ++++++++++++++
 cstool/cstool_x86.c                             | 261 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 cstool/cstool_xcore.c                           |  52 +++++++++++++
 docs/README                                     |   2 +-
 include/capstone/arm.h                          |   2 +-
 include/capstone/arm64.h                        |   3 +
 include/capstone/capstone.h                     |  11 ++-
 include/capstone/x86.h                          |  16 ++--
 make.sh                                         |   4 -
 suite/arm/test_arm_regression.c                 |   6 +-
 tests/test_arm.c                                |   4 +-
 tests/test_m68k.c                               |  26 ++++++-
 tests/test_winkernel.cpp                        |   5 +-
 tests/test_x86.c                                |   2 +-
 windows/winkernel_mm.c                          |  19 +++--
 windows/winkernel_mm.h                          |   1 +
 87 files changed, 2451 insertions(+), 648 deletions(-)
 create mode 100644 bindings/ocaml/test_basic.ml
 rename bindings/python/{README.TXT => BUILDING.txt} (50%)
 delete mode 100644 bindings/python/PKG-INFO.src
 delete mode 100644 bindings/python/PKG-INFO.win
 delete mode 100644 bindings/python/README.pypi-src
 rename bindings/python/{README.pypi-win => README.txt} (64%)
 delete mode 100644 bindings/python/prebuilt/win32/.gitignore
 delete mode 100644 bindings/python/prebuilt/win64/.gitignore
 create mode 100644 cstool/Makefile
 create mode 100644 cstool/README
 create mode 100644 cstool/cstool.c
 create mode 100644 cstool/cstool_arm.c
 create mode 100644 cstool/cstool_arm64.c
 create mode 100644 cstool/cstool_m68k.c
 create mode 100644 cstool/cstool_mips.c
 create mode 100644 cstool/cstool_ppc.c
 create mode 100644 cstool/cstool_sparc.c
 create mode 100644 cstool/cstool_systemz.c
 create mode 100644 cstool/cstool_x86.c
 create mode 100644 cstool/cstool_xcore.c
HEAD is now at 5bc875a x86: fix X86_REL_ADDR macro - handle two-byte jump instructions
HEAD is now at 5bc875a x86: fix X86_REL_ADDR macro - handle two-byte jump instructions
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86ATTInstPrinter.c b/arch/X86/X86ATTInstPrinter.c
|index 7e19b4e..062eef8 100644
|--- a/arch/X86/X86ATTInstPrinter.c
|+++ b/arch/X86/X86ATTInstPrinter.c
--------------------------
Patching file arch/X86/X86ATTInstPrinter.c using Plan A...
Hunk #1 succeeded at 604 (offset 28 lines).
Hmm...  The next patch looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86IntelInstPrinter.c b/arch/X86/X86IntelInstPrinter.c
|index c455725..eb60586 100644
|--- a/arch/X86/X86IntelInstPrinter.c
|+++ b/arch/X86/X86IntelInstPrinter.c
--------------------------
Patching file arch/X86/X86IntelInstPrinter.c using Plan A...
Hunk #1 succeeded at 799 (offset 43 lines).
done
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/Makefile b/Makefile
|index 034e254..09bd6c3 100644
|--- a/Makefile
|+++ b/Makefile
--------------------------
Patching file Makefile using Plan A...
Hunk #1 succeeded at 286 (offset 7 lines).
Hunk #2 succeeded at 303 (offset 7 lines).
Hunk #3 succeeded at 312 (offset 7 lines).
Hunk #4 succeeded at 317 (offset -5 lines).
done
  CC      cs.o
  CC      utils.o
  CC      MCInstrDesc.o
  CC      SStream.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
In file included from arch/ARM/ARMInstPrinter.c:26:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
In file included from arch/ARM/ARMDisassembler.c:21:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64Disassembler.o
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
  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/Sparc/SparcModule.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/PowerPC/PPCModule.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/SystemZ/SystemZMCTargetDesc.o
  CC      arch/SystemZ/SystemZModule.o
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/X86/X86DisassemblerDecoder.o
  CC      arch/X86/X86Disassembler.o
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreDisassembler.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
  CC      arch/XCore/XCoreModule.o
  CC      MCInst.o
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a
gmake -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC json.c
CC PIC ns.c
json.c: In function 'sdb_json_set':
json.c:93: warning: 'len[1]' may be used uninitialized in this function
json.c:91: warning: 'beg[1]' may be used uninitialized in this function
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.10.4
gmake -C zip
gmake -C udis86
gmake -C java
CC code.c
CC class.c
CC ops.c
CC dsojson.c
ar: warning: creating libr_java.a
gmake -C tcc
ar: warning: creating libr_tcc.a
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
gmake -C gdb
CC utils.c
CC messages.c
CC core.c
CC packet.c
CC libgdbr.c
ar: warning: creating lib/libgdbr.a
a - src/utils.o
a - src/messages.o
a - src/core.o
a - src/packet.o
a - src/libgdbr.o
gmake -C qnx
CC sigutil.c
CC libqnxr.c
CC utils.c
CC core.c
CC packet.c
ar: warning: creating lib/libqnxr.a
a - src/sigutil.o
a - src/libqnxr.o
a - src/utils.o
a - src/core.o
a - src/packet.o
DIR util
DIR hash
CC state.c
CC md5c.c
CC crc16.c
CC crc32.c
CC sha1.c
CC hash.c
CC md4.c
CC hamdist.c
CC entropy.c
CC sha2.c
CC calc.c
CC xxhash.c
CC adler32.c
CC luhn.c
LD libr_hash.so
DIR socket
DIR reg
DIR cons
DIR magic
DIR bp
CC reg.c
DIR search
CC arena.c
CC apprentice.c
CC cons.c
DIR config
CC value.c
CC ascmagic.c
CC pipe.c
CC bp.c
CC cond.c
CC fsmagic.c
CC output.c
CC watch.c
CC double.c
CC search.c
CC funcs.c
CC grep.c
CC config.c
CC profile.c
CC io.c
CC bytepat.c
CC is_tar.c
CC less.c
CC plugin.c
CC callback.c
CC strings.c
CC magic.c
CC utf8.c
CC traptrace.c
LD libr_reg.so
CC aes-find.c
CC softmagic.c
LD libr_config.so
CC bp_arm.c
CC line.c
CC rsa-find.c
CC hud.c
CC bp_bf.c
CC regexp.c
LD libr_magic.so
CC rgb.c
CC bp_mips.c
CC xrefs.c
CC input.c
CC bp_ppc.c
CC keyword.c
CC pal.c
CC bp_x86.c
CC editor.c
LD libr_search.so
CC 2048.c
LD libr_bp.so
CC canvas.c
CC canvas_line.c
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
CC syscall.c
DIR flag
CC ioports.c
CC lang.c
CC io_bfdbg.c
CC flag.c
CC sort.c
LD libr_lang.so
CC io_bochs.c
CC spaces.c
CC crypto_aes.c
CC io_debug.c
CC zones.c
CC crypto_aes_algo.c
CC io_default.c
CC crypto_aes_cbc.c
CC io_gdb.c
SDB dos-x86-16
LD libr_flag.so
CC crypto_base64.c
SDB ios-x86-32
CC io_gzip.c
CC crypto_base91.c
SDB ios-arm-32
CC io_http.c
CC crypto_blowfish.c
CC io_ihex.c
SDB ios-arm-64
CC crypto_cps2.c
CC io_mach.c
SDB linux-x86-32
CC crypto_punycode.c
CC io_malloc.c
SDB linux-x86-64
CC crypto_rc2.c
CC io_mmap.c
CC crypto_rc4.c
SDB linux-arm-32
CC io_procpid.c
CC crypto_rc6.c
SDB linux-arm-64
CC crypto_rol.c
CC io_ptrace.c
SDB linux-mips-32
CC crypto_ror.c
CC io_qnx.c
CC crypto_rot.c
SDB linux-sparc-32
CC crypto_xor.c
SDB darwin-x86-32
CC io_r2k.c
CC crypto.c
SDB darwin-x86-64
CC io_r2pipe.c
LD libr_crypto.so
SDB netbsd-x86-32
CC io_r2web.c
SDB freebsd-x86-32
CC io_rap.c
SDB openbsd-x86-32
CC io_self.c
SDB openbsd-x86-64
CC io_shm.c
p/io_self.c:114:3: warning: #warning not yet implemented for this platform
CC io_sparse.c
SDB windows-x86-32
CC io_tcp.c
SDB windows-x86-64
CC io_w32.c
CC io_w32dbg.c
CC io_windbg.c
LD libr_syscall.so
CC io_zip.c
CC io.c
CC plugin.c
CC map.c
CC section.c
CC desc.c
CC cache.c
CC undo.c
CC buffer.c
CC vio.c
LD libr_io.so
DIR fs
DIR anal
DIR bin
  SDB dospart
CC anal_6502.c
CC bin.c
CC anal_8051.c
CC dbginfo.c
CC 8051.c
CC bin_write.c
CC anal_arc.c
CC demangle.c
CC anal_arm_cs.c
CC dwarf.c
CC anal_arm_gnu.c
CC filter.c
CC be_arm.c
CC cp-demangle.c
CC anal_avr.c
CC bin_any.c
SDB types
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:112: error: unknown field 'consts' specified in initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:112: warning: braces around scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:112: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:113: warning: initialization from incompatible pointer type
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:114: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:114: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:115: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:115: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:117: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:117: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:120: error: unknown field 'consts' specified in initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:120: warning: braces around scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:120: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:121: warning: initialization from incompatible pointer type
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:122: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:122: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:123: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:123: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:125: warning: excess elements in scalar initializer
/TEST/radare2/libr/..//libr/anal/p/anal_avr.c:125: warning: (near initialization for 'cpu_models[1].inherit')
CC anal_bf.c
CC bin_art.c
gmake[3]: *** [/TEST/radare2/libr/../global.mk:42: /TEST/radare2/libr/..//libr/anal/p/anal_avr.o] Error 1
gmake[3]: *** Waiting for unfinished jobs....
SDB types-16
CC bin_avr.c
SDB types-32
CC fs_cpio.c
CC bin_bf.c
CC fs_ext2.c
SDB types-64
CC bin_bios.c
CC fs_fat.c
CC bin_bootimg.c
SDB types-windows
CC fs_fb.c
CC bin_cgc.c
SDB types-x86-windows-32
CC fs_hfs.c
CC bin_coff.c
CC fs_hfsplus.c
SDB types-x86-windows-64
CC coff.c
CC fs_iso9660.c
SDB types-linux
CC bin_dex.c
CC fs_jfs.c
CC dex.c
SDB types-x86-osx-64
/TEST/radare2/libr/..//libr/bin/p/bin_dex.c: In function 'dex_method_signature':
/TEST/radare2/libr/..//libr/bin/p/bin_dex.c:226: warning: comparison is always false due to limited range of data type
/TEST/radare2/libr/..//libr/bin/p/bin_dex.c: In function 'parse_class':
/TEST/radare2/libr/..//libr/bin/p/bin_dex.c:650: warning: comparison is always false due to limited range of data type
/TEST/radare2/libr/..//libr/bin/p/bin_dex.c:705: warning: comparison is always false due to limited range of data type
CC fs_minix.c
CC bin_dol.c
CC fs_ntfs.c
SDB cc-x86-64
CC fs_posix.c
CC bin_dyldcache.c
SDB cc-x86-32
CC fs_reiserfs.c
CC bin_elf.c
CC fs_sfs.c
SDB cc-mips-32
CC bin_dbginfo_elf.c
CC bin_write_elf.c
CC fs_squash.c
SDB cc-m68k-32
CC fs_tar.c
SDB cc-sparc-32
CC elf.c
SDB cc-arm-64
SDB cc-arm-32
CC fs_udf.c
CC elf_write.c
CC fs_ufs.c
CC fs_xfs.c
CC bin_elf64.c
CC bin_dbginfo_elf64.c
SDB cc-avr-8
CC fs.c
CC file.c
CC bin_write_elf64.c
SDB cc-powerpc-32
CC elf64.c
SDB cc-powerpc-64
LD libr_fs.so
CC elf64_write.c
SDB cc-xtensa-32
CC bin_fs.c
CC bin_java.c
SDB cc-riscv-64
CC bin_mach0.c
CC mach0.c
gmake[2]: *** [Makefile:82: anal] Error 2
gmake[2]: *** Waiting for unfinished jobs....
CC mach0_classes.c
CC mach064_classes.c
CC bin_write_mach0.c
CC bin_mach064.c
CC bin_write_mach064.c
CC mach064.c
CC bin_mbn.c
CC bin_menuet.c
CC bin_mz.c
CC mz.c
CC bin_nes.c
CC bin_nin3ds.c
CC bin_ninds.c
CC bin_ningb.c
CC bin_ningba.c
CC bin_omf.c
CC omf.c
CC bin_p9.c
CC p9bin.c
CC bin_pe.c
CC pe.c
CC bin_pe64.c
CC pe64.c
CC bin_pebble.c
CC bin_psxexe.c
CC bin_rar.c
CC bin_smd.c
CC bin_sms.c
CC bin_spc700.c
CC bin_te.c
CC te.c
CC bin_vsf.c
CC bin_xbe.c
CC bin_zimg.c
CC zimg.c
CC bin_xtr_fatmach0.c
CC fatmach0.c
CC bin_xtr_dyldcache.c
CC dyldcache.c
CC demangler.c
CC microsoft_demangle.c
CC objc.c
CC cxx.c
CC msvc.c
CC swift.c
CC swift-sd.c
CC dlang.c
CC pdb_downloader.c
CC omap.c
CC stream_pe.c
CC gdata.c
CC fpo.c
CC dbi.c
CC tpi.c
CC stream_file.c
CC pdb.c
LD libr_bin.so
/TEST/radare2/libr/bin/p
SHLR=/TEST/radare2/libr/..//libr/../shlr
gmake[1]: *** [Makefile:31: all] Error 2
gmake: *** [Makefile:51: all] Error 2
```

additionaly the gity pull log for the x64:
```asm
$ git pull
remote: Counting objects: 7775, done.
remote: Compressing objects: 100% (24/24), done.
remote: Total 7775 (delta 3308), reused 3303 (delta 3303), pack-reused 4448
Receiving objects: 100% (7775/7775), 3.84 MiB | 1.58 MiB/s, done.
Resolving deltas: 100% (6481/6481), completed with 749 local objects.
From https://github.com/radare/radare2
   f3085dd..3fa97e9  master     -> origin/master
 * [new branch]      anal-break -> origin/anal-break
 * [new branch]      dalvik-anal -> origin/dalvik-anal
 * [new branch]      fix-avr-rjmp -> origin/fix-avr-rjmp
 * [new branch]      jayro03    -> origin/jayro03
 * [new branch]      sdb-update -> origin/sdb-update
 * [new tag]         0.10.6     -> 0.10.6
 * [new tag]         1.0        -> 1.0
 * [new tag]         1.0.0      -> 1.0.0
 * [new tag]         1.0.1      -> 1.0.1
 * [new tag]         1.0.2      -> 1.0.2
Updating f3085dd..3fa97e9
Fast-forward
 .gitignore                                                                                  |     2 +
 .travis.yml                                                                                 |     1 +
 CONTRIBUTING.md                                                                             |    14 +
 Dockerfile                                                                                  |    49 +-
 Makefile                                                                                    |    16 +-
 README.md                                                                                   |     5 +-
 TODO.md                                                                                     |   315 --
 binr/blob/Makefile                                                                          |     4 +-
 binr/preload/Makefile                                                                       |     6 +-
 binr/r2agent/r2agent.c                                                                      |    23 +-
 binr/r2pm/r2pm                                                                              |   171 +-
 binr/rabin2/Jamroot                                                                         |     2 +-
 binr/rabin2/Makefile                                                                        |     2 +-
 binr/rabin2/rabin2.c                                                                        |   308 +-
 binr/radare2/Jamroot                                                                        |     2 +-
 binr/radare2/Makefile                                                                       |     6 +-
 binr/radare2/radare2.c                                                                      |   400 +-
 binr/radiff2/Makefile                                                                       |     2 +-
 binr/radiff2/radiff2.c                                                                      |    76 +-
 binr/rafind2/Makefile                                                                       |     2 +-
 binr/rafind2/rafind2.c                                                                      |     2 +-
 binr/ragg2/Makefile                                                                         |     2 +-
 binr/ragg2/ragg2-cc                                                                         |   100 +-
 binr/ragg2/ragg2.c                                                                          |   156 +-
 binr/rahash2/Makefile                                                                       |     2 +-
 binr/rahash2/rahash2.c                                                                      |    10 +-
 binr/rasign2/Makefile                                                                       |     9 +
 binr/rasm2/Jamroot                                                                          |     2 +-
 binr/rasm2/Makefile                                                                         |     2 +-
 binr/rasm2/rasm2.c                                                                          |   128 +-
 binr/rax2/rax2.c                                                                            |    30 +-
 configure                                                                                   |    12 +-
 configure.acr                                                                               |     4 +-
 doc/avr                                                                                     |    30 +
 doc/bash_autocompletion.sh                                                                  |   187 +
 doc/bindiff                                                                                 |    25 -
 doc/debug                                                                                   |    27 +
 doc/esil                                                                                    |    31 +
 doc/fortunes.fun                                                                            |    12 +-
 doc/fortunes.nsfw                                                                           |     3 +
 doc/fortunes.tips                                                                           |     2 +-
 {media => doc}/images/icon.png                                                              |   Bin
 {media => doc}/images/keepr2.svg                                                            |     0
 {media => doc}/images/r2.svg                                                                |     0
 {media => doc}/images/r2big.png                                                             |   Bin
 {media => doc}/images/r2cloud.svg                                                           |     0
 {media => doc}/images/r2cs.svg                                                              |     0
 {media => doc}/images/r2emoji.png                                                           |   Bin
 {media => doc}/images/r2pow.png                                                             |   Bin
 {media => doc}/images/r2pow.svg                                                             |     0
 {media => doc}/images/r2sticker.png                                                         |   Bin
 {media => doc}/images/r2und.png                                                             |   Bin
 {media => doc}/images/rlogo-big.png                                                         |   Bin
 {media => doc}/images/rlogo256.png                                                          |   Bin
 doc/macros                                                                                  |    13 +
 {media => doc}/r2ascii.txt                                                                  |     0
 doc/types.md                                                                                |     7 +
 doc/windows                                                                                 |    56 -
 doc/windows.md                                                                              |    56 +
 libr/Makefile                                                                               |     2 +-
 libr/anal/Makefile                                                                          |     6 +-
 libr/anal/anal.c                                                                            |   339 +-
 libr/anal/anal_ex.c                                                                         |   127 +-
 libr/anal/bb.c                                                                              |   126 +-
 libr/anal/d/Makefile                                                                        |    29 +-
 libr/anal/d/cc-arm-64                                                                       |     2 +-
 libr/anal/d/cc-riscv-64                                                                     |    13 +
 libr/anal/d/cc-xtensa-32                                                                    |    12 +
 libr/anal/d/darwin-x86-64                                                                   |     4 -
 libr/anal/d/linux-x86-32                                                                    |    20 -
 libr/anal/d/linux-x86-64                                                                    |    25 -
 libr/anal/d/types                                                                           |  2658 +++++++++++-
 libr/anal/d/{types-x86-16 => types-16}                                                      |     0
 libr/anal/d/types-32                                                                        |     6 +
 libr/anal/d/types-64                                                                        |     6 +
 libr/anal/d/types-linux                                                                     |    83 +
 libr/anal/d/types-windows                                                                   | 11877 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 libr/anal/d/types-x86-32                                                                    |     2 -
 libr/anal/d/types-x86-64                                                                    |     2 -
 libr/anal/d/types-x86-osx-64                                                                |    35 +
 libr/anal/d/types-x86-windows-32                                                            |     3 +-
 libr/anal/d/types-x86-windows-64                                                            |     1 +
 libr/anal/d/windows-x86-32                                                                  |     4 -
 libr/anal/d/windows-x86-64                                                                  |     0
 libr/anal/data.c                                                                            |     5 +-
 libr/anal/diff.c                                                                            |   125 +-
 libr/anal/esil.c                                                                            |   137 +-
 libr/anal/esil2reil.c                                                                       |     9 +-
 libr/anal/esil_stats.c                                                                      |     2 +-
 libr/anal/esil_trace.c                                                                      |    18 +-
 libr/anal/fcn.c                                                                             |   370 +-
 libr/anal/flirt.c                                                                           |   168 +-
 libr/anal/hint.c                                                                            |   119 +-
 libr/anal/meta.c                                                                            |    83 +-
 libr/anal/op.c                                                                              |    60 +-
 libr/anal/p/anal_6502.c                                                                     |     9 +-
 libr/anal/p/anal_8051.c                                                                     |   376 +-
 libr/anal/p/anal_arc.c                                                                      |     8 +-
 libr/anal/p/anal_arm_cs.c                                                                   |   360 +-
 libr/anal/p/anal_arm_gnu.c                                                                  |     2 +-
 libr/anal/p/anal_avr.c                                                                      |  1989 +++++++--
 libr/anal/p/anal_bf.c                                                                       |    14 +-
 libr/anal/p/anal_dalvik.c                                                                   |   712 ++--
 libr/anal/p/anal_ebc.c                                                                      |     2 +-
 libr/anal/p/anal_h8300.c                                                                    |     2 +-
 libr/anal/p/anal_java.c                                                                     |   108 +-
 libr/anal/p/anal_m68k.c                                                                     |   200 -
 libr/anal/p/anal_m68k_cs.c                                                                  |     1 +
 libr/anal/p/anal_mips_cs.c                                                                  |     5 +-
 libr/anal/p/anal_mips_gnu.c                                                                 |     2 +-
 libr/anal/p/anal_nios2.c                                                                    |     2 +-
 libr/anal/p/anal_ppc_cs.c                                                                   |     1 +
 libr/anal/p/anal_sh.c                                                                       |     2 +-
 libr/anal/p/anal_sparc_cs.c                                                                 |     5 +-
 libr/anal/p/anal_tms320_c55x_plus.c                                                         |     2 +-
 libr/anal/p/anal_v850.c                                                                     |     2 +-
 libr/anal/p/anal_x86_cs.c                                                                   |   620 +--
 libr/anal/p/anal_x86_udis.c                                                                 |    23 +-
 libr/anal/p/anal_xcore_cs.c                                                                 |     3 +-
 libr/anal/p/anal_xtensa.c                                                                   |  1384 ++++++-
 libr/anal/p/anal_z80.c                                                                      |     2 +-
 libr/anal/p/esil_x86_udis.c                                                                 |     4 +-
 libr/anal/p/m68k.mk                                                                         |    11 -
 libr/anal/p/xtensa.mk                                                                       |     7 +-
 libr/anal/reflines.c                                                                        |   127 +-
 libr/anal/sign.c                                                                            |    37 +-
 libr/anal/state.c                                                                           |    28 +-
 libr/anal/switch.c                                                                          |    35 +-
 libr/anal/types.c                                                                           |   155 +-
 libr/anal/var.c                                                                             |   175 +-
 libr/anal/xrefs.c                                                                           |    35 +-
 libr/asm/Makefile                                                                           |     2 +-
 libr/asm/arch/8051/8051.c                                                                   |    61 +-
 libr/asm/arch/arc/gnu/arc-opc.c                                                             |     6 +-
 libr/asm/arch/arm/aarch64/aarch64-dis.c                                                     |     9 +-
 libr/asm/arch/arm/aarch64/aarch64-opc.c                                                     |    22 +-
 libr/asm/arch/arm/armass.c                                                                  |   486 ++-
 libr/asm/arch/arm/armass64.c                                                                |   167 +-
 libr/asm/arch/arm/armass64_const.h                                                          |   633 +++
 libr/asm/arch/arm/gnu/arm-dis.c                                                             |    14 +-
 libr/asm/arch/avr/avr_disasm.c                                                              |     6 +-
 libr/asm/arch/avr/disasm.c                                                                  |    15 +-
 libr/asm/arch/cris/gnu/cris-dis.c                                                           |    59 +-
 libr/asm/arch/include/bfdlink.h                                                             |     2 +-
 libr/asm/arch/include/elf-bfd.h                                                             |     6 +-
 libr/asm/arch/include/mybfd.h                                                               |    11 +-
 libr/asm/arch/m68k/m68k_disasm/m68k_disasm.c                                                |  3246 ---------------
 libr/asm/arch/m68k/m68k_disasm/m68k_disasm.h                                                |   505 ---
 libr/asm/arch/mips/gnu/mips-dis.c                                                           |     8 +-
 libr/asm/arch/mips/mipsasm.c                                                                |    40 +-
 libr/asm/arch/nios/gnu/nios2-dis.c                                                          |     2 +-
 libr/asm/arch/riscv/riscv.c                                                                 |     2 +-
 libr/asm/arch/tms320/c55x_plus/c55plus.c                                                    |     2 +-
 libr/asm/arch/tms320/c55x_plus/c55plus_decode.c                                             |    71 +-
 libr/asm/arch/tms320/c55x_plus/decode.h                                                     |    14 +-
 libr/asm/arch/tms320/c55x_plus/decode_funcs.c                                               |   388 +-
 libr/asm/arch/tms320/c55x_plus/decode_funcs.h                                               |    26 +-
 libr/asm/arch/tms320/c55x_plus/ins.c                                                        |     2 +-
 libr/asm/arch/tms320/c55x_plus/utils.c                                                      |    46 +-
 libr/asm/arch/tms320/c55x_plus/utils.h                                                      |     4 +-
 libr/asm/arch/tricore/gnu/tricore-dis.c                                                     |     2 +-
 libr/asm/arch/vax/vax-dis.c                                                                 |     2 +-
 libr/asm/arch/xap/dis.c                                                                     |    31 +-
 libr/asm/arch/xtensa/gnu/elf32-xtensa.c                                                     |     4 +-
 libr/asm/arch/xtensa/gnu/xtensa-isa.c                                                       |     8 +-
 libr/asm/arch/xtensa/gnu/xtensa-modules.c                                                   |     9 +-
 libr/asm/arch/z80/Makefile                                                                  |     4 -
 libr/asm/arch/z80/README                                                                    |    20 -
 libr/asm/arch/z80/disasm.c                                                                  |  1024 -----
 libr/asm/arch/z80/test.c                                                                    |    14 -
 libr/asm/arch/z80/z80.c                                                                     |   272 +-
 libr/asm/arch/z80/z80.h                                                                     |     9 -
 libr/asm/arch/{z80_cr => z80}/z80_tab.h                                                     |   695 ++--
 libr/asm/arch/z80/z80asm.c                                                                  |    16 +-
 libr/asm/arch/z80_cr/z80_cr.c                                                               |   265 --
 libr/asm/asm.c                                                                              |   353 +-
 libr/asm/code.c                                                                             |    11 +-
 libr/asm/d/Makefile                                                                         |     4 +-
 libr/asm/d/arm                                                                              |    19 +-
 libr/asm/d/x86                                                                              |    43 +-
 libr/asm/p/Makefile                                                                         |     6 +-
 libr/asm/p/asm_arc.c                                                                        |    64 +-
 libr/asm/p/asm_arm_cs.c                                                                     |    78 +-
 libr/asm/p/asm_arm_gnu.c                                                                    |     6 +-
 libr/asm/p/asm_avr.c                                                                        |    12 +-
 libr/asm/p/asm_cris_gnu.c                                                                   |     4 +-
 libr/asm/p/asm_dalvik.c                                                                     |   245 +-
 libr/asm/p/asm_hppa_gnu.c                                                                   |     4 +-
 libr/asm/p/asm_lanai_gnu.c                                                                  |    10 +-
 libr/asm/p/asm_m68k.c                                                                       |    57 -
 libr/asm/p/asm_m68k_cs.c                                                                    |    10 +-
 libr/asm/p/asm_mips_cs.c                                                                    |    58 +-
 libr/asm/p/asm_mips_gnu.c                                                                   |    21 +-
 libr/asm/p/asm_nios2.c                                                                      |     4 +-
 libr/asm/p/asm_ppc_gnu.c                                                                    |     4 +-
 libr/asm/p/asm_sh.c                                                                         |     4 +-
 libr/asm/p/asm_sparc_cs.c                                                                   |    37 +-
 libr/asm/p/asm_sparc_gnu.c                                                                  |     4 +-
 libr/asm/p/asm_tricore.c                                                                    |     4 +-
 libr/asm/p/asm_v810.c                                                                       |     2 +-
 libr/asm/p/asm_vax.c                                                                        |     2 +-
 libr/asm/p/asm_x86_cs.c                                                                     |    51 +-
 libr/asm/p/asm_x86_nz.c                                                                     |   302 +-
 libr/asm/p/asm_x86_olly.c                                                                   |    13 +-
 libr/asm/p/asm_xtensa.c                                                                     |    23 +-
 libr/asm/p/asm_z80.c                                                                        |    14 +-
 libr/asm/p/asm_z80_cr.c                                                                     |    30 -
 libr/asm/p/cs_mnemonics.c                                                                   |    35 +
 libr/asm/p/m68k.mk                                                                          |    12 -
 libr/asm/p/z80_cr.mk                                                                        |    11 -
 libr/bin/bin.c                                                                              |   686 +++-
 libr/bin/d/Makefile                                                                         |     1 +
 libr/bin/d/dll/iertutil.sdb.txt                                                             |    41 +
 libr/bin/d/dll/mfc42.sdb.txt                                                                |  6400 ++++++++++++++++++++++++++++-
 libr/bin/d/dll/mfc42u.sdb.txt                                                               |  6395 ++++++++++++++++++++++++++++-
 libr/bin/d/dll/urlmon.sdb.txt                                                               |   133 +
 libr/bin/d/dll/wldap32.sdb.txt                                                              |   245 ++
 libr/bin/d/elf_enums                                                                        |     2 +-
 libr/bin/dbginfo.c                                                                          |    16 +-
 libr/bin/demangle.c                                                                         |    64 +-
 libr/bin/dwarf.c                                                                            |   171 +-
 libr/bin/filter.c                                                                           |    13 +-
 libr/bin/format/coff/coff.c                                                                 |   214 +-
 libr/bin/format/coff/coff.h                                                                 |     2 +-
 libr/bin/format/coff/coff_specs.h                                                           |     7 +
 libr/bin/format/dex/dex.c                                                                   |   270 +-
 libr/bin/format/dex/dex.h                                                                   |     8 +-
 libr/bin/format/elf/elf.c                                                                   |  1490 ++++---
 libr/bin/format/elf/elf.h                                                                   |    17 +-
 libr/bin/format/elf/elf_specs.h                                                             |     2 +-
 libr/bin/format/elf/elf_write.c                                                             |     4 +-
 libr/bin/format/mach0/fatmach0.c                                                            |    79 +-
 libr/bin/format/mach0/mach-o/fat.h                                                          |    64 -
 libr/bin/format/mach0/mach-o/loader.h                                                       |  1507 -------
 libr/bin/format/mach0/mach-o/nlist.h                                                        |   312 --
 libr/bin/format/mach0/mach/machine.h                                                        |   399 --
 libr/bin/format/mach0/mach/vm_prot.h                                                        |   148 -
 libr/bin/format/mach0/mach0.c                                                               |   660 ++-
 libr/bin/format/mach0/mach0.h                                                               |     1 +
 libr/bin/format/mach0/mach0_defines.h                                                       |  1407 +++++++
 libr/bin/format/mach0/mach0_specs.h                                                         |     6 +-
 libr/bin/format/mz/mz.c                                                                     |   135 +-
 libr/bin/format/nes/nes_specs.h                                                             |    22 +
 libr/bin/format/objc/mach0_classes.c                                                        |   619 ++-
 libr/bin/format/pe/pe.c                                                                     |   828 ++--
 libr/bin/format/pe/pe.h                                                                     |     3 +-
 libr/bin/format/te/te.c                                                                     |   143 +-
 libr/bin/mangling/Makefile                                                                  |     2 +-
 libr/bin/mangling/cxx/cp-demangle.c                                                         |   130 +-
 libr/bin/mangling/demangler.c                                                               |     2 +-
 libr/bin/mangling/microsoft_demangle.c                                                      |     4 +-
 libr/bin/mangling/swift-sd.c                                                                |     2 +-
 libr/bin/p/bin_avr.c                                                                        |     4 +-
 libr/bin/p/bin_cgc.c                                                                        |     1 +
 libr/bin/p/bin_coff.c                                                                       |   281 +-
 libr/bin/p/bin_dex.c                                                                        |  1079 +++--
 libr/bin/p/bin_dyldcache.c                                                                  |     2 +-
 libr/bin/p/bin_elf.c                                                                        |   112 +-
 libr/bin/p/bin_mach0.c                                                                      |   148 +-
 libr/bin/p/bin_mbn.c                                                                        |     2 +-
 libr/bin/p/bin_menuet.c                                                                     |   238 ++
 libr/bin/p/bin_mz.c                                                                         |    41 +-
 libr/bin/p/bin_nes.c                                                                        |    69 +-
 libr/bin/p/bin_p9.c                                                                         |     2 +-
 libr/bin/p/bin_pe.c                                                                         |   202 +-
 libr/bin/p/bin_psxexe.c                                                                     |    11 +-
 libr/bin/p/bin_spc700.c                                                                     |    37 +-
 libr/bin/p/bin_vsf.c                                                                        |   165 +-
 libr/bin/p/bin_xtr_fatmach0.c                                                               |    70 +-
 libr/bin/p/menuet.mk                                                                        |     9 +
 libr/bin/pdb/pdb.c                                                                          |   310 +-
 libr/bp/bp.c                                                                                |    21 +-
 libr/bp/parser.c                                                                            |   694 ----
 libr/bp/parser.h                                                                            |    50 -
 libr/bp/plugin.c                                                                            |     2 +-
 libr/bp/traptrace.c                                                                         |     6 +-
 libr/config/config.c                                                                        |   142 +-
 libr/cons/TODO                                                                              |    60 -
 libr/cons/canvas.c                                                                          |   184 +-
 libr/cons/canvas_line.c                                                                     |    96 +-
 libr/cons/cons.c                                                                            |   442 +-
 libr/cons/d/cga                                                                             |    48 +
 libr/cons/d/dark                                                                            |    53 +-
 libr/cons/d/focus                                                                           |    16 +-
 libr/cons/d/lima                                                                            |    61 +-
 libr/cons/d/matrix                                                                          |    12 +-
 libr/cons/d/ogray                                                                           |    21 +-
 libr/cons/d/pink                                                                            |    57 +-
 libr/cons/d/rasta                                                                           |    83 +-
 libr/cons/d/smyck                                                                           |    30 +-
 libr/cons/d/white                                                                           |    54 +-
 libr/cons/d/xvilka                                                                          |    37 +-
 libr/cons/dietline.c                                                                        |   984 +++--
 libr/cons/grep.c                                                                            |   360 +-
 libr/cons/hud.c                                                                             |    24 +-
 libr/cons/input.c                                                                           |    20 +-
 libr/cons/less.c                                                                            |    21 +-
 libr/cons/output.c                                                                          |    41 +-
 libr/cons/pipe.c                                                                            |    21 +-
 libr/core/Jamroot                                                                           |     2 +-
 libr/core/Makefile                                                                          |     4 +-
 libr/core/anal.c                                                                            |  1381 ++++---
 libr/core/anal_tp.c                                                                         |   140 +-
 libr/core/anal_vt.c                                                                         |   180 +
 libr/core/asm.c                                                                             |    63 +-
 libr/core/cbin.c                                                                            |   878 ++--
 libr/core/{config.c => cconfig.c}                                                           |   365 +-
 libr/core/cio.c                                                                             |    57 +-
 libr/core/cmd.c                                                                             |   665 ++-
 libr/core/cmd_anal.c                                                                        |  1379 +++++--
 libr/core/cmd_api.c                                                                         |    60 +-
 libr/core/cmd_cmp.c                                                                         |    55 +-
 libr/core/cmd_debug.c                                                                       |  3449 ++++++++--------
 libr/core/cmd_egg.c                                                                         |     2 +-
 libr/core/cmd_eval.c                                                                        |    35 +-
 libr/core/cmd_flag.c                                                                        |   169 +-
 libr/core/cmd_hash.c                                                                        |     3 +-
 libr/core/cmd_help.c                                                                        |   420 +-
 libr/core/cmd_info.c                                                                        |   109 +-
 libr/core/cmd_log.c                                                                         |     2 +-
 libr/core/cmd_macro.c                                                                       |     6 +-
 libr/core/cmd_meta.c                                                                        |   162 +-
 libr/core/cmd_mount.c                                                                       |     2 +-
 libr/core/cmd_open.c                                                                        |   149 +-
 libr/core/cmd_print.c                                                                       |  1337 ++++--
 libr/core/cmd_project.c                                                                     |    48 +-
 libr/core/cmd_search.c                                                                      |   446 +-
 libr/core/cmd_search_rop.c                                                                  |   130 +-
 libr/core/cmd_section.c                                                                     |   200 +-
 libr/core/cmd_seek.c                                                                        |    18 +-
 libr/core/cmd_type.c                                                                        |    93 +-
 libr/core/cmd_write.c                                                                       |   150 +-
 libr/core/cmd_zign.c                                                                        |   346 +-
 libr/core/core.c                                                                            |   625 +--
 libr/core/disasm.c                                                                          |  1572 +++++---
 libr/core/file.c                                                                            |   110 +-
 libr/core/gdiff.c                                                                           |    61 +-
 libr/core/graph.c                                                                           |   173 +-
 libr/core/libs.c                                                                            |    14 +-
 libr/core/linux_heap_glibc.c                                                                |  1164 ++++++
 libr/core/linux_heap_glibc_32.c                                                             |   826 ----
 libr/core/linux_heap_glibc_64.c                                                             |   826 ----
 libr/core/p/Makefile                                                                        |     2 +-
 libr/core/p/core_anal.c                                                                     |   418 +-
 libr/core/p/core_java.c                                                                     |    33 +-
 libr/core/panels.c                                                                          |   179 +-
 libr/core/patch.c                                                                           |    42 +-
 libr/core/project.c                                                                         |   414 +-
 libr/core/pseudo.c                                                                          |    42 +-
 libr/core/rtr.c                                                                             |   175 +-
 libr/core/syscmd.c                                                                          |   134 +-
 libr/core/task.c                                                                            |    40 +-
 libr/core/vasm.c                                                                            |    39 +-
 libr/core/visual.c                                                                          |   243 +-
 libr/core/vmarks.c                                                                          |    25 +-
 libr/core/vmenus.c                                                                          |   660 ++-
 libr/core/yank.c                                                                            |     2 +-
 libr/crypto/crypto.c                                                                        |     7 +-
 libr/crypto/p/Makefile                                                                      |     2 +
 libr/crypto/p/aes.mk                                                                        |     5 +-
 libr/crypto/p/aes_cbc.mk                                                                    |     4 +-
 libr/crypto/p/crypto_cps2.c                                                                 |    36 +-
 libr/debug/Makefile                                                                         |     4 +-
 libr/debug/{desc.c => ddesc.c}                                                              |     0
 libr/debug/debug.c                                                                          |   155 +-
 libr/debug/{reg.c => dreg.c}                                                                |   176 +-
 libr/debug/esil.c                                                                           |    15 +-
 libr/debug/map.c                                                                            |    59 +-
 libr/debug/p/bfvm.c                                                                         |     4 +-
 libr/debug/p/debug_bochs.c                                                                  |    29 +-
 libr/debug/p/debug_esil.c                                                                   |     2 +-
 libr/debug/p/debug_gdb.c                                                                    |    36 +-
 libr/debug/p/debug_io.c                                                                     |   153 +
 libr/debug/p/debug_native.c                                                                 |   161 +-
 libr/debug/p/debug_wind.c                                                                   |    10 +-
 libr/debug/p/io.mk                                                                          |     9 +
 libr/debug/p/native.mk                                                                      |     1 +
 libr/debug/p/native/bt.c                                                                    |     2 +-
 libr/debug/p/native/linux/linux_coredump.c                                                  |   279 +-
 libr/debug/p/native/linux/linux_debug.c                                                     |    17 +-
 libr/debug/p/native/linux/linux_debug.h                                                     |     4 +
 libr/debug/p/native/linux/reg/linux-arm64.h                                                 |     3 +-
 libr/debug/p/native/linux/reg/linux-mips.h                                                  |   106 +-
 libr/debug/p/native/linux/reg/linux-mips64.h                                                |    78 +
 libr/debug/p/native/linux/reg/linux-x64-32.h                                                |    10 +-
 libr/debug/p/native/linux/reg/linux-x64.h                                                   |    16 +-
 libr/debug/p/native/linux/reg/linux-x86.h                                                   |    10 +-
 libr/debug/p/native/maps/darwin.c                                                           |     4 +-
 libr/debug/p/native/maps/windows.c                                                          |    43 +-
 libr/debug/p/native/reg/windows-x86.h                                                       |    98 +-
 libr/debug/p/native/w32.c                                                                   |   288 +-
 libr/debug/p/native/xnu/reg/darwin-arm64.h                                                  |    10 +-
 libr/debug/p/native/xnu/reg/darwin-x64.h                                                    |     6 +-
 libr/debug/p/native/xnu/reg/darwin-x86.h                                                    |    10 +-
 libr/debug/p/native/xnu/xnu_debug.c                                                         |   102 +-
 libr/debug/p/native/xnu/xnu_debug.h                                                         |     2 +-
 libr/debug/p/native/xnu/xnu_excthreads.c                                                    |    15 +-
 libr/debug/p/native/xnu/xnu_threads.c                                                       |    81 +-
 libr/debug/pid.c                                                                            |     4 +-
 libr/debug/plugin.c                                                                         |    49 +-
 libr/depgraph.pl                                                                            |     2 +-
 libr/do-ar-sh                                                                               |     2 +-
 libr/egg/Makefile                                                                           |     2 +-
 libr/egg/egg.c                                                                              |    21 +-
 libr/egg/emit_arm.c                                                                         |     6 +-
 libr/egg/emit_trace.c                                                                       |     6 +-
 libr/egg/emit_x86.c                                                                         |    12 +-
 libr/egg/lang.c                                                                             |    21 +-
 libr/egg/rlcc/mpc/mpc.c                                                                     |    46 +-
 libr/{flags => flag}/Jamroot                                                                |     0
 libr/{flags => flag}/Makefile                                                               |     4 +-
 libr/{flags/flags.c => flag/flag.c}                                                         |   104 +-
 libr/{flags => flag}/sort.c                                                                 |     4 +-
 libr/{flags => flag}/spaces.c                                                               |    29 +-
 libr/flag/zones.c                                                                           |   281 ++
 libr/fs/fs.c                                                                                |    30 +-
 libr/fs/p/fs_grub_base.c                                                                    |     2 +-
 libr/fs/p/fs_posix.c                                                                        |    10 +-
 libr/hash/adler32.c                                                                         |     7 +-
 libr/hash/hash.c                                                                            |    11 +-
 libr/include/list.h                                                                         |   230 --
 libr/include/{naked.h => r2naked.h}                                                         |     4 +
 libr/include/r_anal.h                                                                       |   100 +-
 libr/include/r_asm.h                                                                        |    13 +-
 libr/include/r_bin.h                                                                        |    59 +-
 libr/include/r_bind.h                                                                       |     4 +
 libr/include/r_bp.h                                                                         |     1 +
 libr/include/r_cmd.h                                                                        |     1 -
 libr/include/r_config.h                                                                     |    27 +-
 libr/include/r_cons.h                                                                       |    89 +-
 libr/include/r_core.h                                                                       |    31 +-
 libr/include/r_db.h                                                                         |     7 -
 libr/include/r_debug.h                                                                      |    15 +-
 libr/include/r_diff.h                                                                       |     1 +
 libr/include/{r_flags.h => r_flag.h}                                                        |    37 +-
 libr/include/r_hash.h                                                                       |     2 +
 libr/include/r_heap_glibc.h                                                                 |    30 +-
 libr/include/r_io.h                                                                         |     9 +-
 libr/include/r_list.h                                                                       |    10 +-
 libr/include/r_magic.h                                                                      |     2 +-
 libr/include/r_parse.h                                                                      |     7 +-
 libr/include/r_pdb.h                                                                        |     4 +-
 libr/include/r_print.h                                                                      |     5 +-
 libr/include/r_reg.h                                                                        |    11 +-
 libr/include/r_socket.h                                                                     |     7 +-
 libr/include/r_syscall.h                                                                    |     4 +-
 libr/include/r_th.h                                                                         |     4 +-
 libr/include/r_types.h                                                                      |    10 +
 libr/include/r_types_base.h                                                                 |    27 +-
 libr/include/r_util.h                                                                       |     1 -
 libr/include/r_util/r_buf.h                                                                 |     4 +-
 libr/include/r_util/r_debruijn.h                                                            |     4 +-
 libr/include/r_util/r_file.h                                                                |     1 +
 libr/include/r_util/r_num.h                                                                 |     7 +-
 libr/include/r_util/r_range.h                                                               |    17 +
 libr/include/r_util/r_stack.h                                                               |     8 +-
 libr/include/r_util/r_str.h                                                                 |     8 +
 libr/include/r_util/r_strbuf.h                                                              |     2 +-
 libr/include/r_util/r_sys.h                                                                 |     3 +-
 libr/include/sflib/linux-arm-32/sflib.h                                                     |   334 ++
 libr/include/sflib/linux-arm-32/sfsyscall.h                                                 |   181 +
 libr/include/sflib/linux-arm-32/sfsysnr.h                                                   |   332 ++
 libr/include/sflib/linux-arm-64/sflib.h                                                     |   334 ++
 libr/include/sflib/linux-arm-64/sfsyscall.h                                                 |   181 +
 libr/include/sflib/linux-arm-64/sfsysnr.h                                                   |   332 ++
 libr/io/buffer.c                                                                            |    47 +-
 libr/io/desc.c                                                                              |    40 +-
 libr/io/io.c                                                                                |    82 +-
 libr/io/map.c                                                                               |    15 +-
 libr/io/p/io_bfdbg.c                                                                        |     6 +-
 libr/io/p/io_debug.c                                                                        |    50 +-
 libr/io/p/io_gdb.c                                                                          |    26 +-
 libr/io/p/io_gzip.c                                                                         |     6 +-
 libr/io/p/io_http.c                                                                         |     2 +-
 libr/io/p/io_ihex.c                                                                         |    94 +-
 libr/io/p/io_mach.c                                                                         |     3 +-
 libr/io/p/io_malloc.c                                                                       |     4 +-
 libr/io/p/io_ptrace.c                                                                       |    22 +-
 libr/io/p/io_r2k.c                                                                          |   309 +-
 libr/io/p/io_r2pipe-test.js                                                                 |     4 +-
 libr/io/p/io_r2pipe.c                                                                       |    38 +-
 libr/io/p/io_r2web.c                                                                        |     6 +-
 libr/io/p/io_rap.c                                                                          |    30 +-
 libr/io/p/io_self.c                                                                         |    42 +-
 libr/io/p/io_shm.c                                                                          |     8 +-
 libr/io/p/io_sparse.c                                                                       |     6 +-
 libr/io/p/io_tcp.c                                                                          |   182 +
 libr/io/p/io_w32.c                                                                          |     2 +-
 libr/io/p/io_zip.c                                                                          |     5 +-
 libr/io/p/tcp.mk                                                                            |    18 +
 libr/io/plugin.c                                                                            |     1 -
 libr/io/section.c                                                                           |    33 +-
 libr/io/undo.c                                                                              |    11 +-
 libr/lang/p/pipe.c                                                                          |    30 +-
 libr/magic/apprentice.c                                                                     |    86 +-
 libr/magic/ascmagic.c                                                                       |     8 +-
 libr/magic/d/Makefile                                                                       |     3 +-
 libr/magic/d/default/archive                                                                |     7 +-
 libr/magic/d/default/cafebabe                                                               |     8 +-
 libr/magic/d/default/filesystems                                                            |    27 +-
 libr/magic/d/default/gimp                                                                   |     4 +-
 libr/magic/d/default/images                                                                 |    10 +-
 libr/magic/d/default/microsoft                                                              |     8 +-
 libr/magic/fsmagic.c                                                                        |     4 +-
 libr/magic/funcs.c                                                                          |    10 +-
 libr/magic/magic.c                                                                          |     8 +-
 libr/magic/print.c                                                                          |     4 +-
 libr/magic/softmagic.c                                                                      |    12 +-
 libr/parse/Jamroot                                                                          |     2 +-
 libr/parse/Makefile                                                                         |     2 +-
 libr/parse/code.c                                                                           |    20 +-
 libr/parse/p/6502_pseudo.mk                                                                 |     2 +-
 libr/parse/p/Makefile                                                                       |     2 +-
 libr/parse/p/arm_pseudo.mk                                                                  |     2 +-
 libr/parse/p/m68k_pseudo.mk                                                                 |     3 +-
 libr/parse/p/parse_6502_pseudo.c                                                            |     6 +-
 libr/parse/p/parse_arm_pseudo.c                                                             |    87 +-
 libr/parse/p/parse_att2intel.c                                                              |     4 +-
 libr/parse/p/parse_dalvik_pseudo.c                                                          |     6 +-
 libr/parse/p/parse_m68k_pseudo.c                                                            |     6 +-
 libr/parse/p/parse_mips_pseudo.c                                                            |    22 +-
 libr/parse/p/parse_mreplace/mmemory.c                                                       |     2 +-
 libr/parse/p/parse_ppc_pseudo.c                                                             |     6 +-
 libr/parse/p/parse_x86_pseudo.c                                                             |    72 +-
 libr/parse/p/parse_z80_pseudo.c                                                             |     2 +-
 libr/parse/p/x86_pseudo.mk                                                                  |     2 +-
 libr/parse/p/z80_pseudo.mk                                                                  |     2 +-
 libr/parse/parse.c                                                                          |    66 +-
 libr/reg/arena.c                                                                            |    68 +-
 libr/reg/double.c                                                                           |    12 +-
 libr/reg/profile.c                                                                          |    84 +-
 libr/reg/reg.c                                                                              |    16 +-
 libr/reg/value.c                                                                            |   131 +-
 libr/rules.mk                                                                               |     2 +-
 libr/search/TODO                                                                            |    20 -
 libr/search/old_xrefs.c                                                                     |     2 +-
 libr/socket/r2pipe.c                                                                        |    59 +-
 libr/socket/rap_server.c                                                                    |    45 +-
 libr/socket/run.c                                                                           |    80 +-
 libr/socket/socket.c                                                                        |   132 +-
 libr/syscall/TODO                                                                           |     9 -
 libr/syscall/d/Makefile                                                                     |    15 +-
 libr/syscall/d/gen.sh                                                                       |     2 +-
 libr/syscall/d/linux-arm-64                                                                 |   319 ++
 libr/syscall/fastcall.h                                                                     |     8 +
 libr/syscall/syscall.c                                                                      |   107 +-
 libr/util/Makefile                                                                          |     2 +-
 libr/util/base64.c                                                                          |    60 +-
 libr/util/bdiff.c                                                                           |     2 +-
 libr/util/btree.c                                                                           |    23 +-
 libr/util/buf.c                                                                             |   205 +-
 libr/util/cache.c                                                                           |     2 +-
 libr/util/debruijn.c                                                                        |    43 +-
 libr/util/diff.c                                                                            |    74 +-
 libr/util/file.c                                                                            |   306 +-
 libr/util/hex.c                                                                             |    27 +-
 libr/util/ht.c                                                                              |     2 +-
 libr/util/lib.c                                                                             |    20 +-
 libr/util/list.c                                                                            |   426 +-
 libr/util/mem.c                                                                             |     4 +-
 libr/util/mixed.c                                                                           |     2 +-
 libr/util/num.c                                                                             |    80 +-
 libr/util/p_format.c                                                                        |   703 +++-
 libr/util/pool.c                                                                            |     4 +-
 libr/util/print.c                                                                           |   347 +-
 libr/util/range.c                                                                           |   136 +-
 libr/util/regex/engine.c                                                                    |    20 +-
 libr/util/regex/regcomp.c                                                                   |    26 +-
 libr/util/regex/regexec.c                                                                   |     2 +-
 libr/util/sandbox.c                                                                         |    30 +-
 libr/util/slist.c                                                                           |     6 +-
 libr/util/spaces.c                                                                          |    67 +-
 libr/util/stack.c                                                                           |    35 +-
 libr/util/str.c                                                                             |  1263 ++++--
 libr/util/strht.c                                                                           |     7 +-
 libr/util/strpool.c                                                                         |     7 +-
 libr/util/sys.c                                                                             |   220 +-
 libr/util/thread.c                                                                          |    49 +-
 libr/util/tinyrange.c                                                                       |   106 +
 libr/util/uleb128.c                                                                         |     2 +-
 libr/util/utf8.c                                                                            |    17 +-
 man/esil.7                                                                                  |     2 +-
 man/r2agent.1                                                                               |     1 -
 man/r2pm.1                                                                                  |     3 +-
 man/rabin2.1                                                                                |    33 +-
 man/radare2.1                                                                               |    11 +-
 man/radiff2.1                                                                               |     7 +-
 man/rahash2.1                                                                               |     1 -
 media/Radare2.iosapp/Icon-72.png                                                            |   Bin 1859 -> 0 bytes
 media/Radare2.iosapp/Icon.png                                                               |   Bin 1307 -> 0 bytes
 media/Radare2.iosapp/Icon@2x.png                                                            |   Bin 2527 -> 0 bytes
 media/Radare2.iosapp/Info.plist                                                             |    34 -
 media/Radare2.iosapp/PkgInfo                                                                |     1 -
 media/Radare2.iosapp/Radare2                                                                |     4 -
 media/images/keepr2.png                                                                     |   Bin 174069 -> 0 bytes
 mk/termux-host.mk                                                                           |     4 -
 pkgcfg/r_asm.pc.acr                                                                         |     2 +-
 pkgcfg/r_core.pc.acr                                                                        |     2 +-
 pkgcfg/r_debug.pc.acr                                                                       |     2 +-
 pkgcfg/{r_flags.pc.acr => r_flag.pc.acr}                                                    |     2 +-
 pkgcfg/r_parse.pc.acr                                                                       |     2 +-
 plugins.def.cfg                                                                             |     6 +-
 plugins.nogpl.cfg                                                                           |     2 +-
 shlr/Makefile                                                                               |    21 +-
 shlr/bochs/Makefile                                                                         |    19 +-
 shlr/capstone-patches/{oobfix-X86_insn_reg_intel.patch => .oobfix-X86_insn_reg_intel.patch} |     0
 shlr/capstone.sh                                                                            |     4 +
 shlr/gdb/src/core.c                                                                         |   184 +-
 shlr/gdb/src/packet.c                                                                       |    32 +-
 shlr/grub/TODO                                                                              |     3 -
 shlr/java/class.c                                                                           |    13 +-
 shlr/qnx/src/core.c                                                                         |    23 +-
 shlr/qnx/src/packet.c                                                                       |     2 +-
 shlr/sdb/src/Makefile                                                                       |     2 +-
 shlr/sdb/src/fmt.c                                                                          |    13 +-
 shlr/sdb/src/ht.c                                                                           |    16 +-
 shlr/sdb/src/json/Makefile                                                                  |     2 +-
 shlr/sdb/src/num.c                                                                          |     2 +-
 shlr/tcc/tccgen.c                                                                           |    17 +-
 shlr/wind/profiles.h                                                                        |     4 +
 shlr/wind/wind.c                                                                            |     1 +
 shlr/www/index.html                                                                         |     4 +-
 shlr/www/m/disasmNavProvider.js                                                             |    47 +-
 shlr/www/m/disasmProvider.js                                                                |    81 +-
 shlr/www/m/hexchunkProvider.js                                                              |    79 +-
 shlr/www/m/hsplit                                                                           |     8 +-
 shlr/www/m/index.html                                                                       |   230 +-
 shlr/www/m/index.js                                                                         |  5428 +------------------------
 shlr/www/m/stylesheet.css                                                                   |    11 +-
 shlr/www/m/tools.js                                                                         |    20 +-
 shlr/www/m/vendors/FileSaver.min.js                                                         |     2 +-
 shlr/www/m/vendors/dialog-polyfill.css                                                      |    40 -
 shlr/www/m/vendors/dialog-polyfill.js                                                       |   515 +--
 shlr/www/m/vendors/material-design-icons.css                                                |    30 +-
 shlr/www/m/vendors/mdl-selectfield.min.css                                                  |     3 +
 shlr/www/m/vendors/mdl-selectfield.min.js                                                   |     2 +
 shlr/www/m/vsplit                                                                           |     9 +-
 shlr/zip/zlib/inflate.c                                                                     |     2 +-
 sys/android-build.sh                                                                        |     8 +-
 {build => sys/build}/Makefile                                                               |     0
 {build => sys/build}/config.json                                                            |     0
 {build => sys/build}/make.js/index.js                                                       |     0
 {build => sys/build}/make.js/utils.js                                                       |     0
 {build => sys/build}/radare2.js                                                             |     0
 {build => sys/build}/stress.js                                                              |     0
 sys/ios-cydia.sh                                                                            |     9 +-
 sys/ios-cydia32.sh                                                                          |     4 +
 sys/ios-static-appstore.sh                                                                  |     4 +
 sys/ios-static.sh                                                                           |    78 +-
 sys/mingw32.bat                                                                             |    56 +-
 sys/release-notes/config.json                                                               |     5 +
 sys/release-notes/index.js                                                                  |    77 +-
 652 files changed, 69175 insertions(+), 34762 deletions(-)
 delete mode 100644 TODO.md
 mode change 100644 => 100755 binr/radare2/radare2.c
 create mode 100644 binr/rasign2/Makefile
 create mode 100644 doc/avr
 create mode 100644 doc/bash_autocompletion.sh
 delete mode 100644 doc/bindiff
 create mode 100644 doc/debug
 rename {media => doc}/images/icon.png (100%)
 rename {media => doc}/images/keepr2.svg (100%)
 rename {media => doc}/images/r2.svg (100%)
 rename {media => doc}/images/r2big.png (100%)
 rename {media => doc}/images/r2cloud.svg (100%)
 rename {media => doc}/images/r2cs.svg (100%)
 rename {media => doc}/images/r2emoji.png (100%)
 rename {media => doc}/images/r2pow.png (100%)
 rename {media => doc}/images/r2pow.svg (100%)
 rename {media => doc}/images/r2sticker.png (100%)
 rename {media => doc}/images/r2und.png (100%)
 rename {media => doc}/images/rlogo-big.png (100%)
 rename {media => doc}/images/rlogo256.png (100%)
 rename {media => doc}/r2ascii.txt (100%)
 delete mode 100644 doc/windows
 create mode 100644 doc/windows.md
 create mode 100644 libr/anal/d/cc-riscv-64
 create mode 100644 libr/anal/d/cc-xtensa-32
 delete mode 100644 libr/anal/d/darwin-x86-64
 delete mode 100644 libr/anal/d/linux-x86-32
 delete mode 100644 libr/anal/d/linux-x86-64
 rename libr/anal/d/{types-x86-16 => types-16} (100%)
 create mode 100644 libr/anal/d/types-32
 create mode 100644 libr/anal/d/types-64
 create mode 100644 libr/anal/d/types-linux
 delete mode 100644 libr/anal/d/types-x86-32
 delete mode 100644 libr/anal/d/types-x86-64
 create mode 100644 libr/anal/d/types-x86-osx-64
 delete mode 100644 libr/anal/d/windows-x86-32
 delete mode 100644 libr/anal/d/windows-x86-64
 delete mode 100644 libr/anal/p/anal_m68k.c
 delete mode 100644 libr/anal/p/m68k.mk
 create mode 100644 libr/asm/arch/arm/armass64_const.h
 delete mode 100644 libr/asm/arch/m68k/m68k_disasm/m68k_disasm.c
 delete mode 100644 libr/asm/arch/m68k/m68k_disasm/m68k_disasm.h
 delete mode 100644 libr/asm/arch/z80/Makefile
 delete mode 100644 libr/asm/arch/z80/README
 delete mode 100644 libr/asm/arch/z80/disasm.c
 delete mode 100644 libr/asm/arch/z80/test.c
 delete mode 100644 libr/asm/arch/z80/z80.h
 rename libr/asm/arch/{z80_cr => z80}/z80_tab.h (69%)
 delete mode 100644 libr/asm/arch/z80_cr/z80_cr.c
 delete mode 100644 libr/asm/p/asm_m68k.c
 delete mode 100644 libr/asm/p/asm_z80_cr.c
 create mode 100644 libr/asm/p/cs_mnemonics.c
 delete mode 100644 libr/asm/p/m68k.mk
 delete mode 100644 libr/asm/p/z80_cr.mk
 create mode 100644 libr/bin/d/dll/iertutil.sdb.txt
 create mode 100644 libr/bin/d/dll/urlmon.sdb.txt
 create mode 100644 libr/bin/d/dll/wldap32.sdb.txt
 delete mode 100644 libr/bin/format/mach0/mach-o/fat.h
 delete mode 100644 libr/bin/format/mach0/mach-o/loader.h
 delete mode 100644 libr/bin/format/mach0/mach-o/nlist.h
 delete mode 100644 libr/bin/format/mach0/mach/machine.h
 delete mode 100644 libr/bin/format/mach0/mach/vm_prot.h
 create mode 100644 libr/bin/format/mach0/mach0_defines.h
 create mode 100644 libr/bin/p/bin_menuet.c
 create mode 100644 libr/bin/p/menuet.mk
 delete mode 100644 libr/bp/parser.c
 delete mode 100644 libr/bp/parser.h
 delete mode 100644 libr/cons/TODO
 create mode 100644 libr/cons/d/cga
 mode change 100644 => 100755 libr/cons/output.c
 mode change 100644 => 100755 libr/core/anal.c
 create mode 100644 libr/core/anal_vt.c
 rename libr/core/{config.c => cconfig.c} (85%)
 create mode 100644 libr/core/linux_heap_glibc.c
 delete mode 100644 libr/core/linux_heap_glibc_32.c
 delete mode 100644 libr/core/linux_heap_glibc_64.c
 rename libr/debug/{desc.c => ddesc.c} (100%)
 mode change 100755 => 100644 libr/debug/debug.c
 rename libr/debug/{reg.c => dreg.c} (58%)
 mode change 100644 => 100755
 create mode 100644 libr/debug/p/debug_io.c
 create mode 100644 libr/debug/p/io.mk
 create mode 100644 libr/debug/p/native/linux/reg/linux-mips64.h
 rename libr/{flags => flag}/Jamroot (100%)
 rename libr/{flags => flag}/Makefile (53%)
 rename libr/{flags/flags.c => flag/flag.c} (88%)
 rename libr/{flags => flag}/sort.c (96%)
 rename libr/{flags => flag}/spaces.c (87%)
 create mode 100644 libr/flag/zones.c
 delete mode 100644 libr/include/list.h
 rename libr/include/{naked.h => r2naked.h} (90%)
 rename libr/include/{r_flags.h => r_flag.h} (80%)
 create mode 100644 libr/include/sflib/linux-arm-32/sflib.h
 create mode 100644 libr/include/sflib/linux-arm-32/sfsyscall.h
 create mode 100644 libr/include/sflib/linux-arm-32/sfsysnr.h
 create mode 100644 libr/include/sflib/linux-arm-64/sflib.h
 create mode 100644 libr/include/sflib/linux-arm-64/sfsyscall.h
 create mode 100644 libr/include/sflib/linux-arm-64/sfsysnr.h
 create mode 100644 libr/io/p/io_tcp.c
 create mode 100644 libr/io/p/tcp.mk
 delete mode 100644 libr/search/TODO
 delete mode 100644 libr/syscall/TODO
 create mode 100644 libr/syscall/d/linux-arm-64
 create mode 100644 libr/util/tinyrange.c
 delete mode 100644 media/Radare2.iosapp/Icon-72.png
 delete mode 100644 media/Radare2.iosapp/Icon.png
 delete mode 100644 media/Radare2.iosapp/Icon@2x.png
 delete mode 100644 media/Radare2.iosapp/Info.plist
 delete mode 100644 media/Radare2.iosapp/PkgInfo
 delete mode 100755 media/Radare2.iosapp/Radare2
 delete mode 100644 media/images/keepr2.png
 rename pkgcfg/{r_flags.pc.acr => r_flag.pc.acr} (84%)
 rename shlr/capstone-patches/{oobfix-X86_insn_reg_intel.patch => .oobfix-X86_insn_reg_intel.patch} (100%)
 delete mode 100644 shlr/grub/TODO
 mode change 100755 => 100644 shlr/www/m/index.js
 create mode 100644 shlr/www/m/vendors/mdl-selectfield.min.css
 create mode 100644 shlr/www/m/vendors/mdl-selectfield.min.js
 rename {build => sys/build}/Makefile (100%)
 rename {build => sys/build}/config.json (100%)
 rename {build => sys/build}/make.js/index.js (100%)
 rename {build => sys/build}/make.js/utils.js (100%)
 rename {build => sys/build}/radare2.js (100%)
 rename {build => sys/build}/stress.js (100%)
 create mode 100755 sys/ios-cydia32.sh
 create mode 100755 sys/ios-static-appstore.sh
 create mode 100644 sys/release-notes/config.json
```

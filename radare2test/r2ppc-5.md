```asm
$ date
Thu May 19 03:27:35 UTC 2016
$
$ (cleanup)
$
$ git pull
remote: Counting objects: 403, done.
remote: Compressing objects: 100% (140/140), done.
remote: Total 403 (delta 267), reused 195 (delta 195), pack-reused 68
Receiving objects: 100% (403/403), 301.28 KiB | 290 KiB/s, done.
Resolving deltas: 100% (290/290), completed with 87 local objects.
From https://github.com/radare/radare2
   50a46a9..7ea97d3  master     -> origin/master
 * [new branch]      revert-4917-mips_esil_sub -> origin/revert-4917-mips_esil_sub
Updating 50a46a9..7ea97d3
Fast-forward
   :
 libr/debug/debug.c                      |    1 +
 libr/debug/p/native/linux/linux_debug.c |   20 +-
   :
$
$ git describe --all --long
heads/master-0-g7ea97d3
$
$ sys/user.sh
WARNING: Updating from remote repository
Already up-to-date.

export USE_R2_CAPSTONE=

configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... powerpc-unknown-linux-gnu
checking host system type... powerpc-unknown-linux-gnu
checking target system type... powerpc-unknown-linux-gnu
checking for working directories... current
using prefix '/PATH/bin/prefix/radare2/'
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
 - PREFIX = /PATH/bin/prefix/radare2/
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 0.10.3-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 0.10.3-git
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
ar: creating libr_zip.a
ar: creating librz.a
CC mem.c
CC pool.c
CC num.c
CC str.c
CC hex.c
CC file.c
CC range.c
CC prof.c
CC cache.c
CC sys.c
CC buf.c
CC w32-sys.c
CC base64.c
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
LD libr_socket.so
[capstone] Updating capstone from git...
HEAD 4d36deb1b6e19824644cbb50e62fc311b5569400
TIP 1521ba3fa301b384b497fb85bbcd888e2101de11
HEAD is now at 9d07c1c arm: only reset IT block for ARM
Already on 'next'
Your branch is behind 'origin/next' by 21 commits, and can be fast-forwarded.
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

CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
CC match.c
ar: creating lib/libbochs.a
a - src/libbochs.o
CC json.c
ar: creating libr_wind.a
CC ns.c
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
CC main.c
remote: Counting objects: 44, done.
remote: Compressing objects: 100% (28/28), done.
remote: Total 44 (delta 21), reused 13 (delta 13), pack-reused 3
Unpacking objects: 100% (44/44), done.
AR libsdb.a
From https://github.com/aquynh/capstone
   9a7fc99..73bfcc2  master     -> origin/master
   f3cf9db..ff428f8  windrv     -> origin/windrv
ar: creating libsdb.a
BIN sdb
Updating 9d07c1c..1521ba3
Fast-forward
 .travis.yml                            |    4 ++--
 Makefile                               |    8 ++++----
 arch/M68K/M68KDisassembler.c           |   18 ++++++++++++------
 arch/M68K/M68KInstPrinter.c            |    4 ++--
 arch/Mips/MipsMapping.c                |    5 +++++
 arch/Mips/MipsMappingInsn.inc          |   20 ++++++++++----------
 bindings/java/capstone/M68k_const.java |    7 ++++---
 bindings/java/capstone/Mips_const.java |    5 +++++
 bindings/ocaml/m68k_const.ml           |    7 ++++---
 bindings/ocaml/mips_const.ml           |    5 +++++
 bindings/python/Makefile               |    2 +-
 bindings/python/capstone/m68k.py       |   11 +++++++++--
 bindings/python/capstone/m68k_const.py |    7 ++++---
 bindings/python/capstone/mips_const.py |    5 +++++
 bindings/python/test_m68k.py           |   20 ++++++++------------
 cs.c                                   |    2 +-
 include/capstone/m68k.h                |   11 ++++++++---
 include/capstone/mips.h                |   10 ++++++++++
 suite/test_group_name.py               |    5 +++++
 tests/test_arm.c                       |    4 ++--
 tests/test_m68k.c                      |   18 ++++++++----------
 tests/test_mips.c                      |    2 +-
 tests/test_ppc.c                       |    2 +-
 23 files changed, 116 insertions(+), 66 deletions(-)

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

HEAD is now at 1521ba3 Merge pull request #682 from ibabushkin/next
HEAD is now at 1521ba3 Merge pull request #682 from ibabushkin/next
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
  CC      SStream.o
  CC      utils.o
  CC      MCRegisterInfo.o
  CC      MCInstrDesc.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64BaseInfo.o
CC cdb.c
CC buffer.c
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
CC cdb_make.c
  CC      arch/AArch64/AArch64Module.o
  CC      arch/M68K/M68KInstPrinter.o
CC ls.c
  CC      arch/M68K/M68KDisassembler.o
CC ht.c
CC sdb.c
  CC      arch/M68K/M68KModule.o
  CC      arch/Mips/MipsDisassembler.o
CC num.c
  CC      arch/Mips/MipsInstPrinter.o
  CC      arch/Mips/MipsMapping.o
CC base64.c
CC match.c
  CC      arch/Mips/MipsModule.o
CC json.c
CC ns.c
  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/PowerPC/PPCInstPrinter.o
CC lock.c
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCModule.o
CC util.c
CC disk.c
CC query.c
  CC      arch/Sparc/SparcDisassembler.o
CC array.c
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/Sparc/SparcMapping.o
CC fmt.c
CC journal.c
  CC      arch/Sparc/SparcModule.o
AR libsdb.a
ar: creating libsdb.a
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZModule.o
  CC      arch/SystemZ/SystemZMCTargetDesc.o
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
ar: creating ./libcapstone.a
make -C sdb
CC main.c
BIN sdb
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC cdb.c
CC PIC ht.c
CC PIC ls.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC ns.c
CC PIC json.c
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.10.2
make -C zip
make -C udis86
make -C java
CC code.c
CC class.c
CC ops.c
CC dsojson.c
ar: creating libr_java.a
make -C tcc
ar: creating libr_tcc.a
make -C grub
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
ar: creating libgrubfs.a
make -C gdb
CC core.c
CC libgdbr.c
CC messages.c
CC packet.c
CC utils.c
ar: creating lib/libgdbr.a
a - src/core.o
a - src/libgdbr.o
a - src/messages.o
a - src/packet.o
a - src/utils.o
make -C qnx
CC core.c
CC libqnxr.c
CC packet.c
CC sigutil.c
CC utils.c
ar: creating lib/libqnxr.a
a - src/core.o
a - src/libqnxr.o
a - src/packet.o
a - src/sigutil.o
a - src/utils.o
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
LD libr_hash.so
DIR socket
DIR reg
DIR cons
DIR db
DIR magic
DIR bp
DIR search
DIR config
CC reg.c
CC apprentice.c
CC arena.c
CC ascmagic.c
CC value.c
CC fsmagic.c
CC cons.c
CC search.c
CC config.c
CC callback.c
CC bp.c
CC db.c
CC funcs.c
CC is_tar.c
CC magic.c
CC cond.c
CC double.c
CC profile.c
CC bytepat.c
CC softmagic.c
LD libr_config.so
CC watch.c
CC io.c
CC table.c
CC plugin.c
CC traptrace.c
CC bp_arm.c
CC pipe.c
LD libr_reg.so
CC output.c
CC bp_bf.c
CC bp_mips.c
LD libr_db.so
CC bp_ppc.c
CC bp_x86.c
CC strings.c
CC aes-find.c
CC rsa-find.c
CC regexp.c
CC grep.c
CC less.c
CC utf8.c
CC line.c
CC hud.c
CC rgb.c
LD libr_bp.so
CC xrefs.c
CC keyword.c
LD libr_magic.so
CC input.c
CC pal.c
CC editor.c
CC 2048.c
CC canvas.c
CC canvas_line.c
LD libr_search.so
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flags
CC syscall.c
CC lang.c
CC ioports.c
CC flags.c
CC sort.c
CC spaces.c
CC io_bfdbg.c
CC io_bochs.c
CC io_debug.c
CC io_default.c
CC io_gdb.c
CC crypto_aes.c
CC crypto_aes_algo.c
CC crypto_aes_cbc.c
CC crypto_base64.c
CC io_gzip.c
CC io_http.c
LD libr_flags.so
CC io_ihex.c
CC crypto_base91.c
CC io_mach.c
CC io_malloc.c
CC crypto_blowfish.c
CC crypto_punycode.c
CC io_mmap.c
CC crypto_rc2.c
SDB dos-x86-16
SDB ios-x86-32
SDB ios-arm-32
CC io_procpid.c
SDB ios-arm-64
CC crypto_rc4.c
SDB linux-x86-32
SDB linux-x86-64
LD libr_lang.so
CC io_ptrace.c
SDB linux-arm-32
CC crypto_rc6.c
CC crypto_rol.c
SDB linux-mips-32
SDB linux-sparc-32
CC io_qnx.c
SDB darwin-x86-32
SDB darwin-x86-64
CC crypto_ror.c
SDB netbsd-x86-32
CC io_r2pipe.c
CC io_r2web.c
SDB freebsd-x86-32
CC io_rap.c
SDB openbsd-x86-32
CC crypto_rot.c
SDB openbsd-x86-64
SDB windows-x86-32
CC crypto_xor.c
CC io_self.c
SDB windows-x86-64
CC crypto.c
CC io_shm.c
LD libr_syscall.so
CC io_sparse.c
CC io_w32.c
CC io_w32dbg.c
CC io_windbg.c
CC io_zip.c
CC io.c
CC plugin.c
LD libr_crypto.so
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
CC bin.c
CC dbginfo.c
CC anal_6502.c
CC bin_write.c
CC anal_8051.c
CC demangle.c
CC 8051.c
CC dwarf.c
CC anal_arc.c
CC anal_arm_cs.c
  SDB dospart
CC anal_arm_gnu.c
CC be_arm.c
CC filter.c
CC cp-demangle.c
CC anal_avr.c
CC anal_bf.c
SDB linux-x86-32
SDB linux-x86-64
SDB darwin-x86-64
CC anal_cr16.c
SDB windows-x86-32
SDB windows-x86-64
CC cr16_disas.c
CC bin_any.c
CC anal_cris.c
CC anal_csr.c
CC bin_art.c
CC fs_cpio.c
CC bin_bf.c
CC anal_dalvik.c
CC anal_ebc.c
CC ebc_disas.c
CC bin_bios.c
CC anal_gb.c
CC anal_h8300.c
CC h8300_disas.c
CC fs_ext2.c
CC bin_bootimg.c
CC bin_cgc.c
CC bin_coff.c
CC anal_i4004.c
CC fs_fat.c
CC anal_i8080.c
CC coff.c
CC anal_java.c
CC fs_fb.c
/PATH/radare2/libr/..//libr/bin/p/bin_elf.c:581:15: warning: 'patch_relocs' defined but not used [-Wunused-function]
CC bin_dex.c
CC anal_m68k.c
CC fs_hfs.c
CC dex.c
CC bin_dol.c
CC anal_m68k_cs.c
CC fs_hfsplus.c
CC anal_malbolge.c
CC anal_mips_cs.c
CC fs_iso9660.c
CC bin_dyldcache.c
CC bin_elf.c
CC fs_jfs.c
CC bin_dbginfo_elf.c
CC anal_mips_gnu.c
CC anal_msp430.c
CC msp430_disas.c
CC bin_write_elf.c
CC fs_minix.c
CC anal_nios2.c
CC elf.c
CC fs_ntfs.c
CC elf_write.c
CC anal_null.c
CC anal_pic18c.c
CC anal_ppc_cs.c
CC bin_elf64.c
CC fs_posix.c
CC fs_reiserfs.c
CC anal_ppc_gnu.c
CC bin_dbginfo_elf64.c
CC anal_riscv.c
CC bin_write_elf64.c
CC fs_sfs.c
CC anal_sh.c
CC fs_squash.c
CC anal_snes.c
CC anal_sparc_cs.c
CC elf64.c
CC anal_sparc_gnu.c
CC elf64_write.c
CC anal_sysz.c
CC fs_tar.c
CC fs_udf.c
CC bin_fs.c
CC anal_tms320.c
CC anal_tms320_c55x_plus.c
CC fs_ufs.c
CC fs_xfs.c
CC tms320_dasm.c
CC ins.c
CC bin_java.c
CC c55plus.c
CC bin_mach0.c
CC c55plus_decode.c
CC mach0.c
CC fs.c
CC decode_funcs.c
CC file.c
CC utils.c
CC hashtable.c
CC hashvector.c
CC mach0_classes.c
CC mach064_classes.c
CC anal_v810.c
CC v810_disas.c
/PATH/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]
CC anal_v850.c
CC v850_disas.c
CC bin_write_mach0.c
CC bin_mach064.c
LD libr_fs.so
CC anal_vax.c
CC anal_ws.c
CC anal_x86_cs.c
CC anal_x86_udis.c
CC esil_x86_udis.c
CC bin_write_mach064.c
CC mach064.c
CC anal_xcore_cs.c
CC bin_mbn.c
CC bin_mz.c
CC mz.c
CC anal_xtensa.c
CC bin_nes.c
CC bin_nin3ds.c
/PATH/radare2/libr/..//libr/anal/p/anal_x86_cs.c: In function 'anop':
/PATH/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1920:15: warning: unused variable 'in' [-Wunused-variable]
/PATH/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1944:15: warning: unused variable 'in' [-Wunused-variable]
CC anal_z80.c
CC meta.c
CC reflines.c
CC ref.c
CC bin_ninds.c
CC op.c
CC bin_ningb.c
CC bin_ningba.c
CC fcn.c
CC bb.c
/PATH/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 'z80_op' defined but not used [-Wunused-variable]
CC var.c
CC bin_omf.c
CC cond.c
CC value.c
CC omf.c
CC bin_p9.c
CC cc.c
CC diff.c
CC p9bin.c
CC types.c
CC bin_pe.c
CC fcnstore.c
CC hint.c
CC anal.c
CC pe.c
CC bin_pe64.c
CC data.c
CC xrefs.c
CC esil.c
CC pe64.c
CC sign.c
CC anal_ex.c
CC switch.c
CC bin_pebble.c
CC state.c
CC bin_psxexe.c
CC cycles.c
CC esil_stats.c
CC esil_trace.c
CC flirt.c
CC bin_rar.c
CC labels.c
CC bin_smd.c
CC esil2reil.c
CC pin.c
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
LD libr_anal.so
CC fpo.c
CC dbi.c
CC tpi.c
CC stream_file.c
CC pdb.c
LD libr_bin.so
/PATH/radare2/libr/bin/p
SHLR=/PATH/radare2/libr/..//libr/../shlr
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
gcc: warning: /PATH/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done
DIR asm
DIR debug
CC asm_6502.c
CC asm_8051.c
CC asm_arc.c
CC arc-dis.c
CC arc-ext.c
CC arc-opc.c
CC arcompact-dis.c
CC asm_arm_as.c
CC asm_arm_cs.c
CC armass.c
CC armass64.c
CC signal.c
CC map.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC aarch64-dis.c
CC trace.c
CC aarch64-dis-2.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC asm_bf.c
CC arg.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC debug.c
CC cris-dis.c
CC cris-opc.c
CC asm_csr.c
CC asm_dalvik.c
CC plugin.c
CC asm_dcpu16.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hppa_gnu.c
CC hppa-dis.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC snap.c
CC asm_lanai_gnu.c
CC pid.c
CC lanai-dis.c
CC lanai-opc.c
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
CC reg.c
CC asm_mcs96.c
CC desc.c
CC esil.c
CC asm_mips_cs.c
CC debug_bf.c
CC asm_mips_gnu.c
CC mips-dis.c
CC mips16-opc.c
CC mips-opc.c
CC mipsasm.c
CC asm_msp430.c
CC asm_nios2.c
CC debug_bochs.c
CC debug_esil.c
CC debug_gdb.c
CC debug_native.c
CC nios2-dis.c
CC nios2-opc.c
CC debug_qnx.c
CC asm_pic18c.c
CC asm_ppc_cs.c
CC asm_ppc_gnu.c
CC ppc-dis.c
CC ppc-opc.c
CC asm_rar.c
CC debug_rap.c
p/debug_native.c:1323:2: warning: #warning Unsupported architecture [-Wcpp]
CC asm_riscv.c
CC debug_wind.c
CC linux_debug.c
CC asm_sh.c
CC sh-dis.c
CC asm_snes.c
CC asm_sparc_cs.c
CC asm_sparc_gnu.c
CC sparc-dis.c
CC sparc-opc.c
CC asm_spc700.c
p/native/linux/linux_debug.c: In function 'linux_handle_signals':
p/native/linux/linux_debug.c:45:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c: In function 'print_fpu':
p/native/linux/linux_debug.c:293:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:383:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:390:4: error: unknown type name 'R_DEBUG_REG_T'
p/native/linux/linux_debug.c:298:7: warning: variable 'showfpu' set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: In function 'linux_reg_write':
p/native/linux/linux_debug.c:435:43: error: 'struct user' has no member named 'u_debugreg'
p/native/linux/linux_debug.c:441:18: error: 'R_DEBUG_REG_T' undeclared (first use in this function)
p/native/linux/linux_debug.c:441:18: note: each undeclared identifier is reported only once for each function it appears in
CC asm_sysz.c
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:205:13: warning: 'print_fpu' defined but not used [-Wunused-function]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[4]: *** Waiting for unfinished jobs....
CC asm_tms320.c
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
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
gcc: warning: /PATH/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /PATH/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
$
```

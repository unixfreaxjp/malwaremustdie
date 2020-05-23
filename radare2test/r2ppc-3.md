**Previous reference**

- Upstream issue: https://github.com/radare/radare2/issues/4720
- Previous test (2nd) log: https://github.com/unixfreaxjp/dev/blob/master/r2ppc-2.md
- Report updated in upstream: https://github.com/radare/radare2/issues/4720#issuecomment-215421056
- Suggestion for upstream is added: https://github.com/radare/radare2/issues/4720#issuecomment-215931583
- Current fail build errors: (suggested error in handles for _ppc_ cpu arch on linux platform) 
```asm
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:385:4: error: unknown type name 'R_DEBUG_REG_T'
p/native/linux/linux_debug.c: In function 'linux_reg_write':
p/native/linux/linux_debug.c:427:43: error: 'struct user' has no member named 'u_debugreg'
p/native/linux/linux_debug.c:433:17: error: 'R_DEBUG_REG_T' undeclared (first use in this function)
```
- Last build tested on the issue:
```asm
$ git clone https://github.com/radare/radare2.git
Cloning into 'radare2'...
remote: Counting objects: 105375, done.
remote: Compressing objects: 100% (50/50), done.
remote: Total 105375 (delta 15), reused 0 (delta 0), pack-reused 105325
Receiving objects: 100% (105375/105375), 56.10 MiB | 142 KiB/s, done.
Resolving deltas: 100% (74381/74381), done.
Checking out files: 100% (2520/2520), done.
```
Fresh pull to complete full build test log, starting *non root* build (sys/user.sh):
```asm

$ sys/user.sh

WARNING: Updating from remote repository
Already up-to-date.

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
using prefix '/test/bin/prefix/radare2/'
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
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIL_ENDIAN = 0
 - LIBVERSION = 0.10.3-git
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
CC swap.c
LD libr_util.so
CC socket.c
CC proc.c
CC http.c
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
socket.c: In function 'r_socket_close':
socket.c:262:7: warning: unused variable 'buf' [-Wunused-variable]
LD libr_socket.so
Cloning into 'capstone'...
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

CC buffer.c
CC cdb.c
CC cdb_make.c
CC ls.c
CC ht.c
CC num.c
CC sdb.c
CC base64.c
CC match.c
ar: creating lib/libbochs.a
a - src/libbochs.o
ar: creating libr_wind.a
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
remote: Counting objects: 19254, done.
AR libsdb.abjects:  12% (2318/19254), 436.01 KiB | 117 KiB/s
ar: creating libsdb.a3% (2504/19254), 468.01 KiB | 110 KiB/s
BIN sdb
Receiving objects:  14% (2696/19254), 500.01 KiB | 105 KiB/s
>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

CC cdb.cg objects:  16% (3081/19254), 572.01 KiB | 87 KiB/s
CC cdb_make.c
CC buffer.c
CC ls.c
CC sdb.c
CC ht.c
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c objects:  16% (3213/19254), 1.15 MiB | 63 KiB/s
CC util.c objects:  16% (3213/19254), 1.21 MiB | 61 KiB/s
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.cjects:  16% (3214/19254), 1.31 MiB | 64 KiB/s
AR libsdb.abjects:  17% (3337/19254), 2.11 MiB | 46 KiB/s
ar: creating libsdb.a
remote: Total 19254 (delta 0), reused 0 (delta 0), pack-reused 19253
Receiving objects: 100% (19254/19254), 29.79 MiB | 64 KiB/s, done.
Resolving deltas: 100% (13729/13729), done.
Checking out files: 100% (588/588), done.
[capstone] Updating capstone from git...
HEAD 0c864409f3eb7885c6d027aceb6ffbb70783e322
TIP a4bdbc81575ff5d9e571237be09b30823cdde122
HEAD is now at a997340 Merge branch 'master' of https://github.com/aquynh/capstone
Checking out files: 100% (318/318), done.
Branch next set up to track remote branch next from origin.
Switched to a new branch 'next'
Already up-to-date.
HEAD is now at a4bdbc8 x86: do not print LJMP/LCALL with ptr. this fixes issue #429
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
  CC      utils.o
  CC      MCInstrDesc.o
  CC      SStream.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Disassembler.o
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
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCModule.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
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
CC PIC cdb.c
CC PIC cdb_make.c
CC PIC sdb.c
CC PIC num.c
CC PIC ls.c
CC PIC ht.c
CC PIC base64.c
CC PIC json.c
CC PIC match.c
CC PIC ns.c
CC PIC lock.c
CC PIC disk.c
CC PIC util.c
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
calc.c: In function 'r_hash_calculate':
calc.c:39:8: warning: unused variable 'pres' [-Wunused-variable]
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
CC config.c
CC apprentice.c
CC arena.c
CC ascmagic.c
CC value.c
CC callback.c
CC cons.c
CC bp.c
CC search.c
CC bytepat.c
CC db.c
CC table.c
CC fsmagic.c
CC cond.c
CC double.c
CC profile.c
CC strings.c
CC watch.c
LD libr_config.so
CC aes-find.c
CC rsa-find.c
CC funcs.c
LD libr_db.so
CC is_tar.c
CC regexp.c
CC magic.c
LD libr_reg.so
CC softmagic.c
CC pipe.c
CC io.c
CC xrefs.c
CC keyword.c
CC plugin.c
CC traptrace.c
CC bp_arm.c
CC bp_bf.c
CC bp_mips.c
CC bp_ppc.c
CC bp_x86.c
CC output.c
CC grep.c
CC less.c
CC utf8.c
CC line.c
CC hud.c
LD libr_search.so
CC rgb.c
CC input.c
CC pal.c
CC editor.c
LD libr_bp.so
CC 2048.c
CC canvas.c
CC canvas_line.c
LD libr_magic.so
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
CC io_gzip.c
CC io_http.c
CC io_ihex.c
CC crypto_base64.c
LD libr_flags.so
CC io_mach.c
CC io_malloc.c
CC io_mmap.c
CC crypto_base91.c
CC crypto_blowfish.c
CC crypto_rc2.c
SDB dos-x86-16
SDB ios-x86-32
SDB ios-arm-32
SDB ios-arm-64
CC io_procpid.c
SDB linux-x86-32
SDB linux-x86-64
CC crypto_rc4.c
SDB linux-arm-32
SDB linux-mips-32
CC crypto_rol.c
SDB linux-sparc-32
SDB darwin-x86-32
SDB darwin-x86-64
CC io_ptrace.c
LD libr_lang.so
SDB netbsd-x86-32
CC crypto_ror.c
SDB freebsd-x86-32
SDB openbsd-x86-32
CC crypto_rot.c
SDB openbsd-x86-64
CC crypto_xor.c
SDB windows-x86-32
CC io_qnx.c
CC io_r2pipe.c
CC crypto.c
SDB windows-x86-64
CC io_r2web.c
CC io_rap.c
CC io_self.c
LD libr_syscall.so
CC io_shm.c
CC io_sparse.c
CC io_w32.c
CC io_w32dbg.c
CC io_windbg.c
LD libr_crypto.so
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
CC bin.c
CC dbginfo.c
CC bin_write.c
CC demangle.c
CC dwarf.c
CC filter.c
CC cp-demangle.c
CC bin_any.c
CC bin_art.c
CC bin_bf.c
  SDB dospart
CC bin_bios.c
CC anal_6502.c
CC anal_8051.c
CC bin_bootimg.c
CC bin_cgc.c
CC bin_coff.c
CC coff.c
SDB linux-x86-32
SDB linux-x86-64
SDB darwin-x86-64
SDB windows-x86-32
SDB windows-x86-64
CC 8051.c
CC bin_dex.c
/test/radare2/libr/..//libr/bin/p/bin_elf.c:581:15: warning: 'patch_relocs' defined but not used [-Wunused-function]
CC dex.c
CC bin_dol.c
CC bin_dyldcache.c
CC anal_arc.c
CC anal_arm_cs.c
CC anal_arm_gnu.c
CC fs_cpio.c
CC bin_elf.c
CC bin_dbginfo_elf.c
CC bin_write_elf.c
CC elf.c
CC elf_write.c
CC bin_elf64.c
CC bin_dbginfo_elf64.c
CC fs_ext2.c
CC be_arm.c
CC bin_write_elf64.c
CC elf64.c
CC elf64_write.c
CC anal_avr.c
CC bin_fs.c
CC bin_java.c
CC fs_fat.c
CC bin_mach0.c
CC mach0.c
CC mach0_classes.c
CC anal_bf.c
CC anal_cr16.c
CC mach064_classes.c
CC fs_fb.c
CC cr16_disas.c
CC bin_write_mach0.c
CC anal_cris.c
CC fs_hfs.c
CC anal_csr.c
CC bin_mach064.c
CC anal_dalvik.c
CC bin_write_mach064.c
CC mach064.c
CC bin_mbn.c
CC anal_ebc.c
CC bin_mz.c
CC fs_hfsplus.c
CC ebc_disas.c
CC mz.c
CC bin_nes.c
CC anal_gb.c
CC anal_h8300.c
CC bin_nin3ds.c
CC bin_ninds.c
CC bin_ningb.c
CC fs_iso9660.c
CC bin_ningba.c
CC h8300_disas.c
CC bin_omf.c
CC anal_i4004.c
CC omf.c
CC bin_p9.c
CC fs_jfs.c
CC fs_minix.c
CC p9bin.c
CC bin_pe.c
CC anal_i8080.c
CC pe.c
CC fs_ntfs.c
CC anal_java.c
CC fs_posix.c
CC anal_m68k.c
CC bin_pe64.c
CC fs_reiserfs.c
CC pe64.c
CC bin_pebble.c
CC fs_sfs.c
CC anal_m68k_cs.c
CC fs_squash.c
CC bin_psxexe.c
CC fs_tar.c
CC anal_malbolge.c
CC fs_udf.c
CC fs_ufs.c
CC bin_rar.c
CC bin_smd.c
CC fs_xfs.c
CC bin_sms.c
CC anal_mips_cs.c
CC anal_mips_gnu.c
CC anal_msp430.c
CC fs.c
CC file.c
CC bin_spc700.c
CC bin_te.c
CC te.c
CC bin_vsf.c
CC bin_xbe.c
CC bin_zimg.c
CC msp430_disas.c
CC anal_nios2.c
CC zimg.c
CC bin_xtr_fatmach0.c
LD libr_fs.so
CC fatmach0.c
CC bin_xtr_dyldcache.c
CC anal_null.c
CC dyldcache.c
CC demangler.c
CC microsoft_demangle.c
CC objc.c
CC anal_pic18c.c
CC anal_ppc_cs.c
CC cxx.c
CC msvc.c
CC swift.c
CC swift-sd.c
CC dlang.c
CC pdb_downloader.c
CC omap.c
CC anal_ppc_gnu.c
CC stream_pe.c
CC gdata.c
CC fpo.c
CC dbi.c
CC tpi.c
CC anal_riscv.c
CC stream_file.c
CC anal_sh.c
CC pdb.c
CC anal_snes.c
CC anal_sparc_cs.c
CC anal_sparc_gnu.c
CC anal_sysz.c
CC anal_tms320.c
CC anal_tms320_c55x_plus.c
CC tms320_dasm.c
CC ins.c
CC c55plus.c
CC c55plus_decode.c
CC decode_funcs.c
CC utils.c
CC hashtable.c
CC hashvector.c
CC anal_v810.c
CC v810_disas.c
CC anal_v850.c
CC v850_disas.c
CC anal_vax.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]
CC anal_ws.c
CC anal_x86_cs.c
CC anal_x86_udis.c
CC esil_x86_udis.c
LD libr_bin.so
CC anal_xcore_cs.c
CC anal_xtensa.c
CC anal_z80.c
CC meta.c
CC reflines.c
CC ref.c
CC op.c
CC fcn.c
/test/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 'z80_op' defined but not used [-Wunused-variable]
CC bb.c
CC var.c
CC cond.c
CC value.c
CC cc.c
CC diff.c
CC types.c
CC fcnstore.c
CC hint.c
CC anal.c
CC data.c
CC xrefs.c
CC esil.c
CC sign.c
CC anal_ex.c
CC switch.c
/test/radare2/libr/bin/p
SHLR=/test/radare2/libr/..//libr/../shlr
CC state.c
anal.c: In function 'r_anal_set_reg_profile':
anal.c:205:7: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
CC cycles.c
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
CC aarch64-dis-2.c
CC aarch64-opc.c
CC trace.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC arg.c
CC asm_avr.c
CC asm_bf.c
CC debug.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC plugin.c
CC snap.c
CC cris-dis.c
CC cris-opc.c
CC asm_csr.c
CC asm_dalvik.c
CC asm_dcpu16.c
CC asm_ebc.c
CC pid.c
CC asm_gb.c
CC reg.c
CC asm_h8300.c
CC asm_hppa_gnu.c
CC hppa-dis.c
CC desc.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC esil.c
CC lanai-opc.c
CC debug_bf.c
CC asm_lh5801.c
CC asm_lm32.c
CC debug_bochs.c
CC asm_m68k.c
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
CC asm_mcs96.c
CC asm_mips_cs.c
CC asm_mips_gnu.c
CC mips-dis.c
CC mips16-opc.c
CC debug_esil.c
CC debug_gdb.c
CC mips-opc.c
CC mipsasm.c
CC asm_msp430.c
CC debug_native.c
CC asm_nios2.c
CC nios2-dis.c
CC nios2-opc.c
CC asm_pic18c.c
CC asm_ppc_cs.c
p/debug_native.c:1320:2: warning: #warning Unsupported architecture [-Wcpp]
CC debug_qnx.c
CC asm_ppc_gnu.c
CC ppc-dis.c
CC ppc-opc.c
CC asm_rar.c
CC debug_rap.c
CC asm_riscv.c
CC asm_sh.c
CC sh-dis.c
CC debug_wind.c
CC asm_snes.c
CC asm_sparc_cs.c
CC asm_sparc_gnu.c
CC linux_debug.c
CC sparc-dis.c
CC sparc-opc.c
CC asm_spc700.c
CC asm_sysz.c
CC asm_tms320.c
CC asm_tricore.c
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
CC tricore-dis.c
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
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
[...] 
```
Test is in pending, until suggestion discussed.

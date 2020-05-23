Git Build Version:
```asm
695d9a0..50a46a9  master -> origin/master
```
Test Date:
```asm
Mon May 16 16:17:42 JST 2016
```
Build Log:
```asm

$ sys/install.sh
WARNING: Updating from remote repository
Already up-to-date.
sudo is /usr/local/bin/sudo

export USE_R2_CAPSTONE=

Removing Makefile.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing libcapstone.a
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... i386-unknown-freebsd
checking host system type... i386-unknown-freebsd
checking target system type... i386-unknown-freebsd
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
checking pkg-config flags for openssl... yes
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
 - PREFIX = /usr
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
 - USEROSTYPE = bsd
 - LIBVERSION = 0.10.3-git
 - BUILD = i386-unknown-freebsd
 - HOST = i386-unknown-freebsd
 - TARGET = i386-unknown-freebsd
Generating r_version.h file
Update libr/include/r_version.h
CC adler32.c
CC crc32.c
CC infback.c
CC deflate.c
CC inffast.c
CC inflate.c
CC inftrees.c
CC trees.c
CC compress.c
CC zutil.c
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
CC zip_delete.c
CC zip_close.c
CC zip_dir_add.c
CC zip_dirent.c
CC zip_discard.c
CC zip_entry.c
CC zip_err_str.c
CC zip_error.c
CC zip_error_clear.c
CC zip_error_get_sys_type.c
CC zip_error_get.c
CC zip_error_strerror.c
CC zip_error_to_str.c
CC zip_extra_field_api.c
CC zip_extra_field.c
CC zip_fclose.c
CC zip_fdopen.c
CC zip_file_add.c
CC zip_file_error_clear.c
CC zip_file_error_get.c
CC zip_file_get_comment.c
CC zip_file_get_offset.c
CC zip_file_replace.c
CC zip_file_rename.c
CC zip_file_strerror.c
CC zip_file_set_comment.c
CC zip_fopen.c
CC zip_filerange_crc.c
CC zip_fopen_encrypted.c
CC zip_fopen_index.c
CC zip_fopen_index_encrypted.c
CC zip_fread.c
CC zip_get_archive_flag.c
CC zip_get_compression_implementation.c
CC zip_get_archive_comment.c
CC zip_get_file_comment.c
CC zip_get_encryption_implementation.c
CC zip_get_num_entries.c
CC zip_get_num_files.c
CC zip_memdup.c
CC zip_get_name.c
CC zip_name_locate.c
CC zip_open.c
CC zip_rename.c
CC zip_new.c
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
CC zip_source_pop.c
CC zip_source_pkware.c
CC zip_source_read.c
CC zip_source_stat.c
CC zip_source_window.c
CC zip_source_zip.c
CC zip_source_zip_new.c
CC zip_stat.c
CC zip_stat_index.c
CC zip_stat_init.c
CC zip_strerror.c
CC zip_unchange.c
CC zip_string.c
CC zip_unchange_all.c
CC zip_unchange_archive.c
CC zip_utf-8.c
CC zip_unchange_data.c
LIB libr_zip.so
ar: warning: creating libr_zip.a
ar: warning: creating librz.a
CC mem.c
CC pool.c
CC num.c
CC str.c
CC file.c
CC hex.c
CC range.c
CC prof.c
CC cache.c
CC sys.c
CC buf.c
CC w32-sys.c
CC base64.c
CC base85.c
sys.c:171:2: warning: #warning TODO: r_sys_bt : unimplemented
sys.c: In function 'r_sys_crash_handler':
sys.c:265: warning: implicit declaration of function 'backtrace'
sys.c: In function 'r_sys_perror_str':
sys.c:555: warning: ignoring #pragma push_macro
sys.c:558: warning: ignoring #pragma pop_macro
CC base91.c
CC flist.c
CC list.c
CC ht64.c
CC ht.c
CC btree.c
CC chmod.c
CC graph.c
CC mixed.c
CC regcomp.c
CC regerror.c
CC regexec.c
CC uleb128.c
CC sandbox.c
CC calc.c
CC thread.c
CC thread_msg.c
CC thread_lock.c
CC strpool.c
CC bitmap.c
CC p_date.c
CC strht.c
CC p_format.c
CC p_seven.c
CC print.c
CC randomart.c
CC log.c
CC slist.c
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
CC punycode.c
des.c: In function 'des_rotl':
des.c:129: warning: integer constant is too large for 'long' type
des.c: In function 'des_rotr':
des.c:140: warning: integer constant is too large for 'long' type
LD libr_util.so
CC socket.c
CC proc.c
CC http.c
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
run.c: In function 'handle_redirection_proc':
run.c:220: warning: implicit declaration of function 'forkpty'
LD libr_socket.so
[capstone] Already in TIP, no need to update from git
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
>>>>>>>>>>>>>>>>

wind.c: In function 'wind_va_to_pa':
wind.c:414: warning: integer constant is too large for 'long' type
HEAD is now at 4d36deb fix #673
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86ATTInstPrinter.c b/arch/X86/X86ATTInstPrinter.c
|index 7e19b4e..062eef8 100644
|--- a/arch/X86/X86ATTInstPrinter.c
|+++ b/arch/X86/X86ATTInstPrinter.c
--------------------------
Patching file arch/X86/X86ATTInstPrinter.c using Plan A...
Hunk #1 succeeded at 600 (offset 24 lines).
Hmm...  The next patch looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86IntelInstPrinter.c b/arch/X86/X86IntelInstPrinter.c
|index c455725..eb60586 100644
|--- a/arch/X86/X86IntelInstPrinter.c
|+++ b/arch/X86/X86IntelInstPrinter.c
--------------------------
Patching file arch/X86/X86IntelInstPrinter.c using Plan A...
Hunk #1 succeeded at 795 (offset 39 lines).
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
Hunk #1 succeeded at 285 (offset 6 lines).
Hunk #2 succeeded at 302 (offset 6 lines).
Hunk #3 succeeded at 311 (offset 6 lines).
Hunk #4 succeeded at 317 (offset -5 lines).
done
ar: warning: creating libr_wind.a
ar: warning: creating lib/libbochs.a
CC cdb.c
a - src/libbochs.o
  CC      arch/ARM/ARMModule.o
  CC      cs.o
  CC      MCInstrDesc.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMDisassembler.o
  CC      utils.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      SStream.o
CC buffer.c
  CC      arch/ARM/ARMInstPrinter.o
  CC      MCRegisterInfo.o
CC cdb_make.c
In file included from arch/ARM/ARMDisassembler.c:21:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
In file included from arch/ARM/ARMInstPrinter.c:26:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/AArch64/AArch64Module.o
CC ls.c
CC ht.c
  CC      arch/M68K/M68KInstPrinter.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/M68K/M68KModule.o
CC sdb.c
  CC      arch/Mips/MipsInstPrinter.o
arch/M68K/M68KDisassembler.c: In function 'm68k_read_safe_64':
arch/M68K/M68KDisassembler.c:206: warning: integer constant is too large for 'long' type
CC num.c
  CC      arch/Mips/MipsMapping.o
  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/Mips/MipsModule.o
CC base64.c
  CC      arch/PowerPC/PPCInstPrinter.o
CC match.c
CC json.c
  CC      arch/PowerPC/PPCModule.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
CC ns.c
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/SystemZ/SystemZMapping.o
CC lock.c
CC util.c
  CC      arch/SystemZ/SystemZModule.o
  CC      arch/SystemZ/SystemZMCTargetDesc.o
  CC      arch/X86/X86DisassemblerDecoder.o
  CC      arch/X86/X86Disassembler.o
CC disk.c
  CC      arch/X86/X86IntelInstPrinter.o
CC query.c
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreDisassembler.o
CC array.c
arch/X86/X86IntelInstPrinter.c: In function 'printImm':
arch/X86/X86IntelInstPrinter.c:370: warning: integer constant is too large for 'long' type
arch/X86/X86IntelInstPrinter.c:398: warning: integer constant is too large for 'long' type
arch/X86/X86IntelInstPrinter.c:418: warning: integer constant is too large for 'long' type
  CC      arch/XCore/XCoreMapping.o
arch/X86/X86ATTInstPrinter.c: In function 'printOperand':
arch/X86/X86ATTInstPrinter.c:661: warning: integer constant is too large for 'long' type
arch/X86/X86Mapping.c:20: warning: integer constant is too large for 'long' type
CC fmt.c
CC journal.c
  CC      arch/XCore/XCoreModule.o
  CC      MCInst.o
CC main.c
AR libsdb.a
ar: warning: creating libsdb.a
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

CC buffer.c
CC cdb.c
CC cdb_make.c
CC ls.c
CC num.c
CC ns.c
CC match.c
CC ht.c
CC sdb.c
CC base64.c
CC json.c
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a
AR libsdb.a
ar: warning: creating libsdb.a
gmake -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ht.c
CC PIC base64.c
CC PIC ls.c
CC PIC json.c
CC PIC sdb.c
CC PIC num.c
CC PIC ns.c
CC PIC lock.c
CC PIC match.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.10.2
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
CC disk.c
CC env.c
CC fs.c
CC misc.c
CC time.c
CC partition.c
CC mm.c
CC list.c
CC reiserfs.c
CC fshelp.c
CC ext2.c
CC fat.c
CC ntfs.c
CC ntfscomp.c
CC cpio.c
CC tar.c
CC xfs.c
CC ufs.c
CC ufs2.c
CC hfsplus.c
CC hfs.c
CC udf.c
CC iso9660.c
CC minix.c
CC jfs.c
CC fb.c
CC grubfs.c
CC sfs.c
CC msdos.c
CC gpt.c
CC apple.c
CC sun.c
CC bsdlabel.c
CC amiga.c
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
CC crc16.c
CC md5c.c
CC sha1.c
CC crc32.c
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
CC cons.c
CC pipe.c
CC reg.c
CC output.c
CC grep.c
CC apprentice.c
CC arena.c
CC bp.c
CC search.c
CC ascmagic.c
CC config.c
CC value.c
CC utf8.c
CC line.c
CC less.c
CC db.c
CC bytepat.c
CC fsmagic.c
CC table.c
CC cond.c
CC rgb.c
CC strings.c
CC hud.c
CC watch.c
CC callback.c
CC input.c
CC double.c
CC funcs.c
CC pal.c
CC profile.c
CC is_tar.c
LD libr_db.so
CC aes-find.c
CC editor.c
CC io.c
CC 2048.c
LD libr_config.so
CC magic.c
CC canvas.c
CC softmagic.c
CC traptrace.c
CC canvas_line.c
CC plugin.c
LD libr_reg.so
CC regexp.c
CC rsa-find.c
CC bp_arm.c
CC keyword.c
CC bp_mips.c
CC bp_bf.c
CC xrefs.c
CC bp_ppc.c
CC bp_x86.c
LD libr_magic.so
LD libr_cons.so
LD libr_search.so
LD libr_bp.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flags
CC syscall.c
CC flags.c
CC lang.c
CC sort.c
CC io_bochs.c
CC io_bfdbg.c
CC ioports.c
CC io_debug.c
CC io_default.c
CC spaces.c
CC io_gdb.c
CC io_gzip.c
CC io_http.c
LD libr_lang.so
CC io_ihex.c
LD libr_flags.so
CC crypto_aes.c
CC io_mach.c
CC crypto_aes_algo.c
CC io_procpid.c
CC crypto_aes_cbc.c
CC io_ptrace.c
CC io_malloc.c
CC io_mmap.c
CC io_qnx.c
CC io_r2web.c
CC io_r2pipe.c
CC crypto_base64.c
CC io_rap.c
SDB dos-x86-16
CC io_self.c
SDB ios-x86-32
SDB ios-arm-64
SDB linux-x86-32
CC crypto_base91.c
CC io_shm.c
SDB ios-arm-32
CC io_sparse.c
CC crypto_blowfish.c
p/io_self.c:114:3: warning: #warning not yet implemented for this platform
CC crypto_punycode.c
SDB linux-x86-64
SDB linux-arm-32
CC io_w32.c
CC io_w32dbg.c
CC io_windbg.c
CC crypto_rc2.c
CC crypto_rc4.c
SDB linux-mips-32
CC io_zip.c
SDB linux-sparc-32
SDB darwin-x86-64
SDB netbsd-x86-32
SDB darwin-x86-32
CC io.c
CC crypto_rc6.c
CC crypto_rol.c
CC crypto_ror.c
CC map.c
CC plugin.c
CC crypto_rot.c
CC crypto_xor.c
SDB freebsd-x86-32
SDB openbsd-x86-32
CC desc.c
CC section.c
SDB openbsd-x86-64
CC crypto.c
CC cache.c
SDB windows-x86-32
SDB windows-x86-64
LD libr_crypto.so
CC undo.c
CC buffer.c
CC vio.c
LD libr_syscall.so
LD libr_io.so
DIR fs
DIR anal
DIR bin
CC bin.c
CC dbginfo.c
CC demangle.c
CC bin_write.c
CC dwarf.c
CC filter.c
CC anal_6502.c
CC cp-demangle.c
CC bin_any.c
CC anal_8051.c
CC 8051.c
CC bin_art.c
CC bin_bf.c
CC anal_arc.c
  SDB dospart
CC bin_bios.c
CC anal_arm_cs.c
CC anal_arm_gnu.c
CC bin_bootimg.c
CC be_arm.c
CC anal_avr.c
CC bin_cgc.c
CC bin_coff.c
CC anal_bf.c
CC anal_cr16.c
CC cr16_disas.c
CC coff.c
CC anal_cris.c
CC anal_csr.c
/PATH/radare2/libr/..//libr/bin/p/bin_elf.c:581: warning: 'patch_relocs' defined but not used
CC bin_dex.c
CC anal_ebc.c
CC anal_dalvik.c
CC dex.c
CC ebc_disas.c
CC bin_dol.c
CC anal_gb.c
CC bin_dyldcache.c
CC bin_elf.c
CC anal_h8300.c
SDB linux-x86-32
CC h8300_disas.c
CC bin_dbginfo_elf.c
CC bin_write_elf.c
CC anal_i8080.c
CC anal_i4004.c
CC elf.c
/PATH/radare2/libr/..//libr/anal/p/anal_gb.c: In function 'gb_anal_load':
/PATH/radare2/libr/..//libr/anal/p/anal_gb.c:458: warning: integer constant is too large for 'long' type
CC elf_write.c
CC anal_java.c
CC bin_dbginfo_elf64.c
SDB linux-x86-64
CC bin_elf64.c
CC anal_m68k.c
CC elf64.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
SDB darwin-x86-64
CC bin_write_elf64.c
CC elf64_write.c
CC anal_m68k_cs.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf32_r_bin_elf_get_baddr':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1056: warning: integer constant is too large for 'long' type
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf32_r_bin_elf_get_boffset':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1076: warning: integer constant is too large for 'long' type
SDB windows-x86-32
In file included from /PATH/radare2/libr/..//libr/bin/p/../format/elf/elf64.c:4:
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
CC bin_fs.c
SDB windows-x86-64
CC anal_malbolge.c
CC fs_cpio.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf64_r_bin_elf_get_baddr':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1056: warning: integer constant is too large for 'long' type
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf64_r_bin_elf_get_boffset':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1076: warning: integer constant is too large for 'long' type
CC bin_java.c
CC bin_mach0.c
CC fs_ext2.c
CC mach0.c
CC mach0_classes.c
CC anal_mips_cs.c
CC bin_write_mach0.c
CC anal_mips_gnu.c
CC mach064_classes.c
CC fs_fat.c
CC fs_fb.c
CC anal_msp430.c
CC bin_mach064.c
CC bin_write_mach064.c
CC fs_hfs.c
CC fs_hfsplus.c
CC msp430_disas.c
CC mach064.c
CC anal_nios2.c
CC bin_mbn.c
CC fs_iso9660.c
CC fs_jfs.c
CC anal_null.c
CC bin_mz.c
CC mz.c
CC fs_minix.c
CC anal_pic18c.c
CC anal_ppc_cs.c
CC anal_ppc_gnu.c
CC fs_posix.c
CC fs_reiserfs.c
CC fs_ntfs.c
CC bin_nes.c
CC anal_riscv.c
CC bin_nin3ds.c
CC fs_sfs.c
CC fs_squash.c
CC bin_ninds.c
CC fs_tar.c
CC bin_ningb.c
CC anal_sh.c
CC anal_snes.c
CC bin_ningba.c
CC fs_udf.c
CC fs_ufs.c
CC anal_sparc_cs.c
CC bin_omf.c
CC fs_xfs.c
CC omf.c
CC anal_sparc_gnu.c
CC fs.c
CC anal_sysz.c
CC file.c
CC bin_p9.c
CC anal_tms320.c
CC anal_tms320_c55x_plus.c
CC bin_pe.c
CC p9bin.c
CC pe.c
CC tms320_dasm.c
CC bin_pe64.c
CC ins.c
CC pe64.c
CC c55plus.c
CC bin_pebble.c
CC bin_psxexe.c
LD libr_fs.so
CC bin_rar.c
CC c55plus_decode.c
CC decode_funcs.c
CC bin_smd.c
CC bin_sms.c
CC utils.c
CC hashtable.c
CC bin_spc700.c
CC hashvector.c
CC bin_te.c
CC te.c
CC bin_vsf.c
CC anal_v810.c
CC bin_xbe.c
CC v810_disas.c
CC anal_v850.c
/PATH/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97: warning: 'ins_hash' defined but not used
CC bin_zimg.c
CC v850_disas.c
CC anal_vax.c
CC zimg.c
CC bin_xtr_fatmach0.c
CC anal_ws.c
CC fatmach0.c
CC anal_x86_cs.c
CC anal_x86_udis.c
CC bin_xtr_dyldcache.c
CC dyldcache.c
CC demangler.c
CC anal_xcore_cs.c
CC esil_x86_udis.c
CC microsoft_demangle.c
CC anal_xtensa.c
CC objc.c
CC anal_z80.c
CC cxx.c
CC msvc.c
CC meta.c
CC swift.c
CC swift-sd.c
/PATH/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936: warning: 'z80_op' defined but not used
CC reflines.c
CC dlang.c
CC ref.c
CC pdb_downloader.c
CC omap.c
CC stream_pe.c
CC gdata.c
CC op.c
CC bb.c
CC var.c
CC cond.c
CC fcn.c
CC fpo.c
CC dbi.c
op.c: In function 'r_anal_op_fini':
op.c:37: warning: comparison is always false due to limited range of data type
op.c:40: warning: comparison is always false due to limited range of data type
CC tpi.c
CC stream_file.c
CC value.c
CC cc.c
CC diff.c
CC pdb.c
CC types.c
CC fcnstore.c
CC hint.c
CC data.c
CC xrefs.c
CC anal.c
CC sign.c
CC esil.c
LD libr_bin.so
CC switch.c
CC cycles.c
CC anal_ex.c
CC state.c
CC esil_stats.c
CC flirt.c
CC esil_trace.c
CC esil2reil.c
CC labels.c
CC pin.c
/PATH/radare2/libr/bin/p
SHLR=/PATH/radare2/libr/..//libr/../shlr
LD libr_anal.so
DIR parse
CC parse.c
CC code.c
CC parse_6502_pseudo.c
CC parse_arm_pseudo.c
CC parse_dalvik_pseudo.c
CC parse_m68k_pseudo.c
CC parse_att2intel.c
CC parse_mips_pseudo.c
CC parse_mreplace.c
CC mreplace.c
CC parse_ppc_pseudo.c
CC mmemory.c
CC parse_x86_pseudo.c
LD libr_parse.so
CC parse_z80_pseudo.c
gcc: /PATH/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done
DIR asm
DIR debug
CC asm_6502.c
CC asm_arc.c
CC asm_8051.c
CC arc-ext.c
CC arc-dis.c
CC arc-opc.c
CC arcompact-dis.c
CC signal.c
CC map.c
CC trace.c
CC asm_arm_as.c
CC asm_arm_cs.c
CC armass.c
CC armass64.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC debug.c
CC arg.c
CC plugin.c
CC aarch64-dis.c
CC snap.c
CC aarch64-dis-2.c
CC aarch64-opc.c
CC pid.c
CC reg.c
CC desc.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC aarch64-opc-2.c
CC esil.c
CC debug_bf.c
CC asm_bf.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC debug_bochs.c
CC cris-opc.c
CC debug_esil.c
CC debug_gdb.c
CC asm_dcpu16.c
CC asm_csr.c
CC asm_dalvik.c
CC debug_native.c
CC debug_qnx.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC debug_rap.c
CC asm_hppa_gnu.c
CC hppa-dis.c
CC debug_wind.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC lanai-opc.c
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
LD libr_debug.so
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
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
CC asm_tricore.c
CC asm_tms320.c
CC tricore-dis.c
CC tricore-opc.c
CC cpu-tricore.c
CC asm_v810.c
CC asm_v850.c
CC asm_vax.c
CC vax-dis.c
CC asm_x86_as.c
CC asm_ws.c
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
CC propeller_disas.c
CC asm_propeller.c
gcc: -lr_util: linker input file unused because linking not done
gcc: -lr_util: linker input file unused because linking not done
DIR egg
CC egg.c
CC lang.c
CC emit_x86.c
CC emit_arm.c
CC emit_x64.c
CC emit_trace.c
CC egg_exec.c
CC egg_xor.c
LD libr_egg.so
DIR core
CC core.c
CC cmd.c
CC config.c
CC file.c
CC io.c
CC visual.c
CC yank.c
file.c: In function 'r_core_bin_load':
file.c:548: warning: integer constant is too large for 'long' type
CC libs.c
file.c: At top level:
file.c:281: warning: 'setbpint' defined but not used
CC graph.c
CC hack.c
CC vasm.c
CC patch.c
CC bin.c
CC log.c
CC syscmd.c
CC project.c
CC rtr.c
CC gdiff.c
CC asm.c
CC cmd_api.c
CC anal.c
CC vmenus.c
CC disasm.c
CC plugin.c
CC help.c
CC task.c
CC panels.c
CC pseudo.c
CC vmarks.c
CC core_java.c
CC core_anal.c
LD libr_core.so
CC libr2.c
LD libr2.so
CC rax2.c
LD rax2
/PATH/radare2/libr/util/libr_util.so: undefined reference to `backtrace'
../rules.mk:73: recipe for target 'rax2' failed
gmake[2]: *** [rax2] Error 1
Makefile:14: recipe for target 'all' failed
gmake[1]: *** [all] Error 1
Makefile:47: recipe for target 'all' failed
gmake: *** [all] Error 2
$
```
Same result on AMD64 FreeBSD
```asm
$ date
Mon May 16 17:22:53 JST 2016
$ sysctl -a|grep amd
  :
hw.machine: amd64
hw.machine_arch: amd64
  :
$ uname
FreeBSD
cc (GCC) 4.2.1 20070831 patched [FreeBSD]
Copyright (C) 2007 Free Software Foundation, Inc.
   :
GNU Make 4.1
Built for amd64-portbld-freebsd9.3
Copyright (C) 1988-2014 Free Software Foundation, Inc.
  :
CMake suite maintained and supported by Kitware (kitware.com/cmake).
   :
$ git pull
Updating 695d9a0..50a46a9
Fast-forward
 CONTRIBUTING.md                       |  44 +++++-
 binr/r2pm/d/baleful                   |   4 +-
 binr/r2pm/d/www-t                     |  11 +-
 binr/r2pm/d/yara2                     |   1 +
 binr/r2pm/d/yara3                     |   1 +
 binr/r2pm/r2pm                        |  80 ++++++----
 binr/radare2/radare2.c                |  19 ++-
 binr/rahash2/rahash2.c                |  14 +-
 configure                             |  52 ++++---
 configure.acr                         |   4 +-
 doc/yara.md                           |  10 +-
 libr/anal/bb.c                        |   4 +-
 libr/anal/esil.c                      |  16 +-
 libr/anal/fcn.c                       |  69 ++++++---
 libr/anal/p/anal_dalvik.c             |  18 ++-
 libr/anal/p/anal_java.c               |  40 -----
 libr/anal/p/anal_x86_cs.c             | 117 +++++++++++----
 libr/asm/p/asm_x86_nz.c               | 657 +++++++++++++++++++++++++++++++++++++++++++------------------
 libr/bin/bin.c                        |   5 +-
 libr/bin/format/mach0/fatmach0.c      |  10 +-
 libr/bin/format/mach0/mach-o/loader.h | 905 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++------
 libr/bin/format/mach0/mach0.c         |  41 +++---
 libr/bin/mangling/swift-sd.c          |   4 +
 libr/bin/p/bin_xtr_fatmach0.c         |   3 +-
 libr/bp/bp.c                          |  57 ++++---
 libr/bp/io.c                          |  37 +++--
 libr/cons/cons.c                      |   6 +-
 libr/cons/less.c                      |  16 +-
 libr/core/anal.c                      | 102 +++++++++++--
 libr/core/cmd.c                       |   1 +
 libr/core/cmd_anal.c                  |  13 +-
 libr/core/cmd_debug.c                 |  43 +++---
 libr/core/cmd_hash.c                  |  88 +----------
 libr/core/cmd_print.c                 |  95 ++++++++++--
 libr/core/config.c                    |   9 +-
 libr/core/core.c                      |   4 +-
 libr/core/disasm.c                    |  21 ++-
 libr/core/graph.c                     |  82 ++++++-----
 libr/core/p/core_java.c               |   2 +-
 libr/core/rtr.c                       |  20 ++-
 libr/debug/debug.c                    | 260 ++++++++++++++++++++------------
 libr/debug/reg.c                      |   3 +-
 libr/hash/calc.c                      |  16 +-
 libr/hash/crc16.c                     |   7 +-
 libr/hash/crc32.c                     |  17 +--
 libr/hash/hash.c                      |   2 +-
 libr/include/r_anal.h                 |   6 +-
 libr/include/r_bp.h                   |   3 +
 libr/include/r_debug.h                |   4 +
 libr/include/r_endian.h               |  38 +++--
 libr/include/r_types.h                |  22 ++-
 libr/include/r_util.h                 |   2 +-
 libr/util/buf.c                       |  27 ++--
 libr/util/file.c                      |  10 +-
 libr/util/graph.c                     |  11 +-
 libr/util/mem.c                       |   4 +-
 libr/util/punycode.c                  |   4 +-
 libr/util/strbuf.c                    |   6 +-
 libr/util/sys.c                       |  29 ++--
 libr/util/w32-sys.c                   |   2 +-
 man/r2pm.1                            |   6 +-
 man/radare2.1                         |  16 +-
 shlr/java/class.c                     |   2 +-
 sys/yara3.sh                          |   6 -
 64 files changed, 1860 insertions(+), 1368 deletions(-)
 delete mode 100644 sys/yara3.sh

$ sys/install.sh
WARNING: Updating from remote repository
Already up-to-date.
sudo is /usr/local/bin/sudo

export USE_R2_CAPSTONE=

Removing Makefile.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing libcapstone.a
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
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
 - PREFIX = /usr
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
 - USEROSTYPE = bsd
 - LIBVERSION = 0.10.3-git
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
sys.c:171:2: warning: #warning TODO: r_sys_bt : unimplemented
sys.c: In function 'r_sys_crash_handler':
sys.c:265: warning: implicit declaration of function 'backtrace'
sys.c: In function 'r_sys_perror_str':
sys.c:555: warning: ignoring #pragma push_macro
sys.c:558: warning: ignoring #pragma pop_macro
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
run.c:220: warning: implicit declaration of function 'forkpty'
LD libr_socket.so
[capstone] Already in TIP, no need to update from git
HEAD is now at 4d36deb fix #673
CC libbochs.c

ar: warning: creating libr_wind.a
BUILD SUMARY
============
COMPILER gcc
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86ATTInstPrinter.c b/arch/X86/X86ATTInstPrinter.c
|index 7e19b4e..062eef8 100644
|--- a/arch/X86/X86ATTInstPrinter.c
|+++ b/arch/X86/X86ATTInstPrinter.c
--------------------------
Patching file arch/X86/X86ATTInstPrinter.c using Plan A...
Hunk #1 succeeded at 600 (offset 24 lines).
Hmm...  The next patch looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/arch/X86/X86IntelInstPrinter.c b/arch/X86/X86IntelInstPrinter.c
|index c455725..eb60586 100644
|--- a/arch/X86/X86IntelInstPrinter.c
|+++ b/arch/X86/X86IntelInstPrinter.c
--------------------------
Patching file arch/X86/X86IntelInstPrinter.c using Plan A...
Hunk #1 succeeded at 795 (offset 39 lines).
done
CC gcc
HOST_CC gcc
HOST_OS freebsd
Hmm...  Looks like a unified diff to me...
The text leading up to this was:
--------------------------
|diff --git a/Makefile b/Makefile
|index 034e254..09bd6c3 100644
|--- a/Makefile
|+++ b/Makefile
--------------------------
Patching file Makefile using Plan A...
Hunk #1 succeeded at 285 (offset 6 lines).
Hunk #2 succeeded at 302 (offset 6 lines).
Hunk #3 succeeded at 311 (offset 6 lines).
Hunk #4 succeeded at 317 (offset -5 lines).
done
BUILD_OS freebsd
============
ar: warning: creating lib/libbochs.a
a - src/libbochs.o

>>>>>>>>>>>>>>>>
NATIVE BUILD SDB
>>>>>>>>>>>>>>>>

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
  CC      arch/AArch64/AArch64Disassembler.o
In file included from arch/ARM/ARMDisassembler.c:21:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
In file included from arch/ARM/ARMInstPrinter.c:26:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
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
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/PowerPC/PPCModule.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcInstPrinter.o
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
  CC      arch/XCore/XCoreDisassembler.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreModule.o
  CC      MCInst.o
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
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a
CC lock.c
CC util.c
CC query.c
CC array.c
CC fmt.c
CC main.c
CC disk.c
CC journal.c
AR libsdb.a
ar: warning: creating libsdb.a
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC ht.c
CC sdb.c
CC base64.c
CC match.c
CC json.c
CC ns.c
CC lock.c
CC num.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
AR libsdb.a
ar: warning: creating libsdb.a
gmake -C sdb
CC main.c
BIN sdb
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC json.c
CC PIC ns.c
CC PIC lock.c
CC PIC cdb.c
CC PIC match.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.10.2
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
CC arena.c
CC cons.c
CC apprentice.c
CC pipe.c
CC value.c
CC cond.c
CC ascmagic.c
CC bp.c
CC double.c
CC profile.c
CC search.c
CC output.c
CC config.c
CC fsmagic.c
CC grep.c
CC watch.c
CC db.c
CC bytepat.c
CC funcs.c
CC io.c
LD libr_reg.so
CC is_tar.c
CC less.c
CC callback.c
CC strings.c
CC aes-find.c
CC magic.c
CC plugin.c
CC utf8.c
CC softmagic.c
CC table.c
LD libr_config.so
CC rsa-find.c
CC traptrace.c
CC line.c
CC regexp.c
CC hud.c
CC xrefs.c
CC bp_arm.c
CC rgb.c
LD libr_db.so
CC bp_bf.c
CC keyword.c
CC bp_mips.c
CC bp_ppc.c
LD libr_magic.so
CC input.c
CC pal.c
CC bp_x86.c
CC editor.c
CC 2048.c
LD libr_search.so
CC canvas.c
CC canvas_line.c
LD libr_bp.so
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
LD libr_lang.so
CC io_bfdbg.c
CC io_bochs.c
CC io_debug.c
LD libr_flags.so
CC io_default.c
CC io_gdb.c
CC crypto_aes.c
CC crypto_aes_algo.c
CC io_gzip.c
CC crypto_aes_cbc.c
CC io_http.c
CC crypto_base64.c
CC io_ihex.c
CC io_mach.c
CC crypto_base91.c
CC io_malloc.c
CC io_mmap.c
CC crypto_blowfish.c
CC crypto_punycode.c
CC io_procpid.c
CC crypto_rc2.c
CC io_ptrace.c
CC crypto_rc4.c
SDB dos-x86-16
SDB ios-arm-32
SDB ios-x86-32
CC io_qnx.c
CC io_r2pipe.c
CC io_r2web.c
CC crypto_rc6.c
CC io_rap.c
CC crypto_rol.c
SDB ios-arm-64
CC io_self.c
CC crypto_ror.c
CC io_shm.c
CC crypto_rot.c
CC io_sparse.c
p/io_self.c:114:3: warning: #warning not yet implemented for this platform
SDB linux-x86-32
SDB linux-x86-64
SDB linux-arm-32
SDB linux-mips-32
CC crypto_xor.c
CC crypto.c
CC io_w32.c
SDB linux-sparc-32
CC io_w32dbg.c
SDB darwin-x86-32
SDB darwin-x86-64
SDB netbsd-x86-32
CC io_windbg.c
LD libr_crypto.so
SDB freebsd-x86-32
SDB openbsd-x86-32
CC io_zip.c
SDB openbsd-x86-64
CC io.c
CC plugin.c
SDB windows-x86-32
SDB windows-x86-64
CC map.c
CC section.c
CC desc.c
CC cache.c
LD libr_syscall.so
CC undo.c
CC buffer.c
CC vio.c
LD libr_io.so
DIR fs
DIR anal
DIR bin
  SDB dospart
CC bin.c
CC dbginfo.c
CC bin_write.c
CC anal_6502.c
CC demangle.c
CC anal_8051.c
CC dwarf.c
CC 8051.c
CC filter.c
CC anal_arc.c
CC anal_arm_cs.c
CC cp-demangle.c
CC bin_any.c
CC anal_arm_gnu.c
CC bin_art.c
CC be_arm.c
CC bin_bf.c
CC anal_avr.c
CC bin_bios.c
CC anal_bf.c
CC bin_bootimg.c
CC anal_cr16.c
CC bin_cgc.c
CC cr16_disas.c
CC bin_coff.c
CC anal_cris.c
CC coff.c
/PATH/radare2/libr/..//libr/bin/p/bin_elf.c:581: warning: 'patch_relocs' defined but not used
CC anal_csr.c
CC bin_dex.c
CC anal_dalvik.c
CC dex.c
CC anal_ebc.c
CC bin_dol.c
CC bin_dyldcache.c
CC ebc_disas.c
CC bin_elf.c
CC bin_dbginfo_elf.c
CC anal_gb.c
CC bin_write_elf.c
CC elf.c
CC anal_h8300.c
CC h8300_disas.c
SDB linux-x86-32
CC anal_i4004.c
CC elf_write.c
CC anal_i8080.c
CC bin_elf64.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
CC bin_dbginfo_elf64.c
CC anal_java.c
CC fs_cpio.c
CC anal_m68k.c
CC bin_write_elf64.c
CC elf64.c
CC anal_m68k_cs.c
SDB linux-x86-64
CC elf64_write.c
SDB darwin-x86-64
In file included from /PATH/radare2/libr/..//libr/bin/p/../format/elf/elf64.c:4:
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
CC anal_malbolge.c
CC bin_fs.c
CC bin_java.c
CC fs_ext2.c
CC bin_mach0.c
CC anal_mips_cs.c
CC anal_mips_gnu.c
SDB windows-x86-32
SDB windows-x86-64
CC mach0.c
CC anal_msp430.c
CC mach0_classes.c
CC msp430_disas.c
CC fs_fat.c
CC mach064_classes.c
CC bin_write_mach0.c
CC fs_fb.c
CC anal_nios2.c
CC anal_null.c
CC bin_mach064.c
CC fs_hfs.c
CC anal_pic18c.c
CC fs_hfsplus.c
CC anal_ppc_cs.c
CC bin_write_mach064.c
CC mach064.c
CC fs_iso9660.c
CC bin_mbn.c
CC anal_ppc_gnu.c
CC anal_riscv.c
CC fs_jfs.c
CC anal_sh.c
CC anal_snes.c
CC fs_minix.c
CC bin_mz.c
CC mz.c
CC fs_ntfs.c
CC anal_sparc_cs.c
CC bin_nes.c
CC anal_sparc_gnu.c
CC bin_nin3ds.c
CC fs_posix.c
CC anal_sysz.c
CC fs_reiserfs.c
CC bin_ninds.c
CC anal_tms320.c
CC fs_sfs.c
CC bin_ningb.c
CC anal_tms320_c55x_plus.c
CC tms320_dasm.c
CC bin_ningba.c
CC ins.c
CC fs_squash.c
CC fs_tar.c
CC c55plus.c
CC bin_omf.c
CC c55plus_decode.c
CC omf.c
CC fs_udf.c
CC bin_p9.c
CC decode_funcs.c
CC fs_ufs.c
CC utils.c
CC p9bin.c
CC hashtable.c
CC fs_xfs.c
CC bin_pe.c
CC hashvector.c
CC fs.c
CC pe.c
CC anal_v810.c
CC bin_pe64.c
CC v810_disas.c
CC file.c
CC pe64.c
/PATH/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97: warning: 'ins_hash' defined but not used
CC anal_v850.c
CC v850_disas.c
CC bin_pebble.c
CC anal_vax.c
LD libr_fs.so
CC anal_ws.c
CC bin_psxexe.c
CC anal_x86_cs.c
CC bin_rar.c
CC bin_smd.c
CC anal_x86_udis.c
CC bin_sms.c
CC bin_spc700.c
CC esil_x86_udis.c
CC bin_te.c
CC te.c
CC anal_xcore_cs.c
CC anal_xtensa.c
CC bin_vsf.c
CC anal_z80.c
CC bin_xbe.c
CC meta.c
/PATH/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936: warning: 'z80_op' defined but not used
CC bin_zimg.c
CC reflines.c
CC zimg.c
CC ref.c
CC bin_xtr_fatmach0.c
CC op.c
CC fatmach0.c
CC bin_xtr_dyldcache.c
CC fcn.c
CC bb.c
CC dyldcache.c
CC var.c
CC demangler.c
CC cond.c
CC microsoft_demangle.c
CC value.c
CC objc.c
CC cc.c
CC cxx.c
CC msvc.c
CC diff.c
CC swift.c
CC types.c
CC swift-sd.c
CC fcnstore.c
CC hint.c
CC dlang.c
CC pdb_downloader.c
CC anal.c
CC omap.c
CC data.c
CC stream_pe.c
CC xrefs.c
CC esil.c
CC gdata.c
CC sign.c
CC fpo.c
CC anal_ex.c
CC switch.c
CC dbi.c
CC state.c
CC tpi.c
CC cycles.c
CC stream_file.c
CC pdb.c
CC esil_stats.c
CC esil_trace.c
CC flirt.c
CC labels.c
CC esil2reil.c
LD libr_bin.so
CC pin.c
LD libr_anal.so
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
gcc: /PATH/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done
DIR asm
DIR debug
CC signal.c
CC map.c
CC trace.c
CC arg.c
CC debug.c
CC plugin.c
CC snap.c
CC pid.c
CC reg.c
CC desc.c
CC asm_6502.c
CC esil.c
CC asm_8051.c
CC debug_bf.c
CC asm_arc.c
CC arc-dis.c
CC debug_bochs.c
CC arc-ext.c
CC debug_esil.c
CC debug_gdb.c
CC arc-opc.c
CC arcompact-dis.c
CC debug_native.c
CC asm_arm_as.c
CC debug_qnx.c
CC debug_rap.c
CC asm_arm_cs.c
CC debug_wind.c
CC armass.c
CC armass64.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC aarch64-dis.c
LD libr_debug.so
CC aarch64-dis-2.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC asm_bf.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC cris-opc.c
CC asm_csr.c
CC asm_dalvik.c
CC asm_dcpu16.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hppa_gnu.c
CC hppa-dis.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC lanai-opc.c
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
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
gcc: -lr_util: linker input file unused because linking not done
gcc: -lr_util: linker input file unused because linking not done
DIR egg
CC egg.c
CC lang.c
CC emit_x86.c
CC emit_arm.c
CC emit_x64.c
CC emit_trace.c
CC egg_exec.c
CC egg_xor.c
LD libr_egg.so
DIR core
CC core.c
CC cmd.c
CC file.c
CC config.c
CC visual.c
CC io.c
file.c:281: warning: 'setbpint' defined but not used
CC yank.c
CC libs.c
CC graph.c
CC hack.c
CC vasm.c
CC patch.c
CC bin.c
CC log.c
CC syscmd.c
CC rtr.c
CC cmd_api.c
CC anal.c
CC project.c
CC gdiff.c
CC asm.c
CC vmenus.c
CC disasm.c
CC plugin.c
CC help.c
CC task.c
CC panels.c
CC pseudo.c
CC vmarks.c
CC core_anal.c
CC core_java.c
LD libr_core.so
CC libr2.c
LD libr2.so
CC rax2.c
LD rax2
/PATH/radare2/libr/util/libr_util.so: undefined reference to `backtrace'
../rules.mk:73: recipe for target 'rax2' failed
gmake[2]: *** [rax2] Error 1
Makefile:14: recipe for target 'all' failed
gmake[1]: *** [all] Error 1
Makefile:47: recipe for target 'all' failed
gmake: *** [all] Error 2
$
```

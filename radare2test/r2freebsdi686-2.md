r2 build log at FreeBSD on CPU: Genuine Intel(R) CPUXxxx (xxxMHz 686-class CPU)
```asm
$ date && uname
Mon May 16 18:57:14 JST 2016
FreeBSD

(cleaning/purging/etc)

$ git pull
remote: Counting objects: 5, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 5 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (5/5), done.
From https://github.com/radare/radare2
   50a46a9..49912c0  master     -> origin/master
Updating 50a46a9..49912c0
Fast-forward
 libr/util/sys.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

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
CC deflate.c
CC inffast.c
CC infback.c
CC inftrees.c
CC inflate.c
CC trees.c
CC zutil.c
CC compress.c
CC uncompr.c
CC gzclose.c
CC gzlib.c
CC gzread.c
CC gzwrite.c
ar: warning: creating libr_z.a
LIB libr_z.so
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
CC zip_error_clear.c
CC zip_extra_field.c
CC zip_extra_field_api.c
CC zip_fclose.c
CC zip_fdopen.c
CC zip_file_add.c
CC zip_file_error_clear.c
CC zip_file_get_comment.c
CC zip_file_error_get.c
CC zip_file_get_offset.c
CC zip_file_rename.c
CC zip_file_replace.c
CC zip_file_set_comment.c
CC zip_file_strerror.c
CC zip_filerange_crc.c
CC zip_fopen.c
CC zip_fopen_encrypted.c
CC zip_fopen_index_encrypted.c
CC zip_fopen_index.c
CC zip_get_archive_comment.c
CC zip_fread.c
CC zip_get_archive_flag.c
CC zip_get_compression_implementation.c
CC zip_get_encryption_implementation.c
CC zip_get_file_comment.c
CC zip_get_num_entries.c
CC zip_get_num_files.c
CC zip_get_name.c
CC zip_memdup.c
CC zip_name_locate.c
CC zip_open.c
CC zip_new.c
CC zip_rename.c
CC zip_replace.c
CC zip_set_archive_comment.c
CC zip_set_archive_flag.c
CC zip_set_default_password.c
CC zip_set_file_comment.c
CC zip_set_file_compression.c
CC zip_set_name.c
CC zip_source_close.c
CC zip_source_crc.c
CC zip_source_deflate.c
CC zip_source_buffer.c
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
CC zip_stat.c
CC zip_source_zip_new.c
CC zip_strerror.c
CC zip_stat_index.c
CC zip_stat_init.c
CC zip_string.c
CC zip_unchange.c
CC zip_unchange_all.c
CC zip_unchange_data.c
CC zip_utf-8.c
CC zip_unchange_archive.c
ar: warning: creating libr_zip.a
LIB libr_zip.so
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
CC base64.c
sys.c:171:2: warning: #warning TODO: r_sys_bt : unimplemented
sys.c: In function 'r_sys_crash_handler':
sys.c:259: warning: unused variable 'array'
CC w32-sys.c
sys.c: In function 'r_sys_perror_str':
sys.c:557: warning: ignoring #pragma push_macro
sys.c:560: warning: ignoring #pragma pop_macro
CC base85.c
CC base91.c
CC list.c
CC ht.c
CC ht64.c
CC mixed.c
CC btree.c
CC chmod.c
CC graph.c
CC regcomp.c
CC regerror.c
CC flist.c
CC uleb128.c
CC sandbox.c
CC calc.c
CC regexec.c
CC thread.c
CC strpool.c
CC thread_msg.c
CC thread_lock.c
CC strht.c
CC bitmap.c
CC p_format.c
CC p_date.c
CC print.c
CC p_seven.c
CC randomart.c
CC slist.c
CC log.c
CC debruijn.c
CC zip.c
CC utf8.c
CC strbuf.c
CC lib.c
CC name.c
CC spaces.c
CC bdiff.c
CC diff.c
CC queue.c
CC stack.c
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
CC http.c
CC proc.c
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
HEAD is now at 4d36deb fix #673
============
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
COMPILER gcc
Patching file arch/X86/X86IntelInstPrinter.c using Plan A...
Hunk #1 succeeded at 795 (offset 39 lines).
done
CC gcc
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
HOST_CC gcc
HOST_OS freebsd
BUILD_OS freebsd
============

>>>>>>>>>>>>>>>>
NATIVE BUILD SDB
>>>>>>>>>>>>>>>>

wind.c: In function 'wind_va_to_pa':
wind.c:414: warning: integer constant is too large for 'long' type
CC cdb.c
CC cdb_make.c
CC buffer.c
CC ls.c
CC sdb.c
CC match.c
CC base64.c
CC num.c
CC ht.c
ar: warning: creating lib/libbochs.a
a - src/libbochs.o
ar: warning: creating libr_wind.a
CC ns.c
CC lock.c
  CC      cs.o
CC disk.c
CC array.c
CC fmt.c
CC json.c
CC util.c
CC query.c
CC journal.c
  CC      utils.o
CC main.c
  CC      SStream.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      MCInstrDesc.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
AR libsdb.a
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64InstPrinter.o
ar: warning: creating libsdb.aIn file included from arch/ARM/ARMDisassembler.c:21:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
In file included from arch/ARM/ARMInstPrinter.c:26:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function

  CC      arch/AArch64/AArch64Mapping.o
BIN sdb
  CC      arch/AArch64/AArch64Module.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KInstPrinter.o
arch/M68K/M68KDisassembler.c: In function 'm68k_read_safe_64':
arch/M68K/M68KDisassembler.c:206: warning: integer constant is too large for 'long' type
  CC      arch/M68K/M68KModule.o
  CC      arch/Mips/MipsMapping.o
  CC      arch/Mips/MipsModule.o

  CC      arch/Mips/MipsInstPrinter.o
  CC      arch/Mips/MipsDisassembler.o
>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/PowerPC/PPCModule.o
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/PowerPC/PPCMapping.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcInstPrinter.o
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZModule.o
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZMCTargetDesc.o
  CC      arch/X86/X86Disassembler.o
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86DisassemblerDecoder.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
arch/X86/X86IntelInstPrinter.c: In function 'printImm':
arch/X86/X86IntelInstPrinter.c:370: warning: integer constant is too large for 'long' type
arch/X86/X86IntelInstPrinter.c:398: warning: integer constant is too large for 'long' type
arch/X86/X86IntelInstPrinter.c:418: warning: integer constant is too large for 'long' type
arch/X86/X86Mapping.c:20: warning: integer constant is too large for 'long' type
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreDisassembler.o
arch/X86/X86ATTInstPrinter.c: In function 'printOperand':
arch/X86/X86ATTInstPrinter.c:661: warning: integer constant is too large for 'long' type
CC buffer.c
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreModule.o
CC cdb.c
CC ls.c
  CC      MCInst.o
  CC      arch/XCore/XCoreMapping.o
CC cdb_make.c
CC ht.c
CC sdb.c
CC match.c
CC ns.c
CC num.c
CC lock.c
CC base64.c
CC json.c
CC util.c
CC disk.c
CC array.c
CC query.c
CC journal.c
CC fmt.c
AR libsdb.a
ar: warning: creating libsdb.a
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a
gmake -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC ls.c
CC PIC ht.c
CC PIC num.c
CC PIC sdb.c
CC PIC base64.c
CC PIC json.c
CC PIC cdb_make.c
CC PIC ns.c
CC PIC match.c
CC PIC lock.c
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
CC ops.c
CC class.c
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
CC time.c
CC misc.c
CC list.c
CC mm.c
CC fshelp.c
CC reiserfs.c
CC partition.c
CC ext2.c
CC fat.c
CC ntfs.c
CC cpio.c
CC ntfscomp.c
CC tar.c
CC xfs.c
CC ufs.c
CC hfs.c
CC hfsplus.c
CC udf.c
CC ufs2.c
CC iso9660.c
CC jfs.c
CC fb.c
CC minix.c
CC sfs.c
CC msdos.c
CC grubfs.c
CC gpt.c
CC apple.c
CC sun.c
CC amiga.c
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
CC crc16.c
CC md5c.c
CC sha1.c
CC crc32.c
CC hash.c
CC md4.c
CC hamdist.c
CC sha2.c
CC entropy.c
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
DIR config
DIR search
CC cons.c
CC pipe.c
CC reg.c
CC arena.c
CC grep.c
CC value.c
CC output.c
CC apprentice.c
CC search.c
CC bp.c
CC config.c
CC cond.c
CC less.c
CC db.c
CC double.c
CC line.c
CC utf8.c
CC bytepat.c
CC profile.c
CC callback.c
CC watch.c
CC strings.c
CC ascmagic.c
CC io.c
CC fsmagic.c
CC table.c
CC hud.c
CC rgb.c
LD libr_config.so
CC plugin.c
CC aes-find.c
CC rsa-find.c
LD libr_reg.so
LD libr_db.so
CC traptrace.c
CC input.c
CC funcs.c
CC is_tar.c
CC pal.c
CC bp_arm.c
CC regexp.c
CC bp_bf.c
CC editor.c
CC magic.c
CC xrefs.c
CC bp_mips.c
CC keyword.c
CC 2048.c
CC canvas.c
CC softmagic.c
CC canvas_line.c
CC bp_ppc.c
CC bp_x86.c
LD libr_magic.so
LD libr_search.so
LD libr_bp.so
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flags
CC io_bfdbg.c
CC io_bochs.c
CC io_debug.c
CC io_default.c
CC io_gdb.c
CC io_gzip.c
CC io_http.c
CC io_ihex.c
CC lang.c
CC flags.c
LD libr_lang.so
CC io_mach.c
CC syscall.c
CC io_malloc.c
CC ioports.c
CC io_procpid.c
CC io_ptrace.c
CC io_qnx.c
CC crypto_aes.c
CC sort.c
CC io_mmap.c
CC crypto_aes_algo.c
CC io_r2pipe.c
CC crypto_aes_cbc.c
CC io_r2web.c
CC io_rap.c
CC spaces.c
CC crypto_base64.c
CC io_self.c
CC io_shm.c
CC crypto_base91.c
CC io_sparse.c
CC io_w32.c
CC crypto_blowfish.c
p/io_self.c:114:3: warning: #warning not yet implemented for this platform
CC crypto_punycode.c
SDB dos-x86-16
LD libr_flags.so
CC io_w32dbg.c
CC io_windbg.c
CC io_zip.c
CC crypto_rc2.c
CC io.c
CC crypto_rc4.c
SDB ios-x86-32
CC crypto_rc6.c
CC crypto_rol.c
SDB ios-arm-32
CC crypto_ror.c
CC plugin.c
SDB ios-arm-64
CC crypto_rot.c
CC section.c
SDB linux-x86-32
CC crypto_xor.c
CC crypto.c
SDB linux-x86-64
CC map.c
LD libr_crypto.so
SDB linux-mips-32
SDB linux-arm-32
SDB linux-sparc-32
SDB darwin-x86-64
CC desc.c
SDB darwin-x86-32
CC cache.c
SDB freebsd-x86-32
SDB openbsd-x86-32
SDB netbsd-x86-32
SDB openbsd-x86-64
SDB windows-x86-32
SDB windows-x86-64
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
CC bin_write.c
CC demangle.c
CC anal_6502.c
CC dwarf.c
CC anal_8051.c
CC 8051.c
CC anal_arc.c
CC anal_arm_cs.c
CC filter.c
  SDB dospart
CC cp-demangle.c
CC anal_arm_gnu.c
CC bin_any.c
CC bin_art.c
CC bin_bf.c
CC be_arm.c
CC anal_avr.c
CC anal_bf.c
CC bin_bios.c
CC anal_cr16.c
CC cr16_disas.c
CC bin_bootimg.c
CC bin_cgc.c
CC bin_coff.c
CC coff.c
CC anal_cris.c
CC bin_dex.c
CC anal_csr.c
CC anal_dalvik.c
CC dex.c
/PATH/radare2/libr/..//libr/bin/p/bin_elf.c:581: warning: 'patch_relocs' defined but not used
CC anal_ebc.c
CC bin_dol.c
CC bin_dyldcache.c
CC bin_elf.c
CC ebc_disas.c
CC bin_dbginfo_elf.c
SDB linux-x86-32
CC anal_gb.c
CC bin_write_elf.c
CC elf.c
CC anal_h8300.c
CC elf_write.c
CC bin_elf64.c
CC h8300_disas.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
CC anal_i4004.c
CC bin_dbginfo_elf64.c
SDB linux-x86-64
/PATH/radare2/libr/..//libr/anal/p/anal_gb.c: In function 'gb_anal_load':
/PATH/radare2/libr/..//libr/anal/p/anal_gb.c:458: warning: integer constant is too large for 'long' type
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf32_r_bin_elf_get_baddr':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1056: warning: integer constant is too large for 'long' type
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf32_r_bin_elf_get_boffset':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1076: warning: integer constant is too large for 'long' type
CC bin_write_elf64.c
SDB darwin-x86-64
CC elf64.c
CC anal_i8080.c
CC elf64_write.c
CC bin_fs.c
CC fs_cpio.c
CC anal_m68k.c
CC bin_java.c
CC anal_java.c
CC anal_m68k_cs.c
CC bin_mach0.c
In file included from /PATH/radare2/libr/..//libr/bin/p/../format/elf/elf64.c:4:
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'init_strtab':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:215: warning: comparison is always true due to limited range of data type
SDB windows-x86-32
CC mach0.c
CC mach0_classes.c
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf64_r_bin_elf_get_baddr':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1056: warning: integer constant is too large for 'long' type
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'Elf64_r_bin_elf_get_boffset':
/PATH/radare2/libr/..//libr/bin/p/../format/elf/elf.c:1076: warning: integer constant is too large for 'long' type
CC mach064_classes.c
CC anal_malbolge.c
CC bin_write_mach0.c
CC fs_ext2.c
CC anal_mips_cs.c
CC bin_mach064.c
CC anal_mips_gnu.c
CC bin_write_mach064.c
SDB windows-x86-64
CC anal_msp430.c
CC mach064.c
CC bin_mbn.c
CC fs_fat.c
CC bin_mz.c
CC mz.c
CC msp430_disas.c
CC anal_nios2.c
CC bin_nes.c
CC anal_null.c
CC bin_nin3ds.c
CC anal_pic18c.c
CC anal_ppc_cs.c
CC bin_ninds.c
CC fs_fb.c
CC bin_ningb.c
CC anal_ppc_gnu.c
CC bin_ningba.c
CC fs_hfs.c
CC anal_sh.c
CC anal_snes.c
CC bin_omf.c
CC anal_riscv.c
CC omf.c
CC bin_p9.c
CC fs_hfsplus.c
CC p9bin.c
CC anal_sparc_cs.c
CC bin_pe.c
CC pe.c
CC fs_iso9660.c
CC anal_sparc_gnu.c
CC anal_sysz.c
CC pe64.c
CC bin_pebble.c
CC bin_psxexe.c
CC bin_pe64.c
CC anal_tms320.c
CC fs_jfs.c
CC bin_rar.c
CC anal_tms320_c55x_plus.c
CC fs_minix.c
CC tms320_dasm.c
CC bin_smd.c
CC ins.c
CC fs_ntfs.c
CC bin_spc700.c
CC c55plus.c
CC bin_sms.c
CC fs_reiserfs.c
CC c55plus_decode.c
CC fs_posix.c
CC bin_te.c
CC te.c
CC decode_funcs.c
CC bin_vsf.c
CC fs_sfs.c
CC utils.c
CC fs_squash.c
CC bin_xbe.c
CC hashvector.c
CC hashtable.c
CC anal_v810.c
CC bin_zimg.c
CC fs_tar.c
CC zimg.c
/PATH/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97: warning: 'ins_hash' defined but not used
CC v810_disas.c
CC fs_udf.c
CC bin_xtr_fatmach0.c
CC anal_v850.c
CC fs_ufs.c
CC fatmach0.c
CC fs_xfs.c
CC bin_xtr_dyldcache.c
CC v850_disas.c
CC anal_vax.c
CC dyldcache.c
CC demangler.c
CC microsoft_demangle.c
CC objc.c
CC anal_ws.c
CC anal_x86_cs.c
CC fs.c
CC cxx.c
CC file.c
CC anal_x86_udis.c
CC msvc.c
CC swift.c
CC swift-sd.c
CC esil_x86_udis.c
CC dlang.c
CC anal_xcore_cs.c
CC anal_xtensa.c
CC anal_z80.c
CC pdb_downloader.c
CC stream_pe.c
CC omap.c
CC gdata.c
CC meta.c
CC reflines.c
LD libr_fs.so
CC fpo.c
/PATH/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936: warning: 'z80_op' defined but not used
CC dbi.c
CC ref.c
CC tpi.c
CC stream_file.c
CC pdb.c
CC op.c
CC fcn.c
CC bb.c
CC var.c
op.c: In function 'r_anal_op_fini':
op.c:37: warning: comparison is always false due to limited range of data type
op.c:40: warning: comparison is always false due to limited range of data type
CC cond.c
LD libr_bin.so
CC cc.c
CC value.c
CC diff.c
CC types.c
CC fcnstore.c
CC anal.c
CC data.c
CC xrefs.c
CC hint.c
CC sign.c
CC esil.c
CC anal_ex.c
CC switch.c
CC state.c
CC cycles.c
CC esil_stats.c
CC esil_trace.c
CC flirt.c
CC esil2reil.c
CC pin.c
CC labels.c
/PATH/radare2/libr/bin/p
SHLR=/PATH/radare2/libr/..//libr/../shlr
LD libr_anal.so
DIR parse
CC parse.c
CC parse_6502_pseudo.c
CC code.c
CC parse_arm_pseudo.c
CC parse_dalvik_pseudo.c
CC parse_att2intel.c
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
CC asm_6502.c
CC asm_8051.c
CC asm_arc.c
CC arc-dis.c
CC arc-opc.c
CC arcompact-dis.c
CC arc-ext.c
CC asm_arm_as.c
CC signal.c
CC map.c
CC trace.c
CC asm_arm_cs.c
CC armass.c
CC asm_arm_gnu.c
CC arm-dis.c
CC armass64.c
CC floatformat.c
CC arg.c
CC debug.c
CC aarch64-dis.c
CC plugin.c
CC aarch64-dis-2.c
CC snap.c
CC pid.c
CC aarch64-opc.c
CC reg.c
CC aarch64-opc-2.c
CC desc.c
CC asm_arm_winedbg.c
CC esil.c
CC asm_avr.c
CC debug_bf.c
CC asm_bf.c
CC debug_esil.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC debug_bochs.c
CC debug_gdb.c
CC cris-dis.c
CC cris-opc.c
CC asm_csr.c
CC debug_native.c
CC asm_dalvik.c
CC debug_qnx.c
CC asm_dcpu16.c
CC asm_ebc.c
CC debug_rap.c
CC asm_gb.c
CC debug_wind.c
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
CC asm_m68k.c
CC asm_lm32.c
LD libr_debug.so
CC asm_malbolge.c
CC asm_mcs96.c
CC m68k_disasm.c
CC asm_m68k_cs.c
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
CC asm_ppc_cs.c
CC asm_pic18c.c
CC ppc-dis.c
CC asm_ppc_gnu.c
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
CC cpu-tricore.c
CC asm_v810.c
CC asm_v850.c
CC tricore-dis.c
CC tricore-opc.c
CC asm_vax.c
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC vax-dis.c
CC asm_x86_nz.c
CC asm_x86_olly.c
CC disasm.c
CC asmserv.c
CC assembl.c
CC asm_x86_tab.c
CC asm_x86_udis.c
CC asm_xtensa.c
CC asm_xcore_cs.c
CC xtensa-isa.c
CC xtensa-dis.c
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
CC egg_exec.c
CC emit_trace.c
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
CC libs.c
file.c: In function 'r_core_bin_load':
file.c:548: warning: integer constant is too large for 'long' type
CC graph.c
file.c: At top level:
file.c:281: warning: 'setbpint' defined but not used
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
CC disasm.c
CC vmenus.c
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
CC rasm2.c
LD rasm2
CC rabin2.c
LD rabin2
CC rahash2.c
LD rahash2
CC radiff2.c
LD radiff2
CC radare2.c
LD radare2
CC rafind2.c
LD rafind2
CC rarun2.c
LD rarun2
CC ragg2.c
LD ragg2
CC r2agent.c
LD r2agent
mkdir -p "/usr/share/man/man1"
mkdir -p "/usr/share/man/man7"
cd man && for FILE in *.1 ; do \
   ln -fs "/PATH/radare2/man/$FILE" "/usr/share/man/man1/$FILE" ; done
cd "/usr/share/man/man1" && ln -fs radare2.1 r2.1
for FILE in *.7 ; do \
   ln -fs "/PATH/radare2/man/$FILE" "/usr/share/man/man7/$FILE" ; done
/usr/bin/install -d "/usr/share/doc/radare2"
cd doc ; for FILE in * ; do \
   ln -fs "/PATH/radare2/doc/$FILE" "/usr/share/doc/radare2" ; done
cd pkgcfg ; for FILE in *.pc ; do \
   ln -fs "${PWD}/$FILE" "/usr/lib/pkgconfig/$FILE" ; done
rm -rf "/usr/share/radare2/0.10.3-git/www"
rm -rf "/usr/lib/radare2/0.10.3-git/www" # old dir
mkdir -p "/usr/share/radare2/0.10.3-git/www"
cd "/usr/share/radare2/0.10.3-git/www" ; \
   for FILE in "/PATH/radare2/shlr/www/"* ; do \
        ln -fs "$FILE" "/usr/share/radare2/0.10.3-git/www" ; done
cd libr && gmake install-symlink
gmake[1]: Entering directory '/PATH/radare2/libr'
mkdir -p "/usr/bin" \
   "/usr/include" \
   "/usr/lib/pkgconfig" \
   "/usr/lib/radare2/0.10.3-git"
rm -rf "/usr/include/libr" && ln -fs "/PATH/radare2/libr/include" "/usr/include/libr"
cd ../pkgcfg && for FILE in *.pc ; do \
   if [ -e "/PATH/radare2/libr/../pkgcfg/${FILE}" ] ; then \
        ln -fs "/PATH/radare2/libr/../pkgcfg/${FILE}" \
                "/usr/lib/pkgconfig/${FILE}" ; \
   fi ; \
done
cd "/usr/lib/radare2" ; rm -f last ; ln -fs "0.10.3-git" last
gmake[1]: Leaving directory '/PATH/radare2/libr'
cd binr && gmake install-symlink
gmake[1]: Entering directory '/PATH/radare2/binr'
mkdir -p "/usr/bin"
for BINARY in rax2 rasm2 rabin2 rahash2 radiff2 radare2 rafind2 rarun2 ragg2 r2agent ; do ln -fs "/PATH/radare2/binr/$BINARY/$BINARY" "/usr/bin/$BINARY" ; done
ln -fs "/PATH/radare2/binr/ragg2/ragg2-cc" "/usr/bin/ragg2-cc"
ln -fs "/PATH/radare2/binr/r2pm/r2pm" "/usr/bin/r2pm"
rm -rf "/usr/share/radare2/0.10.3-git/r2pm"
mkdir -p "/usr/share/radare2/0.10.3-git/"
ln -fs "/PATH/radare2/binr/r2pm/d" "/usr/share/radare2/0.10.3-git/r2pm"
ln -fs "/usr/bin/radare2" "/usr/bin/r2"
ln -fs "/PATH/radare2/binr/preload/libr2.so" "/usr/lib/libr2.so"
cd "/usr/lib" && \
   mv libr2.so libr2.so.0.10.3-git && \
   ln -fs libr2.so.0.10.3-git libr2.so
gmake[1]: Leaving directory '/PATH/radare2/binr'
cd shlr && gmake install-symlink
gmake[1]: Entering directory '/PATH/radare2/shlr'
mkdir -p "/usr/lib"
#cd tcc ; for FILE in libr_tcc* ; do \
#  ln -fs `pwd`/$FILE /usr/lib/$FILE ; done
gmake[1]: Leaving directory '/PATH/radare2/shlr'
for DIR in libr/cons/d libr/bin/d libr/asm/d libr/syscall/d libr/magic/d libr/anal/d ; do (\
   cd "$DIR" ; \
   echo "$DIR" ; \
   gmake install-symlink ); \
done
libr/cons/d
gmake[1]: Entering directory '/PATH/radare2/libr/cons/d'
mkdir -p "/usr/share/radare2/0.10.3-git/cons"
for FILE in * ; do \
   if [ $FILE != Makefile ]; then \
        ln -fs "/PATH/radare2/libr/cons/d/$FILE" "/usr/share/radare2/0.10.3-git/cons/$FILE" ; \
   fi ; \
done
gmake[1]: Leaving directory '/PATH/radare2/libr/cons/d'
libr/bin/d
gmake[1]: Entering directory '/PATH/radare2/libr/bin/d'
mkdir -p "/usr/share/radare2/0.10.3-git/format"
for FILE in * ; do \
   if [ "$FILE" != Makefile ]; then \
        ln -fs "/PATH/radare2/libr/bin/d/$FILE" "/usr/share/radare2/0.10.3-git/format/$FILE" ; \
   fi ; \
done
gmake[1]: Leaving directory '/PATH/radare2/libr/bin/d'
libr/asm/d
gmake[1]: Entering directory '/PATH/radare2/libr/asm/d'
mkdir -p "/usr/lib/radare2/0.10.3-git/opcodes"
for FILE in *.sdb ; do ln -fs "/PATH/radare2/libr/asm/d/$FILE" "/usr/lib/radare2/0.10.3-git/opcodes/$FILE" ; done
gmake[1]: Leaving directory '/PATH/radare2/libr/asm/d'
libr/syscall/d
gmake[1]: Entering directory '/PATH/radare2/libr/syscall/d'
mkdir -p "/usr/lib/radare2/0.10.3-git/syscall"
for FILE in *.sdb ; do ln -fs "/PATH/radare2/libr/syscall/d/$FILE" "/usr/lib/radare2/0.10.3-git/syscall/$FILE" ; done
gmake[1]: Leaving directory '/PATH/radare2/libr/syscall/d'
libr/magic/d
gmake[1]: Entering directory '/PATH/radare2/libr/magic/d'
mkdir -p "/usr/lib/radare2/0.10.3-git/magic"
cd default ; for FILE in * ; do ln -fs "/PATH/radare2/libr/magic/d/default/$FILE" \
   "/usr/lib/radare2/0.10.3-git/magic/$FILE" ; done
gmake[1]: Leaving directory '/PATH/radare2/libr/magic/d'
libr/anal/d
gmake[1]: Entering directory '/PATH/radare2/libr/anal/d'
mkdir -p "/usr/lib/radare2/0.10.3-git/fcnsign"
for FILE in *.sdb ; do ln -fs "/PATH/radare2/libr/anal/d/$FILE" "/usr/lib/radare2/0.10.3-git/fcnsign/$FILE" ; done
gmake[1]: Leaving directory '/PATH/radare2/libr/anal/d'
mkdir -p "/usr/lib/radare2/0.10.3-git/hud"
cd "/usr/lib/radare2/" ;\
   rm -f last ; ln -fs 0.10.3-git last
cd "/usr/share/radare2/" ;\
   rm -f last ; ln -fs 0.10.3-git last
ln -fs "/PATH/radare2/doc/hud" "/usr/lib/radare2/0.10.3-git/hud/main"
mkdir -p "/usr/share/radare2/0.10.3-git/"
sys/ldconfig.sh
./configure-plugins --rm-static //usr/lib/radare2/last/
configure-plugins: Loading ./plugins.cfg ..
Removed 96 shared plugins that are already static
$
```

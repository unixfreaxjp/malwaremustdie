r2 compile log freebsd i686:
```
Tue Nov 29 19:10:19 JST 2016
heads/master-0-gffd8ecd
```
pre-compile (no error):
```asm
sudo make purge
sudo make uninstall
sudo git clean -xdf
git reset --hard
git pull
```
log (errors):
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
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_udis asm.xap asm.xcore_cs asm.xtensa asm.z80 bin.any bin.art bin.avr bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.menuet bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.io debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.tcp io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
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
 - BUILD = i386-unknown-freebsd
 - HOST = i386-unknown-freebsd
 - TARGET = i386-unknown-freebsd
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
CC gzwrite.c
CC gzread.c
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
ar: warning: LIB libr_zip.so
creating libr_zip.a
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
sys.c:181:2: warning: #warning TODO: r_sys_bt : unimplemented
sys.c: In function 'r_sys_crash_handler':
sys.c:274: warning: unused variable 'array'
CC w32-sys.c
sys.c: In function 'r_sys_perror_str':
sys.c:638: warning: ignoring #pragma push_macro
sys.c:641: warning: ignoring #pragma pop_macro
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
run.c:233: warning: implicit declaration of function 'forkpty'
LD libr_socket.so
[capstone] Already in TIP, no need to update from git
HEAD is now at 5bc875a x86: fix X86_REL_ADDR macro - handle two-byte jump instructions
CC libbochs.c
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
wind.c: In function 'wind_va_to_pa':
wind.c:415: warning: integer constant is too large for 'long' type
  CC      cs.o
  CC      utils.o

BUILD SUMARY
============
  CC      SStream.o
COMPILER gcc
CC gcc
HOST_CC gcc
ar: warning: creating libr_wind.a
HOST_OS freebsd
ar: warning: creating lib/libbochs.a
a - src/libbochs.o
  CC      MCRegisterInfo.o
  CC      MCInstrDesc.o
BUILD_OS freebsd
============

>>>>>>>>>>>>>>>>
  CC      arch/ARM/ARMDisassembler.o
NATIVE BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
In file included from arch/ARM/ARMInstPrinter.c:26:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
  CC      arch/ARM/ARMModule.o
In file included from arch/ARM/ARMDisassembler.c:21:
arch/ARM/ARMBaseInfo.h: In function 'ARMII_AddrModeToString':
arch/ARM/ARMBaseInfo.h:246: warning: control reaches end of non-void function
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/M68K/M68KModule.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KInstPrinter.o
CC cdb.c
  CC      arch/AArch64/AArch64Module.o
CC buffer.c
  CC      arch/AArch64/AArch64InstPrinter.o
CC cdb_make.c
CC ls.c
  CC      arch/Mips/MipsDisassembler.o
CC ht.c
  CC      arch/Mips/MipsInstPrinter.o
CC sdb.c
CC num.c
CC base64.c
  CC      arch/Mips/MipsModule.o
CC match.c
  CC      arch/Mips/MipsMapping.o
CC json.c
  CC      arch/PowerPC/PPCMapping.o
CC lock.c
CC ns.c
  CC      arch/PowerPC/PPCInstPrinter.o
  CC      arch/PowerPC/PPCDisassembler.o
CC util.c
CC disk.c
CC query.c
  CC      arch/Sparc/SparcInstPrinter.o
CC array.c
  CC      arch/Sparc/SparcDisassembler.o
CC fmt.c
  CC      arch/PowerPC/PPCModule.o
CC journal.c
CC main.c
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
AR libsdb.a
  CC      arch/SystemZ/SystemZMCTargetDesc.o
ar: warning: creating libsdb.a
BIN sdb
  CC      arch/SystemZ/SystemZModule.o

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
  CC      arch/SystemZ/SystemZMapping.o
>>>>>>>>>>>>>>>>
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
  CC      arch/XCore/XCoreModule.o
  CC      arch/XCore/XCoreMapping.o
  CC      MCInst.o
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
  AR      libcapstone.a
ar: warning: creating ./libcapstone.a
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
DIR search
CC cons.c
CC reg.c
DIR config
CC apprentice.c
CC output.c
CC arena.c
CC ascmagic.c
CC pipe.c
CC value.c
CC grep.c
CC bp.c
CC cond.c
CC less.c
CC watch.c
CC fsmagic.c
CC config.c
CC search.c
CC double.c
CC utf8.c
CC callback.c
CC io.c
CC bytepat.c
CC profile.c
CC funcs.c
CC line.c
CC is_tar.c
CC plugin.c
CC hud.c
CC magic.c
CC aes-find.c
CC strings.c
LD libr_reg.so
LD libr_config.so
CC softmagic.c
CC traptrace.c
CC rgb.c
CC rsa-find.c
CC bp_arm.c
CC input.c
LD libr_magic.so
CC bp_bf.c
CC regexp.c
CC pal.c
CC xrefs.c
CC editor.c
CC bp_mips.c
CC 2048.c
CC bp_ppc.c
CC keyword.c
CC bp_x86.c
CC canvas.c
CC canvas_line.c
LD libr_bp.so
LD libr_search.so
LD libr_cons.so
DIR syscall
DIR lang
DIR crypto
DIR io
DIR flag
CC lang.c
CC syscall.c
CC io_bfdbg.c
CC ioports.c
CC flag.c
CC sort.c
CC io_bochs.c
CC crypto_aes.c
CC spaces.c
CC zones.c
CC crypto_aes_algo.c
LD libr_lang.so
CC io_debug.c
CC io_default.c
CC crypto_aes_cbc.c
CC crypto_base64.c
LD libr_flag.so
CC io_gdb.c
CC crypto_base91.c
CC io_gzip.c
CC crypto_blowfish.c
CC io_http.c
SDB dos-x86-16
CC crypto_cps2.c
CC io_ihex.c
CC io_mach.c
CC crypto_punycode.c
CC io_malloc.c
SDB ios-x86-32
CC crypto_rc2.c
SDB ios-arm-32
CC io_mmap.c
CC crypto_rc4.c
CC crypto_rc6.c
CC io_procpid.c
CC io_ptrace.c
CC crypto_rol.c
SDB ios-arm-64
SDB linux-x86-32
SDB linux-arm-32
SDB linux-arm-64
SDB linux-x86-64
SDB linux-mips-32
CC crypto_ror.c
CC io_qnx.c
CC crypto_rot.c
CC io_r2k.c
CC crypto_xor.c
SDB linux-sparc-32
SDB darwin-x86-32
CC crypto.c
CC io_r2pipe.c
CC io_r2web.c
CC io_rap.c
CC io_self.c
SDB darwin-x86-64
CC io_shm.c
LD libr_crypto.so
SDB netbsd-x86-32
CC io_sparse.c
SDB freebsd-x86-32
p/io_self.c:114:3: warning: #warning not yet implemented for this platform
CC io_tcp.c
SDB openbsd-x86-32
SDB openbsd-x86-64
CC io_w32.c
CC io_w32dbg.c
SDB windows-x86-32
CC io_zip.c
CC io_windbg.c
SDB windows-x86-64
CC io.c
CC plugin.c
LD libr_syscall.so
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
CC bin_avr.c
CC anal_6502.c
CC bin_bf.c
CC anal_8051.c
  SDB dospart
CC 8051.c
CC bin_bios.c
CC bin_bootimg.c
CC anal_arc.c
CC bin_cgc.c
CC anal_arm_cs.c
CC bin_coff.c
CC anal_arm_gnu.c
CC coff.c
CC be_arm.c
CC bin_dex.c
CC anal_avr.c
SDB types
/TEST/radare/radare2/libr/..//libr/bin/p/bin_dex.c: In function 'dex_method_signature':
/TEST/radare/radare2/libr/..//libr/bin/p/bin_dex.c:226: warning: comparison is always false due to limited range of data type
CC dex.c
SDB types-16
/TEST/radare/radare2/libr/..//libr/bin/p/bin_dex.c: In function 'parse_class':
/TEST/radare/radare2/libr/..//libr/bin/p/bin_dex.c:650: warning: comparison is always false due to limited range of data type
/TEST/radare/radare2/libr/..//libr/bin/p/bin_dex.c:705: warning: comparison is always false due to limited range of data type
CC anal_bf.c
CC bin_dol.c
CC bin_dyldcache.c
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:112: error: unknown field 'consts' specified in initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:112: warning: braces around scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:112: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:113: warning: initialization from incompatible pointer type
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:114: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:114: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:115: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:115: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:117: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:117: warning: (near initialization for 'cpu_models[0].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:120: error: unknown field 'consts' specified in initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:120: warning: braces around scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:120: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:121: warning: initialization from incompatible pointer type
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:122: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:122: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:123: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:123: warning: (near initialization for 'cpu_models[1].inherit')
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:125: warning: excess elements in scalar initializer
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:125: warning: (near initialization for 'cpu_models[1].inherit')
SDB types-32
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c: In function 'esil_avr_hook_reg_write':
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:1635: warning: format '%08x' expects type 'unsigned int', but argument 3 has type 'long long unsigned int'
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:1637: warning: format '%08x' expects type 'unsigned int', but argument 3 has type 'long long unsigned int'
/TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.c:1646: warning: format '%08x' expects type 'unsigned int', but argument 4 has type 'long long unsigned int'
CC anal_cr16.c
CC fs_cpio.c
CC bin_elf.c
gmake[3]: *** [/TEST/radare/radare2/libr/../global.mk:42: /TEST/radare/radare2/libr/..//libr/anal/p/anal_avr.o] Error 1
gmake[3]: *** Waiting for unfinished jobs....
SDB types-64
CC bin_dbginfo_elf.c
CC fs_ext2.c
SDB types-windows
SDB types-x86-windows-32
CC bin_write_elf.c
SDB types-x86-windows-64
SDB types-linux
SDB types-x86-osx-64
CC elf.c
SDB cc-x86-64
CC elf_write.c
CC fs_fat.c
CC fs_fb.c
CC bin_elf64.c
SDB cc-x86-32
SDB cc-mips-32
SDB cc-m68k-32
SDB cc-sparc-32
CC bin_dbginfo_elf64.c
CC fs_hfs.c
CC bin_write_elf64.c
CC fs_hfsplus.c
CC elf64.c
SDB cc-arm-64
CC fs_iso9660.c
CC elf64_write.c
CC fs_jfs.c
SDB cc-arm-32
CC bin_fs.c
CC bin_java.c
CC fs_minix.c
SDB cc-avr-8
SDB cc-powerpc-32
CC bin_mach0.c
CC fs_ntfs.c
CC mach0.c
CC fs_posix.c
SDB cc-powerpc-64
SDB cc-xtensa-32
SDB cc-riscv-64
CC mach0_classes.c
CC fs_reiserfs.c
gmake[2]: *** [Makefile:83: anal] Error 2
gmake[2]: *** Waiting for unfinished jobs....
CC mach064_classes.c
CC bin_write_mach0.c
CC fs_sfs.c
CC fs_squash.c
CC fs_tar.c
CC fs_udf.c
CC bin_mach064.c
CC bin_write_mach064.c
CC fs_ufs.c
CC mach064.c
CC bin_mbn.c
CC bin_menuet.c
CC bin_mz.c
CC fs_xfs.c
CC mz.c
CC fs.c
CC bin_nes.c
CC bin_nin3ds.c
CC file.c
CC bin_ninds.c
CC bin_ningb.c
LD libr_fs.so
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
/TEST/radare/radare2/libr/bin/p
SHLR=/TEST/radare/radare2/libr/..//libr/../shlr
gmake[1]: *** [Makefile:31: all] Error 2
gmake: *** [Makefile:51: all] Error 2
```

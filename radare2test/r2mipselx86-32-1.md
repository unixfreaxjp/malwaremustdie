debian-mipsel:~/radare2$ sys/user.sh
```asm
WARNING: Updating from remote repository
[ 4628.964000] ipv6: Unknown symbol __ip4_datagram_connect (err 0)
[ 4628.964000] ipv6: Unknown symbol ip_idents_reserve (err 0)
[ 4628.964000] ipv6: disagrees about version of symbol tcp_alloc_md5sig_pool
[ 4628.964000] ipv6: Unknown symbol tcp_alloc_md5sig_pool (err -22)
remote: Counting objects: 12, done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 12 (delta 2), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (12/12), done.
From https://github.com/radare/radare2
   ffd91ae..1e48ab5  siol       -> origin/siol
Already up-to-date.

export USE_R2_CAPSTONE=

Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_udis asm.xap asm.xcore_cs asm.xtensa asm.z80 bin.any bin.art bin.avr bin.bf bin.bflt bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.menuet bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.des crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.io debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.tcp io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... mips-unknown-linux-gnu
checking host system type... mips-unknown-linux-gnu
checking target system type... mips-unknown-linux-gnu
checking for working directories... current
using prefix '/home/TEST/bin/prefix/radare2/'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
checking for libmagic ... no
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
creating pkgcfg/r_flag.pc
creating pkgcfg/r_syscall.pc
creating pkgcfg/r_util.pc
creating pkgcfg/r_search.pc
creating pkgcfg/r_bp.pc
creating pkgcfg/r_parse.pc
creating pkgcfg/r_fs.pc
cleaning temporally files... done

Final report:
 - PREFIX = /home/TEST/bin/prefix/radare2/
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 1.3.0-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 1.3.0-git
 - BUILD = mips-unknown-linux-gnu
 - HOST = mips-unknown-linux-gnu
 - TARGET = mips-unknown-linux-gnu
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
CC main.c
AR libsdb.a
ar: creating libsdb.a
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
LIB libsdb.so.0.11.1
CC mem.c
CC pool.c
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
CC w32-sys.c
CC ubase64.c
CC base85.c
CC base91.c
CC list.c
CC flist.c
CC uht.c
CC uht64.c
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
CC signal.c
CC syscmd.c
CC diff.c
CC bdiff.c
CC stack.c
CC queue.c
CC tree.c
CC des.c
CC idpool.c
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
[capstone] Already in TIP, no need to update from git
HEAD is now at b8fa0b0 Merge pull request #850 from radare/fix-warns
patching file arch/X86/X86ATTInstPrinter.c
Hunk #1 succeeded at 604 (offset 28 lines).
patching file arch/X86/X86IntelInstPrinter.c
Hunk #1 succeeded at 799 (offset 43 lines).
CC libbochs.c

BUILD SUMARY
============
COMPILER gcc
CC gcc
HOST_CC gcc
HOST_OS linux
BUILD_OS linux
  CC      cs.o
  CC      utils.o
  CC      MCInstrDesc.o
  CC      MCRegisterInfo.o
  CC      SStream.o
============

  CC      arch/ARM/ARMDisassembler.o
>>>>>>>>>>>>>>>>
NATIVE BUILD SDB
>>>>>>>>>>>>>>>>

<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/AArch64/AArch64Disassembler.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition

<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/AArch64/AArch64Module.o
CC cdb.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
ar: creating lib/libbochs.a
a - src/libbochs.o
CC buffer.c
CC cdb_make.c
  CC      arch/M68K/M68KInstPrinter.o
ar: creating libr_wind.a
CC ls.c
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KModule.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC sdbht.c
CC ht.c
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/Mips/MipsInstPrinter.o
CC sdb.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC num.c
CC base64.c
  CC      arch/Mips/MipsMapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/Mips/MipsModule.o
CC match.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/PowerPC/PPCDisassembler.o
CC json.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/PowerPC/PPCInstPrinter.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/PowerPC/PPCMapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC ns.c
CC lock.c
  CC      arch/PowerPC/PPCModule.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC util.c
  CC      arch/Sparc/SparcDisassembler.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC disk.c
  CC      arch/Sparc/SparcInstPrinter.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC query.c
CC array.c
CC fmt.c
  CC      arch/Sparc/SparcMapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC journal.c
CC main.c
  CC      arch/Sparc/SparcModule.o
  CC      arch/SystemZ/SystemZDisassembler.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
AR libsdb.a
ar: creating libsdb.a
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZMapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
BIN sdb
  CC      arch/SystemZ/SystemZModule.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/SystemZ/SystemZMCTargetDesc.o
  CC      arch/X86/X86DisassemblerDecoder.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/X86/X86Disassembler.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/X86/X86IntelInstPrinter.o
CC cdb.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC buffer.c
CC cdb_make.c
  CC      arch/X86/X86ATTInstPrinter.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/X86/X86Mapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC ls.c
CC sdbht.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
  CC      arch/X86/X86Module.o
CC match.c
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/XCore/XCoreDisassembler.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC json.c
  CC      MCInst.o
  CC      arch/XCore/XCoreModule.o
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
<command-line>:0:0: warning: "mips" redefined [enabled by default]
<built-in>:0:0: note: this is the location of the previous definition
CC ns.c
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
AR libsdb.a
ar: creating libsdb.a
  AR      libcapstone.a
ar: creating ./libcapstone.a
make -C sdb
CC main.c
BIN sdb
CC PIC sdbht.c
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC json.c
CC PIC ns.c
CC PIC match.c
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
LIB libsdb.so.0.11.1
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
CC luhn.c
LD libr_hash.so
DIR socket
DIR reg
DIR cons
DIR magic
DIR bp
DIR search
DIR config
CC reg.c
CC apprentice.c
CC arena.c
CC cons.c
CC value.c
CC ascmagic.c
CC pipe.c
CC config.c
CC fsmagic.c
CC cond.c
CC search.c
CC bp.c
CC bp_watch.c
CC bp_io.c
CC funcs.c
CC double.c
CC bytepat.c
CC profile.c
CC callback.c
CC strings.c
CC aes-find.c
CC rsa-find.c
CC regexp.c
CC xrefs.c
CC bp_plugin.c
CC keyword.c
LD libr_reg.so
LD libr_config.so
CC bp_traptrace.c
CC is_tar.c
CC magic.c
CC output.c
CC bp_arm.c
CC bp_bf.c
CC softmagic.c
CC bp_mips.c
CC bp_ppc.c
CC bp_x86.c
CC grep.c
LD libr_search.so
CC less.c
CC utf8.c
CC line.c
CC hud.c
CC rgb.c
CC input.c
CC pal.c
CC editor.c
CC 2048.c
LD libr_bp.so
CC canvas.c
CC canvas_line.c
LD libr_magic.so
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flag
CC syscall.c
CC lang.c
CC ioports.c
CC flag.c
CC sort.c
CC spaces.c
CC zones.c
CC io_bfdbg.c
CC io_bochs.c
CC io_debug.c
CC crypto_aes.c
SDB dos-x86-16
SDB ios-x86-32
SDB ios-arm-32
SDB ios-arm-64
SDB linux-x86-32
CC crypto_aes_algo.c
SDB linux-x86-64
CC io_default.c
SDB linux-arm-32
SDB linux-arm-64
SDB linux-mips-32
SDB linux-sparc-32
CC crypto_aes_cbc.c
SDB darwin-x86-32
CC crypto_base64.c
SDB darwin-x86-64
CC crypto_base91.c
SDB netbsd-x86-32
CC io_gdb.c
SDB freebsd-x86-32
SDB openbsd-x86-32
SDB openbsd-x86-64
SDB windows-x86-32
CC io_gzip.c
SDB windows-x86-64
LD libr_syscall.so
CC crypto_blowfish.c
CC crypto_cps2.c
CC io_http.c
CC crypto_des.c
CC crypto_punycode.c
CC io_ihex.c
LD libr_flag.so
p/crypto_des.c:386:2: warning: initialization from incompatible pointer type [enabled by default]
p/crypto_des.c:386:2: warning: (near initialization for 'r_crypto_plugin_des.set_key') [enabled by default]
CC crypto_rc2.c
CC io_mach.c
CC crypto_rc4.c
CC io_malloc.c
CC io_mmap.c
CC io_procpid.c
CC io_ptrace.c
CC crypto_rc6.c
CC crypto_rol.c
CC io_qnx.c
CC crypto_ror.c
LD libr_lang.so
CC io_r2k.c
CC crypto_rot.c
CC crypto_xor.c
CC crypto.c
CC io_r2k_linux.c
CC io_r2pipe.c
CC io_r2web.c
CC io_rap.c
CC io_self.c
CC io_shm.c
CC io_sparse.c
CC io_tcp.c
CC io_w32.c
LD libr_crypto.so
CC io_w32dbg.c
CC io_windbg.c
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
CC anal_6502.c
CC anal_8051.c
CC bin.c
CC 8051.c
CC anal_arc.c
CC dbginfo.c
CC bin_write.c
CC anal_arm_cs.c
CC anal_arm_gnu.c
CC demangle.c
  SDB dospart
SDB types
SDB types-16
CC be_arm.c
SDB types-32
SDB types-64
SDB types-windows
CC fs_cpio.c
CC anal_avr.c
CC anal_bf.c
SDB types-x86-windows-32
SDB types-x86-windows-64
SDB types-linux
SDB types-x86-osx-64
SDB cc-x86-64
SDB cc-x86-32
SDB cc-mips-32
CC dwarf.c
SDB cc-m68k-32
SDB cc-sparc-32
SDB cc-arm-64
SDB cc-arm-32
SDB cc-avr-8
SDB cc-powerpc-32
SDB cc-powerpc-64
SDB cc-xtensa-32
SDB cc-riscv-64
CC filter.c
CC anal_cr16.c
CC fs_ext2.c
CC cr16_disas.c
CC cp-demangle.c
CC fs_fat.c
CC fs_fb.c
CC anal_cris.c
CC fs_hfs.c
CC anal_dalvik.c
CC fs_hfsplus.c
CC bin_any.c
CC bin_art.c
CC bin_avr.c
CC fs_iso9660.c
CC anal_ebc.c
CC bin_bf.c
CC bin_bflt.c
CC bflt.c
CC ebc_disas.c
CC anal_gb.c
CC fs_jfs.c
CC fs_minix.c
CC bin_bios.c
CC bin_bootimg.c
CC anal_h8300.c
CC h8300_disas.c
CC bin_cgc.c
CC anal_i4004.c
CC bin_coff.c
CC coff.c
CC fs_ntfs.c
CC fs_posix.c
CC fs_reiserfs.c
CC bin_dex.c
CC bin_dbginfo_dex.c
CC dex.c
CC bin_dol.c
CC anal_i8080.c
CC bin_dyldcache.c
CC anal_java.c
CC bin_elf.c
CC fs_sfs.c
CC anal_m68k_cs.c
CC anal_malbolge.c
CC anal_mips_cs.c
CC bin_dbginfo_elf.c
CC fs_squash.c
CC bin_write_elf.c
CC fs_tar.c
CC anal_mips_gnu.c
CC anal_msp430.c
CC fs_udf.c
CC fs_ufs.c
CC msp430_disas.c
CC fs_xfs.c
CC fs.c
CC elf.c
CC elf_write.c
CC bin_elf64.c
CC bin_dbginfo_elf64.c
CC bin_write_elf64.c
CC file.c
CC anal_nios2.c
CC elf64.c
CC elf64_write.c
CC bin_fs.c
/home/TEST/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'get_symbols_from_phdr':
/home/TEST/radare2/libr/..//libr/bin/p/../format/elf/elf.c:2417:12: warning: unused variable 'k' [-Wunused-variable]
CC bin_java.c
CC anal_null.c
CC anal_pic18c.c
CC anal_ppc_cs.c
In file included from /home/TEST/radare2/libr/..//libr/bin/p/../format/elf/elf64.c:4:0:
/home/TEST/radare2/libr/..//libr/bin/p/../format/elf/elf.c: In function 'get_symbols_from_phdr':
CC anal_ppc_gnu.c
/home/TEST/radare2/libr/..//libr/bin/p/../format/elf/elf.c:2417:12: warning: unused variable 'k' [-Wunused-variable]
CC bin_mach0.c
CC anal_riscv.c
CC mach0.c
LD libr_fs.so
CC mach0_classes.c
CC anal_rsp.c
CC mach064_classes.c
CC rsp_idec.c
CC anal_sh.c
CC bin_write_mach0.c
CC bin_mach064.c
CC bin_write_mach064.c
CC mach064.c
CC anal_snes.c
CC anal_sparc_cs.c
CC bin_mbn.c
CC bin_menuet.c
CC anal_sparc_gnu.c
CC anal_sysz.c
CC bin_mz.c
CC anal_tms320.c
CC mz.c
CC anal_tms320_c55x_plus.c
CC bin_nes.c
CC bin_nin3ds.c
CC bin_ninds.c
CC bin_ningb.c
CC tms320_dasm.c
CC bin_ningba.c
CC ins.c
CC bin_omf.c
CC c55plus.c
CC omf.c
CC c55plus_decode.c
CC decode_funcs.c
CC bin_p9.c
CC p9bin.c
CC utils.c
CC bin_pe.c
CC hashtable.c
CC hashvector.c
CC anal_v810.c
CC pe.c
CC bin_pe64.c
/home/TEST/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]
CC pe64.c
CC v810_disas.c
CC bin_pebble.c
CC anal_v850.c
CC v850_disas.c
CC bin_psxexe.c
CC bin_rar.c
CC anal_vax.c
CC bin_smd.c
CC anal_ws.c
CC anal_x86_cs.c
CC bin_sms.c
CC anal_x86_udis.c
CC esil_x86_udis.c
CC anal_xap.c
CC anal_xcore_cs.c
CC anal_xtensa.c
CC bin_spc700.c
CC anal_z80.c
CC meta.c
CC bin_te.c
CC te.c
CC bin_vsf.c
CC reflines.c
CC bin_xbe.c
CC bin_zimg.c
CC zimg.c
CC ref.c
CC op.c
CC fcn.c
CC bin_xtr_fatmach0.c
CC bb.c
CC fatmach0.c
CC var.c
CC cond.c
CC value.c
CC cc.c
CC bin_xtr_dyldcache.c
CC diff.c
CC dyldcache.c
CC demangler.c
CC types.c
CC microsoft_demangle.c
CC objc.c
CC fcnstore.c
CC cxx.c
CC msvc.c
CC hint.c
CC anal.c
CC swift.c
CC swift-sd.c
CC dlang.c
CC data.c
CC xrefs.c
CC esil.c
CC sign.c
CC pdb_downloader.c
CC omap.c
CC anal_ex.c
CC stream_pe.c
CC switch.c
CC gdata.c
CC fpo.c
CC state.c
CC cycles.c
CC dbi.c
CC esil_stats.c
CC esil_trace.c
CC tpi.c
CC flirt.c
CC labels.c
CC stream_file.c
CC esil2reil.c
CC pin.c
CC xtensa-modules.c
CC pdb.c
CC xtensa-isa.c
CC elf32-xtensa.c
LD libr_bin.so
/home/TEST/radare2/libr/bin/p
SHLR=/home/TEST/radare2/libr/..//libr/../shlr
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
gcc: warning: /home/TEST/radare2/libr/../shlr/zip/librz.a: linker input file unused because linking not done
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
CC dreg.c
CC ddesc.c
CC esil.c
CC asm_6502.c
CC asm_8051.c
CC asm_arc.c
debug.c: In function 'r_debug_continue_kill':
debug.c:951:4: warning: implicit declaration of function 'linux_attach_new_process' [-Wimplicit-function-declaration]
CC debug_bf.c
CC arc-dis.c
CC debug_bochs.c
CC arc-ext.c
CC debug_esil.c
CC arc-opc.c
CC arcompact-dis.c
CC debug_gdb.c
CC asm_arm_as.c
CC debug_io.c
CC debug_native.c
CC debug_qnx.c
CC asm_arm_cs.c
CC debug_rap.c
CC armass.c
CC armass64.c
CC debug_wind.c
CC asm_arm_gnu.c
CC linux_debug.c
CC arm-dis.c
p/debug_native.c: In function 'r_debug_native_wait':
p/debug_native.c:306:6: warning: unused variable 'status' [-Wunused-variable]
p/debug_native.c: At top level:
p/native/linux/linux_debug.h:97:15: warning: 'get_pid_thread_list' declared 'static' but never defined [-Wunused-function]
p/native/linux/linux_debug.h:98:13: warning: 'attach_to_pid_and_threads' declared 'static' but never defined [-Wunused-function]
p/debug_native.c:101:12: warning: 'r_debug_handle_signals' defined but not used [-Wunused-function]
CC procfs.c
CC linux_coredump.c
CC floatformat.c
p/native/linux/linux_debug.c: In function 'linux_handle_signals':
p/native/linux/linux_debug.c:69:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c:96:28: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
p/native/linux/linux_debug.c:111:4: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
p/native/linux/linux_debug.c: In function 'linux_ptrace_event':
p/native/linux/linux_debug.c:162:4: warning: format '%lld' expects argument of type 'long long int', but argument 3 has type 'unsigned int' [-Wformat]
p/native/linux/linux_debug.c:174:4: warning: format '%lld' expects argument of type 'long long int', but argument 3 has type 'unsigned int' [-Wformat]
p/native/linux/linux_debug.c:186:3: warning: format '%llx' expects argument of type 'long long unsigned int', but argument 4 has type 'unsigned int' [-Wformat]
p/native/linux/linux_debug.c: In function 'linux_attach_new_process':
p/native/linux/linux_debug.c:265:6: warning: unused variable 'ret' [-Wunused-variable]
CC aarch64-dis.c
p/native/linux/linux_debug.c: In function 'print_fpu':
p/native/linux/linux_debug.c:732:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:827:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:737:7: warning: variable 'showfpu' set but not used [-Wunused-but-set-variable]
CC aarch64-dis-2.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC asm_bf.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
LD libr_debug.so
CC cris-opc.c
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
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC asm_x86_nz.c
CC asm_x86_udis.c
CC asm_xap.c
CC asm_xcore_cs.c
CC asm_xtensa.c
CC xtensa-dis.c
CC asm_z80.c
CC asm.c
CC code.c
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /home/TEST/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /home/TEST/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
DIR egg
CC egg.c
CC egg_lang.c
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
CC cconfig.c
CC visual.c
CC cio.c
CC yank.c
CC libs.c
CC graph.c
CC hack.c
CC vasm.c
CC patch.c
CC cbin.c
CC log.c
CC rtr.c
CC cmd_api.c
In file included from cmd.c:34:0:
cmd_zign.c: In function 'fcn_zig_search':
cmd_zign.c:47:28: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
cmd_zign.c: In function 'cmd_zign':
cmd_zign.c:354:11: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
cmd_zign.c:369:30: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
CC canal.c
CC project.c
CC gdiff.c
cbin.c: In function 'save_ptr':
cbin.c:542:44: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
cbin.c: In function 'r_core_anal_cc_init':
cbin.c:573:44: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
CC asm.c
CC vmenus.c
CC disasm.c
CC plugin.c
CC help.c
CC task.c
CC panels.c
CC pseudo.c
CC vmarks.c
CC anal_tp.c
CC blaze.c
CC core_anal.c
CC core_java.c
blaze.c:44:12: warning: 'fcnExist' defined but not used [-Wunused-function]


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
mkdir -p "/home/TEST/bin/prefix/radare2//share/man/man1"
mkdir -p "/home/TEST/bin/prefix/radare2//share/man/man7"
cd man && for FILE in *.1 ; do \
                ln -fs "/home/TEST/radare2/man/$FILE" "/home/TEST/bin/prefix/radare2//share/man/man1/$FILE" ; done
cd "/home/TEST/bin/prefix/radare2//share/man/man1" && ln -fs radare2.1 r2.1
for FILE in *.7 ; do \
                ln -fs "/home/TEST/radare2/man/$FILE" "/home/TEST/bin/prefix/radare2//share/man/man7/$FILE" ; done
/usr/bin/install -d "/home/TEST/bin/prefix/radare2//share/doc/radare2"
cd doc ; for FILE in * ; do \
                ln -fs "/home/TEST/radare2/doc/$FILE" "/home/TEST/bin/prefix/radare2//share/doc/radare2" ; done
cd pkgcfg ; for FILE in *.pc ; do \
                ln -fs "${PWD}/$FILE" "/home/TEST/bin/prefix/radare2//lib/pkgconfig/$FILE" ; done
rm -rf "/home/TEST/bin/prefix/radare2//share/radare2/1.3.0-git/www"
rm -rf "/home/TEST/bin/prefix/radare2//lib/radare2/1.3.0-git/www" # old dir
mkdir -p "/home/TEST/bin/prefix/radare2//share/radare2/1.3.0-git/www"
cd "/home/TEST/bin/prefix/radare2//share/radare2/1.3.0-git/www" ; \
                for FILE in "/home/TEST/radare2/shlr/www/"* ; do \
                        ln -fs "$FILE" "/home/TEST/bin/prefix/radare2//share/radare2/1.3.0-git/www" ; done
ln -fs "/home/TEST/radare2/sys/indent.sh" "/home/TEST/bin/prefix/radare2//bin/r2-indent"
ln: failed to create symbolic link `/home/TEST/bin/prefix/radare2//bin/r2-indent': No such file or directory
make: *** [symstall] Error 1
Oops
```

// there is no ~/bin/prefix/radare2//bin/r2-indent
```asm
$ ls -alF ~/bin/prefix/radare2/
total 16
drwxr-xr-x 4 TEST TEST 4096 Feb 13 22:20 ./
drwxr-xr-x 3 TEST TEST 4096 Feb 13 21:12 ../
drwxr-xr-x 3 TEST TEST 4096 Feb 13 22:20 lib/
drwxr-xr-x 5 TEST TEST 4096 Feb 13 22:20 share/
```

// Use this to fix and continue the installation (suggested temporary workaroud prior fix...)
```asm
$ mkdir /home/mung/bin/prefix/radare2/bin/
$ ln -fs "/home/mung/radare2/sys/indent.sh" "/home/mung/bin/prefix/radare2//bin/r2-indent"  
$ make install love
$ make rmd
$ make install-pkgconfig-symlink
$ make symstall install-symlink
$ make user-install
```
// patch
```bash
see the Issue
```

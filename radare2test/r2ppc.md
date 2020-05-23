Next step of the r2 multi architecture testing is is compilation on powerpc, using cpu:
```asm
cpu             : 740/750
temperature     : 62-64 C (uncalibrated)
clock           : 266.000000MHz　＜＝＝はい、遅いです
revision        : 3.1 (pvr 0008 0301)
bogomips        : 33.20
timebase        : 16601533
platform        : PowerMac
model           : Power Macintosh
machine         : Power Macintosh
motherboard     : AAPL,PowerMac G3 MacRISC
detected as     : 49 (PowerMac G3 (Silk))
pmac-generation : OldWorld
Memory          : 256 MB　＜＝＝すごいよね！生きている
```
Source code used:
```asm
From https://github.com/radare/radare2
   d6cd018..5742092  master     -> origin/master
Updating d6cd018..5742092
Fast-forward
 shlr/qnx/src/core.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
```
Build summary:
```asm
BUILD SUMARY
============
COMPILER gcc
CC gcc
HOST_CC gcc
HOST_OS linux
BUILD_OS linux

```
Final build report:
```asm
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
```
./configure (tagged token: incl checking, creating, generating, using, updating..)
```asm
export USE_R2_CAPSTONE=

configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc [...] ppc_pseudo parse.x86_pseudo
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
Generating r_version.h file
Update libr/include/r_version.h
```
here's the libs:
```asm
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
LD libr_socket.so
Cloning into 'capstone'...
CC libbochs.c
```
After several "minor" *warnings*, the error is getting more serious..
This is where *serious* errors came up..."e.g. unsupported cpu??"
```asm
[...]
p/native/linux/linux_debug.c: In function linux_reg_profile・
p/native/linux/linux_debug.c:28:2: error: #error "Unsupported Linux CPU"
p/native/linux/linux_debug.c: In function linux_handle_signals・
p/native/linux/linux_debug.c:43:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c: In function print_fpu・
p/native/linux/linux_debug.c:291:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function linux_reg_read・
p/native/linux/linux_debug.c:376:3: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c:383:4: error: unknown type name _DEBUG_REG_T・
p/native/linux/linux_debug.c:296:7: warning: variable howfpu・set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: In function linux_reg_write・
p/native/linux/linux_debug.c:425:43: error: struct user・has no member named 穹_debugreg・
p/native/linux/linux_debug.c:431:17: error: _DEBUG_REG_T・undeclared (first use in this function)
p/native/linux/linux_debug.c:431:17: note: each undeclared identifier is reported only once for each function it appears in
p/native/linux/linux_debug.c:444:48: error: egs・undeclared (first use in this function)
CC asm_malbolge.c
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:203:13: warning: print_fpu・defined but not used [-Wunused-function]
CC asm_mcs96.c
p/native/linux/linux_debug.c: In function Linux_reg_profile・
p/native/linux/linux_debug.c:30:1: warning: control reaches end of non-void function [-Wreturn-type]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[4]: *** Waiting for unfinished jobs....
CC asm_mips_cs.c
CC asm_mips_gnu.c
CC mips-dis.c
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
CC mips16-opc.c
CC mips-opc.c
CC mipsasm.c
[...]
```
And this is the "kills" for the compilation session..
```asm
CC elf32-xtensa.c
CC asm_z80.c
CC asm_z80_cr.c
CC asm.c
CC code.c
asm.c: In function xxx_asm_new・
asm.c:131:14: warning: unused variable static_plugin・[-Wunused-variable]
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
```
utf8のコード↓
```c
CC linux_debug.c
CC asm_spc700.c
CC asm_sysz.c
CC asm_tms320.c
CC asm_tricore.c
CC tricore-dis.c
CC tricore-opc.c
CC cpu-tricore.c
CC asm_v810.c
CC asm_v850.c
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
p/native/linux/linux_debug.c: In function 'linux_reg_write':
p/native/linux/linux_debug.c:425:43: error: 'struct user' has no member named 'u_debugreg'
p/native/linux/linux_debug.c:431:17: error: 'R_DEBUG_REG_T' undeclared (first use in this function)
p/native/linux/linux_debug.c:431:17: note: each undeclared identifier is reported only once for each function it appears in
p/native/linux/linux_debug.c:444:48: error: 'regs' undeclared (first use in this function)
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:203:13: warning: 'print_fpu' defined but not used [-Wunused-function]
p/native/linux/linux_debug.c: In function 'linux_reg_profile':
p/native/linux/linux_debug.c:30:1: warning: control reaches end of non-void function [-Wreturn-type]
make[4]: *** [p/native/linux/linux_debug.o] Error 1
make[3]: *** [foo] Error 2
make[2]: *** [debug] Error 2
make[2]: *** Waiting for unfinished jobs....
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
asm.c: In function 'r_asm_new':
asm.c:131:14: warning: unused variable 'static_plugin' [-Wunused-variable]
LD libr_asm.so
CC asm_propeller.c
CC propeller_disas.c
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
gcc: warning: /test/radare2/libr/../shlr/capstone/libcapstone.a: linker input file unused because linking not done
make[1]: *** [all] Error 2
make: *** [all] Error 2
Oops
```
opened issue radare/radare2#4720
https://github.com/radare/radare2/issues/4720

test to be continued in :
https://github.com/unixfreaxjp/dev/blob/master/r2ppc-2.md

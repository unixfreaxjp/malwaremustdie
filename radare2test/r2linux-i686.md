After previous error, here: https://github.com/unixfreaxjp/dev/blob/master/r2freebsd-i686.md

I was concenred and checked into Linux distro right away and doing the test,

it is showned that the same error occured:

```asm
$ git pull
Already up-to-date.
rik@goliath:~/radare2$ sys/install.sh
WARNING: Updating from remote repository
Already up-to-date.
Building on Linux : computing number of allowed parallel jobs.
Maximum allowed RAM memory per job is 150000 kB.
Number of CPUs is 4 and current free RAM allows us to run 18 jobs in parallel.
So, the build will run on 4 job(s).

export USE_R2_CAPSTONE=

/home/test/radare2
configure-plugins: Loading ./plugins.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.chip8 anal.cr16 anal.cris anal.dalvik anal.ebc anal.gb anal.h8300 anal.hexagon anal.i4004 anal.i8080 anal.java anal.m68k_cs anal.malbolge anal.mcore anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.wasm anal.ws anal.x86_cs anal.xap anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.chip8 asm.cr16 asm.cris_gnu asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hexagon asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k_cs asm.malbolge asm.mcore asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic asm.ppc_cs asm.ppc_gnu asm.propeller asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.wasm asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.xap asm.xcore_cs asm.xtensa asm.z80 bin.any bin.art bin.avr bin.bf bin.bflt bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mdmp bin.menuet bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.nro bin.nso bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.sfc bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.wasm bin.xbe bin.z64 bin.zimg bin_ldr.ldr_linux bin_xtr.xtr_dyldcache bin_xtr.xtr_fatmach0 bin_xtr.xtr_pemixed bp.arm bp.bf bp.mips bp.ppc bp.x86 core.a2f core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.cps2 crypto.des crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.serpent crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.io debug.native debug.null debug.qnx debug.rap debug.windbg egg.exec egg.xor fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.io fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.r2 fs.reiserfs fs.sfs fs.tar fs.udf fs.ufs fs.xfs io.ar io.bfdbg io.bochs io.debug io.default io.gdb io.gprobe io.gzip io.http io.ihex io.mach io.malloc io.mmap io.null io.procpid io.ptrace io.qnx io.r2k io.r2pipe io.r2web io.rap io.rbuf io.self io.shm io.sparse io.tcp io.w32 io.w32dbg io.windbg io.winedbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.avr_pseudo parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.sh_pseudo parse.x86_pseudo parse.z80_pseudo
cp: './plugins.cfg' and 'plugins.cfg' are the same file
checking build system type... i686-unknown-linux-gnu
checking host system type... i686-unknown-linux-gnu
checking target system type... i686-unknown-linux-gnu
checking for working directories... current
using prefix '/usr'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
checking for libmagic ... no
Using PKGCONFIG: pkg-config
checking pkg-config flags for capstone... no
checking for libz ... yes
checking for libzip ... no
checking for libxxhash ... no
checking declaration of ADDR_NO_RANDOMIZE in sys/personality.h... yes
checking function arc4random_uniform() in c... no
checking function explicit_bzero() in c... no
checking for libssl ... yes
checking pkg-config flags for openssl... yes
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
creating pkgcfg/r_egg.pc
creating pkgcfg/r_crypto.pc
cleaning temporally files... done

Final report:
 - PREFIX = /usr
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - USE_CAPSTONE = 0
 - HAVE_FORK = 1
 - VERSION = 3.0.0-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - USE_LIB_XXHASH = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - HAVE_ARC4RANDOM_UNIFORM = 0
 - HAVE_EXPLICIT_BZERO = 0
 - USEROSTYPE = gnulinux
 - LIBVERSION = 3.0.0-git
 - BUILD = i686-unknown-linux-gnu
 - HOST = i686-unknown-linux-gnu
 - TARGET = i686-unknown-linux-gnu
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
ar: creating libr_z.a
CC zip_add.c
CC zip_add_dir.c
CC zip_add_entry.c
CC zip_close.c
In file included from ../include/zipconf.h:16:0,
                 from ../include/zip.h:58,
                 from zipint.h:53,
                 from zip_add.c:37:
../../../libr/include/r_types.h:212:52: error: expected ';', ',' or ')' before 'str'
 typedef int (*PrintfCallback)(const char *restrict str, ...);
                                                    ^
In file included from ../include/zipconf.h:16:0,
                 from ../include/zip.h:58,
                 from zipint.h:53,
                 from zip_add_dir.c:37:
../../../libr/include/r_types.h:212:52: error: expected ';', ',' or ')' before 'str'
 typedef int (*PrintfCallback)(const char *restrict str, ...);
                                                    ^
In file included from ../include/zipconf.h:16:0,
                 from ../include/zip.h:58,
                 from zipint.h:53,
                 from zip_add_entry.c:38:
../../../libr/include/r_types.h:212:52: error: expected ';', ',' or ')' before 'str'
 typedef int (*PrintfCallback)(const char *restrict str, ...);
                                                    ^
/home/test/radare2/libr/../global.mk:41: recipe for target 'zip_add_dir.o' failed
make[2]: *** [zip_add_dir.o] Error 1
make[2]: *** Waiting for unfinished jobs....
/home/test/radare2/libr/../global.mk:41: recipe for target 'zip_add.o' failed
make[2]: *** [zip_add.o] Error 1
/home/test/radare2/libr/../global.mk:41: recipe for target 'zip_add_entry.o' failed
make[2]: *** [zip_add_entry.o] Error 1
In file included from ../include/zipconf.h:16:0,
                 from ../include/zip.h:58,
                 from zipint.h:53,
                 from zip_close.c:36:
../../../libr/include/r_types.h:212:52: error: expected ';', ',' or ')' before 'str'
 typedef int (*PrintfCallback)(const char *restrict str, ...);
                                                    ^
/home/test/radare2/libr/../global.mk:41: recipe for target 'zip_close.o' failed
make[2]: *** [zip_close.o] Error 1
Makefile:25: recipe for target 'zip/libr_zip.a' failed
make[1]: *** [zip/libr_zip.a] Error 2
Makefile:57: recipe for target 'all' failed
make: *** [all] Error 2

$ date&&git describe --all --long
Sat Sep 15 20:52:56 JST 2018
heads/master-0-g8274d30
```

End of additional report

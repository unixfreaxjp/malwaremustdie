Test for r2 with the "configure --disable-debugger" option.
This test objectivity:

1. Build test .............. OK!

2. ESIL disabled test .......OK!


In order to test configure --disable-debugger I was tweaking the build.sh in these part:
```asm
  :
if [ -d shlr/capstone/.git ]; then
( cd shlr/capstone ; git clean -xdf )
fi
[ "`uname`" = Linux ] && export LDFLAGS="-Wl,--as-needed ${LDFLAGS}"
if [ -z "${KEEP_PLUGINS_CFG}" ]; then
        rm -f plugins.cfg
fi
unset DEPS
./configure ${CFGARG} --prefix=${PREFIX} --disable-debugger || exit 1
${MAKE} -s -j${MAKE_JOBS} MAKE_JOBS=${MAKE_JOBS} || exit 1
if [ "`uname`" = Darwin ]; then
        ${MAKE} osx-sign osx-sign-libs CERTID="${CERTID}" || (
                echo "CERTID not defined. If you want the bins signed to debug without root"
                echo "follow the instructions described in doc/osx and run make osx-sign."
        )
fi
 :
```
this is for my test purpose, so DO NOT USE THIS METHOD FOR PRODUCTION @unixfreaxjp

```asm
################################
##                            ##
##       BUILD TEST           ##
##                            ##
################################


~/radare2$ sys/install.sh  --without-pull
sudo is /usr/bin/sudo

export USE_R2_CAPSTONE=

configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.avr bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking target system type... x86_64-unknown-linux-gnu
checking for working directories... current
using prefix '/usr'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
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
 - VERSION = 0.10.4-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 0
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 0.10.4-git
 - BUILD = x86_64-unknown-linux-gnu
 - HOST = x86_64-unknown-linux-gnu
 - TARGET = x86_64-unknown-linux-gnu
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
     :

     :
   :
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

  CC      arch/M68K/M68KInstPrinter.o
ar: creating lib/libbochs.a
a - src/libbochs.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KModule.o
CC cdb.c
CC buffer.c
ar: creating libr_wind.a
CC cdb_make.c
CC ls.c
  CC      arch/Mips/MipsDisassembler.o
  CC      arch/Mips/MipsInstPrinter.o
CC ht.c
  CC      arch/Mips/MipsMapping.o
CC sdb.c
CC num.c
CC base64.c
CC match.c
  CC      arch/Mips/MipsModule.o
CC json.c
CC ns.c
  CC      arch/PowerPC/PPCDisassembler.o
  CC      arch/PowerPC/PPCInstPrinter.o
CC lock.c
CC util.c
CC disk.c
  CC      arch/PowerPC/PPCMapping.o
CC query.c
CC array.c
CC fmt.c
CC journal.c
CC main.c
  CC      arch/PowerPC/PPCModule.o
  CC      arch/Sparc/SparcDisassembler.o
  CC      arch/Sparc/SparcInstPrinter.o
AR libsdb.a
ar: creating libsdb.a
  CC      arch/Sparc/SparcMapping.o
  CC      arch/Sparc/SparcModule.o
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

  CC      arch/SystemZ/SystemZDisassembler.o
  CC      arch/SystemZ/SystemZInstPrinter.o
  CC      arch/SystemZ/SystemZMapping.o
  CC      arch/SystemZ/SystemZModule.o
CC cdb.c
  CC      arch/SystemZ/SystemZMCTargetDesc.o
CC buffer.c
  CC      arch/X86/X86DisassemblerDecoder.o
  CC      arch/X86/X86Disassembler.o
CC cdb_make.c
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Mapping.o
CC ls.c
CC ht.c
CC sdb.c
  CC      arch/X86/X86Module.o
  CC      arch/XCore/XCoreDisassembler.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
CC num.c
  CC      arch/XCore/XCoreModule.o
CC base64.c
  CC      MCInst.o
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
ar: creating libsdb.a
  AR      libcapstone.a
ar: creating ./libcapstone.a
make -C sdb
CC main.c
BIN sdb
CC PIC cdb_make.c
CC PIC ls.c
CC PIC ht.c
CC PIC buffer.c
CC PIC sdb.c
CC PIC base64.c
CC PIC match.c
CC PIC num.c
CC PIC cdb.c
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
CC libgdbr.c
CC packet.c
CC core.c
CC messages.c
CC utils.c
ar: creating lib/libgdbr.a
a - src/libgdbr.o
a - src/packet.o
a - src/core.o
a - src/messages.o
a - src/utils.o
make -C qnx
CC packet.c
CC core.c
CC utils.c
CC libqnxr.c
CC sigutil.c
ar: creating lib/libqnxr.a
a - src/packet.o
a - src/core.o
a - src/utils.o
a - src/libqnxr.o
a - src/sigutil.o
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
DIR magic
DIR bp
DIR search
DIR config
CC reg.c
CC arena.c
CC value.c
CC apprentice.c
CC cons.c
CC cond.c
CC ascmagic.c
CC pipe.c
CC search.c
CC bp.c
CC double.c
CC config.c
CC fsmagic.c
CC profile.c
CC output.c
CC grep.c
CC less.c
CC utf8.c
CC line.c
CC bytepat.c
CC watch.c
CC callback.c
CC funcs.c
CC hud.c
LD libr_reg.so
CC rgb.c
CC input.c
CC pal.c
LD libr_config.so
CC editor.c
CC io.c
CC is_tar.c
CC 2048.c
CC canvas.c
CC magic.c
CC strings.c
CC canvas_line.c
CC softmagic.c
CC aes-find.c
CC plugin.c
CC rsa-find.c
CC regexp.c
CC xrefs.c
CC keyword.c
CC traptrace.c
CC bp_arm.c
CC bp_bf.c
CC bp_mips.c
LD libr_cons.so
CC bp_ppc.c
CC bp_x86.c
LD libr_search.so
LD libr_bp.so
LD libr_magic.so
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
CC io_gzip.c
CC io_http.c
CC io_ihex.c
CC crypto_aes_algo.c
CC io_mach.c
CC io_malloc.c
CC io_mmap.c
LD libr_flags.so
CC crypto_aes_cbc.c
CC crypto_base64.c
CC io_procpid.c
CC io_ptrace.c
CC io_qnx.c
CC io_r2pipe.c
CC crypto_base91.c
CC io_r2web.c
LD libr_lang.so
CC io_rap.c
CC crypto_blowfish.c
CC crypto_punycode.c
CC io_self.c
CC io_shm.c
SDB dos-x86-16
SDB ios-x86-32
CC io_sparse.c
SDB ios-arm-32
SDB ios-arm-64
CC crypto_rc2.c
CC io_w32.c
SDB linux-x86-32
SDB linux-x86-64
CC io_w32dbg.c
CC crypto_rc4.c
CC crypto_rc6.c
SDB linux-arm-32
CC io_windbg.c
SDB linux-mips-32
SDB linux-sparc-32
CC io_zip.c
CC io.c
SDB darwin-x86-32
SDB darwin-x86-64
SDB netbsd-x86-32
CC plugin.c
SDB freebsd-x86-32
CC crypto_rol.c
CC map.c
CC crypto_ror.c
SDB openbsd-x86-32
CC section.c
SDB openbsd-x86-64
CC crypto_rot.c
SDB windows-x86-32
CC desc.c
SDB windows-x86-64
CC cache.c
p/io_zip.c: In function 穩_io_zip_slurp_file・
p/io_zip.c:149:5: warning: suggest parentheses around assignment used as truth value [-Wparentheses]
     res = zfo->opened = true;
     ^
CC crypto_xor.c
CC crypto.c
LD libr_syscall.so
CC undo.c
CC buffer.c
CC vio.c
LD libr_crypto.so
LD libr_io.so
DIR fs
DIR anal
DIR bin
CC bin.c
CC dbginfo.c
CC anal_6502.c
CC anal_8051.c
CC bin_write.c
CC 8051.c
CC demangle.c
CC anal_arc.c
CC dwarf.c
CC anal_arm_cs.c
CC anal_arm_gnu.c
CC filter.c
CC be_arm.c
  SDB dospart
CC cp-demangle.c
CC anal_avr.c
CC anal_bf.c
CC anal_cr16.c
CC bin_any.c
CC cr16_disas.c
SDB linux-x86-32
SDB linux-x86-64
SDB darwin-x86-64
SDB windows-x86-32
SDB windows-x86-64
CC anal_cris.c
CC bin_art.c
CC anal_csr.c
CC anal_dalvik.c
CC anal_ebc.c
CC bin_avr.c
CC ebc_disas.c
CC bin_bf.c
CC anal_gb.c
CC fs_cpio.c
CC anal_h8300.c
CC bin_bios.c
CC h8300_disas.c
CC bin_bootimg.c
CC anal_i4004.c
CC anal_i8080.c
CC bin_cgc.c
CC anal_java.c
CC bin_coff.c
CC anal_m68k.c
CC fs_ext2.c
CC coff.c
In file included from /test/radare2/libr/..//libr/bin/p/bin_cgc.c:10:0:
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 稙ntries・
CC bin_dex.c
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 穉bj・set but not used [-Wunused-but-set-variable]
  struct Elf_(r_bin_elf_obj_t)* obj;
                                ^
/test/radare2/libr/..//libr/bin/p/bin_cgc.c: At top level:
/test/radare2/libr/..//libr/bin/p/bin_elf.c:628:15: warning: 穡atch_relocs・defined but not used [-Wunused-function]
 static RList* patch_relocs(RBin *b) {
               ^
CC anal_m68k_cs.c
CC anal_malbolge.c
CC anal_mips_cs.c
CC dex.c
CC fs_fat.c
CC anal_mips_gnu.c
CC bin_dol.c
CC anal_msp430.c
CC msp430_disas.c
CC bin_dyldcache.c
CC bin_elf.c
CC fs_fb.c
CC anal_nios2.c
CC bin_dbginfo_elf.c
CC anal_null.c
CC bin_write_elf.c
CC anal_pic18c.c
CC elf.c
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 稙ntries・
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 穉bj・set but not used [-Wunused-but-set-variable]
  struct Elf_(r_bin_elf_obj_t)* obj;
                                ^
CC anal_ppc_cs.c
CC fs_hfs.c
CC fs_hfsplus.c
CC anal_ppc_gnu.c
CC elf_write.c
CC anal_riscv.c
CC bin_elf64.c
CC anal_rsp.c
CC fs_iso9660.c
CC fs_jfs.c
CC rsp_idec.c
CC anal_sh.c
CC bin_dbginfo_elf64.c
CC anal_snes.c
In file included from /test/radare2/libr/..//libr/bin/p/bin_elf64.c:4:0:
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 稙ntries・
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 穉bj・set but not used [-Wunused-but-set-variable]
  struct Elf_(r_bin_elf_obj_t)* obj;
                                ^
CC bin_write_elf64.c
CC anal_sparc_cs.c
CC anal_sparc_gnu.c
CC fs_minix.c
CC elf64.c
CC elf64_write.c
CC anal_sysz.c
CC anal_tms320.c
CC bin_fs.c
CC anal_tms320_c55x_plus.c
CC fs_ntfs.c
CC bin_java.c
CC tms320_dasm.c
CC ins.c
CC c55plus.c
CC bin_mach0.c
CC c55plus_decode.c
CC mach0.c
CC mach0_classes.c
CC decode_funcs.c
CC fs_posix.c
CC utils.c
CC hashtable.c
CC mach064_classes.c
CC hashvector.c
CC anal_v810.c
CC fs_reiserfs.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 稱ns_hash・defined but not used [-Wunused-variable]
 static HASHCODE_ENTRY_T ins_hash[] = {
                         ^
CC v810_disas.c
CC anal_v850.c
CC v850_disas.c
CC bin_write_mach0.c
CC bin_mach064.c
CC fs_sfs.c
CC anal_vax.c
CC anal_ws.c
CC anal_x86_cs.c
CC bin_write_mach064.c
CC fs_squash.c
CC anal_x86_udis.c
CC esil_x86_udis.c
CC anal_xcore_cs.c
CC mach064.c
CC fs_tar.c
CC fs_udf.c
CC bin_mbn.c
CC anal_xtensa.c
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c: In function 秣nop_esil・
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:25:53: warning: comparison between 窗86_op_type・and 稙num arm_op_type・[-Wenum-compare]
 #define ISIMM(x) insn->detail->x86.operands[x].type == ARM_OP_IMM
                                                     ^
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1004:7: note: in expansion of macro 礫SIMM・
   if (ISIMM (1)) {
       ^
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:25:53: warning: comparison between 窗86_op_type・and 稙num arm_op_type・[-Wenum-compare]
 #define ISIMM(x) insn->detail->x86.operands[x].type == ARM_OP_IMM
                                                     ^
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1012:7: note: in expansion of macro 礫SIMM・
   if (ISIMM (0)) {
       ^
CC bin_mz.c
CC mz.c
CC anal_z80.c
CC meta.c
CC reflines.c
CC fs_ufs.c
CC fs_xfs.c
CC ref.c
CC bin_nes.c
CC bin_nin3ds.c
CC bin_ninds.c
In file included from /test/radare2/libr/..//libr/anal/p/anal_z80.c:9:0:
/test/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 窘80_op・defined but not used [-Wunused-variable]
 static z80_opcode z80_op[] = {
                   ^
CC fs.c
CC file.c
CC op.c
CC fcn.c
CC bb.c
CC var.c
CC bin_ningb.c
CC bin_ningba.c
CC bin_omf.c
CC omf.c
CC bin_p9.c
CC cond.c
CC value.c
CC cc.c
CC diff.c
LD libr_fs.so
CC p9bin.c
CC types.c
CC bin_pe.c
CC pe.c
CC fcnstore.c
CC bin_pe64.c
CC hint.c
CC pe64.c
CC bin_pebble.c
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c: In function 穡arse_symbol_table・
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c:368:7: warning: variable 穰ext・set but not used [-Wunused-but-set-variable]
  ut64 text = 0LL;
       ^
CC anal.c
CC data.c
CC xrefs.c
CC bin_psxexe.c
CC esil.c
CC sign.c
In file included from /test/radare2/libr/..//libr/bin/p/../format/pe/pe64.c:4:0:
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c: In function 穡arse_symbol_table・
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c:368:7: warning: variable 穰ext・set but not used [-Wunused-but-set-variable]
  ut64 text = 0LL;
       ^
CC anal_ex.c
CC bin_rar.c
CC bin_smd.c
CC bin_sms.c
CC bin_spc700.c
CC switch.c
CC state.c
CC cycles.c
CC bin_te.c
CC esil_stats.c
CC te.c
CC bin_vsf.c
CC esil_trace.c
CC bin_xbe.c
CC flirt.c
CC labels.c
CC esil2reil.c
CC bin_zimg.c
CC zimg.c
CC pin.c
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
LD libr_anal.so
LD libr_bin.so
/test/radare2/libr/bin/p
SHLR=/test/radare2/libr/..//libr/../shlr
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
Makefile:8: extraneous text after 'ifeq' directive
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
Makefile:8: extraneous text after 'ifeq' directive
CC signal.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC aarch64-dis.c
CC aarch64-dis-2.c
CC aarch64-opc.c
CC map.c
CC aarch64-opc-2.c
CC trace.c
CC asm_arm_winedbg.c
CC arg.c
CC asm_avr.c
CC asm_bf.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC debug.c
CC cris-opc.c
CC plugin.c
CC asm_csr.c
CC asm_dalvik.c
CC asm_dcpu16.c
CC snap.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hppa_gnu.c
CC pid.c
CC hppa-dis.c
CC asm_i4004.c
CC asm_i8080.c
CC asm_java.c
CC reg.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC desc.c
CC lanai-opc.c
CC esil.c
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
CC m68k_disasm.c
CC debug_bf.c
CC asm_m68k_cs.c
CC asm_malbolge.c
CC asm_mcs96.c
CC debug_bochs.c
CC asm_mips_cs.c
CC debug_esil.c
CC asm_mips_gnu.c
CC debug_gdb.c
CC debug_native.c
CC mips-dis.c
CC mips16-opc.c
CC debug_qnx.c
CC debug_rap.c
CC mips-opc.c
CC mipsasm.c
CC debug_wind.c
CC linux_debug.c
CC procfs.c
CC asm_msp430.c
CC linux_coredump.c
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
LD libr_debug.so
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
Makefile:8: extraneous text after 'ifeq' directive
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
        ln -fs "/test/radare2/man/$FILE" "/usr/share/man/man1/$FILE" ; done
cd "/usr/share/man/man1" && ln -fs radare2.1 r2.1
for FILE in *.7 ; do \
        ln -fs "/test/radare2/man/$FILE" "/usr/share/man/man7/$FILE" ; done
/usr/bin/install -d "/usr/share/doc/radare2"
cd doc ; for FILE in * ; do \
        ln -fs "/test/radare2/doc/$FILE" "/usr/share/doc/radare2" ; done
cd pkgcfg ; for FILE in *.pc ; do \
        ln -fs "${PWD}/$FILE" "/usr/lib/pkgconfig/$FILE" ; done
rm -rf "/usr/share/radare2/0.10.4-git/www"
rm -rf "/usr/lib/radare2/0.10.4-git/www" # old dir
mkdir -p "/usr/share/radare2/0.10.4-git/www"
cd "/usr/share/radare2/0.10.4-git/www" ; \
        for FILE in "/test/radare2/shlr/www/"* ; do \
                ln -fs "$FILE" "/usr/share/radare2/0.10.4-git/www" ; done
cd libr && make install-symlink
make[1]: Entering directory '/test/radare2/libr'
mkdir -p "/usr/bin" \
        "/usr/include" \
        "/usr/lib/pkgconfig" \
        "/usr/lib/radare2/0.10.4-git"
rm -rf "/usr/include/libr" && ln -fs "/test/radare2/libr/include" "/usr/include/libr"
cd ../pkgcfg && for FILE in *.pc ; do \
        if [ -e "/test/radare2/libr/../pkgcfg/${FILE}" ] ; then \
                ln -fs "/test/radare2/libr/../pkgcfg/${FILE}" \
                        "/usr/lib/pkgconfig/${FILE}" ; \
        fi ; \
done
cd "/usr/lib/radare2" ; rm -f last ; ln -fs "0.10.4-git" last
make[1]: Leaving directory '/test/radare2/libr'
cd binr && make install-symlink
make[1]: Entering directory '/test/radare2/binr'
mkdir -p "/usr/bin"
for BINARY in rax2 rasm2 rabin2 rahash2 radiff2 radare2 rafind2 rarun2 ragg2 r2agent ; do ln -fs "/test/radare2/binr/$BINARY/$BINARY" "/usr/bin/$BINARY" ; done
ln -fs "/test/radare2/binr/ragg2/ragg2-cc" "/usr/bin/ragg2-cc"
ln -fs "/test/radare2/binr/r2pm/r2pm" "/usr/bin/r2pm"
rm -rf "/usr/share/radare2/0.10.4-git/r2pm"
mkdir -p "/usr/share/radare2/0.10.4-git/"
#ln -fs "/test/radare2/binr/r2pm/d" "/usr/share/radare2/0.10.4-git/r2pm"
ln -fs "/usr/bin/radare2" "/usr/bin/r2"
ln -fs "/test/radare2/binr/preload/libr2.so" "/usr/lib/libr2.so"
cd "/usr/lib" && \
        mv libr2.so libr2.so.0.10.4-git && \
        ln -fs libr2.so.0.10.4-git libr2.so
make[1]: Leaving directory '/test/radare2/binr'
cd shlr && make install-symlink
make[1]: Entering directory '/test/radare2/shlr'
mkdir -p "/usr/lib"
#cd tcc ; for FILE in libr_tcc* ; do \
#       ln -fs `pwd`/$FILE /usr/lib/$FILE ; done
make[1]: Leaving directory '/test/radare2/shlr'
for DIR in libr/cons/d libr/bin/d libr/asm/d libr/syscall/d libr/magic/d libr/anal/d ; do (\
        cd "$DIR" ; \
        echo "$DIR" ; \
        make install-symlink ); \
done
libr/cons/d
make[1]: Entering directory '/test/radare2/libr/cons/d'
mkdir -p "/usr/share/radare2/0.10.4-git/cons"
for FILE in * ; do \
        if [ $FILE != Makefile ]; then \
                ln -fs "/test/radare2/libr/cons/d/$FILE" "/usr/share/radare2/0.10.4-git/cons/$FILE" ; \
        fi ; \
done
make[1]: Leaving directory '/test/radare2/libr/cons/d'
libr/bin/d
make[1]: Entering directory '/test/radare2/libr/bin/d'
mkdir -p "/usr/share/radare2/0.10.4-git/format"
for FILE in * ; do \
        if [ "$FILE" != Makefile ]; then \
                ln -fs "/test/radare2/libr/bin/d/$FILE" "/usr/share/radare2/0.10.4-git/format/$FILE" ; \
        fi ; \
done
make[1]: Leaving directory '/test/radare2/libr/bin/d'
libr/asm/d
make[1]: Entering directory '/test/radare2/libr/asm/d'
mkdir -p "/usr/lib/radare2/0.10.4-git/opcodes"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/asm/d/$FILE" "/usr/lib/radare2/0.10.4-git/opcodes/$FILE" ; done
make[1]: Leaving directory '/test/radare2/libr/asm/d'
libr/syscall/d
make[1]: Entering directory '/test/radare2/libr/syscall/d'
mkdir -p "/usr/lib/radare2/0.10.4-git/syscall"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/syscall/d/$FILE" "/usr/lib/radare2/0.10.4-git/syscall/$FILE" ; done
make[1]: Leaving directory '/test/radare2/libr/syscall/d'
libr/magic/d
make[1]: Entering directory '/test/radare2/libr/magic/d'
mkdir -p "/usr/lib/radare2/0.10.4-git/magic"
cd default ; for FILE in * ; do ln -fs "/test/radare2/libr/magic/d/default/$FILE" \
        "/usr/lib/radare2/0.10.4-git/magic/$FILE" ; done
make[1]: Leaving directory '/test/radare2/libr/magic/d'
libr/anal/d
make[1]: Entering directory '/test/radare2/libr/anal/d'
mkdir -p "/usr/lib/radare2/0.10.4-git/fcnsign"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/anal/d/$FILE" "/usr/lib/radare2/0.10.4-git/fcnsign/$FILE" ; done
make[1]: Leaving directory '/test/radare2/libr/anal/d'
mkdir -p "/usr/lib/radare2/0.10.4-git/hud"
cd "/usr/lib/radare2/" ;\
        rm -f last ; ln -fs 0.10.4-git last
cd "/usr/share/radare2/" ;\
        rm -f last ; ln -fs 0.10.4-git last
ln -fs "/test/radare2/doc/hud" "/usr/lib/radare2/0.10.4-git/hud/main"
mkdir -p "/usr/share/radare2/0.10.4-git/"
sys/ldconfig.sh
./configure-plugins --rm-static //usr/lib/radare2/last/
configure-plugins: Loading ./plugins.cfg ..
Removed 97 shared plugins that are already static
~/radare2$

[07/04/16 10:59 PM] BUILD SUCCESS!!
```

```asm
################################
##                            ##
##  RUNNING TEST              ##
##                            ##
################################
```
Environment
```asm
$
$ date
Mon Jul  4 23:04:39 JST 2016
$ uname -a
Linux 3.16.0-4-amd64 #1 SMP 3.16.7-ckt25-1 (2016-03-06) x86_64 GNU/Linux
$ r2 -v
radare2 0.10.4-git 11832 @ linux-x86-64 git.0.10.3-409-gf41b706
commit: f41b70643718a3802ab2bd3967d2f1f051a16227 build: 2016-07-04
```asm

the test bin is /bin/ls
```asm
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
```
The simple run tests for debugger and ESIL:
```asm

$ r2 -d /bin/ls
Sorry. No debugger backend available.
$
$ r2 /bin/ls
 -- -bash: r2: command not found
[0x004048c5]> aeso
No debug register profile defined for 'PC'.
[0x004048c7]>
```
ESIL IS DISABLED, TEST IS 100% SUCCESS!

@unixfreaxjp

[EOF]

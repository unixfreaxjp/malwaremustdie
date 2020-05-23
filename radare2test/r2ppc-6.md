Test in PPC

1. Build test.....OK!

2. Running test...FAILED (See the running test section)

Result:
```asm
################################
##                            ##
##       BUILD TEST           ##
##                            ##
################################


powerpc:~/radare2$
powerpc:~/radare2$ date
Mon Jul  4 10:52:22 UTC 2016
powerpc:~/radare2$ git reset --hard
HEAD is now at 48d5e66 No more linux-ppc blindfixing. This one is for real
powerpc:~/radare2$ git pull
remote: Counting objects: 4111, done.
remote: Compressing objects: 100% (81/81), done.
Receiving objects: 100% (4111/4111), 2.51 MiB | 802 KiB/s, done.
remote: Total 4111 (delta 1948), reused 1918 (delta 1918), pack-reused 2112
Resolving deltas: 100% (3311/3311), completed with 524 local objects.
From https://github.com/radare/radare2
   48d5e66..2f5ead1  master     -> origin/master
 * [new branch]      sk2        -> origin/sk2
 * [new branch]      skiplist   -> origin/skiplist
From https://github.com/radare/radare2
 * [new tag]         0.10.3     -> 0.10.3
Updating 48d5e66..2f5ead1
Fast-forward
 .gitignore                                                                                         |    3 +
 .travis.yml                                                                                        |   10 +-
 Makefile                                                                                           |    6 +-
 README.md                                                                                          |   18 +-
 binr/Makefile                                                                                      |    6 +-
 binr/blob/Makefile                                                                                 |    2 -
 binr/blob/version.c                                                                                |    7 +-
 binr/preload/Makefile                                                                              |    2 +-
 binr/r2pm/d/armthumb                                                                               |   18 -
 binr/r2pm/d/baleful                                                                                |   20 -
 binr/r2pm/d/bcl                                                                                    |   17 -
 binr/r2pm/d/blackfin                                                                               |   18 -
 binr/r2pm/d/blessr2                                                                                |   23 -
 binr/r2pm/d/bokken                                                                                 |   15 -
 binr/r2pm/d/bpf                                                                                    |   18 -
 binr/r2pm/d/dlang                                                                                  |   18 -
 binr/r2pm/d/duktape                                                                                |   18 -
 binr/r2pm/d/io-ewf                                                                                 |   19 -
 binr/r2pm/d/keystone                                                                               |   21 -
 binr/r2pm/d/mdmp                                                                                   |   20 -
 binr/r2pm/d/microblaze                                                                             |   19 -
 binr/r2pm/d/msil                                                                                   |   19 -
 binr/r2pm/d/ppcdisasm                                                                              |   18 -
 binr/r2pm/d/psosvm                                                                                 |   17 -
 binr/r2pm/d/pyc                                                                                    |   19 -
 binr/r2pm/d/python                                                                                 |   15 -
 binr/r2pm/d/r2pipe-cs                                                                              |   27 -
 binr/r2pm/d/r2pipe-go                                                                              |   13 -
 binr/r2pm/d/r2pipe-js                                                                              |   21 -
 binr/r2pm/d/r2pipe-py                                                                              |   13 -
 binr/r2pm/d/r2pipe-rb                                                                              |   13 -
 binr/r2pm/d/radare2                                                                                |   14 -
 binr/r2pm/d/radeco                                                                                 |   16 -
 binr/r2pm/d/retdec                                                                                 |   22 -
 binr/r2pm/d/swf                                                                                    |   23 -
 binr/r2pm/d/swig                                                                                   |   15 -
 binr/r2pm/d/syms2elf                                                                               |   17 -
 binr/r2pm/d/tcc                                                                                    |   22 -
 binr/r2pm/d/unicorn                                                                                |   16 -
 binr/r2pm/d/unicorn-lib                                                                            |   15 -
 binr/r2pm/d/vala                                                                                   |   15 -
 binr/r2pm/d/valabind                                                                               |   15 -
 binr/r2pm/d/vapi                                                                                   |   15 -
 binr/r2pm/d/winapi                                                                                 |   18 -
 binr/r2pm/d/www-enyo                                                                               |   35 -
 binr/r2pm/d/www-m                                                                                  |   35 -
 binr/r2pm/d/www-p                                                                                  |   35 -
 binr/r2pm/d/www-t                                                                                  |   35 -
 binr/r2pm/d/x86bea                                                                                 |   19 -
 binr/r2pm/d/yara2                                                                                  |   18 -
 binr/r2pm/d/yara2-lib                                                                              |   15 -
 binr/r2pm/d/yara3                                                                                  |   18 -
 binr/r2pm/d/yara3-lib                                                                              |   15 -
 binr/r2pm/r2pm                                                                                     |  143 +-
 binr/rabin2/Makefile                                                                               |    2 +-
 binr/rabin2/rabin2.c                                                                               |   14 +-
 binr/radare2/Makefile                                                                              |    2 +-
 binr/radare2/radare2.c                                                                             |  196 +-
 binr/radiff2/Makefile                                                                              |    2 +-
 binr/radiff2/radiff2.c                                                                             |   86 +-
 binr/rafind2/Makefile                                                                              |    2 +-
 binr/rafind2/rafind2.c                                                                             |    1 +
 binr/ragg2/Makefile                                                                                |    2 +-
 binr/rahash2/Makefile                                                                              |    2 +-
 binr/rahash2/rahash2.c                                                                             |    5 +-
 binr/rasm2/Makefile                                                                                |    2 +-
 config-user.mk.acr                                                                                 |    1 +
 configure                                                                                          |   10 +-
 configure.acr                                                                                      |    3 +-
 doc/debug-internals.md                                                                             |  215 +
 doc/fortunes.fun                                                                                   |    3 +-
 doc/rapatch                                                                                        |   27 -
 doc/rapatch.md                                                                                     |   32 +
 libr/Jamroot                                                                                       |    1 -
 libr/Makefile                                                                                      |    2 +-
 libr/anal/Makefile                                                                                 |    2 +-
 libr/anal/anal.c                                                                                   |   54 +-
 libr/anal/bb.c                                                                                     |   34 +-
 libr/anal/cc.c                                                                                     |    3 +-
 libr/anal/cond.c                                                                                   |    1 +
 libr/anal/data.c                                                                                   |   13 +-
 libr/anal/esil.c                                                                                   |  410 +-
 libr/anal/esil2reil.c                                                                              |  270 +-
 libr/anal/esil_trace.c                                                                             |    2 +-
 libr/anal/fcn.c                                                                                    |  218 +-
 libr/anal/fcnstore.c                                                                               |    8 +-
 libr/anal/flirt.c                                                                                  |    3 +-
 libr/anal/meta.c                                                                                   |   65 +-
 libr/anal/op.c                                                                                     |  137 +-
 libr/anal/p/Makefile                                                                               |    2 +-
 libr/anal/p/anal_6502.c                                                                            |    9 +-
 libr/anal/p/anal_8051.c                                                                            |   17 +-
 libr/anal/p/anal_arm_cs.c                                                                          |  311 +-
 libr/anal/p/anal_avr.c                                                                             |  279 +-
 libr/anal/p/anal_csr.c                                                                             |   48 +-
 libr/anal/p/anal_dalvik.c                                                                          |   16 +-
 libr/anal/p/anal_ebc.c                                                                             |    3 +-
 libr/anal/p/anal_gb.c                                                                              |   92 +-
 libr/anal/p/anal_m68k.c                                                                            |    6 +-
 libr/anal/p/anal_malbolge.c                                                                        |    6 +-
 libr/anal/p/anal_mips_cs.c                                                                         |   34 +-
 libr/anal/p/anal_ppc_cs.c                                                                          |   26 +-
 libr/anal/p/anal_rsp.c                                                                             |  699 +++
 libr/anal/p/anal_x86_cs.c                                                                          |  296 +-
 libr/anal/p/rsp.mk                                                                                 |   12 +
 libr/anal/state.c                                                                                  |   23 +-
 libr/anal/value.c                                                                                  |   10 +-
 libr/anal/var.c                                                                                    |  347 +-
 libr/anal/xrefs.c                                                                                  |   16 +-
 libr/asm/Makefile                                                                                  |    3 +-
 libr/asm/arch/arm/armass.c                                                                         |   51 +-
 libr/asm/arch/arm/gnu/arm-dis.c                                                                    |    3 +-
 libr/asm/arch/avr/format.c                                                                         |   22 +-
 libr/asm/arch/hppa/gnu/hppa-dis.c                                                                  |    5 +-
 libr/asm/arch/m68k/m68k_disasm/m68k_disasm.c                                                       | 5540 +++++++++---------
 libr/asm/arch/rsp/rsp_idec.c                                                                       |  405 ++
 libr/asm/arch/rsp/rsp_idec.h                                                                       |  179 +
 libr/asm/arch/v810/v810_disas.c                                                                    |    2 +-
 libr/asm/asm.c                                                                                     |   37 +-
 libr/asm/d/Makefile                                                                                |    2 +-
 libr/asm/d/arm                                                                                     |    2 +-
 libr/asm/d/x86                                                                                     |  108 +-
 libr/asm/d/xtensa                                                                                  |  240 +
 libr/asm/p/Makefile                                                                                |    2 +-
 libr/asm/p/asm_avr.c                                                                               |   15 +-
 libr/asm/p/asm_cris_gnu.c                                                                          |    1 +
 libr/asm/p/asm_hppa_gnu.c                                                                          |    1 +
 libr/asm/p/asm_lanai_gnu.c                                                                         |    1 +
 libr/asm/p/asm_nios2.c                                                                             |    1 +
 libr/asm/p/asm_ppc_cs.c                                                                            |   20 +-
 libr/asm/p/asm_ppc_gnu.c                                                                           |    1 +
 libr/asm/p/asm_rsp.c                                                                               |  121 +
 libr/asm/p/asm_tricore.c                                                                           |   22 +-
 libr/asm/p/asm_vax.c                                                                               |    1 +
 libr/asm/p/asm_x86_cs.c                                                                            |    2 +-
 libr/asm/p/asm_x86_nz.c                                                                            |  407 +-
 libr/asm/p/asm_xtensa.c                                                                            |    1 +
 libr/asm/p/rsp.mk                                                                                  |   15 +
 libr/bin/Makefile                                                                                  |    2 +-
 libr/bin/bin.c                                                                                     |   49 +-
 libr/bin/d/Makefile                                                                                |    4 +-
 libr/bin/dbginfo.c                                                                                 |   25 +-
 libr/bin/demangle.c                                                                                |    1 +
 libr/bin/dwarf.c                                                                                   |   77 +-
 libr/bin/format/dex/dex.c                                                                          |   18 +-
 libr/bin/format/elf/elf.c                                                                          |  188 +-
 libr/bin/format/elf/elf.h                                                                          |    1 +
 libr/bin/format/mach0/dyldcache.c                                                                  |    4 +-
 libr/bin/format/mach0/fatmach0.c                                                                   |    5 +-
 libr/bin/format/mach0/mach0.c                                                                      |   64 +-
 libr/bin/format/objc/mach0_classes.c                                                               |    3 +-
 libr/bin/format/pe/pe.c                                                                            |  599 +-
 libr/bin/format/pe/pe.h                                                                            |    6 +-
 libr/bin/mangling/microsoft_demangle.c                                                             |    9 +-
 libr/bin/mangling/swift-sd.c                                                                       |   61 +-
 libr/bin/p/avr.mk                                                                                  |   10 +
 libr/bin/p/bin_avr.c                                                                               |  144 +
 libr/bin/p/bin_bios.c                                                                              |   13 +-
 libr/bin/p/bin_dex.c                                                                               |  230 +-
 libr/bin/p/bin_elf.c                                                                               |  185 +-
 libr/bin/p/bin_mach0.c                                                                             |    5 +-
 libr/bin/p/bin_mbn.c                                                                               |   11 +-
 libr/bin/p/bin_omf.c                                                                               |   58 +-
 libr/bin/p/bin_pe.c                                                                                |    9 +-
 libr/bin/p/bin_psxexe.c                                                                            |   24 +-
 libr/bin/p/bin_sms.c                                                                               |   36 +-
 libr/bin/p/bin_xbe.c                                                                               |   11 +-
 libr/bin/p/bin_xtr_dyldcache.c                                                                     |    2 +-
 libr/bin/p/bin_xtr_fatmach0.c                                                                      |    7 +-
 libr/bin/p/cgc.mk                                                                                  |    2 +-
 libr/bin/p/elf.mk                                                                                  |    2 +-
 libr/bin/p/mbn.mk                                                                                  |    2 +-
 libr/bin/p/te.mk                                                                                   |    2 +-
 libr/bin/pdb/dbi.c                                                                                 |   18 +-
 libr/bin/pdb/fpo.c                                                                                 |   23 +-
 libr/bin/pdb/gdata.c                                                                               |    5 +
 libr/bin/pdb/omap.c                                                                                |   35 +-
 libr/bin/pdb/pdb.c                                                                                 |   54 +-
 libr/bin/pdb/stream_pe.c                                                                           |    2 +
 libr/bin/pdb/tpi.c                                                                                 |  359 +-
 libr/bp/bp.c                                                                                       |   14 +-
 libr/bp/io.c                                                                                       |   59 +-
 libr/bp/traptrace.c                                                                                |    1 +
 libr/config/config.c                                                                               |    8 +-
 libr/cons/2048.c                                                                                   |   71 +-
 libr/cons/canvas.c                                                                                 |    1 +
 libr/cons/cons.c                                                                                   |  269 +-
 libr/cons/d/behelit                                                                                |   53 +
 libr/cons/editor.c                                                                                 |   23 +-
 libr/cons/grep.c                                                                                   |    5 +
 libr/cons/hud.c                                                                                    |   52 +-
 libr/cons/input.c                                                                                  |    3 +-
 libr/cons/less.c                                                                                   |   72 +-
 libr/cons/output.c                                                                                 |  106 +-
 libr/cons/pal.c                                                                                    |  119 +-
 libr/cons/rgb.c                                                                                    |   32 +-
 libr/cons/t/test-rgb.c                                                                             |    2 +-
 libr/core/Makefile                                                                                 |    2 +-
 libr/core/anal.c                                                                                   |  983 ++--
 libr/core/bin.c                                                                                    |   26 +-
 libr/core/cmd.c                                                                                    |  144 +-
 libr/core/cmd_anal.c                                                                               |  677 ++-
 libr/core/cmd_api.c                                                                                |    1 +
 libr/core/cmd_debug.c                                                                              |  917 +--
 libr/core/cmd_egg.c                                                                                |    4 +-
 libr/core/cmd_eval.c                                                                               |   58 +-
 libr/core/cmd_flag.c                                                                               |  103 +-
 libr/core/cmd_help.c                                                                               |   41 +-
 libr/core/cmd_info.c                                                                               |   28 +-
 libr/core/cmd_magic.c                                                                              |   30 +-
 libr/core/cmd_meta.c                                                                               |  182 +-
 libr/core/cmd_open.c                                                                               |   18 +-
 libr/core/cmd_print.c                                                                              |  250 +-
 libr/core/cmd_project.c                                                                            |    8 +-
 libr/core/cmd_search.c                                                                             |   99 +-
 libr/core/cmd_seek.c                                                                               |   40 +-
 libr/core/cmd_type.c                                                                               |   38 +-
 libr/core/cmd_write.c                                                                              |  258 +-
 libr/core/cmd_zign.c                                                                               |    2 +-
 libr/core/config.c                                                                                 |  193 +-
 libr/core/core.c                                                                                   |   81 +-
 libr/core/disasm.c                                                                                 | 1397 +++--
 libr/core/file.c                                                                                   |  104 +-
 libr/core/graph.c                                                                                  |   63 +-
 libr/core/hack.c                                                                                   |    1 +
 libr/core/log.c                                                                                    |    3 +-
 libr/core/p/Makefile                                                                               |    3 +-
 libr/core/p/anal.mk                                                                                |    1 +
 libr/core/p/core_anal.c                                                                            |    2 +-
 libr/core/p/core_java.c                                                                            |   26 +-
 libr/core/p/java.mk                                                                                |    4 +-
 libr/core/panels.c                                                                                 |    4 +-
 libr/core/plugin.c                                                                                 |    9 +-
 libr/core/project.c                                                                                |   31 +-
 libr/core/rtr.c                                                                                    |   35 +-
 libr/core/task.c                                                                                   |    8 +-
 libr/core/visual.c                                                                                 |   89 +-
 libr/core/vmenus.c                                                                                 |   62 +-
 libr/core/yank.c                                                                                   |    7 +-
 libr/crypto/Makefile                                                                               |    2 +-
 libr/crypto/crypto.c                                                                               |   10 +-
 libr/crypto/p/Makefile                                                                             |    2 +-
 libr/crypto/p/aes.mk                                                                               |    1 +
 libr/db/Jamroot                                                                                    |    3 -
 libr/db/README                                                                                     |   44 -
 libr/db/TODO                                                                                       |   31 -
 libr/db/db.c                                                                                       |  273 -
 libr/db/r.mk                                                                                       |    5 -
 libr/db/t/Makefile                                                                                 |    6 -
 libr/db/t/test.c                                                                                   |  109 -
 libr/db/table.c                                                                                    |   61 -
 libr/debug/Makefile                                                                                |   19 +-
 libr/debug/debug.c                                                                                 |  508 +-
 libr/debug/esil.c                                                                                  |   19 +-
 libr/debug/map.c                                                                                   |   15 +-
 libr/debug/p/debug_bf.c                                                                            |    4 +-
 libr/debug/p/debug_native.c                                                                        |  440 +-
 libr/debug/p/debug_qnx.c                                                                           |    1 +
 libr/debug/p/debug_wind.c                                                                          |    4 +
 libr/debug/p/native.mk                                                                             |    6 +-
 libr/debug/p/native/linux/linux_coredump.c                                                         | 1413 +++++
 libr/debug/p/native/linux/linux_coredump.h                                                         |  202 +
 libr/debug/p/native/linux/linux_debug.c                                                            |  185 +-
 libr/debug/p/native/linux/linux_debug.h                                                            |    1 +
 libr/debug/p/native/maps/darwin.c                                                                  |    5 +
 libr/debug/p/native/procfs.c                                                                       |   32 +
 libr/debug/p/native/procfs.h                                                                       |    3 +
 libr/debug/p/native/xnu/xnu_debug.c                                                                |    7 +-
 libr/debug/p/native/xnu/xnu_threads.c                                                              |    6 +-
 libr/debug/reg.c                                                                                   |    2 +-
 libr/debug/signal.c                                                                                |    1 +
 libr/debug/snap.c                                                                                  |    1 +
 libr/debug/trace.c                                                                                 |   76 +-
 libr/egg/Makefile                                                                                  |    4 +-
 libr/egg/egg.c                                                                                     |   12 +
 libr/egg/emit_x86.c                                                                                |    1 +
 libr/flags/Makefile                                                                                |    1 -
 libr/flags/flags.c                                                                                 |  121 +-
 libr/fs/file.c                                                                                     |    9 +-
 libr/fs/fs.c                                                                                       |   23 +-
 libr/fs/p/fs_posix.c                                                                               |    6 +
 libr/hash/calc.c                                                                                   |    1 +
 libr/hash/entropy.c                                                                                |   16 +-
 libr/hash/hash.c                                                                                   |    3 +-
 libr/hash/xxhash.c                                                                                 |    9 +-
 libr/include/ht.h                                                                                  |    5 +
 libr/include/r_anal.h                                                                              |   61 +-
 libr/include/r_asm.h                                                                               |    9 +-
 libr/include/r_bin.h                                                                               |    4 +-
 libr/include/r_bin_dwarf.h                                                                         |    2 +-
 libr/include/r_bp.h                                                                                |    7 +-
 libr/include/r_cons.h                                                                              |    9 +-
 libr/include/r_core.h                                                                              |   10 +-
 libr/include/r_db.h                                                                                |    3 +
 libr/include/r_debug.h                                                                             |  185 +-
 libr/include/r_diff.h                                                                              |    8 +-
 libr/include/r_endian.h                                                                            |   34 +
 libr/include/r_io.h                                                                                |   56 +-
 libr/include/r_lang.h                                                                              |    3 +
 libr/include/r_print.h                                                                             |    1 +
 libr/include/r_reg.h                                                                               |   28 +-
 libr/include/r_syscall.h                                                                           |    5 +-
 libr/include/r_types.h                                                                             |    1 +
 libr/include/r_userconf.h.acr                                                                      |    3 -
 libr/include/r_util.h                                                                              |  172 +-
 libr/include/sflib/linux-x86-32/sfsyscall.h                                                        |   14 +-
 libr/io/desc.c                                                                                     |   17 +-
 libr/io/io.c                                                                                       |  175 +-
 libr/io/map.c                                                                                      |   23 +-
 libr/io/p/io_bfdbg.c                                                                               |    9 +-
 libr/io/p/io_bochs.c                                                                               |    4 +-
 libr/io/p/io_debug.c                                                                               |   13 +-
 libr/io/p/io_default.c                                                                             |  110 +-
 libr/io/p/io_gdb.c                                                                                 |    8 +-
 libr/io/p/io_gzip.c                                                                                |   64 +-
 libr/io/p/io_http.c                                                                                |   33 +-
 libr/io/p/io_ihex.c                                                                                |  124 +-
 libr/io/p/io_mach.c                                                                                |  103 +-
 libr/io/p/io_malloc.c                                                                              |   92 +-
 libr/io/p/io_mmap.c                                                                                |  173 +-
 libr/io/p/io_procpid.c                                                                             |   62 +-
 libr/io/p/io_ptrace.c                                                                              |   44 +-
 libr/io/p/io_qnx.c                                                                                 |   26 +-
 libr/io/p/io_r2pipe.c                                                                              |    6 +-
 libr/io/p/io_r2web.c                                                                               |    9 +-
 libr/io/p/io_rap.c                                                                                 |    7 +-
 libr/io/p/io_self.c                                                                                |    6 +-
 libr/io/p/io_shm.c                                                                                 |    7 +-
 libr/io/p/io_sparse.c                                                                              |   13 +-
 libr/io/p/io_w32.c                                                                                 |    2 +-
 libr/io/p/io_w32dbg.c                                                                              |   70 +-
 libr/io/p/io_windbg.c                                                                              |    4 +-
 libr/io/p/io_zip.c                                                                                 |  510 +-
 libr/io/plugin.c                                                                                   |  125 +-
 libr/io/section.c                                                                                  |   16 +-
 libr/io/undo.c                                                                                     |   57 +-
 libr/io/vio.c                                                                                      |   45 +-
 libr/lang/lang.c                                                                                   |  104 +-
 libr/lang/p/c.c                                                                                    |    4 +-
 libr/lang/p/cpipe.c                                                                                |    3 +-
 libr/lang/p/pipe.c                                                                                 |   34 +-
 libr/lang/p/rust.c                                                                                 |    1 +
 libr/lang/p/vala.c                                                                                 |    8 +-
 libr/magic/funcs.c                                                                                 |   10 +-
 libr/parse/Makefile                                                                                |    4 +-
 libr/parse/code.c                                                                                  |    1 +
 libr/parse/p/parse_arm_pseudo.c                                                                    |  159 +-
 libr/parse/p/parse_att2intel.c                                                                     |    1 +
 libr/parse/p/parse_mips_pseudo.c                                                                   |  142 +-
 libr/parse/p/parse_mreplace.c                                                                      |   14 -
 libr/parse/p/parse_mreplace/mmemory.c                                                              |  103 +-
 libr/parse/p/parse_mreplace/mreplace.c                                                             |  125 +-
 libr/parse/p/parse_x86_pseudo.c                                                                    |  100 +-
 libr/parse/p/x86_pseudo.mk                                                                         |    3 +
 libr/parse/parse.c                                                                                 |    4 +
 libr/reg/arena.c                                                                                   |   30 +-
 libr/reg/cond.c                                                                                    |    1 +
 libr/reg/profile.c                                                                                 |    2 +
 libr/reg/reg.c                                                                                     |   72 +-
 libr/reg/value.c                                                                                   |    8 +-
 libr/rules.mk                                                                                      |    9 +-
 libr/search/bytepat.c                                                                              |    1 +
 libr/search/keyword.c                                                                              |   12 +-
 libr/search/search.c                                                                               |  157 +-
 libr/socket/http.c                                                                                 |    5 +-
 libr/socket/http_server.c                                                                          |    1 +
 libr/socket/r2pipe.c                                                                               |    2 +
 libr/socket/rap_server.c                                                                           |    1 +
 libr/socket/run.c                                                                                  |   89 +-
 libr/socket/socket.c                                                                               |    6 +-
 libr/symgraph.pl                                                                                   |    6 +-
 libr/syscall/Makefile                                                                              |    2 +-
 libr/syscall/d/ios-arm-32                                                                          |   72 +
 libr/syscall/d/ios-arm-64                                                                          |   72 +
 libr/syscall/ioports.c                                                                             |   71 +
 libr/syscall/syscall.c                                                                             |   42 +-
 libr/util/Makefile                                                                                 |    4 +
 libr/util/bitmap.c                                                                                 |   24 +-
 libr/util/buf.c                                                                                    |   64 +-
 libr/util/cache.c                                                                                  |    3 +-
 libr/util/calc.c                                                                                   |   25 +-
 libr/util/chmod.c                                                                                  |    1 +
 libr/util/debruijn.c                                                                               |   12 +-
 libr/util/diff.c                                                                                   |  117 +-
 libr/util/file.c                                                                                   |  122 +-
 libr/util/graph.c                                                                                  |   19 +-
 libr/util/hex.c                                                                                    |    1 +
 libr/util/ht.c                                                                                     |   33 +-
 libr/util/list.c                                                                                   |    6 +-
 libr/util/mem.c                                                                                    |    5 +
 libr/util/num.c                                                                                    |   22 +-
 libr/util/p_format.c                                                                               |  238 +-
 libr/util/pool.c                                                                                   |    9 +-
 libr/util/print.c                                                                                  |  136 +-
 libr/util/punycode.c                                                                               |    5 +-
 libr/util/queue.c                                                                                  |    1 +
 libr/util/range.c                                                                                  |   14 +-
 libr/util/regex/engine.c                                                                           |    3 +-
 libr/util/regex/regcomp.c                                                                          |   26 +-
 libr/{db/Makefile => util/sdb.mk}                                                                  |   29 +-
 libr/util/slist.c                                                                                  |    6 +
 libr/util/str.c                                                                                    |  191 +-
 libr/util/strht.c                                                                                  |    1 +
 libr/util/sys.c                                                                                    |    4 +
 libr/util/tree.c                                                                                   |    6 +
 man/r2pm.1                                                                                         |    9 +-
 man/radare2.1                                                                                      |    9 +-
 man/radiff2.1                                                                                      |    4 +-
 mk/armel.mk                                                                                        |   25 +
 pkgcfg/r_anal.pc.acr                                                                               |    2 +-
 pkgcfg/r_asm.pc.acr                                                                                |    2 +-
 pkgcfg/r_bin.pc.acr                                                                                |    2 +-
 pkgcfg/r_core.pc.acr                                                                               |    2 +-
 pkgcfg/r_db.pc.acr                                                                                 |   11 -
 pkgcfg/r_debug.pc.acr                                                                              |    2 +-
 pkgcfg/r_syscall.pc.acr                                                                            |    2 +-
 plugins.def.cfg                                                                                    |    3 +
 shlr/Makefile                                                                                      |   25 +-
 shlr/bochs/src/libbochs.c                                                                          |    6 +-
 shlr/capstone-patches/oobfix-X86_insn_reg_intel.patch                                              |   17 +
 shlr/gdb/Makefile                                                                                  |    3 +-
 shlr/java/class.c                                                                                  |  114 +-
 shlr/java/dsojson.c                                                                                |   24 +-
 shlr/sdb/src/sdb.c                                                                                 |   54 +-
 shlr/sdb/src/sdb.h                                                                                 |    2 +-
 shlr/www/console.html                                                                              |   79 +
 shlr/www/enyo/Makefile                                                                             |   30 -
 shlr/www/enyo/build/app.css                                                                        | 1432 -----
 shlr/www/enyo/build/enyo.css                                                                       |  181 -
 shlr/www/enyo/build/enyo.js                                                                        | 4283 --------------
 shlr/www/enyo/colors/index.html                                                                    |  159 -
 shlr/www/enyo/disasm.css                                                                           |  176 -
 shlr/www/enyo/disassembler_old.js                                                                  |    1 +
 shlr/www/enyo/enyo.css                                                                             |    2 +
 shlr/www/enyo/{ => }/enyo/lib/onyx/images/gradient-invert.png                                      |  Bin 255 -> 255 bytes
 shlr/www/enyo/{ => }/enyo/lib/onyx/images/gradient.png                                             |  Bin 255 -> 255 bytes
 shlr/www/enyo/{build/app.js => enyo_app.js}                                                        | 4284 ++++++++++++++
 shlr/www/enyo/favicon.ico                                                                          |  Bin 1406 -> 0 bytes
 shlr/www/enyo/gradient-invert.png                                                                  |  Bin 0 -> 255 bytes
 shlr/www/enyo/gradient.png                                                                         |  Bin 0 -> 255 bytes
 shlr/www/enyo/index.css                                                                            |  134 -
 shlr/www/enyo/index.html                                                                           |   38 +-
 shlr/www/enyo/index.js                                                                             |   37 -
 shlr/www/enyo/joint.min.css                                                                        |    9 -
 shlr/www/enyo/jquery.layout.css                                                                    |  224 -
 shlr/www/enyo/js/about.js                                                                          |   29 -
 shlr/www/enyo/js/assembler.js                                                                      |   65 -
 shlr/www/enyo/js/config.js                                                                         |   17 -
 shlr/www/enyo/js/console.js                                                                        |   27 -
 shlr/www/enyo/js/debugger.js                                                                       |   10 -
 shlr/www/enyo/js/disasm.js                                                                         | 1115 ----
 shlr/www/enyo/js/disassembler.js                                                                   |  605 --
 shlr/www/enyo/js/disassembler_old.js                                                               |  120 -
 shlr/www/enyo/js/graph.js                                                                          |   18 -
 shlr/www/enyo/js/hexdump.js                                                                        |  131 -
 shlr/www/enyo/js/joint.js                                                                          |   14 -
 shlr/www/enyo/js/joint.layout.DirectedGraph.js                                                     |    9 -
 shlr/www/enyo/js/jquery-1.9.0.js                                                                   | 9555 -------------------------------
 shlr/www/enyo/js/jquery-ui-latest.js                                                               |14879 ------------------------------------------------
 shlr/www/enyo/js/jquery.layout-latest.js                                                           | 6083 --------------------
 shlr/www/enyo/js/jquery.scrollTo.js                                                                |  187 -
 shlr/www/enyo/js/jquery.ui.js                                                                      |14879 ------------------------------------------------
 shlr/www/enyo/js/leftpanel.js                                                                      |   73 -
 shlr/www/enyo/js/logs.js                                                                           |   34 -
 shlr/www/enyo/js/main.js                                                                           |   86 -
 shlr/www/enyo/js/mainpanel.js                                                                      |  359 --
 shlr/www/enyo/js/r2.js                                                                             |  593 --
 shlr/www/enyo/js/r2ui.js                                                                           |  250 -
 shlr/www/enyo/js/rightpanel.js                                                                     |  167 -
 shlr/www/enyo/js/script.js                                                                         |   55 -
 shlr/www/enyo/js/search.js                                                                         |   10 -
 shlr/www/enyo/js/settings.js                                                                       |  190 -
 shlr/www/enyo/js/underscore-min.js                                                                 |    6 -
 shlr/www/enyo/r2app.js                                                                             |   16 +
 shlr/www/enyo/r2core.css                                                                           |    2 +
 shlr/www/enyo/r2core.js                                                                            |    3 +
 shlr/www/enyo/r2ui.js                                                                              |  261 -
 shlr/www/enyo/stylesheet.css                                                                       |    1 +
 shlr/www/enyo/two                                                                                  |   13 -
 shlr/www/enyo/vendors/backbone-min.js                                                              |    2 +
 shlr/www/enyo/vendors/joint.layout.DirectedGraph.js                                                |  171 +
 shlr/www/enyo/vendors/joint.min.css                                                                |    8 +
 shlr/www/enyo/vendors/joint.min.js                                                                 |  131 +
 shlr/www/enyo/vendors/jquery-ui.min.js                                                             |   13 +
 shlr/www/enyo/vendors/jquery.layout-latest.min.js                                                  |  142 +
 shlr/www/enyo/vendors/jquery.min.js                                                                |    6 +
 shlr/www/enyo/vendors/jquery.scrollTo.min.js                                                       |    7 +
 shlr/www/enyo/vendors/lodash.min.js                                                                |   98 +
 shlr/www/m/Makefile                                                                                |   21 -
 shlr/www/m/beautify.js                                                                             |    1 -
 shlr/www/m/cache/2fcrYFNaTjcS6g4U3t-Y5UEw0lE80llgEseQY3FEmqw.woff2                                 |  Bin 36888 -> 0 bytes
 shlr/www/m/cache/Hgo13k-tfSpn0qi1SFdUfaCWcynf_cDxXwCLxiixG1c.ttf                                   |  Bin 32664 -> 0 bytes
 shlr/www/m/cache/Jzo62I39jc0gQRrbndN6nfesZW2xOQ-xsNqO47m55DA.ttf                                   |  Bin 33360 -> 0 bytes
 shlr/www/m/cache/RxZJdnzeo3R5zSexge8UUaCWcynf_cDxXwCLxiixG1c.ttf                                   |  Bin 32580 -> 0 bytes
 shlr/www/m/cache/W4wDsBUluyw0tK3tykhXEfesZW2xOQ-xsNqO47m55DA.ttf                                   |  Bin 33404 -> 0 bytes
 shlr/www/m/cache/d-6IYplOFocCacKzxwXSOKCWcynf_cDxXwCLxiixG1c.ttf                                   |  Bin 32500 -> 0 bytes
 shlr/www/m/cache/fonts.css                                                                         |   48 -
 shlr/www/m/cache/icons.css                                                                         |   24 -
 shlr/www/m/cache/mnpfi9pxYH-Go5UiibESIqCWcynf_cDxXwCLxiixG1c.ttf                                   |  Bin 32432 -> 0 bytes
 shlr/www/m/cache/t6Nd4cfPRhZP44Q5QAjcC50EAVxt0G0biEntp43Qt6E.ttf                                   |  Bin 32808 -> 0 bytes
 shlr/www/m/cache/zN7GBFwfMP4uA6AR0HCoLQ.ttf                                                        |  Bin 32652 -> 0 bytes
 shlr/www/m/index.html                                                                              |  503 +-
 shlr/www/m/index.js                                                                                | 2442 ++++++--
 shlr/www/m/manifest.webapp                                                                         |   20 -
 shlr/www/m/material.min.css                                                                        |    9 -
 shlr/www/m/material.min.js                                                                         |   10 -
 shlr/www/m/r2.js                                                                                   |  645 +--
 shlr/www/m/styles.css                                                                              |  291 -
 shlr/www/m/stylesheet.css                                                                          |    5 +
 shlr/www/m/vendors/dialog-polyfill.css                                                             |   40 +
 shlr/www/m/vendors/dialog-polyfill.js                                                              |  514 ++
 shlr/www/m/vendors/fonts/MaterialIcons-Regular.eot                                                 |  Bin 0 -> 137002 bytes
 shlr/www/m/vendors/fonts/MaterialIcons-Regular.ijmap                                               |    1 +
 .../2fcrYFNaTjcS6g4U3t-Y5StnKWgpfO2iSkLzTz-AABg.ttf => vendors/fonts/MaterialIcons-Regular.ttf}    |  Bin 107780 -> 122640 bytes
 shlr/www/m/vendors/fonts/MaterialIcons-Regular.woff                                                |  Bin 0 -> 56792 bytes
 shlr/www/m/vendors/fonts/MaterialIcons-Regular.woff2                                               |  Bin 0 -> 42284 bytes
 shlr/www/m/vendors/fonts/README.md                                                                 |   11 +
 shlr/www/m/vendors/fonts/Roboto-italic-400.woff                                                    |  Bin 0 -> 19880 bytes
 shlr/www/m/vendors/fonts/Roboto-italic-700.woff                                                    |  Bin 0 -> 19460 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-100.woff                                                    |  Bin 0 -> 18572 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-300.woff                                                    |  Bin 0 -> 18520 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-400.woff                                                    |  Bin 0 -> 18520 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-500.woff                                                    |  Bin 0 -> 18576 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-700.woff                                                    |  Bin 0 -> 18568 bytes
 shlr/www/m/vendors/fonts/Roboto-normal-900.woff                                                    |  Bin 0 -> 18572 bytes
 shlr/www/m/vendors/fonts/codepoints                                                                |  795 +++
 shlr/www/m/vendors/fonts/fonts.css                                                                 |   55 +
 shlr/www/m/vendors/fonts/iconjar-map.js                                                            |   38 +
 shlr/www/m/vendors/images/sort_asc.png                                                             |  Bin 0 -> 160 bytes
 shlr/www/m/vendors/images/sort_asc_disabled.png                                                    |  Bin 0 -> 148 bytes
 shlr/www/m/vendors/images/sort_both.png                                                            |  Bin 0 -> 201 bytes
 shlr/www/m/vendors/images/sort_desc.png                                                            |  Bin 0 -> 158 bytes
 shlr/www/m/vendors/images/sort_desc_disabled.png                                                   |  Bin 0 -> 146 bytes
 shlr/www/m/vendors/jquery.dataTables.min.css                                                       |    1 +
 shlr/www/m/vendors/jquery.dataTables.min.js                                                        |  166 +
 shlr/www/m/vendors/jquery.min.js                                                                   |    4 +
 shlr/www/m/vendors/material-design-icons.css                                                       |   28 +
 shlr/www/m/vendors/material.min.css                                                                |    9 +
 shlr/www/m/vendors/material.min.js                                                                 |   10 +
 shlr/www/p/Makefile                                                                                |   22 -
 shlr/www/p/colors.html                                                                             |  159 -
 shlr/www/p/index.html                                                                              |  126 -
 shlr/www/p/lib/css/jquery-colpick.css                                                              |  420 --
 shlr/www/p/lib/css/jquery-ui.css                                                                   |   66 -
 shlr/www/p/lib/css/jquery.onoff.css                                                                |   83 -
 shlr/www/p/lib/css/jquery.ui.tabs.css                                                              |   52 -
 shlr/www/p/lib/css/layout-default-latest.css                                                       |  224 -
 shlr/www/p/lib/css/main.css                                                                        |  296 -
 shlr/www/p/lib/css/spectrum.css                                                                    |  507 --
 shlr/www/p/lib/css/tree.jquery.css                                                                 |  148 -
 shlr/www/p/lib/js/disasm_panel.js                                                                  |  588 --
 shlr/www/p/lib/js/entropy_panel.js                                                                 |   49 -
 shlr/www/p/lib/js/hex_panel.js                                                                     |  368 --
 shlr/www/p/lib/js/jquery-1.9.0.js                                                                  | 9555 -------------------------------
 shlr/www/p/lib/js/jquery-colpick.js                                                                |  520 --
 shlr/www/p/lib/js/jquery-ui-latest.js                                                              |14879 ------------------------------------------------
 shlr/www/p/lib/js/jquery.donetyping.js                                                             |   36 -
 shlr/www/p/lib/js/jquery.layout-latest.js                                                          | 6083 --------------------
 shlr/www/p/lib/js/jquery.layout.resizePaneAccordions-latest.js                                     |   34 -
 shlr/www/p/lib/js/jquery.onoff.js                                                                  |  413 --
 shlr/www/p/lib/js/jquery.scrollTo-latest.js                                                        |  187 -
 shlr/www/p/lib/js/jquery.ui-contextmenu.js                                                         |  430 --
 shlr/www/p/lib/js/main.js                                                                          |  364 --
 shlr/www/p/lib/js/projects_panel.js                                                                |   36 -
 shlr/www/p/lib/js/settings_panel.js                                                                |   15 -
 shlr/www/p/lib/js/spectrum.js                                                                      | 2267 --------
 shlr/www/p/lib/js/strings_panel.js                                                                 |  143 -
 shlr/www/p/lib/js/taphold.js                                                                       |  117 -
 shlr/www/p/lib/js/tree.jquery.js                                                                   | 3081 ----------
 shlr/www/p/lib/js/types_panel.js                                                                   |  144 -
 shlr/www/p/rlogo-inv.png                                                                           |  Bin 1536 -> 0 bytes
 shlr/www/t/app.js                                                                                  |    3 +
 shlr/www/t/index.html                                                                              |   36 +-
 shlr/www/t/rlogo.png                                                                               |  Bin 0 -> 1579 bytes
 shlr/www/t/stylesheet.css                                                                          |    1 +
 shlr/zip/zlib/inflate.c                                                                            |    8 +-
 sys/android-shell.sh                                                                               |    7 +
 sys/bokken.sh                                                                                      |    4 +-
 sys/mingw32.bat                                                                                    |   14 +-
 sys/release-notes.js                                                                               |  163 -
 sys/release-notes/index.js                                                                         |  407 ++
 sys/release-notes/package.json                                                                     |    6 +
 sys/shellcheck.sh                                                                                  |  235 +-
 583 files changed, 28219 insertions(+), 112126 deletions(-)
 delete mode 100644 binr/r2pm/d/armthumb
 delete mode 100644 binr/r2pm/d/baleful
 delete mode 100644 binr/r2pm/d/bcl
 delete mode 100644 binr/r2pm/d/blackfin
 delete mode 100644 binr/r2pm/d/blessr2
 delete mode 100644 binr/r2pm/d/bokken
 delete mode 100644 binr/r2pm/d/bpf
 delete mode 100644 binr/r2pm/d/dlang
 delete mode 100644 binr/r2pm/d/duktape
 delete mode 100644 binr/r2pm/d/io-ewf
 delete mode 100644 binr/r2pm/d/keystone
 delete mode 100644 binr/r2pm/d/mdmp
 delete mode 100644 binr/r2pm/d/microblaze
 delete mode 100644 binr/r2pm/d/msil
 delete mode 100644 binr/r2pm/d/ppcdisasm
 delete mode 100644 binr/r2pm/d/psosvm
 delete mode 100644 binr/r2pm/d/pyc
 delete mode 100644 binr/r2pm/d/python
 delete mode 100644 binr/r2pm/d/r2pipe-cs
 delete mode 100644 binr/r2pm/d/r2pipe-go
 delete mode 100644 binr/r2pm/d/r2pipe-js
 delete mode 100644 binr/r2pm/d/r2pipe-py
 delete mode 100644 binr/r2pm/d/r2pipe-rb
 delete mode 100644 binr/r2pm/d/radare2
 delete mode 100644 binr/r2pm/d/radeco
 delete mode 100644 binr/r2pm/d/retdec
 delete mode 100644 binr/r2pm/d/swf
 delete mode 100644 binr/r2pm/d/swig
 delete mode 100644 binr/r2pm/d/syms2elf
 delete mode 100644 binr/r2pm/d/tcc
 delete mode 100644 binr/r2pm/d/unicorn
 delete mode 100644 binr/r2pm/d/unicorn-lib
 delete mode 100644 binr/r2pm/d/vala
 delete mode 100644 binr/r2pm/d/valabind
 delete mode 100644 binr/r2pm/d/vapi
 delete mode 100644 binr/r2pm/d/winapi
 delete mode 100644 binr/r2pm/d/www-enyo
 delete mode 100644 binr/r2pm/d/www-m
 delete mode 100644 binr/r2pm/d/www-p
 delete mode 100644 binr/r2pm/d/www-t
 delete mode 100644 binr/r2pm/d/x86bea
 delete mode 100644 binr/r2pm/d/yara2
 delete mode 100644 binr/r2pm/d/yara2-lib
 delete mode 100644 binr/r2pm/d/yara3
 delete mode 100644 binr/r2pm/d/yara3-lib
 create mode 100644 doc/debug-internals.md
 delete mode 100644 doc/rapatch
 create mode 100644 doc/rapatch.md
 create mode 100644 libr/anal/p/anal_rsp.c
 create mode 100644 libr/anal/p/rsp.mk
 create mode 100644 libr/asm/arch/rsp/rsp_idec.c
 create mode 100644 libr/asm/arch/rsp/rsp_idec.h
 create mode 100644 libr/asm/d/xtensa
 create mode 100644 libr/asm/p/asm_rsp.c
 create mode 100644 libr/asm/p/rsp.mk
 create mode 100644 libr/bin/p/avr.mk
 create mode 100644 libr/bin/p/bin_avr.c
 create mode 100644 libr/cons/d/behelit
 delete mode 100644 libr/db/Jamroot
 delete mode 100644 libr/db/README
 delete mode 100644 libr/db/TODO
 delete mode 100644 libr/db/db.c
 delete mode 100644 libr/db/r.mk
 delete mode 100644 libr/db/t/Makefile
 delete mode 100644 libr/db/t/test.c
 delete mode 100644 libr/db/table.c
 create mode 100644 libr/debug/p/native/linux/linux_coredump.c
 create mode 100644 libr/debug/p/native/linux/linux_coredump.h
 create mode 100644 libr/debug/p/native/procfs.c
 create mode 100644 libr/debug/p/native/procfs.h
 rename libr/{db/Makefile => util/sdb.mk} (60%)
 create mode 100644 mk/armel.mk
 delete mode 100644 pkgcfg/r_db.pc.acr
 create mode 100644 shlr/capstone-patches/oobfix-X86_insn_reg_intel.patch
 create mode 100644 shlr/www/console.html
 delete mode 100644 shlr/www/enyo/Makefile
 delete mode 100644 shlr/www/enyo/build/app.css
 delete mode 100644 shlr/www/enyo/build/enyo.css
 delete mode 100644 shlr/www/enyo/build/enyo.js
 delete mode 100644 shlr/www/enyo/colors/index.html
 delete mode 100644 shlr/www/enyo/disasm.css
 create mode 100644 shlr/www/enyo/disassembler_old.js
 create mode 100644 shlr/www/enyo/enyo.css
 rename shlr/www/enyo/{ => }/enyo/lib/onyx/images/gradient-invert.png (100%)
 rename shlr/www/enyo/{ => }/enyo/lib/onyx/images/gradient.png (100%)
 rename shlr/www/enyo/{build/app.js => enyo_app.js} (50%)
 delete mode 100644 shlr/www/enyo/favicon.ico
 create mode 100644 shlr/www/enyo/gradient-invert.png
 create mode 100644 shlr/www/enyo/gradient.png
 delete mode 100644 shlr/www/enyo/index.css
 delete mode 100644 shlr/www/enyo/index.js
 delete mode 100644 shlr/www/enyo/joint.min.css
 delete mode 100644 shlr/www/enyo/jquery.layout.css
 delete mode 100644 shlr/www/enyo/js/about.js
 delete mode 100644 shlr/www/enyo/js/assembler.js
 delete mode 100644 shlr/www/enyo/js/config.js
 delete mode 100644 shlr/www/enyo/js/console.js
 delete mode 100644 shlr/www/enyo/js/debugger.js
 delete mode 100644 shlr/www/enyo/js/disasm.js
 delete mode 100644 shlr/www/enyo/js/disassembler.js
 delete mode 100644 shlr/www/enyo/js/disassembler_old.js
 delete mode 100644 shlr/www/enyo/js/graph.js
 delete mode 100644 shlr/www/enyo/js/hexdump.js
 delete mode 100644 shlr/www/enyo/js/joint.js
 delete mode 100644 shlr/www/enyo/js/joint.layout.DirectedGraph.js
 delete mode 100644 shlr/www/enyo/js/jquery-1.9.0.js
 delete mode 100644 shlr/www/enyo/js/jquery-ui-latest.js
 delete mode 100644 shlr/www/enyo/js/jquery.layout-latest.js
 delete mode 100644 shlr/www/enyo/js/jquery.scrollTo.js
 delete mode 100644 shlr/www/enyo/js/jquery.ui.js
 delete mode 100644 shlr/www/enyo/js/leftpanel.js
 delete mode 100644 shlr/www/enyo/js/logs.js
 delete mode 100644 shlr/www/enyo/js/main.js
 delete mode 100644 shlr/www/enyo/js/mainpanel.js
 delete mode 100644 shlr/www/enyo/js/r2.js
 delete mode 100644 shlr/www/enyo/js/r2ui.js
 delete mode 100644 shlr/www/enyo/js/rightpanel.js
 delete mode 100644 shlr/www/enyo/js/script.js
 delete mode 100644 shlr/www/enyo/js/search.js
 delete mode 100644 shlr/www/enyo/js/settings.js
 delete mode 100644 shlr/www/enyo/js/underscore-min.js
 create mode 100644 shlr/www/enyo/r2app.js
 create mode 100644 shlr/www/enyo/r2core.css
 create mode 100644 shlr/www/enyo/r2core.js
 delete mode 100644 shlr/www/enyo/r2ui.js
 create mode 100644 shlr/www/enyo/stylesheet.css
 delete mode 100644 shlr/www/enyo/two
 create mode 100644 shlr/www/enyo/vendors/backbone-min.js
 create mode 100644 shlr/www/enyo/vendors/joint.layout.DirectedGraph.js
 create mode 100644 shlr/www/enyo/vendors/joint.min.css
 create mode 100644 shlr/www/enyo/vendors/joint.min.js
 create mode 100644 shlr/www/enyo/vendors/jquery-ui.min.js
 create mode 100644 shlr/www/enyo/vendors/jquery.layout-latest.min.js
 create mode 100755 shlr/www/enyo/vendors/jquery.min.js
 create mode 100644 shlr/www/enyo/vendors/jquery.scrollTo.min.js
 create mode 100644 shlr/www/enyo/vendors/lodash.min.js
 delete mode 100644 shlr/www/m/Makefile
 delete mode 100644 shlr/www/m/beautify.js
 delete mode 100644 shlr/www/m/cache/2fcrYFNaTjcS6g4U3t-Y5UEw0lE80llgEseQY3FEmqw.woff2
 delete mode 100644 shlr/www/m/cache/Hgo13k-tfSpn0qi1SFdUfaCWcynf_cDxXwCLxiixG1c.ttf
 delete mode 100644 shlr/www/m/cache/Jzo62I39jc0gQRrbndN6nfesZW2xOQ-xsNqO47m55DA.ttf
 delete mode 100644 shlr/www/m/cache/RxZJdnzeo3R5zSexge8UUaCWcynf_cDxXwCLxiixG1c.ttf
 delete mode 100644 shlr/www/m/cache/W4wDsBUluyw0tK3tykhXEfesZW2xOQ-xsNqO47m55DA.ttf
 delete mode 100644 shlr/www/m/cache/d-6IYplOFocCacKzxwXSOKCWcynf_cDxXwCLxiixG1c.ttf
 delete mode 100644 shlr/www/m/cache/fonts.css
 delete mode 100644 shlr/www/m/cache/icons.css
 delete mode 100644 shlr/www/m/cache/mnpfi9pxYH-Go5UiibESIqCWcynf_cDxXwCLxiixG1c.ttf
 delete mode 100644 shlr/www/m/cache/t6Nd4cfPRhZP44Q5QAjcC50EAVxt0G0biEntp43Qt6E.ttf
 delete mode 100644 shlr/www/m/cache/zN7GBFwfMP4uA6AR0HCoLQ.ttf
 mode change 100644 => 100755 shlr/www/m/index.js
 delete mode 100644 shlr/www/m/manifest.webapp
 delete mode 100644 shlr/www/m/material.min.css
 delete mode 100644 shlr/www/m/material.min.js
 delete mode 100644 shlr/www/m/styles.css
 create mode 100644 shlr/www/m/stylesheet.css
 create mode 100644 shlr/www/m/vendors/dialog-polyfill.css
 create mode 100644 shlr/www/m/vendors/dialog-polyfill.js
 create mode 100644 shlr/www/m/vendors/fonts/MaterialIcons-Regular.eot
 create mode 100644 shlr/www/m/vendors/fonts/MaterialIcons-Regular.ijmap
 rename shlr/www/m/{cache/2fcrYFNaTjcS6g4U3t-Y5StnKWgpfO2iSkLzTz-AABg.ttf => vendors/fonts/MaterialIcons-Regular.ttf} (57%)
 create mode 100644 shlr/www/m/vendors/fonts/MaterialIcons-Regular.woff
 create mode 100644 shlr/www/m/vendors/fonts/MaterialIcons-Regular.woff2
 create mode 100644 shlr/www/m/vendors/fonts/README.md
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-italic-400.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-italic-700.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-100.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-300.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-400.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-500.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-700.woff
 create mode 100644 shlr/www/m/vendors/fonts/Roboto-normal-900.woff
 create mode 100644 shlr/www/m/vendors/fonts/codepoints
 create mode 100644 shlr/www/m/vendors/fonts/fonts.css
 create mode 100755 shlr/www/m/vendors/fonts/iconjar-map.js
 create mode 100644 shlr/www/m/vendors/images/sort_asc.png
 create mode 100644 shlr/www/m/vendors/images/sort_asc_disabled.png
 create mode 100644 shlr/www/m/vendors/images/sort_both.png
 create mode 100644 shlr/www/m/vendors/images/sort_desc.png
 create mode 100644 shlr/www/m/vendors/images/sort_desc_disabled.png
 create mode 100644 shlr/www/m/vendors/jquery.dataTables.min.css
 create mode 100644 shlr/www/m/vendors/jquery.dataTables.min.js
 create mode 100644 shlr/www/m/vendors/jquery.min.js
 create mode 100644 shlr/www/m/vendors/material-design-icons.css
 create mode 100644 shlr/www/m/vendors/material.min.css
 create mode 100644 shlr/www/m/vendors/material.min.js
 delete mode 100644 shlr/www/p/Makefile
 delete mode 100644 shlr/www/p/colors.html
 delete mode 100644 shlr/www/p/index.html
 delete mode 100644 shlr/www/p/lib/css/jquery-colpick.css
 delete mode 100644 shlr/www/p/lib/css/jquery-ui.css
 delete mode 100644 shlr/www/p/lib/css/jquery.onoff.css
 delete mode 100644 shlr/www/p/lib/css/jquery.ui.tabs.css
 delete mode 100644 shlr/www/p/lib/css/layout-default-latest.css
 delete mode 100644 shlr/www/p/lib/css/main.css
 delete mode 100644 shlr/www/p/lib/css/spectrum.css
 delete mode 100644 shlr/www/p/lib/css/tree.jquery.css
 delete mode 100644 shlr/www/p/lib/js/disasm_panel.js
 delete mode 100644 shlr/www/p/lib/js/entropy_panel.js
 delete mode 100644 shlr/www/p/lib/js/hex_panel.js
 delete mode 100644 shlr/www/p/lib/js/jquery-1.9.0.js
 delete mode 100644 shlr/www/p/lib/js/jquery-colpick.js
 delete mode 100644 shlr/www/p/lib/js/jquery-ui-latest.js
 delete mode 100644 shlr/www/p/lib/js/jquery.donetyping.js
 delete mode 100644 shlr/www/p/lib/js/jquery.layout-latest.js
 delete mode 100644 shlr/www/p/lib/js/jquery.layout.resizePaneAccordions-latest.js
 delete mode 100644 shlr/www/p/lib/js/jquery.onoff.js
 delete mode 100644 shlr/www/p/lib/js/jquery.scrollTo-latest.js
 delete mode 100644 shlr/www/p/lib/js/jquery.ui-contextmenu.js
 delete mode 100644 shlr/www/p/lib/js/main.js
 delete mode 100644 shlr/www/p/lib/js/projects_panel.js
 delete mode 100644 shlr/www/p/lib/js/settings_panel.js
 delete mode 100644 shlr/www/p/lib/js/spectrum.js
 delete mode 100644 shlr/www/p/lib/js/strings_panel.js
 delete mode 100644 shlr/www/p/lib/js/taphold.js
 delete mode 100644 shlr/www/p/lib/js/tree.jquery.js
 delete mode 100644 shlr/www/p/lib/js/types_panel.js
 delete mode 100644 shlr/www/p/rlogo-inv.png
 create mode 100644 shlr/www/t/app.js
 create mode 100644 shlr/www/t/rlogo.png
 create mode 100644 shlr/www/t/stylesheet.css
 delete mode 100644 sys/release-notes.js
 create mode 100755 sys/release-notes/index.js
 create mode 100644 sys/release-notes/package.json
powerpc:~/radare2$
powerpc:~/radare2$
powerpc:~/radare2$ git describe --all --long
heads/master-0-g2f5ead1
powerpc:~/radare2$
powerpc:~/radare2$ sys/user.sh
WARNING: Updating from remote repository
Already up-to-date.

export USE_R2_CAPSTONE=

Removing Makefile.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing libcapstone.a
configure-plugins: Loading ./plugins.def.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.cr16 anal.cris anal.csr anal.dalvik anal.ebc anal.gb anal.h8300 anal.i4004 anal.i8080 anal.java anal.m68k anal.m68k_cs anal.malbolge anal.mips_cs anal.mips_gnu anal.msp430 anal.nios2 anal.null anal.pic18c anal.ppc_cs anal.ppc_gnu anal.riscv anal.rsp anal.sh anal.snes anal.sparc_cs anal.sparc_gnu anal.sysz anal.tms320 anal.v810 anal.v850 anal.vax anal.ws anal.x86_cs anal.x86_udis anal.xcore_cs anal.xtensa anal.z80 asm.6502 asm.8051 asm.arc asm.arm_as asm.arm_cs asm.arm_gnu asm.arm_winedbg asm.avr asm.bf asm.cr16 asm.cris_gnu asm.csr asm.dalvik asm.dcpu16 asm.ebc asm.gb asm.h8300 asm.hppa_gnu asm.i4004 asm.i8080 asm.java asm.lanai_gnu asm.lh5801 asm.lm32 asm.m68k asm.m68k_cs asm.malbolge asm.mcs96 asm.mips_cs asm.mips_gnu asm.msp430 asm.nios2 asm.pic18c asm.ppc_cs asm.ppc_gnu asm.rar asm.riscv asm.rsp asm.sh asm.snes asm.sparc_cs asm.sparc_gnu asm.spc700 asm.sysz asm.tms320 asm.tricore asm.v810 asm.v850 asm.vax asm.ws asm.x86_as asm.x86_cs asm.x86_nasm asm.x86_nz asm.x86_olly asm.x86_tab asm.x86_udis asm.xcore_cs asm.xtensa asm.z80 asm.z80_cr bin.any bin.art bin.avr bin.bf bin.bios bin.bootimg bin.cgc bin.coff bin.dex bin.dol bin.dyldcache bin.elf bin.elf64 bin.fs bin.java bin.mach0 bin.mach064 bin.mbn bin.mz bin.nes bin.nin3ds bin.ninds bin.ningb bin.ningba bin.omf bin.p9 bin.pe bin.pe64 bin.pebble bin.psxexe bin.rar bin.smd bin.sms bin.spc700 bin.te bin.vsf bin.xbe bin.zimg bin_xtr.fatmach0 bin_xtr.xtr_dyldcache bp.arm bp.bf bp.mips bp.ppc bp.x86 core.anal core.java crypto.aes crypto.aes_cbc crypto.base64 crypto.base91 crypto.blowfish crypto.punycode crypto.rc2 crypto.rc4 crypto.rc6 crypto.rol crypto.ror crypto.rot crypto.xor debug.bf debug.bochs debug.esil debug.gdb debug.native debug.qnx debug.rap debug.wind egg.exec egg.xor fs.cpio fs.ext2 fs.fat fs.fb fs.hfs fs.hfsplus fs.iso9660 fs.jfs fs.minix fs.ntfs fs.posix fs.reiserfs fs.sfs fs.squash fs.tar fs.udf fs.ufs fs.xfs io.bfdbg io.bochs io.debug io.default io.gdb io.gzip io.http io.ihex io.mach io.malloc io.mmap io.procpid io.ptrace io.qnx io.r2pipe io.r2web io.rap io.self io.shm io.sparse io.w32 io.w32dbg io.windbg io.zip lang.vala parse.6502_pseudo parse.arm_pseudo parse.att2intel parse.dalvik_pseudo parse.m68k_pseudo parse.mips_pseudo parse.mreplace parse.ppc_pseudo parse.x86_pseudo
checking build system type... powerpc-unknown-linux-gnu
checking host system type... powerpc-unknown-linux-gnu
checking target system type... powerpc-unknown-linux-gnu
checking for working directories... current
using prefix '/test/bin/prefix/radare2/'
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
 - VERSION = 0.10.4-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - USEROSTYPE = gnulinux
 - LIBVERSION = 0.10.4-git
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
inflate.c: In function 'inflateMark':
inflate.c:1512:9: warning: overflow in implicit constant conversion [-Woverflow]
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
ar: creating libsdb.a
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
LIB libsdb.so.0.10.2
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
HEAD 1521ba3fa301b384b497fb85bbcd888e2101de11
TIP 5ff595c362695803e01d620d559a112cb186a789
HEAD is now at f926e80 Fixed ordering in files
Already on 'next'
Your branch is behind 'origin/next' by 8 commits, and can be fast-forwarded.
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
remote: Counting objects: 204, done.
remote: Compressing objects: 100% (28/28), done.
remote: Total 204 (delta 139), reused 125 (delta 125), pack-reused 51
Receiving objects: 100% (204/204), 83.22 KiB | 141 KiB/s, done.
AR libsdb.aeltas:  62% (88/141)
ar: creating libsdb.a
BIN sdbng deltas:  83% (118/141)
Resolving deltas: 100% (141/141), completed with 59 local objects.

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

From https://github.com/aquynh/capstone
   1521ba3..5c4277c  next       -> origin/next
   73bfcc2..d99cbc3  master     -> origin/master
Updating f926e80..5c4277c
Fast-forward
CC cdb.c
CC buffer.c
CC ls.c
CC cdb_make.c
CC ht.c
CC sdb.c
CC num.c
CC base64.c
CC match.c
CC json.c
CC ns.c
 .gitignore                                                       |    2 +
 CMakeLists.txt                                                   |    1 -
 COMPILE_MSVC.TXT                                                 |   47 ++++++++++++++++++--
 CREDITS.TXT                                                      |    2 +
 HACK.TXT                                                         |    1 +
 MathExtras.h                                                     |    2 +-
 SStream.c                                                        |    3 +-
 arch/AArch64/AArch64BaseInfo.c                                   |    2 +-
 arch/AArch64/AArch64Disassembler.c                               |    6 +--
 arch/AArch64/AArch64InstPrinter.c                                |    9 +++-
 arch/AArch64/AArch64Mapping.c                                    |   10 ++---
 arch/ARM/ARMDisassembler.c                                       |    2 +-
 arch/ARM/ARMInstPrinter.c                                        |    4 +-
 arch/ARM/ARMMapping.c                                            |   10 ++---
 arch/M68K/M68KDisassembler.c                                     |   58 +++++++++++++-----------
 arch/M68K/M68KInstPrinter.c                                      |    8 +++-
 arch/Mips/MipsDisassembler.c                                     |    2 +-
 arch/Mips/MipsInstPrinter.c                                      |    2 +-
 arch/Mips/MipsMapping.c                                          |    5 +++
 arch/Mips/MipsMappingInsn.inc                                    |   20 ++++-----
 arch/PowerPC/PPCGenAsmWriter.inc                                 |    2 +-
 arch/PowerPC/PPCInstPrinter.c                                    |    1 -
 arch/Sparc/SparcDisassembler.c                                   |    2 +-
 arch/Sparc/SparcGenAsmWriter.inc                                 |    2 +-
 arch/Sparc/SparcInstPrinter.c                                    |    6 +--
 arch/SystemZ/SystemZGenAsmWriter.inc                             |    2 +-
 arch/SystemZ/SystemZInstPrinter.c                                |    2 +-
 arch/X86/X86ATTInstPrinter.c                                     |    8 ++--
 arch/X86/X86Disassembler.c                                       |    2 +-
 arch/X86/X86DisassemblerDecoder.c                                |    2 +-
 arch/X86/X86IntelInstPrinter.c                                   |   12 ++---
 arch/X86/X86Mapping.c                                            |   42 +++++++++++++++---
 arch/X86/X86MappingInsnOp.inc                                    |  200 +++++++++++++++++++++++++++++++++++++++++-----------------------------------------
 arch/X86/X86MappingInsnOp_reduce.inc                             |  198 ++++++++++++++++++++++++++++++++++++++++-----------------------------------------
 arch/XCore/XCoreGenAsmWriter.inc                                 |    2 +-
 arch/XCore/XCoreInstPrinter.c                                    |   16 +++----
 bindings/java/capstone/M68k_const.java                           |    9 ++--
 bindings/java/capstone/Mips_const.java                           |    5 +++
 bindings/ocaml/m68k_const.ml                                     |    9 ++--
 bindings/ocaml/mips_const.ml                                     |    5 +++
 bindings/python/Makefile                                         |    3 +-
 bindings/python/capstone/__init__.py                             |   23 ++++++----
 bindings/python/capstone/arm.py                                  |    5 ++-
 bindings/python/capstone/arm64.py                                |    5 ++-
 bindings/python/capstone/m68k.py                                 |    5 ++-
 bindings/python/capstone/m68k_const.py                           |    2 +-
 bindings/python/capstone/mips.py                                 |    5 ++-
 bindings/python/capstone/mips_const.py                           |    5 +++
 bindings/python/capstone/ppc.py                                  |    5 ++-
 bindings/python/capstone/sparc.py                                |    5 ++-
 bindings/python/capstone/systemz.py                              |    5 ++-
 bindings/python/capstone/x86.py                                  |    5 ++-
 bindings/python/capstone/xcore.py                                |    5 ++-
 bindings/python/test_arm.py                                      |    6 +--
 bindings/python/test_basic.py                                    |   42 +++++++++---------
 bindings/python/test_detail.py                                   |   44 +++++++++---------
 bindings/python/test_lite.py                                     |   47 ++++++++++++++------
 bindings/python/test_m68k.py                                     |   22 ++++-----
 bindings/python/test_skipdata.py                                 |    6 +--
 bindings/python/test_x86.py                                      |    8 ++--
 contrib/cs_driver/README                                         |    5 +++
 contrib/cs_driver/cs_driver.sln                                  |   49 ++++++++++++++++++++
 contrib/cs_driver/cs_driver/cs_driver.c                          |   99 +++++++++++++++++++++++++++++++++++++++++
 contrib/cs_driver/cs_driver/cs_driver.vcxproj                    |  129 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 contrib/cs_driver/cs_driver/cs_driver.vcxproj.filters            |   26 +++++++++++
 contrib/objdump/objdump-m68k.py                                  |    4 +-
 cs.c                                                             |  106 ++++++++++++++++++++++++++++++-------------
 docs/README                                                      |    5 ++-
 include/capstone/capstone.h                                      |   60 +++++++++++++------------
 include/capstone/m68k.h                                          |    2 +-
 include/capstone/mips.h                                          |   10 +++++
 include/capstone/platform.h                                      |   98 +++++++++++++++++++++++++++++++++++-----
 msvc/README                                                      |   16 ++++---
 msvc/capstone.sln                                                |   39 ++++++++++++----
 msvc/capstone_static_winkernel/capstone_static_winkernel.vcxproj |  175 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 msvc/test_basic/test_basic.vcxproj                               |    6 +--
 msvc/test_winkernel/test_winkernel.vcxproj                       |  138 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 myinttypes.h                                                     |   65 ---------------------------
 suite/arm/test_arm_regression.c                                  |    2 +-
 suite/benchmark/test_iter_benchmark.c                            |    4 +-
 suite/test_group_name.py                                         |    5 +++
 tests/README                                                     |    3 ++
 tests/test_arm.c                                                 |   27 ++++++-----
 tests/test_arm64.c                                               |   13 ++++--
 tests/test_basic.c                                               |    8 ++--
 tests/test_customized_mnem.c                                     |    2 +-
 tests/test_detail.c                                              |    8 ++--
 tests/test_iter.c                                                |    4 +-
 tests/test_m68k.c                                                |   28 ++++++------
 tests/test_mips.c                                                |    8 ++--
 tests/test_ppc.c                                                 |    8 ++--
 tests/test_skipdata.c                                            |   14 +++---
 tests/test_sparc.c                                               |    6 +--
 tests/test_systemz.c                                             |   12 ++---
 tests/test_winkernel.cpp                                         |  171 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 tests/test_x86.c                                                 |   10 ++---
 tests/test_xcore.c                                               |    6 +--
 windows/README                                                   |    1 +
 windows/winkernel_mm.c                                           |  116 +++++++++++++++++++++++++++++++++++++++++++++++
 windows/winkernel_mm.h                                           |   22 +++++++++
 xcode/Capstone.xcodeproj/project.pbxproj                         |    2 -
 101 files changed, 1838 insertions(+), 650 deletions(-)
 create mode 100644 contrib/cs_driver/README
 create mode 100644 contrib/cs_driver/cs_driver.sln
 create mode 100644 contrib/cs_driver/cs_driver/cs_driver.c
 create mode 100644 contrib/cs_driver/cs_driver/cs_driver.vcxproj
 create mode 100644 contrib/cs_driver/cs_driver/cs_driver.vcxproj.filters
 create mode 100644 msvc/capstone_static_winkernel/capstone_static_winkernel.vcxproj
 create mode 100644 msvc/test_winkernel/test_winkernel.vcxproj
 delete mode 100644 myinttypes.h
 create mode 100644 tests/test_winkernel.cpp
 create mode 100644 windows/README
 create mode 100644 windows/winkernel_mm.c
 create mode 100644 windows/winkernel_mm.h
CC lock.c
CC util.c
CC disk.c
CC query.c
CC array.c
CC fmt.c
CC journal.c
HEAD is now at 5ff595c Merge pull request #723 from crowell/array
HEAD is now at 5ff595c Merge pull request #723 from crowell/array
patching file arch/X86/X86ATTInstPrinter.c
Hunk #1 succeeded at 600 (offset 24 lines).
patching file arch/X86/X86IntelInstPrinter.c
Hunk #1 succeeded at 795 (offset 39 lines).
patching file arch/X86/X86Mapping.c
patching file Makefile
Hunk #1 succeeded at 285 (offset 6 lines).
Hunk #2 succeeded at 302 (offset 6 lines).
Hunk #3 succeeded at 311 (offset 6 lines).
Hunk #4 succeeded at 323 (offset 1 line).
  CC      cs.o
  CC      SStream.o
  CC      utils.o
  CC      MCInstrDesc.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/AArch64/AArch64Module.o
  CC      arch/M68K/M68KInstPrinter.o
AR libsdb.a
ar: creating libsdb.a
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
CC PIC cdb.c
CC PIC cdb_make.c
CC PIC buffer.c
CC PIC ls.c
CC PIC ht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC match.c
CC PIC json.c
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
CC apprentice.c
CC value.c
CC config.c
CC ascmagic.c
CC cond.c
CC fsmagic.c
CC search.c
CC cons.c
CC bytepat.c
CC bp.c
CC funcs.c
CC double.c
CC is_tar.c
CC profile.c
CC watch.c
CC strings.c
CC aes-find.c
CC rsa-find.c
CC callback.c
CC magic.c
CC io.c
CC softmagic.c
CC pipe.c
LD libr_reg.so
CC plugin.c
CC traptrace.c
CC bp_arm.c
LD libr_config.so
CC regexp.c
CC output.c
CC xrefs.c
CC keyword.c
CC grep.c
CC bp_bf.c
CC less.c
CC utf8.c
CC bp_mips.c
CC bp_ppc.c
CC line.c
CC hud.c
CC rgb.c
CC bp_x86.c
CC input.c
LD libr_search.so
CC pal.c
CC editor.c
CC 2048.c
CC canvas.c
CC canvas_line.c
LD libr_magic.so
LD libr_bp.so
LD libr_cons.so
DIR syscall
DIR lang
DIR io
DIR crypto
DIR flags
CC lang.c
CC syscall.c
CC ioports.c
CC flags.c
CC sort.c
CC spaces.c
CC io_bfdbg.c
CC io_bochs.c
CC io_debug.c
CC io_default.c
CC crypto_aes.c
CC crypto_aes_algo.c
CC crypto_aes_cbc.c
CC crypto_base64.c
CC crypto_base91.c
CC io_gdb.c
CC io_gzip.c
CC crypto_blowfish.c
CC io_http.c
LD libr_flags.so
CC io_ihex.c
CC crypto_punycode.c
CC crypto_rc2.c
CC crypto_rc4.c
CC crypto_rc6.c
CC crypto_rol.c
SDB dos-x86-16
SDB ios-x86-32
SDB ios-arm-32
SDB ios-arm-64
CC crypto_ror.c
CC io_mach.c
SDB linux-x86-32
CC crypto_rot.c
SDB linux-x86-64
CC crypto_xor.c
CC crypto.c
CC io_malloc.c
SDB linux-arm-32
LD libr_lang.so
CC io_mmap.c
SDB linux-mips-32
SDB linux-sparc-32
SDB darwin-x86-32
CC io_procpid.c
SDB darwin-x86-64
SDB netbsd-x86-32
SDB freebsd-x86-32
SDB openbsd-x86-32
SDB openbsd-x86-64
SDB windows-x86-32
SDB windows-x86-64
CC io_ptrace.c
CC io_qnx.c
CC io_r2pipe.c
LD libr_syscall.so
CC io_r2web.c
CC io_rap.c
CC io_self.c
LD libr_crypto.so
CC io_shm.c
CC io_sparse.c
CC io_w32.c
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
p/io_zip.c: In function 'r_io_zip_slurp_file':
p/io_zip.c:149:5: warning: suggest parentheses around assignment used as truth value [-Wparentheses]
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
  SDB dospart
CC bin_bf.c
CC anal_6502.c
CC bin_bios.c
CC bin_bootimg.c
CC bin_cgc.c
CC bin_coff.c
CC coff.c
SDB linux-x86-32
SDB linux-x86-64
SDB darwin-x86-64
SDB windows-x86-32
SDB windows-x86-64
CC anal_8051.c
In file included from /test/radare2/libr/..//libr/bin/p/bin_cgc.c:10:0:
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 'entries':
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 'obj' set but not used [-Wunused-but-set-variable]
CC bin_dex.c
/test/radare2/libr/..//libr/bin/p/bin_cgc.c: At top level:
/test/radare2/libr/..//libr/bin/p/bin_elf.c:628:15: warning: 'patch_relocs' defined but not used [-Wunused-function]
CC dex.c
CC bin_dol.c
CC bin_dyldcache.c
CC bin_elf.c
CC 8051.c
CC bin_dbginfo_elf.c
CC fs_cpio.c
CC bin_write_elf.c
CC elf.c
CC elf_write.c
CC bin_elf64.c
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 'entries':
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 'obj' set but not used [-Wunused-but-set-variable]
CC bin_dbginfo_elf64.c
CC anal_arc.c
CC bin_write_elf64.c
CC elf64.c
CC fs_ext2.c
CC anal_arm_cs.c
CC elf64_write.c
CC bin_fs.c
In file included from /test/radare2/libr/..//libr/bin/p/bin_elf64.c:4:0:
/test/radare2/libr/..//libr/bin/p/bin_elf.c: In function 'entries':
/test/radare2/libr/..//libr/bin/p/bin_elf.c:140:32: warning: variable 'obj' set but not used [-Wunused-but-set-variable]
CC bin_java.c
CC bin_mach0.c
CC mach0.c
CC mach0_classes.c
CC fs_fat.c
CC mach064_classes.c
CC bin_write_mach0.c
CC anal_arm_gnu.c
CC bin_mach064.c
CC bin_write_mach064.c
CC fs_fb.c
CC mach064.c
CC bin_mbn.c
CC bin_mz.c
CC fs_hfs.c
CC mz.c
CC be_arm.c
CC anal_avr.c
CC bin_nes.c
CC bin_nin3ds.c
CC bin_ninds.c
CC bin_ningb.c
CC fs_hfsplus.c
CC bin_ningba.c
CC bin_omf.c
CC omf.c
CC bin_p9.c
CC p9bin.c
CC bin_pe.c
CC pe.c
CC fs_iso9660.c
CC bin_pe64.c
CC anal_bf.c
CC pe64.c
CC anal_cr16.c
CC bin_pebble.c
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c: In function 'parse_symbol_table':
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c:368:7: warning: variable 'text' set but not used [-Wunused-but-set-variable]
CC bin_psxexe.c
CC bin_rar.c
CC fs_jfs.c
CC bin_smd.c
CC bin_sms.c
In file included from /test/radare2/libr/..//libr/bin/p/../format/pe/pe64.c:4:0:
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c: In function 'parse_symbol_table':
/test/radare2/libr/..//libr/bin/p/../format/pe/pe.c:368:7: warning: variable 'text' set but not used [-Wunused-but-set-variable]
CC bin_spc700.c
CC cr16_disas.c
CC bin_te.c
CC anal_cris.c
CC te.c
CC bin_vsf.c
CC fs_minix.c

CC fs_minix.c
CC bin_xbe.c
CC bin_zimg.c
CC zimg.c
CC bin_xtr_fatmach0.c
CC fs_ntfs.c
CC fatmach0.c
CC anal_csr.c
CC bin_xtr_dyldcache.c
CC dyldcache.c
CC demangler.c
CC microsoft_demangle.c
CC anal_dalvik.c
CC objc.c
CC cxx.c
CC msvc.c
CC swift.c
CC fs_posix.c
CC swift-sd.c
CC dlang.c
CC pdb_downloader.c
CC omap.c
CC stream_pe.c
CC anal_ebc.c
CC gdata.c
CC fs_reiserfs.c
CC fs_sfs.c
CC ebc_disas.c
CC anal_gb.c
CC fpo.c
CC dbi.c
CC tpi.c
CC stream_file.c
CC pdb.c
CC fs_squash.c
CC fs_tar.c
CC fs_udf.c
CC fs_ufs.c
CC fs_xfs.c
CC anal_h8300.c
CC h8300_disas.c
CC anal_i4004.c
CC fs.c
CC anal_i8080.c
CC file.c
CC anal_java.c
CC anal_m68k.c
CC anal_m68k_cs.c
CC anal_malbolge.c
CC anal_mips_cs.c
CC anal_mips_gnu.c
CC anal_msp430.c
CC msp430_disas.c
LD libr_fs.so
CC anal_nios2.c
CC anal_null.c
CC anal_pic18c.c
LD libr_bin.so
CC anal_ppc_cs.c
CC anal_ppc_gnu.c
CC anal_riscv.c
CC anal_rsp.c
CC rsp_idec.c
CC anal_sh.c
CC anal_snes.c
CC anal_sparc_cs.c
CC anal_sparc_gnu.c
CC anal_sysz.c
CC anal_tms320.c
/test/radare2/libr/..//libr/anal/p/anal_rsp.c: In function 'rsp_op':
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:56:4: warning: format '%u' expects argument of type 'unsigned int', but argument 4 has type 'long long unsigned int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:56:4: warning: format '%u' expects argument of type 'unsigned int', but argument 4 has type 'long long unsigned int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:60:4: warning: format '%d' expects argument of type 'int', but argument 4 has type 'long long int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:60:4: warning: format '%d' expects argument of type 'int', but argument 4 has type 'long long int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:65:4: warning: format '%d' expects argument of type 'int', but argument 4 has type 'long long int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:65:4: warning: format '%d' expects argument of type 'int', but argument 4 has type 'long long int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:75:4: warning: format '%u' expects argument of type 'unsigned int', but argument 4 has type 'long long unsigned int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:75:4: warning: format '%u' expects argument of type 'unsigned int', but argument 4 has type 'long long unsigned int' [-Wformat]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_CREG' not handled in switch [-Wswitch]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_ACCU' not handled in switch [-Wswitch]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_VREG' not handled in switch [-Wswitch]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_VREG_BYTE' not handled in switch [-Wswitch]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_VREG_SCALAR' not handled in switch [-Wswitch]
/test/radare2/libr/..//libr/anal/p/anal_rsp.c:49:3: warning: enumeration value 'RSP_OPND_C2_VREG_ELEMENT' not handled in switch [-Wswitch]
CC anal_tms320_c55x_plus.c
CC tms320_dasm.c
CC ins.c
CC c55plus.c
CC c55plus_decode.c
/test/radare2/libr/bin/p
SHLR=/test/radare2/libr/..//libr/../shlr
CC decode_funcs.c
CC utils.c
CC hashtable.c
CC hashvector.c
CC anal_v810.c
CC v810_disas.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: 'ins_hash' defined but not used [-Wunused-variable]
CC anal_v850.c
CC v850_disas.c
CC anal_vax.c
CC anal_ws.c
CC anal_x86_cs.c
CC anal_x86_udis.c
CC esil_x86_udis.c
CC anal_xcore_cs.c
CC anal_xtensa.c
CC anal_z80.c
CC meta.c
CC reflines.c
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c: In function 'anop_esil':
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1004:7: warning: comparison between 'x86_op_type' and 'enum arm_op_type' [-Wenum-compare]
/test/radare2/libr/..//libr/anal/p/anal_x86_cs.c:1012:7: warning: comparison between 'x86_op_type' and 'enum arm_op_type' [-Wenum-compare]
CC ref.c
CC op.c
CC fcn.c
CC bb.c
/test/radare2/libr/..//libr/anal/p/../../asm/arch/z80_cr/z80_tab.h:936:19: warning: 'z80_op' defined but not used [-Wunused-variable]
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
CC state.c
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
Makefile:8: Extraneous text after `ifeq' directive
Makefile:8: Extraneous text after `ifeq' directive
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
CC trace.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC arg.c
CC asm_bf.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC debug.c
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
CC snap.c
CC asm_i8080.c
CC asm_java.c
CC asm_lanai_gnu.c
CC lanai-dis.c
CC pid.c
CC lanai-opc.c
CC asm_lh5801.c
CC asm_lm32.c
CC asm_m68k.c
CC m68k_disasm.c
CC asm_m68k_cs.c
CC asm_malbolge.c
CC asm_mcs96.c
CC reg.c
CC asm_mips_cs.c
CC asm_mips_gnu.c
CC desc.c
CC mips-dis.c
CC mips16-opc.c
CC mips-opc.c
CC mipsasm.c
CC asm_msp430.c
CC asm_nios2.c
CC nios2-dis.c
CC nios2-opc.c
CC asm_pic18c.c
CC esil.c
CC asm_ppc_cs.c
CC asm_ppc_gnu.c
CC debug_bf.c
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
CC debug_bochs.c
CC sparc-dis.c
CC debug_esil.c
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
CC debug_gdb.c
CC debug_native.c
CC asm_vax.c
CC vax-dis.c
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC asm_x86_nz.c
CC asm_x86_olly.c
CC debug_qnx.c
CC disasm.c
CC asmserv.c
CC debug_rap.c
CC assembl.c
CC asm_x86_tab.c
CC asm_x86_udis.c
CC debug_wind.c
CC asm_xcore_cs.c
CC asm_xtensa.c
CC xtensa-dis.c
CC xtensa-isa.c
CC linux_debug.c
CC procfs.c
CC xtensa-modules.c
CC elf32-xtensa.c
CC asm_z80.c
CC linux_coredump.c
CC asm_z80_cr.c
CC asm.c
CC code.c
p/native/linux/linux_debug.c: In function 'linux_handle_signals':
p/native/linux/linux_debug.c:63:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
p/native/linux/linux_debug.c:78:4: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
p/native/linux/linux_debug.c: In function 'print_fpu':
p/native/linux/linux_debug.c:370:2: warning: #warning not implemented for this platform [-Wcpp]
p/native/linux/linux_debug.c: In function 'linux_reg_read':
p/native/linux/linux_debug.c:375:7: warning: variable 'showfpu' set but not used [-Wunused-but-set-variable]
p/native/linux/linux_debug.c: At top level:
p/native/linux/linux_debug.c:282:13: warning: 'print_fpu' defined but not used [-Wunused-function]
LD libr_debug.so
Makefile:8: Extraneous text after `ifeq' directive
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
mkdir -p "/test/bin/prefix/radare2//share/man/man1"
mkdir -p "/test/bin/prefix/radare2//share/man/man7"
cd man && for FILE in *.1 ; do \
  ln -fs "/test/radare2/man/$FILE" "/test/bin/prefix/radare2//share/man/man1/$FILE" ; done
cd "/test/bin/prefix/radare2//share/man/man1" && ln -fs radare2.1 r2.1
for FILE in *.7 ; do \
  ln -fs "/test/radare2/man/$FILE" "/test/bin/prefix/radare2//share/man/man7/$FILE" ; done
/usr/bin/install -d "/test/bin/prefix/radare2//share/doc/radare2"
cd doc ; for FILE in * ; do \
  ln -fs "/test/radare2/doc/$FILE" "/test/bin/prefix/radare2//share/doc/radare2" ; done
cd pkgcfg ; for FILE in *.pc ; do \
  ln -fs "${PWD}/$FILE" "/test/bin/prefix/radare2//lib/pkgconfig/$FILE" ; done
rm -rf "/test/bin/prefix/radare2//share/radare2/0.10.4-git/www"
rm -rf "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/www" # old dir
mkdir -p "/test/bin/prefix/radare2//share/radare2/0.10.4-git/www"
cd "/test/bin/prefix/radare2//share/radare2/0.10.4-git/www" ; \
  for FILE in "/test/radare2/shlr/www/"* ; do \
   ln -fs "$FILE" "/test/bin/prefix/radare2//share/radare2/0.10.4-git/www" ; done
cd libr && make install-symlink
make[1]: Entering directory `/test/radare2/libr'
mkdir -p "/test/bin/prefix/radare2//bin" \
  "/test/bin/prefix/radare2//include" \
  "/test/bin/prefix/radare2//lib/pkgconfig" \
  "/test/bin/prefix/radare2//lib/radare2/0.10.4-git"
rm -rf "/test/bin/prefix/radare2//include/libr" && ln -fs "/test/radare2/libr/include" "/test/bin/prefix/radare2//include/libr"
cd ../pkgcfg && for FILE in *.pc ; do \
  if [ -e "/test/radare2/libr/../pkgcfg/${FILE}" ] ; then \
   ln -fs "/test/radare2/libr/../pkgcfg/${FILE}" \
    "/test/bin/prefix/radare2//lib/pkgconfig/${FILE}" ; \
  fi ; \
 done
cd "/test/bin/prefix/radare2//lib/radare2" ; rm -f last ; ln -fs "0.10.4-git" last
make[1]: Leaving directory `/test/radare2/libr'
cd binr && make install-symlink
make[1]: Entering directory `/test/radare2/binr'
mkdir -p "/test/bin/prefix/radare2//bin"
for BINARY in rax2 rasm2 rabin2 rahash2 radiff2 radare2 rafind2 rarun2 ragg2 r2agent ; do ln -fs "/test/radare2/binr/$BINARY/$BINARY" "/test/bin/prefix/radare2//bin/$BINARY" ; done
ln -fs "/test/radare2/binr/ragg2/ragg2-cc" "/test/bin/prefix/radare2//bin/ragg2-cc"
ln -fs "/test/radare2/binr/r2pm/r2pm" "/test/bin/prefix/radare2//bin/r2pm"
rm -rf "/test/bin/prefix/radare2//share/radare2/0.10.4-git/r2pm"
mkdir -p "/test/bin/prefix/radare2//share/radare2/0.10.4-git/"
#ln -fs "/test/radare2/binr/r2pm/d" "/test/bin/prefix/radare2//share/radare2/0.10.4-git/r2pm"
ln -fs "/test/bin/prefix/radare2//bin/radare2" "/test/bin/prefix/radare2//bin/r2"
ln -fs "/test/radare2/binr/preload/libr2.so" "/test/bin/prefix/radare2//lib/libr2.so"
cd "/test/bin/prefix/radare2//lib" && \
  mv libr2.so libr2.so.0.10.4-git && \
  ln -fs libr2.so.0.10.4-git libr2.so
make[1]: Leaving directory `/test/radare2/binr'
cd shlr && make install-symlink
make[1]: Entering directory `/test/radare2/shlr'
mkdir -p "/test/bin/prefix/radare2//lib"
#cd tcc ; for FILE in libr_tcc* ; do \
 # ln -fs `pwd`/$FILE /test/bin/prefix/radare2//lib/$FILE ; done
make[1]: Leaving directory `/test/radare2/shlr'
for DIR in libr/cons/d libr/bin/d libr/asm/d libr/syscall/d libr/magic/d libr/anal/d ; do (\
  cd "$DIR" ; \
  echo "$DIR" ; \
  make install-symlink ); \
 done
libr/cons/d
make[1]: Entering directory `/test/radare2/libr/cons/d'
mkdir -p "/test/bin/prefix/radare2//share/radare2/0.10.4-git/cons"
for FILE in * ; do \
  if [ $FILE != Makefile ]; then \
   ln -fs "/test/radare2/libr/cons/d/$FILE" "/test/bin/prefix/radare2//share/radare2/0.10.4-git/cons/$FILE" ; \
  fi ; \
 done
make[1]: Leaving directory `/test/radare2/libr/cons/d'
libr/bin/d
make[1]: Entering directory `/test/radare2/libr/bin/d'
mkdir -p "/test/bin/prefix/radare2//share/radare2/0.10.4-git/format"
for FILE in * ; do \
  if [ "$FILE" != Makefile ]; then \
   ln -fs "/test/radare2/libr/bin/d/$FILE" "/test/bin/prefix/radare2//share/radare2/0.10.4-git/format/$FILE" ; \
  fi ; \
 done
make[1]: Leaving directory `/test/radare2/libr/bin/d'
libr/asm/d
make[1]: Entering directory `/test/radare2/libr/asm/d'
mkdir -p "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/opcodes"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/asm/d/$FILE" "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/opcodes/$FILE" ; done
make[1]: Leaving directory `/test/radare2/libr/asm/d'
libr/syscall/d
make[1]: Entering directory `/test/radare2/libr/syscall/d'
mkdir -p "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/syscall"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/syscall/d/$FILE" "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/syscall/$FILE" ; done
make[1]: Leaving directory `/test/radare2/libr/syscall/d'
libr/magic/d
make[1]: Entering directory `/test/radare2/libr/magic/d'
mkdir -p "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/magic"
cd default ; for FILE in * ; do ln -fs "/test/radare2/libr/magic/d/default/$FILE" \
  "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/magic/$FILE" ; done
make[1]: Leaving directory `/test/radare2/libr/magic/d'
libr/anal/d
make[1]: Entering directory `/test/radare2/libr/anal/d'
mkdir -p "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/fcnsign"
for FILE in *.sdb ; do ln -fs "/test/radare2/libr/anal/d/$FILE" "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/fcnsign/$FILE" ; done
make[1]: Leaving directory `/test/radare2/libr/anal/d'
mkdir -p "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/hud"
cd "/test/bin/prefix/radare2//lib/radare2/" ;\
  rm -f last ; ln -fs 0.10.4-git last
cd "/test/bin/prefix/radare2//share/radare2/" ;\
  rm -f last ; ln -fs 0.10.4-git last
ln -fs "/test/radare2/doc/hud" "/test/bin/prefix/radare2//lib/radare2/0.10.4-git/hud/main"
mkdir -p "/test/bin/prefix/radare2//share/radare2/0.10.4-git/"
sys/ldconfig.sh
./configure-plugins --rm-static //test/bin/prefix/radare2//lib/radare2/last/
configure-plugins: Loading ./plugins.cfg ..
Removed 97 shared plugins that are already static
mkdir -p ~/bin
echo "#!/bin/sh" > ~/bin/"rabin2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rabin2' \"\$@\"" >> ~/bin/"rabin2" ; chmod +x ~/bin/"rabin2" ; echo "#!/bin/sh" > ~/bin/"radare2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'radare2' \"\$@\"" >> ~/bin/"radare2" ; chmod +x ~/bin/"radare2" ; echo "#!/bin/sh" > ~/bin/"radiff2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'radiff2' \"\$@\"" >> ~/bin/"radiff2" ; chmod +x ~/bin/"radiff2" ; echo "#!/bin/sh" > ~/bin/"rafind2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rafind2' \"\$@\"" >> ~/bin/"rafind2" ; chmod +x ~/bin/"rafind2" ; echo "#!/bin/sh" > ~/bin/"ragg2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'ragg2' \"\$@\"" >> ~/bin/"ragg2" ; chmod +x ~/bin/"ragg2" ; echo "#!/bin/sh" > ~/bin/"rahash2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rahash2' \"\$@\"" >> ~/bin/"rahash2" ; chmod +x ~/bin/"rahash2" ; echo "#!/bin/sh" > ~/bin/"rarun2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rarun2' \"\$@\"" >> ~/bin/"rarun2" ; chmod +x ~/bin/"rarun2" ; echo "#!/bin/sh" > ~/bin/"rasign2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rasign2' \"\$@\"" >> ~/bin/"rasign2" ; chmod +x ~/bin/"rasign2" ; echo "#!/bin/sh" > ~/bin/"rasm2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rasm2' \"\$@\"" >> ~/bin/"rasm2" ; chmod +x ~/bin/"rasm2" ; echo "#!/bin/sh" > ~/bin/"rax2" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'rax2' \"\$@\"" >> ~/bin/"rax2" ; chmod +x ~/bin/"rax2" ; echo "#!/bin/sh" > ~/bin/"r2agent" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'r2agent' \"\$@\"" >> ~/bin/"r2agent" ; chmod +x ~/bin/"r2agent" ; echo "#!/bin/sh" > ~/bin/"r2pm" ; echo "/test/radare2/env.sh '/test/bin/prefix/radare2/' 'r2pm' \"\$@\"" >> ~/bin/"r2pm" ; chmod +x ~/bin/"r2pm" ;
cd ~/bin ; ln -fs radare2 r2

radare2 is now installed in /test/bin

Now add /test/bin to your PATH

powerpc:~/radare2$
[07/04/16  8:44 PM]



################################
##                            ##
##  RUNNING TEST              ##
##                            ##
################################


powerpc:~/radare2$ r2 -v
radare2 0.10.4-git 11827 @ linux-ppc-32 git.0.10.3-403-g2f5ead1
commit: 2f5ead1efd481af5864acad26fc7307d2555e8f3 build: 2016-07-04
powerpc:~/radare2$ r2 -V
0.10.3-403-g2f5ead1  r2
0.10.3-403-g2f5ead1  r_anal
0.10.3-403-g2f5ead1  r_lib
0.10.3-403-g2f5ead1  r_egg
0.10.3-403-g2f5ead1  r_asm
0.10.3-403-g2f5ead1  r_bin
0.10.3-403-g2f5ead1  r_cons
0.10.3-403-g2f5ead1  r_flags
0.10.3-403-g2f5ead1  r_core
0.10.3-403-g2f5ead1  r_crypto
0.10.3-403-g2f5ead1  r_bp
0.10.3-403-g2f5ead1  r_debug
0.10.3-403-g2f5ead1  r_hash
0.10.3-403-g2f5ead1  r_fs
0.10.3-403-g2f5ead1  r_io
0.10.3-403-g2f5ead1  r_magic
0.10.3-403-g2f5ead1  r_parse
0.10.3-403-g2f5ead1  r_reg
0.10.3-403-g2f5ead1  r_sign
0.10.3-403-g2f5ead1  r_search
0.10.3-403-g2f5ead1  r_syscall
0.10.3-403-g2f5ead1  r_util
powerpc:~/radare2$ date
Mon Jul  4 11:48:12 UTC 2016
powerpc:~/radare2$ r2 /bin/
Display all 117 possibilities? (y or n)
bash            bzmore          dmesg           gzexe           loadkeys        mv              pwd             ss              vdir
bunzip2         cat             dnsdomainname   gzip            login           nano            rbash           stty            which
busybox         chgrp           domainname      hostname        ls              nc              readlink        su              ypdomainname
bzcat           chmod           dumpkeys        ip              lsblk           nc.traditional  rm              sync            zcat
bzcmp           chown           echo            kbd_mode        lsmod           netcat          rmdir           tailf           zcmp
bzdiff          chvt            egrep           kill            mkdir           netstat         rnano           tar             zdiff
bzegrep         cp              false           kmod            mknod           nisdomainname   run-parts       tempfile        zegrep
bzexe           cpio            fgconsole       less            mktemp          open            sed             touch           zfgrep
bzfgrep         dash            fgrep           lessecho        more            openvt          setfont         true            zforce
bzgrep          date            findmnt         lessfile        mount           pidof           setupcon        umount          zgrep
bzip2           dd              fuser           lesskey         mountpoint      ping            sh              uname           zless
bzip2recover    df              grep            lesspipe        mt              ping6           sh.distrib      uncompress      zmore
bzless          dir             gunzip          ln              mt-gnu          ps              sleep           unicode_start   znew
powerpc:~/radare2$ r2 /bin/nc
Warning: Cannot initialize program headers
Warning: Cannot initialize section headers
Warning: Cannot initialize strings table
Warning: Cannot initialize dynamic strings
Warning: Cannot initialize dynamic section
Warning: read (init_offset)
 -- radare2 is for lulzhats
[0x10001c0c]> i
type     <unknown>: 200
file     /bin/nc
fd       4
size     0x6720
iorw     false
blksz    0x0
mode     -r--
block    0x100
format   elf
havecode true
pic      false
canary   false
nx       false
crypto   false
va       true
bintype  elf
class    ELF32
lang     c
arch     x86   <====== THIS
bits     32
machine  <unknown>: 0x1400
os       linux
minopsz  1
maxopsz  16
pcalign  0
subsys   linux
endian   big
stripped false
static   true
linenum  true
lsyms    true
relocs   true
rpath    NONE
binsz    26400

[0x10001c0c]> e asm.arch
x86                       <==== THIS

[0x10001c0c]> e asm.arch =ppc
[0x10001c0c]> e asm.arch
ppc

[0x10001c0c]> ie
[Entrypoints]
vaddr=0x10001c0c paddr=0x10001c0c baddr=0x00000000 laddr=0x00000000 type=program

1 entrypoints

[0x10001c0c]> pd 5
            ;-- entry0:
            0x10001c0c      ffffffff       fnmadd. f31, f31, f31, f31 <=== this
            0x10001c10      ffffffff       fnmadd. f31, f31, f31, f31
            0x10001c14      ffffffff       fnmadd. f31, f31, f31, f31
            0x10001c18      ffffffff       fnmadd. f31, f31, f31, f31
            0x10001c1c      ffffffff       fnmadd. f31, f31, f31, f31

[0x10001c0c]> b 100 ;x
- offset -   0 1  2 3  4 5  6 7  8 9  A B  C D  E F  0123456789ABCDEF
0x10001c0c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c1c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c2c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c3c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c4c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c5c  ffff ffff ffff ffff ffff ffff ffff ffff  ................
0x10001c6c  ffff ffff                                ....
[0x10001c0c]> b 100 ;px

[0x10001c0c]> !date
Mon Jul  4 11:50:51 UTC 2016

[EOF]



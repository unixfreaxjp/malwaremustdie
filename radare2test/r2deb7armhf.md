See ref:
```c
https://twitter.com/malwaremustd1e/status/1065954294896066560
https://github.com/radare/radare2/issues/11834#issuecomment-441233089
```
Found several Linux embeded systems with older compiler doesn't support NANOSLEEP, 
also Debian 7 (Wheezy) has similar problem (fyi: supported until May 2018 by debian.org),
on those cases you will face the error as per below in installing radare2 > ver 3:

1. OS info
```
Debian 7 (Wheezy)
AMD 64bit, ARMHF
```
2. Compile error log
```asm
$ sudo apt-get upgrade
Reading package lists... Done
Building dependency tree        
Reading state information... Done
The following packages have been kept back:
  linux-image-amd64 python-reportbug reportbug
0 upgraded, 0 newly installed, 0 to remove and 3 not upgraded.
$ cd /test/
$ sys/install.sh
WARNING: Updating from remote repository
remote: Enumerating objects: 6400, done.
remote: Counting objects: 100% (6400/6400), done.
remote: Compressing objects: 100% (10/10), done.
remote: Total 15726 (delta 6390), reused 6395 (delta 6390), pack-reused 9326
Receiving objects: 100% (15726/15726), 8.63 MiB | 1.40 MiB/s, done.
Resolving deltas: 100% (13112/13112), completed with 1298 local objects.
From https://github.com/radare/radare2
   9539d32..c1fa170  master     -> origin/master
 * [new branch]      add-json-print-api -> origin/add-json-print-api
 * [new branch]      alloc-api  -> origin/alloc-api
 * [new branch]      anal-ass-ert -> origin/anal-ass-ert
 * [new branch]      anal-classes -> origin/anal-classes
 * [new branch]      arm-fix    -> origin/arm-fix
 * [new branch]      better-emcc -> origin/better-emcc
 * [new branch]      better-hex-visual -> origin/better-hex-visual
 * [new branch]      better-visual-refs -> origin/better-visual-refs
 + 3761d5a...f1cbb5e bin-fat-str -> origin/bin-fat-str  (forced update)
 * [new branch]      bin-symbols -> origin/bin-symbols
 * [new branch]      break-continue -> origin/break-continue
 * [new branch]      callpop    -> origin/callpop
 * [new branch]      custom-libr -> origin/custom-libr
 * [new branch]      dword-jmptbl -> origin/dword-jmptbl
 * [new branch]      fix-11714  -> origin/fix-11714
 * [new branch]      fix-12188  -> origin/fix-12188
 * [new branch]      fix-12202  -> origin/fix-12202
 * [new branch]      fix-12239  -> origin/fix-12239
 * [new branch]      fix-12242  -> origin/fix-12242
 * [new branch]      fix-asserts -> origin/fix-asserts
 * [new branch]      fix-elf-ppc -> origin/fix-elf-ppc
 * [new branch]      fix-hexdump -> origin/fix-hexdump
 * [new branch]      fix-info-help -> origin/fix-info-help
 * [new branch]      fix-ios-arm-build -> origin/fix-ios-arm-build
 * [new branch]      fix-macos-ls-assert -> origin/fix-macos-ls-assert
 * [new branch]      fix-mdmp   -> origin/fix-mdmp
 * [new branch]      fix-ppc-dis -> origin/fix-ppc-dis
 * [new branch]      fix-warns  -> origin/fix-warns
 * [new branch]      fix-wasm   -> origin/fix-wasm
 * [new branch]      fix_esil_cmp -> origin/fix_esil_cmp
 * [new branch]      flag-callbacks -> origin/flag-callbacks
 * [new branch]      gmtime_win -> origin/gmtime_win
 * [new branch]      hash-strings -> origin/hash-strings
 * [new branch]      jemalloc   -> origin/jemalloc
 * [new branch]      log        -> origin/log
 * [new branch]      midflags   -> origin/midflags
 * [new branch]      minor-cbin -> origin/minor-cbin
 * [new branch]      objid2binfd -> origin/objid2binfd
 * [new branch]      pe-fixes   -> origin/pe-fixes
 * [new branch]      ptrace-wrap-func -> origin/ptrace-wrap-func
 * [new branch]      refactor   -> origin/refactor
 * [new branch]      reloc-name -> origin/reloc-name
 * [new branch]      rex-not    -> origin/rex-not
 * [new branch]      wasm-esil  -> origin/wasm-esil
From https://github.com/radare/radare2
 * [new tag]         2.6.9      -> 2.6.9
 * [new tag]         2.7.0      -> 2.7.0
 * [new tag]         2.8.0      -> 2.8.0
 * [new tag]         2.9.0      -> 2.9.0
 * [new tag]         3.0.1      -> 3.0.1
Updating 9539d32..c1fa170
Checking out files: 100% (1081/1081), done.
Fast-forward
 doc/clang-format => .clang-format                  |   25 +-
 .../bug_report.md}                                 |    6 +
 .github/ISSUE_TEMPLATE/feature_request.md          |   18 +
 .gitignore                                         |   19 +-
 .travis.yml                                        |   88 +-
 AUTHORS.md                                         |    4 +-
 CONTRIBUTING.md                                    |  228 +-
 DEVELOPERS.md                                      |  304 +-
 Dockerfile                                         |   17 +-
 Dockerfile.travis                                  |   33 +
 Doxyfile                                           | 2482 +++
 Makefile                                           |   38 +-
 README.md                                          |  118 +-
 autogen.sh                                         |   17 +-
 binr/Makefile                                      |    6 +-
 binr/blob/Makefile                                 |    1 +
 binr/preload/libr2.c                               |    4 +-
 binr/r2agent/Makefile                              |    5 +
 binr/r2agent/meson.build                           |    6 +-
 binr/r2agent/r2agent.c                             |   22 +-
 binr/r2pm/meson.build                              |    1 +
 binr/r2pm/r2pm                                     |   99 +-
 binr/rabin2/meson.build                            |   14 +-
 binr/rabin2/rabin2.c                               |  145 +-
 binr/radare2/Makefile                              |   17 +-
 binr/radare2/meson.build                           |   26 +-
 binr/radare2/radare2.c                             |  271 +-
 binr/radare2/{radare2.xml => radare2_ios.xml}      |    7 +
 binr/radare2/radare2_macos.xml                     |   15 +
 binr/radiff2/meson.build                           |   13 +-
 binr/radiff2/radiff2.c                             |   18 +-
 binr/rafind2/Makefile                              |    4 +-
 binr/rafind2/meson.build                           |    8 +-
 binr/rafind2/rafind2.c                             |  134 +-
 binr/ragg2/Makefile                                |    2 +-
 binr/ragg2/meson.build                             |   13 +-
 binr/ragg2/ragg2.c                                 |  113 +-
 binr/rahash2/Makefile                              |    2 +-
 binr/rahash2/meson.build                           |    8 +-
 binr/rahash2/rahash2.c                             |   25 +-
 binr/rarun2/meson.build                            |    5 +-
 binr/rasm2/Makefile                                |    4 +-
 binr/rasm2/meson.build                             |   10 +-
 binr/rasm2/rasm2.c                                 |  102 +-
 binr/rax2/meson.build                              |    2 +-
 binr/rax2/rax2.c                                   |   47 +-
 binr/rules.mk                                      |   39 +-
 config-user.mk.acr                                 |   10 +
 configure                                          |   90 +-
 configure.acr                                      |   58 +-
 doc/capstone.md                                    |    2 +-
 doc/esil.md                                        |    4 +-
 doc/fortunes.creepy                                |    1 +
 doc/fortunes.fun                                   |   45 +-
 doc/fortunes.tips                                  |    2 -
 doc/freebsd.md                                     |    4 +-
 doc/images/morelogos.svg                           |  173 +
 doc/indent-example.c                               |   47 +
 doc/openbsd.md                                     |   41 +
 doc/plugins.md                                     |    2 +-
 doc/sandbox/README.md                              |   12 +-
 doc/solaris.md                                     |    2 +-
 doc/types.md                                       |  143 -
 doc/vim                                            |    2 +-
 doc/zsh/_r2                                        |    6 +-
 doc/zsh/_rabin2                                    |    2 +-
 doc/zsh/_radiff2                                   |    2 +-
 doc/zsh/_rafind2                                   |    1 +
 doc/zsh/_ragg2                                     |    2 +-
 doc/zsh/_rax2                                      |    2 +
 env.sh                                             |    2 +-
 global.mk                                          |    7 +-
 libr/Makefile                                      |   74 +-
 libr/anal/Makefile                                 |    3 +-
 libr/anal/anal.c                                   |  247 +-
 libr/anal/anal_ex.c                                |   36 +-
 libr/anal/bb.c                                     |   29 +-
 libr/anal/cc.c                                     |   29 +-
 libr/anal/cond.c                                   |   29 +-
 libr/anal/cycles.c                                 |    7 +-
 libr/anal/d/Makefile                               |    3 +-
 libr/anal/d/meson.build                            |    2 +-
 libr/anal/d/spec.sdb.txt                           |   15 +
 libr/anal/d/types-linux.sdb.txt                    |   76 +
 libr/anal/d/types-windows.sdb.txt                  |    3 +-
 libr/anal/d/types.sdb.txt                          |  493 +-
 libr/anal/data.c                                   |   62 +-
 libr/anal/diff.c                                   |    5 +-
 libr/anal/esil.c                                   |  251 +-
 libr/anal/esil2reil.c                              |  143 +-
 libr/anal/esil_interrupt.c                         |  147 +
 libr/anal/esil_sources.c                           |   91 +
 libr/anal/esil_stats.c                             |    6 +-
 libr/anal/esil_trace.c                             |   20 +-
 libr/anal/fcn.c                                    |  716 +-
 libr/anal/flirt.c                                  |    8 +-
 libr/anal/hint.c                                   |   54 +-
 libr/anal/labels.c                                 |    6 +-
 libr/anal/meson.build                              |   65 +-
 libr/anal/meta.c                                   |  159 +-
 libr/anal/op.c                                     |  212 +-
 libr/anal/p/Makefile                               |    4 +-
 libr/anal/p/anal_6502.c                            |  216 +-
 libr/anal/p/anal_8051.c                            |   30 +-
 libr/anal/p/anal_arc.c                             |    5 +-
 libr/anal/p/anal_arm_cs.c                          |  493 +-
 libr/anal/p/anal_arm_gnu.c                         |   20 +-
 libr/anal/p/anal_arm_hacks.inc                     |   21 +
 libr/anal/p/anal_avr.c                             |   46 +-
 libr/anal/p/anal_bf.c                              |    8 +-
 libr/anal/p/anal_chip8.c                           |    2 +-
 libr/anal/p/anal_cr16.c                            |    2 +-
 libr/anal/p/anal_cris.c                            |    4 +-
 libr/anal/p/anal_dalvik.c                          |   14 +-
 libr/anal/p/anal_ebc.c                             |   11 +-
 libr/anal/p/anal_gb.c                              |  281 +-
 libr/anal/p/anal_h8300.c                           |   53 +-
 libr/anal/p/anal_hexagon.c                         |    2 +-
 libr/anal/p/anal_i4004.c                           |   23 +-
 libr/anal/p/anal_i8080.c                           |    2 +-
 libr/anal/p/anal_java.c                            |   86 +-
 libr/anal/p/anal_m68k_cs.c                         |  110 +-
 libr/anal/p/anal_malbolge.c                        |    2 +-
 libr/anal/p/anal_mcore.c                           |  138 +
 libr/anal/p/anal_mips_cs.c                         |  483 +-
 libr/anal/p/anal_mips_gnu.c                        |   14 +-
 libr/anal/p/anal_msp430.c                          |   12 +-
 libr/anal/p/anal_nios2.c                           |   99 +-
 libr/anal/p/anal_null.c                            |    2 +-
 libr/anal/p/anal_pic.c                             |   64 +-
 libr/anal/p/anal_ppc_cs.c                          |  234 +-
 libr/anal/p/anal_ppc_gnu.c                         |   14 +-
 libr/anal/p/anal_riscv.c                           |   19 +-
 libr/anal/p/anal_rsp.c                             |   14 +-
 libr/anal/p/anal_sh.c                              | 1096 +-
 libr/anal/p/anal_snes.c                            |   25 +-
 libr/anal/p/anal_sparc_cs.c                        |   79 +-
 libr/anal/p/anal_sparc_gnu.c                       |   19 +-
 libr/anal/p/anal_sysz.c                            |    2 +-
 libr/anal/p/anal_tms320.c                          |   11 +-
 libr/anal/p/anal_tms320_c55x_plus.c                |    6 +-
 libr/anal/p/anal_tms320c64x.c                      |    2 +-
 libr/anal/p/anal_v810.c                            |   42 +-
 libr/anal/p/anal_v850.c                            |  160 +-
 libr/anal/p/anal_vax.c                             |    6 +-
 libr/anal/p/anal_wasm.c                            |  300 +-
 libr/anal/p/anal_ws.c                              |   83 +-
 libr/anal/p/anal_x86_cs.c                          |  304 +-
 libr/anal/p/anal_xap.c                             |   32 +-
 libr/anal/p/anal_xcore_cs.c                        |    5 +-
 libr/anal/p/anal_xtensa.c                          |   44 +-
 libr/anal/p/anal_z80.c                             |   36 +-
 libr/anal/p/mcore.mk                               |   11 +
 libr/anal/reflines.c                               |   16 +-
 libr/anal/rtti.c                                   |   37 +-
 libr/anal/rtti_itanium.c                           |   57 +-
 libr/anal/rtti_msvc.c                              |  214 +-
 libr/anal/sign.c                                   |  223 +-
 libr/anal/state.c                                  |   24 +-
 libr/anal/value.c                                  |   53 +-
 libr/anal/var.c                                    |  283 +-
 libr/anal/vtable.c                                 |  127 +-
 libr/anal/xrefs.c                                  |  143 +-
 libr/asm/Makefile                                  |    2 +-
 libr/asm/arch/6502/6502dis.c                       |   32 +-
 libr/asm/arch/8051/8051_disas.c                    |    8 +-
 libr/asm/arch/arc/gnu/arc-dis.c                    |  424 +-
 libr/asm/arch/arc/gnu/arc-ext.c                    |   68 +-
 libr/asm/arch/arc/gnu/arc-opc.c                    |  880 +-
 libr/asm/arch/arc/gnu/arcompact-dis.c              |  794 +-
 libr/asm/arch/arm/aarch64/aarch64-dis-2.c          |21078 ++++++++++++++++----
 libr/asm/arch/arm/aarch64/aarch64-dis.c            | 1423 +-
 libr/asm/arch/arm/aarch64/aarch64-dis.h            |   45 +-
 libr/asm/arch/arm/aarch64/aarch64-opc-2.c          |  260 +-
 libr/asm/arch/arm/aarch64/aarch64-opc.c            | 2550 ++-
 libr/asm/arch/arm/aarch64/aarch64-opc.h            |  117 +-
 libr/asm/arch/arm/aarch64/aarch64-tbl.h            | 4204 +++-
 libr/asm/arch/arm/aarch64/aarch64.h                |  333 +-
 libr/asm/arch/arm/aarch64/sysdep.h                 |   81 +-
 libr/asm/arch/arm/armass.c                         |  405 +-
 libr/asm/arch/arm/gnu/arm-dis.c                    | 3638 ++--
 libr/asm/arch/arm/gnu/floatformat.c                |  182 +-
 libr/asm/arch/arm/winedbg/be_arm.c                 |   20 +-
 libr/asm/arch/cr16/cr16_disas.c                    |  137 +-
 libr/asm/arch/cr16/cr16_disas.h                    |    8 +-
 libr/asm/arch/cris/gnu/cris-dis.c                  | 1182 +-
 libr/asm/arch/ebc/ebc_disas.c                      |  200 +-
 libr/asm/arch/gb/gbasm.c                           |  913 +-
 libr/asm/arch/gb/gbdis.c                           |   31 +-
 libr/asm/arch/h8300/h8300_disas.c                  |    7 +-
 libr/asm/arch/hexagon/gnu/hexagon-dis.c            |    2 +-
 libr/asm/arch/hexagon/hexagon.c                    |    3 +-
 libr/asm/arch/hppa/gnu/hppa-dis.c                  |  365 +-
 libr/asm/arch/i4004/i4004dis.c                     |   61 +-
 libr/asm/arch/include/{dis-asm.h => disas-asm.h}   |   29 +-
 libr/asm/arch/lanai/gnu/lanai-dis.c                |   76 +-
 libr/asm/arch/lanai/gnu/lanai-opc.c                |    2 +-
 libr/asm/arch/mcore/mcore.c                        |  480 +
 libr/asm/arch/mcore/mcore.h                        |   55 +
 libr/asm/arch/mips/gnu/mips-dis.c                  |  556 +-
 libr/asm/arch/mips/gnu/mips-opc.c                  |   12 +-
 libr/asm/arch/mips/mipsasm.c                       |  148 +-
 libr/asm/arch/msp430/msp430_disas.c                |  260 +-
 libr/asm/arch/msp430/msp430_disas.h                |   18 +-
 libr/asm/arch/nios/gnu/nios2-dis.c                 |  191 +-
 libr/asm/arch/pic/pic_baseline.c                   |   44 +-
 libr/asm/arch/pic/pic_baseline.h                   |    2 +-
 libr/asm/arch/pic/pic_midrange.c                   |   71 +-
 libr/asm/arch/pic/pic_midrange.h                   |    2 +-
 libr/asm/arch/pic/pic_pic18.c                      |  256 +-
 libr/asm/arch/pic/pic_pic18.h                      |    2 +-
 libr/asm/arch/ppc/gnu/ppc-dis.c                    |  400 +-
 libr/asm/arch/ppc/gnu/ppc-opc.c                    |  515 +-
 libr/asm/arch/propeller/propeller_disas.c          |   12 +-
 libr/asm/arch/riscv/riscv.c                        |   19 +-
 libr/asm/arch/sh/gnu/sh-dis.c                      |  319 +-
 libr/asm/arch/snes/snesdis.c                       |   35 +-
 libr/asm/arch/sparc/gnu/sparc-dis.c                |  385 +-
 libr/asm/arch/sparc/gnu/sparc-opc.c                |  154 +-
 libr/asm/arch/spc700/spc700dis.c                   |   13 +-
 libr/asm/arch/tms320/c55x_plus/c55plus.c           |    7 +-
 libr/asm/arch/tms320/c55x_plus/c55plus_decode.c    |   66 +-
 libr/asm/arch/tms320/c55x_plus/decode_funcs.c      |   25 +-
 libr/asm/arch/tms320/c55x_plus/hashtable.c         | 1127 +-
 libr/asm/arch/tms320/c55x_plus/ins.c               |   11 +-
 libr/asm/arch/tms320/tms320_dasm.c                 |  257 +-
 libr/asm/arch/tms320/tms320_dasm.h                 |    2 +-
 libr/asm/arch/tricore/gnu/cpu-tricore.c            |   33 +-
 libr/asm/arch/tricore/gnu/tricore-dis.c            | 1617 +-
 libr/asm/arch/v810/v810_disas.c                    |    9 +-
 libr/asm/arch/v850/v850_disas.c                    |  121 +-
 libr/asm/arch/v850/v850_disas.h                    |  144 +-
 libr/asm/arch/vax/vax-dis.c                        |  129 +-
 libr/asm/arch/wasm/wasm.c                          |   53 +-
 libr/asm/arch/whitespace/wsdis.c                   |  176 +-
 libr/asm/arch/xtensa/gnu/elf32-xtensa.c            |    2 +-
 libr/asm/arch/xtensa/gnu/xtensa-dis.c              |  140 +-
 libr/asm/arch/xtensa/gnu/xtensa-isa.c              |  214 +-
 libr/asm/arch/xtensa/gnu/xtensa-modules.c          | 1724 +-
 libr/asm/arch/z80/z80.c                            |  144 +-
 libr/asm/arch/z80/z80_tab.h                        |    1 +
 libr/asm/asm.c                                     |  315 +-
 libr/asm/code.c                                    |    2 +-
 libr/asm/d/Makefile                                |    2 +-
 libr/asm/d/arm.sdb.txt                             |   17 +
 libr/asm/d/meson.build                             |    1 -
 libr/asm/d/v850.sdb.txt                            |   84 +
 libr/asm/meson.build                               |   87 +-
 libr/asm/op.c                                      |   77 +
 libr/asm/p/Makefile                                |    2 +-
 libr/asm/p/asm_6502.c                              |    9 +-
 libr/asm/p/asm_8051.c                              |    2 +-
 libr/asm/p/asm_arc.c                               |   40 +-
 libr/asm/p/asm_arm_as.c                            |   36 +-
 libr/asm/p/asm_arm_cs.c                            |  114 +-
 libr/asm/p/asm_arm_gnu.c                           |   50 +-
 libr/asm/p/asm_arm_winedbg.c                       |   12 +-
 libr/asm/p/asm_avr.c                               |   65 +-
 libr/asm/p/asm_bf.c                                |   89 +-
 libr/asm/p/asm_chip8.c                             |   96 +-
 libr/asm/p/asm_cr16.c                              |   19 +-
 libr/asm/p/asm_cris_gnu.c                          |   57 +-
 libr/asm/p/asm_dalvik.c                            |   66 +-
 libr/asm/p/asm_dcpu16.c                            |   20 +-
 libr/asm/p/asm_ebc.c                               |   25 +-
 libr/asm/p/asm_gas.c                               |    2 +-
 libr/asm/p/asm_gb.c                                |    9 +-
 libr/asm/p/asm_h8300.c                             |   19 +-
 libr/asm/p/asm_hexagon.c                           |   19 +-
 libr/asm/p/asm_hexagon_gnu.c                       |   43 +-
 libr/asm/p/asm_hppa_gnu.c                          |   57 +-
 libr/asm/p/asm_i4004.c                             |    2 +-
 libr/asm/p/asm_i8080.c                             |   13 +-
 libr/asm/p/asm_java.c                              |   16 +-
 libr/asm/p/asm_lanai_gnu.c                         |   61 +-
 libr/asm/p/asm_lh5801.c                            |   19 +-
 libr/asm/p/asm_lm32.c                              |   90 +-
 libr/asm/p/asm_m68k_cs.c                           |   51 +-
 libr/asm/p/asm_malbolge.c                          |   48 +-
 libr/asm/p/asm_mcore.c                             |   43 +
 libr/asm/p/asm_mcs96.c                             |   24 +-
 libr/asm/p/asm_mips_cs.c                           |   38 +-
 libr/asm/p/asm_mips_gnu.c                          |   74 +-
 libr/asm/p/asm_msp430.c                            |   20 +-
 libr/asm/p/asm_nios2.c                             |   61 +-
 libr/asm/p/asm_pic.c                               |   23 +-
 libr/asm/p/asm_ppc_cs.c                            |   33 +-
 libr/asm/p/asm_ppc_gnu.c                           |   62 +-
 libr/asm/p/asm_propeller.c                         |   22 +-
 libr/asm/p/asm_riscv.c                             |    2 +-
 libr/asm/p/asm_rsp.c                               |    7 +-
 libr/asm/p/asm_sh.c                                |   54 +-
 libr/asm/p/asm_snes.c                              |   26 +-
 libr/asm/p/asm_sparc_cs.c                          |    9 +-
 libr/asm/p/asm_sparc_gnu.c                         |   42 +-
 libr/asm/p/asm_spc700.c                            |    6 +-
 libr/asm/p/asm_sysz.c                              |   16 +-
 libr/asm/p/asm_tms320.c                            |   18 +-
 libr/asm/p/asm_tms320c64x.c                        |   14 +-
 libr/asm/p/asm_tricore.c                           |   81 +-
 libr/asm/p/asm_v810.c                              |   12 +-
 libr/asm/p/asm_v850.c                              |   14 +-
 libr/asm/p/asm_vax.c                               |   51 +-
 libr/asm/p/asm_wasm.c                              |   10 +-
 libr/asm/p/asm_ws.c                                |    2 +-
 libr/asm/p/asm_x86_as.c                            |   36 +-
 libr/asm/p/asm_x86_cs.c                            |   22 +-
 libr/asm/p/asm_x86_nasm.c                          |   15 +-
 libr/asm/p/asm_x86_nz.c                            |  517 +-
 libr/asm/p/asm_x86_vm.c                            |   46 +-
 libr/asm/p/asm_xap.c                               |   17 +-
 libr/asm/p/asm_xcore_cs.c                          |   23 +-
 libr/asm/p/asm_xtensa.c                            |   47 +-
 libr/asm/p/asm_z80.c                               |    7 +-
 libr/asm/p/cs_mnemonics.c                          |    4 +-
 libr/asm/p/mcore.mk                                |   14 +
 libr/bin/Makefile                                  |    9 +-
 libr/bin/{file.c => bfile.c}                       |  720 +-
 libr/bin/bin.c                                     |  797 +-
 libr/bin/bin_write.c                               |    4 +-
 libr/bin/blang.c                                   |  190 +
 libr/bin/d/Makefile                                |    1 +
 libr/bin/d/dll/mfc120.sdb.txt                      |13242 ++++++++++++
 libr/bin/d/meson.build                             |    1 -
 libr/bin/demangle.c                                |  473 +-
 libr/bin/dwarf.c                                   |  190 +-
 libr/bin/filter.c                                  |  149 +-
 libr/bin/format/bflt/bflt.c                        |    4 +-
 libr/bin/format/coff/coff.c                        |   14 +-
 libr/bin/format/dex/dex.c                          |    2 +-
 libr/bin/format/dex/dex.h                          |   20 +-
 libr/bin/format/elf/elf.c                          | 1148 +-
 libr/bin/format/elf/elf.h                          |    8 +-
 libr/bin/format/elf/elf_write.c                    |   16 +-
 libr/bin/format/mach0/dyldcache.c                  |   33 +-
 libr/bin/format/mach0/fatmach0.c                   |    5 +-
 libr/bin/format/mach0/mach0.c                      | 1082 +-
 libr/bin/format/mach0/mach0.h                      |   27 +-
 libr/bin/format/mach0/mach0_defines.h              |   18 +-
 libr/bin/format/mdmp/mdmp.c                        |  183 +-
 libr/bin/format/mdmp/mdmp.h                        |    3 +-
 libr/bin/format/mdmp/mdmp_pe.c                     |   66 +-
 libr/bin/format/mdmp/mdmp_specs.h                  |   76 +-
 libr/bin/format/mz/mz.c                            |  356 +-
 libr/bin/format/mz/mz.h                            |   17 +-
 libr/bin/format/nxo/nxo.c                          |    2 +-
 libr/bin/format/objc/mach0_classes.c               |    7 +-
 libr/bin/format/omf/omf.c                          |  152 +-
 libr/bin/format/omf/omf.h                          |    6 +-
 libr/bin/format/p9/p9bin.c                         |   20 +-
 libr/bin/format/pe/pe.c                            |  264 +-
 libr/bin/format/pe/pe.h                            |    8 +-
 libr/bin/format/pe/pe_write.c                      |   13 +-
 libr/bin/format/pe/pemixed.c                       |  192 +
 libr/bin/format/pe/pemixed.h                       |   29 +
 libr/bin/format/te/te.c                            |   66 +-
 libr/bin/format/wasm/wasm.c                        |  130 +-
 libr/bin/format/wasm/wasm.h                        |   36 +-
 libr/bin/format/zimg/zimg.c                        |    3 +
 libr/bin/i/private.h                               |   42 +
 libr/bin/mangling/cxx.c                            |  104 +-
 libr/bin/mangling/cxx/Makefile                     |    2 +
 libr/bin/mangling/cxx/cp-demangle.c                | 2200 +-
 libr/bin/mangling/cxx/test.js                      |    5 +
 libr/bin/mangling/dlang.c                          |   42 -
 libr/bin/mangling/java.c                           |   81 +
 libr/bin/mangling/microsoft_demangle.c             |   75 +-
 libr/bin/mangling/msvc.c                           |   33 +-
 libr/bin/mangling/objc.c                           |  165 +-
 libr/bin/mangling/rust.c                           |   76 +
 libr/bin/mangling/swift-sd.c                       |   55 +-
 libr/bin/mangling/swift.c                          |    8 +-
 libr/bin/meson.build                               |   41 +-
 libr/bin/obj.c                                     |  340 +-
 libr/bin/open.c                                    |   95 -
 libr/bin/p/bin_any.c                               |    8 +-
 libr/bin/p/bin_art.c                               |   29 +-
 libr/bin/p/bin_avr.c                               |   23 +-
 libr/bin/p/bin_bf.c                                |    6 +-
 libr/bin/p/bin_bflt.c                              |   16 +-
 libr/bin/p/bin_bios.c                              |   35 +-
 libr/bin/p/bin_bootimg.c                           |   60 +-
 libr/bin/p/bin_cgc.c                               |   18 +-
 libr/bin/p/bin_coff.c                              |   36 +-
 libr/bin/p/bin_dex.c                               |  101 +-
 libr/bin/p/bin_dol.c                               |   31 +-
 libr/bin/p/bin_dyldcache.c                         |   62 +-
 libr/bin/p/bin_elf.c                               | 1186 +-
 libr/bin/p/bin_elf.inc                             | 1238 ++
 libr/bin/p/bin_elf64.c                             |   10 +-
 libr/bin/p/bin_fs.c                                |   11 +-
 libr/bin/p/bin_java.c                              |   20 +-
 libr/bin/p/bin_ldr_linux.c                         |    2 +-
 libr/bin/p/bin_mach0.c                             |  132 +-
 libr/bin/p/bin_mach064.c                           |   17 +-
 libr/bin/p/bin_mbn.c                               |   40 +-
 libr/bin/p/bin_mdmp.c                              |   99 +-
 libr/bin/p/bin_menuet.c                            |   22 +-
 libr/bin/p/bin_mz.c                                |  182 +-
 libr/bin/p/bin_nes.c                               |   29 +-
 libr/bin/p/bin_nin3ds.c                            |   14 +-
 libr/bin/p/bin_ninds.c                             |   17 +-
 libr/bin/p/bin_ningb.c                             |   73 +-
 libr/bin/p/bin_ningba.c                            |    7 +-
 libr/bin/p/bin_nro.c                               |   45 +-
 libr/bin/p/bin_nso.c                               |   47 +-
 libr/bin/p/bin_omf.c                               |   24 +-
 libr/bin/p/bin_p9.c                                |   32 +-
 libr/bin/p/bin_pe.c                                |  590 +-
 libr/bin/p/bin_pe.inc                              |  552 +
 libr/bin/p/bin_pe64.c                              |   12 +-
 libr/bin/p/bin_pebble.c                            |   58 +-
 libr/bin/p/bin_psxexe.c                            |   28 +-
 libr/bin/p/bin_sfc.c                               |   20 +-
 libr/bin/p/bin_smd.c                               |   80 +-
 libr/bin/p/bin_sms.c                               |   79 +-
 libr/bin/p/bin_spc700.c                            |   11 +-
 libr/bin/p/bin_symbols.c                           |  648 +
 libr/bin/p/bin_te.c                                |   30 +-
 libr/bin/p/bin_vsf.c                               |   76 +-
 libr/bin/p/bin_wasm.c                              |   97 +-
 libr/bin/p/bin_write_elf.c                         |   45 +-
 libr/bin/p/bin_write_elf.inc                       |   41 +
 libr/bin/p/bin_write_elf64.c                       |    2 +-
 libr/bin/p/bin_xbe.c                               |   18 +-
 libr/bin/p/bin_xtr_dyldcache.c                     |    6 +-
 libr/bin/p/bin_xtr_fatmach0.c                      |   22 +-
 libr/bin/p/bin_xtr_pemixed.c                       |  140 +
 libr/bin/p/bin_z64.c                               |   15 +-
 libr/bin/p/bin_zimg.c                              |   12 +-
 libr/bin/p/mach0.mk                                |    2 -
 libr/bin/p/symbols.mk                              |   10 +
 libr/bin/p/xtr_pemixed.mk                          |   12 +
 libr/bin/pdb/dbi.c                                 |  100 +-
 libr/bin/pdb/fpo.c                                 |    4 +-
 libr/bin/pdb/gdata.c                               |   33 +-
 libr/bin/pdb/omap.c                                |    8 +-
 libr/bin/pdb/pdb.c                                 |   12 +-
 libr/bin/pdb/pdb_downloader.c                      |   11 +-
 libr/bin/pdb/stream_file.c                         |   91 +-
 libr/bin/pdb/tpi.c                                 |  239 +-
 libr/bin/pdb/types.h                               |  537 +-
 libr/bp/bp.c                                       |   95 +-
 libr/bp/bp_io.c                                    |    4 +-
 libr/bp/bp_traptrace.c                             |   38 +-
 libr/bp/bp_watch.c                                 |    6 +-
 libr/bp/meson.build                                |    7 +-
 libr/bp/p/bp_arm.c                                 |   16 +-
 libr/bp/p/bp_bf.c                                  |    2 +-
 libr/bp/p/bp_mips.c                                |    2 +-
 libr/bp/p/bp_ppc.c                                 |    2 +-
 libr/bp/p/bp_sh.c                                  |    2 +-
 libr/bp/p/bp_x86.c                                 |    2 +-
 libr/config/config.c                               |   41 +-
 libr/config/meson.build                            |    9 +-
 libr/cons/2048.c                                   |   44 +-
 libr/cons/Makefile                                 |    2 +-
 libr/cons/canvas.c                                 |  509 +-
 libr/cons/canvas_line.c                            |  109 +-
 libr/cons/cons.c                                   |  663 +-
 libr/cons/d/ayu                                    |   50 +
 libr/cons/d/basic                                  |    7 +-
 libr/cons/d/behelit                                |    5 +
 libr/cons/d/bold                                   |   11 +
 libr/cons/d/cga                                    |    5 +
 libr/cons/d/consonance                             |   11 +
 libr/cons/d/cutter                                 |  107 +-
 libr/cons/d/dark                                   |   11 +
 libr/cons/d/darkda                                 |   11 +
 libr/cons/d/defragger                              |   11 +
 libr/cons/d/focus                                  |   12 +-
 libr/cons/d/lima                                   |   11 +
 libr/cons/d/matrix                                 |   11 +
 libr/cons/d/monokai                                |    6 +
 libr/cons/d/ogray                                  |   11 +
 libr/cons/d/onedark                                |   62 +
 libr/cons/d/pink                                   |   16 +-
 libr/cons/d/rasta                                  |   11 +
 libr/cons/d/sepia                                  |   11 +
 libr/cons/d/smyck                                  |    7 +
 libr/cons/d/solarized                              |   11 +
 libr/cons/d/tango                                  |   11 +
 libr/cons/d/twilight                               |   11 +
 libr/cons/d/white                                  |   11 +
 libr/cons/d/white2                                 |   50 +
 libr/cons/d/xvilka                                 |    7 +-
 libr/cons/d/zenburn                                |   11 +
 libr/cons/dietline.c                               |  587 +-
 libr/cons/editor.c                                 |    8 +-
 libr/cons/grep.c                                   |  272 +-
 libr/cons/hud.c                                    |  228 +-
 libr/cons/input.c                                  |  141 +-
 libr/cons/less.c                                   |  201 +-
 libr/cons/line.c                                   |    3 +
 libr/cons/meson.build                              |   11 +-
 libr/cons/more.c                                   |  144 +
 libr/cons/pager.c                                  |  173 +
 libr/cons/pager_private.h                          |   11 +
 libr/cons/pal.c                                    |   41 +-
 libr/cons/pipe.c                                   |    7 +-
 libr/cons/rgb.c                                    |   86 +-
 libr/cons/utf8.c                                   |   10 +-
 libr/core/Makefile                                 |   15 +-
 libr/core/anal_tp.c                                |  727 +-
 libr/core/blaze.c                                  |    4 +-
 libr/core/canal.c                                  |  655 +-
 libr/core/carg.c                                   |    2 +-
 libr/core/{asm.c => casm.c}                        |  106 +-
 libr/core/cbin.c                                   | 1029 +-
 libr/core/cconfig.c                                |  466 +-
 libr/core/{file.c => cfile.c}                      |  193 +-
 libr/core/cio.c                                    |   34 +-
 libr/core/cmd.c                                    |  749 +-
 libr/core/cmd_anal.c                               | 1908 +-
 libr/core/cmd_api.c                                |  104 +-
 libr/core/cmd_cmp.c                                |   22 +-
 libr/core/cmd_debug.c                              |  781 +-
 libr/core/cmd_eval.c                               |   72 +-
 libr/core/cmd_flag.c                               |   25 +-
 libr/core/cmd_hash.c                               |    6 +-
 libr/core/cmd_help.c                               |  215 +-
 libr/core/cmd_info.c                               |  349 +-
 libr/core/cmd_log.c                                |  129 +-
 libr/core/cmd_magic.c                              |   12 +-
 libr/core/cmd_meta.c                               |  148 +-
 libr/core/cmd_mount.c                              |    2 +-
 libr/core/cmd_open.c                               |  303 +-
 libr/core/cmd_print.c                              | 1140 +-
 libr/core/cmd_project.c                            |    2 +-
 libr/core/cmd_search.c                             |  966 +-
 libr/core/cmd_section.c                            |  619 -
 libr/core/cmd_seek.c                               |  167 +-
 libr/core/cmd_type.c                               |  787 +-
 libr/core/cmd_write.c                              |  208 +-
 libr/core/cmd_zign.c                               |   61 +-
 libr/core/core.c                                   | 1613 +-
 libr/core/{log.c => corelog.c}                     |    0
 libr/core/disasm.c                                 | 1371 +-
 libr/core/graph.c                                  |  468 +-
 libr/core/hack.c                                   |   24 +-
 libr/core/linux_heap_glibc.c                       | 1563 +-
 libr/core/linux_heap_jemalloc.c                    |    5 +-
 libr/core/meson.build                              |   92 +-
 libr/core/p/Makefile                               |   14 +-
 libr/core/p/a2f.mk                                 |   15 +
 libr/core/p/anal.mk                                |   15 -
 libr/core/p/{core_anal.c => core_a2f.c}            |   34 +-
 libr/core/p/core_java.c                            |  239 +-
 libr/core/p/core_test.c                            |    2 +-
 libr/core/panels.c                                 | 3483 +++-
 libr/core/patch.c                                  |   15 +-
 libr/core/project.c                                |   38 +-
 libr/core/pseudo.c                                 |    6 +-
 libr/core/rtr.c                                    |  361 +-
 libr/core/task.c                                   |  631 +-
 libr/core/vasm.c                                   |   31 +-
 libr/core/visual.c                                 | 1034 +-
 libr/core/vmenus.c                                 |  676 +-
 libr/core/yank.c                                   |    6 +-
 libr/crypto/Makefile                               |    3 +-
 libr/crypto/crypto.c                               |    6 +-
 libr/{util => crypto}/des.c                        |    1 +
 libr/crypto/meson.build                            |    8 +-
 libr/crypto/p/crypto_aes.c                         |    4 +-
 libr/crypto/p/crypto_aes_algo.c                    |   16 +-
 libr/crypto/p/crypto_aes_cbc.c                     |    6 +-
 libr/crypto/p/crypto_base64.c                      |    6 +-
 libr/crypto/p/crypto_base91.c                      |    2 +-
 libr/crypto/p/crypto_blowfish.c                    |   10 +-
 libr/crypto/p/crypto_cps2.c                        |    9 +-
 libr/crypto/p/crypto_des.c                         |   18 +-
 libr/crypto/p/crypto_punycode.c                    |    2 +-
 libr/crypto/p/crypto_rc2.c                         |   28 +-
 libr/crypto/p/crypto_rc4.c                         |   11 +-
 libr/crypto/p/crypto_rc6.c                         |   14 +-
 libr/crypto/p/crypto_rol.c                         |   24 +-
 libr/crypto/p/crypto_ror.c                         |   24 +-
 libr/crypto/p/crypto_rot.c                         |   12 +-
 libr/crypto/p/crypto_serpent.c                     |    6 +-
 libr/crypto/p/crypto_xor.c                         |    2 +-
 libr/debug/arg.c                                   |    1 -
 libr/debug/ddesc.c                                 |   28 +-
 libr/debug/debug.c                                 |  137 +-
 libr/debug/dreg.c                                  |   20 +-
 libr/debug/esil.c                                  |   40 +-
 libr/debug/map.c                                   |  288 +-
 libr/debug/meson.build                             |   65 +-
 libr/debug/p/bfvm.c                                |   30 +-
 libr/debug/p/debug_bf.c                            |   41 +-
 libr/debug/p/debug_bochs.c                         |   18 +-
 libr/debug/p/debug_esil.c                          |    9 +-
 libr/debug/p/debug_gdb.c                           |  129 +-
 libr/debug/p/debug_io.c                            |    2 +-
 libr/debug/p/debug_native.c                        |  262 +-
 libr/debug/p/debug_null.c                          |    2 +-
 libr/debug/p/debug_qnx.c                           |   40 +-
 libr/debug/p/debug_rap.c                           |    4 +-
 libr/debug/p/debug_windbg.c                        |   53 +-
 libr/debug/p/native/bt.c                           |   32 +-
 libr/debug/p/native/bt/fuzzy-all.c                 |    4 +-
 libr/debug/p/native/bt/generic-x86.c               |    4 +-
 libr/debug/p/native/drx.c                          |    2 +-
 libr/debug/p/native/linux/linux_coredump.c         |   26 +-
 libr/debug/p/native/linux/linux_debug.c            |  105 +-
 libr/debug/p/native/linux/reg/linux-x64.h          |    3 +-
 libr/debug/p/native/maps/windows.c                 |   19 +-
 libr/debug/p/native/procfs.c                       |    2 -
 libr/debug/p/native/reg.c                          |    2 +
 libr/debug/p/native/reg/kfbsd-arm64.h              |  193 +
 libr/debug/p/native/reg/netbsd-x64.h               |   10 +-
 libr/debug/p/native/reg/windows-x64.h              |    9 +-
 libr/debug/p/native/xnu/reg/darwin-x64.h           |   11 +-
 libr/debug/p/native/xnu/xnu_debug.c                |   17 +-
 libr/debug/p/native/xnu/xnu_excthreads.c           |   24 +-
 libr/debug/pid.c                                   |    4 +-
 libr/debug/plugin.c                                |   11 +
 libr/debug/session.c                               |    2 +-
 libr/debug/signal.c                                |    9 +-
 libr/debug/trace.c                                 |   23 +-
 libr/egg/egg.c                                     |   71 +-
 libr/egg/egg_Cfile.c                               |   62 +-
 libr/egg/egg_lang.c                                |   41 +-
 libr/egg/emit_trace.c                              |   32 +-
 libr/egg/emit_x86.c                                |  202 +-
 libr/egg/meson.build                               |   15 +-
 libr/egg/p/egg_bind.c                              |    2 +-
 libr/egg/p/egg_exec.c                              |   29 +-
 libr/egg/p/egg_reverse.c                           |    2 +-
 libr/egg/p/egg_shya.c                              |    2 +-
 libr/egg/p/egg_xor.c                               |    2 +-
 libr/flag/d/Makefile                               |    7 +-
 libr/flag/d/meson.build                            |   13 +-
 libr/flag/flag.c                                   |  279 +-
 libr/flag/meson.build                              |   10 +-
 libr/flag/sort.c                                   |   30 +-
 libr/flag/spaces.c                                 |   43 +-
 libr/flag/tags.c                                   |    7 +-
 libr/flag/zones.c                                  |    8 +-
 libr/fs/Makefile                                   |    2 +
 libr/fs/meson.build                                |   20 +-
 libr/fs/p/fs_io.c                                  |    2 +-
 libr/fs/p/fs_posix.c                               |    8 +-
 libr/fs/p/fs_r2.c                                  |    2 +-
 libr/fs/shell.c                                    |    8 +-
 libr/hash/Makefile                                 |   21 +-
 libr/hash/calc.c                                   |    2 +-
 libr/hash/hamdist.c                                |   22 +-
 libr/hash/hash.c                                   |   52 +-
 libr/hash/luhn.c                                   |    2 +-
 libr/hash/md4.c                                    |   14 +-
 libr/hash/md4.h                                    |    6 +
 libr/hash/md5.c                                    |   41 +-
 libr/hash/md5.h                                    |    8 +
 libr/hash/meson.build                              |   28 +-
 libr/hash/sha2.c                                   |   29 +-
 libr/hash/state.c                                  |   44 +-
 libr/hash/xxhash.c                                 |   10 +-
 libr/hash/xxhash.h                                 |    2 +-
 libr/include/btree.h                               |   37 -
 libr/include/r_anal.h                              |  272 +-
 libr/include/r_asm.h                               |  138 +-
 libr/include/r_bin.h                               |  335 +-
 libr/include/r_bind.h                              |    4 +
 libr/include/r_binheap.h                           |   14 +-
 libr/include/r_bp.h                                |   19 +-
 libr/include/r_cmd.h                               |    4 +-
 libr/include/r_config.h                            |    2 +-
 libr/include/r_cons.h                              |  183 +-
 libr/include/r_core.h                              |  196 +-
 libr/include/r_crypto.h                            |    5 +-
 libr/include/{r_util => r_crypto}/r_des.h          |    8 +-
 libr/include/r_debug.h                             |   25 +-
 libr/include/r_endian.h                            |   22 +-
 libr/include/r_flag.h                              |   29 +-
 libr/include/r_fs.h                                |    1 +
 libr/include/r_hash.h                              |   46 +-
 libr/include/r_heap_glibc.h                        |  149 +-
 libr/include/r_io.h                                |  130 +-
 libr/include/r_lib.h                               |    2 +-
 libr/include/r_list.h                              |    9 +-
 libr/include/r_parse.h                             |   12 +-
 libr/include/r_reg.h                               |    7 +-
 libr/include/r_search.h                            |    2 +-
 libr/include/r_sign.h                              |   24 +-
 libr/include/r_slist.h                             |   45 -
 libr/include/r_socket.h                            |   18 +-
 libr/include/r_syscall.h                           |    1 +
 libr/include/r_th.h                                |   36 +-
 libr/include/r_types.h                             |  106 +-
 libr/include/r_types_base.h                        |   21 +-
 libr/include/r_userconf.h.acr                      |   35 +-
 libr/include/r_userconf.h.in                       |   63 -
 libr/include/r_util.h                              |    7 +-
 libr/include/r_util/r_ascii_table.h                |    2 +-
 libr/include/r_util/r_asn1.h                       |   12 +-
 libr/include/r_util/r_assert.h                     |  117 +
 libr/include/r_util/r_buf.h                        |    1 +
 libr/include/r_util/r_cache.h                      |    2 +
 libr/include/r_util/r_ctypes.h                     |   21 +-
 libr/include/r_util/r_event.h                      |   42 +
 libr/include/r_util/r_file.h                       |    1 +
 libr/include/r_util/r_idpool.h                     |   12 +-
 libr/include/r_util/r_itv.h                        |   20 +-
 libr/include/r_util/r_log.h                        |   76 +-
 libr/include/r_util/r_mem.h                        |    1 +
 libr/include/r_util/r_mixed.h                      |   29 -
 libr/include/r_util/r_num.h                        |    9 +-
 libr/include/r_util/r_panels.h                     |   14 +-
 libr/include/r_util/r_pkcs7.h                      |    2 +-
 libr/include/{ => r_util}/r_print.h                |   28 +-
 libr/include/r_util/r_sandbox.h                    |   12 +
 libr/include/r_util/r_signal.h                     |    9 +
 libr/include/r_util/r_str.h                        |   14 +-
 libr/include/r_util/r_str_util.h                   |   18 +-
 libr/include/r_util/r_strbuf.h                     |    8 +-
 libr/include/r_util/r_sys.h                        |   40 +-
 libr/include/r_util/r_time.h                       |   14 +
 libr/include/r_util/r_trie.h                       |   24 -
 libr/include/r_util/r_utf8.h                       |   13 +-
 libr/include/r_util/r_x509.h                       |    8 +-
 libr/include/r_vector.h                            |  275 +-
 libr/include/r_version.h.in                        |    1 +
 libr/include/sdb/ht.h                              |   73 -
 libr/include/sdb/ht_inc.h                          |  108 +
 libr/include/sdb/ht_pp.h                           |   15 +
 libr/include/sdb/ht_up.h                           |   15 +
 libr/include/sdb/ht_uu.h                           |   11 +
 libr/include/sdb/ls.h                              |    3 +-
 libr/include/sdb/sdb.h                             |  133 +-
 libr/include/sdb/sdb_version.h                     |    2 +-
 libr/include/sdb/sdbht.h                           |   49 +-
 libr/io/Makefile                                   |    7 +-
 libr/io/cache.c                                    |   61 +-
 libr/io/desc.c                                     |   64 +-
 libr/io/fd.c                                       |    4 +
 libr/io/io.c                                       |  393 +-
 libr/io/io_private.h                               |   10 +
 libr/io/iobuf.c                                    |   70 -
 libr/io/ioutils.c                                  |  213 +-
 libr/io/map.c                                      |  126 +-
 libr/io/meson.build                                |   41 +-
 libr/io/p/io_ar.c                                  |    2 +-
 libr/io/p/io_bfdbg.c                               |   69 +-
 libr/io/p/io_bochs.c                               |   15 +-
 libr/io/p/io_debug.c                               |  162 +-
 libr/io/p/io_default.c                             |   56 +-
 libr/io/p/io_gdb.c                                 |   22 +-
 libr/io/p/io_gprobe.c                              |   23 +-
 libr/io/p/io_gzip.c                                |    6 +-
 libr/io/p/io_http.c                                |   18 +-
 libr/io/p/io_ihex.c                                |   31 +-
 libr/io/p/io_mach.c                                |   73 +-
 libr/io/p/io_malloc.c                              |    8 +-
 libr/io/p/io_mmap.c                                |   17 +-
 libr/io/p/io_null.c                                |    8 +-
 libr/io/p/io_procpid.c                             |    9 +-
 libr/io/p/io_ptrace.c                              |   64 +-
 libr/io/p/io_qnx.c                                 |   21 +-
 libr/io/p/io_r2k.c                                 |    6 +-
 libr/io/p/io_r2k_linux.c                           |    2 +-
 libr/io/p/io_r2k_linux.h                           |    2 +-
 libr/io/p/io_r2k_windows.h                         |    1 -
 libr/io/p/io_r2pipe.c                              |   28 +-
 libr/io/p/io_r2web.c                               |   41 +-
 libr/io/p/io_rap.c                                 |   21 +-
 libr/io/p/io_rbuf.c                                |    2 +-
 libr/io/p/io_self.c                                |  310 +-
 libr/io/p/io_shm.c                                 |   32 +-
 libr/io/p/io_sparse.c                              |   26 +-
 libr/io/p/io_tcp.c                                 |   17 +-
 libr/io/p/io_w32.c                                 |    7 +-
 libr/io/p/io_w32dbg.c                              |    4 +-
 libr/io/p/io_windbg.c                              |    7 +-
 libr/io/p/io_winedbg.c                             |  110 +-
 libr/io/p/io_zip.c                                 |   73 +-
 libr/io/p_cache.c                                  |    7 +-
 libr/io/plugin.c                                   |   36 +-
 libr/io/section.c                                  |  359 +-
 libr/io/undo.c                                     |   34 +-
 libr/lang/lang.c                                   |   14 +-
 libr/lang/meson.build                              |   22 +-
 libr/lang/p/c.c                                    |    8 +-
 libr/lang/p/cpipe.c                                |   17 +-
 libr/lang/p/pipe.c                                 |    5 +-
 libr/lang/p/rust.c                                 |   30 +-
 libr/lang/p/vala.c                                 |   45 +-
 libr/libs.custom.mk.example                        |   10 +
 libr/libs.mk                                       |   16 +
 libr/magic/Makefile                                |    5 +-
 libr/magic/apprentice.c                            |  449 +-
 libr/magic/ascmagic.c                              |  238 +-
 libr/magic/d/default/{macintosh => apple}          |   12 +
 libr/magic/d/default/{OpenBSD => openbsd}          |    0
 libr/magic/deps.mk                                 |    4 +
 libr/magic/funcs.c                                 |   48 +-
 libr/magic/is_tar.c                                |   42 +-
 libr/magic/magic.c                                 |   87 +-
 libr/magic/meson.build                             |   51 +-
 libr/magic/print.c                                 |    3 +-
 libr/magic/softmagic.c                             |  341 +-
 libr/meson.build                                   |   29 +-
 libr/parse/Makefile                                |    2 +
 libr/parse/code.c                                  |   17 +-
 libr/parse/meson.build                             |   25 +-
 libr/parse/p/parse_6502_pseudo.c                   |   33 +-
 libr/parse/p/parse_arm_pseudo.c                    |   59 +-
 libr/parse/p/parse_att2intel.c                     |   46 +-
 libr/parse/p/parse_avr_pseudo.c                    |    6 +-
 libr/parse/p/parse_dalvik_pseudo.c                 |   50 +-
 libr/parse/p/parse_m68k_pseudo.c                   |   21 +-
 libr/parse/p/parse_mips_pseudo.c                   |   78 +-
 libr/parse/p/parse_mreplace.c                      |    6 +-
 libr/parse/p/parse_mreplace/mmemory.c              |   12 +-
 libr/parse/p/parse_mreplace/mreplace.c             |   44 +-
 libr/parse/p/parse_ppc_pseudo.c                    |  226 +-
 libr/parse/p/parse_sh_pseudo.c                     |    8 +-
 libr/parse/p/parse_x86_pseudo.c                    |   90 +-
 libr/parse/p/parse_z80_pseudo.c                    |    6 +-
 libr/parse/parse.c                                 |  151 +-
 libr/reg/arena.c                                   |  118 +-
 libr/reg/cond.c                                    |  121 +-
 libr/reg/double.c                                  |   10 +-
 libr/reg/meson.build                               |    6 +-
 libr/reg/profile.c                                 |   51 +-
 libr/reg/reg.c                                     |  150 +-
 libr/reg/value.c                                   |   80 +-
 libr/search/aes-find.c                             |   10 +-
 libr/search/bytepat.c                              |   27 +-
 libr/search/keyword.c                              |   61 +-
 libr/search/meson.build                            |    6 +-
 libr/search/regexp.c                               |    3 +-
 libr/search/rsa-find.c                             |   31 +-
 libr/search/search.c                               |   25 +-
 libr/socket/http.c                                 |   63 +-
 libr/socket/http_server.c                          |   64 +-
 libr/socket/meson.build                            |   14 +-
 libr/socket/proc.c                                 |   17 +-
 libr/socket/r2pipe.c                               |  226 +-
 libr/socket/rap_server.c                           |    3 +-
 libr/socket/run.c                                  |  146 +-
 libr/socket/socket.c                               |  126 +-
 libr/syscall/d/Makefile                            |    1 +
 libr/syscall/d/darwin-x86-32.sdb.txt               |  573 +-
 libr/syscall/d/darwin-x86-64.sdb.txt               |  574 +-
 libr/syscall/d/meson.build                         |   39 +-
 libr/syscall/d/s110-arm-16.sdb.txt                 |  146 +
 libr/syscall/fastcall.h                            |    4 +-
 libr/syscall/meson.build                           |   10 +-
 libr/syscall/syscall.c                             |   94 +-
 libr/util/Makefile                                 |   23 +-
 libr/util/asn1.c                                   |  373 +-
 libr/util/asn1.h                                   |   10 -
 libr/util/asn1_oids.h                              | 2001 +-
 libr/util/assert.c                                 |   35 +
 libr/util/base85.c                                 |    4 +-
 libr/util/base91.c                                 |   15 +-
 libr/util/bdiff.c                                  |   74 +-
 libr/util/binheap.c                                |   52 +-
 libr/util/bitmap.c                                 |   21 +-
 libr/util/btree.c                                  |  210 -
 libr/util/buf.c                                    |   98 +-
 libr/util/cache.c                                  |    8 +-
 libr/util/calc.c                                   |   30 +-
 libr/util/chmod.c                                  |   95 +-
 libr/util/constr.c                                 |    6 +-
 libr/util/ctype.c                                  |  277 +-
 libr/util/date.c                                   |   61 +-
 libr/util/diff.c                                   |    5 +-
 libr/util/event.c                                  |   83 +
 libr/util/file.c                                   |  181 +-
 libr/util/flist.c                                  |   12 +-
 libr/util/format.c                                 |  503 +-
 libr/util/graph.c                                  |   30 +-
 libr/util/hex.c                                    |   63 +-
 libr/util/iconv.c                                  |   35 -
 libr/util/idpool.c                                 |  144 +-
 libr/util/json_indent.c                            |    3 +-
 libr/util/lib.c                                    |   22 +-
 libr/util/list.c                                   |  449 +-
 libr/util/log.c                                    |  155 +-
 libr/util/mem.c                                    |   13 +
 libr/util/meson.build                              |   35 +-
 libr/util/mixed.c                                  |  302 -
 libr/util/name.c                                   |   14 +-
 libr/util/pie.c                                    |   34 +-
 libr/util/pkcs7.c                                  |  348 +-
 libr/util/pkcs7.h                                  |   38 -
 libr/util/pool.c                                   |   15 +-
 libr/util/print.c                                  |  188 +-
 libr/util/queue.c                                  |    6 +-
 libr/util/r_json.c                                 |   23 +-
 libr/util/randomart.c                              |   14 +-
 libr/util/range.c                                  |    3 +-
 libr/util/regex/engine.c                           |   16 +-
 libr/util/regex/regcomp.c                          |  403 +-
 libr/util/regex/regerror.c                         |   11 +-
 libr/util/regex/regex2.h                           |    2 +-
 libr/util/regex/regexec.c                          |   20 +-
 libr/util/sandbox.c                                |   73 +-
 libr/util/sdb.mk                                   |    4 +-
 libr/util/seven.c                                  |    2 +-
 libr/util/signal.c                                 |    6 +
 libr/util/skiplist.c                               |    8 +-
 libr/util/slist.c                                  |  189 -
 libr/util/stack.c                                  |    3 +-
 libr/util/str.c                                    |  273 +-
 libr/util/str_trim.c                               |   40 +-
 libr/util/strbuf.c                                 |  151 +-
 libr/util/strpool.c                                |    4 +-
 libr/util/sys.c                                    |   50 +-
 libr/util/syscmd.c                                 |   58 +-
 libr/util/thread.c                                 |   21 +-
 libr/util/thread_cond.c                            |   53 +
 libr/util/thread_msg.c                             |   29 -
 libr/util/thread_sem.c                             |   92 +
 libr/util/tree.c                                   |   48 +-
 libr/util/trie.c                                   |  184 -
 libr/util/ubase64.c                                |   27 +-
 libr/util/uleb128.c                                |   64 +-
 libr/util/unum.c                                   |  254 +-
 libr/util/utf8.c                                   |   93 +-
 libr/util/vector.c                                 |  377 +-
 libr/util/x509.c                                   |  394 +-
 libr/util/x509.h                                   |   40 +-
 libr/util/zip.c                                    |    6 +-
 man/rabin2.1                                       |    4 +-
 man/radare2.1                                      |    2 +-
 man/rafind2.1                                      |    6 +-
 man/ragg2.1                                        |    2 +-
 man/rahash2.1                                      |    5 +-
 man/rarun2.1                                       |    6 +-
 man/rasm2.1                                        |    5 +-
 meson.build                                        |  164 +-
 meson_options.txt                                  |   10 +
 mk/clang.mk                                        |    2 +-
 mk/emscripten.mk                                   |    5 +-
 mk/ios-sdk.mk                                      |    2 +-
 pkgcfg/r_anal.pc.acr                               |    2 +-
 pkgcfg/r_bin.pc.acr                                |    4 +-
 pkgcfg/r_core.pc.acr                               |    2 +-
 pkgcfg/r_hash.pc.acr                               |    4 +-
 plugins.bin.cfg                                    |    2 +-
 plugins.def.cfg                                    |    6 +-
 plugins.emscripten.cfg                             |    2 +-
 plugins.ios-store.cfg                              |   13 +-
 plugins.ios.cfg                                    |    6 +-
 plugins.nogpl.cfg                                  |    2 +-
 plugins.static.cfg                                 |    9 +-
 plugins.static.nogpl.cfg                           |  210 +
 plugins.tiny.cfg                                   |    2 +-
 shlr/Makefile                                      |   44 +-
 shlr/bochs/src/libbochs.c                          |   34 +-
 shlr/capstone-patches/capstone-calloc.patch        |   23 +-
 shlr/capstone-patches/fix-m68k-oob.patch           |   24 -
 shlr/capstone-patches/fix-underflow-tms.patch      |   28 -
 shlr/capstone-patches/fix-x86-16.patch             |    8 +-
 shlr/capstone-patches/sstream-null.patch           |    6 +-
 shlr/capstone.sh                                   |   86 +-
 shlr/gdb/include/arch.h                            |    1 +
 shlr/gdb/include/gdbclient/commands.h              |   17 +-
 shlr/gdb/include/gdbclient/core.h                  |   16 +-
 shlr/gdb/src/arch.c                                |   43 +
 shlr/gdb/src/gdbclient/core.c                      |   68 +-
 shlr/gdb/src/gdbclient/responses.c                 |    2 +-
 shlr/gdb/src/gdbclient/xml.c                       |   43 +-
 shlr/gdb/src/libgdbr.c                             |    2 +
 shlr/grub/fs/ext2.c                                |   10 +-
 shlr/grub/fs/fshelp.c                              |   16 +-
 shlr/grub/fs/hfs.c                                 |    2 +-
 shlr/grub/fs/hfsplus.c                             |    3 +-
 shlr/grub/fs/jfs.c                                 |   40 +-
 shlr/grub/fs/minix.c                               |   54 +-
 shlr/grub/fs/reiserfs.c                            |    2 +
 shlr/grub/fs/ufs.c                                 |   50 +-
 shlr/grub/include/grub/fs.h                        |    6 +-
 shlr/java/class.c                                  |  529 +-
 shlr/java/code.h                                   |    5 +-
 shlr/java/dsojson.c                                |    3 +-
 shlr/java/ops.c                                    |  594 +-
 shlr/meson.build                                   |  787 +-
 shlr/ptrace-wrap/COPYING                           |  165 +
 shlr/ptrace-wrap/Makefile                          |   26 +
 shlr/ptrace-wrap/README.md                         |   83 +
 shlr/ptrace-wrap/deps.mk                           |    3 +
 shlr/ptrace-wrap/include/ptrace_wrap.h             |   80 +
 shlr/ptrace-wrap/meson.build                       |   17 +
 shlr/ptrace-wrap/src/ptrace_wrap.c                 |  153 +
 shlr/qnx/src/core.c                                |    6 +-
 shlr/sdb/Jamroot                                   |   13 -
 shlr/sdb/Makefile                                  |    9 +-
 shlr/sdb/config.mk                                 |    2 +-
 shlr/sdb/meson.build                               |   89 +-
 shlr/sdb/src/Makefile                              |    4 +-
 shlr/sdb/src/array.c                               |   87 +-
 shlr/sdb/src/base64.c                              |    8 +-
 shlr/sdb/src/dict.c                                |   44 +-
 shlr/sdb/src/disk.c                                |   62 +-
 shlr/sdb/src/ht.c                                  |  310 -
 shlr/sdb/src/ht.h                                  |   73 -
 shlr/sdb/src/ht_inc.c                              |  307 +
 shlr/sdb/src/ht_inc.h                              |  108 +
 shlr/sdb/src/ht_pp.c                               |   47 +
 shlr/sdb/src/ht_pp.h                               |   15 +
 shlr/sdb/src/ht_up.c                               |   41 +
 shlr/sdb/src/ht_up.h                               |   15 +
 shlr/sdb/src/ht_uu.c                               |    3 +
 shlr/sdb/src/ht_uu.h                               |   11 +
 shlr/sdb/src/json.c                                |    4 +-
 shlr/sdb/src/json/js0n.c                           |    1 -
 shlr/sdb/src/ls.h                                  |    3 +-
 shlr/sdb/src/main.c                                |    1 +
 shlr/sdb/src/num.c                                 |    4 +-
 shlr/sdb/src/query.c                               |   22 +-
 shlr/sdb/src/sdb.c                                 |  307 +-
 shlr/sdb/src/sdb.h                                 |  133 +-
 shlr/sdb/src/sdbht.c                               |   67 +-
 shlr/sdb/src/sdbht.h                               |   49 +-
 shlr/sdb/src/util.c                                |    9 +-
 shlr/spp/r_api.h                                   |    2 +-
 shlr/tcc/tcc.h                                     |    5 +
 shlr/tcc/tccgen.c                                  |  435 +-
 shlr/tcc/tccpp.c                                   |   79 +-
 shlr/windbg/profiles.h                             |   42 +-
 shlr/windbg/windbg.c                               |   78 +-
 shlr/windbg/windbg.h                               |   16 +
 snapcraft.yaml                                     |   62 +
 sys/android-build.sh                               |   12 +-
 sys/android-shell.sh                               |   50 +-
 sys/android-target.sh                              |   38 -
 sys/asan.sh                                        |   10 +-
 sys/build.sh                                       |   47 +
 sys/build/config.json                              |    4 -
 sys/clang-format-diff.py                           |  197 +
 sys/clean.sh                                       |    2 -
 sys/docker_build_alpine_image.sh                   |  328 +
 sys/emscripten.sh                                  |    3 +-
 sys/full-uninstall.sh                              |    6 -
 sys/gtk.sh                                         |   18 -
 sys/gtkaml.sh                                      |   18 -
 sys/indent.sh                                      |   80 +-
 sys/install-su.sh                                  |   50 -
 sys/install.sh                                     |   15 +
 sys/ios-cydia.sh                                   |   11 +-
 sys/ios-env.sh                                     |    2 +-
 sys/ios-libr.sh                                    |    6 +
 sys/ios-sdk-gcc                                    |    2 +-
 sys/ios-sdk-ld                                     |   20 +
 sys/ios-sdk.sh                                     |  101 +-
 sys/ios-simulator.sh                               |    6 +-
 sys/ios-static.sh                                  |    4 +-
 sys/menu.sh                                        |    9 +-
 sys/meson-sdk.sh                                   |   37 +
 sys/meson.py                                       |   50 +-
 sys/ndk-g++                                        |    2 -
 sys/ndk-gcc                                        |  127 -
 sys/pre-commit-indent.sh                           |   49 +
 sys/purge.sh                                       |   49 +-
 sys/r2api.sh                                       |   14 +
 sys/release-notes.sh                               |   63 +
 sys/sdk.sh                                         |   14 +-
 sys/shellcheck.sh                                  |  127 +-
 sys/static.sh                                      |   35 +-
 sys/uninstall.sh                                   |   11 -
 sys/user.sh                                        |    8 +-
 t/Makefile                                         |    2 +-
 travis-extract-var.sh                              |   29 +
 travis-script                                      |   58 +
 1067 files changed, 106669 insertions(+), 49602 deletions(-)
 rename doc/clang-format => .clang-format (50%)
 rename .github/{ISSUE_TEMPLATE.md => ISSUE_TEMPLATE/bug_report.md} (96%)
 create mode 100644 .github/ISSUE_TEMPLATE/feature_request.md
 create mode 100644 Dockerfile.travis
 create mode 100644 Doxyfile
 create mode 100644 binr/r2pm/meson.build
 rename binr/radare2/{radare2.xml => radare2_ios.xml} (79%)
 create mode 100644 binr/radare2/radare2_macos.xml
 create mode 100644 doc/images/morelogos.svg
 create mode 100644 doc/indent-example.c
 create mode 100644 doc/openbsd.md
 delete mode 100644 doc/types.md
 create mode 100644 libr/anal/d/spec.sdb.txt
 create mode 100644 libr/anal/esil_interrupt.c
 create mode 100644 libr/anal/esil_sources.c
 create mode 100644 libr/anal/p/anal_arm_hacks.inc
 create mode 100644 libr/anal/p/anal_mcore.c
 create mode 100644 libr/anal/p/mcore.mk
 rename libr/asm/arch/include/{dis-asm.h => disas-asm.h} (96%)
 create mode 100644 libr/asm/arch/mcore/mcore.c
 create mode 100644 libr/asm/arch/mcore/mcore.h
 create mode 100644 libr/asm/d/v850.sdb.txt
 create mode 100644 libr/asm/op.c
 create mode 100644 libr/asm/p/asm_mcore.c
 create mode 100644 libr/asm/p/mcore.mk
 rename libr/bin/{file.c => bfile.c} (57%)
 create mode 100644 libr/bin/blang.c
 create mode 100644 libr/bin/d/dll/mfc120.sdb.txt
 create mode 100644 libr/bin/format/pe/pemixed.c
 create mode 100644 libr/bin/format/pe/pemixed.h
 create mode 100644 libr/bin/i/private.h
 create mode 100644 libr/bin/mangling/cxx/Makefile
 create mode 100644 libr/bin/mangling/cxx/test.js
 delete mode 100644 libr/bin/mangling/dlang.c
 create mode 100644 libr/bin/mangling/java.c
 create mode 100644 libr/bin/mangling/rust.c
 delete mode 100644 libr/bin/open.c
 create mode 100644 libr/bin/p/bin_elf.inc
 create mode 100644 libr/bin/p/bin_pe.inc
 create mode 100644 libr/bin/p/bin_symbols.c
 create mode 100644 libr/bin/p/bin_write_elf.inc
 create mode 100644 libr/bin/p/bin_xtr_pemixed.c
 create mode 100644 libr/bin/p/symbols.mk
 create mode 100644 libr/bin/p/xtr_pemixed.mk
 create mode 100644 libr/cons/d/ayu
 create mode 100644 libr/cons/d/onedark
 create mode 100644 libr/cons/d/white2
 create mode 100644 libr/cons/more.c
 create mode 100644 libr/cons/pager.c
 create mode 100644 libr/cons/pager_private.h
 rename libr/core/{asm.c => casm.c} (92%)
 rename libr/core/{file.c => cfile.c} (87%)
 delete mode 100644 libr/core/cmd_section.c
 rename libr/core/{log.c => corelog.c} (100%)
 create mode 100644 libr/core/p/a2f.mk
 delete mode 100644 libr/core/p/anal.mk
 rename libr/core/p/{core_anal.c => core_a2f.c} (92%)
 rename libr/{util => crypto}/des.c (99%)
 create mode 100644 libr/debug/p/native/reg/kfbsd-arm64.h
 create mode 100644 libr/hash/md4.h
 create mode 100644 libr/hash/md5.h
 delete mode 100644 libr/include/btree.h
 rename libr/include/{r_util => r_crypto}/r_des.h (81%)
 delete mode 100644 libr/include/r_slist.h
 delete mode 100644 libr/include/r_userconf.h.in
 create mode 100644 libr/include/r_util/r_assert.h
 create mode 100644 libr/include/r_util/r_event.h
 delete mode 100644 libr/include/r_util/r_mixed.h
 rename libr/include/{ => r_util}/r_print.h (90%)
 create mode 100644 libr/include/r_util/r_time.h
 delete mode 100644 libr/include/r_util/r_trie.h
 delete mode 100644 libr/include/sdb/ht.h
 create mode 100644 libr/include/sdb/ht_inc.h
 create mode 100644 libr/include/sdb/ht_pp.h
 create mode 100644 libr/include/sdb/ht_up.h
 create mode 100644 libr/include/sdb/ht_uu.h
 create mode 100644 libr/io/io_private.h
 delete mode 100644 libr/io/iobuf.c
 create mode 100644 libr/libs.custom.mk.example
 create mode 100644 libr/libs.mk
 rename libr/magic/d/default/{macintosh => apple} (98%)
 rename libr/magic/d/default/{OpenBSD => openbsd} (100%)
 create mode 100644 libr/magic/deps.mk
 create mode 100644 libr/syscall/d/s110-arm-16.sdb.txt
 delete mode 100644 libr/util/asn1.h
 create mode 100644 libr/util/assert.c
 delete mode 100644 libr/util/btree.c
 create mode 100644 libr/util/event.c
 delete mode 100644 libr/util/iconv.c
 delete mode 100644 libr/util/mixed.c
 delete mode 100644 libr/util/pkcs7.h
 delete mode 100644 libr/util/slist.c
 create mode 100644 libr/util/thread_cond.c
 delete mode 100644 libr/util/thread_msg.c
 create mode 100644 libr/util/thread_sem.c
 delete mode 100644 libr/util/trie.c
 create mode 100644 plugins.static.nogpl.cfg
 delete mode 100644 shlr/capstone-patches/fix-m68k-oob.patch
 delete mode 100644 shlr/capstone-patches/fix-underflow-tms.patch
 create mode 100644 shlr/ptrace-wrap/COPYING
 create mode 100644 shlr/ptrace-wrap/Makefile
 create mode 100644 shlr/ptrace-wrap/README.md
 create mode 100644 shlr/ptrace-wrap/deps.mk
 create mode 100644 shlr/ptrace-wrap/include/ptrace_wrap.h
 create mode 100644 shlr/ptrace-wrap/meson.build
 create mode 100644 shlr/ptrace-wrap/src/ptrace_wrap.c
 delete mode 100644 shlr/sdb/Jamroot
 delete mode 100644 shlr/sdb/src/ht.c
 delete mode 100644 shlr/sdb/src/ht.h
 create mode 100644 shlr/sdb/src/ht_inc.c
 create mode 100644 shlr/sdb/src/ht_inc.h
 create mode 100644 shlr/sdb/src/ht_pp.c
 create mode 100644 shlr/sdb/src/ht_pp.h
 create mode 100644 shlr/sdb/src/ht_up.c
 create mode 100644 shlr/sdb/src/ht_up.h
 create mode 100644 shlr/sdb/src/ht_uu.c
 create mode 100644 shlr/sdb/src/ht_uu.h
 create mode 100644 snapcraft.yaml
 delete mode 100755 sys/android-target.sh
 delete mode 100644 sys/build/config.json
 create mode 100755 sys/clang-format-diff.py
 delete mode 100755 sys/clean.sh
 create mode 100755 sys/docker_build_alpine_image.sh
 delete mode 100755 sys/full-uninstall.sh
 delete mode 100755 sys/gtk.sh
 delete mode 100755 sys/gtkaml.sh
 delete mode 100644 sys/install-su.sh
 create mode 100755 sys/ios-libr.sh
 create mode 100755 sys/ios-sdk-ld
 create mode 100755 sys/meson-sdk.sh
 mode change 100644 => 100755 sys/meson.py
 delete mode 100755 sys/ndk-g++
 delete mode 100755 sys/ndk-gcc
 create mode 100755 sys/pre-commit-indent.sh
 create mode 100755 sys/r2api.sh
 create mode 100755 sys/release-notes.sh
 delete mode 100755 sys/uninstall.sh
 create mode 100644 travis-extract-var.sh
 create mode 100644 travis-script
Building on Linux : computing number of allowed parallel jobs.
Maximum allowed RAM memory per job is 150000 kB.
Number of CPUs is 1 and current free RAM allows us to run 0 jobs in parallel.
So, the build will run on 8 job(s).

export USE_R2_CAPSTONE=

Removing arch/M68K/M68KInstPrinter.c.orig
Removing arch/X86/X86ATTInstPrinter.c.orig
Removing arch/X86/X86IntelInstPrinter.c.orig
Removing cs.c.orig
/test/radare2
configure-plugins: Loading ./plugins.cfg ..
configure-plugins: Generating libr/config.h ..
configure-plugins: Generating libr/config.mk ..
SHARED: io.shm
STATIC: anal.6502 anal.8051 anal.arc anal.arm_cs anal.arm_gnu anal.avr anal.bf anal.chip8 anal.cr16 anal.cris anal.dalvik  
cp: `./plugins.cfg' and `plugins.cfg' are the same file
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking target system type... x86_64-unknown-linux-gnu
checking for working directories... current
using prefix '/usr'
checking for c compiler... gcc
checking for dynamic library... required
checking for patch... /usr/bin/patch
checking for git... /usr/bin/git
checking for libmagic ... no
checking for libz ... no
checking for libzip ... no
checking for libxxhash ... no
checking declaration of ADDR_NO_RANDOMIZE in sys/personality.h... yes
checking function arc4random_uniform() in c... no
checking function explicit_bzero() in c... no
checking for libssl ... no
checking pkg-config flags for openssl... no
checking for liblibuv ... no
checking pkg-config flags for libuv... no
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

 - R_CHECKS_LEVEL = 2
 - PREFIX = /usr
 - HAVE_LIB_GMP = 0
 - HAVE_OPENSSL = 0
 - HAVE_LIBUV = 0
 - USE_CAPSTONE = 0
 - HAVE_PTRACE = 1
 - USE_PTRACE_WRAP = 1
 - HAVE_FORK = 1
 - VERSION = 3.1.0-git
 - USE_LIB_ZIP = 0
 - USE_LIB_MAGIC = 0
 - USE_LIB_XXHASH = 0
 - DEBUGGER = 1
 - CC = gcc
 - USERCC = gcc
 - HAVE_ARC4RANDOM_UNIFORM = 0
 - HAVE_EXPLICIT_BZERO = 0
 - USEROSTYPE = gnulinux
 - LIBVERSION = 3.1.0-git
 - BUILD = x86_64-unknown-linux-gnu
 - HOST = x86_64-unknown-linux-gnu
 - TARGET = x86_64-unknown-linux-gnu
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
CC zip_extra_field.c
CC zip_extra_field_api.c
CC zip_fclose.c
CC zip_fdopen.c
CC zip_file_add.c
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
ar: creating libr_zip.a
ar: creating librz.a
CC spp.c
CC cdb.c
CC buffer.c
CC cdb_make.c
CC ls.c
CC sdbht.c
CC ht_uu.c
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
CC dict.c
CC ht_pp.c
CC ht_up.c
CC main.c
AR libsdb.a
ar: creating libsdb.a
BIN sdb
CC PIC cdb.c
CC PIC buffer.c
CC PIC cdb_make.c
CC PIC ls.c
CC PIC sdbht.c
CC PIC ht_uu.c
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
CC PIC dict.c
CC PIC ht_pp.c
CC PIC ht_up.c
LIB libsdb.so.1.3.0
CC binheap.c
CC mem.c
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
CC chmod.c
CC graph.c
CC event.c
CC regcomp.c
CC regerror.c
CC regexec.c
CC uleb128.c
CC sandbox.c
CC calc.c
CC thread.c
CC thread_sem.c
CC thread_lock.c
CC thread_cond.c
CC strpool.c
CC bitmap.c
CC date.c
CC format.c
CC pie.c
CC print.c
CC ctype.c
CC seven.c
CC randomart.c
CC zip.c
CC debruijn.c
CC log.c
CC utf8.c
CC utf16.c
CC utf32.c
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
CC idpool.c
CC assert.c
CC punycode.c
CC pkcs7.c
CC x509.c
CC asn1.c
CC astr.c
CC json_indent.c
CC skiplist.c
CC r_json.c
CC rbtree.c
CC qrcode.c
CC vector.c
CC str_trim.c
CC ascii_table.c
LD libr_util.so
CC socket.c
CC proc.c
CC http.c
CC http_server.c
CC rap_server.c
CC run.c
CC r2pipe.c
CC serial.c
LD libr_socket.so
/test/radare2/shlr
[capstone] Reset capstone
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

ar: creating lib/libbochs.a
a - src/libbochs.o
ar: creating libr_windbg.a
CC cdb_make.c
CC buffer.c
CC sdbht.c
CC cdb.c
CC ls.c
CC ht_uu.c
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
CC dict.c
CC ht_pp.c
CC ht_up.c
CC main.c
AR libsdb.a
ar: creating libsdb.a
BIN sdb

>>>>>>>>>>>>>>>>
TARGET BUILD SDB
>>>>>>>>>>>>>>>>

CC buffer.c
CC cdb.c
CC ls.c
CC cdb_make.c
CC ht_uu.c
CC sdb.c
CC sdbht.c
CC base64.c
CC num.c
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
CC dict.c
CC ht_pp.c
CC ht_up.c
AR libsdb.a
ar: creating libsdb.a
/test/radare2/shlr
[capstone] Updating capstone from git...
HEAD f5960097e296eba40f171bb83275fb22a8439b74
TIP f01c267f889e932b069a559ce0c604c1ae986c0a
Already on 'master'
HEAD is now at f01c267 Typo in register's name (#1282)
/test/radare2/shlr
HEAD is now at f01c267 Typo in register's name (#1282)
patching file MCInst.c
patching file cs.c
Hunk #1 succeeded at 838 (offset -2 lines).
Hunk #2 succeeded at 856 (offset -2 lines).
Hunk #3 succeeded at 945 (offset -1 lines).
Hunk #4 succeeded at 960 (offset -1 lines).
patching file arch/X86/X86ATTInstPrinter.c
Hunk #1 succeeded at 616 (offset 1 line).
patching file arch/X86/X86IntelInstPrinter.c
Hunk #1 succeeded at 824 (offset 1 line).
patching file arch/Sparc/SparcGenAsmWriter.inc
patching file SStream.c
  CC      MCInstrDesc.o
  CC      utils.o
  CC      cs.o
  CC      SStream.o
  CC      MCRegisterInfo.o
  CC      arch/ARM/ARMDisassembler.o
  CC      arch/ARM/ARMMapping.o
  CC      arch/ARM/ARMInstPrinter.o
  CC      arch/ARM/ARMModule.o
  CC      arch/AArch64/AArch64BaseInfo.o
  CC      arch/AArch64/AArch64InstPrinter.o
  CC      arch/AArch64/AArch64Disassembler.o
  CC      arch/AArch64/AArch64Mapping.o
  CC      arch/AArch64/AArch64Module.o
  CC      arch/M68K/M68KDisassembler.o
  CC      arch/M68K/M68KInstPrinter.o
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
  CC      arch/SystemZ/SystemZMCTargetDesc.o
  CC      arch/SystemZ/SystemZModule.o
  CC      arch/X86/X86DisassemblerDecoder.o
  CC      arch/X86/X86Disassembler.o
  CC      arch/X86/X86IntelInstPrinter.o
  CC      arch/X86/X86ATTInstPrinter.o
  CC      arch/X86/X86Module.o
  CC      arch/X86/X86Mapping.o
  CC      arch/XCore/XCoreDisassembler.o
  CC      arch/XCore/XCoreInstPrinter.o
  CC      arch/XCore/XCoreMapping.o
  CC      arch/XCore/XCoreModule.o
  CC      arch/TMS320C64x/TMS320C64xDisassembler.o
  CC      arch/TMS320C64x/TMS320C64xInstPrinter.o
  CC      arch/TMS320C64x/TMS320C64xMapping.o
  CC      arch/TMS320C64x/TMS320C64xModule.o
  CC      arch/M680X/M680XDisassembler.o
  CC      arch/M680X/M680XInstPrinter.o
  CC      arch/M680X/M680XModule.o
  CC      arch/EVM/EVMDisassembler.o
  CC      arch/EVM/EVMInstPrinter.o
  CC      arch/EVM/EVMMapping.o
  CC      arch/EVM/EVMModule.o
  CC      MCInst.o
  AR      libcapstone.a
ar: creating ./libcapstone.a
make -C sdb
CC main.c
BIN sdb
CC PIC cdb.c
CC PIC ls.c
CC PIC ht_uu.c
CC PIC cdb_make.c
CC PIC buffer.c
CC PIC sdbht.c
CC PIC sdb.c
CC PIC num.c
CC PIC base64.c
CC PIC json.c
CC PIC match.c
CC PIC ns.c
CC PIC lock.c
CC PIC util.c
CC PIC disk.c
CC PIC query.c
CC PIC array.c
CC PIC fmt.c
CC PIC journal.c
CC PIC dict.c
CC PIC ht_pp.c
CC PIC ht_up.c
LIB libsdb.so.1.3.0
make -C zip
make -C java
CC code.c
CC class.c
CC ops.c
CC dsojson.c
ar: creating libr_java.a
make -C tcc
ar: creating libr_tcc.a
make -C gdb
CC arch.c
CC common.c
CC libgdbr.c
CC packet.c
CC utils.c
CC core.c
CC responses.c
CC xml.c
CC core.c
ar: creating lib/libgdbr.a
a - src/arch.o
a - src/common.o
a - src/libgdbr.o
a - src/packet.o
a - src/utils.o
a - src/gdbclient/core.o
a - src/gdbclient/responses.o
a - src/gdbclient/xml.o
a - src/gdbserver/core.o
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
make -C ar
ar: creating libr_ar.a
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
make -C ptrace-wrap
ar: creating libptrace_wrap.a
DIR util
DIR socket
DIR hash
DIR reg
DIR cons
DIR magic
DIR bp
DIR search
DIR config
CC reg.c
CC state.c
CC arena.c
CC apprentice.c
CC cons.c
CC search.c
CC config.c
CC bp.c
CC hash.c
CC hamdist.c
CC value.c
CC cond.c
CC bp_watch.c
CC bytepat.c
CC callback.c
CC crca.c
CC entropy.c
CC ascmagic.c
CC bp_io.c
LD libr_config.so
CC pipe.c
CC calc.c
CC output.c
CC adler32.c
CC strings.c
CC double.c
CC profile.c
CC luhn.c
CC fsmagic.c
CC grep.c
CC less.c
CC bp_plugin.c
CC md4.c
CC aes-find.c
CC funcs.c
CC rsa-find.c
CC bp_traptrace.c
CC regexp.c
LD libr_reg.so
CC is_tar.c
CC md5.c
CC magic.c
CC softmagic.c
CC sha1.c
CC more.c
CC pager.c
CC xrefs.c
CC keyword.c
CC bp_arm.c
CC sha2.c
CC bp_bf.c
CC bp_mips.c
CC bp_ppc.c
CC utf8.c
CC bp_x86.c
LD libr_search.so
CC xxhash.c
CC line.c
CC hud.c
CC rgb.c
CC input.c
CC pal.c
LD libr_magic.so
LD libr_bp.so
LD libr_hash.so
CC editor.c
CC 2048.c
CC canvas.c
CC canvas_line.c
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
CC io_ar.c
CC crypto_aes.c
CC crypto_aes_algo.c
CC crypto_aes_cbc.c
CC crypto_base64.c
SDB dos-x86-16.sdb.txt
SDB ios-x86-32.sdb.txt
CC io_bfdbg.c
CC io_bochs.c
SDB ios-arm-32.sdb.txt
SDB ios-arm-64.sdb.txt
CC spaces.c
SDB linux-x86-32.sdb.txt
CC crypto_base91.c
SDB linux-x86-64.sdb.txt
CC crypto_blowfish.c
SDB linux-arm-32.sdb.txt
CC crypto_cps2.c
SDB linux-arm-64.sdb.txt
SDB s110-arm-16.sdb.txt
SDB linux-mips-32.sdb.txt
LD libr_lang.so
SDB linux-sparc-32.sdb.txt
CC crypto_des.c
SDB darwin-x86-32.sdb.txt
CC io_debug.c
SDB darwin-x86-64.sdb.txt
SDB darwin-arm-32.sdb.txt
CC io_default.c
SDB darwin-arm-64.sdb.txt
SDB netbsd-x86-32.sdb.txt
CC crypto_punycode.c
SDB freebsd-x86-32.sdb.txt
CC crypto_rc2.c
CC zones.c
SDB openbsd-x86-32.sdb.txt
SDB openbsd-x86-64.sdb.txt
SDB windows-x86-32.sdb.txt
CC crypto_rc4.c
SDB windows-x86-64.sdb.txt
CC io_gdb.c
CC io_gprobe.c
CC crypto_rc6.c
LD libr_syscall.so
CC tags.c
CC crypto_rol.c
CC io_gzip.c
CC crypto_ror.c
CC crypto_rot.c
CC io_http.c
CC io_ihex.c
LD libr_flag.so
CC io_mach.c
CC crypto_serpent.c
CC crypto_serpent_algo.c
CC io_malloc.c
CC crypto_xor.c
CC io_mmap.c
CC crypto.c
CC des.c
CC io_null.c
CC io_procpid.c
CC io_ptrace.c
CC io_qnx.c
CC io_r2k.c
CC io_r2k_linux.c
LD libr_crypto.so
CC io_r2pipe.c
CC io_r2web.c
CC io_rap.c
CC io_rbuf.c
CC io_self.c
CC io_shm.c
CC io_sparse.c
CC io_tcp.c
CC io_w32.c
CC io_w32dbg.c
CC io_windbg.c
CC io_winedbg.c
CC io_zip.c
CC io.c
CC plugin.c
CC map.c
CC section.c
CC desc.c
CC cache.c
CC p_cache.c
CC undo.c
CC ioutils.c
CC fd.c
LD libr_io.so
DIR fs
DIR anal
DIR bin
DIR parse
CC anal_6502.c
CC anal_8051.c
CC anal_arc.c
CC bin.c
CC anal_arm_cs.c
  SDB dospart
CC parse.c
SDB types.sdb
SDB types-16.sdb
SDB types-32.sdb
SDB types-64.sdb
SDB types-windows.sdb
CC fs_ext2.c
CC dbginfo.c
SDB types-x86-windows-32.sdb
SDB types-x86-windows-64.sdb
CC fs_fat.c
SDB types-linux.sdb
CC code.c
SDB types-x86-macos-64.sdb
SDB types-arm-ios-16.sdb
SDB types-arm-ios-32.sdb
SDB types-arm-ios-64.sdb
CC fs_fb.c
SDB spec.sdb
SDB cc-x86-64.sdb
SDB cc-x86-32.sdb
SDB cc-mips-32.sdb
CC bin_ldr.c
CC fs_hfs.c
CC parse_6502_pseudo.c
SDB cc-m68k-32.sdb
SDB cc-sparc-32.sdb
SDB cc-arm-64.sdb
SDB cc-arm-32.sdb
SDB cc-avr-8.sdb
CC fs_hfsplus.c
SDB cc-powerpc-32.sdb
SDB cc-powerpc-64.sdb
SDB cc-xtensa-32.sdb
SDB cc-riscv-64.sdb
CC fs_io.c
CC parse_arm_pseudo.c
CC bin_write.c
CC parse_att2intel.c
CC demangle.c
CC dwarf.c
CC anal_arm_gnu.c
CC fs_iso9660.c
CC be_arm.c
CC anal_avr.c
CC anal_bf.c
CC anal_chip8.c
CC fs_jfs.c
CC fs_minix.c
CC parse_avr_pseudo.c
CC fs_ntfs.c
CC filter.c
CC parse_dalvik_pseudo.c
CC parse_m68k_pseudo.c
CC parse_mips_pseudo.c
CC fs_posix.c
CC bfile.c
CC obj.c
CC blang.c
CC cp-demangle.c
CC anal_cr16.c
CC bin_any.c
CC fs_r2.c
CC parse_mreplace.c
CC mreplace.c
CC mmemory.c
CC parse_ppc_pseudo.c
CC fs_reiserfs.c
CC cr16_disas.c
CC bin_art.c
CC bin_avr.c
CC bin_bf.c
CC bin_bflt.c
CC fs_sfs.c
CC fs_tar.c
CC anal_cris.c
CC anal_dalvik.c
CC bflt.c
CC anal_ebc.c
CC ebc_disas.c
CC fs_udf.c
CC anal_gb.c
CC parse_sh_pseudo.c
CC parse_x86_pseudo.c
CC bin_bios.c
CC bin_bootimg.c
CC fs_ufs.c
CC fs_xfs.c
CC fs.c
CC file.c
CC shell.c
CC bin_cgc.c
CC parse_z80_pseudo.c
CC anal_h8300.c
CC bin_coff.c
CC h8300_disas.c
CC coff.c
CC bin_dex.c
LD libr_fs.so
LD libr_parse.so
CC anal_hexagon.c
CC bin_dbginfo_dex.c
CC dex.c
CC hexagon.c
CC bin_dol.c
CC hexagon_disas.c
CC bin_dyldcache.c
CC hexagon_anal.c
CC bin_elf.c
CC anal_i4004.c
CC bin_dbginfo_elf.c
CC anal_i8080.c
CC anal_java.c
CC anal_m68k_cs.c
CC bin_write_elf.c
CC elf.c
CC anal_malbolge.c
CC elf_write.c
CC anal_mcore.c
CC mcore.c
CC bin_elf64.c
CC anal_mips_cs.c
CC bin_dbginfo_elf64.c
CC anal_mips_gnu.c
CC bin_write_elf64.c
CC anal_msp430.c
CC elf64.c
CC msp430_disas.c
CC elf64_write.c
CC anal_nios2.c
CC anal_null.c
CC bin_fs.c
CC bin_java.c
CC anal_pic.c
CC pic_midrange.c
CC anal_ppc_cs.c
CC bin_mach0.c
CC vle.c
CC mach0.c
CC anal_ppc_gnu.c
CC mach0_classes.c
CC anal_riscv.c
CC mach064_classes.c
CC bin_write_mach0.c
CC anal_rsp.c
CC rsp_idec.c
CC bin_mach064.c
CC anal_sh.c
CC anal_snes.c
CC bin_write_mach064.c
CC mach064.c
CC anal_sparc_cs.c
CC bin_mbn.c
CC bin_mdmp.c
CC anal_sparc_gnu.c
CC anal_sysz.c
CC anal_tms320.c
CC mdmp.c
CC mdmp_pe.c
CC anal_tms320_c55x_plus.c
CC mdmp_pe64.c
CC bin_menuet.c
CC bin_mz.c
CC tms320_dasm.c
CC ins.c
CC mz.c
CC c55plus.c
CC bin_nes.c
CC c55plus_decode.c
CC bin_nin3ds.c
CC bin_ninds.c
CC decode_funcs.c
CC utils.c
CC bin_ningb.c
CC bin_ningba.c
CC bin_nro.c
CC bin_nso.c
CC nxo.c
CC hashtable.c
CC hashvector.c
CC bin_omf.c
/test/radare2/libr/..//libr/anal/p/../..//asm/arch/tms320/c55x_plus/hashvector.c:97:25: warning: ‘ins_hash’ defined bu
CC anal_v810.c
CC omf.c
CC bin_p9.c
CC v810_disas.c
CC anal_v850.c
CC p9bin.c
CC v850_disas.c
CC bin_pe.c
CC anal_vax.c
CC anal_wasm.c
CC wasm.c
CC anal_ws.c
CC bin_write_pe.c
CC anal_x86_cs.c
CC pe.c
CC pe_write.c
CC bin_pe64.c
CC anal_xap.c
CC bin_write_pe64.c
CC anal_xcore_cs.c
CC anal_xtensa.c
CC anal_z80.c
CC pe64.c
CC meta.c
CC pe64_write.c
CC bin_pebble.c
CC bin_psxexe.c
CC bin_sfc.c
CC reflines.c
CC bin_smd.c
CC op.c
CC fcn.c
CC bb.c
CC var.c
CC cond.c
CC bin_sms.c
CC value.c
CC cc.c
CC diff.c
CC bin_spc700.c
CC hint.c
CC bin_symbols.c
CC bin_te.c
CC anal.c
CC data.c
CC te.c
CC bin_vsf.c
CC xrefs.c
CC esil.c
CC bin_wasm.c
CC sign.c
CC wasm.c
CC anal_ex.c
CC switch.c
CC bin_xbe.c
CC state.c
CC bin_z64.c
CC cycles.c
CC bin_zimg.c
CC esil_sources.c
CC esil_interrupt.c
CC esil_stats.c
CC zimg.c
CC esil_trace.c
CC flirt.c
CC bin_xtr_dyldcache.c
CC dyldcache.c
CC labels.c
CC esil2reil.c
CC bin_xtr_fatmach0.c
CC pin.c
CC fatmach0.c
CC bin_xtr_pemixed.c
CC pemixed.c
CC bin_ldr_linux.c
CC session.c
CC demangler.c
CC vtable.c
CC rtti.c
CC microsoft_demangle.c
CC rtti_msvc.c
CC objc.c
CC cxx.c
CC msvc.c
CC swift.c
CC rtti_itanium.c
CC xtensa-modules.c
CC xtensa-isa.c

Message from syslogd@debian-amd64 at Nov 23 09:03:37 ...
 kernel:[ 8258.743918] Stack:

Message from syslogd@debian-amd64 at Nov 23 09:03:37 ...
 kernel:[ 8258.743918] Call Trace:

Message from syslogd@debian-amd64 at Nov 23 09:03:37 ...
 kernel:[ 8258.743918]  <IRQ> 

Message from syslogd@debian-amd64 at Nov 23 09:03:37 ...
 kernel:[ 8258.743918]  <EOI> 

Message from syslogd@debian-amd64 at Nov 23 09:03:37 ...
 kernel:[ 8258.743918] Code: 0d 2e 00 66 ff 05 2f 2d 59 00 c3 48 c7 c7 d0 41 60 81 e9 77 0d 2e 00 66 ff 05 1b 2d 59 00 fb 6

CC elf32-xtensa.c
CC swift-sd.c
CC java.c
CC rust.c
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
LD libr_anal.so
DIR asm
CC asm_6502.c
CC asm_8051.c
CC 8051_disas.c
CC asm_arc.c
CC arc-dis.c
CC arc-ext.c
CC arc-opc.c
CC arcompact-dis.c
CC asm_arm_as.c
CC asm_arm_cs.c
CC armass.c
CC armass64.c
CC asm_arm_gnu.c
CC arm-dis.c
CC floatformat.c
CC aarch64-dis.c
CC aarch64-dis-2.c
CC aarch64-opc.c
CC aarch64-opc-2.c
CC asm_arm_winedbg.c
CC asm_avr.c
CC asm_bf.c
CC asm_chip8.c
CC asm_cr16.c
CC asm_cris_gnu.c
CC cris-dis.c
CC cris-opc.c
CC asm_dalvik.c
p/../arch/cris/gnu/cris-dis.c:1558:1: warning: ‘print_insn_cris_with_register_prefix’ defined but not used [-Wunused-functi
p/../arch/cris/gnu/cris-dis.c:1570:1: warning: ‘print_insn_crisv32_with_register_prefix’ defined but not used [-Wunused-fun
p/../arch/cris/gnu/cris-dis.c:1595:1: warning: ‘print_insn_cris_without_register_prefix’ defined but not used [-Wunused-fun
CC asm_dcpu16.c
CC asm_ebc.c
CC asm_gb.c
CC asm_h8300.c
CC asm_hexagon.c
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
CC asm_mcore.c
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
CC asm_pic.c
CC pic_baseline.c
CC pic_pic18.c
CC asm_ppc_cs.c
CC libps.c
CC asm_ppc_gnu.c
CC ppc-dis.c
CC ppc-opc.c
CC asm_propeller.c
CC propeller_disas.c
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
CC asm_wasm.c
CC asm_ws.c
CC asm_x86_as.c
CC asm_x86_cs.c
CC asm_x86_nasm.c
CC asm_x86_nz.c
CC asm_xap.c
CC asm_xcore_cs.c
CC asm_xtensa.c
CC xtensa-dis.c
CC asm_z80.c
CC asm.c
CC code.c
CC op.c
LD libr_asm.so
DIR egg
CC egg.c
CC egg_lang.c
CC emit_x86.c
CC emit_arm.c
CC emit_x64.c
CC emit_trace.c
CC egg_Cfile.c
CC egg_exec.c
CC egg_xor.c
LD libr_egg.so
DIR debug
CC signal.c
CC map.c
CC trace.c
CC arg.c
CC debug.c
CC plugin.c
CC snap.c
CC session.c
CC pid.c
CC dreg.c
CC ddesc.c
CC esil.c
CC debug_bf.c
CC debug_bochs.c
CC debug_esil.c
CC debug_gdb.c
CC debug_io.c
CC debug_native.c
CC debug_null.c
CC debug_qnx.c
CC debug_rap.c
CC debug_windbg.c
CC linux_debug.c
CC procfs.c
CC linux_coredump.c
p/native/linux/linux_debug.c: In function ‘linux_handle_signals’:
p/native/linux/linux_debug.c:81:2: warning: #warning DO MORE RDEBUGREASON HERE [-Wcpp]
LD libr_debug.so
DIR core
CC core.c
CC cmd.c
CC cfile.c
CC cconfig.c
CC visual.c
CC cio.c
CC yank.c
CC libs.c
cfile.c: In function ‘r_core_file_reopen’:
cfile.c:117:9: note: #pragma message: fix debugger-concept in core
CC graph.c
CC fortune.c
CC hack.c
CC vasm.c
CC patch.c
CC cbin.c
CC corelog.c
CC rtr.c
CC cmd_api.c
CC carg.c
CC canal.c
CC project.c
CC gdiff.c
CC casm.c
CC vmenus.c
CC disasm.c
CC plugin.c
CC task.c
CC panels.c
CC pseudo.c
CC vmarks.c
CC anal_tp.c
CC blaze.c
CC cundo.c
CC core_a2f.c
CC core_java.c
LD libr_core.so
CC rax2.c
LD rax2
/test/radare2/libr/util/libr_util.so: undefined reference to `clock_nanosleep'
collect2: error: ld returned 1 exit status
make[2]: *** [rax2] Error 1
make[1]: *** [all] Error 1
make: *** [all] Error 2
```

unixfreaxjp

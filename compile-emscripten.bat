@echo on
rem set CLANG=path-to\clang.exe
rem set LLVMAR=path-to\llvm-ar.exe
rem set WINDOWSINC=-I windows inc files
rem set LINUXINC=-I linux inc files


del *.lib /s /q /f

set LLVMCLANG=C:\p\llvm\llvm-bin32\RelWithDebInfo\bin\clang.exe
set LLVMLINK=C:\p\llvm\llvm-bin32\RelWithDebInfo\bin\llvm-link.exe

set COMMONFLAGS= -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR



set TRIPLE=wasm32-unknown-unknown-wasm
set COMPILEFLAGS=-O0 -g -c  -I include -Wno-deprecated-declarations -Wno-unknown-attributes -D __EMSCRIPTEN__ -Wno-builtin-requires-header -emit-llvm
del *.bc /s /q /f
echo "Triple: %TRIPLE% Debug"
%LLVMCLANG% -c %COMPILEFLAGS%  alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMLINK% -o wasm_gcDebug.bc alloc.bc reclaim.bc allchblk.bc misc.bc mach_dep.bc os_dep.bc mark_rts.bc headers.bc mark.bc obj_map.bc blacklst.bc finalize.bc new_hblk.bc dbg_mlc.bc fnlz_mlc.bc malloc.bc stubborn.bc dyn_load.bc typd_mlc.bc ptr_chck.bc  mallocx.bc msvc_dbg.bc


set TRIPLE=wasm32-unknown-unknown-wasm
set COMPILEFLAGS=-O3 -c  -I include -Wno-deprecated-declarations -Wno-unknown-attributes  -D __EMSCRIPTEN__ -Wno-builtin-requires-header -emit-llvm
del *.bc /s /q /f
echo "Triple: %TRIPLE% Release"
%LLVMCLANG% -c %COMPILEFLAGS%  alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMLINK% -o wasm_gcRelease.bc alloc.bc reclaim.bc allchblk.bc misc.bc mach_dep.bc os_dep.bc mark_rts.bc headers.bc mark.bc obj_map.bc blacklst.bc finalize.bc new_hblk.bc dbg_mlc.bc fnlz_mlc.bc malloc.bc stubborn.bc dyn_load.bc typd_mlc.bc ptr_chck.bc  mallocx.bc msvc_dbg.bc

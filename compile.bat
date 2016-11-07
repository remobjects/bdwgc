@echo on
rem set CLANG=path-to\clang.exe
rem set LLVMAR=path-to\llvm-ar.exe
rem set WINDOWSINC=-I windows inc files
rem set LINUXINC=-I linux inc files


del *.lib /s /q /f


set COMMONFLAGS= -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR

set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O0 -c -g -I include %COMMONFLAGS%  

del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc32Debug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O0 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc64Debug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o



set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc32RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -g -I include -Wno-deprecated-declarations -Wno-unknown-attributes
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o



set TRIPLE=i686-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc32Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o

set TRIPLE=x86_64-pc-windows-msvc
set COMPILEFLAGS=-O3 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% %WINDOWSINC% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o

set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O0 -g -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC
del *.o /s /q /f
echo "Triple: %TRIPLE% Debug"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs Linux_gcDebug.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o


set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O3 -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs Linux_gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o

set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O3 -g -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs Linux_gc64RelWithDebInfo.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o



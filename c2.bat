set TRIPLE=x86_64-linux-gnu
set COMPILEFLAGS=-O3 -c %LINUXINC% -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC 
del *.o /s /q /f
echo "Triple: %TRIPLE% Release"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c
%LLVMAR% -format=gnu rcs Linux_gc64Release.lib alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o
copy /y Linux_gc64Release.lib "C:\Program Files (x86)\RemObjects Software\Elements\Island\Reference Libraries\Linux\x86_64\libgc.a"
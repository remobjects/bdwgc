@echo off
set CLANG=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\clang.exe
set LLVMAR=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\llvm-ar.exe
set TRIPLE=i686-linux-androideabi
set COMPILEFLAGS=-O0 -g -c -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-x86\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC  -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src -DGC_DEBUG -DGC_ANDROID_LOG -DENABLE_TRACE -DDEBUG_THREADS -DDL_VERBOSE
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-x86.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o
copy libgc-x86.a "C:\Program Files (x86)\RemObjects Software\Elements\Island\Reference Libraries\Android\x86\libgc.a"
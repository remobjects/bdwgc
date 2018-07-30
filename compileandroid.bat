@echo off
set CLANG=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\clang.exe
set LLVMAR=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\llvm-ar.exe

set TRIPLE=x86_64-linux-androideabi
set COMMONFLAGS=-O0 -c -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID  -D GC_THREADS -I libatomic_ops\src -D_REENTRANT
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-x86_64\usr\include 
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-x86_64.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o



set TRIPLE=i686-linux-android -mcpu=generic
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-x86\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-x86.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=x86_64-linux-android -mcpu=generic
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-x86_64\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src -D_REENTRANT
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-x86_64.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=mipsel-linux-androideabi
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-mips\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-mips.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=mips64el-linux-androideabi
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-mips64\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src
del *.o /s /q /f
copy /y C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\toolchains\mips64el-linux-android-4.9\prebuilt\windows-x86_64\bin\mips64el-linux-android-as.exe as.exe
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-mips64.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=aarch64-linux-androideabi
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-arm64\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-arm64.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=armv5te-linux-androideabi
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-arm\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-arm.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o





set TRIPLE=armv7a-linux-androideabi
set COMPILEFLAGS=%COMMONFLAGS% -I C:\Users\carlokok\AppData\Local\Android\sdk\ndk-bundle\platforms\android-24\arch-arm\usr\include -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC -DGC_DONT_DEFINE_LINK_MAP -DPLATFORM_ANDROID -D GC_THREADS -I libatomic_ops\src
del *.o /s /q /f
echo "Triple: %TRIPLE% RelWithDebInfo"
%CLANG% %COMPILEFLAGS% -target %TRIPLE% alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c stubborn.c dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c pthread_stop_world.c pthread_start.c
%LLVMAR% -format=gnu rcs libgc-armv7a.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o stubborn.o dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o pthread_stop_world.o pthread_start.o



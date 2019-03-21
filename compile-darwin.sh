#!/bin/bash

export COMMONFLAGS= -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR -D GC_THREADS -I libatomic_ops\src -Wno-expansion-to-defined -Wno-ignored-attributes

export TRIPLE=x86_64-apple-macosx
export OSXINC=/Users/mh/Applications/Xcode-10Beta6.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
export COMPILEFLAGS="-O3 -c $OSXINC -I include -Wno-deprecated-declarations -Wno-unknown-attributes -Wno-builtin-requires-header -fPIC $COMMONFLAGS  -D_REENTRANT"


rm *.o 
echo "Triple: $TRIPLE Release"
clang $COMPILEFLAGS -target $TRIPLE alloc.c reclaim.c allchblk.c misc.c mach_dep.c os_dep.c mark_rts.c headers.c mark.c obj_map.c blacklst.c finalize.c new_hblk.c dbg_mlc.c fnlz_mlc.c malloc.c  dyn_load.c typd_mlc.c ptr_chck.c  mallocx.c extra\msvc_dbg.c pthread_support.c darwin_stop_world.c pthread_start.c
ar rcs gc-$TRIPLE.a alloc.o reclaim.o allchblk.o misc.o mach_dep.o os_dep.o mark_rts.o headers.o mark.o obj_map.o blacklst.o finalize.o new_hblk.o dbg_mlc.o fnlz_mlc.o malloc.o  dyn_load.o typd_mlc.o ptr_chck.o  mallocx.o msvc_dbg.o pthread_support.o darwin_stop_world.o pthread_start.o
@echo off
set CLANG=C:\p\llvm-project-bin32\RelWithDebInfo\bin\clang.exe
set LLVMAR=C:\p\llvm-project-bin32\RelWithDebInfo\bin\llvm-ar.exe
set WINDOWSINC=
set LINUXINC=-I C:\projects\imports\ubuntu\include\x86_64-linux-gnu -I C:\projects\imports\ubuntu\include
set RPIINC=-I C:\projects\imports\rpi\inc\arm-linux-gnueabihf -I C:\projects\imports\rpi\inc
set OSXINC=-I C:\projects\hi\MacOSX.sdk\usr\include
compile.bat
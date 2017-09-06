@echo off
set CLANG=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\clang.exe
set LLVMAR=c:\p\llvm\llvm-bin32\RelWithDebInfo\bin\llvm-ar.exe
set WINDOWSINC=
set LINUXINC=-I C:\projects\imports\ubuntu\include\x86_64-linux-gnu -I C:\projects\imports\ubuntu\include
set RPIINC=-I C:\projects\imports\rpi\inc\arm-linux-gnueabihf -I C:\projects\imports\rpi\inc
compile.bat
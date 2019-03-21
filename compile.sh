#!/bin/bash

export COMMONFLAGS=" -Wno-deprecated-declarations -Wno-nullability-completeness -Wno-unknown-attributes -Wno-builtin-requires-header -D HAVE_DL_ITERATE_PHDR -D GC_THREADS -I libatomic_ops\src -Wno-expansion-to-defined -Wno-ignored-attributes -Ilibatomic_ops/src "

# OSX

export TRIPLE=x86_64-apple-macosx
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/

./innercompile.sh


# iOS armv7

export TRIPLE=armv7-apple-ios
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh


# iOS armv7s

export TRIPLE=armv7s-apple-ios
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh


# iOS armv64

export TRIPLE=arm64-apple-ios
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/include
./innercompile.sh


# iOS-Sim

export TRIPLE=i386-apple-ios
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include
./innercompile.sh

export TRIPLE=x86_64-apple-ios
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/include
./innercompile.sh


# tv


export TRIPLE=arm64-apple-tvos
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/AppleTVOS.platform/Developer/SDKs/AppleTVOS.sdk/usr/include
./innercompile.sh



export TRIPLE=x86_64-apple-tvos
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/AppleTVSimulator.platform/Developer/SDKs/AppleTVSimulator.sdk/usr/include
./innercompile.sh



# watch


export TRIPLE=armv7k-apple-watchos
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/WatchOS.platform/Developer/SDKs/WatchOS.sdk/usr/include
#./innercompile.sh



export TRIPLE=i386-apple-watchos
export OSXINC=/Applications/Xcode.app/Contents/Developer/Platforms/Watchimulator.platform/Developer/SDKs/WatchSimulator.sdk/usr/include
#./innercompile.sh



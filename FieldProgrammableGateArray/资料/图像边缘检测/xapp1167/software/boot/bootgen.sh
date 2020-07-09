#!/bin/bash

KNAME=$(uname -s)
HNAME=unknown
if [ $(uname -m) == *86 ]; then
    HNAME=x86
else
    HNAME=x86_64
fi

ARCH=unknown
if [ "$HNAME"_"$KNAME" == x86_64_Linux ]; then
    ARCH=lnx64
else
    if [ "$HNAME"_"$KNAME" == x86_Linux ]; then
        ARCH=lnx32
    else
        ARCH=win32
    fi
fi

if [ $ARCH == win32 ]; then
     cmd.exe /c "bootgen -image bootimage.bif -o i BOOT.bin -w on"
else
     bootgen -image bootimage.bif -o i BOOT.bin -w on 
fi
 
if [ $? -eq 0 ]; then
    echo "BOOT.bin successfully generated."
else
    echo "BOOT.bin failed to generate."
fi

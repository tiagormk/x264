SRCPATH=.
prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=ARM
SYS=LINUX
CC=arm-linux-gnueabi-gcc
CFLAGS=-Wshadow -O3 -fno-fast-math  -Wall -I. -I$(SRCPATH) -std=gnu99 -mcpu=cortex-a8 -mfpu=neon -fomit-frame-pointer -fno-tree-vectorize
DEPMM=-MM -g0
DEPMT=-MT
LD=arm-linux-gnueabi-gcc -o 
LDFLAGS= -lm -lpthread
LIBX264=libx264.a
AR=arm-linux-gnueabi-ar rc 
RANLIB=arm-linux-gnueabi-ranlib
STRIP=arm-linux-gnueabi-strip
INSTALL=install
AS=arm-linux-gnueabi-gcc
ASFLAGS=  -Wall -I. -I$(SRCPATH) -std=gnu99 -mcpu=cortex-a8 -mfpu=neon -c -DSTACK_ALIGNMENT=16 -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
RC=
RCFLAGS=
EXE=
HAVE_GETOPT_LONG=1
DEVNULL=/dev/null
PROF_GEN_CC=-fprofile-generate
PROF_GEN_LD=-fprofile-generate
PROF_USE_CC=-fprofile-use
PROF_USE_LD=-fprofile-use
HAVE_OPENCL=no
default: cli
install: install-cli
default: lib-static
install: install-lib-static
LDFLAGSCLI = -ldl 
CLI_LIBX264 = $(LIBX264)

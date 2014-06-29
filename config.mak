SRCPATH=.
prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
libdir=${exec_prefix}/lib
includedir=${prefix}/include
ARCH=ALPHA
SYS=LINUX
CC=alphaev67-unknown-linux-gnu-gcc
CFLAGS=-Wshadow -O3 -ffast-math  -Wall -I. -I$(SRCPATH) -mcpu=21064 -mtune=21064 -std=gnu99 -fomit-frame-pointer -fno-tree-vectorize
DEPMM=-MM -g0
DEPMT=-MT
LD=alphaev67-unknown-linux-gnu-gcc -o 
LDFLAGS= -lm -lpthread
LIBX264=libx264.a
AR=alphaev67-unknown-linux-gnu-ar rc 
RANLIB=alphaev67-unknown-linux-gnu-ranlib
STRIP=alphaev67-unknown-linux-gnu-strip
INSTALL=install
AS=
ASFLAGS= -DSTACK_ALIGNMENT=16 -DHIGH_BIT_DEPTH=0 -DBIT_DEPTH=8
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

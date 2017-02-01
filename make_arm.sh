#!/bin/bash
export CPPFLAGS='-I../mash/src'
./configure --disable-opencl --enable-static --host=arm-linux-gnueabi --cross-prefix=arm-linux-gnueabi-
make -j 8
arm-linux-gnueabi-gcc -static -o x264  x264.o input/input.o input/timecode.o input/raw.o input/y4m.o output/raw.o output/matroska.o output/matroska_ebml.o output/flv.o output/flv_bytestream.o filters/filters.o filters/video/video.o filters/video/source.o filters/video/internal.o filters/video/resize.o filters/video/cache.o filters/video/fix_vfr_pts.o filters/video/select_every.o filters/video/crop.o filters/video/depth.o input/avs.o input/thread.o libx264.a -ldl  -lm -lpthread


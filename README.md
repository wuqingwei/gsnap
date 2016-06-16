# gsnap
snap the linux mobile device screen.
need libjpeg libpng zlib

# jpegsrc.v9a.tar.gz
./configure CC=arm-hisiv200-linux-gcc --build=i686-linux --host=arm-linux --prefix=/opt/tools/yuv2jpeg/jpeg-9a/_install

# zlib-1.2.8.tar.gz
./configure --prefix=/home/zlib_3531/
ÐÞ¸ÄMakefile
CC=arm-hisiv200-linux-gcc

LDSHARED=arm-hisiv200-linux-gcc -shared -Wl,-soname,libz.so.1,--version-script,zlib.map
CPP=arm-hisiv200-linux-gcc -E
AR=arm-hisiv200-linux-ar

# libpng-1.6.23.tar.gz
export LDFLAGS="-L/home/zlib_3531/lib/" 
export CPPFLAGS="-I/home/zlib_3531/include"
./configure CC=arm-hisiv200-linux-gcc --host=arm-hisiv200-linux --prefix=/opt/tools/libpng-1.6.23/__install
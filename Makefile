
INC_PATH:= -I/opt/tools/yuv2jpeg/jpeg-9a/_install/include \
			-I/opt/tools/libpng-1.6.23/__install/include \
			-I/home/zlib_3531/include

LD_LIBS:= -L/opt/tools/yuv2jpeg/jpeg-9a/_install/lib/  -ljpeg \
			-L/opt/tools/libpng-1.6.23/__install/lib/ -lpng \
			-L/home/zlib_3531/lib/ -lz
all:
	arm-hisiv200-linux-gcc -g gsnap.c $(INC_PATH) $(LD_LIBS) -lm -o gsnap
clean:
	rm -f gsnap

CFLAGS = -D_IEEE_LIBM 

CC = cc

INCFILES = fdlibm.h
.INIT: $(INCFILES)
.KEEP_STATE:
src = e_rem_pio2.c k_cos.c k_sin.c s_cos.c s_sin.c

obj = e_rem_pio2.o k_cos.o k_sin.o s_cos.o s_sin.o

all: libm.a 

libm.a : $(obj) 
	ar cru libm.a $(obj)
	ranlib libm.a

source: $(src) README

clean: 
	/bin/rm -f $(obj) a.out libm.a
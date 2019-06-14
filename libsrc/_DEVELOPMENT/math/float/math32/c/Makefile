# Helper makefile to generate the checked in .asm files

CFILES = $(wildcard *.c)
AFILES = $(CFILES:.c=.asm)
CFLAGS += -I. 

all: $(addprefix asm/,$(AFILES))

asm/%.asm: %.c
	zcc +z80 -clib=new -fp-mode=ieee $(CFLAGS) -a $^ -o $@

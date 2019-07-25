


TARGET = main

MCU = msp430fr6989

GCC_DIR = ~/gcc-msp430/bin
SUPPORT_FILE_DIRECTORY = ~/gcc-msp430/msp430-elf/include

CC = $(GCC-DIR)msp430-elf-gcc
GDB = $(GCC-DIR)msp430-elf-gdb





OBJECTS = $(TARGET).o







CFLAGS =  -mmcu=$(MCU) -O2 -g
LFLAGS = -T $(MCU).ld


all:${OBJECTS}
	$(CC) $(CFLAGS) $(LFLAGS)   $?  -o $(TARGET).out

debug: all
	$(GDB) $(TARGET).out

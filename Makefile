AS      = as
LD      = ld
OBJCOPY = objcopy
SRC     = clear.S
OBJ     = clear.o
BIN     = clear

all:
	$(AS) --32 $(SRC) -o $(OBJ)
	$(LD) -N -m elf_i386 -static $(OBJ) -o $(BIN)
	$(OBJCOPY) --strip-all $(BIN)

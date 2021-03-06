PPU_CC = ppu-gcc
PPU_OBJCOPY = ppu-objcopy

all: payload.bin

%.o : %.S
	$(PPU_CC) -c $< -o $@

%.bin : %.o
	$(PPU_OBJCOPY) -O binary $< $@

clean:
	rm -f *.o *.bin

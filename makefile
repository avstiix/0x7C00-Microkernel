CC=i686-elf-gcc
AS=i686-elf-as
CFLAGS=-ffreestanding -O2 -Wall -Wextra

OBJS=kernel.o mmu.o process.o ipc.o

kernel.bin: $(OBJS)
	$(CC) -T linker.ld -o $@ -ffreestanding -O2 -nostdlib $(OBJS) -lgcc

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

run: kernel.bin
	qemu-system-i386 -kernel kernel.bin

clean:
	rm -f *.o kernel.bin
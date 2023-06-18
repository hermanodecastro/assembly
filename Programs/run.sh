nasm -f bin -o $1 "$1.asm"
mv $1 ./bin
cd bin
qemu-system-i386 -hda $1 

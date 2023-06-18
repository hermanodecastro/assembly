; nasm -f bin -o boot boot.asm
; qemu-system-i386 -hda boot
[BITS 16]
[ORG 0x7c00]

Mov Si, Message 
Call String  
Jmp $

Character:
    Mov Ah, 0x0E
    Mov Bh, 0x00
    Mov Bl, 0x07
    Int 0x10
    Ret 

String:
    Mov Al, [Si]
    Inc Si 
    Or Al, Al
    Jz Exit 
    Call Character
    Jmp String 

Exit:
    Ret


Message db 'Hello, world!', 0

TIMES 510 - ($ - $$) db 0 
DW 0xAA55
[Bits 16]
[Org 0x07cc]

; INT 13h / AH = 00h - reset disk system.

Start:
    Int 0x0d

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
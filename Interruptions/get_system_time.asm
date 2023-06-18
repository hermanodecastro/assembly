[Bits 16]
[Org 0x7cc]

; INT 1Ah / AH = 00h - get system time.

; return:
; CX:DX = number of clock ticks since midnight.
; AL = midnight counter, advanced each time midnight passes.

Start:
    Mov Ah, 0x00
    Int 0x1a


Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
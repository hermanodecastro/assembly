[Bits 16]
[Org 0x07cc]

; INT 16h / AH = 00h - get keystroke from keyboard (no echo).

; return:
; AH = BIOS scan code.
; AL = ASCII character.
; (if a keystroke is present, it is removed from the keyboard buffer).

Start:
    Mov Ah, 0x00
    Int 0x16

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
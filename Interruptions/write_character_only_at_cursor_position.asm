[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 0Ah - write character only at cursor position.

; input:
; AL = character to display.
; BH = page number.
; CX = number of times to write character.

Start:
    Mov Al, 'H'
    Xor Bh, Bh
    Or Cx, 0x01
    Mov Ah, 0x0a
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
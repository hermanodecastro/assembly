[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 09h - write character and attribute at cursor position.

; input:
; AL = character to display.
; BH = page number.
; BL = attribute.
; CX = number of times to write character.

Start:
    Mov Al, 'H'
    Xor Bh, Bh 
    Mov Bl, 0x04
    Mov Cx, 0x05
    Mov Ah, 0x09
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55

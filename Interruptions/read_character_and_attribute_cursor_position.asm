[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 08h - read character and attribute at cursor position.

; input:
; BH = page number.

; return:
; AH = attribute.
; AL = character.

Start:
    Xor Bh, Bh
    Mov Ah, 0x08
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 2 - set cursor position.

; DH = row.
; DL = column.
; BH = page number (0..7).

Start:
    Mov Dh, 0x0a
    Mov Dl, 0x14
    Mov Bh, 0x00
    Mov Ah, 0x02
    Int 0x10

Times 510 - ($ -$$) db 0x0
Dw 0xaa55
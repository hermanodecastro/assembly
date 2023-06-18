[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 0Ch - change color for a single pixel.

; input:
; AL = pixel color
; CX = column.
; DX = row.

Start:
    Mov Al, 0x13
    Mov Ah, 0x00
    Int 0x10 ; set graphics video mode

    Mov Al, 0x04
    Mov Cx, 0x0a
    Mov Dx, 0x14
    Mov Ah, 0x0c
    Int 0x10 ; set pixel

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
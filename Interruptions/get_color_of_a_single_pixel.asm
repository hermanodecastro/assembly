[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 0Dh - get color of a single pixel.

; input:
; CX = column.
; DX = row.

; output:
; AL = pixel color

Start:
    Xor Cx, Cx
    Xor Dx, Dx 
    Mov Ah, 0x0c
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
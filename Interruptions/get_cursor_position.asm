[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 03h - get cursor position and size.

; input:
; BH = page number.

; return:
; DH = row.
; DL = column.
; CH = cursor start line.
; CL = cursor bottom line.

Start:
    Mov Ah, 0x03
    Or Bh, 0x01

Times 510 - ($ -$$) db 0x00
Dw 0xaa55


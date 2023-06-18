[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 05h - select active video page.

; input:
; AL = new page number (0..7).
; the activated page is displayed.

Start:
    Xor Al, Al
    Mov Ah, 0x05
    Int 0x10

Times 510 - ($ -$$) db 0x00
Dw 0xaa55
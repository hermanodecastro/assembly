[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 0 - set video mode.

; AL = desired video mode.
; 0x00 - text mode. 40x25. 16 colors. 8 pages.
; 0x03 - text mode. 80x25. 16 colors. 8 pages.
; 0x13 - graphical mode. 40x25. 256 colors. 320x200 pixels. 1 page.

Start:
    Mov Al, 0x03
    Mov Ah, 0x00
    Int 0x10

Times 510 - ($ -$$) db 0x0
Dw 0xaa55
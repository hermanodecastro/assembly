[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 01h - set text-mode cursor shape.

; CH = cursor start line (bits 0-4) and options (bits 5-7).
; CL = bottom cursor line (bits 0-4).

; when bit 5 of CH is set to 0, the cursor is visible. when bit 5 is 1, the cursor is not visible.


Mov Ch, 0x20
Mov Ah, 0x01
Int 0x10

Mov Ch, 0x06
Mov Cl, 0x07
Mov Ah, 0x01
Int 0x10

Mov Ch, 0x00
Mov Cl, 0x07
Mov Ah, 0x01
Int 0x10

Times 510 - ($ -$$) db 0x00
Dw 0xaa55
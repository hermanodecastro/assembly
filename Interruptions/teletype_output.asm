[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 0Eh - teletype output.

; input:
; AL = character to write.

Start:
    Mov Al, 'A'
    Mov Ah, 0x0e
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
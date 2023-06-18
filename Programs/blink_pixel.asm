[Bits 16]
[Org 0x7c00]

Start:
    Mov Al, 13H
    Mov Ah, 0h
    Int 10h

    Xor Al, Al
    Mov Cx, 10
    Mov Dx, 20
    Mov Ah, 0ch 
    Int 10h
    Call ChangeColor

ChangeColor:
    Cmp Al, 0xff
    Jz ResetColor
    Inc Al
    Int 10h
    Jmp ChangeColor

ResetColor:
    Xor Al, Al
    Jmp ChangeColor

Times 510 - ($ -$$) db 0
Dw 0xaa55
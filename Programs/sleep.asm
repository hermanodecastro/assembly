[Bits 16]
[Org 0x7c00]

Start:
    Mov Al, 0x13 
    Mov Ah, 0x00
    Int 0x10 ; graphic mode

    Xor Al, Al
    Mov Cx, 10
    Mov Dx, 20
    Mov Ah, 0ch 
    Int 10h
    Jmp ChangeColor

Sleep:
    Mov Bl, Al
    Mov Al, 0x00
	Mov Cx, 0x00
	Mov Dx, 0x00
	Mov Ah, 86h
	Int 15h
    Mov Al, Bl
	Jmp ChangeColor

ChangeColor:
    Cmp Al, 0xff
    Jz ResetColor
    Inc Al
    Int 10h
    Jmp Sleep

ResetColor:
    Xor Al, Al
    Jmp ChangeColor

Times 0x1fe - ($ -$$) db 0x00
Dw 0xaa55
[BITS 16]
[ORG 0X7c00]

Start:
    Mov Al, 0x13 
    Mov Ah, 0x00
    Int 0x10

    Mov Al, 0x02 
    Mov Cx, 0x00
    Mov Dx, 0x64
    Mov Ah, 0x0c
    Call Q1

Q1:
    Cmp Cx, 0xa0
    Jz Q2
    Inc Cx
    Int 0x10
    Mov Dx, 0x64
    Jmp Q1

Q2:
    Cmp Dx, 0xc8
    Jz Reset
    Inc Dx 
    Int 0x10
    Jmp Q2
    
Reset:
    Xor Dx, Dx 
    Mov Cx, 0xa0
    Inc Al ; change color
    Jmp Q3

Q3:
    Cmp Dx, 0x64
    Jz Q4
    Inc Dx
    Int 0x10
    Mov Cx, 0xa0
    Jmp Q3

Q4:
    Cmp Cx, 0x140
    Jz Exit
    Inc Cx 
    Int 0x10
    Jmp Q4
    
Exit:
    Nop

Times 0x1fe - ($ - $$) db 0x00
Dw 0xaa55
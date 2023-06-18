[Bits 16]
[Orgs 0x07cc]

; INT 12h - get memory size.

; return:
; AX = kilobytes of contiguous memory starting at absolute address 00000h, 
; this call returns the contents of the word at 0040h:0013h.

Start:
    Int 0x0c

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55


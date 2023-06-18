[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 13h - write string.

; input:
; AL = write mode:
;    bit 0: update cursor after writing;
;    bit 1: string contains attributes.
; BH = page number.
; BL = attribute if string contains only characters (bit 1 of AL is zero).
; CX = number of characters in string (attributes are not counted).
; DL,DH = column, row at which to start writing.
; ES:BP points to string to be printed.

Start:
    Mov Al, 0x01
    Mov Bh, 0x00
    Mov Bl, 0x04
    Mov Cx, 0x0c 
    Mov Dl, 0x0a
    Mov Dh, 0x07
    Push Cs 
    Pop Es 
    Mov Ah, 0x13
    Int 0x10

F:

Message db 'Hello, world', 0

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
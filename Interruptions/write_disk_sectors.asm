[Bits 16]
[Org 0x07cc]

; INT 13h / AH = 02h - read disk sectors into memory.

; input:
; AL = number of sectors to read/write (must be nonzero)
; CH = cylinder number (0..79).
; CL = sector number (1..18).
; DH = head number (0..1).
; DL = drive number (0..3 , for the emulator it depends on quantity of FLOPPY_ files).
; ES:BX points to data buffer.

; return:
; CF set on error.
; CF clear if successful.
; AH = status (0 - if successful).
; AL = number of sectors transferred.
; Note: each sector has 512 bytes.

Start:
    Or Al, 0xff
    Xor Ch, Ch 
    Or Cl, 0xff
    Xor Dh, Dh 
    Xor Dl, Dl 
    Mov Bx, ; points to data buffer
    Mov Ah, 0x03
    Int 0x0d

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
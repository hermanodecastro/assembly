[Bits 16]
[Org 0x07cc]

; INT 10h / AX = 1003h - toggle intensity/blinking.

; input:
; BL = write mode:
;    0: enable intensive colors.
;    1: enable blinking (not supported by the emulator and windows command prompt).
; BH = 0 (to avoid problems on some adapters).

Start:
    Mov Ax, 0x63
    Mov Bx, 0x00
    Int 0x10

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55

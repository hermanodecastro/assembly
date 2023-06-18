[Bits 16]
[Org 0x07cc]

; INT 15h / AH = 86h - BIOS wait function.
; input:
; CX:DX = interval in microseconds
; return:
; CF clear if successful (wait interval elapsed),
; CF set on error or when wait function is already in progress.

; Note:
; the resolution of the wait period is 977 microseconds on many systems (1 million microseconds - 1 second).
; Windows XP does not support this interrupt (always sets CF=1).

Start:
    Or Cx, 0xff
    Or Dx, 0xff
    Mov Ah, 0x86
    Int 0x15

Times - ($ -$$) Db 0x00
Dw 0xaa55
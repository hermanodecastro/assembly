[Bits 16]
[Org 0x07cc]

; INT 10h / AH = 06h - scroll up window.

; input:
; AL = number of lines by which to scroll (00h = clear entire window).
; BH = attribute used to write blank lines at bottom of window.
; CH, CL = row, column of window's upper left corner.
; DH, DL = row, column of window's lower right corner.

; HEX    BIN        COLOR

; 0      0000      black
; 1      0001      blue
; 2      0010      green
; 3      0011      cyan
; 4      0100      red
; 5      0101      magenta
; 6      0110      brown
; 7      0111      light gray
; 8      1000      dark gray
; 9      1001      light blue
; A      1010      light green
; B      1011      light cyan
; C      1100      light red
; D      1101      light magenta
; E      1110      yellow
; F      1111      white

Start:
    Mov Al, 0x01
    Mov Bh, 0x04
    Mov Ch, 0x32
    Mov Cl, 0x32
    Mov Dh, 0x64
    Mov Dl, 0x64
    Mov Ah, 0x06
    Int 0x10


Times 500 - ($ -$$) Db 0x00
Dw 0xaa55
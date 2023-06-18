[Bits 16]
[Org 0x07cc]

; INT 11h - get BIOS equipment list.

; return:
; AX = BIOS equipment list word, actually this call returns the contents of the word at 0040h:0010h.

; Currently this function can be used to determine the number of installed number of floppy disk drives.

; Bit fields for BIOS-detected installed hardware:
; bit(s)	Description
;  15-14  Number of parallel devices.
;  13     Reserved.
;  12     Game port installed.
;  11-9   Number of serial devices.
;  8      Reserved.
;  7-6    Number of floppy disk drives (minus 1):
;           00 single floppy disk;
;           01 two floppy disks;
;           10 three floppy disks;
;           11 four floppy disks.
;  5-4    Initial video mode:
;           00 EGA,VGA,PGA, or other with on-board video BIOS;
;           01 40x25 CGA color.
;           10 80x25 CGA color (emulator default).
;           11 80x25 mono text.
;  3      Reserved.
;  2      PS/2 mouse is installed.
;  1      Math coprocessor installed.
;  0      Set when booted from floppy.

Start:
    Int 0x0b

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55

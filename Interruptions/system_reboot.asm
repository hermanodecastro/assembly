[Bits 16]
[Org 0x07cc]

; INT 19h - system reboot.

; Usually, the BIOS will try to read sector 1, head 0, track 0 from drive A: to 0000h:7C00h. 
; The emulator just stops the execution, 
; to boot from floppy drive select from the menu: 'virtual drive' -> 'boot from floppy'

Start:
    Int 0x19

Times 510 - ($ -$$) Db 0x00
Dw 0xaa55
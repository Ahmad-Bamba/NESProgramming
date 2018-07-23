.inesprg 1   ; one (1) bank of program code
.ineschr 1   ; one (1) bank of picture data
.inesmap 0   ; we use mapper 0
.inesmir 1   ; Mirror setting always 1.

.bank 0
.org $8000   ; Start bank 0 (my code) at 0x8000
nop          ; start code

.bank 1
.org $FFFA   ; Start bank 1 (the MANUAL INTERRUPT TABLE fuck) at 0xFFFA
.dw 0        ; location of NMI Interrupt
.dw Start    ; code to run at reset, we give address of Start label that
; we will eventually put in bank 0
.dw 0        ; what does this do?

.bank 2        ; change to bank 2
.org $0000    ; start at $0000
.incbin "our.bkg"  ; INClude BINary file that will contain our background pic
; data.
.incbin "our.spr"  ; INClude BINary file that will contain our sprite pic data </code>

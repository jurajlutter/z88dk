; void __CALLEE__ sp1_Initialize_callee(uchar iflag, uchar colour, uchar tile)
; 03.2006 aralbrec, Sprite Pack v3.0
; sinclair spectrum version

XDEF sp1_Initialize_callee

sp1_Initialize_callee:

   pop bc
   pop hl
   pop de
   ld h,e
   pop de
   ld a,e
   push bc

   INCLUDE "temp/sp1/spectrum/updater/asm_sp1_Initialize.asm"

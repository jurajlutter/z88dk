; void __CALLEE__ sp1_SetPrintPos_callee(struct sp1_pss *ps, uchar row, uchar col)
; 05.2006 aralbrec, Sprite Pack v3.0
; Sinclair Spectrum version

XDEF sp1_SetPrintPos_callee

sp1_SetPrintPos_callee:

   pop af
   pop de
   pop hl
   ld d,l
   pop hl
   push af

   INCLUDE "temp/sp1/spectrum/tiles/asm_sp1_SetPrintPos.asm"

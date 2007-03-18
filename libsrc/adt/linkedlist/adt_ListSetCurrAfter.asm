; void __FASTCALL__ adt_ListSetCurrAfter(struct adt_List *list)
; 11.2006 aralbrec

XLIB adt_ListSetCurrAfter
LIB l_setmem

; enter: hl = struct adt_List*

.adt_ListSetCurrAfter

   inc hl
   inc hl
   ld (hl),2               ; indicate current pointer points after end of list
   inc hl
   xor a
   jp l_setmem-3           ; current ptr = 0

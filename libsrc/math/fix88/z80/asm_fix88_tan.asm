;
; Z80 fixed Q8.8 maths routines
;


    SECTION code_math
    PUBLIC  asm_fix88_tan

    EXTERN  asm_fix88_sin
    EXTERN  asm_fix88_cos
    EXTERN  asm_fix88_div


; Entry: h.l = Q8.8 number
; Exit:  h.l = tan of it
;
; tan x = sin x / cos x
asm_fix88_tan:
    push    hl
    call    asm_fix88_sin
    ex      (sp),hl
    call    asm_fix88_cos
    ex      de,hl
    pop     hl
    jp      asm_fix88_div

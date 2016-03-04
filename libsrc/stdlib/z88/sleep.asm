;
; Small C z88 Misc functions
;
; sleep(time)
;
; Pause for time seconds
;
; djm 22/3/2000 Rewritten to:
;		 - Not loop (was causing problems)
;		 - Return number of seconds left
;
; -----
; $Id: sleep.asm,v 1.7 2016-03-04 23:48:13 dom Exp $


		INCLUDE "time.def"

		PUBLIC    sleep
		PUBLIC    _sleep
		EXTERN	l_mult
		EXTERN	l_div_u
		PUBLIC ASMDISP_SLEEP

;sleep(int time);


.sleep
._sleep
        pop     hl
        pop     de      ;number of seconds..
        push    de
        push    hl
        
.asmentry
                
	ld	hl,100
	call	l_mult
	ld	c,l
	ld	b,h
        call_oz(os_dly)
	ld	hl,0
	ret	nc	;NULL - normal
; Now found out how long is left to sleep for..
	ld	e,c
	ld	d,b
	ld	hl,100
	call	l_div_u
	ld	c,l
	ld	b,h
	ret	

DEFC ASMDISP_SLEEP = # asmentry - sleep


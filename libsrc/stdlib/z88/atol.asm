;/*
; *	Z88 Standard Library
; *
; *	long __FASTCALL__ atol(char *str)
; *
; *	djm 25/2/2001
; *
; *	$Id: atol.asm,v 1.5 2016-03-04 23:48:13 dom Exp $
; */

; Removed C front end to make FASTCALL, consistent with
; all other targets.  Was atol.c, that file now removed.
; 12.2006 aralbrec

PUBLIC atol
PUBLIC _atol
PUBLIC ASMDISP_ATOL

.atol
._atol

   INCLUDE "integer.def"
   
   ex de,hl
   push hl
   push hl                   ; make space for a temporary long on stack
   ld hl,0
   add hl,sp
   ex de,hl                  ; hl = char*, de = & long
   ld b,254
   call_oz(gn_gdn)
   pop hl
   pop de
   ret z                     ; was a number
   ld hl,0
   ld d,h
   ld e,l
   ret

DEFC ASMDISP_ATOL = 0

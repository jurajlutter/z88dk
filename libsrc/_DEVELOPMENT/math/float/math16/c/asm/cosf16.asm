;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 16894-223f580fd-20200818
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Sat Aug 21 15:22:06 2021


	C_LINE	0,"cosf16.c"

	MODULE	cosf16_c


	INCLUDE "z80_crt0.hdr"


	C_LINE	0,"math16.h"
	C_LINE	0,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	8,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	9,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	10,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	12,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	13,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	14,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	16,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	17,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	18,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	20,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	21,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	22,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	24,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	25,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	26,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	28,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	29,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	30,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	60,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	63,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	81,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	82,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/stdint.h"
	C_LINE	34,"math16.h"
	C_LINE	0,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	24,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	41,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	53,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	174,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	177,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	180,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	183,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	184,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	189,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	192,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	195,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	199,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	202,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	205,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	209,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	212,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	215,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	219,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	222,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	225,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	228,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	229,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	233,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	236,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	237,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	241,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	242,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	246,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	247,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	252,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	255,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	258,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	261,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	264,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	268,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	271,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	272,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	277,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	278,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	282,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	285,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	289,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	292,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	295,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	298,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	302,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	305,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	308,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	311,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	314,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	317,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	320,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	323,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	327,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	328,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	332,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	333,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	337,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	338,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	342,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	343,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	348,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	349,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	353,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	357,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	358,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	362,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	363,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	368,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	369,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	374,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	375,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	379,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	380,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	385,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	386,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	391,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	392,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	396,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	397,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	401,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	402,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	406,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	407,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	411,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	412,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	416,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	417,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	487,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	490,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	494,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	497,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	501,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	504,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	507,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	510,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	514,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	517,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	520,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	523,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	526,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	529,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	533,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	534,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	538,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	539,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	543,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	544,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	548,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	549,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	554,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	555,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	559,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	560,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	564,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	565,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	570,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	573,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	577,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	581,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	584,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	587,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	590,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	591,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	595,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	596,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	601,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	604,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	607,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	610,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	611,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	616,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	619,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	622,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	626,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	629,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	632,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	635,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	638,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	641,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	644,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	645,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	650,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	653,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	656,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	659,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	663,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	664,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	668,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	669,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	673,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	674,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	678,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	679,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	683,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	684,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	688,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	689,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	693,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	694,"/home/phillip/Z80/z88dk/lib/config/../..//include/_DEVELOPMENT/sccz80/math.h"
	C_LINE	35,"math16.h"
	C_LINE	33,"cosf16.c"
	C_LINE	35,"cosf16.c"
	C_LINE	36,"cosf16.c"
	C_LINE	38,"cosf16.c"
	SECTION	code_compiler

; Function cosf16 flags 0x00000288 __smallc __z88dk_fastcall 
; _Float16 half_tcosf16(_Float16 xx)
; parameter '_Float16 xx' at sp+2 size(2)
	C_LINE	39,"cosf16.c::cosf16::0::0"
.cosf16
	GLOBAL	_cosf16
._cosf16
	push	hl
	push	bc
	push	bc
	push	bc
	push	bc
	dec	sp
	pop	hl
	ld	l,1
	push	hl
	ld	hl,7	;const
	add	hl,sp
	ex	de,hl
	ld	hl,9	;const
	add	hl,sp
	ldi
	ldi
	ld	hl,7	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,0	;const
	call	l_f16_lt
	ld	a,h
	or	l
	jp	z,i_2	;
	ld	hl,7	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,h
	xor	128
	ld	h,a
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
.i_2
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,15639	;const
	call	l_f16_mul
	call	l_f16_f2sint
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,5	;const
	add	hl,sp
	push	hl
	ld	hl,3	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_f16_uint2f
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,1	;const
	add	hl,sp
	bit	0,(hl)
	jp	z,i_4	;
	ld	hl,1	;const
	add	hl,sp
	inc	(hl)
	ld	a,(hl)
	inc	hl
	jr	nz,ASMPC+3
	inc	(hl)
	ld	hl,5	;const
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,15360	;const
	call	l_f16_add
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
.i_4
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	a,(hl)
	and	7
	ld	l,a
	ld	h,0
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,1	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,3
	and	a
	sbc	hl,de
	jp	nc,i_5	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,(hl)	;l_gchar
	ld	l,a
	rla
	sbc	a
	ld	h,a
	ld	a,l		;l_neg
	cpl
	ld	l,a
	ld	a,h
	cpl
	ld	h,a
	inc	hl
	ld	a,l
	pop	de
	ld	(de),a
	ld	hl,1	;const
	add	hl,sp
	push	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl,-4
	add	hl,bc
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
.i_5
	ld	hl,1	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,1
	and	a
	sbc	hl,de
	jp	nc,i_6	;
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	a,(hl)
	neg
	pop	de
	ld	(de),a
.i_6
	ld	hl,7	;const
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,9	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,14920	;const
	call	l_f16_mul
	call	l_f16_sub
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,3	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_f16_mul
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,1
	and	a
	sbc	hl,de
	jp	z,i_9	;
	ld	hl,1	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	de,2
	and	a
	sbc	hl,de
	jp	nz,i_8	;
.i_9
	ld	hl,5	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,_f16_coeff_sin
	push	hl
	ld	hl,3	;const
	push	hl
	call	polyf16_callee
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_f16_mul
	push	hl
	ld	hl,11	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	call	l_f16_add
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
	jp	i_11	;EOS
.i_8
	ld	hl,5	;const
	add	hl,sp
	push	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	de
	ld	hl,_f16_coeff_cos
	push	hl
	ld	hl,4	;const
	push	hl
	call	polyf16_callee
	push	hl
	ld	hl,7	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,-1
	call	l_f16_ldexp
	call	l_f16_sub
	push	hl
	ld	hl,15360	;const
	call	l_f16_add
	pop	de
	ex	de,hl	;l_pint
	ld	(hl),e
	inc	hl
	ld	(hl),d
 	ex	de,hl
.i_11
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	rla
	jp	nc,i_13	;
	ld	hl,5	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,h
	xor	128
	ld	h,a
	jp	i_14	;
.i_13
	ld	hl,5	;const
	add	hl,sp
	ld	a,(hl)	;l_gint
	inc	hl
	ld	h,(hl)
	ld	l,a
.i_14
	exx
	ld	hl,11	;const
	add	hl,sp
	ld	sp,hl
	exx
	ret



; --- Start of Static Variables ---

	SECTION	bss_compiler
	SECTION	code_compiler


; --- Start of Scope Defns ---

	GLOBAL	acos
	GLOBAL	asin
	GLOBAL	atan
	GLOBAL	atan2
	GLOBAL	atan2_callee
	GLOBAL	cos
	GLOBAL	sin
	GLOBAL	tan
	GLOBAL	acosh
	GLOBAL	asinh
	GLOBAL	atanh
	GLOBAL	cosh
	GLOBAL	sinh
	GLOBAL	tanh
	GLOBAL	exp
	GLOBAL	exp2
	GLOBAL	expm1
	GLOBAL	frexp
	GLOBAL	frexp_callee
	GLOBAL	ilogb
	GLOBAL	ldexp
	GLOBAL	ldexp_callee
	GLOBAL	scalbn
	GLOBAL	scalbn_callee
	GLOBAL	scalbln
	GLOBAL	scalbln_callee
	GLOBAL	log
	GLOBAL	log10
	GLOBAL	log1p
	GLOBAL	log2
	GLOBAL	logb
	GLOBAL	fabs
	GLOBAL	hypot
	GLOBAL	hypot_callee
	GLOBAL	pow
	GLOBAL	pow_callee
	GLOBAL	sqrt
	GLOBAL	cbrt
	GLOBAL	erf
	GLOBAL	erfc
	GLOBAL	lgamma
	GLOBAL	tgamma
	GLOBAL	ceil
	GLOBAL	floor
	GLOBAL	nearbyint
	GLOBAL	rint
	GLOBAL	lrint
	GLOBAL	round
	GLOBAL	lround
	GLOBAL	trunc
	GLOBAL	modf
	GLOBAL	modf_callee
	GLOBAL	fmod
	GLOBAL	fmod_callee
	GLOBAL	remainder
	GLOBAL	remainder_callee
	GLOBAL	remquo
	GLOBAL	remquo_callee
	GLOBAL	copysign
	GLOBAL	copysign_callee
	GLOBAL	nan
	GLOBAL	nextafter
	GLOBAL	nextafter_callee
	GLOBAL	nexttoward
	GLOBAL	nexttoward_callee
	GLOBAL	fdim
	GLOBAL	fdim_callee
	GLOBAL	fmax
	GLOBAL	fmax_callee
	GLOBAL	fmin
	GLOBAL	fmin_callee
	GLOBAL	fma
	GLOBAL	fma_callee
	GLOBAL	isgreater
	GLOBAL	isgreater_callee
	GLOBAL	isgreaterequal
	GLOBAL	isgreaterequal_callee
	GLOBAL	isless
	GLOBAL	isless_callee
	GLOBAL	islessequal
	GLOBAL	islessequal_callee
	GLOBAL	islessgreater
	GLOBAL	islessgreater_callee
	GLOBAL	isunordered
	GLOBAL	isunordered_callee
	GLOBAL	f16_f48
	GLOBAL	f48_f16
	GLOBAL	f16_f32
	GLOBAL	f32_f16
	GLOBAL	i16_f16
	GLOBAL	u16_f16
	GLOBAL	i32_f16
	GLOBAL	u32_f16
	GLOBAL	f16_i8
	GLOBAL	f16_i16
	GLOBAL	f16_i32
	GLOBAL	f16_u8
	GLOBAL	f16_u16
	GLOBAL	f16_u32
	GLOBAL	addf16
	GLOBAL	addf16_callee
	GLOBAL	subf16
	GLOBAL	subf16_callee
	GLOBAL	mulf16
	GLOBAL	mulf16_callee
	GLOBAL	divf16
	GLOBAL	divf16_callee
	GLOBAL	fmaf16
	GLOBAL	fmaf16_callee
	GLOBAL	polyf16
	GLOBAL	polyf16_callee
	GLOBAL	hypotf16
	GLOBAL	hypotf16_callee
	GLOBAL	invf16
	GLOBAL	invsqrtf16
	GLOBAL	sqrtf16
	GLOBAL	div2f16
	GLOBAL	mul2f16
	GLOBAL	mul10f16
	GLOBAL	frexpf16
	GLOBAL	frexpf16_callee
	GLOBAL	ldexpf16
	GLOBAL	ldexpf16_callee
	GLOBAL	acosf16
	GLOBAL	asinf16
	GLOBAL	atanf16
	GLOBAL	atan2f16
	GLOBAL	atan2f16_callee
	GLOBAL	cosf16
	GLOBAL	sinf16
	GLOBAL	tanf16
	GLOBAL	expf16
	GLOBAL	exp2f16
	GLOBAL	exp10f16
	GLOBAL	logf16
	GLOBAL	log2f16
	GLOBAL	log10f16
	GLOBAL	powf16
	GLOBAL	powf16_callee
	GLOBAL	fabsf16
	GLOBAL	negf16
	GLOBAL	ceilf16
	GLOBAL	floorf16
	GLOBAL	isgreaterf16
	GLOBAL	isgreaterf16_callee
	GLOBAL	isgreaterequalf16
	GLOBAL	isgreaterequalf16_callee
	GLOBAL	islessf16
	GLOBAL	islessf16_callee
	GLOBAL	islessequalf16
	GLOBAL	islessequalf16_callee
	GLOBAL	islessgreaterf16
	GLOBAL	islessgreaterf16_callee
	GLOBAL	isnotequalf16
	GLOBAL	isnotequalf16_callee
	GLOBAL	isunorderedf16
	GLOBAL	isunorderedf16_callee
	GLOBAL	_f16_coeff_sin
	GLOBAL	_f16_coeff_cos


; --- End of Scope Defns ---


; --- End of Compilation ---

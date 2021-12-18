include(`z88dk.m4')

dnl############################################################
dnl##  RC2014_CRT_2.ASM.M4 - 8085 ACIA INDEPENDENT OF BASIC  ##
dnl############################################################
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;               RC2014 8085 standalone target               ;;
;;  generated by target/rc2014/startup/rc2014_crt_2.asm.m4   ;;
;;                                                           ;;
;;                  flat 64k address space                   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL SYMBOLS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "config_rc2014-8085_public.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CRT AND CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "../crt_defaults.inc"
include "../crt_defaults_8085.inc"
include "crt_config.inc"
include(`../crt_rules.inc')
include(`rc2014_rules.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLASSIC CRT AND CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; By default we want to have stdio working for us
IFNDEF CRT_ENABLE_STDIO
    defc CRT_ENABLE_STDIO = 1
ENDIF

PUBLIC  fgetc_cons
EXTERN  fgetc_cons_acia

    defc DEFINED_fgetc_cons = 1
    defc fgetc_cons = fgetc_cons_acia

PUBLIC  fputc_cons
EXTERN  fputc_cons_acia

    defc DEFINED_fputc_cons = 1
    defc fputc_cons = fputc_cons_acia

PUBLIC __CRT_KEY_DEL
IFDEF CRT_KEY_DEL
    defc __CRT_KEY_DEL = CRT_KEY_DEL
ELSE
    defc __CRT_KEY_DEL = 8
ENDIF

PUBLIC __CRT_KEY_CAPS_LOCK
IFDEF CRT_KEY_CAPS_LOCK
    defc __CRT_KEY_CAPS_LOCK  = CRT_KEY_CAPS_LOCK
ELSE
    defc __CRT_KEY_CAPS_LOCK = 6
ENDIF

; When using the firmware printer we may need to disable the soft
; cursor created by fgets_cons()
PUBLIC __CLIB_DISABLE_FGETS_CURSOR
IFDEF CLIB_DISABLE_FGETS_CURSOR
    defc __CLIB_DISABLE_FGETS_CURSOR = CLIB_DISABLE_FGETS_CURSOR
ELSE
    defc __CLIB_DISABLE_FGETS_CURSOR = 0
ENDIF

; Delay when entering fgetc_cons()
; 50ms stops rogue repeats nicely, but may need tuning
PUBLIC __CLIB_FGETC_CONS_DELAY
IFDEF CLIB_FGETC_CONS_DELAY
    defc __CLIB_FGETC_CONS_DELAY = CLIB_FGETC_CONS_DELAY
ELSE
    defc __CLIB_FGETC_CONS_DELAY = 50
ENDIF

; Delay when kbhit/getch() returns a cached key press
; Delaying slightly means that typing is possible
PUBLIC __CLIB_KBHIT_DELAY
IFDEF CLIB_KBHIT_DELAY
    defc __CLIB_KBHIT_DELAY = CLIB_KBHIT_DELAY
ELSE
    defc __CLIB_KBHIT_DELAY = 0
ENDIF

; If 32 bit floats are defined, then we need to indicate to the library
; that they are in use (mainly for printf/scanf)
PUBLIC CLIB_32BIT_FLOATS
IF !DEFINED_CLIB_32BIT_FLOATS
    defc CLIB_32BIT_FLOATS = 0
ENDIF
PUBLIC CLIB_64BIT_FLOATS
IF !DEFINED_CLIB_64BIT_FLOATS
    defc CLIB_64BIT_FLOATS = 0
ENDIF
   
; Maximum number of FILEs available
IF !DEFINED_CLIB_FOPEN_MAX
    defc    CLIB_FOPEN_MAX = 10
ENDIF

PUBLIC  __FOPEN_MAX
defc    __FOPEN_MAX = CLIB_FOPEN_MAX

; Maximum number of fds available
IF !DEFINED_CLIB_OPEN_MAX
    defc    CLIB_OPEN_MAX = CLIB_FOPEN_MAX
ENDIF

PUBLIC  __CLIB_OPEN_MAX
defc    __CLIB_OPEN_MAX = CLIB_OPEN_MAX

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SET UP MEMORY MAP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include(`crt_memory_map.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; STARTUP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SECTION CODE

PUBLIC __Start, __Exit
PUBLIC  cleanup                 ; jumped to by exit()

EXTERN _main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; USER PREAMBLE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

IF __crt_include_preamble

    include "crt_preamble.asm"
    SECTION CODE

ENDIF

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PAGE ZERO ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

IF (ASMPC = 0) && (__crt_org_code = 0)

   include "../crt_page_zero_8085.inc"

ENDIF

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CRT INIT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.__Start

    include "../crt_start_di.inc"
    include "../crt_save_sp.inc"

.__Restart

    include "../crt_init_sp.inc"

; Optional definition for auto MALLOC init
; it assumes we have free space between the end of
; the compiled program and the stack pointer

IF DEFINED_USING_amalloc

    EXTERN  __BSS_END_tail

    ld hl,__BSS_END_tail
    ld (_heap),hl

    include "../../../../../lib/crt/classic/crt_init_amalloc.asm"

ENDIF

   ; command line

IF (__crt_enable_commandline = 1) || (__crt_enable_commandline >= 3)

    include "../crt_cmdline_empty.inc"

ENDIF

.__Restart_2

IF __crt_enable_commandline >= 1

    push hl                     ; argv
    push bc                     ; argc

ENDIF

SECTION code_crt_init          ; user and library initialization

; The classic CRTs need some things setup, so do it

    SECTION code_crt_init

IF ( __crt_model = 1 )

    ; rom model + data section is not compressed

    EXTERN  __CODE_END_tail
    EXTERN  __DATA_head, __DATA_END_tail

    ld hl,__CODE_END_tail
    ld de,__DATA_head
    ld bc,__DATA_END_tail-__DATA_head

    EXTERN  asm_memcpy
    call asm_memcpy

ELIF ( __crt_model >= 2 )

    ; rom model + data section is compressed

    EXTERN  __CODE_END_tail
    EXTERN  __DATA_head, __DATA_END_tail

    ld hl,__CODE_END_tail
    ld de,__DATA_head
    ld bc,__DATA_END_tail-__DATA_head

    ld a,b
    or c

  IF ( __crt_model = 2)
    EXTERN  asm_dzx7_standard
    call NZ, asm_dzx7_standard
  ELIF ( __crt_model = 3)
    EXTERN  asm_dzx0_standard
    call NZ, asm_dzx0_standard
  ENDIF

ENDIF

IF __crt_initialize_bss = 1

    EXTERN  __BSS_head
    EXTERN  __BSS_UNINITIALIZED_head

    ld hl,__BSS_head
    ld bc,__BSS_UNINITIALIZED_head-__BSS_head-1

.init_bss_8085
    ld (hl),0
    inc hl
    dec bc
    jp NK,init_bss_8085
ENDIF

IF CRT_ENABLE_STDIO = 1
    ; Setup std* streams
    ld hl,__sgoioblk+2
    ld (hl),19                  ; stdin
    ld hl,__sgoioblk+12
    ld (hl),21                  ; stdout
    ld hl,__sgoioblk+22
    ld (hl),21                  ; stderr
ENDIF

    ; copy interrupt vector table to final location

    include "../crt_set_interrupt_mode.inc"

    ; initialise the ACIA

    EXTERN  aciaControl

    EXTERN  aciaRxCount
    EXTERN  aciaRxIn
    EXTERN  aciaRxOut

    EXTERN  aciaTxCount
    EXTERN  aciaTxIn
    EXTERN  aciaTxOut

    EXTERN  aciaRxBuffer
    EXTERN  aciaTxBuffer

    ld a,__IO_ACIA_CR_RESET     ; Master Reset the ACIA
    out (__IO_ACIA_CONTROL_REGISTER),a

    ld a,__IO_ACIA_CR_REI|__IO_ACIA_CR_TDI_RTS0|__IO_ACIA_CR_8N2|__IO_ACIA_CR_CLK_DIV_64
                                ; load the default ACIA configuration
                                ; 8n2 at 115200 baud
                                ; receive interrupt on R6.5 enabled
                                ; transmit interrupt on R6.5 disabled
    ld (aciaControl),a          ; write the ACIA control byte echo
    out (__IO_ACIA_CONTROL_REGISTER),a  ; output to the ACIA control

    ld hl,aciaRxBuffer          ; load Rx buffer pointer home
    ld (aciaRxIn),hl
    ld (aciaRxOut),hl

    ld hl,aciaTxBuffer          ; load Tx buffer pointer home
    ld (aciaTxIn),hl
    ld (aciaTxOut),hl

    xor a                       ; reset empties the Tx & Rx buffers
    ld (aciaRxCount),a          ; reset the Rx counter (set 0)
    ld (aciaTxCount),a          ; reset the Tx counter (set 0)

    ld a,$1D
    sim                         ; reset R7.5, set MSE and unmask R6.5

SECTION code_crt_init           ; user and library initialization

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; MAIN ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SECTION code_crt_main

    include "../crt_start_ei.inc"

    ; call user program

    call _main                  ; hl = return status

    ; run exit stack

IF __clib_exit_stack_size > 0

    EXTERN asm_exit
    jp asm_exit                 ; exit function jumps to __Exit

ENDIF

.cleanup
.__Exit

IF !((__crt_on_exit & 0x10000) && (__crt_on_exit & 0x8))

    ; not restarting

    push hl                     ; save return status

ENDIF

SECTION code_crt_exit           ; user and library cleanup
SECTION code_crt_return

    ; close files

    include "../clib_close.inc"

    ; terminate

    include "../crt_exit_eidi.inc"
    include "../crt_restore_sp.inc"
    include "../crt_program_exit.inc"

.l_dcal
    jp (hl)                     ; used for function pointer calls

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; RUNTIME VARS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    SECTION data_crt

include "../../../../../lib/crt/classic/crt_runtime_selection.asm" 

PUBLIC _8085_int65
EXTERN  acia_interrupt

defc _8085_int65 = acia_interrupt

include "../crt_jump_vectors_8085.inc"

    SECTION bss_crt

IF CRT_ENABLE_STDIO = 1

    PUBLIC  __sgoioblk
    PUBLIC  __sgoioblk_end
.__sgoioblk
    defs    CLIB_FOPEN_MAX * 10 ; stdio control block
.__sgoioblk_end                 ; end of stdio control block

ENDIF

    PUBLIC  exitsp
    PUBLIC  exitcount
.exitsp     defw    0           ; atexit() stack
.exitcount  defb    0           ; number of atexit() routines

IF DEFINED_USING_amalloc

    PUBLIC _heap
    ; The heap pointer will be wiped at startup,
    ; but first its value (based on __tail)
    ; will be kept for sbrk() to setup the malloc area
._heap
    defw 0                      ; initialised by code_crt_init - location of the last program byte
    defw 0

ENDIF

IF CLIB_BALLOC_TABLE_SIZE > 0

    ; create balloc table
    SECTION data_alloc_balloc
    PUBLIC __balloc_array
.__balloc_array
    defw __balloc_table

    SECTION bss_alloc_balloc
    PUBLIC __balloc_table
.__balloc_table
    defs CLIB_BALLOC_TABLE_SIZE * 2

ENDIF

IF (__crt_on_exit & 0x10000) && ((__crt_on_exit & 0x6) || ((__crt_on_exit & 0x8) && (__register_sp = -1)))

    SECTION BSS_UNINITIALIZED
    __sp_or_ret:  defw 0

ENDIF


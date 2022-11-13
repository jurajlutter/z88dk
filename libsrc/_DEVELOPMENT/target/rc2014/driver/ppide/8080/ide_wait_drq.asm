
SECTION code_driver

PUBLIC ide_wait_drq

IF __IO_CF_8_BIT = 1

EXTERN __IO_CF_IDE_ALT_STATUS

;------------------------------------------------------------------------------
; IDE internal subroutines 
;
; These routines talk to the drive, using the low level I/O.
; Normally a program should not call these directly.
;------------------------------------------------------------------------------

; Wait for the drive to be ready to transfer data.
; Returns the drive's status in A
; Uses AF, DE
; return carry on success

.ide_wait_drq
    in a,(__IO_CF_IDE_ALT_STATUS)
    ld e,a
    and 00100001b               ;test for ERR or WFT
    ret NZ                      ;return clear carry flag on failure

    ld a,e                      ;get status byte
    and 10001000b               ;mask off BuSY and DRQ bits
    xor 00001000b               ;wait for DRQ to be set and BuSY to be clear
    jp NZ,ide_wait_drq

    scf                         ;set carry flag on success
    ret

ELSE

EXTERN __IO_PIO_IDE_ALT_STATUS

EXTERN ide_read_byte

;------------------------------------------------------------------------------
; IDE internal subroutines 
;
; These routines talk to the drive, using the low level I/O.
; Normally a program should not call these directly.
;------------------------------------------------------------------------------

; Wait for the drive to be ready to transfer data.
; Returns the drive's status in A
; Uses AF, DE
; return carry on success

.ide_wait_drq
    ld d,__IO_PIO_IDE_ALT_STATUS;get IDE alt status register
    call ide_read_byte
    and 00100001b               ;test for ERR or WFT
    ret NZ                      ;return clear carry flag on failure

    ld a,e                      ;get byte from alternate ide_read_byte return
    and 10001000b               ;mask off BuSY and DRQ bits
    xor 00001000b               ;wait for DRQ to be set and BuSY to be clear
    jp NZ,ide_wait_drq

    scf                         ;set carry flag on success
    ret

ENDIF

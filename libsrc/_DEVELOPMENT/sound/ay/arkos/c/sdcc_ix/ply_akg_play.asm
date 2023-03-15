;;
;; C stubs for Arkos invocation from zcc
;;

section code_sound_ay

;; public C symbols, matching .h header file
PUBLIC ply_akg_play

;; external Arkos 2 entry points
EXTERN asm_smc_PLY_AKG_PLAY

;;
;; void ply_akg_play( void );
;;
ply_akg_play:
        push ix         ; preserve IX for sdcc_ix
        call asm_smc_PLY_AKG_PLAY
        pop ix
        ret

; SDCC bridge for Classic
IF __CLASSIC
PUBLIC _ply_akg_play
defc _ply_akg_play = ply_akg_play
ENDIF


SECTION data_driver

PUBLIC idestatus

;IDE Status byte
;set bit 0 : User selects master (0) or slave (1) drive
;bit 1 : Flag 0 = master not previously accessed 
;bit 2 : Flag 0 = slave not previously accessed
    
idestatus:  defb 0


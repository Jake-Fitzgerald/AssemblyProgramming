*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
        ORG    $1000
START:                  ; first instruction of program
 
    MOVE.L #SCORE, A1   ;
    *MOVE.L #0, D0
 
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0
    
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0 
 
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0
    
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0 
 
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0
    
    *MOVE.L (A1)+, D3
    *ADD.L D3, D0
 
    SIMHALT
* Put variables and constants here
 
SCORE   DC.L    1,  3,  5, 7,  9, 11    ; Stores blank offsets between each


* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

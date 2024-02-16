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
 
    MOVE.L #SCORE, A1   ; Puts score values with their empty 3 bit offsets (00 00 number 00) into A1
    MOVE.L #0, D0       ; Put literal 0 into D0 (for use later?)
 
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the first offset 00 to 01.
                        ; D3 now stores 01. 
    ADD.L D3, D0        ; D0 now stores 01.
    
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the second offset 01 to 03.
                        ; D0 stores 0 so 3 + 0 = 3.
    ADD.L D3, D0        ; D3 (3) + D0 (1) = 4.
 
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the third offset 03 to 05.
                        ; The 3 D3 stored is now replaced by 5.
    ADD.L D3, D0        ; D0 (4) + D3 (5) = 9.
    
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the fourth offset 05 to 07.
                        ; D3 (5) is replaced by 7.
    ADD.L D3, D0        ; D0 (9) + D3 (7) = 10? but should 16 , where does the 6 go?
                        ; Is it carried?
 
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the fifth offset 07 to 09.
                        ; D3 now stores 9.
    ADD.L D3, D0        ; D3(9) + D0 (10) = 19.
    
    MOVE.L (A1)+, D3    ; Add 1 bit to A1's pointer. It goes past the sixth offset 09 to 11 (B).
                        ; B in hex is 11.
    ADD.L D3, D0        ; D3 (11) + D0 (19) = 24? Why was only 5 added and the rest carried?
 
    SIMHALT
* Put variables and constants here
 
SCORE   DC.L    1,  3,  5, 7,  9, 11    ; Stores blank offsets between each


* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

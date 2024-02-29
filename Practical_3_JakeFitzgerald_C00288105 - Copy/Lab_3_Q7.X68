*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
*Notes
*-----------------------------------------------------------
* AND:
* This instruction will perform AND logical between the source operand and destination operand,
* the result is saved to the destination operand.
*-----------------------------------------------------------

    MOVE.B #100, $3000      ; Put byte decimal 100 (hex 64) into address 3000.
    
    MOVE.B #12, D2          ; Put byte decimal 12 (hex c) into address D2.
    MOVE.B #22, D3          ; Put byte decimal 22 (hex 16) into address D3.
    
    AND.B D2, D3            ; decimal 12 in binary = 1100.
                            ; decimal 22 in binary = 10110.
                            ; 1 AND 1 = 1.
                            ; 1 AND 0 = 0.
                            ; 0 AND 1 = 0.
                            ; 0 AND 1 = 0. (WE DON'T DO THIS NEXT SINCE IT'S A BYTE)
                            ; Answer = 100 (decimal 4).
                            
    
    LEA $3000, A1           ; Put address 3000 into A1. (hex 64 is stored)
    
    SUB.B #20, (A1)         ; Take deciaml 20 (hex 14) from A1's pointer. 
                            ; 14 - 64 = 50. Hex 50 is now stored in 3000.
 
    ADD.B #10, (A1)         ; Add decimal 10 (hex A) to A1's pointer.
                            ; 10 + 50 = 5A. (NOT 60 SINCE WE COUNT IN 16 NOT 10!).


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

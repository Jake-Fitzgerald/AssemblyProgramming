*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------


    ORG    $1000
START:

    LEA MESSAGE,A1      ; Print out the string 'Hello Assembly' in console window.
    
    MOVE.B #14,D0       ; Put literal 14 into D0. D0 contains hex 14 (E).
    TRAP #15            ; Trap 15 allows for input/output.

    SIMHALT
    
MESSAGE DC.B 'Hello Assembly',0

    END    START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

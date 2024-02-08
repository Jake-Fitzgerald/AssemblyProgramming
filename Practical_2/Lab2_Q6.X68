*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA $5000, A1       ; Put 5000 hex into address A1.
    MOVE.L #10203040, (A1)+    ; Long literal which is 4 bits is
                               ; added to address A1's pointer value.
                               ; A1's pointer is 5004.
    MOVE.W #1020, (A1)+        ; Word literal which is 2 bits is
                               ; added to address A1's pointer value. 
                               ; A1's pointer is 5006.
    MOVE.B #10, (A1)+          ; Byte literal which is 1 bit is
                               ; added to address A1's pointer value. 
                               ; A1's pointer is 5007.


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

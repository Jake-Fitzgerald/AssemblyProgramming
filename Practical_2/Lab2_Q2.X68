*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA $3000, A1       ; Put 3000 into address A1
    MOVE.L 100, A1      ; Decimal 100 put into A1, A1 is now full of FF.
                        ; Address 100 is full of FF in every offset
    SUB.B #1, (A1)      ; Should take decimal 1 from A1's pointer value,
                        ; however A1 still remains FF. 


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

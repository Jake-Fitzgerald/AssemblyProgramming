*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA $5100, A1       ; Put hex 5100 into address A1.
    MOVE.L #$12345678, -(A1)    ; Subtract longword (4 bits) from A1's pointer value.
                                ; A1 now stores 50FC (50 15 12).
    MOVE.W #$1020, -(A1)        ; Subtract word (2 bits) from A1's pointer value.
                                ; A1 now stores 50FA (50 15 10).
    MOVE.B #$10, -(A1)          ; Subtract byte (1 bit) from A1's pointer value.
                                ; A1 now stores 50F9 (50 15 09).



    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

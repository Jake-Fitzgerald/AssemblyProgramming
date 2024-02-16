*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

     MOVE.B  X, Y       ; The first offset byte of address 2000 is now hex 10.

; Origin in memory changed to 2000
    ORG $2000               
X   dc.b 10             ; Hex A is 10
Y   ds.b 1      


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

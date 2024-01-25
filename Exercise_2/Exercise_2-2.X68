*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
                            * EXG = Exchange Registries
                            * CLR =  ?

    MOVE.W  #$0080, D0      * Move number 0080 into D0
    MOVE.W  D0, $00000040   * Now move the address D0 to new registry
    MOVE.W  D0, D1          * 0080 in D0 goes into D1
    ADD.W   D0, D1          * Add D0 and D1 & put the result in D1 (00000100)
    SUB.W   $00000040, D1   * Take registry from D1 & put the result in D1 (00000080)
    SWAP    D1              * 00800000 ? Reverses the number
    MOVE.W  D0, D1          * 00800000 + 00000080 = 00800080 
    MOVE.L  #$00000040, A4  * Move 00000040 into address A4 
    ADD.W   (A4), D1        * 00000040 (A4) + 00800080 = 00800100
    MOVE.W  D1, (A4)        * Invalid? A4 remains same value 00000040
    EXG.L   D1, D0          * D0 is 00800100, D1 is 00000080
    SWAP    D0              * 00000004
    CLR.W   D0              * 01000000

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

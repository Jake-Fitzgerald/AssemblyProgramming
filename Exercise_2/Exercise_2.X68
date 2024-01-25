*-----------------------------------------------------------
* Title      : 
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
                            * .B = Bytes
                            * .L = Long
                            * .W = Wide (32bit)

    MOVE.L #%100, D0        * Move register (%) 100 into address D0
    MOVE.L #$100, D1        * Move constant literal 100 into address D1
    MOVE.L #100,  D2        * Move 100 (64) into address D2
    
    MOVE.L D0,    $3000     * Move address value D0 to address registry
    MOVE.L D1,    $3010     * Move address value D1 to address registry
    MOVE.L D2,    $3020     * Move address value D2 to address registry

                            * .W means it is using 32bit
    MOVE.W #100,  $3020     * Move 100 into address $3020
    MOVE.W #$100, $3010     * Move value in address to address $3010 
    MOVE.W #%100, $3000     * Move register 100
    
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

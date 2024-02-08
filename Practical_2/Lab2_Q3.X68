*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
* dc = define constant
* ds = define storage

    MOVE.B  X,D0	    ; D0 stores 0000000A.  
    MOVE.B  D0,Y	    ; Copy D0 value (10) into Y.
    MOVE.B  Y, D1       ; D1 stores the same hex as D0.
                        ; This is because Y never initialised the byte.

X   dc.b 10         ;  allocate one byte and initialise it to 10
Y   ds.b 1          ;  allocate one byte but do not initialise it 
    


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

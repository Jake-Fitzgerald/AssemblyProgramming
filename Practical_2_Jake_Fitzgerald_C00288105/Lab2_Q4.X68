*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here


      MOVE.B  X,D0	    ; Put hex 10 (A) into D0.
      MOVE.B  D0,Y	    ; Copy D0 value (10) into Y.
      MOVE.B  Y, D1     ; D1 stores the same hex as D0.

X   dc.b 10  ;  
    ORG $2000           ; Even though the origin is changed to 2000.
                        ; The end results are the same as previous question.
                        ; But address 2000 now stores hex 10.
Y   ds.b 1   ;  


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

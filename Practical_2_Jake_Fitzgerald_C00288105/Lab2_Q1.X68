*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
   * Notes :
   * Frame is constant name
   
   * Question 1
   MOVE.W #FRAME3, D2       ; 18 is stored in D2.
   ADD.B #9,D2              ; 21 is stored in D2.
                            ; (3 added since 9 is 4 bytes but D2 can only get binary of 1 1 passed in).
 
* MUST BE NOT INDENTED
FRAME EQU 5                                                                                               
FRAME2 EQU FRAME+1         ; 5 + 1?                                                       
FRAME3 EQU FRAME2*4         ; 6 


    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

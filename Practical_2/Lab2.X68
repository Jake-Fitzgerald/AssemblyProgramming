*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    
   * Question 1
   MOVE.W #FRAME3, D2   ; Frame is constant on a number
   ADD.B #9,D2  
 
* MUST BE NOT INDENTED
FRAME EQU 5                                                                                               
FRAME2 EQU FRAME+1                                                                
FRAME3 EQU FRAME2*4         


    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

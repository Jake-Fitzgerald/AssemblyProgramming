*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    move    #3, d0     *task #3 in D0 ; Put decimal 3 into address D0.
    move.w  #100, d1   ; Put decimal 100 (hex 64) into D1.
    trap    #15        ; Input/Output, this will display string 100 on
                       ; the output window , since that was the previous 
                       ; instruction line.  


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

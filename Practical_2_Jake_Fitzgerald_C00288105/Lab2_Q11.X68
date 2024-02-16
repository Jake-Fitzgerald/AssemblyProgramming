*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
* Notes:

* MULU
* multiply a WORD of the destination operand by the WORD of the source operand.
* The result is saved in long-word in the destination operand

* MULS
* This is exactly the same as the MULU instruction (including syntax rules).
* Except of course, the source and destination are both treated as “signed”,
* instead of “unsigned”.  So numbers that are from 8000 to FFFF are negative.

    MOVE.W #$3, D0      ; Put literal 3 into address D0. D0 now stores 3.
    
    MOVE.L #$1020002, D1   ; Put literal 1020002 into D1.
    MULU D0, D1         ; Multiply D0 (3) by D1 (1020002) = 6? Should be 3060006.
                        ; However we are only mulitplying the word of D1 (0002).
                        ; So it's really (3) by (2) = 6.
 
    MOVE.W #$3, D0      ; Put literal 3 into D0 (3 replaces 3).
    MOVE.L #$1020002, D1 ; Replace 6 with literal 1020002.
    MULU.W D0, D1       ; D0 (3) by D1 (1020002) is 6,
                        ; since are only multiplying by word.
    
    MOVE.L #$0000FFC0, D4  # Negative from 8000 to FFFF ; here FFC0 is -0040
    MULS.W    #$0010,D4   # 10 x -400 = -0000 0400  check results in D4
                          ; D4 now stores FFFFFC00. Decimal is -1024.


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
*-----------------------------------------------------------
*Notes:
* DIVU
* This instruction will divide the long-word of the destination operand
* by the word of the source operand.  The result is split into the quotient,
* and the remainder.  The remainder is saved in the upper word of the
* destination operand, while the quotient is saved in the lower word of
* the destination operand.

* DIVS
* This is exactly the same as the DIVU instruction.
* Except the source and destination are both treated as “signed” instead
* of “unsigned”.  So this instruction can divide negative numbers
* as well as positive.

    MOVE.L #$9, D0          ; Put literal hex 9 into address D0.
    DIVU.W    #$0002, D0    ; 9 / 2 = 4.5,
                            ; In D0, the last byte is now 4 (quotient).
                            ; the first byte of the word is now 1 (remainder).
                            ; 0.5 rounded up to 1.
 
    MOVE.L #$FFFFFFF5, D1   ; Put literal hex FFFFFFF5 (decimal 4294967285) into address D0.
    DIVS.W    #$0002, D1  # check remainder and quotient. Result is FFFFFFFB (4294967291).
                            ; 4294967285 / 2 = 4294967291 ???


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

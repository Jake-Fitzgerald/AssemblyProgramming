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
* TST – TeST an operand
* The destination operand is compared with zero to get the CCR conditions.
* The destination operand remains unchanged.
* This is pretty much the same as cmpi.

    move.l  #$FF940F21, d0  ; Put hex FF940F21 into address D0.
    tst.w d0                ; Compare word 00 00 to 0F 21.
    beq LabelEq             ; If above line comparisons are equal then
                            ; call LabelEq.
    move d0, d1             ; Copies word of D0 into D1. (0F 21).

LabelEq:
    move d0,d3              ; Copies word of D0 into D3. (0F 21).



    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

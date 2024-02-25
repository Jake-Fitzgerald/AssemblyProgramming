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
* BEQ = Branch on EQual
* If the Z flag of the CCR is set, the destination operand will be added to the PC,
* and the 68k will continue reading at the new offset held in PC.
* If the Z flag is clear, the instruction is ignored.
* Acts like an if statement, if the instruction above it is true,
* then it will go to the label and execute that instruction.
* If it's false then it will simple go to the next line below it.



    move.l  #$0001AABB20, d0    ; Put hex 1AABB20 (decimal 27966240) into address D0.
    cmp.b   #$00, d0            ; Compare bytes 00 to 20. (00 from 20 = 0).
    beq.s   ValueIs20           ; Line above is true so ValueIs20 is called.                           
    move.b  d0, d1              ; This line is called AFTER the beq.s instruction. 
                                ; Copies the last byte in D0 to D1. (20)
 
ValueIs20:
    move.b  d0, d2              ; Copies last byte in D0 to D2. (20)


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

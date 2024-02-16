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
* GE = Name of a label - Kind of like a funcion we can call.
* cmp = compare
* cmp definition:
* The source operand is subtracted from the destination operand to get 
* the CCR conditions. The destination operand is not changed however.
* cmpi = compare immediate

* Example:
*  cmpi.w    #$0F20,d0
* 0F21 – 0F20 = 0001

* bge = jumps to that label.
*-----------------------------------------------------------

 move.l  #$00000492, d0     ; Put hex 492 into address D0.
    cmpi.w  #$0020,d0       ; Take hex 20 away from D0 (492).
    bge GE                  ; Jumps to label GE.
                            ;  Acts like calling a function.
                            
    move #$0000,d0          ; move by itself no byte, word or long.
                            ; Last word 00 00 D6 40 is moved into
                            ; address 000001010 from the ORG.
                            
GE:
    add d0,d3               ; Copy D0's value (492) into D3 address.
                            ; D3 now stores hex 492.



    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* cmpi = compare immediate
* Put program code here

    move.l  #$00000002, d0  ; Puts hex number 2 into address D0.
    cmpi.w  #$8001,d0   ; dec -32767. Take 8001 away from 00000002 (#$-7999),
                        ; Decimal of hex -7999 = -31129.
    bge GE
    move #$0000,d0     ; Memory at 1000 offset 09 was 02 D6 40.
                        ; After move word 0000 it became 06 30 3C,
                        ; and 02 D6 40 was moved two bytes.
GE:
    add d0,d3           ; Put D0 (00000002) into address D3.


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

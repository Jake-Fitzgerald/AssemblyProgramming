*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    MOVE.L #$FFFFFFFF, D0 ; x FFFFFFFF  D0 now stores FFFFFF
    MOVE.L #$1, D1 ; y 00000001 D1 now stoes 1.
    
    ADD.L D0, D1    ; D1 now contains no value. This is because FFFFF is,
                    ; the highest hex number and it's added to 1.
                    ; This makes the emulator either wrap around back to 0.
                    ; Or become overloaded and is reset to 0.
                    ; (However later on we can it really holds 1).
    
    MOVE.L #$0, D2  ; Put literal 0 into D2. D2 now stores 0.
    MOVE.L #$0, D3  ; Put literal 0 into D3. D3 now stores 0.

    ADDX D1, D3     ; D1 (1) + D3 (0) = 1.


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

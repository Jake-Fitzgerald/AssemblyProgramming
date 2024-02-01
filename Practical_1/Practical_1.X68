*-----------------------------------------------------------
* Title      : Practical 1
* Written by : Jake Fitzgerald
* Date       : 01/02/2024
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    * Question 1
    MOVE.B #9, D0       ; Move byte literal 9 decimal to memory address D0.
    ;MOVE.B D0, D1       ; Copy the data in memory address D0 to D1.
    ;MOVE.B D1, $1100    ; Move data in D1 (9) to offset register at hex 1100.
    ;MOVE.B $1100, D2    ; Move the data at $1100 (9) to memory address D2.
    ;MOVE.B $1100, 100   ; Move the data at $1100 (9) to address 64 (decimal 100 is hex 64.)
                        ; Address 60 + offset 4 = 64.
    ;MOVE.L #$F9AC0234,$5000     ; Move long-word literal hex number to offset $5000.   
    ;MOVE.L #$F9AC0234, 5000     ; Move the data to address 1388 (decimal 5000 is hex 1388).
                                ; Address 1380 + offset 08 = 1388.
    ;MOVE.W #0234,$5100  ; Move word literal 0234 to address at $5100.
                        ; Address $5100 stores 00 EA.
    ;MOVE.B #%101,$5200  ; Move byte literal binary to address at $5200.
                        ; We only move a byte so it's just 05 is stored at $5200.
    
    * Question 2
    LEA $2000, A2       ; (Load Effective Address) - Loads hex data 2000 into address register A2.
    MOVE.L #$3256FF01, (A2)     ; Move long-word literal hex into A2's pointer.
                                ; Address $2000 has 32 56 FF 01.
    MOVE.L (A2), D3     ; A2 now has a long hex value, we move that into memory register D3.
                        ; We copied a long-word so D3 is 3256FF01.
    MOVE.W (A2), D4     ; Now we move only a word from A2's pointer into memory register D4.
                        ; D4 now holds 00003256.
    MOVE.B (A2), D5     ; Move only a byte from A2's pointer into memory register D5.
                        ; D5 is now 00000032.
    MOVE.L #$123456, 24576      ; Move long-word literal hex number to offset 6000.
                                ; Address $6000 stores 00 12 34 56.
    LEA 24576, A3       ; hex 6000 is moved into address register A3.
                        ; A3 now holds 00006000.
    ;ADD.L #$22, (A3)    ; Add source literal hex 22 to A3's pointer, then store result in A3's pointer.
                        ; $ address 6000 (offset 3 so 6003) is now 00 12 34 78
                        ; ---> used to be 00 12 34 56 (56 + 22 = 78). 
  

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

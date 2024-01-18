*-----------------------------------------------------------
* Title      : Hello World
* Written by : Jake Fitzgerald
* Date       : 18/01/2024
* Description:
*-----------------------------------------------------------
    
START:  ORG    $1000             ; first instruction of program

* Put program code here

*----- Code -----
    LEA     MESSAGE,A1  *Loads message into address register at A1 (LEA - Load Effective Address)
    MOVE.B  #14,D0      *Moves the number 14 into data register D0 (Move byte)
    TRAP    #15         *Displays message
    
   MOVE.B  #9,D0
   TRAP    #15         *Halt simulator
   
                       *Carriage return means to return to the beginning of the current
                       * line without advancing downward.
                       *This means is will go to the left hand side of the our output window
                       *Like a dang' ol' typewrite mang'
                       
                       *LF (Line Feed) is a new line ---> same as '/n'
   
CR  EQU    $0D         *ASCII code for carriage return
LF  EQU    $0A         *ASCII code for Line Feed 
MESSAGE DC.B    'HELLO WORLD',CR,LF    *Place ASCII string in memory at MESSAGE
        DC.B    'This is another new line',CR,LF
        DC.B    'Wowzers!',CR,LF,CR,LF
        DC.B    'Skip one line',CR,LF
        DC.B    'Watch this brother',LF,' next line but no Carriage Return',CR,LF
        DC.B    'Last line has to have a zero to end it',CR,LF,0
   
* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

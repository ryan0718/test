
;=======================================

;advence

        ORG 0000H
        MOV A,#0FFH
        MOV A,P1
AGAIN:  MOV R0,#9
        MOV DPTR,# 300H

LOOP:   CLR A
        MOVC A,@A+DPTR
        MOV P0,A
		INC DPTR
        CALL DELAY
        DJNZ R0,LOOP
        JMP AGAIN


        ORG 300H
SEVEN:  DB 10111111B	 ;-
        DB 11000000B    ;0
	    DB 10000010B    ;6
	    DB 11111001B    ;1
	    DB 11111001B    ;1
	    DB 10110000B    ;3
	    DB 10100100B	;2
	    DB 11011000B    ;7
        DB 10111111B	;-






DELAY:    MOV R5,#0FFH
          MOV R5,P1 
DELAY1:   MOV R6,#0BFH 
DELAY2:   MOV R7,#011H 
DELAY3:   DJNZ R7,DELAY3 
          DJNZ R6,DELAY2 
	      DJNZ R5,DELAY1 
		  RET 
END

; Write a program to divide unsigned value ABh (171d) 
;by 0Ah (10d). Then save the quotient to the memory 
;address 0100:0500h, and remainder to the memory address 
;0100:0502h.

MOV AX,0ABh
MOV BL,0Ah

DIV BL      ; IDIV for signed values

MOV [500h],AL
MOV [502H],AH

RET 

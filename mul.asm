;  Write a program that multiply unsigned values FEh 
;(254d) and 10h (16d) and saves the result to the
;memory address 0100:0400h.

MOV AL,0FEh
MOV BL,10h
MUL BL      ;IMUL for signed values

MOV [400h],AX

RET 

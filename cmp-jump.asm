;  Write a program that analysis 0100:1000h memory 
;address. If value of 0100:1000h is equals to C2h 
;write FFh value to 0100:1100h memory address. If 
;the value is not equals to C2h then write AAh to 
;0100:1100h memory address.    

MOV AX,0100h
MOV DS,AX

MOV byte ptr[1000h],0ABh

CMP byte ptr[1000h],0C2h
JE equal
MOV byte ptr[1100h],0AAh
JMP finish
equal:
MOV byte ptr[1100h],0FFh
finish:

RET 
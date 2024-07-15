;  Write a program that stores value of BCDEh between 
;0100:0300h and 0100:03FFh memory addresses. 


MOV AX,0100h
MOV ES,AX
MOV DI,0300h

MOV AX,0BCDEh
MOV CX,128
REP STOSW  

RET
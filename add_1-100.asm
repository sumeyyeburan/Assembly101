;  Write a program that calculates the sum of the 
;numbers from 1 to 100 and saves to the
;memory address 0100:1000h. 

MOV AX,00
MOV CX,100

lp:    
ADD AX,CX     
LOOP lp  

MOV BX,0100h
MOV DS,BX
MOV [1000h],AX

RET 
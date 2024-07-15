;  Write a program that calculates first 24 Fibonacci numbers and stores
;numbers in descending order in memory starting at 2000H.   

MOV DI,2000h

MOV AX,1
MOV BX,1
PUSH AX
PUSH BX

MOV CX,22 

fib:
ADD AX,BX
PUSH AX
MOV DX,AX
MOV AX,BX
MOV BX,DX
LOOP fib 

MOV CX,24

fib2:    
POP AX  
STOSW
LOOP fib2

RET 
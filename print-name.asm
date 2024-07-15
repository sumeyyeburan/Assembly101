; Write a program that writes your name to the screen.   

MOV AX,0100h
MOV DS,AX

LEA BX,characters

MOV AH,0Eh

print:

MOV AL,[BX]
CMP AL,0
JE finish
INT 10h
INC BX

JMP print

finish:
MOV AH,4Ch
INT 21h

characters DB 'Sumeyye Buran',0
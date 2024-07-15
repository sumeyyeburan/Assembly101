;  Use the code above and write a lowercase print procedure 
;(prints out every character in lowercase)

MOV AX,0100h
MOV DS,AX

LEA BX,characters

CALL lowercase_letters

MOV AH,4Ch
INT 21h

lowercase_letters PROC
    MOV AH,0Eh
    
    loop1:
    MOV AL,[BX]
    CMP AL,0
    JE finish
    CMP AL,65
    JB print
    CMP AL,90
    JA print
    ADD AL,32
    print:
    INT 10h
    INC BX
    JMP loop1
    
    finish:
lowercase_letters ENDP 

characters DB 'Sumeyye Buran',0
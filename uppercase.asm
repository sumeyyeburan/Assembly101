;   Use the code above and write an uppercase print procedure 
;(prints out every character in uppercase)  

MOV AX,0100h
MOV DS,AX

LEA BX,characters

CALL capital_letters

MOV AH,4Ch
INT 21h

capital_letters PROC
    MOV AH,0Eh
    
    loop1:   
    MOV AL,[BX]
    CMP AL,0
    JE finish
    CMP AL,97
    JB print
    CMP AL,122
    JA print
    SUB AL,32
    print:
    INT 10h
    INC BX
    JMP loop1
    
    finish:
capital_letters ENDP

characters DB 'Sumeyye Buran',0
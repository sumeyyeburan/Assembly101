;  add 98h value written on 0100:0500h memory
;address with 52h value written on 0100:0501h 
;memory address, than write the result to
;0100:0502h memory address.  

MOV AX,100h
MOV DS,AX

MOV [0500h],98h
MOV [0501h],52h

MOV AX,00

MOV AX,[0500h]
ADD AX,[0501h]

MOV [0502h],AX

RET 

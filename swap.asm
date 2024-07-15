; Swap the values of CL and DL registers


MOV CL,5
MOV DL,3

MOV AL,CL
MOV CL,DL
MOV DL,CL

RET


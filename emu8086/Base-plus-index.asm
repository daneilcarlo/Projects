.model small
.stack
.data
.code

;Base-plus-index

MOV AX,@DATA
MOV DS,AX

MOV CX,0000H

MOV BX,1000h
MOV DI,01H  
MOV [BX+DI],0EF01H
MOV CL,[BX+DI]
MOV CX,[BX+DI]

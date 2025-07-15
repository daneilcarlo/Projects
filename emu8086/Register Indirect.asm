.model small
.stack
.data
.code

;Register Indirect

MOV AX,@data
MOV DS, AX

MOV CX,0000H   

MOV BX,1000H
MOV [BX],0ABCDH   
MOV CL,[BX]
MOV DX,[BX]

.model small
.stack
.data
.code

;Direct Addressing

MOV AX,@DATA
mov DS,AX     

mov BX,1234h
mov CX,0h
mov [1000h], BX
mov CX,[1000h]
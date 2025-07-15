.model small
.stack
.data
.code

;Register relative

mov bx,1000h
mov [bx+01Ah],0ABCDh
mov CX,[BX+01Ah]
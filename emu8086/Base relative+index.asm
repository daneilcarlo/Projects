;base relative+index   

.model small

.data
array db 1,2,3,4

.code
mov ax,@data

mov ds,ax

mov dl,01h
mov bx,offset array

mov cx,04h
mov si,00h

loop1:
    mov array[bx+si],dl
    inc si
    loop loop1


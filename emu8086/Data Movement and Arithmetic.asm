;Activity 4

;Push and Pop   

;.MODEL SMALL
;.STACK 100H
;.DATA
;.CODE   
;
;MOV AX, @DATA
;MOV DS, AX
;mov ax,1234h
;mov bx,5678h
;push ax
;push bx
;pop cx
;pop dx

  
  
  
  
;LEA  

;.model small
;.data
;var1 db '12345', 13, 10, '$'
;var2 db '67890', 13, 10, '$'
;.code   
;
;MOV AX, @DATA
;MOV DS, AX ; init DS
;LEA SI, var1 ; offset of var1
;LEA DI, var2; offset of var2
;MOV DI,OFFSET var2 ;         
;
;mov DI, 1000h
;mov [DI], 1234H
;LEA BX, [DI]         
  
  
  
  
 
;LODSB and STOSB W/ CLD 

;.model small
;.data
;
;string1 db 'ABCDE', 13, 10, '$'
;string2 db '12345', 13, 10, '$'
;
;.code
;
;MOV AX, @DATA
;MOV ES, AX ; initialize ES
;MOV DS, AX
;LEA SI, string1
;LEA DI, string2
;CLD ; read from location 0
;MOV AX, 0000H
;MOV CX, 5 ; counter
;ulit:
;    lodsb ; AL = DS:[SI]
;    inc al
;    stosb ; ES:[DI] = AL
;    loop ulit
     
     
     
        
     
;LODSB and STOSB w/ STD

;.model small
;.data

;string1 db 'ABCDE'
;string2 db '12345'
;
;.code
;MOV AX, @DATA
;MOV ES, AX ; initialize ES
;MOV DS, AX
;LEA SI, string1+04h
;LEA DI, string2+04h
;
;STD ; read string from end to start
;MOV AX, 0000H
;MOV CX, 5
;ulit:
;    lodsb ; AL = DS:[SI]
;    inc al
;    stosb ; ES:[DI] = AL
;    loop ulit  
  
   
   
  
  
;MOVSB

;.model small
;.data
;
;var1 db '12345'
;var2 db 3 dup(0)
;
;.code
;
;MOV AX, @DATA
;MOV DS, AX ; init DS
;MOV ES, AX ; init ES
;
;LEA SI, var1 ; source
;LEA DI, var2 ; destination
;CLD ; DF = 0
;MOVSB
;MOVSB
;MOVSB
      
      
      
      
      
;MOVSB /w REP

;.model small
;.data
;
;var1 db '12345'
;var2 db 3 dup(0)
;
;.code
;
;MOV AX, @DATA
;MOV DS, AX
;MOV ES, AX
;
;LEA SI, var1
;LEA DI, var2
;
;CLD
;MOV CX, 3; set counter for rep
;rep MOVSB      





;addition

;mov ax, 1234h
;mov bx, 0ABCDh
;add ax,bx    





;subtraction

;mov ax, 1234h
;mov bx, 0ABCDh
;sub bx, ax 





;increment

;mov ax, 1234h
;inc ax           





;decrement
;mov ax, 1234h
;dec ax
 
 
 
 
 
;multiply by 8-bit

;mov al, 20h
;mov ah, 10h
;mul ah



      
      
;multiply by 16-bit 

;mov ax, 0ABCDh
;mov bx, 100h
;mul bx
  
  
  
  
  
;division by 8-bit    

;mov al, 12h
;mov bl, 10h
;div bl  





;division by 16-bit

;mov ax, 1234h
;mov bx, 100h
;div bx
  
  
  
  
  
;add w/ carry

;stc
;mov ax, 1234h
;mov bx, 0ABCDh
;adc ax, bx   





;sub w/ borrow

;stc
;mov ax, 1234h
;mov bx, 0ABCDh
;sbb bx, ax





;and 

;mov ax, 1234h
;mov bx, 0ABCDh
;and ax, bx





;or

;mov ax, 1234h
;mov bx, 0ABCDh
;or ax, bx    





;xor

;mov ax, 1234h
;mov bx, 0ABCDh
;xor ax, bx  





;not

;mov ax, 1234h
;not ax      





;neg
;mov ax, 1234h
;neg ax  





;.model small
;.data
;
;hello db 'The sum of the numbers is', 10, 13, '$'
;num1 db '2345', 10, 13, '$'
;num2 db '5678', 10, 13, '$'
;sum db '    ', 10, 13, '$'
;.code
;
;mov ax, @DATA
;mov ds, ax
;
;mov si, 03h
;mov cx, 05h
;clc
;
;add_loop:
;    mov al, [num1+si]
;    adc al, [num2+si]
;    aaa
;    pushf
;    or al, 30h
;    popf
;    mov [sum+si], al
;    dec si
;    loop add_loop
;   
;mov ah, 09
;mov dx, offset hello
;int 21h
;
;mov ah, 09
;mov dx, offset sum
;int 21h















                      
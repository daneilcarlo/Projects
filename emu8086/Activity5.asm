;Activity 5


;SHL/SAL        
;mov ax, 8001h
;shl ax, 1
;sal ax, 1     
    
    

;SHL   
;mov ax, 8001h
;shr ax, 3 



;SAR
;stc                ; CF = 1
;mov ax, 8001h      ; 1000 0000 0000 0001 
;sar ax, 3 
                   ;shift 3 times:
                   ; 1100 0000 0000 0000 CF = 1
                   ; 1110 0000 0000 0000 CF = 0
                   ; 1111 0000 0000 0000 CF = 0

   

;ROL
;MOV AX, 0B800H
;rol ax, 3  



;RCL
;stc 
;mov ax, 0B800H    
;RCL ax, 3



;ROR
;mov ax, 0B800H
;ror ax, 3



;RCR
;STC
;mov ax, 0B800H
;rcr ax, 3



;Search and Compare String 

;SCASB
;.model small
;.data
;
;string1 DB 'ABCDEFGHI'
;string2 DB 'Found', '$'
;string3 DB 'Not Found', '$'
;
;.code
;
;mov ax, @data
;mov es, ax
;
;lea DI, string1
;mov cx, 9
;
;ulit:
;mov al, 'J'
;SCASB
;JE hey
;loop ulit
;
;hello:
;mov ax, @data
;mov ds, ax
;mov ah, 09
;mov dx, offset string3
;int 21h
;jmp exit
;
;hey:
;mov ax, @data
;mov ds, ax
;mov ah, 09
;mov dx, offset string2
;int 21h
;
;exit:
;mov ah, 04CH
;int 21h        



;CMPSB
.model small
.data       

string1 DB 'HELLO'
string2 DB 'HELLO', '$'
string3 DB 'SAME', '$'
string4 DB 'NOT THE SAME', '$'

.code
mov ax, @data
mov ds, ax
mov es, ax
lea si, string1
lea di, string2
cld
mov cx, 5
repe cmpsb

je hey

hello:
mov ax, @data
mov ds, ax
mov ah, 09
mov dx, offset string4
int 21h
jmp exit

hey:
mov ax, @data

mov ds, ax
mov ah, 09
mov dx, offset string3
int 21h

exit:
mov ah, 04Ch
int 21h


       
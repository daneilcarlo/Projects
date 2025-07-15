;jmp

;mov ax,1234h
;jmp hello
;mov bx, 4567h
;hello:
;    inc ax
;mov ah, 4ch
;int 21h



;JA and JB

;.MODEL SMALL
;.DATA
;STRING1 DB 'ABOVE ', '$'
;STRING2 DB 'BELOW ', '$'
;
;.CODE
;MOV AX, @DATA
;MOV DS, AX
;
;mov ax, 1234h
;mov bx, 4567h
;cmp ax, bx
;;cmp bx, ax
;ja HELLO
;jb HI
;
;HELLO:
;    MOV AH, 09
;    MOV DX, OFFSET STRING1
;    INT 21H
;    JMP EXIT
;
;HI:
;    MOV AH, 09
;    MOV DX, OFFSET STRING2
;    INT 21H
;
;EXIT:
;    MOV AH, 4CH
;    INT 21H


   
;JE / JNE
 
;.MODEL SMALL
;.DATA
;STRING1 DB 'EQUAL ', '$'
;STRING2 DB 'NOT EQUAL ', '$'
;
;.CODE
;MOV AX, @DATA
;MOV DS, AX
;
;mov ax, 1234h
;;mov bx, 1234h
;mov bx, 1235
;cmp ax, bx
;je HELLO
;jne HI
;
;HELLO:
;    MOV AH, 09
;    MOV DX, OFFSET STRING1
;    INT 21H
;    JMP EXIT
;
;HI:
;    MOV AH, 09
;    MOV DX, OFFSET STRING2
;    INT 21H
;
;EXIT:
;    MOV AH, 4CH
;    INT 21H


 
;JC / JNC

;.MODEL SMALL
;.DATA
;STRING1 DB 'WITH CARRY ', '$'
;STRING2 DB 'WITHOUT CARRY ', '$'
;
;.CODE
;MOV AX, @DATA
;MOV DS, AX
;
;;mov ax, 0FFFFh
;mov ax, 0FFFEh
;add ax, 01
;jc HELLO
;jnc HI
;
;HELLO:
;    MOV AH, 09
;    MOV DX, OFFSET STRING1
;    INT 21H
;    JMP EXIT
;
;HI:
;    MOV AH, 09
;    MOV DX, OFFSET STRING2
;    INT 21H
;
;EXIT:
;    MOV AH, 4CH
;    INT 21H
    
  

;loop   

;.model small
;.data
;var1 db 'hello world', 13, 10, '$'
;
;.code
;mov ax, @data
;mov ds, ax
;mov cx, 20
;mov ah, 09
;
;ult:
;    mov dx, offset var1
;    int 21h
;    loop ult
;
;mov ah, 4ch
;int 21h



;Double loop 1

;.model small
;.data
;var2 db '*', '$'
;var3 db ' ', 13, 10, '$'
;
;.code
;mov ax, @data
;mov ds, ax
;mov cx, 10
;mov bl, 1
;
;ulit:
;    mov ah, 09
;    mov dx, offset var2
;    int 21h
;
;    mov dx, offset var3
;    int 21h
;
;    inc bl
;    loop ulit
;
;mov ah, 4ch
;int 21h
;   
   
   
;Double loop 2
   
;.model small
;.data
;var1 db '*','$'
;var2 db ' ',13,10,'$'
;.code
;mov ax, @data
;mov ds, ax
;mov cx, 10
;
;ulit2:
;push cx
;
;mov cl, 5
;ulit:
;    mov ah, 09h
;    mov dx, offset var1
;    int 21h
;    loop ulit
;
;mov ah, 09h
;mov dx, offset var2
;int 21h
;
;pop cx
;loop ulit2
;
;mov ah, 4ch
;int 21h
          
          
          
;Double loop 3
          
;.model small
;.data
;var1 db '*','$'
;var2 db ' ',10,13,'$'
;.code
;mov ax, @data
;mov ds, ax
;mov cl, 3
;mov bl, 1h
;mov bh, 0
;
;ulit2:
;    mov bh, cl
;    mov cl, bl
;
;ulit:
;    mov ah, 09h
;    mov dx, offset var1
;    int 21h
;    loop ulit
;
;    inc bl
;    mov ah, 09h
;    mov dx, offset var2
;    int 21h
;    mov cl, bh
;    loop ulit2
;
;mov ah, 4ch
;int 21h



;double loop w/ push and pop

;.model small
;.data
;var1 db '*', ' $'
;var2 db ' ', 10,13,'$'
;.code
;mov ax, @data
;mov ds, ax
;mov cx, 3
;mov bx, 1
;
;ulit2:
;    push cx
;    push bx
;    pop cx
;
;ulit:
;    mov ah, 09h
;    mov dx, offset var1
;    int 21h
;    loop ulit
;    inc bx
;
;    mov ah, 09h
;    mov dx, offset var2
;    int 21h
;
;    pop cx
;    loop ulit2
;
;mov ah, 4ch
;int 21h



;ewan

;.model small
;.data
;num1 db 1
;num2 db 5
;num3 db 2
;lar db '0',13,10,'$'
;.code
;
;start:
;    mov ax, @data
;    mov ds, ax
;
;    mov al, [num1]     ; save num1 sa al
;    mov bl, [num2]     ; save num2 sa bl
;    mov cl, [num3]     ; save num3 sa cl
;
;    cmp al, bl         ; compare 1 and 2
;    jg checkthird      ; jump para compare naman first and third
;    jmp checksecond    ; jump para compare naman sa second and third
;
;checksecond:
;    cmp bl, cl         ; compare 2 and 3
;    jg secondlargest   ; jump para print second as largest
;    jmp thirdlargest   ; jump para print third as largest
;
;checkthird:
;    cmp al, cl         ; compare 1 and 3
;    jg firstlargest    ; jump para print first as largest
;    jmp thirdlargest   ; jump pag mas maliit ung third
;
;firstlargest:
;    mov al, [num1]     ; save sa AL ung laman ng variable na num1
;    or al, 30h         ; use OR para maging ASCII
;    lea bx, lar        ; kukunin address ng variable na LAR at isave sa BX
;    mov [bx], al       ; isave sa memory location ng LAR ung value ng AL
;    jmp print
;
;secondlargest:
;    mov al, [num2]
;    or al, 30h
;    lea bx, lar
;    mov [bx], al
;    jmp print
;
;thirdlargest:
;    mov al, [num3]
;    or al, 30h
;    lea bx, lar
;    mov [bx], al
;    jmp print
;
;print:
;    mov ah, 09
;    mov dx, offset lar
;    int 21h
;
;    mov ah, 4ch
;    int 21h
          
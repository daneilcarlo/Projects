.model small        ; Specifies the memory model as "small" (code and data fit within 64KB each).
.data              ; Data segment begins.

var0 db 'Sobrang Latina',13,10,'$'       
var1 db 'Sobrang Latina talaga',13,10,'$'    
                   ; Define a string variable `var0` with text, 
                   ; followed by carriage return (13) and line feed (10) for new line.
                   ; `$` is used as a string terminator for DOS interrupt 21h function 09.

.code              ; Code segment begins.

start:            

mov ax,@data      ; Load the address of the data segment into AX.
mov ds,ax         ; Move AX into DS to initialize the data segment.

mov ah,09         ; Set AH to 09h, which is the DOS interrupt for printing a string.
mov dx,offset var0 ; Load the offset address of `var0` into DX.
int 21h           ; Call DOS interrupt 21h to display the string.
mov dx,offset var1 ; Load the offset address of `var0` into DX.
int 21h           ; Call DOS interrupt 21h to display the string.

mov ah,4Ch        ; Set AH to 4Ch, which is the DOS interrupt to terminate the program.
int 21h           ; Call DOS interrupt 21h to exit.

end start         ; Mark the end of the program, specifying the entry point `start`.

.model small
.stack 100h      
.data

header  DB        'Color-----1st------2nd------3rd------Multiplier------Tolerance',13,10,'$' 
r1      DB        'Black      0        0        0           1x                   ',13,10,'$'   
r2      DB        'Brown      1        1        1           10^1x           1%   ',13,10,'$' 
r3      DB        'Red        2        2        2           10^2x           2%   ',13,10,'$' 
r4      DB        'Orange     3        3        3           10^3x                ',13,10,'$' 
r5      DB        'Yellow     4        4        4           10^4x                ',13,10,'$' 
r6      DB        'Green      5        5        5           10^5x          0.5%  ',13,10,'$' 
r7      DB        'Blue       6        6        6           10^6x         0.25%  ',13,10,'$' 
r8      DB        'Violet     7        7        7                          0.1%  ',13,10,'$' 
r9      DB        'Grey       8        8        8                                ',13,10,'$'  
r10     DB        'White      9        9        9                                ',13,10,'$' 
r11     DB        'Gold                                     0.1x            5%   ',13,10,'$' 
r12     DB        'Silver                                   0.01x          10x   ',13,10,'$' 


.code
start:  

    ; background
    mov ah, 06h
    mov al, 0
    mov bh, 00h
    mov ch, 0
    mov cl, 0
    mov dh, 22    ; 24 - 2
    mov dl, 79
    int 10h 
                               
    ; resistor
    mov ah, 06h
    mov bh, 070h
    mov ch, 5    ; 7 - 2
    mov cl, 1
    mov dh, 24   ; 24 - 2
    mov dl, 1
    int 10h
    
    mov ah, 06h
    mov bh, 0FFh
    mov ch, 5
    mov cl, 2
    mov dh, 24
    mov dl, 2
    int 10h  
    
    mov ah, 06h
    mov bh, 0FFh
    mov ch, 5
    mov cl, 2
    mov dh, 5
    mov dl, 78
    int 10h            
    
    mov ah, 06h
    mov bh, 070h
    mov ch, 6
    mov cl, 3
    mov dh, 6
    mov dl, 77
    int 10h 
       
    mov ah, 06h
    mov bh, 0FFh
    mov ch, 6
    mov cl, 78
    mov dh, 24
    mov dl, 78
    int 10h   
    
    mov ah, 06h
    mov bh, 070h
    mov ch, 7
    mov cl, 77
    mov dh, 24
    mov dl, 77
    int 10h
    
    mov ah, 06h
    mov bh, 097h
    mov ch, 3
    mov cl, 26
    mov dh, 8
    mov dl, 53
    int 10h                               
                               
    mov ah, 06h
    mov bh, 97h
    mov ch, 5
    mov cl, 25
    mov dh, 6
    mov dl, 54
    int 10h      
    
    mov ah, 06h
    mov bh, 97h
    mov ch, 2
    mov cl, 27
    mov dh, 9
    mov dl, 32
    int 10h
    
    mov ah, 06h
    mov bh, 97h
    mov ch, 1
    mov cl, 28
    mov dh, 10
    mov dl, 31
    int 10h  
    
    mov ah, 06h
    mov bh, 97h
    mov ch, 2
    mov cl, 47
    mov dh, 9
    mov dl, 52
    int 10h
    
    mov ah, 06h
    mov bh, 97h
    mov ch, 1
    mov cl, 48
    mov dh, 10
    mov dl, 51
    int 10h    
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 6
    mov cl, 25
    mov dh, 6
    mov dl, 25
    int 10h      
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 6
    mov cl, 26
    mov dh, 8
    mov dl, 26
    int 10h  
                                               
    mov ah, 06h
    mov bh, 10h
    mov ch, 8
    mov cl, 27
    mov dh, 9
    mov dl, 27
    int 10h  
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 9
    mov cl, 28
    mov dh, 10
    mov dl, 28
    int 10h 
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 10
    mov cl, 29
    mov dh, 10
    mov dl, 29
    int 10h    
    
    mov ah, 06h
    mov bh, 0EFh
    mov ch, 1
    mov cl, 30
    mov dh, 9
    mov dl, 31
    int 10h        
    
    mov ah, 06h
    mov bh, 068h
    mov ch, 10
    mov cl, 30
    mov dh, 10
    mov dl, 31
    int 10h     
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 8
    mov cl, 33
    mov dh, 8
    mov dl, 33
    int 10h      
    
    mov ah, 06h
    mov bh, 0CFh
    mov ch, 3
    mov cl, 34
    mov dh, 7
    mov dl, 35
    int 10h          
    
    mov ah, 06h
    mov bh, 044h
    mov ch, 8
    mov cl, 34
    mov dh, 8
    mov dl, 35
    int 10h   
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 8
    mov cl, 36
    mov dh, 8
    mov dl, 37
    int 10h 
    
    mov ah, 06h
    mov bh, 0AFh
    mov ch, 3
    mov cl, 38
    mov dh, 7
    mov dl, 39
    int 10h      
    
    mov ah, 06h
    mov bh, 022h
    mov ch, 8
    mov cl, 38
    mov dh, 8
    mov dl, 39
    int 10h  
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 8
    mov cl, 40
    mov dh, 8
    mov dl, 43
    int 10h                        
                                                
    mov ah, 06h
    mov bh, 0DFh
    mov ch, 3
    mov cl, 44
    mov dh, 7
    mov dl, 45
    int 10h  
    
    mov ah, 06h
    mov bh, 055h
    mov ch, 8
    mov cl, 44
    mov dh, 8
    mov dl, 45
    int 10h   
    
    mov ah, 06h
    mov bh, 070h
    mov ch, 1
    mov cl, 48
    mov dh, 9
    mov dl, 49
    int 10h 
    
    mov ah, 06h
    mov bh, 080h
    mov ch, 10
    mov cl, 48
    mov dh, 10
    mov dl, 49
    int 10h  
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 10
    mov cl, 50
    mov dh, 10
    mov dl, 51
    int 10h        
    
    mov ah, 06h
    mov bh, 10h
    mov ch, 6
    mov cl, 54
    mov dh, 6
    mov dl, 54
    int 10h             
    
    mov ah, 06h
    mov bh, 070h
    mov ch, 12
    mov cl, 4
    mov dh, 24
    mov dl, 75
    int 10h       
    
    
    mov ax,@data 
    mov ds,ax   

    ; header
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 12  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset header 
    int 21h       
    
    ;rows
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 13  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r1 
    int 21h                   
    
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 14  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r2 
    int 21h                   
             
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 15  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r3 
    int 21h                   
                    
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 16  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r4 
    int 21h                   
                               
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 17  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r5 
    int 21h                   
                               
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 18           ;
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r6 
    int 21h                   
                               
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 19         ;
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r7 
    int 21h                   
                               
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 20            ;
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r8 
    int 21h          
    
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 21  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r9 
    int 21h                   
                      
    mov ah, 02h 
    mov bh, 00h 
    mov dh, 22  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r10 
    int 21h                   

    mov ah, 02h 
    mov bh, 00h 
    mov dh, 23  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r11 
    int 21h                   


    mov ah, 02h 
    mov bh, 00h 
    mov dh, 24  
    mov dl, 9
    int 10h 

    mov ah, 09h 
    mov dx, offset r12 
    int 21h                   
                          
                                                                          
    mov ah, 4ch
    int 21h

end start

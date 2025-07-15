.model small
.stack 100h      
.data

.code
start:  

    ; background
    mov ah, 06h
    mov al, 0
    mov bh, 0F0h
    mov ch, 0
    mov cl, 0
    mov dh, 24    
    mov dl, 79
    int 10h 
                               
    ; batman
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 3    
    mov cl, 25
    mov dh, 3  
    mov dl, 52
    int 10h     
 
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 4    
    mov cl, 22
    mov dh, 4  
    mov dl, 55
    int 10h  
    
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 4    
    mov cl, 25
    mov dh, 4  
    mov dl, 52
    int 10h        
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 5    
    mov cl, 21
    mov dh, 5  
    mov dl, 56
    int 10h   
    
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 5    
    mov cl, 22
    mov dh, 5  
    mov dl, 55  
    int 10h      
              
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 6    
    mov cl, 20
    mov dh, 6 
    mov dl, 57
    int 10h                   
                
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 6    
    mov cl, 21
    mov dh, 6  
    mov dl, 56  
    int 10h                  

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 7    
    mov cl, 19
    mov dh, 7
    mov dl, 58
    int 10h 
    
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 7    
    mov cl, 20
    mov dh, 7  
    mov dl, 57  
    int 10h                  

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 8    
    mov cl, 18
    mov dh, 8
    mov dl, 59
    int 10h
 
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 8    
    mov cl, 19
    mov dh, 8  
    mov dl, 58  
    int 10h      

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 9    
    mov cl, 17
    mov dh, 17
    mov dl, 60
    int 10h 

    mov ah, 06h
    mov bh, 0E0h
    mov ch, 9    
    mov cl, 18
    mov dh, 17  
    mov dl, 59  
    int 10h   
             
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 18    
    mov cl, 18
    mov dh, 18
    mov dl, 59
    int 10h   
    
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 18    
    mov cl, 19
    mov dh, 18  
    mov dl, 58  
    int 10h              

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 19    
    mov cl, 19
    mov dh, 19
    mov dl, 58
    int 10h 

    mov ah, 06h
    mov bh, 0E0h
    mov ch, 19    
    mov cl, 21
    mov dh, 19  
    mov dl, 56  
    int 10h   

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 20   
    mov cl, 21
    mov dh, 20
    mov dl, 56
    int 10h 

    mov ah, 06h
    mov bh, 0E0h
    mov ch, 20    
    mov cl, 23
    mov dh, 20  
    mov dl, 54  
    int 10h   
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 21   
    mov cl, 23
    mov dh, 21
    mov dl, 54
    int 10h   
    
    mov ah, 06h
    mov bh, 0E0h
    mov ch, 21    
    mov cl, 26
    mov dh, 21  
    mov dl, 51  
    int 10h  
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 22   
    mov cl, 26
    mov dh, 22
    mov dl, 51
    int 10h   
 
;bat         
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 11   
    mov cl, 20
    mov dh, 16
    mov dl, 57
    int 10h   

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 6   
    mov cl, 36
    mov dh, 17
    mov dl, 37
    int 10h  

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 6   
    mov cl, 40
    mov dh, 17
    mov dl, 41
    int 10h  
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 5   
    mov cl, 36
    mov dh, 5
    mov dl, 36
    int 10h
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 5   
    mov cl, 41
    mov dh, 5
    mov dl, 41
    int 10h  
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 7   
    mov cl, 38
    mov dh, 18
    mov dl, 39
    int 10h 
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 9   
    mov cl, 34
    mov dh, 10
    mov dl, 43
    int 10h  
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 10   
    mov cl, 33
    mov dh, 10
    mov dl, 44
    int 10h    
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 10   
    mov cl, 21
    mov dh, 17
    mov dl, 26
    int 10h                

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 10   
    mov cl, 51
    mov dh, 17
    mov dl, 56
    int 10h  
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 9   
    mov cl, 22
    mov dh, 10
    mov dl, 29
    int 10h 
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 9   
    mov cl, 48
    mov dh, 10
    mov dl, 55
    int 10h    
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 8   
    mov cl, 24
    mov dh, 19
    mov dl, 25
    int 10h    
             
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 8   
    mov cl, 52
    mov dh, 19
    mov dl, 53
    int 10h 
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 7   
    mov cl, 26
    mov dh, 8
    mov dl, 28
    int 10h      
     
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 7   
    mov cl, 49
    mov dh, 8
    mov dl, 51
    int 10h      

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 6   
    mov cl, 28
    mov dh, 6
    mov dl, 29
    int 10h  

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 6   
    mov cl, 48
    mov dh, 6
    mov dl, 49
    int 10h
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 10   
    mov cl, 30
    mov dh, 10
    mov dl, 30
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 10   
    mov cl, 47
    mov dh, 10
    mov dl, 47
    int 10h   
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 17   
    mov cl, 32
    mov dh, 17
    mov dl, 32
    int 10h         
    
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 17   
    mov cl, 45
    mov dh, 17
    mov dl, 45
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 18   
    mov cl, 23
    mov dh, 18
    mov dl, 23
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 18   
    mov cl, 54
    mov dh, 18
    mov dl, 54
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 19   
    mov cl, 26
    mov dh, 19
    mov dl, 26
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 19   
    mov cl, 51
    mov dh, 19
    mov dl, 51
    int 10h

    mov ah, 06h
    mov bh, 00Fh
    mov ch, 20   
    mov cl, 27
    mov dh, 20
    mov dl, 27
    int 10h
 
    mov ah, 06h
    mov bh, 00Fh
    mov ch, 20   
    mov cl, 50
    mov dh, 20
    mov dl, 50
    int 10h
                                            
end start

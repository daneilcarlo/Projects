.model small       
.data             
  
var1 db  '.---..-----------------------------------------------..---.',13,10,'$'                                                      
var2 db  '|   ||.---------------------------------------------.||   |',13,10,'$'                                                      
var3 db  '| o ||| Dragon Ball --------------  7:30 - 10:30am  ||| o |',13,10,'$' 
var4 db  '| _ |||                                             ||| _ |',13,10,'$' 
var5 db  '|(_)||| Tamagotchi  --------------  10:30 - 11:30am |||(_)|',13,10,'$' 
var6 db  '|   |||                                             |||   |',13,10,'$' 
var7 db  '|.-.||| Doraemon    --------------  11:30 - 12:30pm |||.-.|',13,10,'$' 
var8 db  '| o |||                                             ||| o |',13,10,'$' 
var9 db  '|   ||| HSDXD       --------------  12:30 - 1:30pm  |||   |',13,10,'$' 
var10 db '|   |||                                             |||   |',13,10,'$' 
var11 db '|   ||| Overflow    --------------  1:30 - 2:30pm   |||   |',13,10,'$' 
var12 db '|   |||                                             |||   |',13,10,'$' 
var13 db '|   ||| Love Tyrant --------------  2:30 - 3:30pm   |||   |',13,10,'$'  
var14 db '| _ |||                                             ||| _ |',13,10,'$'
var15 db '|(_)||| Lovely Liar --------------  3:30 - 4:30pm   |||(_)|',13,10,'$'
var16 db '|   |||                                             |||   |',13,10,'$'
var17 db '| O ||| Dragon      --------------  4:30 - 5:30pm   ||| O |',13,10,'$'
var18 db '|   |||                                             |||   |',13,10,'$'
var19 db '|`-`||`---------------------------------------------`||`-`|',13,10,'$'
var20 db '`---``-----------------------------------------------'`---'',13,10,'$'


.code             

start:            

mov ax,@data      
mov ds,ax        

mov ah,09        
    
mov dx,offset var1 
int 21h   
mov dx,offset var2 
int 21h     
mov dx,offset var3 
int 21h     
mov dx,offset var4 
int 21h     
mov dx,offset var5 
int 21h     
mov dx,offset var6 
int 21h     
mov dx,offset var7 
int 21h     
mov dx,offset var8 
int 21h     
mov dx,offset var9 
int 21h     
mov dx,offset var10 
int 21h     
mov dx,offset var11
int 21h     
mov dx,offset var12
int 21h   
mov dx,offset var13
int 21h  
mov dx,offset var14
int 21h            
mov dx,offset var15
int 21h  
mov dx,offset var16
int 21h  
mov dx,offset var17
int 21h  
mov dx,offset var18
int 21h  
mov dx,offset var19
int 21h  
mov dx,offset var20
int 21h  

mov ah,4Ch        
int 21h           

end start         

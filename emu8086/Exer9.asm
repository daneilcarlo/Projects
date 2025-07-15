.model small       
.data             
  
var1 db  '|---------------------------------------------------------------------|',13,10,'$'                                                      
var2 db  '|         ,;                 `.                                       |',13,10,'$'                                                      
var3 db  '|        ;:                   :;                                       |',13,10,'$' 
var4 db  '|        :.     Spider Co.    :      Engr. Daneil Carlo V. Masagnay    |',13,10,'$' 
var5 db  '|     ;' ::                   ::  '                                    |',13,10,'$' 
var6 db  '|    .'  ';                   ;'  '.         Computer Engineer        |',13,10,'$' 
var7 db  '|   ;      :;.             ,;:     ::                                  |',13,10,'$' 
var8 db  '|   :;      :;:           ,;"      ::                                  |',13,10,'$' 
var9 db  '|    "`"...   `::,::::: ;:   .;.;""`                                  |',13,10,'$' 
var10 db '|        `"""....;:::::;,;.;"""          Office: +1 (123) 456-7890    |',13,10,'$' 
var11 db '|    .:::.....`"`:::::::`",...;::::;.                                 |',13,10,'$' 
var12 db '|   ;:` `""`"";.,;:::::;.`""""""  `:;    Fax: +1 (123) 456-7891       |',13,10,'$' 
var13 db '|  ::`         ;::;:::;::..         :;                                 |',13,10,'$'  
var14 db '| ::         ,;:::::::::::;:..       ::   Residence: +1 (123) 987-6543 |',13,10,'$'
var15 db '| ;`     ,;;:;::::::::::::::;";..    `:.                              |',13,10,'$'
var16 db '|::     ;:"  ::::::"""`::::::  ":     ::  Email: dc@gmail.com          |',13,10,'$'
var17 db '|  ;    ::   :::::::  :::::::   :    ;                                 |',13,10,'$'
var18 db '|   `   ::   ::::::....:::::`  ,:   `     Mobile No.: 09629441129      |',13,10,'$'
var19 db '|    `  ::    :::::::::::::"   ::                                      |',13,10,'$'
var20 db '|       `:       """""""`      ::                                      |',13,10,'$'
var21 db '|        ::                   ;:                                       |',13,10,'$'
var22 db '|          `;              ,;`                                        |',13,10,'$'
var23 db '|---------------------------------------------------------------------|',13,10,'$'


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
mov dx,offset var21
int 21h  
mov dx,offset var22
int 21h  
mov dx,offset var23
int 21h  

mov ah,4Ch        
int 21h           

end start         

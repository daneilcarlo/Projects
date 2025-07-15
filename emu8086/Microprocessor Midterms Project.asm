;one

;.model small             ; Define the memory model (small = 1 code + 1 data segment)
;.stack 100h              ; Allocate 256 bytes (100h) for the stack
;
;.data                    ; Start of data segment
;    g100 db 13,10, 'Grade: 1.00$',13,10  ; Message for grade 1.00 with newline
;    g125 db 13,10, 'Grade: 1.25$',13,10  ; Message for grade 1.25 with newline
;    g150 db 13,10, 'Grade: 1.50$',13,10  ; Message for grade 1.50 with newline
;    g175 db 13,10, 'Grade: 1.75$',13,10  ; Message for grade 1.75 with newline
;    g200 db 13,10, 'Grade: 2.00$',13,10  ; Message for grade 2.00 with newline
;    g225 db 13,10, 'Grade: 2.25$',13,10  ; Message for grade 2.25 with newline
;    g250 db 13,10, 'Grade: 2.50$',13,10  ; Message for grade 2.50 with newline
;    g275 db 13,10, 'Grade: 2.75$',13,10  ; Message for grade 2.75 with newline
;    g300 db 13,10, 'Grade: 3.00$',13,10  ; Message for grade 3.00 with newline
;    g400 db 13,10, 'Grade: 4.00$',13,10  ; Message for grade 4.00 with newline
;    g500 db 13,10, 'Grade: 5.00$',13,10  ; Message for grade 5.00 with newline
;
;.code                    ; Start of code segment
;main:
;    mov ax, @data        ; Load address of data segment into AX
;    mov ds, ax           ; Set DS (data segment register) to AX value
;
;    ; ?? Set your grade here!
;    mov bx, 88          ; Set grade in BX (change this value to test)
;
;    ; Grade logic using conditional comparisons (descending order)
;    cmp bx, 96           ; Is grade >= 96?
;    jge grade100         ; Yes ? Jump to grade100
;    cmp bx, 94           ; Is grade >= 94?
;    jge grade125         ; Yes ? Jump to grade125
;    cmp bx, 91           ; Is grade >= 91?
;    jge grade150         ; Yes ? Jump to grade150
;    cmp bx, 89           ; Is grade >= 89?
;    jge grade175         ; Yes ? Jump to grade175
;    cmp bx, 86           ; Is grade >= 86?
;    jge grade200         ; Yes ? Jump to grade200
;    cmp bx, 83           ; Is grade >= 83?
;    jge grade225         ; Yes ? Jump to grade225
;    cmp bx, 80           ; Is grade >= 80?
;    jge grade250         ; Yes ? Jump to grade250
;    cmp bx, 77           ; Is grade >= 77?
;    jge grade275         ; Yes ? Jump to grade275
;    cmp bx, 75           ; Is grade >= 75?
;    jge grade300         ; Yes ? Jump to grade300
;    cmp bx, 70           ; Is grade >= 70?
;    jge grade400         ; Yes ? Jump to grade400
;    jmp grade500         ; If none of the above, jump to grade500
;
;; Load the correct message into DX and jump to printAndExit
;
;grade100: 
;    lea dx, g100         ; Load address of message "Grade: 1.00" into DX
;    jmp printAndExit     ; Jump to printing routine
;
;grade125: 
;    lea dx, g125         ; Load address of message "Grade: 1.25"
;    jmp printAndExit
;
;grade150: 
;    lea dx, g150         ; Load address of message "Grade: 1.50"
;    jmp printAndExit
;
;grade175: 
;    lea dx, g175         ; Load address of message "Grade: 1.75"
;    jmp printAndExit
;
;grade200: 
;    lea dx, g200         ; Load address of message "Grade: 2.00"
;    jmp printAndExit
;
;grade225: 
;    lea dx, g225         ; Load address of message "Grade: 2.25"
;    jmp printAndExit
;
;grade250: 
;    lea dx, g250         ; Load address of message "Grade: 2.50"
;    jmp printAndExit
;
;grade275: 
;    lea dx, g275         ; Load address of message "Grade: 2.75"
;    jmp printAndExit
;
;grade300: 
;    lea dx, g300         ; Load address of message "Grade: 3.00"
;    jmp printAndExit
;
;grade400: 
;    lea dx, g400         ; Load address of message "Grade: 4.00"
;    jmp printAndExit
;
;grade500: 
;    lea dx, g500         ; Load address of message "Grade: 5.00"
;
;printAndExit:
;    mov ah, 09h          ; DOS function: display string (until '$')
;    int 21h              ; Call interrupt to display the string
;
;    mov ah, 4Ch          ; DOS function: exit program
;    int 21h              ; Call interrupt to terminate
;end main                 ; End of program




;two

;.model small             ; Use the small memory model (1 code + 1 data segment)
;.stack 100h              ; Allocate 256 bytes of stack memory
;
;.data                    ; Start of the data segment
;newline db 13,10,'$'     ; Newline (carriage return + line feed) for text output
;flames db '   ^ ^ ^ ^',13,10,'$'  ; Flame pattern with new line
;
;.code                    ; Start of the code segment
;main:
;    mov ax, @data        ; Load the data segment address into AX
;    mov ds, ax           ; Initialize DS (data segment register)
;
;    ; ========== Cone ==========
;    mov cx, 0            ; Initialize CX to 0 (loop counter for cone rows)
;cone_loop:
;    push cx              ; Save current row number on the stack
;    mov bx, 6
;    sub bx, cx           ; Calculate number of leading spaces: 6 - row
;
;print_cone_spaces:
;    cmp bx, 0            ; Check if there are more spaces to print
;    je skip_spaces       ; Jump if no more spaces
;    mov ah, 02h          ; Function to print character
;    mov dl, ' '          ; Print a space
;    int 21h              ; DOS interrupt
;    dec bx               ; Decrease space counter
;    jmp print_cone_spaces
;
;skip_spaces:
;    pop cx               ; Restore current row value
;    mov bx, cx
;    shl bx, 1            ; Multiply BX by 2 (left shift)
;    inc bx               ; Add 1 ? stars = 2*i + 1
;
;print_cone_stars:
;    cmp bx, 0            ; Check if all stars are printed
;    je skip_stars
;    mov ah, 02h          ; Function to print character
;    mov dl, '*'          ; Print a star
;    int 21h              ; DOS interrupt
;    dec bx               ; Decrease star counter
;    jmp print_cone_stars
;
;skip_stars:
;    mov ah, 09h          ; DOS print string function
;    lea dx, newline      ; Load address of newline
;    int 21h              ; Print newline
;
;    inc cx               ; Move to next row
;    cmp cx, 6            ; Loop 6 times (rows 0 to 5)
;    jl cone_loop         ; Loop if CX < 6
;
;    ; ========== Body ==========
;    mov cx, 6            ; Set number of body rows
;body_loop:
;    mov ah, 02h
;    mov dl, '|'          ; Left border
;    int 21h
;
;    mov bx, 11           ; Set number of '=' characters
;print_equals:
;    mov ah, 02h
;    mov dl, '='          ; Print '='
;    int 21h
;    dec bx
;    jnz print_equals     ; Loop until BX = 0
;
;    mov ah, 02h
;    mov dl, '|'          ; Right border
;    int 21h
;
;    mov ah, 09h
;    lea dx, newline      ; Print newline after each row
;    int 21h
;
;    loop body_loop       ; Decrement CX and repeat if not zero
;
;    ; ========== Flames ==========
;    mov cx, 5            ; Set number of flame rows
;flame_loop:
;    mov ah, 09h
;    lea dx, flames       ; Load flame string
;    int 21h
;    loop flame_loop      ; Repeat 5 times
;
;    ; Exit program
;    mov ah, 4ch
;    int 21h              ; Return control to DOS
;
;end main                 ; End of program
                                          



















; three

;.model small              ; Use small memory model (1 code + 1 data segment)
;.stack 100h              ; Reserve 256 bytes for the stack
;
;.data                    ; Start of data segment
;    sentence db 'I love you Naizah Jasmine Catamio Resus$', 0  ; String to scan (ends with '$')
;    target   db 'N'                ; Target character to count (case-sensitive)
;    count    db 0                  ; Counter variable (not directly used; CL is used)
;    newline  db 13,10,'$'          ; Newline string (carriage return + line feed)
;    result1  db 'The letter ''N'' appears $'   ; First part of output message
;    result2  db ' time(s).$'                   ; Second part of output message
;
;.code                    ; Start of code segment
;main:
;    mov ax, @data        ; Load the address of the data segment into AX
;    mov ds, ax           ; Set DS to AX, initializing data segment
;
;    ; ========== Initialize Registers ==========
;    lea si, sentence     ; Load address of the sentence into SI
;    mov bl, target       ; Move target character ('N') into BL
;    xor cl, cl           ; Clear CL (set count to 0)
;
;loop_array:
;    mov al, [si]         ; Load current character pointed by SI into AL
;    cmp al, '$'          ; Check for end of string ('$' sentinel)
;    je done_counting     ; If found, jump to printing results
;
;    cmp al, bl           ; Compare AL with target character in BL
;    jne skip_count       ; If not equal, skip counting
;    inc cl               ; If equal, increment counter in CL
;
;skip_count:
;    inc si               ; Move to next character in sentence
;    jmp loop_array       ; Repeat loop
;
;done_counting:
;    ; ========== Print: "The letter 'N' appears " ==========
;    mov ah, 09h
;    lea dx, result1      ; Load address of result1 message
;    int 21h              ; Call DOS to print string
;
;    ; ========== Print the Count ==========
;    mov al, cl           ; Move count from CL to AL
;    cmp al, 0            ; Check if count is 0
;    je print_zero        ; If 0, print '0'
;
;    add al, '0'          ; Convert number 0–9 to ASCII
;    mov dl, al           ; Move ASCII character to DL
;    mov ah, 02h          ; DOS function to print single character
;    int 21h              ; Call interrupt
;    jmp print_end        ; Skip zero-printing block
;
;print_zero:
;    mov dl, '0'          ; Load ASCII '0' into DL
;    mov ah, 02h
;    int 21h              ; Print '0'
;
;print_end:
;    ; ========== Print: " time(s)." ==========
;    lea dx, result2      ; Load address of result2 message
;    mov ah, 09h
;    int 21h              ; Print the message
;
;    ; ========== Print Newline ==========
;    lea dx, newline      ; Load newline characters
;    int 21h              ; Print newline
;
;    ; ========== Exit Program ==========
;    mov ah, 4Ch          ; DOS terminate program function
;    int 21h              ; Return to DOS
;
;end main                 ; End of program
                        
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              


; four

;.model small               ; Use the small memory model
;.stack 100h               ; Allocate 256 bytes for stack
;
;.data                     ; Begin data segment
;    mixedArray db 1,2,3,4,5,6,7,8,9,10   ; Array of 10 numbers
;    evenCount db 0                      ; Counter for even numbers
;    oddCount db 0                       ; Counter for odd numbers
;
;    evenMsg db 13,10, 'Even Count: $'   ; Message for even count
;    oddMsg  db 13,10, 'Odd Count: $'    ; Message for odd count
;
;.code                     ; Begin code segment
;main:
;    mov ax, @data         ; Load data segment address
;    mov ds, ax            ; Set DS to point to the data segment
;
;    mov cx, 10            ; Loop 10 times (for 10 array elements)
;    lea si, mixedArray    ; SI points to the first element in the array
;
;next_num:
;    mov al, [si]          ; Load the current number into AL
;    inc si                ; Move SI to the next element
;
;    test al, 1            ; Test if LSB is set (odd number)
;    jz is_even            ; If zero, it's even ? jump to is_even
;
;    inc oddCount          ; Increment odd count
;    jmp check_next        ; Skip to loop check
;
;is_even:
;    inc evenCount         ; Increment even count
;
;check_next:
;    loop next_num         ; Decrement CX and repeat if not zero
;
;    ; ========== Display Even Count ==========
;    mov ah, 09h
;    lea dx, evenMsg       ; Load message address
;    int 21h               ; Print message
;
;    mov dl, evenCount     ; Load even count into DL
;    add dl, '0'           ; Convert to ASCII
;    mov ah, 02h
;    int 21h               ; Print count character
;
;    ; ========== Display Odd Count ==========
;    mov ah, 09h
;    lea dx, oddMsg        ; Load message address
;    int 21h               ; Print message
;
;    mov dl, oddCount      ; Load odd count into DL
;    add dl, '0'           ; Convert to ASCII
;    mov ah, 02h
;    int 21h               ; Print count character
;
;    ; ========== Exit Program ==========
;    mov ah, 4Ch
;    int 21h               ; Return control to DOS
;
;end main                  ; End of program
            

                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            


;five

.model small               ; Use the small memory model
.stack 100h               ; Allocate 256 bytes for the stack

.data                     ; Start of the data segment
    number db 7                            ; The number to check
    isPrime db 1                           ; Assume the number is prime (1 = true)

    msg1 db 'The number ', '$'             ; Message part 1
    msgPrime db ' is a prime number.$', 0  ; Message for prime number
    msgNotPrime db ' is not a prime number.$', 0  ; Message for not prime
    newline db 13, 10, '$'                 ; Newline characters

.code                     ; Start of the code segment
main:
    mov ax, @data         ; Load data segment address into AX
    mov ds, ax            ; Initialize DS with address of data

    ; ==== Prime Check ====
    mov al, number        ; Load the number into AL
    cmp al, 2             ; Compare number with 2
    jb NotPrime           ; If number < 2, jump to NotPrime (not prime)

    mov cl, 2             ; Start checking divisors from 2

CheckLoop:
    mov al, number        ; Load the number again into AL
    xor ah, ah            ; Clear AH (for 8-bit / 8-bit division)
    div cl                ; Divide AL by CL, remainder in AH
    cmp ah, 0             ; Check if divisible (remainder == 0)
    je NotPrime           ; If divisible, it's not prime

    inc cl                ; Move to the next divisor
    mov al, cl
    cmp al, number        ; Check if divisor < number
    jb CheckLoop          ; If yes, loop again

    jmp ShowResult        ; If loop completes, it's prime

NotPrime:
    mov isPrime, 0        ; Set isPrime flag to 0 (false)

ShowResult:
    ; ==== Print "The number " ====
    mov ah, 09h           ; DOS print string function
    lea dx, msg1          ; Load address of "The number "
    int 21h               ; Print it

    ; ==== Print the number itself (single digit only) ====
    mov dl, number        ; Load the number into DL
    add dl, '0'           ; Convert to ASCII
    mov ah, 02h           ; DOS function to print a character
    int 21h               ; Print the digit

    ; ==== Print the result message ====
    mov ah, 09h           ; DOS print string function
    cmp isPrime, 1        ; Check if the number is prime
    je PrintPrime         ; If yes, jump to PrintPrime
    lea dx, msgNotPrime   ; Otherwise, load address of "not prime"
    jmp ShowMsg           ; Jump to message display

PrintPrime:
    lea dx, msgPrime      ; Load address of "is a prime number"

ShowMsg:
    int 21h               ; Print the result message

    ; ==== Print newline ====
    lea dx, newline       ; Load address of newline
    mov ah, 09h           ; DOS print string function
    int 21h               ; Print newline

    ; ==== Exit the program ====
    mov ah, 4Ch           ; DOS terminate program
    int 21h               ; Exit to DOS

end main                 ; Mark end of the program


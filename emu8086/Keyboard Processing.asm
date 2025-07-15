.MODEL SMALL
.STACK 100h

.DATA
    ; Box lines
    topBorder      DB 0Dh, 0Ah, '+------------------------------------------------------+', 0Dh, 0Ah, '$'
    bottomBorder   DB '+------------------------------------------------------+', 0Dh, 0Ah, '$'
    gameTitle      DB '¦              PAPER, ROCK, SCISSORS GAME              ¦', 0Dh, 0Ah, '$'
    blankLine      DB '¦                                                      ¦', 0Dh, 0Ah, '$'
    playerLine     DB '¦ Player 1:                             Player 2:      ¦', 0Dh, 0Ah, '$'

    winnerP1Line   DB '¦                 Player 1 wins!                       ¦', 0Dh, 0Ah, '$'
    winnerP2Line   DB '¦                 Player 2 wins!                       ¦', 0Dh, 0Ah, '$'
    tieLine        DB '¦                    It''s a tie!                      ¦', 0Dh, 0Ah, '$'

    rulePRSLine    DB '¦              Paper covers Rock!                      ¦', 0Dh, 0Ah, '$'
    ruleRSCLine    DB '¦             Rock breaks Scissors!                    ¦', 0Dh, 0Ah, '$'
    ruleSCPLine    DB '¦             Scissors cuts Paper!                     ¦', 0Dh, 0Ah, '$'

    againPrompt    DB 0Dh, 0Ah, 'Play again? (Y/N): $'
    errMsg         DB 0Dh, 0Ah, '[Invalid input! Use P, R, or S.]', 0Dh, 0Ah, '$'

    choice1        DB ?
    choice2        DB ?
    resultLine     DW ?
    ruleLine       DW ?

.CODE

; Print $-terminated string pointed by DX
PrintString PROC
    mov AH, 09h
    int 21h
    ret
PrintString ENDP

; Convert AL to uppercase if lowercase
ToUppercase PROC
    cmp AL, 'a'
    jb SkipUpper
    cmp AL, 'z'
    ja SkipUpper
    sub AL, 20h
SkipUpper:
    ret
ToUppercase ENDP

; Read 'P', 'R', or 'S'
ReadChoice PROC
ReadLoop:
    mov AH, 07h
    int 21h
    call ToUppercase
    cmp AL, 'P'
    je Valid
    cmp AL, 'R'
    je Valid
    cmp AL, 'S'
    je Valid
    mov DX, OFFSET errMsg
    call PrintString
    jmp ReadLoop
Valid:
    ret
ReadChoice ENDP

; Ask to play again
AskAgain PROC
AskLoop:
    mov DX, OFFSET againPrompt
    call PrintString
    mov AH, 07h
    int 21h
    call ToUppercase
    cmp AL, 'Y'
    je StartGame
    cmp AL, 'N'
    je ExitGame
    jmp AskLoop
AskAgain ENDP

; Print the box layout
PrintBox PROC
    mov DX, OFFSET topBorder
    call PrintString
    mov DX, OFFSET gameTitle
    call PrintString
    mov DX, OFFSET blankLine
    call PrintString
    mov DX, OFFSET playerLine
    call PrintString
    mov DX, OFFSET blankLine
    call PrintString

    mov DX, resultLine
    call PrintString
    mov DX, ruleLine
    call PrintString

    mov DX, OFFSET bottomBorder
    call PrintString
    ret
PrintBox ENDP

Main PROC
    mov AX, @DATA
    mov DS, AX

StartGame:
    ; Get Player 1
    mov DX, OFFSET blankLine
    call PrintString
    mov DX, OFFSET playerLine
    call PrintString
    call ReadChoice
    mov choice1, AL

    ; Get Player 2
    call ReadChoice
    mov choice2, AL

    ; Compare results
    mov AL, choice1
    mov BL, choice2
    cmp AL, BL
    je IsTie

    cmp AL, 'P'
    je P1_P
    cmp AL, 'R'
    je P1_R
    jmp P1_S

IsTie:
    mov resultLine, OFFSET tieLine
    mov ruleLine, OFFSET blankLine
    call PrintBox
    jmp AskAgain

P1_P:
    cmp BL, 'R'
    je P1_Win_Paper
    jmp P2_Win_Scissors

P1_R:
    cmp BL, 'S'
    je P1_Win_Rock
    jmp P2_Win_Paper

P1_S:
    cmp BL, 'P'
    je P1_Win_Scissors
    jmp P2_Win_Rock

P1_Win_Paper:
    mov resultLine, OFFSET winnerP1Line
    mov ruleLine, OFFSET rulePRSLine
    call PrintBox
    jmp AskAgain

P1_Win_Rock:
    mov resultLine, OFFSET winnerP1Line
    mov ruleLine, OFFSET ruleRSCLine
    call PrintBox
    jmp AskAgain

P1_Win_Scissors:
    mov resultLine, OFFSET winnerP1Line
    mov ruleLine, OFFSET ruleSCPLine
    call PrintBox
    jmp AskAgain

P2_Win_Paper:
    mov resultLine, OFFSET winnerP2Line
    mov ruleLine, OFFSET rulePRSLine
    call PrintBox
    jmp AskAgain

P2_Win_Rock:
    mov resultLine, OFFSET winnerP2Line
    mov ruleLine, OFFSET ruleRSCLine
    call PrintBox
    jmp AskAgain

P2_Win_Scissors:
    mov resultLine, OFFSET winnerP2Line
    mov ruleLine, OFFSET ruleSCPLine
    call PrintBox
    jmp AskAgain

ExitGame:
    mov AH, 4Ch
    int 21h
Main ENDP

END Main

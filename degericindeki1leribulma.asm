.model small
.data 
dizi db 135,3,30,25,3,135
adet dw 2       
buffer db 8 dup (1)
.code
.startup

MOV CX,10
MOV SI,0
MOV DI,0

Dongu:
    PUSH CX
    MOV AL,dizi[SI]
    MOV DL,3
    MOV CX,7
    
    Dongu2:
        MOV AL,dizi[SI]
        AND AL,DL
        CMP AL,DL
        JNE GIT
        MOV AL,dizi[SI]
        MOV buffer[DI],AL
        MOV CX,1
        INC DI
        GIT:
        SHL DL,1
        LOOP Dongu2
    INC SI
    POP CX
    LOOP Dongu

    
.exit
end



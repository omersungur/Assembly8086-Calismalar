.model small
.data 
dizi db 3,5,1,9,26
adet dw 5
kere dw 4       
buffer 100 dup (0)
.code
.startup

LES DI,buffer
MOV CX,adet
MOV SI,0
CLD
Dongu:
    PUSH CX
    MOV CX,kere 
    MOV AL,dizi[SI]
    REP STOSB
    INC SI
    POP CX
 LOOP Dongu

    
.exit
end



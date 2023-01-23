.model small
.data 
Cumle db 'Ali okula gitmeyi seviyor'
Cumleuzunlugu DW 25
aranan Db 'ae'
arananuzunlugu DW 2
sayisi DB DUP 29(5)
.code
.startup

MOV SI,0
MOV CX,arananuzunlugu

Dongu:
    PUSH CX
    MOV AL,aranan[SI]
    CALL ara
    MOV sayisi[SI],DL
    INC SI
    POP CX
    LOOP Dongu

    
.exit

ara PROC NEAR
    MOV CX,Cumleuzunlugu
    MOV DI,0
    MOV DL,0
    DonguP:
        MOV AH,Cumle[DI]
        CMP AL,AH
        JNE GIT
        INC DL
        GIT:
        INC DI
        LOOP DonguP
        RET
        endp
end



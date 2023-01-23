.model small
.data
dizi dW 44H,56H,75H,83H,71H,89H 
sayilar db 0
.code
.startup
MOV CX,4
MOV AL, 28H
MOV SI,0
DONGU:

MOV sayilar [SI],AL
INC AL
INC SI 

LOOP DONGU    
.exit
end


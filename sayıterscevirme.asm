.model small
.data
dizi dW 44H,56H,75H,83H,71H,89H
.code
.startup 
MOV BX,0
MOV AX, 22A6H
MOV [BX], AH
MOV [BX+1], AL
MOV DX,[BX]
.exit
end
     

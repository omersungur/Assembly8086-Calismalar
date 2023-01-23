.model small
.data 
dizi db 3,5,1,9,26,64,68,24,58,11
.code
.startup
MOV CX,10
MOV SI,0
MOV AL,0

DONGU:
INC dizi [SI]
MOV AL,dizi [SI]   
INC SI      
          
LOOP DONGU
    
.exit
end



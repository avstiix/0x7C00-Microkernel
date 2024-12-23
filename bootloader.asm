; bootloader.asm
BITS 16                
ORG 0x7C00        

start:
    cli           
    xor ax, ax    
    mov ds, ax    
    mov es, ax    
    mov ss, ax    
    mov sp, 0x7C00
    sti           

    ; Load kernel from disk
    mov ah, 0x02      
    mov al, 1         
    mov ch, 0         
    mov cl, 2         
    mov dh, 0         
    mov dl, 0x80    
    mov bx, kernel    
    int 0x13          

    jmp kernel        

times 510-($-$$) db 0 
dw 0xAA55             
.model small
.stack 100h
.data
    message db 'HELLOWORLD', 0
    shift db 3
    result db 20 dup(?), '$'

.code
start:
    mov ax, @data
    mov ds, ax
    mov es, ax
    
    lea si, message   ; source
    lea di, result    ; destination
    
loop:
    lodsb             ; load character from DS:SI to AL
    cmp al, 0         ; check for end of string
    je done
    
    cmp al, 'A'       ; check if uppercase letter
    jb store
    cmp al, 'Z'
    ja store
    
    sub al, 'A'       ; convert to 0-25 range
    add al, shift     ; apply shift
    xor ah, ah        ; clear AH for division
    mov cl, 26        ; divisor
    div cl            ; AH = remainder after division by 26
    
    mov al, ah        ; use remainder as new index
    add al, 'A'       ; convert back to ASCII

store:
    stosb             ; store result in ES:DI
    jmp loop

done:
    mov ah, 09h       ; DOS function to print string
    lea dx, result
    int 21h
    
    mov ax, 4C00h     ; exit program
    int 21h
end start

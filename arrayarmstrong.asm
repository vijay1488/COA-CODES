;program for the armstrong numbers in the array
include "emu8086.inc"
org 100h

mov ax,0
mov bx,10
mov cx,10
mov si,0
mov dx,0   
mov n,10
                                                           
                                                          
armstrong:
    mov ax,arr[si]
    mov n,ax
    push n
    mov sum,0
    is_armstrong:
        mov dx,0 
        div bx
        push ax  
        push dx
        mov ax,dx
        mul dx  
        pop dx
        mul dx
        add sum,ax
        pop ax
        cmp ax,0
        jne is_armstrong
    mov ax,n
    cmp sum,ax
    jne hai:
        call print_num_uns 
        print " "
    hai:
        add si,2
        cmp si,cx
        jne armstrong
hlt
ret
define_print_num_uns
arr dw 153,123,371,541,370
n dw 0
sum dw 0
ret
        
        
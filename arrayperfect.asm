


;program to find the perfect  number in the array

include "emu8086.inc"
org 100h

; add your code here
mov si,0
mov ax,0
mov bx,0
mov cx,10
mov dx,1
min:                 
    mov ax,array[si] 
    mov n,ax
    mov dx,1
    push dx  
    mov sum,0
    
    perfect:
        mov dx,0
        pop bx
        div bx
        cmp dx,0 
        jne hello
            add sum,bx
        hello:
            inc bx
            push bx
            mov ax,n
        cmp bx,n
        jne perfect
    
    mov ax,sum
    cmp n,ax
    jne printf
        call print_num_uns  
        print " "
    printf:  
    add si,2
    cmp si,cx
    jne min
    hlt
ret                  
define_print_num_uns
array dw 10,6,44,2,28
n dw 0
sum dw 0
ret










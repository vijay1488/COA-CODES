;program for prime numbers in an array
include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,12
mov dx,0
mov si,0
prime:
    mov ax,arr[si]
    mov n,ax   
    mov bx,2  
    cmp ax,1
    je iam_out
    push bx
    isprime:
        mov dx,0
        pop bx 
        cmp bx,n
        je hai
        div bx
        cmp dx,0
        je iam_out
        inc bx
        push bx 
        mov ax,n
        jmp isprime
    hai:    
    call print_num_uns
    print " "
    iam_out:
        add si,2
        cmp si,cx
        jne prime
 
hlt
ret
define_print_num_uns
arr dw  4,2,3,4,5,20
n dw 0
ret
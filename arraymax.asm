
;program to find the largest number in the array

include "emu8086.inc"
org 100h

; add your code here
mov si,0
mov ax,0
mov bx,0
mov cx,6
mov dx,0
max:
    mov ax,array[si]
    cmp ax,dx
    jng hello
        mov dx,ax
    hello:
        add si,2
    loop max
    
    mov ax,dx
    call print_num_uns

ret                  
define_print_num_uns
array dw 10,3,22,4,122
n dw 12
ret





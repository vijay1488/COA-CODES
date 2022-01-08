




;program to sum of elements in the array

include "emu8086.inc"
org 100h

; add your code here
mov si,0
mov ax,0
mov bx,0
mov cx,5
mov dx,0
sum:
    add ax,array[si]   
    add si,2
    loop sum
    call print_num_uns

ret                  
define_print_num_uns
array dw 10,3,22,4,122
n dw 12
ret









;program for the sum of numbers at every 3rd position in an array
include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,20
mov dx,0
mov si,4
mov ax,arr[si]

hello:   
    add si,6
    cmp cx,si
    jge ad
       jmp jmp_out
    ad:
        add ax,arr[si]
    jmp hello
jmp_out:
    call print_num_uns
    hlt
ret
define_print_num_uns
arr dw 10,3,7,8,6,5,9,2,4,6
ret
       
    
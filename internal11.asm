;set a
;program for to find the sum of odd numbers in given array numbers
include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov si,0
mov cx,20
mov dx,0
mov n,2
mov sum,0 
outer:
    mov ax,arr[si];
    mov dx,0
    div n
    cmp dx,1
    jne hello:
        add bx,arr[si]
    hello:
        add si,2
        cmp cx,si
        jne outer
     
mov ax,bx
call print_num_uns
hlt
define_print_num_uns
arr dw 1,2,3,4,5,6,7,8,9,10
n dw 0
sum dw 0
ret 
    


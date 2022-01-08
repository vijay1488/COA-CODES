;set b
;program for to determine the sum of cubes ofnumbers in an array

include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,8
mov dx,0
mov si,0

outer:
    mov ax,arr[si]
    mul arr[si]
    mul arr[si]
    add bx,ax
    add si,2
    cmp cx,si
    jne outer
   
mov ax,bx
call print_num_uns
hlt
ret
define_print_num_uns
arr dw 1,2,3,4
ret
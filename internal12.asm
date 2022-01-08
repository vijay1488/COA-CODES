;program for to determine sum of corresponding elements of two arrays

include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,20
mov dx,0
mov si,0
outer:
    mov ax,arr[si]
    add ax,brr[si]
    mov arr[si],ax
    add si,2
    cmp si,cx
    jne outer
   
   
mov si,0
inner:
    mov ax,arr[si]
    call print_num_uns 
    print "  "
    add si,2
    cmp si,cx
    jne inner
   
hlt
ret
define_print_num_uns
arr dw 1,2,3,4,5,6,7,9,9,10
brr dw 10,9,8,99,6,5,4,3,2,1
ret
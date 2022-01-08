
;program for to print the array elements in descending order
include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,9
mov dx,0       
outer:
    push cx
    mov si,0
    mov di,2
    inner:
        mov ax,arr[si]
        cmp ax,arr[di]
        jnl hai:
            push arr[si]
            push arr[di]
            pop arr[si]
            pop arr[di]
        hai:
            add si,2
            add di,2
            loop inner
    pop cx
    loop outer

mov cx,10
mov si,0
printf:
    mov ax,arr[si]
    call print_num_uns
    print " "
    add si,2
    loop printf
hlt
ret
define_print_num_uns
arr dw 10,1,5,2,3,8,9,4,7,6
ret



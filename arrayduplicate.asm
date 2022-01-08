;program for to find the duplicates in an array


include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,20
mov dx,0
mov si,2
mov di,0
outer:
    mov ax,arr[si]
    mov di,si  
    mov bx,0
    inner:   
        sub di,2
        cmp arr[di],ax
        jne h
            inc bx
        h:
            cmp di,0
            jne inner
        cmp bx,1
        jne hai
            call print_num_uns
            print " "
    hai:
        add si,2
        cmp cx,si
        jne outer
hlt

ret
define_print_num_uns
arr dw 1,3,3,4,5,3,5,2,7,8
ret
    
    
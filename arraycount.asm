;program for to count of even and odd numbers in array. week 10
include "emu8086.inc"
org 100h

mov si,0
mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov n,2

count:
    mov ax,arr[si]
    mov dx,0
    div n
    cmp dx,0
    jne odd
        inc bx
        jne hai
    odd:
        inc cx
    hai:
        add si,2
        cmp si,20
        jne count
mov ax,bx 
   print "even  "
call print_num_uns
printn    
print "odd  "
print "  "
mov ax,cx
call print_num_uns
hlt
ret
define_print_num_uns
arr dw 12,2,14,16,18,7,8,9,11,13
n dw 0
ret 
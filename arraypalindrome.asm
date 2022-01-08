;program for to print the palindromes in the array
include "emu8086.inc"
org 100h

mov si,0
mov ax,0
mov bx,0
mov cx,10
mov dx,0
mov nn,10

palindrome:
    mov ax,arr[si]
    mov n,ax
    mov rev,0
    push n
    is_palindrome:
         mov dx,0
         div nn
         push ax
         mov ax,rev 
         push dx
         mul nn 
         pop dx
         add ax,dx
         mov rev,ax
         pop ax
         cmp ax,0
         jne is_palindrome
    mov ax,n
    cmp ax,rev
    jne hai:
        call print_num_uns
        print " "
    hai:
        add si,2
        cmp si,cx
        jne palindrome
hlt
ret
define_print_num_uns
arr dw 11,12,21,121,1221
n dw 0
rev dw 0
nn dw 0
ret
         
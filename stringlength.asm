;program for to find the length of the string

include "emu8086.inc"
org 100h

mov si,0
mov ax,0
mov bx,0
mov cx,0
mov dx,0     
mov cl,'$'
length:       
    mov al,arr[si]
    cmp al,cl
    je come_out
    add si,1  
    inc bx
    jmp length
 
come_out: 
mov ax,bx
call print_num_uns
hlt
ret
arr db "hello world$"
define_print_num_uns
define_print_num
ret
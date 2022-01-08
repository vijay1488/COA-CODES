
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string

call scan_num
;mov cx,15
mov ax,cx
mov bx,10d  
mov cx,0
reverse:
    mov dx,0h
    div bx
    mov num1,ax
    mov n,dx
    mov ax,cx
    mul num
    add ax,n
    mov cx,ax
    mov ax,num1
    cmp ax,0
    jne reverse
gotoxy 2,2
mov ax,cx
call print_num_uns
 

ret  
num dw 10d
num1 dw 0d
n dw 0d
msg db "enter the number:",0
define_print_string
define_print_num_uns
define_scan_num  
ret




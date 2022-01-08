
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string

call scan_num
mov ax,cx
mov bx,10d
mov num3,ax
mov cx,0
palindrome:
    mov dx,0h
    div num
    mov num1,ax
    mov num2,dx
    mov ax,cx
    mul num
    add ax,num2
    mov cx,ax
    mov ax,num1
    cmp ax,0
    jne palindrome

gotoxy 2,2
mov ax,cx
cmp ax,num3
je palin
    lea si,msg2
    call print_string
    ret
palin:
    lea si,msg1
    call print_string
    ret
    
ret
num dw 10d
num1 dw 0d
num2 dw 0d
num3 dw 0d
msg db "enter the numebr:",0
msg1 db "palindrome",0
msg2 db "not palindrome",0
define_print_string
define_scan_num




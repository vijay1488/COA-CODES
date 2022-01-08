
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;program for to print fibonacci sequence
include "emu8086.inc"
org 100h

; add your code here
lea si,msg
call print_string
call scan_num                    
;mov cx,10
mov n,cx
mov ax,0 
mov num1,ax
push ax  
mov ax,1
mov num2,ax 
push ax 
sub cx,2
fib: 
    mov ax,num1
    mov bx,num2
    add ax,bx
    push ax
    mov num2,ax
    mov num1,bx
    loop fib

gotoxy 0,3    
mov cx,n
ff:
    pop ax
    call print_num_uns
    printn
    loop ff  

ret       
num2 dw 0d
num1 dw 0d
n dw 0d
define_print_num_uns
define_print_string
define_scan_num   
msg db "enter the number of fibo required:",0
ret





 ;lcm of the two numbers
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here    
lea si,msg 
call print_string
call scan_num
gotoxy 0,2
;mov cx,21
mov num1,cx
lea si,msg1      
call print_string
call scan_num
;mov cx,3
mov num2,cx
mov ax,num1
mov bx,num2

cmp ax,bx
jl hello
jmp hell
hello:
    mov num1,bx
    mov num2,ax

hell:
    mov ax,num1 
    mov num3,ax
    mov bx,num2
    mov cx,num1
    
lcm: 
    mov count,0d
    mov dx,0h
    mov num3,ax
    div bx
    cmp dx,0
    jne h
        mov dx,0h
        inc count
        mov ax,num3
        div cx
        cmp dx,0
        jne h
            inc count
            cmp count,2d
            je llcm
    h:
    mov ax,num3
    inc ax
    jmp lcm
llcm:  
    gotoxy 3,3
    mov ax,num3
    call print_num_uns
    
ret
num1 dw 0d
num2 dw 0d
num3 dw 0d  
count dw 0d
define_scan_num
define_print_num_uns
define_print_string   
msg db "enter the first number:",0
msg1 db "enter the second number:",0
ret    

        
    
    
 







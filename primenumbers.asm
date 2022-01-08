
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;program for to print the prime numbers between two numbers
include "emu8086.inc"
org 100h

; add your code here   
lea si,msg
call print_string
call scan_num
;mov cx,3   
gotoxy 2,2
mov num1,cx 
lea si,msg1
call print_string
call scan_num
;mov cx,10
mov num2,cx

mov cx,num1 
mov num,0d
outer:
     
    mov num3,cx  
    mov ax,cx
    mov bx,2
    isprime:  
        cmp bx,num3
        je ex
        mov ax,num3 
        mov dx,0h 
        div bx
        cmp dx,0
        je break1
        inc bx
        cmp bx,num3  
        jne isprime  
        ex:
        mov cx,num
        inc cx
        mov num,cx
        push num3
    break1:
        mov cx,num3
        inc cx
    cmp num2,cx
    jne outer

mov cx,num
gotoxy 3,3   
break:
    l:
        pop ax    
        printn
        call print_num_uns
        LOOP l
      
        
    
        
            

ret 
num dw 0d
num1 dw 0d
num2 dw 0d
num3 dw 0d 
define_print_num_uns 
define_print_string
define_scan_num  
msg db "enter the start digit:",0
msg1 db "enter the last digit:",0
ret                    






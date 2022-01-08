
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


;program for to print the number given in decimal to binary
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num

mov bx,cx
mov cx,2  
mov num,bx 
mov num1,0
mov ax,num
binary:  
   mov dx,0h 
   div num6 
   mov num2,ax
   mov num5,dx
   cmp dx,0
   je bin  
        mov ax,num5
        mul num3
        add ax,num1
        mov num1,ax
        ;print "0"
        jmp bb
   bin:
        mov ax,num5
        mul num3
        ;print "1"
        add ax,num1
        mov num1,ax  
   bb:
   mov ax,num3
   mul num4 
   mov num3,ax
   mov ax,num2
   cmp ax,0
   jne binary
 
mov ax,num1
gotoxy 2,2
call print_num_uns
   
        
        
   
    
ret     
num dw 2d
num1 dw 0d
num2 dw 0d
num3 dw 1d  
num4 dw 10d 
num5 dw 0d 
num6 dw 2d
define_print_num_uns
define_print_string
define_scan_num
msg db "enter the numebr:",0

ret





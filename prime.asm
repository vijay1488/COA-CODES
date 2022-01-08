
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here   
lea si,msg 
call print_string

call scan_num
gotoxy 2,2
mov ax,cx
mov bx,2   
cmp ax,2
je label1
prime:
     mov dx,0h
     div bx
     cmp dx,0
     je label
     inc bx 
     mov ax,cx
     cmp bx,ax
     jne prime:
       
     
     
     
label1:
    lea si,msg1
    call print_string
    ret     
     

label:
    lea si,msg2
    call print_string
    ret




ret

msg db "enter the number",0
msg1 db "prime",0
msg2 db "not prime",0
define_scan_num    
define_print_string
ret



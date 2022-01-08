
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
 
call scan_num
gotoxy 2,2
mov ax,1
natural:
    
    call print_num_uns
    inc ax
    cmp ax,cx
    jne natural
call print_num_uns
   
ret
msg db "enter the number of numbers to be printed:",0
define_print_string
define_print_num_uns
define_scan_num
ret




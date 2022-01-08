
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here
lea si,msg
call print_string

call scan_num
mov ax,cx
mov num,cx
mov bx,16d   
gotoxy 2,2
dectobin:
    shl ax,1
    mov num,ax;
    dec bx
    jc bin:
        print "0"
        jmp bb
    bin:
        print "1"
    bb:
    mov ax,num
    cmp bx,0
    jne dectobin

ret             
num dw 0d
msg db "enter the number",0
define_print_string
define_scan_num
define_print_num_uns
ret





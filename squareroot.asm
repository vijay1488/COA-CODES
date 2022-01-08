
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num
;mov cx,729
mov num,cx

mov bx,2
square:
    mov ax,num
    mov dx,0h
    div bx
    cmp dx,0
    jne hello
        mov ax,bx
        mul ax
        cmp ax,num
        je done
    hello:
        inc bx
        cmp bx,num
        jne square


notdone:
    gotoxy 2,3
    mov ax,0
    lea si,msg1
    call print_string  
    ret
done:         
    gotoxy 2,2
    mov ax,bx       
    call print_num_uns 
    ret
    

ret
num dw 0d 
msg db "enter the number:",0
msg1 db "not a perfect square",0
define_print_num_uns
define_print_string
define_scan_num
ret





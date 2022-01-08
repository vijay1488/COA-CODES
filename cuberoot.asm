
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;program for the cube root
include "emu8086.inc"

org 100h

; add your code here 
lea si,msg
call print_string
call scan_num
;mov cx,125
mov num,cx

mov bx,2
cube:
    mov ax,num
    mov dx,0d
    div bx
    cmp dx,0
    jne hello
        mov ax,bx
        mul bx
        mul bx
        cmp ax,num
        je done
    hello:
        inc bx
        cmp ax,num
        jge notdone
        cmp bx,num
        jne cube
 
notdone:
    mov ax,0 
    lea si,msg1
    call print_string
    ret
done:
    mov ax,bx    
    call print_num_uns
    ret

ret    
num dw 0d    
msg db "enter the numeber:",0
msg1 db "not a perfect cube",0
define_print_num_uns
define_scan_num
define_print_string






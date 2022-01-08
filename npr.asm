
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;program for to print npr
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num
;mov cx,10
mov n,cx
lea si,msg1
call print_string
call scan_num
;mov cx,5
mov r,cx

mov ax,n
mov bx,r
sub ax,bx
mov r,ax
mov cx,r
mov ax,n
mov bx,n

npr:
    mov dx,0
    dec bx
    cmp cx,bx
    je h
    mul bx
    jmp npr
   
h:           
    call print_num_uns
    ret
   
    

ret
n dw 0d
r dw 0d 
msg db "enter the n value:",0
msg1 db "enter the r value:",0
define_print_string
define_print_num_uns
define_scan_num
ret





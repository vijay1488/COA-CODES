
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string

call scan_num
;mov cx,1d
mov bx,0h  
mov num,cx
mov ax,cx 
mov cx,10
armstrong:
    mov dx,0h
    div cx 
    mov num1,ax
    mov rem,dx
    mov ax,dx
    mul rem
    
    mul rem
    add bx,ax
    mov ax,num1
    cmp ax,0
    je ll
    jmp armstrong
   
ll:  
    gotoxy 2,2
    cmp num,bx
    jne notarm
    lea si,msg1
    call print_string
    ret
notarm:
    gotoxy 2,2
    lea si,msg2
    call print_string
    ret
   
ret
num dw 10d
num1 dw 10d   
rem dw 0d
msg db "enter the number:",0
msg1 db "armstrong",0
msg2 db "not armstrong",0
define_print_string
define_scan_num        


ret





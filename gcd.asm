
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num
gotoxy 2,2
mov num1,cx
lea si,msg1
call print_string
call scan_num
mov num2,cx
mov ax,num1
mov bx,num2
cmp ax,bx
jng hel
    mov num1,bx
    mov num2,ax
hel:
    mov num3,ax
   
    
gcd: 
    mov count,0h
    mov dx,0h
    mov ax,num1
    div num3
    cmp dx,0
    jne hello 
        inc count
        mov dx,0h
        mov ax,num2
        div num3
        cmp dx,0
        jne hello
            inc count
            cmp count,2
            je gcd_done
    hello:
    dec num3
    cmp num3,1
    jne gcd
gcd_done: 
    gotoxy 3,3
    mov ax,num3
    call print_num_uns
    
ret
num1 dw 0h
num2 dw 0h
num3 dw 0h
count dw 0h 
msg db "enter the first number:",0
msg1 db "enter the second number:",0
define_print_num_uns
define_print_string
define_scan_num

        
        
    

ret





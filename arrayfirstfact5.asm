
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;find the factorial of first five numbers
include "emu8086.inc"
org 100h

; add your code here
mov ax,1
mov bx,1
mov cx,5
mov dx,0      
mov si,0
factorial:
    mov array[si],ax 
    add si,2
    inc bx
    mul bx
    loop factorial
 
mov si,0
mov cx,5
printf:
    mov ax,array[si]
    add si,2
    call print_num_uns  
    print 0AH
    print 0DH
    loop printf
                                         
                                         
ret                  
define_print_num_uns
array dw 5 DUP<0>
n dw 10 
ret





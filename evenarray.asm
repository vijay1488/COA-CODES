
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;the program for the print the even numbers of the given array
include "emu8086.inc"
org 100h

; add your code here 

mov cx,6
mov si,0
mov ax,0  
mov bx,2
lo:
    mov al,array[si] 
    mov dx,0
    div bx
    cmp dx,0
    jne hello
        mov al,array[si]
        call print_num_uns
    hello:
        inc si
    loop lo
    
ret
define_print_num_uns
array db 1,2,3,4,5,6
ret




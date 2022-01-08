
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 

mov si,0
mov cx,5
mov ax,0
lo:
    mov al,array[si]  
    add bl,al
   ; call print_num_uns
    inc si
    loop lo 
    mov al,bl
    call print_num_uns

ret 
define_print_num_uns
array db 1,2,3,4,5
sum db 0
ret




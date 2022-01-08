
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"

org 100h

; add your code here 
mov cx,0
mov ax,0
mov si,0
reverse:
    mov ax,array[si]
    push ax
    inc cx
    add si,2
    cmp si,n
    jne reverse

hello:
    pop ax
    call print_num_uns
    print " "
    loop hello

ret
define_print_num_uns
array dw 1,2,3,4,5
n dw 10
ret





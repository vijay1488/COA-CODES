
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"

; add your code here 
data segment
    array dd 0,1,2,3,4,5,6,7,8
    n dd 9
    sum dd 0
    data ends
code segment
    start:
        mov ax,data
        mov ds,ax
        mov si,0
        mov ax,0 
        mov dx,n
        suming:
            add ax,array[si]
            inc si 
            mov cx,si
            cmp cx,dx
            je bbb
            jmp suming
        bbb:
            call print_num
           
     ;end start
  code ends 
ret
define_print_num
define_print_num_uns
ret
end start





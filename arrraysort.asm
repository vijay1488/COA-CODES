; program for to print the numbers of the array in ascending order

include "emu8086.inc"
org 100h

mov si,0
mov ax,0
mov bx,0
mov cx,9
mov dx,0
outer:
    push cx 
    mov si,0
    mov di,2
    inner:  
        mov ax,arr[si] 
        cmp ax,arr[di]
        jng hai:
            push arr[si]
            push arr[di]
            pop arr[si]
            pop arr[di]
        hai:
            add si,2
            add di,2
           
        loop inner
    pop cx
    loop outer
hello:            
mov cx,10
mov si,0
printf:
    mov ax,arr[si]
    call print_num_uns
    print " "
    add si,2 
    loop printf
             
        
hlt
ret           
define_print_num_uns
arr dw 10,4,1,8,5,9,2,6,3,7
ret
  
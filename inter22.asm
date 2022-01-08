
;program for to determine the perfect number in array

include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,10
mov dx,0 
mov si,0
mov n,0
outer:
    mov ax,arr[si]
    push ax
    mov bx,1
    mov n,1
    inner:
        pop ax
        push ax
        mov dx,0
        inc bx
        cmp ax,bx
        je hello: 
            div bx
            cmp dx,0
            jne hai:
                add n,bx
        hai:
            jmp inner
    hello:
        pop ax
        cmp ax,n
        jne h                   
            print " "
            call print_num_uns
    h:
        add si,2
        cmp cx,si
        jne outer
 
hlt
ret
define_print_num_uns  
n dw 0
arr dw 21,28,9,6,8
ret
        
           
    
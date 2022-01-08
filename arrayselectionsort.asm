;program for to implement the selection sort

include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,18
mov dx,0
mov si,0
mov n,20
outer:
    mov ax,arr[si]
    mov di,si   
    mov min,si
    mov bx,arr[si]
    add di,2
    inner:        
        cmp arr[di],bx
        jnl hello:
            mov min,di 
            mov bx,arr[di]
        hello:
            add di,2
            cmp n,di
            jne inner
    mov di,min
    push arr[si]
    push arr[di]
    pop arr[si]
    pop arr[di]
    add si,2
    cmp cx,si
    jne outer
   
   
mov si,0
printf:
    mov ax,arr[si]
    call print_num_uns
    print "  "
    add si,2
    cmp n,si
    jne printf
   
   
hlt
ret
define_print_num_uns
arr dw 10,1,9,2,8,3,7,4,6,5 
min dw 0   
n dw 0
ret
        
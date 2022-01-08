;program for to find the number which has repeated odd number of times in an array


include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,20
mov dx,0
mov si,2
mov di,0
outer:
    mov ax,arr[si]
    mov di,si
    inner:   
        sub di,2
        cmp arr[di],ax
        je hello:
            cmp di,0
            jne inner
        jmp hai
    hello:
        print "  "
        add si,2
        cmp cx,si
        jne outer
        hlt
        
    hai:
    mov bx,0          
    mov di,0
    inner1: 
        cmp arr[di],ax
        jne h
          inc bx
        h:
            add di,2
            cmp cx,di
            jne inner1
        mov dx,0
        mov ax,bx
        div n
        cmp dx,0
        je haii:  
             mov ax,arr[si]
             call print_num_uns
             print " "
        haii:
        add si,2
        cmp cx,si
        jne outer
hlt

ret
define_print_num_uns
arr dw 1,2,3,4,5,3,5,2,5,8 
n dw 2
ret
    
    
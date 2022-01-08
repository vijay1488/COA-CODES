;program for the insertion sort

include "emu8086.inc"
org 100h

mov si,2
mov ax,0
mov bx,0
mov cx,20
mov dx,0

outer:  
    mov ax,arr[si]
    mov di,si  
    push ax
    mov bx,arr[si]
    push di
    sub di,2
    inner: 
        cmp arr[di],bx
        jl hello     
            mov ax,arr[di]
            mov arr[si],ax
            sub si,2
            cmp di,0
            je hello
            sub di,2
            jmp inner
    hello:
       mov di,si
       pop si
       pop arr[di]
       add si,2
       cmp si,cx
       jne outer
      
mov si,0
printf:
    mov ax,arr[si]
    call print_num_uns
    print "  "
    add si,2
    cmp si,cx
    jne printf
   
   
hlt

ret
define_print_num_uns
arr dw 10,1,9,2,8,3,7,4,6,5 
ret
            
        
    
    

    
;program for the booth's algorithm
include "emu8086.inc"
org 100h

mov ax,0   ;ah=accumulator,al=q
mov al,4d
mov bx,0   ;bx=q(-1)
mov cx,8   ;count=cx
mov dx,0   ;dx=m
mov dx,0
mov n,5d
mov ddd,2
        
push ax
booths: 
    push ax 
    mov dx,0
    div ddd 
    pop ax
    cmp dx,0
    je hello
        cmp bx,1
        je hai
            sub ah,n 
            jmp hai
    hello:
        cmp bx,0
        je hai
            add ah,n
    hai:
        shl ax,1
        jnc hh
            shr ax,2
            jnc h   
                add ah,11000000b
                mov bx,1
                jmp algo
            h:                  
                add ah,11000000b
                mov bx,0
                jmp algo
        hh:
            shr ax,2
            jnc h1
                mov bx,1
                jmp algo
            h1:
                mov bx,0
                jmp algo
        algo:
            loop booths
         
call print_num_uns
hlt

ret
define_print_num_uns
n db 0   
ddd dw 2
ret
                
           
           
   
    
    
    


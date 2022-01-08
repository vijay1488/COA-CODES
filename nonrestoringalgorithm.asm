;program for the non-restored division algorithm
include "emu8086.inc"
org 100h

mov ah,0  ;ah=accumulator
mov al,32d  ;al=q(dividend)
mov bx,3d  ;bx=m
mov cx,8   ;cx=count

non-restored:
    cmp ah,0
    jl hai
        shl ax,1
        sub ah,bl
        jmp h
    hai:
        shl ax,1
        add ah,bl
        jmp h
    h:
        cmp ah,0
        jl hh
            add al,1
    hh:
        loop non-restored
  
cmp ah,0
jg hello
    add ah,bl
hello:
    mov cl,ah
    mov bl,al
    
mov ax,0
mov al,bl
print "quotient:"
call print_num_uns
printn
mov al,cl
print "remainder:"
call print_num_uns
printn

hlt
ret
define_print_num_uns
ret
;program for restoring algorithm division
include "emu8086.inc"
org 100h


mov al,0       ;a=ax
mov bl,3d      ;m=bx
mov cl,8d     ; count=cx
mov dl,32d     ;dx=q
mov n,bl
neg n         
         
restoring:
        shl dl,1
        jnc hai
          shl al,1
          add al,1
          jmp h
        hai:
          shl al,1
        h:
          add al,n
          cmp al,0
          jl how 
            add dl,1
            jmp ooo
          how:
            add al,bl       
            add dl,0
          ooo:
        loop restoring 

print "remainder: "
call print_num_uns
printn
mov ax,dx
print "quotient:  "
call print_num_uns
            

hlt
ret               
define_print_num_uns
n db 0
ret             
;mov ax,00110001b
;shl ax,1
;mov al,11111110b
;shr al,1
;rcl al,1
;rcr al,1
include "emu8086.inc"
mov ax,-19
;rcl ax,2
;mov bx,2
;div bx
;cmp dl,1  
;je label
rcl ax,1
jc label
    print "not negative"
    ret
label:
    print "negative"
    ret
    



;program to search the number in the array

include "emu8086.inc"
org 100h

; add your code here
mov si,0
mov ax,0
mov bx,n
mov cx,5
mov dx,n
search:
    mov ax,array[si]
    cmp ax,bx
    jne hello
        print "found"
        ret
    hello:
        add si,2
    loop search
print "not found"



ret                  
define_print_num_uns
array dw 10,3,22,4,122
n dw 11
ret











;program for to check whether the string is palindrome or not

include "emu8086.inc"
org 100h

mov si,0
mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov di,0

length:     
    
    cmp arr[si],'$'
    je come_out
    inc bx
    inc si
    jmp length

come_out:  
    mov si,0
    mov di,bx
    dec di
    palindrome:
        cmp si,di
        jg correct 
        mov al,arr[si]
        cmp al,arr[di]
        jne wrong
        inc si
        dec di
        jmp palindrome
    correct:
        print "palindrome"
        hlt
    wrong:
        print "not a palindrome"
        hlt

ret 
define_print_num_uns
arr db "abcdefedcba$"
ret
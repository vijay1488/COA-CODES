
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt 
;program for to convert the decimal number into the hexadecimal number
include "emu8086.inc"
org 100h   


; add your code here 
lea si,msg
call print_string
call scan_num
;mov cx,15
gotoxy 2,2
mov num,cx
mov num1,16d
mov ax,cx  
mov cx,0d
dectohex:
    mov dx,0 
    div num1
    mov num2,ax
    inc cx
    push dx
    mov ax,num2
    cmp ax,0
    jne dectohex

L:
    pop ax
    cmp ax,10d 
    jne h
        print "A"
        jmp hel
    h:
    cmp ax,11d
    jne i
        print "B"
        jmp hel
    i:
    cmp ax,12d
    jne j
        print "C"
        jmp hel
    j: 
    cmp ax,13d
    jne k
        print "D"
        jmp hel
    k:
    cmp ax,14d
    jne x
        print "E"
        jmp hel
    x:
    cmp ax,15d
    jne m
        print "F"
        jmp hel
    m:
        call print_num_uns
    hel:
    loop L
    
    

ret  
define_print_num_uns
define_print_string
define_scan_num
num dw 0d
num1 dw 0d
num2 dw 0d 
msg db "enter the number:",0
ret





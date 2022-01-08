
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
;program for the ncr 
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num
;mov cx,10
mov n,cx     
lea si,msg1  
call print_string
call scan_num
;mov cx,2
mov r,cx

mov ax,n
mov bx,r
sub ax,bx  
mov nr,ax
mov bx,r
cmp ax,bx
jle he 
    mov min,bx
    mov max,ax
    jmp h
he:
    mov min,ax
    mov max,bx
h:
mov bx,n
mov ax,1d 
nfact:
    mov dx,0d
    mul bx
    dec bx
    cmp bx,max
    jne nfact



mov nfc,ax
mov ax,1d
mov bx,1
mov cx,min
rfact:
    mov dx,0d
    mul bx
    inc bx
    cmp bx,cx
    jne rfact
    mul bx

mov rfc,ax

mov ax,nfc
mov bx,rfc
div bx 
gotoxy 2,2
call print_num_uns

ret
n dw 0d
r dw 0d 
nr dw 0d
nfc dw 0d
rfc dw 0d
min dw 0d
max dw 0d
define_print_num_uns
define_print_string
define_scan_num 
msg db "enter the n value:",0
msg1 db "enter the r value:",0
   

ret





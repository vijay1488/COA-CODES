
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here 
lea si,msg
call print_string
call scan_num   
;mov cx,6 
mov num,cx       
mov bx,0h
mov cx,1h
perfect:  
    mov ax,num
    mov dx,0h
    div cx
    cmp dx,0
    jne he
        add bx,cx
    he:
        inc cx
    cmp cx,num
    jne perfect

;mov ans,ax
cmp bx,num
je perfect_number:
    lea si,msg1
    call print_string
    ret
perfect_number:
    lea si,msg2
    call print_string
    ret
    
        
    
        

                               
msg db "enter the number:",0   
msg2 db "perfect number",0
msg1 db "non-perfect number",0 
num dw 0h
ans dw 0h
define_print_string
define_scan_num

ret



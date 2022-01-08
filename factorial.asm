
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
include "emu8086.inc"
org 100h

; add your code here
;lea si,msg1
;call print_string
;call scan_num
;mov ax,cx

;lea si,msg2
;call print_string
;call print_num




;MSG1 DB "enter the number:"
;MSG2 DB "FACTORIAL OF THE NUMBER IS:"


;DEFINE_SCAN_NUM
;DEFINE_PRINT_STRING
;DEFINE_PRINT_NUM
;DEFINE_PRINT_NUM_UNS
lea si,msg 

CALL PRINT_STRING

call scan_num
mov ax,cx
dec cx
fact:
    mul cx
    loop fact
    
gotoxy 2,2
lea si,msg1
call print_string
call print_num_uns 

RET

msg db "enter the number:" ,0  
msg1 db "factorial of the number is:",0
define_print_num_uns
define_scan_num
DEFINE_PRINT_STRING 

ret

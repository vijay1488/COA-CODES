;program for to find the sub string contained in the main string

include "emu8086.inc"
org 100h

mov ax,0
mov bx,0
mov cx,0
mov dx,0
mov si,0
mov di,0
mov n,0
mainlength:
    mov al,arr[si]
    cmp al,'$'
    je out_one
    inc bx
    add si,1
    jmp mainlength
  
out_one:
mov main,bx
mov bx,0 
mov si,0
sublength:
    mov al,brr[si]
    cmp al,'$'
    je out_two
    inc bx
    add si,1
    jmp sublength
   
out_two:
mov n,bx
sub main,bx
inc main
mov cx,main
              
mov si,0              
outer:
    mov al,arr[si]
    mov di,0
    cmp al,brr[di]
    push si 
    push cx
    jne hai:
        mov cx,n
        inner:
            mov al,brr[di]
            cmp arr[si],al
            jne out_three
                add si,1
                add di,1
                loop inner
        pop cx     
        pop si
            mov ax,si
            call print_num_uns
            jmp exit
     hai:
        out_three:
            pop cx
            pop si
            add si,1
            loop outer
           
           
exit:
    hlt
  
ret
define_print_num_uns
arr db "hello ramana$"
brr db "ramana$"
n dw 0 
main dw 0
ret
        
        
    
   

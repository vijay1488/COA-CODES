;include 'emu8086.inc'
;mov ax,11
;mov bx,2
;div bx   
;cmp dx,0 
;je x:
 ;   print 'odd'
 
    
;ret 
;x:
;    print 'even'


org 100h 
mov cx,0
mov ax,5
mov bx,10
add bx,ax
mov ax,bx
mov cx, 8
print: mov ah, 2
        mov dl,'0'
        test bl, 10000000b
        jz zero
        mov dl,'1'
zero:   int 21h
        shl bl,1
loop print

mov dl,'b'
int 21h

;mov ah,0
;int 16h  
mov dl,0ah
int 21h  
 
call print_al


ret 




print_al proc
    cmp al,0
    jne print_al_r
        push ax
        mov al,'0'
        mov ah,0eh
        int 10h
        pop ax
        ret
    print_al_r:
        pusha
        mov ah,0
        cmp ax,0
        je pn_done
        mov dl,10
        div dl
        call print_al_r
        mov al,ah
        add al,30h
        mov ah,0eh
        int 10h
        jmp pn_done
    pn_done:
        popa
        ret
endp
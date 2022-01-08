include "emu8086.inc" 
;mov al,25
;dec al
;cmp al,24
;jne he:
;    print "decremented"
;    ret
;he:
;    print "not decremented"
;    ret
;mov ax,203
;mov bl,4
;div bl ;al=50 ah=3
;ret

;mov ax,5
;;hlt   
;inc ax
;print "hellO"
;ret

;mov ah,0Eh
;mov al,'A'
;int 10h
;ret

;mov ah,0Eh
;mov al,'H'
;int 10h
;mov al,'E'
;int 10h
;mov al,'L'
;int 10h
;mov al,'L'
;int 10h
;mov al,'O'
;int 10h
;ret


;mov al,255
;add al,1
;jc label
;    print "no carry"
;    jmp exit
;label:
;    print "has carry"
;exit:
;    ret



;mov ax,17
;push ax
;mov bx,2
;div bx   
;mov cx,ax 
;cmp dx,0
;je prime:
;help:     
;    cmp cx,1
;    je label
    
;    pop ax
;    push ax
;    div cx  
;    cmp dx,0
;    je prime
;    loop help
;label:
;    print "prime" 
;    jmp l
;prime:
;    print "not prime "
;    jmp l
;l:
;    ret   






.Model medium
.STACK 100h
.DATA
Hello db "Hello World!$"

.CODE
main proc
	mov ax, DGROUP
	mov ds, AX
	
	mov ah, 09h
	lea dx, Hello
	int 21h
	
	mov ah, 4ch
	int 21h
main endp
end main
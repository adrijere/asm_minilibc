global strcspn:function

section .text
strcspn:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor r9, r9
	jmp mloop

mloop:
	mov al, [rdi + r9]
	cmp al, 0x0
	je end
	mov r8, rsi
check_loop:
	mov cl, [r8]
	cmp cl, al
	jne check_if
	jmp end
	
check_if:
	cmp cl, 0x0
	je end_loop
	inc r8
	jmp check_loop
	
end_loop:	
	inc r9
	jmp mloop

end:
	mov rax, r9
	leave
	ret
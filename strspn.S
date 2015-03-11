global strcspn:function

section .text
strcspn:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor rdx, rdx
	jmp mloop

mloop:
	cmp byte [rdi], 0x0
	je end_failure
	cmp byte [rdi + rax], 0x0
	je end
	cmp byte [rdi + rax], [rsi + rax]
	je add_cpt
	jmp mloop

add_cpt:
	inc rax
	inc rdx
	
end_failure:
	xor rax, rax
end:
	mov rax, rdx
	leave
	ret
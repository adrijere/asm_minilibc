global memcpy:function

section .text
memcpy:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor r8, r8

	cmp rsi, 0
	je end
	cmp rdi, 0
	je end
mloop:
	cmp rax, rdx
	je end
	mov byte r8b, [rsi + rax]
	mov byte [rdi + rax], r8b
	inc rax
	jmp mloop

end:
	xor rax, rax
	mov rax, rdi
	leave
	ret

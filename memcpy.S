global memcpy:function

section .text
memcpy:
	push rbp
	mov rbp, rsp
	xor rax, rax
	mov r8, rdi
	mov r9, rsi
	jmp mloop

mloop:
	mov bl, byte[rdi + rax]
	mov cl, byte[rsi + rax]
	add bl, cl
	cmp bl, r8
	je end

end:
	leave
	ret
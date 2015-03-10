global memset:function

section .text
memset:
	push rbp
	mov rbp, rsp
	xor rax, rax
	jmp mloop

mloop:
	mov bl, byte[rdi + rax]
	mov dl, byte[rsi + rax]
	add bl, dl
	inc rax
	cmp rax, rdx
	je end
	jmp mloop

end:
	leave
	ret
global strlen:function

section .text
strlen:
	push rbp
	mov rbp, rsp
	xor rax, rax
	jmp mloop

mloop:
	cmp byte[rdi + rax], 0x0
	je end
	inc rax
	jmp mloop

end:
	leave
	ret
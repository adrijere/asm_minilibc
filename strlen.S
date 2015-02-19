global strlen:function

section .text
strlen:
	push rbp
	mov rbp, rsp
	xor rax, rax
	jmp mloop

mloop:
	cmp byte[rdi + rax], 0
	je end
	inc rax
	jmp mloop

end:
	ret
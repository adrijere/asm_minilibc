global memset:function

section .text
memset:
	push rbp
	mov rbp, rsp

	xor rax, rax
mloop:
	cmp rax, rdx
	je end
	mov byte [rdi + rax], sil
	inc rax
	jmp mloop
end:
	xor rax, rax
	mov rax, rdi
	leave
	ret

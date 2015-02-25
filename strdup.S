	global my_strdup:function
	extern malloc

	section .text

my_strdup:
	;; Simple things
	push rbp
	mov rbp, rsp

	;; Paramètre dans rbx
	mov rbx, rdi
	xor rax, rax
	xor rcx, rcx
	mov rdi, 50
	call malloc wrt ..plt
	cmp rax, 0
	je end
	mov rax, rbx
end:
	leave
	ret

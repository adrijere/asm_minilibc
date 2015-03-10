global strstr:function

section .text
strstr:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor rcx, rcx
	jmp mloop

mloop:
	test rdi, rdi
	je end_failure
	test rsi, rsi
	je end_failure
	xor rbx, rbx
	xor rdx, rdx
	mov byte bl, [rdi + rax]
	mov byte dl, [rsi + rcx]
	cmp bl, dl
	jne init_rcx
	cmp byte [rsi + rcx], 0x0
	je end
	cmp byte [rdi + rax], 0x0
	je end_failure
	inc rax
	inc rcx
	jmp mloop

init_rcx:
	xor rcx, rcx
	
end_failure:
	xor rax, rax
end:
	sub rax, rcx
	leave
	ret

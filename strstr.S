global strstr:function

section .text
strstr:
	push rbp
	mov rbp, rsp
	xor rax, rax
	xor rcx, rcx
	jmp mloop

mloop:
	cmp byte[rdi + rax], rsi[rcx]
	je end
	cmp byte[rdi + rax], 0
	je end_failure
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	leave
	ret
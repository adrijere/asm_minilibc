global strchr:function

section .text
strchr:
	push rbp
	mov rbp, rsp
	xor rax, rax
	jmp mloop

mloop:
	cmp byte[rdi + rax], rsi
	je end
	cmp byte[rdi + rax], 0
	jmp end_failure
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	leave
	ret

	
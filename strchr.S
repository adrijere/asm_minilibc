global strchr:function

section .text
strchr:
	push rbp
	mov rbp, rsp
	mov rbx, rsi
	xor rax, rax
	jmp mloop

mloop:
	cmp byte [rdi + rax], 0x0
	jmp end_failure
	cmp byte [rdi + rax], bl
	je end
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	leave
	ret

	

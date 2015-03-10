global memcpy:function
	
section .text
memcpy:
	push rbp
	mov rbp, rsp
	xor rax, rax
	jmp mloop

mloop:
	cmp rax, rdx
	je end
	cmp rdx, 0x0
	je end_failure
	mov bl, [rdi + rax]
	mov [rsi + rax], bl
	cmp rbx, rdi
	je end
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	leave
	ret
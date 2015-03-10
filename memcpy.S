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
	mov byte bl, rdi + rax
	mov byte cl, rsi + rax
	add bl, cl
	cmp rbx, rdi
	je end
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	mov rax, rbx
	leave
	ret
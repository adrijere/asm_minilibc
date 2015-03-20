global memcpy:function

section .text
memcpy:
	push rbp
	mov rbp, rsp
	xor rax, rax
	cmp rsi, 0
	je end
	cmp rdi, 0
	je end
mloop:
	cmp al, dl
	je end
	cmp dl, 0
	je end_failure
	mov byte bl, [rsi + rax]
	mov byte [rdi + rax], bl
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	mov rax, rdi
	leave
	ret

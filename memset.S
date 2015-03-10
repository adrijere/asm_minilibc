global memset:function

section .text
memset:
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
	mov byte dl, rsi + rax
	add bl, dl
	inc rax
	jmp mloop

end_failure:
	xor rax, rax
end:
	leave
	ret
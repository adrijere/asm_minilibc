global strchr:function

section .text
strchr:
	push rbp
	mov rbp, rsp

	xor rax, rax
	mov rbx, rsi

mloop:
	cmp byte [rdi], 0
	je end_failure
	cmp byte [rdi], bl
	je return_pointer
	inc rdi
	jmp mloop

end_failure:
	xor rax, rax
	jmp end

return_pointer:
	mov rax, rdi
end:
	leave
	ret

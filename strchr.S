global strchr:function

section .text
strchr:
	push rbp
	mov rbp, rsp

	xor rax, rax

mloop:
	cmp byte [rdi], sil
	je return_pointer
	cmp byte [rdi], 0
	je end_failure
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

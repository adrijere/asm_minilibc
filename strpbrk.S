	global strpbrk
	section .text

strpbrk:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor rbx, rbx
	xor r12, r12

	cmp byte [rdi], 0
	je end
	jmp second_loop

loop:
	inc rdi
	xor r12, r12  		;remettre r12 à 0 pour pouvoir reboucler les caractères acceptés
	cmp byte [rdi], 0
	je end
	jmp second_loop

second_loop: 			;boucler les caractères acceptés
	cmp byte [rsi + r12], 0
	je loop
	mov rbx, [rsi + 12]
	cmp byte [rdi] , bl
	je end_success
	inc r12
	jmp second_loop

end_fail:
	xor rax, rax
	jmp end

end_success:
	mov rax, rdi
end:
	leave
	ret

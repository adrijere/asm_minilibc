global strcmp:function
	
section .text

strcmp:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor rcx, rcx

my_main_loop:
	mov byte al, [rdi]
	mov byte cl, [rsi]
	cmp al, cl
	jne sub
	cmp cl, 0
	je sub
	cmp al, 0
	je sub
	inc rdi
	inc rsi
	jmp my_main_loop
sub:
	sub al, cl
end:
	leave
	ret

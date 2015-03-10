	global my_strncmp
	section .text

strcmp:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor rcx, rcx
	xor r12, r12

my_main_loop:
	mov al, byte [rdi]
	mov bl, byte [rsi]
	cmp al, bl
	jne sub
	cmp bl, 0
	je end
	inc r12
	cmp dl, byte [r12]
	je sub
	inc rdi
	inc rsi
	jmp my_main_loop
sub:
	sub rax, rbx
end:
	leave
	ret

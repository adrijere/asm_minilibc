	global my_strcasecmp
	section .text

my_strcasecmp:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor rbx, rbx

my_main_loop:
	mov byte al, [rdi]
	mov byte bl, [rsi]
	cmp bl, 0
	je sub
	cmp al, 0
	je sub
	cmp al, bl
	jne look_cara
	inc rdi
	inc rsi
	jmp my_main_loop

look_cara:
	cmp byte al, 'z'
	jle second_look_cara
	cmp byte bl, 'z'
	jle second_look_cara
	jmp third_look_cara

second_look_cara:
	cmp byte al, 96
	jg change_cara_al
	cmp byte bl, 96
	jg change_cara_bl
	jmp third_look_cara

change_cara_al:
	sub al, 32
	jmp second_look_cara

change_cara_bl:
	sub bl, 32
	jmp second_look_cara

third_look_cara:
	cmp al, bl
	jne sub
	inc rdi
	inc rsi
	jmp my_main_loop

sub:
	sub rax, rbx
end:
	leave
	ret

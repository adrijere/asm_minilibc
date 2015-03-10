	global strcasecmp
	section .text

my_strcasecmp:
	push rbp
	mov rbp, rsp

	xor rax, rax
	xor rcx, rcx

my_main_loop:
	mov al, byte [rdi]
	mov bl, byte [rsi]
	cmp bl, 0
	je end
	cmp al, bl
	jne look_cara
	inc rdi
	inc rsi
	jmp my_main_loop

look_cara:
	cmp al, 96
	jg second_look_cara
	cmp bl, 96
	jg second_look_cara
	jmp third_look_cara
second_look_cara:
	cmp al, 'z'
	jle change_cara_al
	cmp bl, 'z'
	jle change_cara_bl
	jmp third_look_cara

change_cara_al:
	sub al, 32
	jmp second_look_cara

change_cara_bl:
	sub bl, 32
	jmp second_look_cara

third_look_cara:
	cmp al, bl
	je my_main_loop+7
sub:
	sub rax, rbx
end:
	leave
	ret

global strstr:function

section .text
strstr:
	push rbp
	mov rbp, rsp
	jmp mloop

mloop:
	mov al, [rdi]
	cmp al, [rsi]
	je init_rcx

check:
	cmp al, 0x0
	je end_failure
	inc rdi
	jmp mloop

find:
	mov rax, rdi
	jmp end

init_rcx:
	xor rcx, rcx
sloop:
	mov al, [rdi + rcx]
	mov r8b, [rsi + rcx]
	cmp r8b, 0x0
	je find
	cmp al, r8b
	jne check
	inc rcx
	jmp sloop
	
end_failure:
	xor rax, rax
end:
	leave
	ret

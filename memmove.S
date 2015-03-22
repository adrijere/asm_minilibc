global memmove:function

section .text
memmove:
	        push rbp
	        mov rbp, rsp
	        mov rax, rdx
		sub rax, 1
		mov r9, -1
		mov r10, -1
		jmp mloop

mloop:
	        cmp rdi, rsi
		jg sloop
		xor rax, rax
		mov r9, 1
		mov r10, rdx
	
sloop:
		cmp rax, r10
		jz end
		mov r8b, [rsi +rax]
		mov [rdi + rax], r8b
		add rax, r9
		jmp sloop
	
end:
		mov rax, rdi
		leave
	        ret

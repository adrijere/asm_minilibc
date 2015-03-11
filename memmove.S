global memmove:function

section .text
memmove:
	        push rbp
	        mov rbp, rsp
	        xor rax, rax
	        jmp mloop

mloop:
	        cmp rax, rdx
	        je end
	        cmp rdx, 0x0
	        je end_failure
	        mov byte bl, [rdi + rax]
	        mov byte cl, [rsi + rax]
		add bl, cl
	        cmp rbx, rdi
	        je sloop
	        inc rax
	        jmp mloop

sloop:
		mov byte r8b, [rsi + rax]
		cmp rax, rdx
		je final_copy

final_copy:
		mov r8b, cl
		add bl, cl

end_failure:
	        xor rax, rax
end:
		mov rax, rbx
		leave
	        ret

.global __syscall
.type __syscall,%function
__syscall:
	movq %rdi,%rax
	movq %rsi,%rdi
	movq %rdx,%rsi
	movq %rcx,%rdx
	movq %r8,%r10
	movq %r9,%r8
	movq 8(%rsp),%r9
	syscall
	ret
.size __syscall,.-__syscall
.section .note.GNU-stack,"",@progbits

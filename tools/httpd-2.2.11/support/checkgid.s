	.file	"checkgid.c"
	.section	.rodata
.LC0:
	.string	"%s: group '%s' not found\n"
.LC1:
	.string	"%s: invalid group '%s'\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L2
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L3
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L4
.L3:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getgrnam
	movq	%rax, -16(%rbp)
.L4:
	cmpq	$0, -16(%rbp)
	jne	.L5
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$-1, -8(%rbp)
	jmp	.L6
.L5:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	setgid
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L6
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rcx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	perror
	movl	$-1, -8(%rbp)
.L6:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L7
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

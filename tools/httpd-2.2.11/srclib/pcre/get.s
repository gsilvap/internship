	.file	"get.c"
	.text
	.globl	pcre_get_stringnumber
	.type	pcre_get_stringnumber, @function
pcre_get_stringnumber:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_fullinfo
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L2
	movl	-8(%rbp), %eax
	jmp	.L11
.L2:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jg	.L4
	movl	$-7, %eax
	jmp	.L11
.L4:
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_fullinfo
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L5
	movl	-8(%rbp), %eax
	jmp	.L11
.L5:
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_fullinfo
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L6
	movl	-8(%rbp), %eax
	jmp	.L11
.L6:
	movl	$0, -4(%rbp)
	jmp	.L7
.L10:
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rdx
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	jmp	.L11
.L8:
	cmpl	$0, -28(%rbp)
	jle	.L9
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.L7
.L9:
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
.L7:
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L10
	movl	$-7, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pcre_get_stringnumber, .-pcre_get_stringnumber
	.globl	pcre_copy_substring
	.type	pcre_copy_substring, @function
pcre_copy_substring:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L13
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L14
.L13:
	movl	$-7, %eax
	jmp	.L15
.L14:
	sall	-40(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cmpl	-52(%rbp), %eax
	jle	.L16
	movl	$-6, %eax
	jmp	.L15
.L16:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	pcre_copy_substring, .-pcre_copy_substring
	.globl	pcre_copy_named_substring
	.type	pcre_copy_named_substring, @function
pcre_copy_named_substring:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pcre_get_stringnumber
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L18
	movl	-4(%rbp), %eax
	jmp	.L19
.L18:
	movq	-64(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	16(%rbp), %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pcre_copy_substring
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	pcre_copy_named_substring, .-pcre_copy_named_substring
	.globl	pcre_get_substring_list
	.type	pcre_get_substring_list, @function
pcre_get_substring_list:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$8, -8(%rbp)
	movl	-52(%rbp), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L21
.L22:
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$9, %eax
	movl	%eax, -8(%rbp)
	addl	$2, -4(%rbp)
.L21:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L22
	movq	pcre_malloc(%rip), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L23
	movl	$-6, %eax
	jmp	.L24
.L23:
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-52(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L25
.L26:
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-32(%rbp), %eax
	cltq
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
	addl	$2, -4(%rbp)
.L25:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L26
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	pcre_get_substring_list, .-pcre_get_substring_list
	.globl	pcre_free_substring_list
	.type	pcre_free_substring_list, @function
pcre_free_substring_list:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	pcre_free(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	pcre_free_substring_list, .-pcre_free_substring_list
	.globl	pcre_get_substring
	.type	pcre_get_substring, @function
pcre_get_substring:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	cmpl	$0, -40(%rbp)
	js	.L29
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L30
.L29:
	movl	$-7, %eax
	jmp	.L31
.L30:
	sall	-40(%rbp)
	movl	-40(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	pcre_malloc(%rip), %rax
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L32
	movl	$-6, %eax
	jmp	.L31
.L32:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-4(%rbp), %eax
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	pcre_get_substring, .-pcre_get_substring
	.globl	pcre_get_named_substring
	.type	pcre_get_named_substring, @function
pcre_get_named_substring:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pcre_get_stringnumber
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L34
	movl	-4(%rbp), %eax
	jmp	.L35
.L34:
	movq	-64(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	pcre_get_substring
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	pcre_get_named_substring, .-pcre_get_named_substring
	.globl	pcre_free_substring
	.type	pcre_free_substring, @function
pcre_free_substring:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	pcre_free(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	pcre_free_substring, .-pcre_free_substring
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

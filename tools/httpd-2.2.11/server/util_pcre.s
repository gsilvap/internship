	.file	"util_pcre.c"
	.section	.rodata
.LC0:
	.string	""
.LC1:
	.string	"internal error"
.LC2:
	.string	"failed to get memory"
.LC3:
	.string	"bad argument"
.LC4:
	.string	"match failed"
	.align 32
	.type	pstring, @object
	.size	pstring, 40
pstring:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
.LC5:
	.string	"unknown error code"
.LC6:
	.string	" at offset "
.LC7:
	.string	"%s%s%-6d"
	.text
	.globl	ap_regerror
	.type	ap_regerror, @function
ap_regerror:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	cmpl	$4, -36(%rbp)
	jg	.L2
	movl	-36(%rbp), %eax
	cltq
	movq	pstring(,%rax,8), %rax
	jmp	.L3
.L2:
	movl	$.LC5, %eax
.L3:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	$.LC6, -24(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L4
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$-1, %eax
	je	.L4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$6, %rax
	jmp	.L5
.L4:
	movl	$0, %eax
.L5:
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L6
	cmpq	$0, -32(%rbp)
	je	.L7
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-64(%rbp), %rax
	ja	.L7
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	%esi, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$.LC7, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	jmp	.L6
.L7:
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-64(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L6:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_regerror, .-ap_regerror
	.globl	ap_regfree
	.type	ap_regfree, @function
ap_regfree:
.LFB3:
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
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_regfree, .-ap_regfree
	.globl	ap_regcomp
	.type	ap_regcomp, @function
ap_regcomp:
.LFB4:
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
	movl	$0, -4(%rbp)
	movl	-52(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L11
	orl	$1, -4(%rbp)
.L11:
	movl	-52(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L12
	orl	$2, -4(%rbp)
.L12:
	leaq	-20(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movl	-4(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	pcre_compile
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movl	$3, %eax
	jmp	.L15
.L13:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_info
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_regcomp, .-ap_regcomp
	.globl	ap_regexec
	.type	ap_regexec, @function
ap_regexec:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$216, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movl	%r8d, -212(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	-212(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L17
	orl	$128, -24(%rbp)
.L17:
	movl	-212(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L18
	orl	$256, -24(%rbp)
.L18:
	movq	-184(%rbp), %rax
	movq	$-1, 16(%rax)
	cmpq	$0, -200(%rbp)
	je	.L19
	cmpq	$10, -200(%rbp)
	ja	.L20
	leaq	-176(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L19
.L20:
	movq	-200(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L21
	movl	$2, %eax
	jmp	.L42
.L21:
	movl	$1, -36(%rbp)
.L19:
	movq	-200(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, %ebx
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %esi
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movq	-192(%rbp), %rdx
	pushq	%rbx
	pushq	-32(%rbp)
	movl	%ecx, %r9d
	movl	$0, %r8d
	movl	%esi, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_exec
	addq	$16, %rsp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L23
	movq	-200(%rbp), %rax
	movl	%eax, -20(%rbp)
.L23:
	cmpl	$0, -20(%rbp)
	js	.L24
	movq	$0, -48(%rbp)
	jmp	.L25
.L26:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	salq	$3, %rax
	leaq	4(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, 4(%rdx)
	addq	$1, -48(%rbp)
.L25:
	movl	-20(%rbp), %eax
	cltq
	cmpq	-48(%rbp), %rax
	ja	.L26
	cmpl	$0, -36(%rbp)
	je	.L27
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L27:
	jmp	.L28
.L29:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-208(%rbp), %rax
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-208(%rbp), %rax
	addq	%rcx, %rax
	movl	$-1, 4(%rax)
	movl	4(%rax), %eax
	movl	%eax, (%rdx)
	addq	$1, -48(%rbp)
.L28:
	movq	-48(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jb	.L29
	movl	$0, %eax
	jmp	.L42
.L24:
	cmpl	$0, -36(%rbp)
	je	.L30
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L30:
	movl	-20(%rbp), %eax
	addl	$11, %eax
	cmpl	$10, %eax
	ja	.L31
	movl	%eax, %eax
	movq	.L33(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L33:
	.quad	.L32
	.quad	.L34
	.quad	.L31
	.quad	.L35
	.quad	.L31
	.quad	.L36
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.quad	.L40
	.quad	.L41
	.text
.L41:
	movl	$4, %eax
	jmp	.L42
.L40:
	movl	$3, %eax
	jmp	.L42
.L39:
	movl	$3, %eax
	jmp	.L42
.L38:
	movl	$3, %eax
	jmp	.L42
.L37:
	movl	$1, %eax
	jmp	.L42
.L36:
	movl	$2, %eax
	jmp	.L42
.L35:
	movl	$2, %eax
	jmp	.L42
.L34:
	movl	$3, %eax
	jmp	.L42
.L32:
	movl	$3, %eax
	jmp	.L42
.L31:
	movl	$1, %eax
.L42:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_regexec, .-ap_regexec
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

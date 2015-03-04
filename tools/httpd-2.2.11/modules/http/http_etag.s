	.file	"http_etag.c"
	.section	.rodata
.LC0:
	.string	"0123456789abcdef"
	.text
	.type	etag_uint64_to_hex, @function
etag_uint64_to_hex:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$60, -8(%rbp)
.L4:
	movl	-8(%rbp), %eax
	movq	-32(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	andl	$15, %eax
	movw	%ax, -10(%rbp)
	cmpw	$0, -10(%rbp)
	je	.L2
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzwl	-10(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	.LC0(%rdx), %edx
	movb	%dl, (%rax)
	movl	$1, -4(%rbp)
	jmp	.L3
.L2:
	cmpl	$0, -4(%rbp)
	je	.L3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzwl	-10(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	.LC0(%rdx), %edx
	movb	%dl, (%rax)
.L3:
	subl	$4, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	andl	$15, %edx
	movzbl	.LC0(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	etag_uint64_to_hex, .-etag_uint64_to_hex
	.section	.rodata
.LC1:
	.string	"omit"
.LC2:
	.string	"no-etag"
.LC3:
	.string	""
.LC4:
	.string	"W/"
	.text
	.globl	ap_make_etag
	.type	ap_make_etag, @function
ap_make_etag:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	-72(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	216(%rax), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	orq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L7
	movq	-72(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC1, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$.LC3, %eax
	jmp	.L8
.L7:
	cmpq	$0, -40(%rbp)
	jne	.L9
	movq	$14, -40(%rbp)
.L9:
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	$1000000, %rax
	jle	.L10
	cmpl	$0, -76(%rbp)
	jne	.L10
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L11
.L10:
	movq	$.LC4, -8(%rbp)
	movq	$3, -16(%rbp)
.L11:
	movq	-72(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L12
	movq	-16(%rbp), %rax
	leaq	54(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L13
	jmp	.L14
.L15:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L14:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L15
.L13:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$34, (%rax)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	andl	$4, %eax
	testq	%rax, %rax
	je	.L16
	movq	-72(%rbp), %rax
	movq	424(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	etag_uint64_to_hex
	movq	%rax, -32(%rbp)
	orq	$4, -48(%rbp)
.L16:
	movq	-40(%rbp), %rax
	andl	$8, %eax
	testq	%rax, %rax
	je	.L17
	cmpq	$0, -48(%rbp)
	je	.L18
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$45, (%rax)
.L18:
	movq	-72(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	etag_uint64_to_hex
	movq	%rax, -32(%rbp)
	orq	$8, -48(%rbp)
.L17:
	movq	-40(%rbp), %rax
	andl	$2, %eax
	testq	%rax, %rax
	je	.L19
	cmpq	$0, -48(%rbp)
	je	.L20
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$45, (%rax)
.L20:
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	etag_uint64_to_hex
	movq	%rax, -32(%rbp)
.L19:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$34, (%rax)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L21
.L12:
	movq	-16(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	jmp	.L23
.L24:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L23:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L24
.L22:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$34, (%rax)
	movq	-72(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	etag_uint64_to_hex
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$34, (%rax)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L21:
	movq	-24(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_make_etag, .-ap_make_etag
	.section	.rodata
.LC5:
	.string	";"
.LC6:
	.string	"ETag"
	.text
	.globl	ap_set_etag
	.type	ap_set_etag, @function
ap_set_etag:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_make_etag
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L27
	jmp	.L25
.L26:
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_make_etag
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L29
	jmp	.L25
.L29:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L30
	addq	$3, -16(%rbp)
	jmp	.L31
.L30:
	addq	$1, -16(%rbp)
.L31:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC5, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L27:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_set_etag, .-ap_set_etag
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

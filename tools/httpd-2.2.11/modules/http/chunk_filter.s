	.file	"chunk_filter.c"
	.local	bad_gateway_seen
	.comm	bad_gateway_seen,1,1
	.section	.rodata
.LC0:
	.string	"%lx\r\n"
.LC1:
	.string	"\r\n"
.LC2:
	.string	"0\r\n\r\n"
	.text
	.globl	ap_http_chunk_filter
	.type	ap_http_chunk_filter, @function
ap_http_chunk_filter:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L2
.L22:
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L3
.L14:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L4
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L5
.L4:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_error, %rax
	jne	.L6
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$502, %eax
	jne	.L6
	movq	-168(%rbp), %rax
	movq	$bad_gateway_seen, 8(%rax)
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_flush, %rax
	jne	.L8
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.L9
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -8(%rbp)
	jmp	.L5
.L9:
	jmp	.L5
.L8:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	jne	.L10
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-160(%rbp), %rdx
	leaq	-152(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.L11
	movl	-124(%rbp), %eax
	jmp	.L21
.L11:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L7
	movq	-24(%rbp), %rdx
	movq	-160(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -8(%rbp)
	jmp	.L5
.L10:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
.L7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L3:
	movq	-176(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	jne	.L14
.L5:
	cmpq	$0, -24(%rbp)
	jle	.L15
	movq	-24(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$.LC0, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_bucket_transient_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-176(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-176(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdx
	movl	$2, %esi
	movl	$.LC1, %edi
	call	apr_bucket_immortal_create
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L16
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L15
.L16:
	cmpq	$0, -40(%rbp)
	je	.L17
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L15
.L17:
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-176(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-176(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
.L15:
	cmpq	$0, -32(%rbp)
	je	.L18
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdx
	movl	$5, %esi
	movl	$.LC2, %edi
	call	apr_bucket_immortal_create
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L18:
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	jne	.L19
	cmpq	$0, -32(%rbp)
	je	.L20
.L19:
	movl	-124(%rbp), %eax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$0, -8(%rbp)
.L2:
	cmpq	$0, -176(%rbp)
	jne	.L22
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_http_chunk_filter, .-ap_http_chunk_filter
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

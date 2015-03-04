	.file	"http_filters.c"
	.text
	.type	bail_out_on_error, @function
bail_out_on_error:
.LFB2:
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
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	ap_bucket_error_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	632(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	bail_out_on_error, .-bail_out_on_error
	.type	get_remaining_chunk_line, @function
get_remaining_chunk_line:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_length
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L4
	movl	-12(%rbp), %eax
	jmp	.L18
.L4:
	movq	-24(%rbp), %rax
	cmpq	$-1, %rax
	jne	.L6
	movl	$20014, %eax
	jmp	.L18
.L6:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L7
	movl	$11, %eax
	jmp	.L18
.L7:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L8
	movl	$28, %eax
	jmp	.L18
.L8:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L14:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L10
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L12
	movl	-12(%rbp), %eax
	jmp	.L18
.L12:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L11
	jmp	.L13
.L11:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L9:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L14
.L13:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L15
	movq	-64(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L16
.L15:
	movl	$11, %eax
	jmp	.L18
.L16:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L17
	movl	$11, %eax
	jmp	.L18
.L17:
	movq	-56(%rbp), %rax
	movq	$0, 72(%rax)
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	get_remaining_chunk_line, .-get_remaining_chunk_line
	.type	get_chunk_line, @function
get_chunk_line:
.LFB4:
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
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$31, %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jns	.L20
	movq	$0, -16(%rbp)
	jmp	.L21
.L20:
	movl	-4(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
.L21:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	leaq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_flatten
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L23
	movl	-8(%rbp), %eax
	jmp	.L26
.L23:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L25
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_remaining_chunk_line
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movl	$0, %eax
	jmp	.L26
.L22:
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_remaining_chunk_line
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_chunk_line, .-get_chunk_line
	.section	.rodata
.LC0:
	.string	"Transfer-Encoding"
.LC1:
	.string	"Content-Length"
.LC2:
	.string	"chunked"
.LC3:
	.string	"Unknown Transfer-Encoding: %s"
.LC4:
	.string	"http_filters.c"
	.align 8
.LC5:
	.string	"Unknown Transfer-Encoding: %s; using Content-Length"
.LC6:
	.string	"Invalid Content-Length"
	.align 8
.LC7:
	.string	"Requested content-length of %ld is larger than the configured limit of %ld"
.LC8:
	.string	"\r\n\r\n"
.LC9:
	.string	" "
.LC10:
	.string	"HTTP/1.1"
	.align 8
.LC11:
	.string	"Read content-length of %ld is larger than the configured limit of %ld"
	.text
	.globl	ap_http_filter
	.type	ap_http_filter, @function
ap_http_filter:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	%ecx, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$413, -32(%rbp)
	cmpl	$0, -196(%rbp)
	je	.L28
	cmpl	$1, -196(%rbp)
	je	.L28
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movq	-208(%rbp), %rdi
	movl	-200(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_get_brigade
	jmp	.L81
.L28:
	cmpq	$0, -24(%rbp)
	jne	.L30
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	$88, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$88, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L31
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ap_get_limit_req_body
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L32
.L31:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
.L32:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	240(%rax), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	240(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L33
	movq	-48(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L34
	movq	-24(%rbp), %rax
	movl	$2, 24(%rax)
	jmp	.L33
.L34:
	cmpq	$0, -56(%rbp)
	jne	.L35
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	$.LC3, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$262, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$501, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bail_out_on_error
	jmp	.L81
.L35:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	$.LC5, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$267, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	$0, -48(%rbp)
.L33:
	cmpq	$0, -56(%rbp)
	je	.L36
	cmpq	$0, -48(%rbp)
	jne	.L36
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	call	__errno_location
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	leaq	-168(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L37
	movq	-168(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L37
	movq	-168(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L38
.L37:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	$.LC6, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$285, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$413, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bail_out_on_error
	jmp	.L81
.L38:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L36
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	24(%rcx), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC7, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$295, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$413, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bail_out_on_error
	jmp	.L81
.L36:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	60(%rax), %eax
	cmpl	$3, %eax
	je	.L41
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movl	$0, %eax
	jmp	.L81
.L41:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	je	.L42
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jle	.L43
.L42:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	232(%rax), %eax
	testl	%eax, %eax
	je	.L43
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jle	.L43
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	664(%rax), %eax
	testl	%eax, %eax
	jne	.L43
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	112(%rax), %eax
	cmpl	$199, %eax
	jle	.L44
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jle	.L45
.L44:
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	jmp	.L43
.L45:
	movl	$100, %edi
	call	ap_get_status_line
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movl	$.LC8, %r8d
	movq	%rdx, %rcx
	movl	$.LC9, %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_flush_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	128(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
.L43:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L46
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movl	-200(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$1, -200(%rbp)
	jne	.L47
	cmpl	$0, -28(%rbp)
	jne	.L48
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L49
.L48:
	cmpl	$11, -28(%rbp)
	jne	.L47
.L49:
	movq	-24(%rbp), %rax
	movl	$3, 24(%rax)
	movl	$11, %eax
	jmp	.L81
.L47:
	cmpl	$0, -28(%rbp)
	jne	.L50
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	160(%rax), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_chunk_line
	movl	%eax, -28(%rbp)
	cmpl	$11, -28(%rbp)
	jne	.L51
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-24(%rbp), %rax
	movl	$3, 24(%rax)
	movl	-28(%rbp), %eax
	jmp	.L81
.L51:
	cmpl	$0, -28(%rbp)
	jne	.L50
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	get_chunk_size
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-2, %rax
	jne	.L50
	movl	$20014, -28(%rbp)
	movl	$503, -32(%rbp)
.L50:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	cmpl	$0, -28(%rbp)
	jne	.L52
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L53
.L52:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	-32(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bail_out_on_error
	jmp	.L81
.L53:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ap_get_mime_headers
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movl	$0, %eax
	jmp	.L81
.L46:
	jmp	.L54
.L30:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)
.L54:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L55
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L81
.L55:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L57
	cmpl	$1, %eax
	jb	.L83
	cmpl	$3, %eax
	ja	.L56
	jmp	.L82
.L57:
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movl	$0, %eax
	jmp	.L81
.L82:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L60
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movl	-200(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$1, -200(%rbp)
	jne	.L61
	cmpl	$0, -28(%rbp)
	jne	.L62
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L63
.L62:
	cmpl	$11, -28(%rbp)
	jne	.L61
.L63:
	movl	$11, %eax
	jmp	.L81
.L61:
	cmpl	$0, -28(%rbp)
	je	.L64
	movl	-28(%rbp), %eax
	jmp	.L81
.L64:
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	160(%rax), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_remaining_chunk_line
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	cmpl	$11, -28(%rbp)
	jne	.L65
	movl	-28(%rbp), %eax
	jmp	.L81
.L60:
	movl	$0, -28(%rbp)
.L65:
	cmpl	$0, -28(%rbp)
	jne	.L66
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movl	-200(%rbp), %edx
	movq	-40(%rbp), %rsi
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$1, -200(%rbp)
	jne	.L67
	cmpl	$0, -28(%rbp)
	jne	.L68
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L69
.L68:
	cmpl	$11, -28(%rbp)
	jne	.L67
.L69:
	movq	-24(%rbp), %rax
	movl	$3, 24(%rax)
	movl	$11, %eax
	jmp	.L81
.L67:
	movq	-24(%rbp), %rax
	movl	$2, 24(%rax)
	cmpl	$0, -28(%rbp)
	jne	.L70
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movl	160(%rax), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_chunk_line
	movl	%eax, -28(%rbp)
	cmpl	$11, -28(%rbp)
	jne	.L71
	movq	-24(%rbp), %rax
	movl	$3, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movl	-28(%rbp), %eax
	jmp	.L81
.L71:
	cmpl	$0, -28(%rbp)
	jne	.L70
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	get_chunk_size
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-2, %rax
	jne	.L70
	movl	$20014, -28(%rbp)
	movl	$503, -32(%rbp)
.L70:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
.L66:
	cmpl	$0, -28(%rbp)
	jne	.L72
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	-32(%rbp), %edx
	movq	-184(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bail_out_on_error
	movl	-28(%rbp), %eax
	jmp	.L81
.L73:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L74
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	ap_get_mime_headers
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movl	$0, %eax
	jmp	.L81
.L74:
	jmp	.L56
.L83:
	nop
.L56:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L75
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L76
.L75:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-208(%rbp), %rax
	jge	.L76
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
.L76:
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movq	-208(%rbp), %rdi
	movl	-200(%rbp), %ecx
	movl	-196(%rbp), %edx
	movq	-192(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L77
	movl	-28(%rbp), %eax
	jmp	.L81
.L77:
	leaq	-160(%rbp), %rdx
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_length
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-160(%rbp), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L78:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L79
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L79
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-192(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rdx)
.L79:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-160(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L80
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-184(%rbp), %rcx
	movq	24(%rcx), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC11, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$541, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$413, %edi
	call	ap_bucket_error_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-184(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movl	$1, 28(%rax)
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	movq	632(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L81
.L80:
	movl	$0, %eax
.L81:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_http_filter, .-ap_http_filter
	.type	get_chunk_size, @function
get_chunk_size:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	movq	$64, -16(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L85
	movq	$-2, %rax
	jmp	.L86
.L85:
	jmp	.L87
.L88:
	addq	$1, -40(%rbp)
.L87:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L88
	jmp	.L89
.L94:
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L90
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L90
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -20(%rbp)
	jmp	.L91
.L90:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L92
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jg	.L92
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$55, %eax
	movl	%eax, -20(%rbp)
	jmp	.L91
.L92:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L91
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jg	.L91
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$87, %eax
	movl	%eax, -20(%rbp)
.L91:
	movq	-8(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	subq	$4, -16(%rbp)
	addq	$1, -40(%rbp)
.L89:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L93
	cmpq	$0, -16(%rbp)
	jne	.L94
.L93:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L95
	cmpq	$0, -16(%rbp)
	jne	.L95
	movq	$-1, %rax
	jmp	.L86
.L95:
	movq	-8(%rbp), %rax
.L86:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	get_chunk_size, .-get_chunk_size
	.section	.rodata
.LC12:
	.string	": "
.LC13:
	.string	"\r\n"
	.text
	.type	form_header_field, @function
form_header_field:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$16, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$.LC12, (%rax)
	movq	-8(%rbp), %rax
	movq	$2, 8(%rax)
	addq	$16, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$16, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$.LC13, (%rax)
	movq	-8(%rbp), %rax
	movq	$2, 8(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-80(%rbp), %rdx
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_writev
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	form_header_field, .-form_header_field
	.type	uniq_field_values, @function
uniq_field_values:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
.L112:
	jmp	.L99
.L100:
	addq	$1, -8(%rbp)
.L99:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L100
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L100
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L101
	jmp	.L102
.L101:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L103
.L105:
	addq	$1, -8(%rbp)
.L103:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L104
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L104
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L105
.L104:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L106
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L106:
	movl	$0, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L107
.L110:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L108
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L108
	jmp	.L109
.L108:
	addl	$1, -20(%rbp)
	addq	$8, -16(%rbp)
.L107:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L110
.L109:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	.L111
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
.L111:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L112
.L102:
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	uniq_field_values, .-uniq_field_values
	.section	.rodata
.LC14:
	.string	"Vary"
	.text
	.type	fixup_vary, @function
fixup_vary:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC14, %ecx
	movq	%rax, %rsi
	movl	$uniq_field_values, %edi
	movl	$0, %eax
	call	apr_table_do
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jle	.L114
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fixup_vary, .-fixup_vary
	.type	send_all_header_fields, @function
send_all_header_fields:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L117
	movl	$0, %eax
	jmp	.L118
.L117:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.L119:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$16, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$.LC12, (%rax)
	movq	-16(%rbp), %rax
	movq	$2, 8(%rax)
	addq	$16, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$16, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$.LC13, (%rax)
	movq	-16(%rbp), %rax
	movq	$2, 8(%rax)
	addq	$16, -16(%rbp)
	addq	$24, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L119
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_writev
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	send_all_header_fields, .-send_all_header_fields
	.type	validate_status_line, @function
validate_status_line:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$4, %rax
	jbe	.L122
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	leaq	-8(%rbp), %rcx
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_strtoi64
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cltq
	cmpq	%rax, %rdx
	jne	.L122
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L122
	movq	-8(%rbp), %rax
	leaq	-3(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	%rax, %rdx
	je	.L120
.L122:
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	validate_status_line, .-validate_status_line
	.section	.rodata
.LC15:
	.string	"downgrade-1.0"
.LC16:
	.string	"force-response-1.0"
.LC17:
	.string	"HTTP/1.0"
	.text
	.type	basic_http_header_check, @function
basic_http_header_check:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L124
	jmp	.L123
.L124:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	validate_status_line
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L126
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, %edi
	call	ap_get_status_line
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
.L126:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jle	.L127
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L127
	movq	-8(%rbp), %rax
	movl	$1000, 80(%rax)
.L127:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jne	.L128
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L128
	movq	-16(%rbp), %rax
	movq	$.LC17, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
	jmp	.L123
.L128:
	movq	-16(%rbp), %rax
	movq	$.LC10, (%rax)
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	basic_http_header_check, .-basic_http_header_check
	.section	.rodata
.LC18:
	.string	"Date"
.LC19:
	.string	"Server"
	.text
	.type	basic_http_header, @function
basic_http_header:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-120(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L129
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -104(%rbp)
	movq	$.LC9, -96(%rbp)
	movq	$1, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	movq	$.LC13, -64(%rbp)
	movq	$2, -56(%rbp)
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$4, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_writev
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L132
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L133
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_recent_rfc822_date
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L133:
	movq	-8(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	form_header_field
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L134
	movq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	form_header_field
	jmp	.L135
.L134:
	jmp	.L135
.L132:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_recent_rfc822_date
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	form_header_field
	call	ap_get_server_banner
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	form_header_field
.L135:
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	basic_http_header, .-basic_http_header
	.globl	ap_basic_http_header
	.type	ap_basic_http_header, @function
ap_basic_http_header:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	basic_http_header_check
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	basic_http_header
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_basic_http_header, .-ap_basic_http_header
	.type	terminate_header, @function
terminate_header:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movabsq	$6998658023737535832, %rax
	movq	%rax, -48(%rbp)
	movabsq	$8030588976818122614, %rax
	movq	%rax, -40(%rbp)
	movabsq	$7454972649679450999, %rax
	movq	%rax, -32(%rbp)
	movw	$2573, -24(%rbp)
	movb	$0, -22(%rbp)
	movw	$2573, -64(%rbp)
	movb	$0, -62(%rbp)
	leaq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_brigade_length
	movq	-72(%rbp), %rax
	cmpq	$254, %rax
	jle	.L138
	movq	-72(%rbp), %rax
	cmpq	$257, %rax
	jg	.L138
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_write
.L138:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_write
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	terminate_header, .-terminate_header
	.section	.rodata
	.align 8
.LC20:
	.string	"TRACE denied by server configuration"
.LC21:
	.string	"error-notes"
	.align 8
.LC22:
	.string	"TRACE with a request body is not allowed"
	.align 8
.LC23:
	.string	"Extended TRACE request bodies cannot exceed 64k\n"
.LC24:
	.string	"message/http"
	.text
	.globl	ap_send_http_trace
	.type	ap_send_http_trace, @function
ap_send_http_trace:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$-1, -48(%rbp)
	movq	-120(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$6, %eax
	je	.L140
	movl	$-1, %eax
	jmp	.L160
.L140:
	jmp	.L142
.L143:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)
.L142:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L144
	movq	-120(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC20, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$405, %eax
	jmp	.L160
.L144:
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$2, %eax
	jne	.L145
	movl	$2, -4(%rbp)
	jmp	.L146
.L145:
	movl	$0, -4(%rbp)
.L146:
	movl	-4(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_setup_client_block
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L147
	cmpl	$413, -60(%rbp)
	jne	.L148
	movq	-120(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC22, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L148:
	movl	-60(%rbp), %eax
	jmp	.L160
.L147:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_should_client_block
	testl	%eax, %eax
	je	.L149
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jle	.L150
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	cmpq	$65536, %rax
	jle	.L151
	movq	-120(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC23, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$413, %eax
	jmp	.L160
.L151:
	movq	-120(%rbp), %rax
	movq	208(%rax), %rax
	addq	$32, %rax
	movq	%rax, -40(%rbp)
	jmp	.L152
.L150:
	movq	$73730, -40(%rbp)
.L152:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L153
.L156:
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	subq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	%rax, -24(%rbp)
.L153:
	cmpq	$0, -32(%rbp)
	je	.L154
	cmpq	$31, -40(%rbp)
	jbe	.L155
.L154:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_client_block
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jg	.L156
.L155:
	cmpq	$0, -48(%rbp)
	jle	.L157
	cmpq	$31, -40(%rbp)
	ja	.L157
	nop
.L158:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_client_block
	testq	%rax, %rax
	jg	.L158
	movq	-120(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC23, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$413, %eax
	jmp	.L160
.L157:
	cmpq	$0, -48(%rbp)
	jns	.L149
	movl	$400, %eax
	jmp	.L160
.L149:
	movq	-120(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r9d
	movl	$.LC13, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_brigade_putstrs
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rdx
	leaq	-112(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$form_header_field, %edi
	movl	$0, %eax
	call	apr_table_do
	movq	-72(%rbp), %rax
	movl	$.LC13, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_puts
	cmpq	$0, -32(%rbp)
	je	.L159
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
.L159:
	movq	-120(%rbp), %rax
	movq	632(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	$-2, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_send_http_trace, .-ap_send_http_trace
	.section	.rodata
.LC25:
	.string	"force-no-vary"
.LC26:
	.string	"1"
.LC27:
	.string	"no-etag"
.LC28:
	.string	"ETag"
.LC29:
	.string	"none"
.LC30:
	.string	"Content-Type"
.LC31:
	.string	"Content-Encoding"
.LC32:
	.string	"Content-Language"
.LC33:
	.string	"Expires"
.LC34:
	.string	"0"
.LC35:
	.string	"Keep-Alive"
.LC36:
	.string	"Connection"
.LC37:
	.string	"Set-Cookie2"
.LC38:
	.string	"Set-Cookie"
.LC39:
	.string	"Proxy-Authenticate"
.LC40:
	.string	"WWW-Authenticate"
.LC41:
	.string	"Warning"
.LC42:
	.string	"Cache-Control"
.LC43:
	.string	"Content-Location"
.LC44:
	.string	"CHUNK"
	.text
	.globl	ap_http_header_filter
	.type	ap_http_header_filter, @function
ap_http_header_filter:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L162
	cmpq	$0, -16(%rbp)
	jne	.L163
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L162
.L163:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L162
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	$0, %eax
	jmp	.L192
.L162:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L165
.L168:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_error, %rax
	jne	.L166
	cmpq	$0, -24(%rbp)
	jne	.L166
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L167
.L166:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_eoc, %rax
	jne	.L167
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L192
.L167:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L165:
	movq	-160(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L168
	cmpq	$0, -24(%rbp)
	je	.L169
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-40(%rbp), %rdx
	movl	-52(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
	movl	$-3, %eax
	jmp	.L192
.L169:
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-40(%rbp), %rax
	movq	$1, 160(%rax)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L192
.L170:
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	apr_is_empty_table
	testl	%eax, %eax
	jne	.L171
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	256(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 248(%rax)
.L171:
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L172
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-40(%rbp), %rax
	movl	$1000, 80(%rax)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC26, %edx
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L173
.L172:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fixup_vary
.L173:
	movq	-40(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L174
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L174:
	leaq	-112(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	basic_http_header_check
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_keepalive
	movq	-40(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	je	.L175
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC2, %edx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_mergen
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L175:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_content_type
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L176
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L176:
	movq	-40(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-40(%rbp), %rax
	movq	296(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L177:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	apr_is_empty_array
	testl	%eax, %eax
	jne	.L178
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -136(%rbp)
	jmp	.L179
.L185:
	movl	$0, -28(%rbp)
	jmp	.L180
.L183:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L181
	jmp	.L182
.L181:
	addl	$1, -28(%rbp)
.L180:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-28(%rbp), %eax
	jg	.L183
.L182:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-28(%rbp), %eax
	jne	.L179
	movq	-40(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rdx)
.L179:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L184
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_list_item
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L185
.L184:
	movq	-40(%rbp), %rax
	movq	304(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L178:
	movq	-40(%rbp), %rax
	movl	336(%rax), %eax
	testl	%eax, %eax
	je	.L186
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L186
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_recent_rfc822_date
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	-88(%rbp), %rdx
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L186:
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L187
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L187
	movq	-96(%rbp), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L187
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L187:
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	basic_http_header
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$304, %eax
	jne	.L188
	movq	-40(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-128(%rbp), %rax
	pushq	$0
	pushq	$.LC37
	pushq	$.LC38
	pushq	$.LC39
	pushq	$.LC40
	pushq	$.LC41
	pushq	$.LC14
	pushq	$.LC42
	pushq	$.LC33
	pushq	$.LC43
	movl	$.LC28, %r9d
	movl	$.LC35, %r8d
	movl	$.LC36, %ecx
	movq	%rax, %rsi
	movl	$form_header_field, %edi
	movl	$0, %eax
	call	apr_table_do
	addq	$80, %rsp
	jmp	.L189
.L188:
	movq	-40(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	send_all_header_fields
.L189:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	terminate_header
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L190
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L192
.L190:
	movq	-40(%rbp), %rax
	movq	$1, 160(%rax)
	movq	-40(%rbp), %rax
	movl	184(%rax), %eax
	testl	%eax, %eax
	je	.L191
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$.LC44, %edi
	call	ap_add_output_filter
.L191:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_http_header_filter, .-ap_http_header_filter
	.globl	ap_discard_request_body
	.type	ap_discard_request_body, @function
ap_discard_request_body:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L194
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$400, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$408, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$411, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$413, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$414, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$500, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$503, %eax
	je	.L194
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$501, %eax
	jne	.L195
.L194:
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
.L206:
	movq	-56(%rbp), %rax
	movq	640(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L197
	cmpl	$-3, -28(%rbp)
	jne	.L198
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-28(%rbp), %eax
	jmp	.L196
.L198:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	$400, %eax
	jmp	.L196
.L197:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L199
.L205:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L200
	movl	$1, -4(%rbp)
	jmp	.L201
.L200:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L203
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L203
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	$400, %eax
	jmp	.L196
.L203:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L199:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	jne	.L205
.L201:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	cmpl	$0, -4(%rbp)
	je	.L206
	movl	$0, %eax
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_discard_request_body, .-ap_discard_request_body
	.section	.rodata
.LC45:
	.string	"Unknown Transfer-Encoding %s"
	.align 8
.LC46:
	.string	"chunked Transfer-Encoding forbidden: %s"
	.align 8
.LC47:
	.string	"%s with body is not allowed for %s"
	.text
	.globl	ap_setup_client_block
	.type	ap_setup_client_block, @function
ap_setup_client_block:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 224(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 228(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 208(%rax)
	cmpq	$0, -8(%rbp)
	je	.L208
	movq	-8(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L209
	subq	$8, %rsp
	movq	-40(%rbp), %rax
	pushq	-8(%rbp)
	movl	$.LC45, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1446, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$501, %eax
	jmp	.L210
.L209:
	movq	-40(%rbp), %rax
	movl	224(%rax), %eax
	cmpl	$1, %eax
	jne	.L211
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC46, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1451, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	cmpq	$0, -16(%rbp)
	je	.L212
	movl	$400, %eax
	jmp	.L210
.L212:
	movl	$411, %eax
	jmp	.L210
.L211:
	movq	-40(%rbp), %rax
	movl	$1, 228(%rax)
	jmp	.L214
.L208:
	cmpq	$0, -16(%rbp)
	je	.L214
	movq	-40(%rbp), %rax
	leaq	208(%rax), %rdi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rsi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L215
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L215
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jns	.L214
.L215:
	movq	-40(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-40(%rbp), %rax
	movl	$.LC6, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1464, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$400, %eax
	jmp	.L210
.L214:
	movq	-40(%rbp), %rax
	movl	224(%rax), %eax
	testl	%eax, %eax
	jne	.L217
	movq	-40(%rbp), %rax
	movl	228(%rax), %eax
	testl	%eax, %eax
	jne	.L218
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jle	.L217
.L218:
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	-40(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC47, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1472, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$413, %eax
	jmp	.L210
.L217:
	movl	$0, %eax
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_setup_client_block, .-ap_setup_client_block
	.globl	ap_should_client_block
	.type	ap_should_client_block, @function
ap_should_client_block:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L220
	movq	-8(%rbp), %rax
	movl	228(%rax), %eax
	testl	%eax, %eax
	jne	.L221
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jg	.L221
.L220:
	movl	$0, %eax
	jmp	.L222
.L221:
	movl	$1, %eax
.L222:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_should_client_block, .-ap_should_client_block
	.globl	ap_get_client_block
	.type	ap_get_client_block, @function
ap_get_client_block:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	js	.L224
	movq	-24(%rbp), %rax
	movl	228(%rax), %eax
	testl	%eax, %eax
	jne	.L225
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	jne	.L225
.L224:
	movl	$0, %eax
	jmp	.L226
.L225:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L227
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
	movq	$-1, %rax
	jmp	.L226
.L227:
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	640(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L228
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	$-1, %rax
	jmp	.L226
.L228:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L229
	movq	-24(%rbp), %rax
	movl	228(%rax), %eax
	testl	%eax, %eax
	je	.L230
	movq	-24(%rbp), %rax
	movq	$-1, 208(%rax)
	jmp	.L229
.L230:
	movq	-24(%rbp), %rax
	movq	$0, 208(%rax)
.L229:
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_flatten
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L231
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	$-1, %rax
	jmp	.L226
.L231:
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-40(%rbp), %rax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_get_client_block, .-ap_get_client_block
	.globl	ap_http_outerror_filter
	.type	ap_http_outerror_filter, @function
ap_http_outerror_filter:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L233
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$4, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L233:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L234
.L238:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_error, %rax
	jne	.L235
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$502, %eax
	jne	.L236
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
	jmp	.L237
.L236:
	jmp	.L237
.L235:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_eoc, %rax
	jne	.L237
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.L237:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L234:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	jne	.L238
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L239
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L240
.L242:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L241
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L241:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L240:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	jne	.L242
.L239:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_http_outerror_filter, .-ap_http_outerror_filter
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

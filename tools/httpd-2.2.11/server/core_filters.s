	.file	"core_filters.c"
	.text
	.type	brigade_move, @function
brigade_move:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	cmpq	-40(%rbp), %rax
	je	.L1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	brigade_move, .-brigade_move
	.globl	ap_core_input_filter
	.type	ap_core_input_filter, @function
ap_core_input_filter:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movl	%ecx, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpl	$5, -164(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L41
.L4:
	cmpq	$0, -16(%rbp)
	jne	.L6
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_bucket_socket_create
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 24(%rax)
	jmp	.L7
.L6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L7
	movl	$70014, %eax
	jmp	.L41
.L7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L11:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	-24(%rbp), %rax
	jne	.L11
.L10:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L12
	movl	$70014, %eax
	jmp	.L41
.L12:
	cmpl	$1, -164(%rbp)
	jne	.L13
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movl	-168(%rbp), %edx
	movq	-160(%rbp), %rax
	movl	$8192, %ecx
	movq	%rax, %rdi
	call	apr_brigade_split_line
	movl	%eax, -4(%rbp)
	cmpl	$11, -4(%rbp)
	jne	.L14
	movl	$0, -4(%rbp)
.L14:
	movl	-4(%rbp), %eax
	jmp	.L41
.L13:
	cmpl	$2, -164(%rbp)
	jne	.L15
.L22:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L16
	movl	$70014, %eax
	jmp	.L41
.L16:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movl	$1, %ecx
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L17
	movl	-4(%rbp), %eax
	jmp	.L41
.L17:
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L18
.L21:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L19
	addq	$1, -32(%rbp)
	jmp	.L18
.L19:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L20
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L20
	addq	$2, -32(%rbp)
	jmp	.L18
.L20:
	movl	$0, %eax
	jmp	.L41
.L18:
	movq	-112(%rbp), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	ja	.L21
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L22
.L15:
	cmpl	$4, -164(%rbp)
	jne	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L24
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-160(%rbp), %rdx
	addq	$8, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L24:
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L41
.L23:
	cmpl	$0, -164(%rbp)
	je	.L25
	cmpl	$3, -164(%rbp)
	jne	.L26
.L25:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-128(%rbp), %rdi
	movl	-168(%rbp), %ecx
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$11, -4(%rbp)
	jne	.L27
	movl	$0, %eax
	jmp	.L41
.L27:
	cmpl	$0, -4(%rbp)
	je	.L29
	movl	-4(%rbp), %eax
	jmp	.L41
.L29:
	cmpl	$0, -168(%rbp)
	jne	.L30
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	jne	.L30
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	cmpl	$0, -164(%rbp)
	jne	.L31
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
.L31:
	movl	$0, %eax
	jmp	.L41
.L30:
	movq	-176(%rbp), %rdx
	movq	-120(%rbp), %rax
	cmpq	%rax, %rdx
	jbe	.L32
	movq	-120(%rbp), %rax
	movq	%rax, -176(%rbp)
.L32:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_partition
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L33
	movl	-4(%rbp), %eax
	jmp	.L41
.L33:
	movq	-128(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	brigade_move
	cmpl	$0, -164(%rbp)
	jne	.L34
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L36
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-160(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-160(%rbp), %rdx
	addq	$8, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
	jmp	.L36
.L34:
	cmpl	$3, -164(%rbp)
	jne	.L36
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.L37
.L39:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	-128(%rbp), %rdx
	leaq	-136(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L38
	movl	-4(%rbp), %eax
	jmp	.L41
.L38:
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-160(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-160(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
.L37:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L39
.L36:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L26:
	movl	$0, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_core_input_filter, .-ap_core_input_filter
	.type	writev_it_all, @function
writev_it_all:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L43
.L50:
	movl	-68(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_sendv
	movl	%eax, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L44
	movl	-28(%rbp), %eax
	jmp	.L51
.L44:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jnb	.L46
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L47
.L49:
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	addq	%rax, -24(%rbp)
.L47:
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L48
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cmpl	-68(%rbp), %eax
	jl	.L49
.L48:
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L46
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rsi
	movq	-64(%rbp), %rax
	addq	%rsi, %rax
	movq	8(%rax), %rsi
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movq	%rax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rcx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 8(%rax)
.L46:
	movq	-80(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
.L43:
	movq	-8(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.L50
	movl	$0, %eax
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	writev_it_all, .-writev_it_all
	.type	sendfile_it_all, @function
sendfile_it_all:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	16(%rbp), %rax
	movq	$0, (%rax)
.L66:
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rbp), %r8d
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_socket_sendfile
	movl	%eax, -4(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	subq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L53
	cmpl	$0, -4(%rbp)
	je	.L54
.L53:
	movl	-4(%rbp), %eax
	jmp	.L67
.L54:
	jmp	.L56
.L59:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L57
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L56
.L57:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -32(%rbp)
.L56:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L58
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L59
.L58:
	movq	-32(%rbp), %rax
	cmpq	-72(%rbp), %rax
	ja	.L60
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	subq	%rax, -72(%rbp)
	jmp	.L66
.L60:
	movq	-32(%rbp), %rax
	subq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	jmp	.L62
.L65:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L63
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L62
.L63:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	8(%rdx), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	$0, -32(%rbp)
.L62:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L61
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L65
.L61:
	jmp	.L66
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sendfile_it_all, .-sendfile_it_all
	.type	emulate_sendfile, @function
emulate_sendfile:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8288, %rsp
	movq	%rdi, -8248(%rbp)
	movq	%rsi, -8256(%rbp)
	movq	%rdx, -8264(%rbp)
	movq	%rcx, -8272(%rbp)
	movq	%r8, -8280(%rbp)
	movq	%r9, -8288(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -40(%rbp)
	movq	-8288(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8264(%rbp)
	je	.L69
	movq	-8264(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jle	.L69
	movl	$0, -20(%rbp)
	jmp	.L70
.L71:
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	addl	$1, -20(%rbp)
.L70:
	movq	-8264(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L71
	movq	-40(%rbp), %rcx
	movq	-8264(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8264(%rbp), %rax
	movq	(%rax), %rsi
	movq	-8248(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	writev_it_all
	movl	%eax, -4(%rbp)
	movq	-8288(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-8288(%rbp), %rax
	movq	%rdx, (%rax)
.L69:
	movq	-8272(%rbp), %rax
	testq	%rax, %rax
	js	.L72
	cmpl	$0, -4(%rbp)
	jne	.L72
	leaq	-8272(%rbp), %rdx
	movq	-8256(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	movl	%eax, -4(%rbp)
.L72:
	movq	-8280(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L73
.L77:
	movl	$8192, %eax
	cmpq	$8192, -16(%rbp)
	cmovbe	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-8240(%rbp), %rcx
	movq	-8256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	movl	%eax, -4(%rbp)
	jmp	.L74
.L75:
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-8240(%rbp), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-8248(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_socket_send
	movl	%eax, -4(%rbp)
	movq	-8288(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-8288(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$0, -4(%rbp)
	jne	.L74
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	subq	%rax, -16(%rbp)
.L74:
	cmpl	$0, -4(%rbp)
	jne	.L73
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	jne	.L75
.L73:
	cmpl	$0, -4(%rbp)
	jne	.L76
	cmpq	$0, -16(%rbp)
	jne	.L77
.L76:
	movq	$0, -40(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L78
	cmpq	$0, -8264(%rbp)
	je	.L78
	movq	-8264(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jle	.L78
	movl	$0, -20(%rbp)
	jmp	.L79
.L80:
	movq	-8264(%rbp), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	addl	$1, -20(%rbp)
.L79:
	movq	-8264(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L80
	movq	-40(%rbp), %rcx
	movq	-8264(%rbp), %rax
	movl	24(%rax), %edx
	movq	-8264(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-8248(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	writev_it_all
	movl	%eax, -4(%rbp)
	movq	-8288(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-8288(%rbp), %rax
	movq	%rdx, (%rax)
.L78:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	emulate_sendfile, .-emulate_sendfile
	.section	.rodata
	.align 8
.LC0:
	.string	"core_output_filter: Error reading from bucket."
.LC1:
	.string	"core_filters.c"
.LC2:
	.string	"deferred_write"
	.align 8
.LC3:
	.string	"core_output_filter: writing data to the network"
	.text
	.globl	ap_core_output_filter
	.type	ap_core_output_filter, @function
ap_core_output_filter:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$832, %rsp
	movq	%rdi, -824(%rbp)
	movq	%rsi, -832(%rbp)
	movq	-824(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-824(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-832(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L83
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L83:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L84
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	-832(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L85
	movq	-832(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-832(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-832(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-832(%rbp), %rax
	movq	-832(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-832(%rbp), %rax
	movq	-832(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L85:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L84:
	jmp	.L86
.L138:
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -216(%rbp)
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L87
.L109:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	je	.L88
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_eoc, %rax
	je	.L88
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_flush, %rax
	jne	.L89
	movq	-832(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-48(%rbp), %rax
	je	.L90
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -216(%rbp)
	jmp	.L88
.L90:
	jmp	.L88
.L89:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_file, %rax
	jne	.L91
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$255, %rax
	jbe	.L91
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -168(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L92
	movq	-832(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -216(%rbp)
	jmp	.L88
.L92:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.L93
.L91:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-48(%rbp), %rdi
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$11, -4(%rbp)
	jne	.L94
	movq	-832(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -216(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L88
.L94:
	movl	$1, -20(%rbp)
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	je	.L93
	cmpq	$0, -72(%rbp)
	jne	.L97
	cmpq	$16, -56(%rbp)
	jne	.L98
	cmpq	$7999, -32(%rbp)
	jbe	.L99
	movq	-832(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -216(%rbp)
	jmp	.L88
.L99:
	cmpq	$0, -96(%rbp)
	je	.L100
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-832(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -176(%rbp)
	movq	-832(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -832(%rbp)
	jmp	.L101
.L100:
	movq	-824(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-824(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -120(%rbp)
.L101:
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L102
.L103:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -4(%rbp)
	movq	-232(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_brigade_write
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-184(%rbp), %rax
	movq	48(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L102:
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L103
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-832(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-832(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-832(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-832(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-104(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movq	-224(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, 8(%rdx)
	addq	$1, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.L104
.L105:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-200(%rbp), %rax
	movq	(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movq	-224(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, 8(%rdx)
	addq	$1, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
.L104:
	movq	-120(%rbp), %rax
	addq	$8, %rax
	cmpq	-112(%rbp), %rax
	jne	.L105
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L107
.L98:
	movq	-224(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-56(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$784, %rdx
	movq	%rax, 8(%rdx)
	addq	$1, -56(%rbp)
	jmp	.L107
.L97:
	cmpq	$16, -64(%rbp)
	jne	.L108
	movq	-832(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -216(%rbp)
	nop
	jmp	.L88
.L108:
	movq	-224(%rbp), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$528, %rdx
	movq	%rax, (%rdx)
	movq	-232(%rbp), %rax
	movq	-64(%rbp), %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$528, %rdx
	movq	%rax, 8(%rdx)
	addq	$1, -64(%rbp)
.L107:
	movq	-232(%rbp), %rax
	addq	%rax, -32(%rbp)
.L93:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.L87:
	movq	-832(%rbp), %rax
	addq	$8, %rax
	cmpq	-48(%rbp), %rax
	jne	.L109
.L88:
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$7999, %rax
	ja	.L110
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$ap_bucket_type_eoc, %rax
	je	.L110
	cmpq	$0, -72(%rbp)
	jne	.L111
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.L111
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_flush, %rax
	jne	.L112
.L111:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L110
	movq	-144(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	jne	.L110
.L112:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L113
	movl	$0, -132(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.L114
.L119:
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_file, %rax
	jne	.L115
	cmpl	$0, -132(%rbp)
	jne	.L115
	movl	$1, -132(%rbp)
	jmp	.L116
.L115:
	movq	$0, -248(%rbp)
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-128(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L116
	movq	-144(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC0, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$797, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_cerror
	movl	$500, %eax
	jmp	.L139
.L116:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
.L114:
	movq	-832(%rbp), %rax
	addq	$8, %rax
	cmpq	-128(%rbp), %rax
	jne	.L119
.L113:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L120
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	apr_pool_create_ex
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
.L120:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rsi
	leaq	-832(%rbp), %rdx
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	ap_save_brigade
	movl	$0, %eax
	jmp	.L139
.L110:
	cmpq	$0, -72(%rbp)
	je	.L121
	movl	$0, -136(%rbp)
	leaq	-816(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	cmpq	$0, -56(%rbp)
	je	.L122
	movq	-56(%rbp), %rax
	movl	%eax, -808(%rbp)
	leaq	-784(%rbp), %rax
	movq	%rax, -816(%rbp)
.L122:
	cmpq	$0, -64(%rbp)
	je	.L123
	movq	-64(%rbp), %rax
	movl	%eax, -792(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -800(%rbp)
.L123:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_flags_get
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L124
	movq	-144(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	jne	.L125
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L125
	orl	$1, -136(%rbp)
.L125:
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rcx
	leaq	-816(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rax
	movl	-136(%rbp), %edi
	pushq	%rdi
	leaq	-256(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	sendfile_it_all
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	jmp	.L126
.L124:
	leaq	-256(%rbp), %r8
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rcx
	leaq	-816(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-152(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	emulate_sendfile
	movl	%eax, -4(%rbp)
.L126:
	movq	logio_add_bytes_out(%rip), %rax
	testq	%rax, %rax
	je	.L127
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	je	.L127
	movq	logio_add_bytes_out(%rip), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L127:
	movq	$0, -72(%rbp)
	jmp	.L128
.L121:
	movq	-56(%rbp), %rax
	movl	%eax, %edi
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	leaq	-264(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-784(%rbp), %rsi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	writev_it_all
	movl	%eax, -4(%rbp)
	movq	logio_add_bytes_out(%rip), %rax
	testq	%rax, %rax
	je	.L128
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L128
	movq	logio_add_bytes_out(%rip), %rax
	movq	-264(%rbp), %rdx
	movq	%rdx, %rcx
	movq	-144(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L128:
	movq	-832(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	je	.L131
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L131
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movq	-216(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.L132
	movq	$0, -216(%rbp)
	jmp	.L131
.L132:
	movq	-216(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	$0, -216(%rbp)
	movq	-160(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	leaq	-216(%rbp), %rsi
	movq	-824(%rbp), %rax
	movq	%rax, %rdi
	call	ap_save_brigade
.L131:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
.L130:
	cmpl	$0, -4(%rbp)
	je	.L133
	movq	-144(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC3, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$6, %edx
	movl	$903, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_cerror
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	je	.L134
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
.L134:
	cmpl	$11, -4(%rbp)
	je	.L135
	movq	-144(%rbp), %rax
	movzbl	64(%rax), %edx
	orl	$1, %edx
	movb	%dl, 64(%rax)
.L135:
	movl	$0, %eax
	jmp	.L139
.L133:
	movq	-216(%rbp), %rax
	movq	%rax, -832(%rbp)
	movq	$0, -216(%rbp)
.L86:
	movq	-832(%rbp), %rax
	testq	%rax, %rax
	je	.L137
	movq	-832(%rbp), %rax
	movq	8(%rax), %rax
	movq	-832(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.L138
.L137:
	movl	$0, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_core_output_filter, .-ap_core_output_filter
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

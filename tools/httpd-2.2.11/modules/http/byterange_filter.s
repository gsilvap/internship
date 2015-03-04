	.file	"byterange_filter.c"
	.text
	.type	parse_byterange, @function
parse_byterange:
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
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L19
.L2:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L4
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L5
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L6
.L5:
	movl	$0, %eax
	jmp	.L19
.L6:
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	subq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L7
.L4:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L8
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L9
.L8:
	movl	$0, %eax
	jmp	.L19
.L9:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L10
	leaq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L11
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L12
.L11:
	movl	$0, %eax
	jmp	.L19
.L12:
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L7
.L10:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L7:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jns	.L13
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L13:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jl	.L14
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L14:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L15
	movl	$-1, %eax
	jmp	.L19
.L15:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jg	.L16
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jge	.L17
.L16:
	movl	$1, %eax
	jmp	.L18
.L17:
	movl	$0, %eax
.L18:
	nop
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	parse_byterange, .-parse_byterange
	.section	.rodata
.LC0:
	.string	"Request-Range"
.LC1:
	.string	"User-Agent"
.LC2:
	.string	"MSIE 3"
	.text
	.type	use_range_x, @function
use_range_x:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L21
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L22
.L21:
	movl	$1, %eax
	jmp	.L23
.L22:
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	use_range_x, .-use_range_x
	.section	.rodata
.LC3:
	.string	"%lx%lx"
.LC4:
	.string	"/x-"
.LC5:
	.string	"/"
.LC6:
	.string	"byteranges; boundary="
.LC7:
	.string	"multipart"
.LC8:
	.string	"none"
.LC9:
	.string	"\r\nContent-range: bytes "
.LC10:
	.string	"\r\nContent-type: "
.LC11:
	.string	"\r\n--"
	.align 8
.LC12:
	.string	"apr_brigade_partition() failed [%ld,%ld]"
.LC13:
	.string	"byterange_filter.c"
.LC14:
	.string	"bytes %ld-%ld/%ld"
.LC15:
	.string	"Content-Range"
.LC16:
	.string	"%ld-%ld/%ld\r\n\r\n"
.LC17:
	.string	"--\r\n"
	.text
	.globl	ap_byterange_filter
	.type	ap_byterange_filter, @function
ap_byterange_filter:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$240, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -248(%rbp)
	movq	%rsi, -256(%rbp)
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L26
.L28:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L26:
	movq	-256(%rbp), %rax
	addq	$8, %rax
	cmpq	-24(%rbp), %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	je	.L27
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	jne	.L28
.L27:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L29
	cmpq	$0, -32(%rbp)
	jg	.L30
.L29:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L49
.L30:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_byterange
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L32
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L49
.L32:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jle	.L33
	movq	-48(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_content_type
	movq	%rax, -80(%rbp)
	call	getpid
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	use_range_x
	testl	%eax, %eax
	je	.L34
	movl	$.LC4, %edx
	jmp	.L35
.L34:
	movl	$.LC5, %edx
.L35:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movq	%rbx, %r8
	movl	$.LC6, %ecx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	movq	-80(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L36
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-80(%rbp), %rcx
	pushq	$0
	movl	$.LC9, %r9d
	movq	%rcx, %r8
	movl	$.LC10, %ecx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L33
.L36:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC9, %ecx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
.L33:
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -88(%rbp)
	jmp	.L37
.L46:
	cmpl	$-1, -100(%rbp)
	jne	.L38
	jmp	.L37
.L38:
	movq	-184(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_partition
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L40
	movq	-184(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	-100(%rbp), %eax
	pushq	-32(%rbp)
	pushq	%rdx
	movl	$.LC12, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$231, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L37
.L40:
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rcx
	leaq	-200(%rbp), %rdx
	movq	-256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_partition
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L41
	movq	-192(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rdx
	movl	-100(%rbp), %eax
	pushq	-32(%rbp)
	pushq	%rcx
	movl	$.LC12, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$236, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L37
.L41:
	movl	$1, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jne	.L42
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, %r8
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L43
.L42:
	movq	-56(%rbp), %rax
	movq	144(%rax), %r12
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rsi
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-192(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, %r8
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %r12
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rsi
	movq	-120(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rdx)
.L43:
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L44
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-208(%rbp), %rdi
	leaq	-232(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movl	$0, %ecx
	call	*%rax
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rax
	movq	-208(%rbp), %rdx
	leaq	-216(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L44:
	movq	-216(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdx
	movq	-200(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L43
.L37:
	movq	-48(%rbp), %rax
	leaq	192(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L45
	leaq	-192(%rbp), %rcx
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	parse_byterange
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	.L46
.L45:
	cmpl	$0, -36(%rbp)
	jne	.L47
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-48(%rbp), %rax
	movl	$200, 112(%rax)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$416, %edi
	call	ap_bucket_error_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L49
.L47:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$1, %eax
	jle	.L48
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC17, %ecx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %r12
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rsi
	movq	-160(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
.L48:
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-176(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-248(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
.L49:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_byterange_filter, .-ap_byterange_filter
	.section	.rodata
.LC18:
	.string	"Range"
.LC19:
	.string	"bytes="
.LC20:
	.string	"Content-Type"
.LC21:
	.string	"multipart/byteranges"
.LC22:
	.string	"multipart/x-byteranges"
.LC23:
	.string	"If-Range"
.LC24:
	.string	"Etag"
.LC25:
	.string	"Last-Modified"
	.text
	.type	ap_set_byterange, @function
ap_set_byterange:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L51
	movl	$0, %eax
	jmp	.L52
.L51:
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
.L53:
	cmpq	$0, -8(%rbp)
	je	.L54
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L54
	movq	-56(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L55
.L54:
	movl	$0, %eax
	jmp	.L52
.L55:
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L56
	movl	$0, %eax
	jmp	.L52
.L56:
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L57
	movq	-24(%rbp), %rax
	movl	$20, %edx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	je	.L58
	movq	-24(%rbp), %rax
	movl	$22, %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L57
.L58:
	movl	$0, %eax
	jmp	.L52
.L57:
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L59
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L60
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L61
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L59
.L61:
	movl	$0, %eax
	jmp	.L52
.L60:
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L62
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L59
.L62:
	movl	$0, %eax
	jmp	.L52
.L59:
	movq	-8(%rbp), %rax
	movl	$44, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L63
	movl	$1, -12(%rbp)
	jmp	.L64
.L63:
	movl	$2, -12(%rbp)
.L64:
	movq	-56(%rbp), %rax
	movl	$206, 112(%rax)
	movq	-8(%rbp), %rax
	leaq	6(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 192(%rax)
	movl	-12(%rbp), %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_set_byterange, .-ap_set_byterange
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

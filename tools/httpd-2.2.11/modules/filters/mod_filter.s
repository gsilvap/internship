	.file	"mod_filter.c"
	.globl	filter_module
	.section	.rodata
.LC0:
	.string	"mod_filter.c"
	.data
	.align 64
	.type	filter_module, @object
	.size	filter_module, 104
filter_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	filter_config
	.quad	filter_merge
	.quad	0
	.quad	0
	.quad	filter_cmds
	.quad	filter_hooks
	.section	.rodata
.LC1:
	.string	"%s"
.LC2:
	.string	"(unknown)"
.LC3:
	.string	"%s: type: %s, length: %lu"
	.text
	.type	filter_trace, @function
filter_trace:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	.L9
	cmpl	$1, %eax
	jne	.L1
	subq	$8, %rsp
	movq	-24(%rbp), %rax
	pushq	-40(%rbp)
	movl	$.LC1, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$117, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_cerror
	addq	$16, %rsp
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L8:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	jmp	.L7
.L6:
	movl	$.LC2, %eax
.L7:
	subq	$8, %rsp
	movq	-24(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	pushq	-40(%rbp)
	movl	$.LC3, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$122, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_cerror
	addq	$32, %rsp
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L5:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L8
	nop
	jmp	.L1
.L9:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	filter_trace, .-filter_trace
	.section	.rodata
	.align 8
.LC4:
	.string	"Chaining of FilterProviders not supported"
.LC5:
	.string	"filter_init for %s failed"
	.text
	.type	filter_init, @function
filter_init:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L11
.L16:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$filter_init, %rax
	jne	.L12
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	$.LC4, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$141, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_cerror
	movl	$500, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC5, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$148, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_cerror
	addq	$16, %rsp
	movl	-28(%rbp), %eax
	jmp	.L13
.L15:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L14:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L11:
	cmpq	$0, -8(%rbp)
	jne	.L16
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	filter_init, .-filter_init
	.section	.rodata
.LC6:
	.string	"Cache-Control"
.LC7:
	.string	"no-transform"
.LC8:
	.string	"214 %s Transformation applied"
.LC9:
	.string	"Warning"
.LC10:
	.string	"Content-MD5"
.LC11:
	.string	"ETag"
.LC12:
	.string	"Content-Length"
.LC13:
	.string	"Last-Modified"
.LC14:
	.string	"no-cache"
.LC15:
	.string	"Accept-Ranges"
.LC16:
	.string	"Range"
	.text
	.type	filter_lookup, @function
filter_lookup:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	$0, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movl	filter_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L18
.L59:
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$4, %eax
	ja	.L19
	movl	%eax, %eax
	movq	.L21(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L21:
	.quad	.L20
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.quad	.L25
	.text
.L22:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	jmp	.L19
.L23:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	jmp	.L19
.L24:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	jmp	.L19
.L25:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L19
.L20:
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -16(%rbp)
	nop
.L19:
	cmpq	$0, -16(%rbp)
	jne	.L26
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	jne	.L28
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movl	$0, -20(%rbp)
	jmp	.L28
.L26:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$8, %eax
	ja	.L28
	movl	%eax, %eax
	movq	.L30(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L30:
	.quad	.L29
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L34
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L60
	.text
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L39
	movl	$0, -20(%rbp)
	jmp	.L28
.L39:
	jmp	.L28
.L31:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	jne	.L40
	movl	$0, -20(%rbp)
	jmp	.L28
.L40:
	jmp	.L28
.L32:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	cmpl	$4, %eax
	jne	.L41
	movl	$0, -20(%rbp)
	jmp	.L28
.L41:
	jmp	.L28
.L33:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	je	.L42
	movl	$0, -20(%rbp)
	jmp	.L28
.L42:
	jmp	.L28
.L34:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jl	.L43
	movl	$0, -20(%rbp)
	jmp	.L28
.L43:
	jmp	.L28
.L35:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jle	.L44
	movl	$0, -20(%rbp)
	jmp	.L28
.L44:
	jmp	.L28
.L36:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jg	.L45
	movl	$0, -20(%rbp)
	jmp	.L28
.L45:
	jmp	.L28
.L37:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jge	.L46
	movl	$0, -20(%rbp)
	jmp	.L28
.L46:
	jmp	.L28
.L60:
	nop
.L28:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	-20(%rbp), %eax
	je	.L47
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L48
	movl	-68(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L49
	jmp	.L47
.L49:
	movl	-68(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L48
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L50
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-64(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L50
	jmp	.L47
.L50:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L48:
	movl	-68(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movl	-68(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L51
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L51:
	movl	-68(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L52
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC14, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L52:
	movl	-68(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L53
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	jmp	.L54
.L53:
	cmpq	$0, -56(%rbp)
	je	.L54
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.L54:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L55
.L57:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.L56
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
.L56:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.L55:
	cmpq	$0, -32(%rbp)
	jne	.L57
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$1, %eax
	jmp	.L58
.L47:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L18:
	cmpq	$0, -8(%rbp)
	jne	.L59
	movl	$0, %eax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	filter_lookup, .-filter_lookup
	.type	filter_harness, @function
filter_harness:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L62
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L63
.L62:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	48(%rax), %esi
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	call	filter_trace
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L64
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L65
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L66
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L63
.L66:
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L65
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	248(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L65
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-32(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L65
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L63
.L65:
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	filter_lookup
	testl	%eax, %eax
	jne	.L64
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L63
.L64:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-36(%rbp), %eax
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	filter_harness, .-filter_harness
	.section	.rodata
	.align 8
.LC17:
	.string	"FilterProtocol: No such filter"
	.align 8
.LC18:
	.string	"FilterProtocol: No such provider for this filter"
.LC19:
	.string	"change=yes"
.LC20:
	.string	"change=1:1"
.LC21:
	.string	"byteranges=no"
.LC22:
	.string	"proxy=no"
.LC23:
	.string	"proxy=transform"
.LC24:
	.string	"cache=no"
	.text
	.type	filter_protocol, @function
filter_protocol:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -28(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L68
	movl	$.LC17, %eax
	jmp	.L86
.L68:
	cmpq	$0, -104(%rbp)
	jne	.L70
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
	jmp	.L71
.L70:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L72
.L75:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L73
	jmp	.L74
.L73:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.L72:
	cmpq	$0, -40(%rbp)
	jne	.L75
.L74:
	cmpq	$0, -40(%rbp)
	jne	.L71
	movl	$.LC18, %eax
	jmp	.L86
.L71:
	movq	sep.7542(%rip), %rbx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rcx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	apr_strtok
	movq	%rax, -24(%rbp)
	jmp	.L76
.L83:
	movq	-24(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L77
	orl	$3, -28(%rbp)
	jmp	.L78
.L77:
	movq	-24(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L79
	orl	$1, -28(%rbp)
	jmp	.L78
.L79:
	movq	-24(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L80
	orl	$4, -28(%rbp)
	jmp	.L78
.L80:
	movq	-24(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L81
	orl	$8, -28(%rbp)
	jmp	.L78
.L81:
	movq	-24(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L82
	orl	$32, -28(%rbp)
	jmp	.L78
.L82:
	movq	-24(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L78
	orl	$16, -28(%rbp)
.L78:
	movq	sep.7542(%rip), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movl	$0, %edi
	call	apr_strtok
	movq	%rax, -24(%rbp)
.L76:
	cmpq	$0, -24(%rbp)
	jne	.L83
	cmpq	$0, -96(%rbp)
	je	.L84
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 52(%rax)
	jmp	.L85
.L84:
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 52(%rax)
.L85:
	movl	$0, %eax
.L86:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	filter_protocol, .-filter_protocol
	.section	.rodata
.LC25:
	.string	"CONTENT_SET"
.LC26:
	.string	"PROTOCOL"
.LC27:
	.string	"CONNECTION"
.LC28:
	.string	"NETWORK"
	.text
	.type	filter_declare, @function
filter_declare:
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
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	$filter_init, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$filter_harness, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -48(%rbp)
	je	.L88
	movq	-48(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L89
	movq	-16(%rbp), %rax
	movl	$20, 24(%rax)
	jmp	.L88
.L89:
	movq	-48(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L90
	movq	-16(%rbp), %rax
	movl	$30, 24(%rax)
	jmp	.L88
.L90:
	movq	-48(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L91
	movq	-16(%rbp), %rax
	movl	$50, 24(%rax)
	jmp	.L88
.L91:
	movq	-48(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L88
	movq	-16(%rbp), %rax
	movl	$60, 24(%rax)
.L88:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	filter_declare, .-filter_declare
	.section	.rodata
	.align 8
.LC29:
	.string	"usage: FilterProvider filter provider condition match"
.LC30:
	.string	"Undeclared smart filter %s"
.LC31:
	.string	"Unknown filter provider %s"
.LC32:
	.string	"Bad regexp syntax"
.LC33:
	.string	"Bad regexp"
.LC34:
	.string	"env="
.LC35:
	.string	"req="
.LC36:
	.string	"resp="
	.align 8
.LC37:
	.string	"FilterProvider: unrecognized dispatch table"
.LC38:
	.string	"handler"
.LC39:
	.string	"content-type"
	.text
	.type	filter_provider, @function
filter_provider:
.LFB8:
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
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L94
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L94
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L94
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L94
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L95
.L94:
	movl	$.LC29, %eax
	jmp	.L96
.L95:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L97
	movq	-56(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	filter_declare
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L98
	movq	-16(%rbp), %rax
	jmp	.L96
.L98:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -32(%rbp)
.L97:
	cmpq	$0, -32(%rbp)
	jne	.L99
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$.LC30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L96
.L99:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_output_filter_handle
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L100
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$.LC31, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L96
.L100:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L101
	movq	-96(%rbp), %rax
	movl	$1, 4(%rax)
	addq	$1, -40(%rbp)
	jmp	.L102
.L101:
	movq	-96(%rbp), %rax
	movl	$0, 4(%rax)
.L102:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$36, %eax
	cmpl	$26, %eax
	ja	.L103
	movl	%eax, %eax
	movq	.L105(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L105:
	.quad	.L104
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L106
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L107
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L103
	.quad	.L108
	.quad	.L109
	.quad	.L110
	.text
.L108:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L111
	movq	-96(%rbp), %rax
	movl	$5, (%rax)
	addq	$1, -40(%rbp)
	jmp	.L112
.L111:
	movq	-96(%rbp), %rax
	movl	$4, (%rax)
.L112:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L113
.L110:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L114
	movq	-96(%rbp), %rax
	movl	$7, (%rax)
	addq	$1, -40(%rbp)
	jmp	.L115
.L114:
	movq	-96(%rbp), %rax
	movl	$6, (%rax)
.L115:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L113
.L109:
	movq	-96(%rbp), %rax
	movl	$3, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L113
.L107:
	movq	-96(%rbp), %rax
	movl	$2, (%rax)
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L116
	movl	$.LC32, %eax
	jmp	.L96
.L116:
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L117
.L120:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$105, %eax
	jne	.L118
	orl	$1, -4(%rbp)
	nop
.L118:
	addq	$1, -16(%rbp)
.L117:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L120
	movq	-104(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, %rcx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	-4(%rbp), %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L121
	movl	$.LC33, %eax
	jmp	.L96
.L121:
	jmp	.L113
.L106:
	movq	-96(%rbp), %rax
	movl	$8, (%rax)
	movq	-96(%rbp), %rax
	movl	$-1, 8(%rax)
	jmp	.L113
.L104:
	movq	-96(%rbp), %rax
	movl	$1, (%rax)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L113
.L103:
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
.L113:
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-72(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L122
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L123
	movq	-96(%rbp), %rax
	movl	$3, 32(%rax)
	jmp	.L124
.L123:
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L125
	movq	-96(%rbp), %rax
	movl	$1, 32(%rax)
	jmp	.L124
.L125:
	movq	-72(%rbp), %rax
	movl	$5, %edx
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L126
	movq	-96(%rbp), %rax
	movl	$2, 32(%rax)
	jmp	.L124
.L126:
	movl	$.LC37, %eax
	jmp	.L96
.L122:
	movq	-72(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L127
	movq	-96(%rbp), %rax
	movl	$0, 32(%rax)
	jmp	.L128
.L127:
	movq	-96(%rbp), %rax
	movl	$2, 32(%rax)
.L128:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
.L124:
	movq	-96(%rbp), %rax
	movl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.L129
	movq	-24(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L129
	movq	-96(%rbp), %rax
	movl	$4, 32(%rax)
.L129:
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$0, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	filter_provider, .-filter_provider
	.type	filter_chain, @function
filter_chain:
.LFB9:
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
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$33, %eax
	cmpl	$31, %eax
	ja	.L131
	movl	%eax, %eax
	movq	.L133(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L133:
	.quad	.L132
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L134
	.quad	.L131
	.quad	.L135
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L131
	.quad	.L136
	.quad	.L131
	.quad	.L131
	.quad	.L137
	.text
.L134:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L138
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L139
.L140:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L139:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L142
.L138:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L142
.L137:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L142
.L135:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L144
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L145
.L147:
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L146
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L146:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L145:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	jmp	.L142
.L144:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L142
.L143:
	jmp	.L142
.L132:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L142
.L136:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L142
.L131:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L148
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L149
.L150:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L149:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L150
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L153
.L148:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L153:
	nop
.L142:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	filter_chain, .-filter_chain
	.type	filter_debug, @function
filter_debug:
.LFB10:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L155
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$.LC30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L156
.L155:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	filter_debug, .-filter_debug
	.section	.rodata
.LC40:
	.string	"Unknown filter %s not added"
	.text
	.type	filter_insert, @function
filter_insert:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	608(%rax), %rax
	movl	filter_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	616(%rax), %rax
	movl	filter_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L158
.L160:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L159
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L159:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L158:
	cmpq	$0, -8(%rbp)
	jne	.L160
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L161
.L164:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L162
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	%rax
	movl	$.LC40, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$767, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L163
.L162:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	cmpl	$0, -12(%rbp)
	je	.L163
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	andl	$6, %eax
	testl	%eax, %eax
	je	.L163
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movl	$0, -12(%rbp)
.L163:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L161:
	cmpq	$0, -8(%rbp)
	jne	.L164
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	filter_insert, .-filter_insert
	.type	filter_hooks, @function
filter_hooks:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$filter_insert, %edi
	call	ap_hook_insert_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	filter_hooks, .-filter_hooks
	.type	filter_config, @function
filter_config:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	filter_config, .-filter_config
	.type	filter_merge, @function
filter_merge:
.LFB14:
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
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_overlay
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L171
.L175:
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L172
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L173
.L172:
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L173
.L174:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L173:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L171:
	cmpq	$0, -16(%rbp)
	jne	.L175
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L176
.L180:
	movq	-16(%rbp), %rcx
	movq	-56(%rbp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L177
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L178
.L177:
	cmpq	$0, -8(%rbp)
	je	.L179
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L178
.L179:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L178:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L176:
	cmpq	$0, -16(%rbp)
	jne	.L180
	jmp	.L181
.L170:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L182
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L181
.L182:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L181:
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	filter_merge, .-filter_merge
	.section	.rodata
.LC41:
	.string	"FilterDeclare"
.LC42:
	.string	"filter-name [, filter-type]"
.LC43:
	.string	"FilterProvider"
	.align 8
.LC44:
	.string	"filter-name, provider-name, dispatch--criterion, dispatch-match"
.LC45:
	.string	"FilterChain"
	.align 8
.LC46:
	.string	"list of filter names with optional [+-=!@]"
.LC47:
	.string	"FilterTrace"
.LC48:
	.string	"Debug level"
.LC49:
	.string	"FilterProtocol"
	.align 8
.LC50:
	.string	"filter-name [provider-name] protocol-args"
	.align 64
	.type	filter_cmds, @object
	.size	filter_cmds, 240
filter_cmds:
	.quad	.LC41
	.quad	filter_declare
	.quad	0
	.long	2
	.long	7
	.quad	.LC42
	.quad	.LC43
	.quad	filter_provider
	.quad	0
	.long	2
	.long	0
	.quad	.LC44
	.quad	.LC45
	.quad	filter_chain
	.quad	0
	.long	2
	.long	3
	.quad	.LC46
	.quad	.LC47
	.quad	filter_debug
	.quad	0
	.long	192
	.long	2
	.quad	.LC48
	.quad	.LC49
	.quad	filter_protocol
	.quad	0
	.long	2
	.long	9
	.quad	.LC50
	.quad	0
	.zero	32
.LC51:
	.string	";, \t"
	.data
	.align 8
	.type	sep.7542, @object
	.size	sep.7542, 8
sep.7542:
	.quad	.LC51
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

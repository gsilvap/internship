	.file	"mod_asis.c"
	.section	.rodata
.LC0:
	.string	"httpd/send-as-is"
.LC1:
	.string	"send-as-is"
.LC2:
	.string	"File does not exist: %s"
.LC3:
	.string	"mod_asis.c"
	.align 8
.LC4:
	.string	"file permissions deny server access: %s"
.LC5:
	.string	"Location"
.LC6:
	.string	"GET"
	.align 8
.LC7:
	.string	"mod_asis: failed to find end-of-headers position for %s"
	.align 8
.LC8:
	.string	"mod_asis: ap_pass_brigade failed for file %s"
	.text
	.type	asis_handler, @function
asis_handler:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L2
	movq	-88(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L2
	movl	$-1, %eax
	jmp	.L14
.L2:
	movq	-88(%rbp), %rax
	movq	136(%rax), %rax
	orq	$1, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L4
	movl	$-1, %eax
	jmp	.L14
.L4:
	movq	-88(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L5
	movq	-88(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-88(%rbp), %rdx
	pushq	%rax
	movl	$.LC2, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$45, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L14
.L5:
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-64(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L6
	movq	-88(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-88(%rbp), %rcx
	movl	-12(%rbp), %eax
	pushq	%rdx
	movl	$.LC4, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$52, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L14
.L6:
	movq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_scan_script_header_err
	movq	-88(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L7
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L7
	movq	-88(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L8
	movq	-88(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jle	.L7
	movq	-88(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$399, %eax
	jg	.L7
.L8:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-88(%rbp), %rax
	movl	$200, 112(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_redirect_handler
	movl	$0, %eax
	jmp	.L14
.L7:
	movq	-88(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L9
	movq	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L10
	movq	-88(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-88(%rbp), %rcx
	movl	-12(%rbp), %eax
	pushq	%rdx
	movl	$.LC7, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$85, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$500, %eax
	jmp	.L14
.L10:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	448(%rax), %rsi
	movq	-72(%rbp), %rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	apr_bucket_file_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-88(%rbp), %rax
	movq	632(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L12
	movq	-88(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-88(%rbp), %rcx
	movl	-12(%rbp), %eax
	pushq	%rdx
	movl	$.LC8, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$119, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L14
.L12:
	jmp	.L13
.L9:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L13:
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	asis_handler, .-asis_handler
	.type	register_hooks, @function
register_hooks:
.LFB3:
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
	movl	$asis_handler, %edi
	call	ap_hook_handler
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	register_hooks, .-register_hooks
	.globl	asis_module
	.data
	.align 64
	.type	asis_module, @object
	.size	asis_module, 104
asis_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC3
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

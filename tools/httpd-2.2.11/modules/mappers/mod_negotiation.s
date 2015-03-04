	.file	"mod_negotiation.c"
	.globl	negotiation_module
	.section	.rodata
.LC0:
	.string	"mod_negotiation.c"
	.data
	.align 64
	.type	negotiation_module, @object
	.size	negotiation_module, 104
negotiation_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_neg_dir_config
	.quad	merge_neg_dir_configs
	.quad	0
	.quad	0
	.quad	negotiation_cmds
	.quad	register_hooks
	.text
	.type	create_neg_dir_config, @function
create_neg_dir_config:
.LFB2:
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
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_neg_dir_config, .-create_neg_dir_config
	.type	merge_neg_dir_configs, @function
merge_neg_dir_configs:
.LFB3:
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
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
.L5:
	movq	-24(%rbp), %rdx
	movl	%eax, (%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L7
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L7:
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	merge_neg_dir_configs, .-merge_neg_dir_configs
	.type	set_language_priority, @function
set_language_priority:
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
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$8, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	set_language_priority, .-set_language_priority
	.section	.rodata
.LC1:
	.string	"None"
	.align 8
.LC2:
	.string	"Cannot combine ForceLanguagePriority options with None"
.LC3:
	.string	"Prefer"
	.align 8
.LC4:
	.string	"Cannot combine ForceLanguagePriority options None and Prefer"
.LC5:
	.string	"Fallback"
	.align 8
.LC6:
	.string	"Cannot combine ForceLanguagePriority options None and Fallback"
	.align 8
.LC7:
	.string	"Invalid ForceLanguagePriority option "
	.text
	.type	set_force_priority, @function
set_force_priority:
.LFB5:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L13
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$-2, %eax
	testl	%eax, %eax
	je	.L14
	movl	$.LC2, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L16
.L13:
	movq	-40(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L17
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L18
	movl	$.LC4, %eax
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L16
.L17:
	movq	-40(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L19
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L20
	movl	$.LC6, %eax
	jmp	.L15
.L20:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L16
.L19:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L15
.L16:
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	set_force_priority, .-set_force_priority
	.section	.rodata
.LC8:
	.string	"Cache"
	.text
	.type	cache_negotiated_docs, @function
cache_negotiated_docs:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	negotiation_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	cmpl	$0, -20(%rbp)
	je	.L22
	movl	$.LC8, %edx
	jmp	.L23
.L22:
	movl	$0, %edx
.L23:
	movq	%rdx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cache_negotiated_docs, .-cache_negotiated_docs
	.type	do_cache_negotiated_docs, @function
do_cache_negotiated_docs:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	negotiation_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	do_cache_negotiated_docs, .-do_cache_negotiated_docs
	.section	.rodata
.LC9:
	.string	"CacheNegotiatedDocs"
	.align 8
.LC10:
	.string	"Either 'on' or 'off' (default)"
.LC11:
	.string	"LanguagePriority"
	.align 8
.LC12:
	.string	"space-delimited list of MIME language abbreviations"
.LC13:
	.string	"ForceLanguagePriority"
	.align 8
.LC14:
	.string	"Force LanguagePriority elections, either None, or Fallback and/or Prefer"
	.align 64
	.type	negotiation_cmds, @object
	.size	negotiation_cmds, 160
negotiation_cmds:
	.quad	.LC9
	.quad	cache_negotiated_docs
	.quad	0
	.long	128
	.long	5
	.quad	.LC10
	.quad	.LC11
	.quad	set_language_priority
	.quad	0
	.long	4
	.long	3
	.quad	.LC12
	.quad	.LC13
	.quad	set_force_priority
	.quad	0
	.long	4
	.long	3
	.quad	.LC14
	.quad	0
	.zero	32
.LC15:
	.string	""
	.text
	.type	clean_var_rec, @function
clean_var_rec:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$.LC15, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC15, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC15, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC15, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 84(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 104(%rdx)
	movq	-8(%rbp), %rax
	movq	$-1, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 96(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 108(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 112(%rax)
	movq	-8(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 72(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 68(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 64(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 76(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 80(%rdx)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	clean_var_rec, .-clean_var_rec
	.section	.rodata
.LC18:
	.string	"text/html"
.LC19:
	.string	"text/x-server-parsed-html"
.LC20:
	.string	"text/x-server-parsed-html3"
	.text
	.type	set_mime_fields, @function
set_mime_fields:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 80(%rdx)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 84(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L29
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L30
.L29:
	movl	$1, %edx
	jmp	.L31
.L30:
	movl	$0, %edx
.L31:
	movq	-8(%rbp), %rax
	movl	%edx, 100(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	set_mime_fields, .-set_mime_fields
	.type	set_vlist_validator, @function
set_vlist_validator:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_update_mtime
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_make_etag
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	set_vlist_validator, .-set_vlist_validator
	.type	atoq, @function
atoq:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L34
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L35
.L34:
	movl	.LC17(%rip), %eax
	jmp	.L36
.L35:
	jmp	.L37
.L39:
	addq	$1, -24(%rbp)
.L37:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L38
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L39
.L38:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L40
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L40
	movl	.LC17(%rip), %eax
	jmp	.L36
.L40:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L41
	movl	$0, -4(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	imull	$100, %eax, %eax
	addl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	leal	-48(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, -4(%rbp)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jle	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L42
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	addl	%eax, -4(%rbp)
.L42:
	pxor	%xmm0, %xmm0
	cvtsi2ss	-4(%rbp), %xmm0
	movss	.LC21(%rip), %xmm1
	divss	%xmm1, %xmm0
	movd	%xmm0, %eax
	jmp	.L36
.L41:
	movl	.LC16(%rip), %eax
.L36:
	movl	%eax, -28(%rbp)
	movss	-28(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	atoq, .-atoq
	.section	.rodata
.LC24:
	.string	"evel"
.LC25:
	.string	"charset"
	.text
	.type	get_entry, @function
get_entry:
.LFB12:
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
	movq	-48(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	-48(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 12(%rdx)
	movq	-48(%rbp), %rax
	movq	$.LC15, 16(%rax)
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_token
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L44
	movq	-48(%rbp), %rax
	movss	12(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L44
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L44
	movq	-48(%rbp), %rdx
	movl	.LC22(%rip), %eax
	movl	%eax, 12(%rdx)
	jmp	.L46
.L44:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L47
	movq	-48(%rbp), %rdx
	movl	.LC22(%rip), %eax
	movl	%eax, 12(%rdx)
	jmp	.L46
.L47:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	movq	-48(%rbp), %rdx
	movl	.LC23(%rip), %eax
	movl	%eax, 12(%rdx)
.L46:
	jmp	.L48
.L66:
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_token
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L49
.L51:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L49:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L50
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
	jne	.L50
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L51
.L50:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L52
	jmp	.L48
.L52:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	jmp	.L53
.L55:
	addq	$1, -8(%rbp)
.L53:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L54
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
	jne	.L55
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	je	.L55
.L54:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L56
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L57
.L59:
	addq	$1, -16(%rbp)
.L57:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L58
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L58
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L58
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L59
	jmp	.L58
.L56:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L60
.L61:
	addq	$1, -16(%rbp)
.L60:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L58
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L61
.L58:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L62
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$113, %al
	jne	.L63
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L64
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$115, %al
	jne	.L63
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L63
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atoq
	movd	%xmm0, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L48
.L63:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$108, %al
	jne	.L65
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L65
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	pxor	%xmm2, %xmm2
	cvtsi2ss	%eax, %xmm2
	movd	%xmm2, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 12(%rdx)
	jmp	.L48
.L65:
	movq	-24(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L48
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L48:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L66
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L67
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.L67:
	movq	-56(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	get_entry, .-get_entry
	.type	do_header_line, @function
do_header_line:
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
	cmpq	$0, -32(%rbp)
	jne	.L71
	movl	$0, %eax
	jmp	.L72
.L71:
	movq	-24(%rbp), %rax
	movl	$24, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -8(%rbp)
	jmp	.L73
.L74:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_entry
	movq	%rax, -32(%rbp)
.L73:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L74
	movq	-8(%rbp), %rax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	do_header_line, .-do_header_line
	.type	do_languages_line, @function
do_languages_line:
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
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -8(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L76
	movq	-8(%rbp), %rax
	jmp	.L77
.L76:
	jmp	.L78
.L80:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_token
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L79
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L78
.L79:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L78:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L80
	movq	-8(%rbp), %rax
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	do_languages_line, .-do_languages_line
	.section	.rodata
.LC26:
	.string	"Accept"
.LC27:
	.string	"Accept-Encoding"
.LC28:
	.string	"Accept-Language"
.LC29:
	.string	"Accept-Charset"
	.text
	.type	parse_accept_headers, @function
parse_accept_headers:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$112, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$112, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	negotiation_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_header_line
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L82
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L83
.L86:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movss	8(%rax), %xmm1
	movss	.LC17(%rip), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L84
	movq	-16(%rbp), %rax
	movl	$1, 32(%rax)
.L84:
	addl	$1, -4(%rbp)
.L83:
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L86
.L82:
	movq	-24(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_header_line
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_header_line
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_header_line
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$120, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	parse_accept_headers, .-parse_accept_headers
	.section	.rodata
.LC30:
	.string	"Negotiate"
.LC31:
	.string	"trans"
.LC32:
	.string	"User-Agent"
.LC33:
	.string	"Lynx"
.LC34:
	.string	"vlist"
.LC35:
	.string	"guess-small"
.LC36:
	.string	"*"
.LC37:
	.string	"1.0"
	.text
	.type	parse_negotiate_header, @function
parse_negotiate_header:
.LFB16:
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
	movq	240(%rax), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 92(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 96(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 100(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 104(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 88(%rax)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L90
	jmp	.L89
.L90:
	movq	-24(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L92
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L92
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L92
	jmp	.L89
.L92:
	movq	-48(%rbp), %rax
	movl	$0, 100(%rax)
	jmp	.L93
.L96:
	movq	-16(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L94
	movq	-16(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L94
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L94
	movq	-16(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L93
.L94:
	movq	-48(%rbp), %rax
	movl	$1, 92(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 96(%rax)
	movq	-16(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L95
	movq	-48(%rbp), %rax
	movl	$1, 100(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 88(%rax)
	jmp	.L93
.L95:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L93
	movq	-48(%rbp), %rax
	movl	$1, 100(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 88(%rax)
.L93:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_list_item
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L96
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	parse_negotiate_header, .-parse_negotiate_header
	.section	.rodata
.LC38:
	.string	"*/*"
.LC39:
	.string	"application/x-httpd-cgi"
	.text
	.type	maybe_add_default_accepts, @function
maybe_add_default_accepts:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$24, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$.LC38, (%rax)
	movq	-8(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 12(%rdx)
.L99:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$.LC39, (%rax)
	movq	-24(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L100
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 8(%rdx)
	jmp	.L101
.L100:
	cmpl	$0, -28(%rbp)
	je	.L102
	movl	.LC22(%rip), %eax
	jmp	.L103
.L102:
	movl	.LC40(%rip), %eax
.L103:
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
.L101:
	movq	-8(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 12(%rdx)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	maybe_add_default_accepts, .-maybe_add_default_accepts
	.section	.rodata
.LC41:
	.string	"Body:"
	.text
	.type	get_header_line, @function
get_header_line:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L107:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	je	.L105
	movl	$0, %eax
	jmp	.L126
.L105:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L107
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L108
.L110:
	addq	$1, -8(%rbp)
.L108:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L109
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
	jne	.L110
.L109:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L111
	movl	$2, %eax
	jmp	.L126
.L111:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$5, %edx
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L112
	movl	$1, %eax
	jmp	.L126
.L112:
	jmp	.L113
.L125:
	movzbl	-17(%rbp), %eax
	cmpb	$35, %al
	jne	.L114
	jmp	.L115
.L116:
	nop
.L115:
	movq	-56(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	cmpl	$70014, %eax
	je	.L113
	movzbl	-17(%rbp), %eax
	cmpb	$10, %al
	jne	.L116
	jmp	.L113
.L114:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-17(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L117
	jmp	.L118
.L120:
	movq	-56(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	testl	%eax, %eax
	je	.L118
	jmp	.L119
.L118:
	movzbl	-17(%rbp), %eax
	cmpb	$10, %al
	je	.L119
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-17(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L120
.L119:
	movzbl	-17(%rbp), %eax
	movsbl	%al, %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	apr_file_ungetc
	movzbl	-17(%rbp), %eax
	cmpb	$10, %al
	jne	.L121
	movl	$1, %eax
	jmp	.L126
.L121:
	jmp	.L122
.L124:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	-17(%rbp), %edx
	movb	%dl, (%rax)
.L122:
	movq	-16(%rbp), %rax
	subq	$2, %rax
	cmpq	-8(%rbp), %rax
	jbe	.L123
	movq	-56(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	cmpl	$70014, %eax
	je	.L123
	movzbl	-17(%rbp), %eax
	cmpb	$10, %al
	jne	.L124
.L123:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$10, (%rax)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L113
.L117:
	movzbl	-17(%rbp), %eax
	movsbl	%al, %eax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	apr_file_ungetc
	movl	$1, %eax
	jmp	.L126
.L113:
	movq	-56(%rbp), %rdx
	leaq	-17(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	cmpl	$70014, %eax
	jne	.L125
	movl	$1, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	get_header_line, .-get_header_line
	.type	get_body, @function
get_body:
.LFB19:
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -12(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	testl	%eax, %eax
	je	.L128
	movq	$-1, %rax
	jmp	.L136
.L128:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	jne	.L130
	movq	$-1, %rax
	jmp	.L136
.L130:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
	jmp	.L131
.L134:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L132
	addq	$1, -8(%rbp)
	jmp	.L133
.L132:
	addq	$1, -8(%rbp)
.L131:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L134
.L133:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	addq	%rdx, %rax
	negq	%rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	testl	%eax, %eax
	je	.L135
	movq	$-1, %rax
	jmp	.L136
.L135:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	get_body, .-get_body
	.type	strip_paren_comments, @function
strip_paren_comments:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L138
.L147:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L139
	movq	-8(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L140
	jmp	.L137
.L140:
	addq	$1, -8(%rbp)
	jmp	.L138
.L139:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L142
	jmp	.L143
.L145:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
.L143:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L144
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$41, %al
	jne	.L145
.L144:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L138
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, (%rax)
	jmp	.L138
.L142:
	addq	$1, -8(%rbp)
.L138:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L147
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	strip_paren_comments, .-strip_paren_comments
	.section	.rodata
	.align 8
.LC42:
	.string	"Syntax error in type map, no ':' in %s for header %s"
	.align 8
.LC43:
	.string	"Syntax error in type map --- no header body: %s for %s"
	.text
	.type	lcase_header_name_return_body, @function
lcase_header_name_return_body:
.LFB21:
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
	movq	%rax, -8(%rbp)
	jmp	.L149
.L151:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L149:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L150
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L151
.L150:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L152
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC42, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$919, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L153
.L152:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L154
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
	jne	.L152
.L154:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L155
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC43, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$930, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L153
.L155:
	movq	-8(%rbp), %rax
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	lcase_header_name_return_body, .-lcase_header_name_return_body
	.section	.rodata
	.align 8
.LC44:
	.string	"cannot access type map file: %s"
.LC45:
	.string	"uri:"
.LC46:
	.string	"content-type:"
.LC47:
	.string	"content-length:"
	.align 8
.LC48:
	.string	"Parse error in type map, Content-Length: '%s' in %s is invalid."
.LC49:
	.string	"content-language:"
.LC50:
	.string	"content-encoding:"
.LC51:
	.string	"description:"
.LC52:
	.string	"body:"
	.align 8
.LC53:
	.string	"Syntax error in type map, no end tag '%s'found in %s for Body: content."
	.text
	.type	read_type_map, @function
read_type_map:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8496, %rsp
	movq	%rdi, -8472(%rbp)
	movq	%rsi, -8480(%rbp)
	movq	%rdx, -8488(%rbp)
	movq	-8480(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -80(%rbp)
	cmpq	$0, -8472(%rbp)
	jne	.L157
	leaq	-80(%rbp), %rax
	movq	%rax, -8472(%rbp)
.L157:
	movq	-8480(%rbp), %rax
	movl	$0, 80(%rax)
	movq	-8480(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8488(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-8472(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$129, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L158
	movq	-8488(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %eax
	pushq	%rdx
	movl	$.LC44, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$958, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	cmpl	$20, -36(%rbp)
	je	.L159
	cmpl	$2, -36(%rbp)
	jne	.L160
.L159:
	movl	$404, %eax
	jmp	.L187
.L160:
	movl	$403, %eax
	jmp	.L187
.L158:
	leaq	-8400(%rbp), %rax
	movq	%rax, %rdi
	call	clean_var_rec
	movl	$0, -4(%rbp)
.L185:
	movq	-8472(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-8272(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	get_header_line
	movl	%eax, -40(%rbp)
	cmpl	$1, -40(%rbp)
	jne	.L162
	movq	-8480(%rbp), %rax
	movq	8(%rax), %rdx
	leaq	-8272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lcase_header_name_return_body
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L163
	movl	$500, %eax
	jmp	.L187
.L163:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strip_paren_comments
	movq	-56(%rbp), %rax
	movq	%rax, -8408(%rbp)
	leaq	-8272(%rbp), %rax
	movl	$4, %edx
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L164
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8408(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_token
	movq	%rax, -8384(%rbp)
	jmp	.L165
.L164:
	leaq	-8272(%rbp), %rax
	movl	$13, %edx
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L166
	movq	-8408(%rbp), %rdx
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8432(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_entry
	leaq	-8432(%rbp), %rdx
	leaq	-8400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_mime_fields
	movl	$1, -4(%rbp)
	jmp	.L165
.L166:
	leaq	-8272(%rbp), %rax
	movl	$15, %edx
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L167
	movq	-8408(%rbp), %rsi
	leaq	-8440(%rbp), %rdx
	leaq	-8448(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	testl	%eax, %eax
	jne	.L168
	movq	-8440(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L168
	movq	-8448(%rbp), %rax
	testq	%rax, %rax
	jns	.L169
.L168:
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-8408(%rbp), %rax
	movq	-32(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC48, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1001, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L183
.L169:
	movq	-8448(%rbp), %rax
	movq	%rax, -8312(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L165
.L167:
	leaq	-8272(%rbp), %rax
	movl	$17, %edx
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L171
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8408(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_languages_line
	movq	%rax, -8360(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L165
.L171:
	leaq	-8272(%rbp), %rax
	movl	$17, %edx
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L172
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8408(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_get_token
	movq	%rax, -8368(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L165
.L172:
	leaq	-8272(%rbp), %rax
	movl	$12, %edx
	movl	$.LC51, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L173
	movq	-8408(%rbp), %rdx
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L174
.L176:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L175
	movq	-16(%rbp), %rax
	movb	$32, (%rax)
.L175:
	addq	$1, -16(%rbp)
.L174:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L176
	movq	-16(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jbe	.L177
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movb	$0, (%rax)
.L177:
	movq	-64(%rbp), %rax
	movq	%rax, -8344(%rbp)
	jmp	.L165
.L173:
	leaq	-8272(%rbp), %rax
	movl	$5, %edx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L182
	movq	-8408(%rbp), %rdx
	movq	-8480(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	movq	$8192, -8456(%rbp)
	jmp	.L178
.L180:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L178:
	subq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L179
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L180
.L179:
	movq	-8472(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rdx
	leaq	-8456(%rbp), %rsi
	leaq	-8272(%rbp), %rax
	movq	%rax, %rdi
	call	get_body
	movq	%rax, -8376(%rbp)
	movq	-8376(%rbp), %rax
	testq	%rax, %rax
	jns	.L181
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	pushq	%rax
	pushq	-72(%rbp)
	movl	$.LC53, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1036, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L183
.L181:
	movq	-8456(%rbp), %rax
	movq	%rax, -8312(%rbp)
	movq	-8488(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, -8384(%rbp)
.L165:
	jmp	.L182
.L162:
	movq	-8384(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L184
	cmpl	$0, -4(%rbp)
	je	.L184
	movq	-8480(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8400(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8392(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8384(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8376(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8368(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8360(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8352(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8344(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8336(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-8328(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-8320(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-8312(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-8304(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8296(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-8288(%rbp), %rdx
	movq	%rdx, 112(%rax)
.L184:
	leaq	-8400(%rbp), %rax
	movq	%rax, %rdi
	call	clean_var_rec
	movl	$0, -4(%rbp)
.L182:
	cmpl	$0, -40(%rbp)
	jne	.L185
.L183:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L186
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L186:
	movq	-8488(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_vlist_validator
	movl	$0, %eax
.L187:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	read_type_map, .-read_type_map
	.type	variantsortf, @function
variantsortf:
.LFB23:
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
	movss	80(%rax), %xmm1
	movq	-16(%rbp), %rax
	movss	80(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L196
	movl	$1, %eax
	jmp	.L191
.L196:
	movq	-8(%rbp), %rax
	movss	80(%rax), %xmm0
	movq	-16(%rbp), %rax
	movss	80(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L197
	movl	$-1, %eax
	jmp	.L191
.L197:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
.L191:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	variantsortf, .-variantsortf
	.section	.rodata
	.align 8
.LC54:
	.string	"cannot read directory for multi: %s"
.LC55:
	.string	"ap-mime-exceptions-list"
.LC56:
	.string	"application/x-type-map"
.LC57:
	.string	"type-map"
	.align 8
.LC58:
	.string	"Negotiation: discovered file(s) matching request: %s (None could be negotiated)."
	.text
	.type	read_types_multi, @function
read_types_multi:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$400, %rsp
	movq	%rdi, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	clean_var_rec
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L199
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L199
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_os_is_path_absolute
	testl	%eax, %eax
	jne	.L200
.L199:
	movl	$-1, %eax
	jmp	.L228
.L200:
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L202
	movl	$-1, %eax
	jmp	.L228
.L202:
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -52(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rdx
	movq	-392(%rbp), %rax
	movq	24(%rax), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dir_open
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L203
	movq	-392(%rbp), %rax
	movq	24(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	pushq	%rdx
	movl	$.LC54, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1121, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L228
.L203:
	jmp	.L204
.L226:
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L205
	jmp	.L204
.L205:
	movq	-120(%rbp), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L206
	jmp	.L204
.L206:
	movl	-216(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L207
	movl	-208(%rbp), %eax
	cmpl	$2, %eax
	jne	.L207
	jmp	.L204
.L207:
	movl	$1, -4(%rbp)
	movq	-40(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_sub_req_lookup_dirent
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	je	.L208
	jmp	.L204
.L208:
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L209
	movq	-64(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L209
	movq	-64(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
.L209:
	movq	-64(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L210
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	jmp	.L204
.L210:
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L211
.L216:
	movq	-24(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L212
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
.L212:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -73(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L213
	subl	$1, -8(%rbp)
	addq	$8, -16(%rbp)
.L213:
	cmpb	$0, -73(%rbp)
	jne	.L214
	jmp	.L215
.L214:
	movq	-32(%rbp), %rax
	movzbl	-73(%rbp), %edx
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.L211:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L215
	cmpl	$0, -8(%rbp)
	jne	.L216
.L215:
	cmpl	$0, -8(%rbp)
	je	.L217
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	jmp	.L204
.L217:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L218
	movq	-64(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L219
.L218:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	jmp	.L204
.L219:
	movq	-64(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L220
	movq	-64(%rbp), %rax
	movq	280(%rax), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L221
.L220:
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L222
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L222
.L221:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movq	-392(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 12(%rax)
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L223
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L228
.L223:
	movq	-64(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	read_type_map
	jmp	.L228
.L222:
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-120(%rbp), %rdx
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -336(%rbp)
	movq	-64(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	je	.L224
	movq	-64(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -320(%rbp)
.L224:
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	je	.L225
	movq	-64(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, -312(%rbp)
.L225:
	movq	-64(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	leaq	-384(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_entry
	leaq	-384(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_mime_fields
	movq	-392(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-352(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-344(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-336(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-328(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-320(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-312(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-304(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-296(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-288(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-280(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-264(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-248(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-240(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-392(%rbp), %rax
	movl	80(%rax), %eax
	leal	1(%rax), %edx
	movq	-392(%rbp), %rax
	movl	%edx, 80(%rax)
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	clean_var_rec
.L204:
	movq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	$33554432, %esi
	movq	%rax, %rdi
	call	apr_dir_read
	testl	%eax, %eax
	je	.L226
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	cmpl	$0, -4(%rbp)
	je	.L227
	movq	-392(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L227
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC58, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1293, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L228
.L227:
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_vlist_validator
	movq	-392(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rsi
	movq	-392(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movl	$variantsortf, %ecx
	movl	$120, %edx
	movq	%rax, %rdi
	call	qsort
	movl	$0, %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	read_types_multi, .-read_types_multi
	.type	mime_match, @function
mime_match:
.LFB25:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L230
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	testl	%eax, %eax
	jg	.L231
	movq	-48(%rbp), %rax
	movl	$1, 108(%rax)
.L231:
	movl	$1, %eax
	jmp	.L232
.L230:
	movl	-20(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L233
	movl	-20(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L233
	movq	-48(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$1, %eax
	jg	.L234
	movq	-48(%rbp), %rax
	movl	$2, 108(%rax)
.L234:
	movl	$1, %eax
	jmp	.L232
.L233:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L235
	movq	-8(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L236
	movq	-16(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L235
	movq	-16(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L236
.L235:
	movq	-40(%rbp), %rax
	movss	12(%rax), %xmm0
	movq	-48(%rbp), %rax
	movss	84(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.L236
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 104(%rdx)
	movq	-48(%rbp), %rax
	movl	$3, 108(%rax)
	movl	$1, %eax
	jmp	.L232
.L236:
	movl	$0, %eax
.L232:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	mime_match, .-mime_match
	.type	level_cmp, @function
level_cmp:
.LFB26:
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
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L240
	movq	-16(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	jne	.L240
	movl	$0, %eax
	jmp	.L241
.L240:
	movq	-8(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	jne	.L242
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L242
	movl	$0, %eax
	jmp	.L241
.L242:
	movq	-8(%rbp), %rax
	movss	104(%rax), %xmm0
	movq	-16(%rbp), %rax
	movss	104(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L255
	movl	$1, %eax
	jmp	.L241
.L255:
	movq	-8(%rbp), %rax
	movss	104(%rax), %xmm1
	movq	-16(%rbp), %rax
	movss	104(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L256
	movl	$-1, %eax
	jmp	.L241
.L256:
	movq	-8(%rbp), %rax
	movss	84(%rax), %xmm1
	movq	-16(%rbp), %rax
	movss	84(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L257
	movl	$1, %eax
	jmp	.L241
.L257:
	movq	-8(%rbp), %rax
	movss	84(%rax), %xmm0
	movq	-16(%rbp), %rax
	movss	84(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L258
	movl	$-1, %eax
	jmp	.L241
.L258:
	movl	$0, %eax
.L241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	level_cmp, .-level_cmp
	.type	find_lang_index, @function
find_lang_index:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L260
	cmpq	$0, -24(%rbp)
	jne	.L261
.L260:
	movl	$-1, %eax
	jmp	.L262
.L261:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L263
.L265:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L264
	movl	-12(%rbp), %eax
	jmp	.L262
.L264:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	shrq	$3, %rax
	salq	$3, %rax
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L263:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L265
	movl	$-1, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	find_lang_index, .-find_lang_index
	.type	set_default_lang_quality, @function
set_default_lang_quality:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L267
	movl	$0, -4(%rbp)
	jmp	.L268
.L271:
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L269
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L269
	movq	-40(%rbp), %rdx
	movl	.LC59(%rip), %eax
	movl	%eax, 36(%rdx)
	jmp	.L266
.L269:
	addl	$1, -4(%rbp)
.L268:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L271
.L267:
	movq	-40(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 36(%rdx)
.L266:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	set_default_lang_quality, .-set_default_lang_quality
	.type	set_language_quality, @function
set_language_quality:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L273
	movl	$2, -4(%rbp)
.L273:
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L274
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L275
.L274:
	movq	-136(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L276
	movq	-136(%rbp), %rax
	movl	36(%rax), %eax
	movq	-144(%rbp), %rdx
	movl	%eax, 64(%rdx)
.L276:
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L277
	jmp	.L272
.L277:
	jmp	.L272
.L275:
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L279
	movq	-144(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L280
.L279:
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	.LC16(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L281
.L293:
	movq	$0, -80(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -88(%rbp)
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L282
.L288:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L283
	cmpq	$0, -24(%rbp)
	jne	.L284
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L285
.L284:
	jmp	.L285
.L283:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	-88(%rbp), %rax
	jb	.L286
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L286
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L287
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L286
.L287:
	movq	-88(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jbe	.L286
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.L286:
	cmpq	$0, -32(%rbp)
	jne	.L285
	movq	-136(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L285
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$45, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L285
	movq	-80(%rbp), %rcx
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movslq	%eax, %rsi
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-96(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L285
	movl	.LC40(%rip), %eax
	movl	%eax, -36(%rbp)
.L285:
	addl	$1, -44(%rbp)
.L282:
	movq	-136(%rbp), %rax
	movq	64(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-44(%rbp), %eax
	jg	.L288
	cmpq	$0, -16(%rbp)
	je	.L289
	cmpq	$0, -32(%rbp)
	je	.L290
	movq	-32(%rbp), %rax
	movss	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L290
.L289:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L290:
	cmpq	$0, -32(%rbp)
	jne	.L292
	cmpq	$0, -24(%rbp)
	je	.L292
	movl	$1, -40(%rbp)
.L292:
	addl	$1, -48(%rbp)
.L281:
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-48(%rbp), %eax
	jg	.L293
	cmpl	$0, -40(%rbp)
	je	.L294
	cmpq	$0, -16(%rbp)
	je	.L295
	movq	-24(%rbp), %rax
	movss	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L296
.L295:
	cmpq	$0, -16(%rbp)
	jne	.L294
.L296:
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-144(%rbp), %rax
	movl	$0, 112(%rax)
.L294:
	cmpq	$0, -16(%rbp)
	je	.L297
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L298
.L297:
	movl	-36(%rbp), %eax
.L298:
	movq	-144(%rbp), %rdx
	movl	%eax, 64(%rdx)
.L280:
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L299
	movq	-144(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	js	.L300
.L299:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L301
	movq	-144(%rbp), %rax
	movss	64(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L312
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L300
	jmp	.L312
.L300:
	movl	$-1, -60(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L303
.L306:
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$-1, -116(%rbp)
	movq	-136(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_lang_index
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	js	.L304
	cmpl	$-1, -60(%rbp)
	je	.L305
	movl	-116(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.L304
.L305:
	movl	-116(%rbp), %eax
	movl	%eax, -60(%rbp)
.L304:
	addl	$1, -64(%rbp)
.L303:
	movq	-144(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-64(%rbp), %eax
	jg	.L306
	cmpl	$0, -60(%rbp)
	js	.L301
	movq	-144(%rbp), %rax
	movss	64(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L310
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L311
.L310:
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L301
	movq	-144(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 96(%rax)
	jmp	.L312
.L311:
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L301
	movq	-144(%rbp), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 96(%rax)
	movq	-144(%rbp), %rdx
	movl	.LC59(%rip), %eax
	movl	%eax, 64(%rdx)
	movq	-144(%rbp), %rax
	movl	$0, 112(%rax)
.L301:
	nop
.L312:
	nop
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	set_language_quality, .-set_language_quality
	.type	find_content_length, @function
find_content_length:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jns	.L314
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L315
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movl	400(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L315
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	448(%rax), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L314
.L315:
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, -8(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	jne	.L314
	movq	-72(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, 88(%rax)
.L314:
	movq	-144(%rbp), %rax
	movq	88(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	find_content_length, .-find_content_length
	.type	set_accept_quality, @function
set_accept_quality:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	.LC16(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L318
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L319
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L319
	movq	-64(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L317
.L319:
	jmp	.L317
.L318:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L321
.L328:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	108(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mime_match
	testl	%eax, %eax
	jne	.L322
	jmp	.L323
.L322:
	movq	-64(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	-36(%rbp), %eax
	jne	.L324
	jmp	.L323
.L324:
	movq	-56(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L325
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L325
	movq	-64(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$1, %eax
	jne	.L325
	movl	.LC60(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.L326
.L325:
	movq	-56(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	jne	.L327
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	jne	.L327
	movq	-64(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$2, %eax
	jne	.L327
	movl	.LC61(%rip), %eax
	movl	%eax, -8(%rbp)
	jmp	.L326
.L327:
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -8(%rbp)
.L326:
	movq	-64(%rbp), %rax
	movl	108(%rax), %eax
	cmpl	$3, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
.L323:
	addl	$1, -4(%rbp)
.L321:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L328
	movq	-64(%rbp), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, 76(%rdx)
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L329
	cmpl	$0, -12(%rbp)
	je	.L329
	movl	$1, %edx
	jmp	.L330
.L329:
	movl	$0, %edx
.L330:
	movq	-64(%rbp), %rax
	movl	%edx, 112(%rax)
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	set_accept_quality, .-set_accept_quality
	.section	.rodata
.LC62:
	.string	"text/"
.LC63:
	.string	"iso-8859-1"
	.text
	.type	set_charset_quality, @function
set_charset_quality:
.LFB32:
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
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L332
	cmpq	$0, -16(%rbp)
	je	.L333
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L333
	movq	-64(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L331
.L333:
	jmp	.L331
.L332:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L335
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L336
.L335:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$5, %edx
	movl	$.LC62, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L337
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L337
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L337
	jmp	.L331
.L337:
	movq	-56(%rbp), %rax
	movl	88(%rax), %eax
	testl	%eax, %eax
	je	.L338
	jmp	.L331
.L338:
	movq	$.LC63, -16(%rbp)
.L336:
	movl	$0, -4(%rbp)
	jmp	.L339
.L342:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L340
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 72(%rdx)
	jmp	.L331
.L340:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L341
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.L341:
	addl	$1, -4(%rbp)
.L339:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L342
	cmpq	$0, -24(%rbp)
	je	.L343
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 72(%rdx)
	movq	-64(%rbp), %rax
	movl	$0, 112(%rax)
	jmp	.L331
.L343:
	movq	-16(%rbp), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L344
	movq	-64(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 72(%rdx)
	jmp	.L331
.L344:
	movq	-64(%rbp), %rdx
	movl	.LC16(%rip), %eax
	movl	%eax, 72(%rdx)
.L331:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	set_charset_quality, .-set_charset_quality
	.section	.rodata
.LC64:
	.string	"7bit"
.LC65:
	.string	"8bit"
.LC66:
	.string	"binary"
	.text
	.type	is_identity_encoding, @function
is_identity_encoding:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L346
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L346
	movq	-8(%rbp), %rax
	movl	$.LC64, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L346
	movq	-8(%rbp), %rax
	movl	$.LC65, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L346
	movq	-8(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L347
.L346:
	movl	$1, %eax
	jmp	.L348
.L347:
	movl	$0, %eax
.L348:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	is_identity_encoding, .-is_identity_encoding
	.section	.rodata
.LC68:
	.string	"identity"
	.text
	.type	set_encoding_quality, @function
set_encoding_quality:
.LFB34:
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
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	.LC16(%rip), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L351
	cmpq	$0, -8(%rbp)
	je	.L352
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_identity_encoding
	testl	%eax, %eax
	je	.L353
.L352:
	movq	-64(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 68(%rdx)
	jmp	.L350
.L353:
	movq	-64(%rbp), %rdx
	movl	.LC67(%rip), %eax
	movl	%eax, 68(%rdx)
	jmp	.L350
.L351:
	cmpq	$0, -8(%rbp)
	je	.L356
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_identity_encoding
	testl	%eax, %eax
	je	.L357
.L356:
	movq	$.LC68, -8(%rbp)
	movl	.LC59(%rip), %eax
	movl	%eax, -20(%rbp)
.L357:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L358
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L358
	addq	$2, -8(%rbp)
.L358:
	movl	$0, -24(%rbp)
	jmp	.L359
.L363:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L360
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L360
	addq	$2, -32(%rbp)
.L360:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L361
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 68(%rdx)
	jmp	.L350
.L361:
	movq	-32(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L362
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L362:
	addl	$1, -24(%rbp)
.L359:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-24(%rbp), %eax
	jg	.L363
	cmpq	$0, -16(%rbp)
	je	.L364
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	%eax, 68(%rdx)
	jmp	.L350
.L364:
	movq	-64(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, 68(%rdx)
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	set_encoding_quality, .-set_encoding_quality
	.type	is_variant_better_rvsa, @function
is_variant_better_rvsa:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movss	68(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L366
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L366
	movl	$0, %eax
	jmp	.L368
.L366:
	movq	-32(%rbp), %rax
	movss	76(%rax), %xmm1
	movq	-32(%rbp), %rax
	movss	80(%rax), %xmm0
	mulss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movss	72(%rax), %xmm1
	mulss	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movss	64(%rax), %xmm1
	mulss	%xmm1, %xmm0
	movd	%xmm0, %eax
	movl	%eax, -8(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jb	.L381
	movl	$0, %eax
	jmp	.L368
.L381:
	movss	-8(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jbe	.L382
	movq	-48(%rbp), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L368
.L382:
	movss	-8(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jp	.L373
	movss	-8(%rbp), %xmm0
	ucomiss	-4(%rbp), %xmm0
	jne	.L373
	movq	-32(%rbp), %rax
	movss	68(%rax), %xmm0
	movq	-40(%rbp), %rax
	movss	68(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L373
	movq	-48(%rbp), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L368
.L373:
	movl	$0, %eax
.L368:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	is_variant_better_rvsa, .-is_variant_better_rvsa
	.type	is_variant_better, @function
is_variant_better:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movss	68(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L417
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L384
.L417:
	movq	-48(%rbp), %rax
	movss	64(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L418
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L384
.L418:
	movq	-48(%rbp), %rax
	movss	80(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L419
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L384
.L419:
	movq	-48(%rbp), %rax
	movss	72(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L420
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	je	.L384
.L420:
	movq	-48(%rbp), %rax
	movss	76(%rax), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L389
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L389
.L384:
	movl	$0, %eax
	jmp	.L391
.L389:
	movq	-48(%rbp), %rax
	movss	76(%rax), %xmm1
	movq	-48(%rbp), %rax
	movss	80(%rax), %xmm0
	mulss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -24(%rbp)
	pxor	%xmm0, %xmm0
	ucomiss	-24(%rbp), %xmm0
	jp	.L421
	pxor	%xmm0, %xmm0
	ucomiss	-24(%rbp), %xmm0
	je	.L392
.L421:
	movss	-20(%rbp), %xmm0
	ucomiss	-24(%rbp), %xmm0
	jbe	.L427
.L392:
	movl	$0, %eax
	jmp	.L391
.L427:
	movss	-24(%rbp), %xmm0
	ucomiss	-20(%rbp), %xmm0
	ja	.L396
	cmpq	$0, -56(%rbp)
	jne	.L397
.L396:
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L397:
	movq	-48(%rbp), %rax
	movss	64(%rax), %xmm1
	movq	-56(%rbp), %rax
	movss	64(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L428
	movl	$0, %eax
	jmp	.L391
.L428:
	movq	-48(%rbp), %rax
	movss	64(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	64(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L429
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L429:
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$-1, %eax
	je	.L402
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$-1, %eax
	je	.L403
	movq	-48(%rbp), %rax
	movl	96(%rax), %edx
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jle	.L402
.L403:
	movl	$0, %eax
	jmp	.L391
.L402:
	movq	-48(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$-1, %eax
	je	.L404
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	$-1, %eax
	je	.L405
	movq	-48(%rbp), %rax
	movl	96(%rax), %edx
	movq	-56(%rbp), %rax
	movl	96(%rax), %eax
	cmpl	%eax, %edx
	jge	.L404
.L405:
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L404:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	level_cmp
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.L406
	movl	$0, %eax
	jmp	.L391
.L406:
	cmpl	$1, -28(%rbp)
	jne	.L407
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L407:
	movq	-48(%rbp), %rax
	movss	72(%rax), %xmm1
	movq	-56(%rbp), %rax
	movss	72(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L430
	movl	$0, %eax
	jmp	.L391
.L430:
	movq	-48(%rbp), %rax
	movss	72(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	72(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	ja	.L410
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L411
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L411
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L411
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L410
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L410
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L411
.L410:
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L411:
	movq	-48(%rbp), %rax
	movss	68(%rax), %xmm1
	movq	-56(%rbp), %rax
	movss	68(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L431
	movl	$0, %eax
	jmp	.L391
.L431:
	movq	-48(%rbp), %rax
	movss	68(%rax), %xmm0
	movq	-56(%rbp), %rax
	movss	68(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L432
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
	jmp	.L391
.L432:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_content_length
	movq	%rax, %rbx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_content_length
	cmpq	%rax, %rbx
	jl	.L416
	movl	$0, %eax
	jmp	.L391
.L416:
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$1, %eax
.L391:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	is_variant_better, .-is_variant_better
	.type	variant_has_language, @function
variant_has_language:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L434
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L434
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L435
.L434:
	movl	$0, %eax
	jmp	.L436
.L435:
	movl	$0, -4(%rbp)
	jmp	.L437
.L439:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L438
	movl	$1, %eax
	jmp	.L436
.L438:
	addl	$1, -4(%rbp)
.L437:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L439
	movl	$0, %eax
.L436:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	variant_has_language, .-variant_has_language
	.type	discard_variant_by_env, @function
discard_variant_by_env:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	is_identity_encoding
	testl	%eax, %eax
	jne	.L441
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$.LC68, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L442
.L441:
	movl	$0, %eax
	jmp	.L443
.L442:
	cmpl	$1, -12(%rbp)
	je	.L444
	cmpl	$2, -12(%rbp)
	jne	.L445
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L444
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$9, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L445
.L444:
	movl	$1, %eax
	jmp	.L447
.L445:
	movl	$0, %eax
.L447:
	nop
.L443:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	discard_variant_by_env, .-discard_variant_by_env
	.section	.rodata
.LC69:
	.string	"prefer-language"
.LC70:
	.string	"no-gzip"
.LC71:
	.string	"gzip-only-text/html"
.LC72:
	.string	"1"
	.text
	.type	best_match, @function
best_match:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	.LC16(%rip), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %rax
	movl	$.LC70, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L449
	movl	$1, -24(%rbp)
	jmp	.L450
.L449:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	264(%rax), %rax
	movl	$.LC71, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L450
	movq	-48(%rbp), %rax
	movl	$.LC72, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L450
	movl	$2, -24(%rbp)
.L450:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	set_default_lang_quality
.L470:
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L451
.L459:
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L452
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	discard_variant_by_env
	testl	%eax, %eax
	je	.L452
	jmp	.L453
.L452:
	cmpq	$0, -32(%rbp)
	je	.L454
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	variant_has_language
	testl	%eax, %eax
	jne	.L454
	jmp	.L453
.L454:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_accept_quality
	cmpq	$0, -32(%rbp)
	je	.L455
	movq	-56(%rbp), %rdx
	movl	.LC17(%rip), %eax
	movl	%eax, 64(%rdx)
	movq	-56(%rbp), %rax
	movl	$1, 112(%rax)
	jmp	.L456
.L455:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_language_quality
.L456:
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_encoding_quality
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	set_charset_quality
	movq	-72(%rbp), %rax
	movl	100(%rax), %eax
	testl	%eax, %eax
	je	.L453
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L457
	leaq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	is_variant_better_rvsa
	testl	%eax, %eax
	je	.L453
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L453
.L457:
	leaq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	is_variant_better
	testl	%eax, %eax
	je	.L453
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
.L453:
	addl	$1, -4(%rbp)
.L451:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L459
	movq	-72(%rbp), %rax
	movl	104(%rax), %eax
	testl	%eax, %eax
	je	.L460
	cmpq	$0, -16(%rbp)
	je	.L461
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L461
	movss	-60(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L461
	movl	$1, %eax
	jmp	.L463
.L461:
	movl	$2, %eax
.L463:
	movl	%eax, -20(%rbp)
	jmp	.L464
.L460:
	movss	-60(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L474
	movl	$1, %eax
	jmp	.L467
.L474:
	movl	$2, %eax
.L467:
	movl	%eax, -20(%rbp)
.L464:
	cmpq	$0, -32(%rbp)
	je	.L468
	cmpq	$0, -16(%rbp)
	je	.L469
	cmpl	$1, -20(%rbp)
	je	.L468
.L469:
	movq	$0, -32(%rbp)
	jmp	.L470
.L468:
	nop
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	best_match, .-best_match
	.section	.rodata
.LC73:
	.string	"{\""
.LC74:
	.string	"\" "
.LC75:
	.string	"%1.3f"
.LC76:
	.string	" {type "
.LC77:
	.string	"}"
.LC78:
	.string	" {charset "
.LC79:
	.string	" {language "
.LC80:
	.string	" {encoding "
.LC81:
	.string	" {length "
.LC82:
	.string	", "
.LC83:
	.string	"Alternates"
.LC84:
	.string	", accept-encoding"
.LC85:
	.string	", accept-charset"
.LC86:
	.string	", accept-language"
.LC87:
	.string	", accept"
.LC88:
	.string	", negotiate"
.LC89:
	.string	"Vary"
.LC90:
	.string	"list"
.LC91:
	.string	"choice"
.LC92:
	.string	"TCN"
	.text
	.type	set_neg_headers, @function
set_neg_headers:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -100(%rbp)
	movl	$1, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-160(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L476
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L476
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	-100(%rbp), %ecx
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -64(%rbp)
	jmp	.L477
.L476:
	movq	$0, -64(%rbp)
.L477:
	movq	-152(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L478
.L511:
	movl	-88(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L479
	movq	-120(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L479
	movq	-120(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, -56(%rbp)
	jmp	.L480
.L479:
	movq	$0, -56(%rbp)
.L480:
	cmpl	$0, -68(%rbp)
	je	.L481
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L482
.L481:
	cmpl	$0, -72(%rbp)
	jne	.L483
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L484
	movq	-120(%rbp), %rax
	movq	8(%rax), %rdx
	jmp	.L485
.L484:
	movl	$.LC15, %edx
.L485:
	cmpq	$0, -24(%rbp)
	je	.L486
	movq	-24(%rbp), %rax
	jmp	.L487
.L486:
	movl	$.LC15, %eax
.L487:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L483
	movl	$1, -72(%rbp)
.L483:
	cmpl	$0, -80(%rbp)
	jne	.L488
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L489
	movq	-120(%rbp), %rax
	movq	48(%rax), %rdx
	jmp	.L490
.L489:
	movl	$.LC15, %edx
.L490:
	cmpq	$0, -48(%rbp)
	je	.L491
	movq	-48(%rbp), %rax
	jmp	.L492
.L491:
	movl	$.LC15, %eax
.L492:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L488
	movl	$1, -80(%rbp)
.L488:
	cmpl	$0, -76(%rbp)
	jne	.L493
	cmpq	$0, -56(%rbp)
	je	.L494
	movq	-56(%rbp), %rdx
	jmp	.L495
.L494:
	movl	$.LC15, %edx
.L495:
	cmpq	$0, -32(%rbp)
	je	.L496
	movq	-32(%rbp), %rax
	jmp	.L497
.L496:
	movl	$.LC15, %eax
.L497:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L493
	movl	$1, -76(%rbp)
.L493:
	cmpl	$0, -84(%rbp)
	jne	.L482
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L498
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	jmp	.L499
.L498:
	movl	$.LC15, %edx
.L499:
	cmpq	$0, -40(%rbp)
	je	.L500
	movq	-40(%rbp), %rax
	jmp	.L501
.L500:
	movl	$.LC15, %eax
.L501:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L482
	movl	$1, -84(%rbp)
.L482:
	movl	$0, -68(%rbp)
	movq	-160(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	jne	.L502
	jmp	.L503
.L502:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC73, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC74, (%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movss	80(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-128(%rbp), %rax
	movl	$.LC75, %edx
	movl	$6, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	apr_snprintf
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L504
	movq	-128(%rbp), %rax
	addq	$4, %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L504
	movq	-128(%rbp), %rax
	addq	$3, %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L504
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movb	$0, (%rax)
.L504:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L505
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L505
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC76, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
.L505:
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L506
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L506
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC78, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
.L506:
	cmpq	$0, -56(%rbp)
	je	.L507
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC79, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
.L507:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L508
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L508
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC80, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
.L508:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L509
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L510
.L509:
	movq	-120(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_content_length
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	js	.L510
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC81, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_off_t_toa
	movq	%rax, (%rbx)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
.L510:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC77, (%rax)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC82, (%rax)
.L503:
	addl	$1, -88(%rbp)
.L478:
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-88(%rbp), %eax
	jg	.L511
	movq	-160(%rbp), %rax
	movl	96(%rax), %eax
	testl	%eax, %eax
	je	.L512
	movq	-160(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L512
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 12(%rax)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	apr_table_mergen
.L512:
	movq	-160(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	jne	.L513
	cmpl	$0, -72(%rbp)
	jne	.L513
	cmpl	$0, -76(%rbp)
	jne	.L513
	cmpl	$0, -76(%rbp)
	jne	.L513
	cmpl	$0, -80(%rbp)
	jne	.L513
	cmpl	$0, -84(%rbp)
	je	.L514
.L513:
	cmpl	$0, -84(%rbp)
	je	.L515
	movl	$.LC84, %r8d
	jmp	.L516
.L515:
	movl	$.LC15, %r8d
.L516:
	cmpl	$0, -80(%rbp)
	je	.L517
	movl	$.LC85, %edi
	jmp	.L518
.L517:
	movl	$.LC15, %edi
.L518:
	cmpl	$0, -76(%rbp)
	je	.L519
	movl	$.LC86, %ecx
	jmp	.L520
.L519:
	movl	$.LC15, %ecx
.L520:
	cmpl	$0, -72(%rbp)
	je	.L521
	movl	$.LC87, %edx
	jmp	.L522
.L521:
	movl	$.LC15, %edx
.L522:
	movq	-160(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L523
	movl	$.LC88, %esi
	jmp	.L524
.L523:
	movl	$.LC15, %esi
.L524:
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	leaq	2(%rax), %rdx
	movq	-112(%rbp), %rax
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	apr_table_mergen
.L514:
	movq	-160(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L475
	cmpl	$2, -164(%rbp)
	jne	.L526
	movl	$.LC90, %edx
	jmp	.L527
.L526:
	movl	$.LC91, %edx
.L527:
	movq	-112(%rbp), %rax
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L475:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	set_neg_headers, .-set_neg_headers
	.section	.rodata
.LC93:
	.string	"Available variants:\n<ul>\n"
.LC94:
	.string	"<li><a href=\""
.LC95:
	.string	"\">"
.LC96:
	.string	"</a> "
.LC97:
	.string	", type "
.LC98:
	.string	", language "
.LC99:
	.string	", charset "
.LC100:
	.string	", encoding "
.LC101:
	.string	"</li>\n"
.LC102:
	.string	"</ul>\n"
	.text
	.type	make_variant_list, @function
make_variant_list:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %edx
	movl	%edx, %eax
	sall	$4, %eax
	subl	%edx, %eax
	addl	$2, %eax
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %ecx
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC93, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L529
.L538:
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L530
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L531
.L530:
	movl	$.LC15, %eax
.L531:
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L532
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	jmp	.L533
.L532:
	movl	$.LC15, %eax
.L533:
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC94, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC95, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC96, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L534
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L534
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC97, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
.L534:
	cmpq	$0, -56(%rbp)
	je	.L535
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L535
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC98, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, (%rbx)
.L535:
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L536
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L536
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC99, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, (%rdx)
.L536:
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L537
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC100, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, (%rdx)
.L537:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC101, (%rax)
	addl	$1, -20(%rbp)
.L529:
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L538
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC102, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	make_variant_list, .-make_variant_list
	.section	.rodata
.LC103:
	.string	"variant-list"
	.text
	.type	store_variant_list, @function
store_variant_list:
.LFB42:
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
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L541
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_variant_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC103, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L540
.L541:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_variant_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	272(%rax), %rax
	movl	$.LC103, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L540:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	store_variant_list, .-store_variant_list
	.section	.rodata
.LC104:
	.string	"Variant-Vary"
.LC105:
	.string	"Content-Location"
	.text
	.type	setup_choice_response, @function
setup_choice_response:
.LFB43:
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
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L544
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_file
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -12(%rbp)
	cmpl	$200, -12(%rbp)
	je	.L545
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L545
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	-12(%rbp), %eax
	jmp	.L546
.L545:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L547
.L544:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L547:
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L548
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L548
	movl	$506, %eax
	jmp	.L546
.L548:
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L549
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L549
	movl	$506, %eax
	jmp	.L546
.L549:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L550
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC104, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L550:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC105, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_neg_headers
	movl	$0, %eax
.L546:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	setup_choice_response, .-setup_choice_response
	.section	.rodata
.LC106:
	.string	"no acceptable variant: %s"
	.text
	.type	do_negotiation, @function
do_negotiation:
.LFB44:
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
	movl	%ecx, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L552
	movq	-48(%rbp), %rax
	movl	$1, 84(%rax)
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L553
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L553
	movq	-48(%rbp), %rax
	movl	$0, 84(%rax)
.L553:
	movl	$0, -4(%rbp)
	jmp	.L554
.L557:
	movl	-4(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L555
	movq	-48(%rbp), %rax
	movl	$0, 84(%rax)
.L555:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L556
	movq	-48(%rbp), %rax
	movl	$0, 84(%rax)
.L556:
	addl	$1, -4(%rbp)
.L554:
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L557
.L552:
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L558
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	parse_negotiate_header
	jmp	.L559
.L558:
	movq	-48(%rbp), %rax
	movl	$1, 100(%rax)
.L559:
	movl	-60(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	maybe_add_default_accepts
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	best_match
	movl	%eax, -28(%rbp)
	cmpl	$2, -28(%rbp)
	jne	.L560
	movq	-48(%rbp), %rax
	movl	$1, 96(%rax)
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_neg_headers
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	store_variant_list
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L561
	movq	-48(%rbp), %rax
	movl	92(%rax), %eax
	testl	%eax, %eax
	je	.L561
	movl	$300, %eax
	jmp	.L562
.L561:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L560
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC106, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2906, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$406, %eax
	jmp	.L562
.L560:
	movq	-48(%rbp), %rax
	movl	84(%rax), %eax
	testl	%eax, %eax
	je	.L563
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	setup_choice_response
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L564
	movl	-32(%rbp), %eax
	jmp	.L562
.L563:
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_neg_headers
.L564:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	do_cache_negotiated_docs
	testl	%eax, %eax
	jne	.L565
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jg	.L565
	movq	-48(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1, %eax
	je	.L565
	movq	-40(%rbp), %rax
	movl	$1, 336(%rax)
.L565:
	movl	$0, %eax
.L562:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	do_negotiation, .-do_negotiation
	.section	.rodata
.LC107:
	.string	"bytes"
.LC108:
	.string	"Accept-Ranges"
.LC109:
	.string	"; charset="
.LC110:
	.string	"?"
	.text
	.type	handle_map_file, @function
handle_map_file:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L567
	movq	-120(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L567
	movl	$-1, %eax
	jmp	.L584
.L567:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	parse_accept_headers
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	read_type_map
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L569
	movl	-36(%rbp), %eax
	jmp	.L584
.L569:
	leaq	-104(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	do_negotiation
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L570
	movl	-36(%rbp), %eax
	jmp	.L584
.L570:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L571
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movl	$-1, %r9d
	movl	$2, %r8d
	movl	$5, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_allow_standard_methods
	movq	-120(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L572
	movq	-120(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$2, %eax
	je	.L572
	movl	$405, %eax
	jmp	.L584
.L572:
	movq	-120(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC107, %edx
	movl	$.LC108, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-104(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_length
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L573
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L573
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L574
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L574
	movq	-104(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC109, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	jmp	.L573
.L574:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L573:
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L575
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L575
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_array_copy
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 304(%rax)
.L575:
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L576
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L576
	movq	-104(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 296(%rax)
.L576:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_meets_conditions
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L577
	movl	-36(%rbp), %eax
	jmp	.L584
.L577:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_discard_request_body
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L578
	movl	-36(%rbp), %eax
	jmp	.L584
.L578:
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	movq	-104(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	apr_bucket_file_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-120(%rbp), %rax
	movq	632(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L584
.L571:
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L579
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L579
	movq	-120(%rbp), %rax
	movq	352(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_find_path_info
	cltq
	addq	%rbx, %rax
	movb	$0, (%rax)
.L579:
	movq	-120(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L580
	movq	-120(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L581
	movq	-120(%rbp), %rax
	movq	384(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-88(%rbp), %rsi
	pushq	$0
	movq	%rdi, %r9
	movl	$.LC110, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	jmp	.L583
.L581:
	movq	-120(%rbp), %rax
	movq	384(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rsi
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$.LC110, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -24(%rbp)
	jmp	.L583
.L580:
	movq	-120(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -24(%rbp)
.L583:
	movq	-120(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_redirect
	movl	$0, %eax
.L584:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	handle_map_file, .-handle_map_file
	.type	handle_multi, @function
handle_multi:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L586
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$128, %eax
	testl	%eax, %eax
	jne	.L587
.L586:
	movl	$-1, %eax
	jmp	.L603
.L587:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	parse_accept_headers
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	read_types_multi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L589
.L590:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L591
.L593:
	movl	-16(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L592
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L592:
	addl	$1, -16(%rbp)
.L591:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L593
	movl	-12(%rbp), %eax
	jmp	.L603
.L589:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L594
	movl	$-1, %eax
	jmp	.L603
.L594:
	movq	-72(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L595
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	jne	.L595
	movq	-72(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L596
	movq	-72(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L596
.L595:
	movl	$1, %ecx
	jmp	.L597
.L596:
	movl	$0, %ecx
.L597:
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	do_negotiation
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L598
	jmp	.L590
.L598:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L599
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_file
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L599
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	jmp	.L590
.L599:
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_fast_redirect
	movq	-72(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L600
.L602:
	movl	-16(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	je	.L601
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L601
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L601:
	addl	$1, -16(%rbp)
.L600:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L602
	movl	$0, %eax
.L603:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	handle_multi, .-handle_multi
	.type	fix_encoding, @function
fix_encoding:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L605
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L606
.L605:
	movl	$-1, %eax
	jmp	.L607
.L606:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L608
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L608
	addq	$2, -8(%rbp)
.L608:
	movq	-56(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_header_line
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L609
	movl	$-1, %eax
	jmp	.L607
.L609:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L610
.L613:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L611
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 296(%rax)
	movl	$0, %eax
	jmp	.L607
.L611:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$120, %al
	jne	.L612
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L612
	movq	-48(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L612
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L612:
	addl	$1, -20(%rbp)
.L610:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L613
	cmpq	$0, -16(%rbp)
	je	.L614
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 296(%rax)
	movl	$0, %eax
	jmp	.L607
.L614:
	movl	$-1, %eax
.L607:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	fix_encoding, .-fix_encoding
	.type	register_hooks, @function
register_hooks:
.LFB48:
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
	movl	$fix_encoding, %edi
	call	ap_hook_fixups
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$handle_multi, %edi
	call	ap_hook_type_checker
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$handle_map_file, %edi
	call	ap_hook_handler
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	register_hooks, .-register_hooks
	.section	.rodata
	.align 4
.LC16:
	.long	0
	.align 4
.LC17:
	.long	1065353216
	.align 4
.LC21:
	.long	1148846080
	.align 4
.LC22:
	.long	1073741824
	.align 4
.LC23:
	.long	1077936128
	.align 4
.LC40:
	.long	981668463
	.align 4
.LC59:
	.long	953267991
	.align 4
.LC60:
	.long	1008981770
	.align 4
.LC61:
	.long	1017370378
	.align 4
.LC67:
	.long	1056964608
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

	.file	"mod_mime.c"
	.data
	.align 16
	.type	tspecial, @object
	.size	tspecial, 16
tspecial:
	.byte	40
	.byte	41
	.byte	60
	.byte	62
	.byte	64
	.byte	44
	.byte	59
	.byte	58
	.byte	92
	.byte	34
	.byte	47
	.byte	91
	.byte	93
	.byte	63
	.byte	61
	.byte	0
	.globl	mime_module
	.section	.rodata
.LC0:
	.string	"mod_mime.c"
	.data
	.align 64
	.type	mime_module, @object
	.size	mime_module, 104
mime_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_mime_dir_config
	.quad	merge_mime_dir_configs
	.quad	0
	.quad	0
	.quad	mime_cmds
	.quad	register_hooks
	.text
	.type	create_mime_dir_config, @function
create_mime_dir_config:
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
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 28(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_mime_dir_config, .-create_mime_dir_config
	.type	overlay_extension_mappings, @function
overlay_extension_mappings:
.LFB3:
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
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L5:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.L6:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L7:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
.L8:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
.L9:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
.L10:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	overlay_extension_mappings, .-overlay_extension_mappings
	.type	remove_items, @function
remove_items:
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
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L13
.L15:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$56, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
.L14:
	addl	$1, -4(%rbp)
.L13:
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L15
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	remove_items, .-remove_items
	.type	merge_mime_dir_configs, @function
merge_mime_dir_configs:
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
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$overlay_extension_mappings, %ecx
	movq	%rax, %rdi
	call	apr_hash_merge
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L20:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_copy
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L18:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	remove_items
.L21:
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L23
.L22:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L23:
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L24
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L25
.L24:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
.L25:
	movq	-24(%rbp), %rdx
	movl	%eax, 24(%rdx)
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L26
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
.L27:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	merge_mime_dir_configs, .-merge_mime_dir_configs
	.type	add_extension_info, @function
add_extension_info:
.LFB6:
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
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L30
	addq	$1, -16(%rbp)
.L30:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -8(%rbp)
	jmp	.L32
.L31:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
.L32:
	cmpq	$0, -8(%rbp)
	jne	.L33
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L33:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_extension_info, .-add_extension_info
	.type	remove_extension_info, @function
remove_extension_info:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L36
	addq	$1, -40(%rbp)
.L36:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L37
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L37:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	remove_extension_info, .-remove_extension_info
	.type	set_types_config, @function
set_types_config:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	mime_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	set_types_config, .-set_types_config
	.section	.rodata
.LC1:
	.string	"Any"
	.align 8
.LC2:
	.string	"Any is incompatible with NegotiatedOnly, Filters and Handlers"
.LC3:
	.string	"NegotiatedOnly"
	.align 8
.LC4:
	.string	"NegotiatedOnly is incompatible with Any, Filters and Handlers"
.LC5:
	.string	"Filters"
	.align 8
.LC6:
	.string	"Filters is incompatible with Any and NegotiatedOnly"
.LC7:
	.string	"Handlers"
	.align 8
.LC8:
	.string	"Handlers is incompatible with Any and NegotiatedOnly"
.LC9:
	.string	"Unrecognized option '%s'"
	.text
	.type	multiviews_match, @function
multiviews_match:
.LFB9:
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
	jne	.L42
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L43
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$-2, %eax
	testl	%eax, %eax
	je	.L43
	movl	$.LC2, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L45
.L42:
	movq	-40(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L47
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$-3, %eax
	testl	%eax, %eax
	je	.L47
	movl	$.LC4, %eax
	jmp	.L44
.L47:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L45
.L46:
	movq	-40(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L49
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L49
	movl	$.LC6, %eax
	jmp	.L44
.L49:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L45
.L48:
	movq	-40(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L50
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L51
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$3, %eax
	testl	%eax, %eax
	je	.L51
	movl	$.LC8, %eax
	jmp	.L44
.L51:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L45
.L50:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L44
.L45:
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	multiviews_match, .-multiviews_match
	.section	.rodata
.LC10:
	.string	"AddCharset"
	.align 8
.LC11:
	.string	"a charset (e.g., iso-2022-jp), followed by one or more file extensions"
.LC12:
	.string	"AddEncoding"
	.align 8
.LC13:
	.string	"an encoding (e.g., gzip), followed by one or more file extensions"
.LC14:
	.string	"AddHandler"
	.align 8
.LC15:
	.string	"a handler name followed by one or more file extensions"
.LC16:
	.string	"AddInputFilter"
	.align 8
.LC17:
	.string	"input filter name (or ; delimited names) followed by one or more file extensions"
.LC18:
	.string	"AddLanguage"
	.align 8
.LC19:
	.string	"a language (e.g., fr), followed by one or more file extensions"
.LC20:
	.string	"AddOutputFilter"
	.align 8
.LC21:
	.string	"output filter name (or ; delimited names) followed by one or more file extensions"
.LC22:
	.string	"AddType"
	.align 8
.LC23:
	.string	"a mime type followed by one or more file extensions"
.LC24:
	.string	"DefaultLanguage"
	.align 8
.LC25:
	.string	"language to use for documents with no other language file extension"
.LC26:
	.string	"MultiviewsMatch"
	.align 8
.LC27:
	.string	"NegotiatedOnly (default), Handlers and/or Filters, or Any"
.LC28:
	.string	"RemoveCharset"
.LC29:
	.string	"one or more file extensions"
.LC30:
	.string	"RemoveEncoding"
.LC31:
	.string	"RemoveHandler"
.LC32:
	.string	"RemoveInputFilter"
.LC33:
	.string	"RemoveLanguage"
.LC34:
	.string	"RemoveOutputFilter"
.LC35:
	.string	"RemoveType"
.LC36:
	.string	"TypesConfig"
.LC37:
	.string	"the MIME types config file"
.LC38:
	.string	"ModMimeUsePathInfo"
	.align 8
.LC39:
	.string	"Set to 'yes' to allow mod_mime to use path info for type checking"
	.align 64
	.type	mime_cmds, @object
	.size	mime_cmds, 760
mime_cmds:
	.quad	.LC10
	.quad	add_extension_info
	.quad	32
	.long	4
	.long	4
	.quad	.LC11
	.quad	.LC12
	.quad	add_extension_info
	.quad	8
	.long	4
	.long	4
	.quad	.LC13
	.quad	.LC14
	.quad	add_extension_info
	.quad	24
	.long	4
	.long	4
	.quad	.LC15
	.quad	.LC16
	.quad	add_extension_info
	.quad	40
	.long	4
	.long	4
	.quad	.LC17
	.quad	.LC18
	.quad	add_extension_info
	.quad	16
	.long	4
	.long	4
	.quad	.LC19
	.quad	.LC20
	.quad	add_extension_info
	.quad	48
	.long	4
	.long	4
	.quad	.LC21
	.quad	.LC22
	.quad	add_extension_info
	.quad	0
	.long	4
	.long	4
	.quad	.LC23
	.quad	.LC24
	.quad	ap_set_string_slot
	.quad	16
	.long	4
	.long	1
	.quad	.LC25
	.quad	.LC26
	.quad	multiviews_match
	.quad	0
	.long	4
	.long	3
	.quad	.LC27
	.quad	.LC28
	.quad	remove_extension_info
	.quad	32
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC30
	.quad	remove_extension_info
	.quad	8
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC31
	.quad	remove_extension_info
	.quad	24
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC32
	.quad	remove_extension_info
	.quad	40
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC33
	.quad	remove_extension_info
	.quad	16
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC34
	.quad	remove_extension_info
	.quad	48
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC35
	.quad	remove_extension_info
	.quad	0
	.long	4
	.long	3
	.quad	.LC29
	.quad	.LC36
	.quad	set_types_config
	.quad	0
	.long	128
	.long	1
	.quad	.LC37
	.quad	.LC38
	.quad	ap_set_flag_slot
	.quad	28
	.long	64
	.long	5
	.quad	.LC39
	.quad	0
	.zero	32
	.local	mime_type_extensions
	.comm	mime_type_extensions,8,8
.LC40:
	.string	"conf/mime.types"
	.align 8
.LC41:
	.string	"Invalid mime types config path %s"
	.align 8
.LC42:
	.string	"could not open mime types config file %s."
	.text
	.type	mime_post_config, @function
mime_post_config:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8288, %rsp
	movq	%rdi, -8264(%rbp)
	movq	%rsi, -8272(%rbp)
	movq	%rdx, -8280(%rbp)
	movq	%rcx, -8288(%rbp)
	movq	-8288(%rbp), %rax
	movq	80(%rax), %rax
	movl	mime_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L53
	movq	$.LC40, -8(%rbp)
.L53:
	movq	-8(%rbp), %rdx
	movq	-8264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L54
	movq	-8288(%rbp), %rax
	movq	80(%rax), %rax
	movl	mime_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-8288(%rbp), %rdx
	pushq	%rax
	movl	$.LC41, %r9d
	movq	%rdx, %r8
	movl	$20024, %ecx
	movl	$3, %edx
	movl	$427, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L62
.L54:
	movq	-8(%rbp), %rdx
	movq	-8280(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L56
	subq	$8, %rsp
	movq	-8288(%rbp), %rdx
	movl	-12(%rbp), %eax
	pushq	-8(%rbp)
	movl	$.LC42, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$435, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L62
.L56:
	movq	-8264(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, mime_type_extensions(%rip)
	jmp	.L57
.L61:
	leaq	-8240(%rbp), %rax
	movq	%rax, -8248(%rbp)
	movzbl	-8240(%rbp), %eax
	cmpb	$35, %al
	jne	.L58
	jmp	.L57
.L58:
	leaq	-8248(%rbp), %rdx
	movq	-8264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -24(%rbp)
	jmp	.L59
.L60:
	leaq	-8248(%rbp), %rdx
	movq	-8264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	mime_type_extensions(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L59:
	movq	-8248(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L60
.L57:
	movq	-40(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L61
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	movl	$0, %eax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mime_post_config, .-mime_post_config
	.type	zap_sp, @function
zap_sp:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L64
	movl	$0, %eax
	jmp	.L65
.L64:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L66
	movq	-8(%rbp), %rax
	jmp	.L65
.L66:
	jmp	.L67
.L68:
	addq	$1, -8(%rbp)
.L67:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L68
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L68
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L68
	movq	-8(%rbp), %rax
.L65:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	zap_sp, .-zap_sp
	.type	zap_sp_and_dup, @function
zap_sp_and_dup:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	jmp	.L70
.L72:
	addq	$1, -16(%rbp)
.L70:
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L71
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
	jne	.L72
.L71:
	jmp	.L73
.L75:
	subq	$1, -24(%rbp)
.L73:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L74
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L75
.L74:
	cmpq	$0, -32(%rbp)
	je	.L76
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L76:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	zap_sp_and_dup, .-zap_sp_and_dup
	.type	is_token, @function
is_token:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %eax
	movzbl	%al, %eax
	andl	$-128, %eax
	testl	%eax, %eax
	jne	.L79
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-20(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jns	.L79
	movsbl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$tspecial, %edi
	call	strchr
	testq	%rax, %rax
	jne	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movl	$-1, %eax
.L80:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	is_token, .-is_token
	.type	is_qtext, @function
is_qtext:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	movzbl	-20(%rbp), %eax
	movzbl	%al, %eax
	andl	$-128, %eax
	testl	%eax, %eax
	jne	.L83
	cmpb	$34, -20(%rbp)
	je	.L83
	cmpb	$92, -20(%rbp)
	je	.L83
	cmpb	$10, -20(%rbp)
	je	.L83
	movl	$1, %eax
	jmp	.L84
.L83:
	movl	$-1, %eax
.L84:
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	is_qtext, .-is_qtext
	.type	is_quoted_pair, @function
is_quoted_pair:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$-1, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	testq	%rax, %rax
	je	.L87
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L87
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movzbl	%al, %eax
	andl	$-128, %eax
	testl	%eax, %eax
	jne	.L87
	movl	$1, -4(%rbp)
.L87:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	is_quoted_pair, .-is_quoted_pair
	.section	.rodata
	.align 8
.LC43:
	.string	"mod_mime: analyze_ct: cannot get media type from '%s'"
	.align 8
.LC44:
	.string	"Cannot get media type from '%s'"
.LC45:
	.string	"Cannot get media subtype."
.LC46:
	.string	"Cannot get media parameter."
	.text
	.type	analyze_ct, @function
analyze_ct:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-64(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L90
.L91:
	addq	$1, -8(%rbp)
.L90:
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
	jne	.L91
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L92
	subq	$8, %rsp
	movq	-48(%rbp), %rax
	pushq	-16(%rbp)
	movl	$.LC43, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$549, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L93
.L92:
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L95:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L94
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L94
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
	jne	.L94
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L95
.L94:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L96
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L97
.L96:
	subq	$8, %rsp
	movq	-48(%rbp), %rax
	pushq	-16(%rbp)
	movl	$.LC44, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$559, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L93
.L97:
	jmp	.L98
.L99:
	addq	$1, -8(%rbp)
.L98:
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
	jne	.L99
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L100
	subq	$8, %rsp
	movq	-48(%rbp), %rax
	pushq	-16(%rbp)
	movl	$.LC43, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$568, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L93
.L100:
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	addq	$1, -8(%rbp)
	jmp	.L101
.L102:
	addq	$1, -8(%rbp)
.L101:
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
	jne	.L102
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L103
	movq	-48(%rbp), %rax
	movl	$.LC45, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$582, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L103:
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L105:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
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
	jne	.L104
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L105
.L104:
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 24(%rax)
	jmp	.L106
.L107:
	addq	$1, -8(%rbp)
.L106:
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
	jne	.L107
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L108
	movq	-64(%rbp), %rax
	jmp	.L93
.L108:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	zap_sp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L109
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L110
.L109:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$603, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L110:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	jmp	.L111
.L143:
	cmpq	$0, -24(%rbp)
	jne	.L112
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_token
	testl	%eax, %eax
	jle	.L113
	addq	$1, -8(%rbp)
	jmp	.L111
.L113:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L114
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L114
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L115
.L114:
	addq	$1, -8(%rbp)
	jmp	.L111
.L115:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L116
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	zap_sp_and_dup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L117
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L118
.L117:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$624, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L118:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	zap_sp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L119
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L120
.L119:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$631, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L120:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L111
.L116:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$639, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L112:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L121
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L122
	movl	$1, -28(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L121
.L122:
	movl	$0, -28(%rbp)
.L121:
	cmpl	$0, -28(%rbp)
	jle	.L123
	jmp	.L124
.L132:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_qtext
	testl	%eax, %eax
	jle	.L125
	addq	$1, -8(%rbp)
	jmp	.L124
.L125:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	is_quoted_pair
	testl	%eax, %eax
	jle	.L126
	addq	$2, -8(%rbp)
	jmp	.L124
.L126:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L127
	addq	$1, -8(%rbp)
	jmp	.L128
.L129:
	addq	$1, -8(%rbp)
.L128:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L129
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L129
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	je	.L129
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L130
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L130
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$668, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L130:
	movl	$0, -28(%rbp)
	jmp	.L124
.L127:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$675, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L124:
	cmpl	$0, -28(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L132
	jmp	.L131
.L123:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	is_token
	testl	%eax, %eax
	jle	.L133
	addq	$1, -8(%rbp)
	jmp	.L144
.L133:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L131
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L131
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$690, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L144:
	jmp	.L123
.L131:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	zap_sp_and_dup
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L135
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L136
.L135:
	movq	-48(%rbp), %rax
	movl	$.LC46, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$698, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, %eax
	jmp	.L93
.L136:
	movq	-56(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L137
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L138
.L137:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L139
.L140:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.L139:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L140
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L138:
	movl	$0, -28(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L141
	jmp	.L142
.L141:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.L111:
	cmpq	$0, -8(%rbp)
	je	.L142
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L143
.L142:
	movq	-64(%rbp), %rax
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	analyze_ct, .-analyze_ct
	.section	.rodata
.LC47:
	.string	"httpd/unix-directory"
.LC48:
	.string	", "
.LC49:
	.string	"ap-mime-exceptions-list"
.LC50:
	.string	"charset"
.LC51:
	.string	"; charset="
.LC52:
	.string	"="
.LC53:
	.string	"; "
	.text
	.type	find_ct, @function
find_ct:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-168(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L146
	movq	-168(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	movl	$0, %eax
	jmp	.L190
.L146:
	movq	-168(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L148
	movl	$-1, %eax
	jmp	.L190
.L148:
	movq	-168(%rbp), %rax
	movq	608(%rax), %rax
	movl	mime_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L149
	movq	-168(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -16(%rbp)
	jmp	.L150
.L149:
	movq	-168(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -16(%rbp)
.L150:
	movq	-16(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L151
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.L152
.L151:
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -136(%rbp)
.L152:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	-136(%rbp), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L153
.L179:
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L154
	jmp	.L153
.L154:
	movl	$0, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -32(%rbp)
.L155:
	cmpq	$0, -32(%rbp)
	je	.L156
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L157
.L156:
	movq	mime_type_extensions(%rip), %rax
	movq	-72(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L157
	movq	-80(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	movl	$1, -36(%rbp)
.L157:
	cmpq	$0, -32(%rbp)
	je	.L158
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	movl	$1, -36(%rbp)
.L159:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L160
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -36(%rbp)
.L160:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L161
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L162
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 304(%rax)
.L162:
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rdx)
	movl	$1, -36(%rbp)
.L161:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L163
	movq	-168(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L164
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 296(%rax)
	jmp	.L165
.L164:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	296(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC48, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 296(%rax)
.L165:
	movl	$1, -36(%rbp)
.L163:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L166
	movq	-168(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L166
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L166
	movl	$1, -36(%rbp)
.L166:
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L167
	movq	-168(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L167
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)
	jmp	.L168
.L170:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-168(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_input_filter
.L168:
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L169
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	-144(%rbp), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L170
.L169:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L167
	movl	$1, -36(%rbp)
.L167:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L158
	movq	-168(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L158
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.L172
.L174:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-168(%rbp), %rdx
	movq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter
.L172:
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L173
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	-152(%rbp), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L174
.L173:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L158
	movl	$1, -36(%rbp)
.L158:
	cmpl	$0, -36(%rbp)
	jne	.L176
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L177
.L176:
	movl	$1, -20(%rbp)
	jmp	.L153
.L177:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
.L153:
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L178
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	leaq	-136(%rbp), %rcx
	movl	$46, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L179
.L178:
	cmpl	$0, -20(%rbp)
	je	.L180
	movq	-168(%rbp), %rax
	movq	272(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L180:
	movq	-168(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L181
	movl	$0, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	analyze_ct
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L181
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	leaq	2(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -120(%rbp)
	movb	$47, (%rax)
	movq	-104(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movb	$0, (%rax)
	movq	-112(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	jmp	.L182
.L186:
	cmpq	$0, -8(%rbp)
	je	.L183
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L183
	cmpl	$0, -40(%rbp)
	jne	.L184
	movq	-168(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC51, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	movl	$1, -40(%rbp)
	jmp	.L185
.L184:
	jmp	.L185
.L183:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rcx, %r9
	movl	$.LC52, %r8d
	movq	%rdx, %rcx
	movl	$.LC53, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L185:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.L182:
	cmpq	$0, -48(%rbp)
	jne	.L186
	cmpq	$0, -8(%rbp)
	je	.L181
	cmpl	$0, -40(%rbp)
	jne	.L181
	movq	-168(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC51, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L181:
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L187
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L187
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	testq	%rax, %rax
	jne	.L188
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 304(%rax)
.L188:
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
.L187:
	movq	-168(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.L189
	movl	$-1, %eax
	jmp	.L190
.L189:
	movl	$0, %eax
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	find_ct, .-find_ct
	.type	register_hooks, @function
register_hooks:
.LFB18:
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
	movl	$mime_post_config, %edi
	call	ap_hook_post_config
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$find_ct, %edi
	call	ap_hook_type_checker
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

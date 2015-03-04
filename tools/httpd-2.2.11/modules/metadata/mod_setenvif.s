	.file	"mod_setenvif.c"
	.globl	setenvif_module
	.section	.rodata
.LC0:
	.string	"mod_setenvif.c"
	.data
	.align 64
	.type	setenvif_module, @object
	.size	setenvif_module, 104
setenvif_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_setenvif_config_dir
	.quad	merge_setenvif_config
	.quad	create_setenvif_config_svr
	.quad	merge_setenvif_config
	.quad	setenvif_module_cmds
	.quad	register_hooks
	.text
	.type	create_setenvif_config, @function
create_setenvif_config:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$56, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_setenvif_config, .-create_setenvif_config
	.type	create_setenvif_config_svr, @function
create_setenvif_config_svr:
.LFB3:
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
	movq	%rax, %rdi
	call	create_setenvif_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_setenvif_config_svr, .-create_setenvif_config_svr
	.type	create_setenvif_config_dir, @function
create_setenvif_config_dir:
.LFB4:
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
	movq	%rax, %rdi
	call	create_setenvif_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_setenvif_config_dir, .-create_setenvif_config_dir
	.type	merge_setenvif_config, @function
merge_setenvif_config:
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
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	merge_setenvif_config, .-merge_setenvif_config
	.section	.rodata
.LC1:
	.string	"^[-A-Za-z0-9_]*$"
.LC2:
	.string	"preg != NULL"
	.text
	.type	is_header_regex, @function
is_header_regex:
.LFB6:
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
	movl	$0, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	movl	$176, %edx
	movl	$.LC0, %esi
	movl	$.LC2, %edi
	call	ap_log_assert
.L10:
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	je	.L11
	movl	$1, %eax
	jmp	.L12
.L11:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	is_header_regex, .-is_header_regex
	.type	non_regex_pattern, @function
non_regex_pattern:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L14
.L25:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$36, %eax
	cmpl	$89, %eax
	ja	.L15
	movl	%eax, %eax
	movq	.L17(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L17:
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L16
	.quad	.L18
	.quad	.L16
	.quad	.L16
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L15
	.quad	.L16
	.quad	.L16
	.quad	.L16
	.text
.L16:
	cmpl	$0, -16(%rbp)
	jne	.L19
	movl	$0, %eax
	jmp	.L20
.L19:
	movl	$0, -16(%rbp)
	jmp	.L21
.L18:
	cmpl	$0, -16(%rbp)
	jne	.L22
	movl	$1, -16(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L21
.L22:
	movl	$0, -16(%rbp)
	jmp	.L21
.L15:
	cmpl	$0, -16(%rbp)
	je	.L24
	movl	$0, %eax
	jmp	.L20
.L24:
	nop
.L21:
	addq	$1, -8(%rbp)
.L14:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L25
	cmpl	$0, -12(%rbp)
	jne	.L26
	movq	-48(%rbp), %rax
	jmp	.L20
.L26:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.L28:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L27
	addq	$1, -8(%rbp)
.L27:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movq	-32(%rbp), %rax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	non_regex_pattern, .-non_regex_pattern
	.section	.rodata
	.align 8
.LC3:
	.string	"Missing regular expression for "
	.align 8
.LC4:
	.string	" pattern could not be compiled."
.LC5:
	.string	" regex could not be compiled."
.LC6:
	.string	"remote_addr"
.LC7:
	.string	"remote_host"
.LC8:
	.string	"request_uri"
.LC9:
	.string	"request_method"
.LC10:
	.string	"request_protocol"
.LC11:
	.string	"server_addr"
	.align 8
.LC12:
	.string	"Header name regex could not be compiled."
.LC13:
	.string	"!"
.LC14:
	.string	"1"
	.align 8
.LC15:
	.string	"Missing envariable expression for "
	.text
	.type	add_setenvif_core, @function
add_setenvif_core:
.LFB8:
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
	movq	%rcx, -112(%rbp)
	movl	$0, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L30
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	setenvif_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L31
.L30:
	movq	-96(%rbp), %rax
.L31:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L59
.L32:
	movl	$0, -12(%rbp)
	jmp	.L34
.L37:
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L35
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L36
.L35:
	addl	$1, -12(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L37
.L36:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$setenvif_module, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L38
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.L38
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	52(%rax), %eax
	cmpl	-44(%rbp), %eax
	jne	.L38
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L39
.L38:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 52(%rax)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	non_regex_pattern
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L40
	cmpl	$0, -44(%rbp)
	sete	%al
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_strmatch_precompile
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC4, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L59
.L41:
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.L42
.L40:
	cmpl	$0, -44(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC5, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L59
.L43:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.L42:
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-104(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L44
	movq	-8(%rbp), %rax
	movl	$1, 48(%rax)
	jmp	.L45
.L44:
	movq	-104(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movl	$2, 48(%rax)
	jmp	.L45
.L46:
	movq	-104(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L47
	movq	-8(%rbp), %rax
	movl	$3, 48(%rax)
	jmp	.L45
.L47:
	movq	-104(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movl	$4, 48(%rax)
	jmp	.L45
.L48:
	movq	-104(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L49
	movq	-8(%rbp), %rax
	movl	$5, 48(%rax)
	jmp	.L45
.L49:
	movq	-104(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L50
	movq	-8(%rbp), %rax
	movl	$6, 48(%rax)
	jmp	.L45
.L50:
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	is_header_regex
	testl	%eax, %eax
	je	.L51
	cmpl	$0, -44(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC12, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L59
.L51:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L45:
	jmp	.L52
.L39:
	movl	-12(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L52:
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L53
	nop
	cmpl	$0, -16(%rbp)
	jne	.L58
	jmp	.L60
.L53:
	addl	$1, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-72(%rbp), %rcx
	movl	$61, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L55
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L56
.L55:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L57
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	$.LC13, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L56
.L57:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-64(%rbp), %rcx
	movl	$.LC14, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L56:
	jmp	.L52
.L60:
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L59
.L58:
	movl	$0, %eax
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add_setenvif_core, .-add_setenvif_core
	.section	.rodata
	.align 8
.LC16:
	.string	"Missing header-field name for "
	.text
	.type	add_setenvif, @function
add_setenvif:
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
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L62
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L63
.L62:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	add_setenvif_core
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	add_setenvif, .-add_setenvif
	.section	.rodata
.LC17:
	.string	"User-Agent"
	.text
	.type	add_browser, @function
add_browser:
.LFB10:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$.LC17, %edx
	movq	%rax, %rdi
	call	add_setenvif_core
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	add_browser, .-add_browser
	.section	.rodata
.LC18:
	.string	"SetEnvIf"
	.align 8
.LC19:
	.string	"A header-name, regex and a list of variables."
.LC20:
	.string	"SetEnvIfNoCase"
	.align 8
.LC21:
	.string	"a header-name, regex and a list of variables."
.LC22:
	.string	"BrowserMatch"
	.align 8
.LC23:
	.string	"A browser regex and a list of variables."
.LC24:
	.string	"BrowserMatchNoCase"
	.align 64
	.type	setenvif_module_cmds, @object
	.size	setenvif_module_cmds, 200
setenvif_module_cmds:
	.quad	.LC18
	.quad	add_setenvif
	.quad	0
	.long	4
	.long	0
	.quad	.LC19
	.quad	.LC20
	.quad	add_setenvif
	.quad	setenvif_module
	.long	4
	.long	0
	.quad	.LC21
	.quad	.LC22
	.quad	add_browser
	.quad	0
	.long	4
	.long	0
	.quad	.LC23
	.quad	.LC24
	.quad	add_browser
	.quad	setenvif_module
	.long	4
	.long	0
	.quad	.LC23
	.quad	0
	.zero	32
.LC25:
	.string	"setenvif-phase-flag"
.LC26:
	.string	""
	.text
	.type	match_headers, @function
match_headers:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	$0, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	616(%rax), %rax
	movl	setenvif_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-184(%rbp), %rax
	movq	616(%rax), %rax
	movl	setenvif_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$.LC25, (%rax)
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	setenvif_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L68
.L67:
	movq	-184(%rbp), %rax
	movq	608(%rax), %rax
	movl	setenvif_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L68:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L69
.L96:
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.L70
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$6, %eax
	ja	.L71
	movl	%eax, %eax
	movq	.L73(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L73:
	.quad	.L72
	.quad	.L74
	.quad	.L75
	.quad	.L76
	.quad	.L77
	.quad	.L78
	.quad	.L79
	.text
.L74:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L79:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L75:
	movq	-184(%rbp), %rax
	movq	608(%rax), %rsi
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_remote_host
	movq	%rax, -16(%rbp)
	jmp	.L71
.L76:
	movq	-184(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L77:
	movq	-184(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L78:
	movq	-184(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L71
.L72:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L80
	movq	-184(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L81
.L83:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	jne	.L82
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L82:
	addl	$1, -32(%rbp)
.L81:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-32(%rbp), %eax
	jg	.L83
	jmp	.L71
.L80:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L71
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
.L71:
	cmpq	$0, -16(%rbp)
	je	.L84
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	jmp	.L85
.L84:
	movl	$0, %eax
.L85:
	movq	%rax, -24(%rbp)
.L70:
	cmpq	$0, -16(%rbp)
	jne	.L86
	movq	$.LC26, -16(%rbp)
	movq	$0, -24(%rbp)
.L86:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	32(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	call	*%rax
	testq	%rax, %rax
	jne	.L88
.L87:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L89
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	jne	.L89
.L88:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -32(%rbp)
	jmp	.L90
.L95:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L91
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_unset
	jmp	.L92
.L91:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L93
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ap_pregsub
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L94
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	264(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L92
.L94:
	jmp	.L92
.L93:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L92:
	addl	$1, -32(%rbp)
.L90:
	movq	-80(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-32(%rbp), %eax
	jg	.L95
.L89:
	addl	$1, -28(%rbp)
.L69:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-28(%rbp), %eax
	jg	.L96
	movl	$-1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	match_headers, .-match_headers
	.type	register_hooks, @function
register_hooks:
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
	movl	$match_headers, %edi
	call	ap_hook_header_parser
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$match_headers, %edi
	call	ap_hook_post_read_request
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

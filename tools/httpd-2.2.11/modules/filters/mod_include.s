	.file	"mod_include.c"
	.globl	include_module
	.section	.rodata
.LC0:
	.string	"mod_include.c"
	.data
	.align 64
	.type	include_module, @object
	.size	include_module, 104
include_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_includes_dir_config
	.quad	0
	.quad	create_includes_server_config
	.quad	0
	.quad	includes_cmds
	.quad	register_hooks
	.local	include_handlers
	.comm	include_handlers,8,8
	.local	ssi_pfn_register
	.comm	ssi_pfn_register,8,8
	.local	lazy_eval_sentinel
	.comm	lazy_eval_sentinel,1,1
	.text
	.type	decodehtml, @function
decodehtml:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	jmp	.L2
.L5:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	jmp	.L1
.L3:
	addq	$1, -40(%rbp)
.L2:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L5
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L6
.L29:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L7
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L8
.L7:
	movl	$1, -8(%rbp)
	jmp	.L9
.L11:
	addl	$1, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L10
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L11
.L10:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L8
.L12:
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L13
	movl	$2, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L14
.L16:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
	addl	$1, -12(%rbp)
.L14:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L15
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L16
.L15:
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L17
	cmpl	$8, -4(%rbp)
	jle	.L17
	cmpl	$10, -4(%rbp)
	jle	.L18
	cmpl	$31, -4(%rbp)
	jle	.L17
.L18:
	cmpl	$126, -4(%rbp)
	jle	.L19
	cmpl	$160, -4(%rbp)
	jle	.L17
.L19:
	cmpl	$255, -4(%rbp)
	jle	.L20
.L17:
	subq	$1, -24(%rbp)
	jmp	.L8
.L20:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L8
.L13:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	$6, -12(%rbp)
	jg	.L22
	movl	-12(%rbp), %eax
	cltq
	movq	entlist.9099(,%rax,8), %rax
	testq	%rax, %rax
	jne	.L23
.L22:
	movq	-24(%rbp), %rax
	movb	$38, (%rax)
	jmp	.L8
.L23:
	movl	-12(%rbp), %eax
	cltq
	movq	entlist.9099(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	jmp	.L24
.L27:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L25
	jmp	.L26
.L25:
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
.L24:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L27
.L26:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movq	-24(%rbp), %rax
	movb	$38, (%rax)
	jmp	.L8
.L28:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	-8(%rbp), %eax
	cltq
	addq	%rax, -40(%rbp)
.L8:
	addq	$1, -40(%rbp)
	addq	$1, -24(%rbp)
.L6:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L29
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	decodehtml, .-decodehtml
	.section	.rodata
.LC1:
	.string	"DATE_LOCAL"
.LC2:
	.string	"DATE_GMT"
.LC3:
	.string	"LAST_MODIFIED"
.LC4:
	.string	"DOCUMENT_URI"
.LC5:
	.string	"DOCUMENT_PATH_INFO"
.LC6:
	.string	"USER_NAME"
.LC7:
	.string	"DOCUMENT_NAME"
.LC8:
	.string	"QUERY_STRING_UNESCAPED"
	.text
	.type	add_include_vars, @function
add_include_vars:
.LFB3:
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
	movq	264(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$lazy_eval_sentinel, %edx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	movl	$lazy_eval_sentinel, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	movl	$lazy_eval_sentinel, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L31
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L31:
	movq	-8(%rbp), %rax
	movl	$lazy_eval_sentinel, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L32
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L33
.L32:
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L33:
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_shell_cmd
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	add_include_vars, .-add_include_vars
	.section	.rodata
.LC9:
	.string	"<unknown>"
	.text
	.type	add_include_vars_lazy, @function
add_include_vars_lazy:
.LFB4:
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
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L36
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, -32(%rbp)
	jmp	.L37
.L36:
	movq	-48(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L38
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, -32(%rbp)
	jmp	.L37
.L38:
	movq	-48(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L39
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	472(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, -32(%rbp)
	jmp	.L37
.L39:
	movq	-48(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L40
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	412(%rax), %ecx
	leaq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_uid_name_get
	testl	%eax, %eax
	je	.L37
	movq	$.LC9, -32(%rbp)
	jmp	.L37
.L40:
	movq	$0, -32(%rbp)
.L37:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L42
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L42:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_include_vars_lazy, .-add_include_vars_lazy
	.section	.rodata
	.align 8
.LC10:
	.string	"regex capture $%lu refers to no regex in %s"
	.align 8
.LC11:
	.string	"regex capture $%lu is out of range (last regex was: '%s') in %s"
	.text
	.type	get_include_var, @function
get_include_var:
.LFB5:
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
	movq	48(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L45
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L45
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L46
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdx
	pushq	%rax
	pushq	-24(%rbp)
	movl	$.LC10, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$661, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jb	.L48
	cmpq	$9, -24(%rbp)
	jbe	.L49
.L48:
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	subq	$8, %rsp
	movq	-16(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	pushq	-24(%rbp)
	movl	$.LC11, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$668, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
	movl	$0, %eax
	jmp	.L47
.L49:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movl	8(%rax,%rdx,8), %eax
	testl	%eax, %eax
	js	.L50
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movl	12(%rax,%rdx,8), %eax
	testl	%eax, %eax
	jns	.L51
.L50:
	movl	$0, %eax
	jmp	.L47
.L51:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$2, %rdx
	movl	12(%rax,%rdx,8), %edx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$2, %rcx
	movl	8(%rax,%rcx,8), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	addq	$2, %rsi
	movl	8(%rax,%rsi,8), %eax
	cltq
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -8(%rbp)
	jmp	.L52
.L45:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$lazy_eval_sentinel, -8(%rbp)
	jne	.L52
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_include_vars_lazy
	movq	%rax, -8(%rbp)
.L52:
	movq	-8(%rbp), %rax
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_include_var, .-get_include_var
	.section	.rodata
.LC12:
	.string	"out && length"
.LC13:
	.string	"\\$"
	.align 8
.LC14:
	.string	"Missing '}' on variable \"%s\" in %s"
	.text
	.type	ap_ssi_parse_string, @function
ap_ssi_parse_string:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movl	%r8d, -164(%rbp)
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L54
	cmpq	$0, -152(%rbp)
	je	.L55
	cmpq	$0, -160(%rbp)
	jne	.L56
.L55:
	movl	$711, %edx
	movl	$.LC0, %esi
	movl	$.LC12, %edi
	call	ap_log_assert
.L56:
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-160(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L54:
	movq	-144(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	strcspn
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L57
	cmpq	$0, -152(%rbp)
	je	.L58
	movq	-160(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-152(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	jmp	.L59
.L58:
	cmpq	$0, -160(%rbp)
	je	.L60
	movq	-160(%rbp), %rax
	cmpq	-112(%rbp), %rax
	ja	.L60
	movq	-160(%rbp), %rax
	subq	$1, %rax
	jmp	.L61
.L60:
	movq	-112(%rbp), %rax
.L61:
	movq	-136(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	apr_pstrmemdup
	movq	%rax, -32(%rbp)
.L59:
	movq	-32(%rbp), %rax
	jmp	.L62
.L57:
	movq	-144(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L63
	cmpq	$0, -104(%rbp)
	je	.L67
	movq	-152(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.L65
	movq	-40(%rbp), %rdx
	movq	-152(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L66
.L65:
	movq	-104(%rbp), %rax
.L66:
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-104(%rbp), %rax
	addq	%rax, -152(%rbp)
	jmp	.L67
.L63:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
.L67:
	cmpq	$0, -152(%rbp)
	je	.L68
	movq	-152(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L69
.L68:
	cmpq	$0, -160(%rbp)
	je	.L70
	movq	-24(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jnb	.L69
.L70:
	cmpq	$0, -152(%rbp)
	jne	.L71
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.L71:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L72
	cmpq	$0, -152(%rbp)
	je	.L73
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	cmpb	$36, %dl
	jne	.L74
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edx
	jmp	.L75
.L74:
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edx
.L75:
	movb	%dl, (%rax)
	addq	$1, -48(%rbp)
	jmp	.L79
.L73:
	movq	-16(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L77
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	jmp	.L78
.L77:
	movq	-48(%rbp), %rax
.L78:
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	addq	$1, -48(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L79
.L72:
	movq	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L80
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.L81
	movq	-96(%rbp), %rax
	movq	360(%rax), %rax
	movq	-96(%rbp), %rdx
	pushq	%rax
	pushq	-48(%rbp)
	movl	$.LC14, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$789, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L69
.L81:
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L82
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.L82:
	subq	$2, -48(%rbp)
	jmp	.L83
.L80:
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L84
.L85:
	addq	$1, -64(%rbp)
.L84:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L85
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L85
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L86
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.L86:
	subq	$1, -48(%rbp)
.L83:
	cmpq	$0, -72(%rbp)
	jne	.L87
	cmpq	$0, -152(%rbp)
	je	.L88
	movq	-152(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -152(%rbp)
	movq	-48(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L79
.L88:
	movq	-16(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 16(%rdx)
	addq	$1, -24(%rbp)
	jmp	.L79
.L87:
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_include_var
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L90
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -88(%rbp)
	jmp	.L91
.L90:
	cmpl	$0, -164(%rbp)
	je	.L91
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
.L91:
	cmpq	$0, -80(%rbp)
	je	.L92
	cmpq	$0, -88(%rbp)
	je	.L92
	cmpq	$0, -152(%rbp)
	je	.L93
	movq	-152(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.L94
	movq	-40(%rbp), %rdx
	movq	-152(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L95
.L94:
	movq	-88(%rbp), %rax
.L95:
	movq	-80(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-88(%rbp), %rax
	addq	%rax, -152(%rbp)
	jmp	.L92
.L93:
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-88(%rbp), %rax
	addq	%rax, -24(%rbp)
.L92:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.L79:
	cmpq	$0, -152(%rbp)
	je	.L96
	movq	-152(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L69
.L96:
	cmpq	$0, -160(%rbp)
	je	.L97
	movq	-24(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jnb	.L69
.L97:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L98
	movq	-48(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	strcspn
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L98
	cmpq	$0, -152(%rbp)
	jne	.L99
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.L99:
	cmpq	$0, -152(%rbp)
	je	.L100
	movq	-152(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.L101
	movq	-40(%rbp), %rdx
	movq	-152(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L102
.L101:
	movq	-104(%rbp), %rax
.L102:
	movq	-48(%rbp), %rsi
	movq	-152(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-104(%rbp), %rax
	addq	%rax, -152(%rbp)
	jmp	.L103
.L100:
	movq	-16(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-104(%rbp), %rax
	addq	%rax, -24(%rbp)
.L103:
	movq	-104(%rbp), %rax
	addq	%rax, -48(%rbp)
.L98:
	movq	-144(%rbp), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-48(%rbp), %rax
	ja	.L67
.L69:
	cmpq	$0, -152(%rbp)
	je	.L104
	movq	-152(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L105
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L107
.L105:
	movq	-152(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L107
.L104:
	cmpq	$0, -160(%rbp)
	je	.L108
	movq	-24(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jbe	.L108
	movq	-160(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
.L108:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
.L113:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L109
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-120(%rbp), %rax
	ja	.L110
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L111
.L110:
	movq	-120(%rbp), %rdx
	movq	-152(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L111:
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	-152(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, -152(%rbp)
.L109:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L112
	movq	-152(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jb	.L113
.L112:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L107:
	movq	-32(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_ssi_parse_string, .-ap_ssi_parse_string
	.section	.rodata
	.align 8
.LC15:
	.string	"unable to compile pattern \"%s\""
	.text
	.type	re_check, @function
re_check:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L115
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	40(%rax), %rax
	subq	$8, %rsp
	pushq	-72(%rbp)
	movl	$.LC15, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$930, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L116
.L115:
	cmpq	$0, -24(%rbp)
	jne	.L117
	movq	-56(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$104, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, 112(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, -24(%rbp)
.L117:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pregfree
	movl	-36(%rbp), %eax
.L116:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	re_check, .-re_check
	.section	.rodata
.LC16:
	.string	""
	.text
	.type	get_ptoken, @function
get_ptoken:
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
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	movl	$0, %eax
	jmp	.L120
.L119:
	jmp	.L121
.L122:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L121:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L122
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L123
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L120
.L123:
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-64(%rbp), %rdx
	movq	%rcx, (%rdx)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$33, %eax
	cmpl	$91, %eax
	ja	.L124
	movl	%eax, %eax
	movq	.L126(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L126:
	.quad	.L125
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L127
	.quad	.L128
	.quad	.L129
	.quad	.L130
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L131
	.quad	.L124
	.quad	.L132
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L133
	.quad	.L134
	.quad	.L135
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L124
	.quad	.L136
	.text
.L129:
	movq	-72(%rbp), %rax
	movl	$8, (%rax)
	movl	$0, %eax
	jmp	.L120
.L130:
	movq	-72(%rbp), %rax
	movl	$7, (%rax)
	movl	$0, %eax
	jmp	.L120
.L134:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L137
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L137:
	movq	-72(%rbp), %rax
	movl	$5, (%rax)
	movl	$0, %eax
	jmp	.L120
.L125:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L138
	movq	-72(%rbp), %rax
	movl	$6, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L138:
	movq	-72(%rbp), %rax
	movl	$4, (%rax)
	movl	$0, %eax
	jmp	.L120
.L128:
	movl	$39, -20(%rbp)
	jmp	.L124
.L132:
	cmpq	$0, -80(%rbp)
	je	.L139
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$14, %eax
	jne	.L139
	jmp	.L124
.L139:
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	movl	$47, -20(%rbp)
	jmp	.L124
.L136:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L140
	movq	-72(%rbp), %rax
	movl	$3, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L140:
	jmp	.L124
.L127:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L141
	movq	-72(%rbp), %rax
	movl	$2, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L141:
	jmp	.L124
.L135:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L142
	movq	-72(%rbp), %rax
	movl	$10, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L142:
	movq	-72(%rbp), %rax
	movl	$12, (%rax)
	movl	$0, %eax
	jmp	.L120
.L133:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L143
	movq	-72(%rbp), %rax
	movl	$11, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L143:
	movq	-72(%rbp), %rax
	movl	$13, (%rax)
	movl	$0, %eax
	jmp	.L120
.L131:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L144
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	136(%rax), %eax
	testl	%eax, %eax
	je	.L144
	movq	-72(%rbp), %rax
	movl	$14, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L120
.L144:
	nop
.L124:
	movq	$0, -16(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L145
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L146
.L145:
	movq	-8(%rbp), %rax
.L146:
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L147
.L159:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L148
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L149
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L150
.L149:
	addq	$1, -16(%rbp)
	jmp	.L151
.L148:
	cmpl	$0, -20(%rbp)
	je	.L152
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-20(%rbp), %eax
	jne	.L151
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L150
.L152:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L153
	jmp	.L150
.L153:
	movl	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$41, %eax
	jg	.L155
	cmpl	$40, %eax
	jge	.L156
	cmpl	$33, %eax
	je	.L156
	cmpl	$38, %eax
	je	.L157
	jmp	.L154
.L155:
	cmpl	$60, %eax
	jl	.L154
	cmpl	$62, %eax
	jle	.L156
	cmpl	$124, %eax
	je	.L157
	jmp	.L154
.L156:
	addl	$1, -24(%rbp)
	jmp	.L154
.L157:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L158
	addl	$1, -24(%rbp)
	jmp	.L165
.L158:
.L165:
	nop
.L154:
	cmpl	$0, -24(%rbp)
	je	.L151
	jmp	.L150
.L151:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L147:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L159
.L150:
	cmpl	$0, -20(%rbp)
	je	.L160
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L161
.L160:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L162
.L163:
	movq	-8(%rbp), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	addq	$1, -48(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L162:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	testq	%rax, %rax
	jne	.L163
	cmpq	$0, -32(%rbp)
	je	.L164
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
.L164:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L161:
	movl	-20(%rbp), %eax
.L120:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	get_ptoken, .-get_ptoken
	.section	.rodata
	.align 8
.LC17:
	.string	"Invalid expression \"%s\" in file %s"
.LC18:
	.string	" "
	.align 8
.LC19:
	.string	"Unmatched ')' in \"%s\" in file %s"
	.align 8
.LC20:
	.string	"Invalid expression \"%s\" in file %s: Token '-A' must be followed by a URI string."
	.align 8
.LC21:
	.string	"mod_include: The tested subrequest -A \"%s\" returned an error code."
	.align 8
.LC22:
	.string	"No operator before regex in expr \"%s\" in file %s"
	.align 8
.LC23:
	.string	"Unmatched '(' in \"%s\" in file %s"
	.align 8
.LC24:
	.string	"internal parser error in \"%s\" in file %s"
	.text
	.type	parse_expr, @function
parse_expr:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$.LC17, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -44(%rbp)
	movq	-120(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L167
	movl	$0, %eax
	jmp	.L272
.L167:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, 44(%rax)
	cmpq	$0, -32(%rbp)
	je	.L169
	movq	-32(%rbp), %rax
	leaq	24(%rax), %rdx
	jmp	.L170
.L169:
	movl	$0, %edx
.L170:
	movq	-80(%rbp), %rax
	leaq	24(%rax), %rdi
	leaq	-88(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	get_ptoken
	movl	%eax, -68(%rbp)
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L171
	nop
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.L216
.L171:
	cmpq	$0, -32(%rbp)
	jne	.L173
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$4, %eax
	je	.L175
	cmpl	$4, %eax
	ja	.L176
	testl	%eax, %eax
	je	.L175
	jmp	.L174
.L176:
	cmpl	$8, %eax
	je	.L175
	cmpl	$14, %eax
	jne	.L174
.L175:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L177
.L174:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1168, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L173:
	movq	-80(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$14, %eax
	ja	.L278
	movl	%eax, %eax
	movq	.L180(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L180:
	.quad	.L179
	.quad	.L181
	.quad	.L182
	.quad	.L182
	.quad	.L183
	.quad	.L184
	.quad	.L184
	.quad	.L208
	.quad	.L183
	.quad	.L278
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L184
	.quad	.L183
	.text
.L179:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L279
	cmpl	$1, %eax
	jb	.L188
	cmpl	$7, %eax
	je	.L279
	cmpl	$9, %eax
	je	.L279
	jmp	.L275
.L188:
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L189
	movl	$.LC18, %edi
	jmp	.L190
.L189:
	movl	$.LC16, %edi
.L190:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L177
.L275:
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L279:
	nop
	jmp	.L192
.L181:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	subl	$5, %eax
	cmpl	$1, %eax
	ja	.L280
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	addl	$1, -44(%rbp)
	jmp	.L177
.L280:
	nop
	jmp	.L192
.L182:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jbe	.L196
	cmpl	$9, %eax
	je	.L196
	nop
	jmp	.L192
.L196:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L197
.L202:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jb	.L198
	cmpl	$3, %eax
	jbe	.L281
	cmpl	$8, %eax
	je	.L281
.L198:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L197
.L281:
	nop
	jmp	.L201
.L197:
	cmpq	$0, -32(%rbp)
	jne	.L202
.L201:
	cmpq	$0, -32(%rbp)
	jne	.L203
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L203:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L184:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L204
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L205
	movq	-80(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L205:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jb	.L282
	cmpl	$3, %eax
	jbe	.L207
	cmpl	$8, %eax
	je	.L207
	jmp	.L282
.L207:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L282:
	nop
.L204:
	jmp	.L192
.L210:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L208:
	cmpq	$0, -32(%rbp)
	je	.L209
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$8, %eax
	jne	.L210
.L209:
	cmpq	$0, -32(%rbp)
	je	.L211
	movq	-32(%rbp), %rax
	movl	$9, 24(%rax)
	jmp	.L177
.L211:
	movq	$.LC19, -40(%rbp)
	jmp	.L192
.L183:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$7, %eax
	je	.L283
	cmpl	$7, %eax
	ja	.L214
	cmpl	$1, %eax
	ja	.L212
	jmp	.L283
.L214:
	cmpl	$9, %eax
	je	.L283
.L212:
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L177
.L283:
	nop
	jmp	.L192
.L278:
	nop
.L192:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1318, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L177:
	jmp	.L167
.L269:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$14, %eax
	ja	.L217
	movl	%eax, %eax
	movq	.L219(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L219:
	.quad	.L218
	.quad	.L220
	.quad	.L221
	.quad	.L221
	.quad	.L222
	.quad	.L223
	.quad	.L223
	.quad	.L217
	.quad	.L224
	.quad	.L222
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.quad	.L225
	.quad	.L226
	.text
.L218:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L227
.L221:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L229
.L228:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1340, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L229:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L230
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L276
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dl
	movzbl	%dl, %edx
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 44(%rax)
	jmp	.L230
.L276:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L216
.L230:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L233
	cmpl	$0, -44(%rbp)
	jne	.L233
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L234
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L235
.L234:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$3, %eax
	jne	.L233
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L233
.L235:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	40(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L236
.L233:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L237
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L277
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	32(%rdx), %rdx
	movzbl	(%rdx), %edx
	testb	%dl, %dl
	setne	%dl
	movzbl	%dl, %edx
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 44(%rax)
	jmp	.L237
.L277:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L216
.L237:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L240
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movl	$1, %edx
	jmp	.L242
.L241:
	movl	$0, %edx
.L242:
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L236
.L240:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	jne	.L243
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	je	.L244
.L243:
	movl	$1, %edx
	jmp	.L245
.L244:
	movl	$0, %edx
.L245:
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L227
.L236:
	jmp	.L227
.L223:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L246
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L246
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L246
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L247
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L247
.L246:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1405, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L247:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L248
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	re_check
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	subl	$1, -44(%rbp)
	jmp	.L249
.L248:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
.L249:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$6, %eax
	jne	.L250
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L227
.L250:
	jmp	.L227
.L225:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L251
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L252
.L251:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1440, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L252:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$11, %eax
	je	.L254
	cmpl	$11, %eax
	ja	.L255
	cmpl	$10, %eax
	je	.L256
	jmp	.L253
.L255:
	cmpl	$12, %eax
	je	.L257
	cmpl	$13, %eax
	je	.L258
	jmp	.L253
.L256:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	notl	%eax
	shrl	$31, %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L259
.L257:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L259
.L254:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	setle	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L259
.L258:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$31, %eax
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L259
.L253:
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	nop
.L259:
	jmp	.L227
.L222:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L260
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %eax
	testl	%eax, %eax
	jne	.L261
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L216
.L261:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L262
.L260:
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
.L262:
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$4, %eax
	jne	.L263
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L227
.L263:
	jmp	.L227
.L226:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L264
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L264
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	je	.L265
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L265
.L264:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movl	$.LC20, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1488, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L265:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rsi
	movq	-104(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 32(%rbx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$399, %eax
	jg	.L266
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L267
.L266:
	movq	-32(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	subq	$8, %rsp
	movq	-56(%rbp), %rcx
	pushq	%rdx
	movl	$.LC21, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$1504, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L267:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	jmp	.L227
.L220:
	cmpq	$0, -40(%rbp)
	jne	.L224
	movq	$.LC22, -40(%rbp)
.L224:
	cmpq	$0, -40(%rbp)
	jne	.L217
	movq	$.LC23, -40(%rbp)
.L217:
	cmpq	$0, -40(%rbp)
	jne	.L268
	movq	$.LC24, -40(%rbp)
.L268:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-112(%rbp)
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1525, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-120(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L272
.L227:
	movq	-32(%rbp), %rax
	movl	$1, 44(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L216:
	cmpq	$0, -32(%rbp)
	jne	.L269
	cmpq	$0, -24(%rbp)
	je	.L270
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.L271
.L270:
	movl	$0, %eax
.L271:
	nop
.L272:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	parse_expr, .-parse_expr
	.type	ap_ssi_get_tag_and_value, @function
ap_ssi_get_tag_and_value:
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
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L285
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L284
.L285:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	104(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	104(%rax), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	104(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 104(%rax)
	cmpl	$0, -28(%rbp)
	je	.L287
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L287
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	decodehtml
.L287:
	nop
.L284:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_ssi_get_tag_and_value, .-ap_ssi_get_tag_and_value
	.section	.rodata
.LC25:
	.string	"file"
	.align 8
.LC26:
	.string	"unable to access file \"%s\" in parsed file %s"
	.align 8
.LC27:
	.string	"unable to get information about \"%s\" in parsed file %s"
	.align 8
.LC28:
	.string	"unable to lookup information about \"%s\" in parsed file %s"
.LC29:
	.string	"virtual"
	.align 8
.LC30:
	.string	"unknown parameter \"%s\" to tag %s in %s"
	.text
	.type	find_file, @function
find_file:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-72(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L289
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r8
	movl	$10, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L290
	movq	$.LC26, -32(%rbp)
	jmp	.L291
.L290:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_file
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L292
	movq	-16(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L292
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rdx, %rcx
	movl	$2130288, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L293
	cmpl	$70008, -36(%rbp)
	je	.L293
	movq	$.LC27, -32(%rbp)
	jmp	.L291
.L293:
	jmp	.L291
.L292:
	movq	$.LC28, -32(%rbp)
.L291:
	cmpq	$0, -32(%rbp)
	je	.L294
	movl	$-1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	pushq	%rdx
	pushq	-8(%rbp)
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1618, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L294:
	cmpq	$0, -16(%rbp)
	je	.L295
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L295:
	movl	-20(%rbp), %eax
	jmp	.L296
.L289:
	movq	-72(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L297
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L298
	movq	-16(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L298
	movq	-16(%rbp), %rax
	leaq	392(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$0, %eax
	jmp	.L296
.L298:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-80(%rbp)
	movl	$.LC27, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1638, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$-1, %eax
	jmp	.L296
.L297:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	%rax
	pushq	-64(%rbp)
	pushq	-72(%rbp)
	movl	$.LC30, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1646, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
	movl	$-1, %eax
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	find_file, .-find_file
	.section	.rodata
	.align 8
.LC31:
	.string	"missing argument for include element in %s"
	.align 8
.LC32:
	.string	"unknown parameter \"%s\" to tag include in %s"
	.align 8
.LC33:
	.string	"unable to include file \"%s\" in parsed file %s"
	.align 8
.LC34:
	.string	"unable to include \"%s\" in parsed file %s"
.LC35:
	.string	"text/"
	.align 8
.LC36:
	.string	"unable to include potential exec \"%s\" in parsed file %s"
	.text
	.type	handle_include, @function
handle_include:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L300
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	-136(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L301
	movl	$3, %esi
	jmp	.L302
.L301:
	movl	$4, %esi
.L302:
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	%rax
	movl	$.LC31, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$1661, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L300:
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L303
	movl	$0, %eax
	jmp	.L304
.L303:
	movq	-136(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L305
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L304
.L305:
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L306
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L306
	movq	-104(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L307
	movq	-104(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L307
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	-56(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC32, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1690, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L306
.L307:
	movq	-112(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jne	.L308
	movq	-136(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-80(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rcx, %r8
	movl	$10, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L309
	movq	$.LC33, -48(%rbp)
	jmp	.L311
.L309:
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_file
	movq	%rax, -40(%rbp)
	jmp	.L311
.L308:
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -40(%rbp)
.L311:
	cmpq	$0, -48(%rbp)
	jne	.L312
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L312
	movq	$.LC34, -48(%rbp)
.L312:
	cmpq	$0, -48(%rbp)
	jne	.L313
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L313
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L313
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movl	$5, %edx
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L313
	movq	$.LC36, -48(%rbp)
.L313:
	cmpq	$0, -40(%rbp)
	je	.L314
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
.L314:
	cmpq	$0, -48(%rbp)
	jne	.L315
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_sub_req
	testl	%eax, %eax
	je	.L315
	movq	$.LC34, -48(%rbp)
.L315:
	cmpq	$0, -48(%rbp)
	je	.L316
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movq	%rsi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1742, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
.L316:
	cmpq	$0, -48(%rbp)
	je	.L317
	jmp	.L306
.L317:
	jmp	.L305
.L306:
	movl	$0, %eax
.L304:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	handle_include, .-handle_include
	.section	.rodata
	.align 8
.LC37:
	.string	"missing argument for echo element in %s"
.LC38:
	.string	"var"
.LC39:
	.string	"encoding"
.LC40:
	.string	"none"
.LC41:
	.string	"url"
.LC42:
	.string	"entity"
	.align 8
.LC43:
	.string	"unknown value \"%s\" to parameter \"encoding\" of tag echo in %s"
	.align 8
.LC44:
	.string	"unknown parameter \"%s\" in tag echo of %s"
	.text
	.type	handle_echo, @function
handle_echo:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L319
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	movq	-136(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L320
	movl	$3, %esi
	jmp	.L321
.L320:
	movl	$4, %esi
.L321:
	subq	$8, %rsp
	movq	-64(%rbp), %rdx
	pushq	%rax
	movl	$.LC37, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$1770, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L319:
	movq	-136(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L322
	movl	$0, %eax
	jmp	.L323
.L322:
	movq	-136(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L324
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L323
.L324:
	movl	$2, -36(%rbp)
.L338:
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L325
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L325
	movq	-112(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L326
	movq	$0, -48(%rbp)
	movq	-120(%rbp), %rsi
	movq	-136(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	get_include_var
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L327
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	je	.L329
	cmpl	$1, %eax
	jb	.L330
	cmpl	$2, %eax
	je	.L331
	jmp	.L328
.L330:
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L328
.L329:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -48(%rbp)
	jmp	.L328
.L331:
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -48(%rbp)
	nop
.L328:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -56(%rbp)
	jmp	.L332
.L327:
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	movq	48(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)
.L332:
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, %rdi
	movq	-56(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rsi
	call	apr_bucket_pool_create
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L333
.L326:
	movq	-112(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L334
	movq	-120(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L335
	movl	$0, -36(%rbp)
	jmp	.L333
.L335:
	movq	-120(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L336
	movl	$1, -36(%rbp)
	jmp	.L333
.L336:
	movq	-120(%rbp), %rax
	movl	$.LC42, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L337
	movl	$2, -36(%rbp)
	jmp	.L333
.L337:
	movq	-64(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	-64(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC43, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1841, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L325
.L334:
	movq	-64(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	-64(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC44, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1849, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-136(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -104(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L325
.L333:
	jmp	.L338
.L325:
	movl	$0, %eax
.L323:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	handle_echo, .-handle_echo
	.section	.rodata
	.align 8
.LC45:
	.string	"missing argument for config element in %s"
.LC46:
	.string	"errmsg"
.LC47:
	.string	"echomsg"
.LC48:
	.string	"timefmt"
.LC49:
	.string	"sizefmt"
.LC50:
	.string	"bytes"
.LC51:
	.string	"abbrev"
	.align 8
.LC52:
	.string	"unknown value \"%s\" to parameter \"sizefmt\" of tag config in %s"
	.align 8
.LC53:
	.string	"unknown parameter \"%s\" to tag config in %s"
	.text
	.type	handle_config, @function
handle_config:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L340
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L341
	movl	$3, %esi
	jmp	.L342
.L341:
	movl	$4, %esi
.L342:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC45, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$1870, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L340:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L343
	movl	$0, %eax
	jmp	.L344
.L343:
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L345
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L344
.L345:
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L346
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L346
	movq	-96(%rbp), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L347
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L348
.L347:
	movq	-96(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L349
	movq	-120(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, 120(%rbx)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, 128(%rbx)
	jmp	.L348
.L349:
	movq	-96(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L350
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	472(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L348
.L350:
	movq	-96(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L351
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L352
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L353
.L352:
	movq	-72(%rbp), %rax
	movl	$.LC51, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L354
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L353
.L354:
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-40(%rbp), %rdx
	pushq	%rax
	pushq	-72(%rbp)
	movl	$.LC52, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1930, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L346
.L353:
	jmp	.L348
.L351:
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC53, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1938, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L346
.L348:
	jmp	.L345
.L346:
	movl	$0, %eax
.L344:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	handle_config, .-handle_config
	.section	.rodata
	.align 8
.LC54:
	.string	"missing argument for fsize element in %s"
.LC55:
	.string	"fsize"
.LC56:
	.string	"%ld"
	.text
	.type	handle_fsize, @function
handle_fsize:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L356
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	movq	-264(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L357
	movl	$3, %esi
	jmp	.L358
.L357:
	movl	$4, %esi
.L358:
	subq	$8, %rsp
	movq	-72(%rbp), %rdx
	pushq	%rax
	movl	$.LC54, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$1957, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L356:
	movq	-264(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L359
	movl	$0, %eax
	jmp	.L360
.L359:
	movq	-264(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L361
	movq	-272(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-264(%rbp), %rax
	movq	(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-264(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L360
.L361:
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-264(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-128(%rbp), %rax
	testq	%rax, %rax
	je	.L362
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	je	.L362
	movq	-136(%rbp), %rsi
	movq	-264(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -88(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	find_file
	testl	%eax, %eax
	jne	.L363
	movq	-264(%rbp), %rax
	movl	16(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	jne	.L364
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strfsize
	movq	%rax, -40(%rbp)
	movq	$4, -48(%rbp)
	jmp	.L365
.L364:
	movq	-200(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L366
.L368:
	cmpq	$0, -56(%rbp)
	je	.L367
	movq	-104(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L367
	addq	$1, -48(%rbp)
.L367:
	addq	$1, -56(%rbp)
.L366:
	movq	-56(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L368
	movq	-48(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jne	.L369
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -40(%rbp)
	jmp	.L365
.L369:
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L370
.L372:
	cmpq	$0, -56(%rbp)
	je	.L371
	movq	-104(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rcx
	movabsq	$-6148914691236517205, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	movq	%rax, %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	testq	%rax, %rax
	jne	.L371
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rdx, %rax
	movb	$44, (%rax)
.L371:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	-40(%rbp), %rdx
	addq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -56(%rbp)
.L370:
	movq	-56(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jb	.L372
.L365:
	movq	-272(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-264(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -112(%rbp)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L361
.L363:
	movq	-272(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-264(%rbp), %rax
	movq	(%rax), %rbx
	movq	-264(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-264(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -120(%rbp)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-280(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rax, 8(%rdx)
	nop
.L362:
	movl	$0, %eax
.L360:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	handle_fsize, .-handle_fsize
	.section	.rodata
	.align 8
.LC57:
	.string	"missing argument for flastmod element in %s"
.LC58:
	.string	"flastmod"
	.text
	.type	handle_flastmod, @function
handle_flastmod:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-232(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L374
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-232(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L375
	movl	$3, %esi
	jmp	.L376
.L375:
	movl	$4, %esi
.L376:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC57, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2044, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L374:
	movq	-232(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L377
	movl	$0, %eax
	jmp	.L378
.L377:
	movq	-232(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L379
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-232(%rbp), %rax
	movq	(%rax), %rbx
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -48(%rbp)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L378
.L379:
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	leaq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L380
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L380
	movq	-104(%rbp), %rsi
	movq	-232(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	find_file
	testl	%eax, %eax
	jne	.L381
	movq	-232(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-144(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L379
.L381:
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-232(%rbp), %rax
	movq	(%rax), %rbx
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -88(%rbp)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-248(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-248(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	nop
.L380:
	movl	$0, %eax
.L378:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	handle_flastmod, .-handle_flastmod
	.section	.rodata
	.align 8
.LC59:
	.string	"too many arguments for if element in %s"
	.align 8
.LC60:
	.string	"missing expr argument for if element in %s"
.LC61:
	.string	"expr"
	.align 8
.LC62:
	.string	"unknown parameter \"%s\" to tag if in %s"
	.align 8
.LC63:
	.string	"missing expr value for if element in %s"
	.text
	.type	handle_if, @function
handle_if:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L383
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	28(%rdx), %edx
	testl	%edx, %edx
	je	.L384
	movl	$.LC59, %ecx
	jmp	.L385
.L384:
	movl	$.LC60, %ecx
.L385:
	movq	-120(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L386
	movl	$3, %esi
	jmp	.L387
.L386:
	movl	$4, %esi
.L387:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2105, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L383:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L388
	movq	-120(%rbp), %rax
	movl	20(%rax), %eax
	leal	1(%rax), %edx
	movq	-120(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, %eax
	jmp	.L396
.L388:
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L390
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L396
.L390:
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-88(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L391
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC62, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2127, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L396
.L391:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L392
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC63, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2134, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L396
.L392:
	movq	-96(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_expr
	movl	%eax, -68(%rbp)
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	je	.L393
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L396
.L393:
	cmpl	$0, -68(%rbp)
	je	.L394
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L395
.L394:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
.L395:
	movq	-120(%rbp), %rax
	movl	$0, 20(%rax)
	movl	$0, %eax
.L396:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	handle_if, .-handle_if
	.section	.rodata
	.align 8
.LC64:
	.string	"missing expr in elif statement: %s"
	.text
	.type	handle_elif, @function
handle_elif:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L398
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	28(%rdx), %edx
	testl	%edx, %edx
	je	.L399
	movl	$.LC59, %ecx
	jmp	.L400
.L399:
	movl	$.LC60, %ecx
.L400:
	movq	-120(%rbp), %rdx
	movl	20(%rdx), %edx
	testl	%edx, %edx
	jne	.L401
	movl	$3, %esi
	jmp	.L402
.L401:
	movl	$4, %esi
.L402:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2175, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L398:
	movq	-120(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L403
	movl	$0, %eax
	jmp	.L412
.L403:
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	je	.L405
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L412
.L405:
	leaq	-96(%rbp), %rdx
	leaq	-88(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-88(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L406
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC62, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2195, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L412
.L406:
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L407
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC64, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2202, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L412
.L407:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L408
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, %eax
	jmp	.L412
.L408:
	movq	-96(%rbp), %rcx
	leaq	-100(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_expr
	movl	%eax, -68(%rbp)
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	je	.L409
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L412
.L409:
	cmpl	$0, -68(%rbp)
	je	.L410
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L411
.L410:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movq	-120(%rbp), %rax
	movl	%edx, 16(%rax)
.L411:
	movl	$0, %eax
.L412:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	handle_elif, .-handle_elif
	.section	.rodata
	.align 8
.LC65:
	.string	"else directive does not take tags in %s"
	.text
	.type	handle_else, @function
handle_else:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L414
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	20(%rdx), %edx
	testl	%edx, %edx
	jne	.L415
	movl	$3, %esi
	jmp	.L416
.L415:
	movl	$4, %esi
.L416:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC65, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2244, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L414:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L417
	movl	$0, %eax
	jmp	.L418
.L417:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L419
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L420
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
.L420:
	movl	$0, %eax
	jmp	.L418
.L419:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L421
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L422
.L421:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
.L422:
	movl	$0, %eax
.L418:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	handle_else, .-handle_else
	.section	.rodata
	.align 8
.LC66:
	.string	"endif directive does not take tags in %s"
	.text
	.type	handle_endif, @function
handle_endif:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L424
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	20(%rdx), %edx
	testl	%edx, %edx
	jne	.L425
	movl	$3, %esi
	jmp	.L426
.L425:
	movl	$4, %esi
.L426:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC66, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2283, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L424:
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L427
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	leal	-1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	$0, %eax
	jmp	.L428
.L427:
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L429
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L428
.L429:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	orl	$3, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	$0, %eax
.L428:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	handle_endif, .-handle_endif
	.section	.rodata
	.align 8
.LC67:
	.string	"missing argument for set element in %s"
.LC68:
	.string	"value"
	.align 8
.LC69:
	.string	"variable must precede value in set directive in %s"
	.align 8
.LC70:
	.string	"Invalid tag for set directive in %s"
	.text
	.type	handle_set, @function
handle_set:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	$0, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	ja	.L431
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	movq	-120(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L432
	movl	$3, %esi
	jmp	.L433
.L432:
	movl	$4, %esi
.L433:
	subq	$8, %rsp
	movq	-64(%rbp), %rdx
	pushq	%rax
	movl	$.LC67, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2318, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L431:
	movq	-120(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L434
	movl	$0, %eax
	jmp	.L435
.L434:
	movq	-120(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$1, %eax
	ja	.L436
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L435
.L436:
	jmp	.L437
.L438:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
.L437:
	cmpq	$0, -48(%rbp)
	jne	.L438
.L444:
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_ssi_get_tag_and_value
	movq	-104(%rbp), %rax
	testq	%rax, %rax
	je	.L439
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L439
	movq	-104(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L440
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -40(%rbp)
	jmp	.L441
.L440:
	movq	-104(%rbp), %rax
	movl	$.LC68, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L442
	cmpq	$0, -40(%rbp)
	jne	.L443
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-64(%rbp), %rdx
	pushq	%rax
	movl	$.LC69, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2360, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -88(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L439
.L443:
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_ssi_parse_string
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rbx
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L441
.L442:
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-64(%rbp), %rdx
	pushq	%rax
	movl	$.LC70, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2373, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-120(%rbp), %rax
	movq	(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-120(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-136(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L439
.L441:
	jmp	.L444
.L439:
	movl	$0, %eax
.L435:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	handle_set, .-handle_set
	.section	.rodata
	.align 8
.LC71:
	.string	"printenv directive does not take tags in %s"
	.text
	.type	handle_printenv, @function
handle_printenv:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-152(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L446
	movq	-48(%rbp), %rax
	movq	360(%rax), %rax
	movq	-152(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L447
	movl	$3, %esi
	jmp	.L448
.L447:
	movl	$4, %esi
.L448:
	subq	$8, %rsp
	movq	-48(%rbp), %rdx
	pushq	%rax
	movl	$.LC71, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$2395, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L446:
	movq	-152(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L449
	movl	$0, %eax
	jmp	.L450
.L449:
	movq	-152(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	je	.L451
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-152(%rbp), %rax
	movq	(%rax), %rbx
	movq	-152(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-152(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L450
.L451:
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L452
.L454:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$lazy_eval_sentinel, -96(%rbp)
	jne	.L453
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_include_vars_lazy
	movq	%rax, -96(%rbp)
.L453:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	addq	$3, %rax
	movq	%rax, -112(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-88(%rbp), %rax
	addq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movb	$61, (%rax)
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-104(%rbp), %rax
	addq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -128(%rbp)
	movb	$10, (%rax)
	movq	-128(%rbp), %rax
	movb	$0, (%rax)
	movq	-160(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	movq	-112(%rbp), %rax
	leaq	-1(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-168(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rdx)
	addl	$1, -36(%rbp)
.L452:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-36(%rbp), %eax
	jg	.L454
	movq	-152(%rbp), %rax
	movl	$1, 24(%rax)
	movl	$0, %eax
.L450:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	handle_printenv, .-handle_printenv
	.type	bndm_compile, @function
bndm_compile:
.LFB23:
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
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$1040, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1024, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 1032(%rax)
	movl	$1, -4(%rbp)
	jmp	.L456
.L457:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movzbl	%dl, %esi
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	orl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movslq	%esi, %rdx
	movl	%ecx, (%rax,%rdx,4)
	sall	-4(%rbp)
.L456:
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L457
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 1024(%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	bndm_compile, .-bndm_compile
	.type	bndm, @function
bndm:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	1024(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L460
.L467:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -28(%rbp)
.L466:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	leaq	0(,%rax,4), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	andl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L461
	jmp	.L462
.L461:
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L463
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L464
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L463
.L464:
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L465
.L463:
	shrl	-28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L466
.L462:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
.L460:
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L467
	movq	-88(%rbp), %rax
.L465:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	bndm, .-bndm
	.type	find_start_sequence, @function
find_start_sequence:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	1032(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L469
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L470
.L469:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bndm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L471
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-40(%rbp), %rax
	jmp	.L472
.L471:
	movq	-72(%rbp), %rax
	subq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L470:
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
.L480:
	jmp	.L473
.L475:
	addq	$1, -8(%rbp)
.L473:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L474
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L475
.L474:
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L476
	movq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
	jmp	.L477
.L479:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L477:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L478
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L479
.L478:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L476
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	jmp	.L472
.L476:
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L480
	movq	-72(%rbp), %rax
.L472:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	find_start_sequence, .-find_start_sequence
	.type	find_partial_start_sequence, @function
find_partial_start_sequence:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	1032(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
.L498:
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L482
.L484:
	addq	$1, -24(%rbp)
	addq	$1, -8(%rbp)
.L482:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L483
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L483
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L484
.L483:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L485
	movq	-40(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L486
.L485:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	.L487
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L486
.L487:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L488
.L497:
	addq	$1, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L489
.L491:
	addq	$1, -24(%rbp)
	addq	$1, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$1, -8(%rbp)
.L489:
	cmpq	$0, -8(%rbp)
	je	.L490
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L491
.L490:
	cmpq	$1, -8(%rbp)
	jbe	.L492
	movq	$1, -32(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L493
.L495:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L493:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L494
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L495
.L494:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L492
	jmp	.L496
.L492:
	cmpq	$1, -8(%rbp)
	ja	.L497
.L496:
	cmpq	$0, -8(%rbp)
	je	.L488
	jmp	.L498
.L488:
	nop
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
.L486:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	find_partial_start_sequence, .-find_partial_start_sequence
	.section	.rodata
	.align 8
.LC72:
	.string	"missing directive name in parsed document %s"
	.text
	.type	find_directive, @function
find_directive:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L501
	cmpl	$3, %eax
	ja	.L502
	cmpl	$2, %eax
	je	.L506
	jmp	.L512
.L502:
	cmpl	$4, %eax
	je	.L504
	cmpl	$5, %eax
	je	.L505
	jmp	.L512
.L510:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L507
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	movq	-32(%rbp), %rax
	movq	$1, 16(%rax)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L508
.L507:
	addq	$1, -8(%rbp)
.L506:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L509
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
	je	.L510
.L509:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L511
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movq	-32(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L512
.L511:
	jmp	.L512
.L504:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L513
.L515:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L513:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L514
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L514
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L515
.L514:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.L516
	movq	-32(%rbp), %rax
	movl	$5, (%rax)
	movq	-32(%rbp), %rax
	leaq	80(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	88(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L512
.L516:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.L517
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L512
.L517:
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$0, %eax
	jmp	.L508
.L505:
	movq	-32(%rbp), %rax
	movl	$17, (%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	subq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 88(%rax)
.L501:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L518
	movq	-32(%rbp), %rax
	movl	$6, (%rax)
.L518:
	movq	-56(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L519
	movq	-32(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	360(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC72, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2788, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L520
.L519:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L521
.L522:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -24(%rbp)
.L521:
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L522
.L520:
	movl	$0, %eax
	jmp	.L508
.L512:
	movq	-8(%rbp), %rdx
	movq	-64(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L508:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	find_directive, .-find_directive
	.type	find_arg_or_tail, @function
find_arg_or_tail:
.LFB28:
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
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L524
.L526:
	addq	$1, -8(%rbp)
.L524:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L525
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
	jne	.L526
.L525:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jnb	.L527
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L528
	movl	$15, %edx
	jmp	.L529
.L528:
	movl	$7, %edx
.L529:
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L527:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	find_arg_or_tail, .-find_arg_or_tail
	.type	find_tail, @function
find_tail:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$15, %eax
	jne	.L532
	movq	-24(%rbp), %rax
	movl	$16, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L532:
	jmp	.L533
.L535:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L533:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L534
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	jbe	.L534
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L535
.L534:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.L536
	movq	-24(%rbp), %rax
	movl	$17, (%rax)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L537
.L536:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L538
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L537
.L538:
	movq	-24(%rbp), %rax
	movl	$7, (%rax)
	movl	$0, %eax
.L537:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	find_tail, .-find_tail
	.section	.rodata
	.align 8
.LC73:
	.string	"missing argument name for value to tag %s in %s"
	.text
	.type	find_argument, @function
find_argument:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	$7, %eax
	cmpl	$7, %eax
	ja	.L598
	movl	%eax, %eax
	movq	.L542(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L542:
	.quad	.L541
	.quad	.L557
	.quad	.L544
	.quad	.L545
	.quad	.L546
	.quad	.L580
	.quad	.L548
	.quad	.L549
	.text
.L541:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L550
	movq	-64(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 104(%rax)
	jmp	.L551
.L550:
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L552
.L553:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L552:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L553
	movq	-64(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L551:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$39, %eax
	je	.L555
	cmpl	$96, %eax
	je	.L555
	cmpl	$34, %eax
	jne	.L596
.L555:
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movl	$12, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	$0, 16(%rax)
	movq	-64(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	360(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	pushq	%rbx
	pushq	%rdx
	movl	$.LC73, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2924, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L556
.L596:
	movq	-64(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L557
.L559:
	addq	$1, -24(%rbp)
.L557:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L558
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
	jne	.L558
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L559
.L558:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L560
	movq	-64(%rbp), %rax
	movl	$9, (%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L556
.L560:
	jmp	.L561
.L544:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, 8(%rbx)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L562
	movq	-64(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	360(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	40(%rax), %rax
	pushq	%rbx
	pushq	%rdx
	movl	$.LC73, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2956, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L563
.L562:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L564
.L565:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -40(%rbp)
.L564:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L565
.L563:
	movq	-64(%rbp), %rax
	movl	$10, (%rax)
.L545:
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L566
.L568:
	addq	$1, -24(%rbp)
.L566:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L567
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
	jne	.L568
.L567:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L569
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L570
	movq	-64(%rbp), %rax
	movl	$11, (%rax)
	addq	$1, -24(%rbp)
	jmp	.L571
.L570:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	$0, 24(%rax)
	movq	-64(%rbp), %rax
	movl	$6, (%rax)
.L571:
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L556
.L569:
	jmp	.L561
.L546:
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L572
.L574:
	addq	$1, -24(%rbp)
.L572:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L573
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
	jne	.L574
.L573:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L575
	movq	-64(%rbp), %rax
	movl	$12, (%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$39, %eax
	je	.L577
	cmpl	$96, %eax
	je	.L577
	cmpl	$34, %eax
	jne	.L597
.L577:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.L578
.L597:
	movq	-64(%rbp), %rax
	movb	$0, 12(%rax)
	nop
.L578:
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L556
.L575:
	jmp	.L561
.L548:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, %dl
	jne	.L579
	addq	$1, -24(%rbp)
.L579:
	movq	-64(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L580
.L587:
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	testb	%al, %al
	je	.L581
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L581
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L582
	movq	-64(%rbp), %rax
	movl	$13, (%rax)
	jmp	.L583
.L582:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, %dl
	je	.L584
	subq	$1, -24(%rbp)
	jmp	.L585
.L584:
	jmp	.L585
.L581:
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	testb	%al, %al
	je	.L586
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, %dl
	jne	.L586
	addq	$1, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movl	$14, (%rax)
	jmp	.L583
.L586:
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	testb	%al, %al
	jne	.L585
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
	je	.L585
	addq	$1, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	24(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movl	$14, (%rax)
	jmp	.L583
.L585:
	addq	$1, -24(%rbp)
.L580:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L587
.L583:
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	jmp	.L556
.L549:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rdx
	subq	$1, %rdx
	movq	%rdx, 32(%rax)
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	testb	%al, %al
	je	.L588
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.L589
.L591:
	addq	$1, -56(%rbp)
.L589:
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jnb	.L590
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L591
.L590:
	jmp	.L592
.L595:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L593
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %edx
	movq	-64(%rbp), %rax
	movzbl	12(%rax), %eax
	cmpb	%al, %dl
	jne	.L593
	addq	$1, -56(%rbp)
	addq	$1, -48(%rbp)
.L593:
	cmpq	$0, -48(%rbp)
	je	.L594
	movq	-48(%rbp), %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L594:
	addq	$1, -56(%rbp)
.L592:
	movq	-56(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L595
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	96(%rdx), %rdx
	movq	32(%rdx), %rdx
	subq	-48(%rbp), %rdx
	movq	%rdx, 32(%rax)
.L588:
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	32(%rax), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	movl	$6, (%rax)
	movl	$0, %eax
	jmp	.L556
.L598:
	nop
.L561:
	movq	-104(%rbp), %rax
.L556:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	find_argument, .-find_argument
	.section	.rodata
	.align 8
.LC74:
	.string	"unknown directive \"%s\" in parsed doc %s"
	.align 8
.LC75:
	.string	"SSI directive was not properly finished at the end of parsed document %s"
	.align 8
.LC76:
	.string	"missing closing endif directive in parsed document %s"
	.text
	.type	send_parsed_content, @function
send_parsed_content:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-280(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	-288(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.L600
	movl	$0, %eax
	jmp	.L668
.L600:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L602
	movq	-280(%rbp), %rax
	movq	16(%rax), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L668
.L602:
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.L603
.L660:
	movq	$0, -240(%rbp)
	movq	$0, -56(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	$0, -272(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L604
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
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
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L605
	movq	-72(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$17, %eax
	je	.L606
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$5, %eax
	jne	.L659
.L606:
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L604
.L605:
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_flush, %rax
	jne	.L608
	movq	-64(%rbp), %rax
	movl	$1, 24(%rax)
.L608:
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L603
.L604:
	movq	-64(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L610
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$8000, %rax
	jbe	.L611
.L610:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L612
	movq	-280(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L612
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-44(%rbp), %eax
	jmp	.L668
.L612:
	movq	-64(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 24(%rax)
.L611:
	movq	$0, -248(%rbp)
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L614
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L615
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	$1, %ecx
	call	*%rax
	movl	%eax, -44(%rbp)
	cmpl	$11, -44(%rbp)
	jne	.L615
	movq	-64(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L603
.L615:
	movq	-248(%rbp), %rax
	testq	%rax, %rax
	je	.L616
	cmpl	$0, -44(%rbp)
	je	.L617
.L616:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-248(%rbp), %rdx
	leaq	-240(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -44(%rbp)
.L617:
	cmpl	$0, -44(%rbp)
	je	.L618
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-44(%rbp), %eax
	jmp	.L668
.L618:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-248(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 24(%rax)
.L614:
	movq	-248(%rbp), %rax
	testq	%rax, %rax
	jne	.L619
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L619
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L603
.L619:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$17, %eax
	ja	.L603
	movl	%eax, %eax
	movq	.L622(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L622:
	.quad	.L621
	.quad	.L623
	.quad	.L624
	.quad	.L624
	.quad	.L624
	.quad	.L624
	.quad	.L625
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L626
	.quad	.L627
	.quad	.L627
	.quad	.L628
	.text
.L621:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_start_sequence
	movq	%rax, -120(%rbp)
	movq	-248(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	jnb	.L629
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L629:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L630
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
	jmp	.L631
.L630:
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
.L631:
	movq	-248(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	jnb	.L632
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L633
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	1032(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-64(%rbp), %rax
	movl	$1, 24(%rax)
.L633:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L620
.L632:
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L620
.L623:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	leaq	-256(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	find_partial_start_sequence
	movq	%rax, -120(%rbp)
	movq	-256(%rbp), %rax
	testq	%rax, %rax
	je	.L635
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L635
	movq	-256(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -136(%rbp)
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-256(%rbp), %rsi
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
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
.L635:
	cmpq	$0, -120(%rbp)
	je	.L636
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L637
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-64(%rbp), %rax
	movl	$1, 24(%rax)
.L637:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L620
.L636:
	jmp	.L620
.L624:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	leaq	-264(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	find_directive
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L638
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L638:
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L639
	cmpq	$0, -120(%rbp)
	je	.L640
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
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.L640:
	movq	-264(%rbp), %rdx
	leaq	-232(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L642
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_pflatten
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	jmp	.L620
.L639:
	cmpq	$0, -120(%rbp)
	je	.L642
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
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L620
.L642:
	jmp	.L620
.L625:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_arg_or_tail
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L643
	movq	-248(%rbp), %rax
	cmpq	%rax, -120(%rbp)
	jnb	.L644
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L644:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L620
.L643:
	jmp	.L620
.L626:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rsi
	leaq	-272(%rbp), %rdi
	leaq	-264(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	find_argument
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.L645
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.L645:
	movq	-264(%rbp), %rax
	testq	%rax, %rax
	je	.L646
	cmpq	$0, -120(%rbp)
	je	.L647
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
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-160(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-160(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.L647:
	movq	-264(%rbp), %rdx
	leaq	-232(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L649
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_pflatten
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	jmp	.L620
.L646:
	cmpq	$0, -120(%rbp)
	je	.L649
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
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L620
.L649:
	jmp	.L620
.L627:
	movq	-248(%rbp), %rdx
	movq	-240(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_tail
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	je	.L651
	cmpl	$17, %eax
	jne	.L669
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
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
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L653
.L651:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L654
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-288(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	-288(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-288(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-288(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	32(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L654:
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L653
.L669:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
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
	movq	32(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	nop
.L653:
	jmp	.L620
.L628:
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L655
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L657
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-64(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
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
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L657
.L655:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rcx
	movq	include_handlers(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.L658
	movq	-88(%rbp), %rdx
	movq	-280(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L657
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-44(%rbp), %eax
	jmp	.L668
.L658:
	movq	-80(%rbp), %rax
	movq	360(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	pushq	%rbx
	pushq	%rdx
	movl	$.LC74, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3439, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L657
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-64(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -192(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rax, 8(%rdx)
.L657:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	nop
.L620:
.L603:
	movq	-288(%rbp), %rax
	addq	$8, %rax
	cmpq	-40(%rbp), %rax
	jne	.L660
.L659:
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L661
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L662
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L664
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -200(%rbp)
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -208(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L664
.L662:
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L664
	movq	-80(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-80(%rbp), %rdx
	pushq	%rax
	movl	$.LC75, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3476, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L664
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-64(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -216(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-216(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-216(%rbp), %rax
	movq	%rax, 8(%rdx)
.L664:
	movq	-64(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L665
	movq	-80(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-80(%rbp), %rdx
	pushq	%rax
	movl	$.LC76, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$3485, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L665:
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	%rax, 8(%rdx)
.L661:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L666
	movq	-280(%rbp), %rax
	movq	16(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -44(%rbp)
	jmp	.L667
.L666:
	movl	$0, -44(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
.L667:
	movl	-44(%rbp), %eax
.L668:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	send_parsed_content, .-send_parsed_content
	.section	.rodata
.LC77:
	.string	"no-etag"
	.text
	.type	includes_setup, @function
includes_setup:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L671
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	400(%rax), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L671
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	404(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L672
.L671:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, 340(%rax)
.L672:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	272(%rax), %rax
	movl	$.LC16, %edx
	movl	$.LC77, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	includes_setup, .-includes_setup
	.section	.rodata
	.align 8
.LC78:
	.string	"mod_include: Options +Includes (or IncludesNoExec) wasn't set, INCLUDES filter removed"
.LC79:
	.string	"Content-Length"
.LC80:
	.string	"Last-Modified"
.LC81:
	.string	"QUERY_STRING"
	.text
	.type	includes_filter, @function
includes_filter:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L675
	movq	-8(%rbp), %rax
	movl	$.LC78, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$3555, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L676
.L675:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L677
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$144, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	apr_pool_create_ex
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$3, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$32, %eax
	testl	%eax, %eax
	je	.L678
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 16(%rax)
.L678:
	movq	-24(%rbp), %rax
	movl	28(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 136(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bndm_compile
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 128(%rax)
.L677:
	movq	-8(%rbp), %rax
	movq	616(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L679
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	264(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	472(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 472(%rax)
	jmp	.L680
.L679:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_add_common_vars
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_add_cgi_vars
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	add_include_vars
.L680:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	248(%rax), %rax
	movl	$.LC79, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$2, %eax
	jne	.L681
	movq	-8(%rbp), %rax
	movl	400(%rax), %eax
	andl	$2097152, %eax
	testl	%eax, %eax
	je	.L681
	movq	-8(%rbp), %rax
	movl	404(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L681
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_update_mtime
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_last_modified
	jmp	.L682
.L681:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	248(%rax), %rax
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L682:
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L683
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC81, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_shell_cmd
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L683:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	send_parsed_content
.L676:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	includes_filter, .-includes_filter
	.section	.rodata
.LC82:
	.string	"server-parsed"
.LC83:
	.string	"text/html"
.LC84:
	.string	"default-handler"
.LC85:
	.string	"INCLUDES"
	.text
	.type	include_fixup, @function
include_fixup:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L685
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC82, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L685
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L686
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L687
.L686:
	movq	-24(%rbp), %rax
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
.L687:
	movq	-24(%rbp), %rax
	movq	$.LC84, 288(%rax)
	jmp	.L688
.L685:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L689
	movl	$-1, %eax
	jmp	.L690
.L689:
	movq	-24(%rbp), %rax
	movl	404(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	jne	.L691
	movl	$-1, %eax
	jmp	.L690
.L691:
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L692
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L688
.L692:
	movl	$-1, %eax
	jmp	.L690
.L688:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$.LC85, %edi
	call	ap_add_output_filter
	movl	$-1, %eax
.L690:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	include_fixup, .-include_fixup
	.section	.rodata
	.align 8
.LC86:
	.string	"[an error occurred while processing this directive]"
.LC87:
	.string	"%A, %d-%b-%Y %H:%M:%S %Z"
.LC88:
	.string	"(none)"
	.text
	.type	create_includes_dir_config, @function
create_includes_dir_config:
.LFB35:
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
	movq	$.LC86, (%rax)
	movq	-8(%rbp), %rax
	movq	$.LC87, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC88, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	create_includes_dir_config, .-create_includes_dir_config
	.section	.rodata
.LC89:
	.string	"-->"
.LC90:
	.string	"<!--#"
	.text
	.type	create_includes_server_config, @function
create_includes_server_config:
.LFB36:
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
	movq	$.LC89, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC90, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	create_includes_server_config, .-create_includes_server_config
	.section	.rodata
.LC91:
	.string	"off"
.LC92:
	.string	"on"
.LC93:
	.string	"full"
	.align 8
.LC94:
	.string	"XBitHack must be set to Off, On, or Full"
	.text
	.type	set_xbithack, @function
set_xbithack:
.LFB37:
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
	movl	$.LC91, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L698
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.L699
.L698:
	movq	-40(%rbp), %rax
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L700
	movq	-8(%rbp), %rax
	movl	$1, 24(%rax)
	jmp	.L699
.L700:
	movq	-40(%rbp), %rax
	movl	$.LC93, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L701
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
	jmp	.L699
.L701:
	movl	$.LC94, %eax
	jmp	.L702
.L699:
	movl	$0, %eax
.L702:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	set_xbithack, .-set_xbithack
	.section	.rodata
	.align 8
.LC95:
	.string	"SSIStartTag may not contain any whitespaces"
	.text
	.type	set_default_start_tag, @function
set_default_start_tag:
.LFB38:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L704
.L707:
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
	je	.L705
	movl	$.LC95, %eax
	jmp	.L706
.L705:
	addq	$1, -8(%rbp)
.L704:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L707
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L706:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	set_default_start_tag, .-set_default_start_tag
	.section	.rodata
	.align 8
.LC96:
	.string	"SSIEndTag may not contain any whitespaces"
	.text
	.type	set_default_end_tag, @function
set_default_end_tag:
.LFB39:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L709
.L712:
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
	je	.L710
	movl	$.LC96, %eax
	jmp	.L711
.L710:
	addq	$1, -8(%rbp)
.L709:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L712
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	include_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L711:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	set_default_end_tag, .-set_default_end_tag
	.type	set_undefined_echo, @function
set_undefined_echo:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	set_undefined_echo, .-set_undefined_echo
	.type	set_default_error_msg, @function
set_default_error_msg:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	set_default_error_msg, .-set_default_error_msg
	.type	set_default_time_fmt, @function
set_default_time_fmt:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	set_default_time_fmt, .-set_default_time_fmt
	.section	.rodata
.LC97:
	.string	"ap_register_include_handler"
.LC98:
	.string	"if"
.LC99:
	.string	"set"
.LC100:
	.string	"else"
.LC101:
	.string	"elif"
.LC102:
	.string	"echo"
.LC103:
	.string	"endif"
.LC104:
	.string	"config"
.LC105:
	.string	"include"
.LC106:
	.string	"printenv"
	.text
	.type	include_post_config, @function
include_post_config:
.LFB43:
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
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, include_handlers(%rip)
	movl	$.LC97, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, ssi_pfn_register(%rip)
	movq	ssi_pfn_register(%rip), %rax
	testq	%rax, %rax
	je	.L720
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_if, %esi
	movl	$.LC98, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_set, %esi
	movl	$.LC99, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_else, %esi
	movl	$.LC100, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_elif, %esi
	movl	$.LC101, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_echo, %esi
	movl	$.LC102, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_endif, %esi
	movl	$.LC103, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_fsize, %esi
	movl	$.LC55, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_config, %esi
	movl	$.LC104, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_include, %esi
	movl	$.LC105, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_flastmod, %esi
	movl	$.LC58, %edi
	call	*%rax
	movq	ssi_pfn_register(%rip), %rax
	movl	$handle_printenv, %esi
	movl	$.LC106, %edi
	call	*%rax
.L720:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	include_post_config, .-include_post_config
	.section	.rodata
.LC107:
	.string	"XBitHack"
.LC108:
	.string	"Off, On, or Full"
.LC109:
	.string	"SSIErrorMsg"
.LC110:
	.string	"a string"
.LC111:
	.string	"SSITimeFormat"
	.align 8
.LC112:
	.string	"a strftime(3) formatted string"
.LC113:
	.string	"SSIStartTag"
.LC114:
	.string	"SSI Start String Tag"
.LC115:
	.string	"SSIEndTag"
.LC116:
	.string	"SSI End String Tag"
.LC117:
	.string	"SSIUndefinedEcho"
	.align 8
.LC118:
	.string	"String to be displayed if an echoed variable is undefined"
.LC119:
	.string	"SSIAccessEnable"
	.align 8
.LC120:
	.string	"Whether testing access is enabled. Limited to 'on' or 'off'"
	.align 64
	.type	includes_cmds, @object
	.size	includes_cmds, 320
includes_cmds:
	.quad	.LC107
	.quad	set_xbithack
	.quad	0
	.long	2
	.long	1
	.quad	.LC108
	.quad	.LC109
	.quad	set_default_error_msg
	.quad	0
	.long	31
	.long	1
	.quad	.LC110
	.quad	.LC111
	.quad	set_default_time_fmt
	.quad	0
	.long	31
	.long	1
	.quad	.LC112
	.quad	.LC113
	.quad	set_default_start_tag
	.quad	0
	.long	128
	.long	1
	.quad	.LC114
	.quad	.LC115
	.quad	set_default_end_tag
	.quad	0
	.long	128
	.long	1
	.quad	.LC116
	.quad	.LC117
	.quad	set_undefined_echo
	.quad	0
	.long	31
	.long	1
	.quad	.LC118
	.quad	.LC119
	.quad	ap_set_flag_slot
	.quad	28
	.long	1
	.long	5
	.quad	.LC120
	.quad	0
	.zero	32
	.text
	.type	ap_register_include_handler, @function
ap_register_include_handler:
.LFB44:
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
	call	strlen
	movq	%rax, %rdi
	movq	include_handlers(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ap_register_include_handler, .-ap_register_include_handler
	.section	.rodata
.LC121:
	.string	"ap_ssi_get_tag_and_value"
.LC122:
	.string	"ap_ssi_parse_string"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$ap_ssi_get_tag_and_value, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC121, %edi
	call	apr_dynamic_fn_register
	movq	$ap_ssi_parse_string, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC122, %edi
	call	apr_dynamic_fn_register
	movq	$ap_register_include_handler, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC97, %edi
	call	apr_dynamic_fn_register
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$include_post_config, %edi
	call	ap_hook_post_config
	movl	$20, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$include_fixup, %edi
	call	ap_hook_fixups
	movl	$10, %ecx
	movl	$includes_setup, %edx
	movl	$includes_filter, %esi
	movl	$.LC85, %edi
	call	ap_register_output_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC123:
	.string	"lt<gt>"
.LC124:
	.string	"amp&ETH\320eth\360"
	.align 8
.LC125:
	.string	"quot\"Auml\304Euml\313Iuml\317Ouml\326Uuml\334auml\344euml\353iuml\357ouml\366uuml\374yuml\377"
	.align 8
.LC126:
	.string	"Acirc\302Aring\305AElig\306Ecirc\312Icirc\316Ocirc\324Ucirc\333THORN\336szlig\337acirc\342aring\345aelig\346ecirc\352icirc\356ocirc\364ucirc\373thorn\376"
	.align 8
.LC127:
	.string	"Agrave\300Aacute\301Atilde\303Ccedil\307Egrave\310Eacute\311Igrave\314Iacute\315Ntilde\321Ograve\322Oacute\323Otilde\325Oslash\330Ugrave\331Uacute\332Yacute\335agrave\340aacute\341atilde\343ccedil\347egrave\350eacute\351igrave\354iacute\355ntilde\361ograve\362oacute\363otilde\365oslash\370ugrave\371uacute\372yacute\375"
	.align 32
	.type	entlist.9099, @object
	.size	entlist.9099, 56
entlist.9099:
	.quad	0
	.quad	0
	.quad	.LC123
	.quad	.LC124
	.quad	.LC125
	.quad	.LC126
	.quad	.LC127
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

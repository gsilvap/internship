	.file	"mod_actions.c"
	.globl	actions_module
	.section	.rodata
.LC0:
	.string	"mod_actions.c"
	.data
	.align 64
	.type	actions_module, @object
	.size	actions_module, 104
actions_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_action_dir_config
	.quad	merge_action_dir_configs
	.quad	0
	.quad	0
	.quad	action_cmds
	.quad	register_hooks
	.text
	.type	create_action_dir_config, @function
create_action_dir_config:
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
	movl	$528, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$528, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_action_dir_config, .-create_action_dir_config
	.type	merge_action_dir_configs, @function
merge_action_dir_configs:
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
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	$528, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -4(%rbp)
	jmp	.L4
.L7:
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L5
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	8(%rax,%rdx,8), %rax
	jmp	.L6
.L5:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movq	8(%rax,%rdx,8), %rax
.L6:
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rax, 8(%rdx,%rcx,8)
	addl	$1, -4(%rbp)
.L4:
	cmpl	$63, -4(%rbp)
	jle	.L7
	movq	-16(%rbp), %rax
	movl	520(%rax), %eax
	testl	%eax, %eax
	jne	.L8
	movq	-24(%rbp), %rax
	movl	520(%rax), %eax
	testl	%eax, %eax
	je	.L9
.L8:
	movl	$1, %edx
	jmp	.L10
.L9:
	movl	$0, %edx
.L10:
	movq	-32(%rbp), %rax
	movl	%edx, 520(%rax)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	merge_action_dir_configs, .-merge_action_dir_configs
	.section	.rodata
.LC1:
	.string	"virtual"
.LC2:
	.string	"'"
.LC3:
	.string	"unrecognized option '"
.LC4:
	.string	"1"
.LC5:
	.string	"0"
	.text
	.type	add_action, @function
add_action:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L13
	movq	-56(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L13
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC2, %ecx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L14
.L13:
	cmpq	$0, -56(%rbp)
	je	.L15
	movl	$.LC4, %esi
	jmp	.L16
.L15:
	movl	$.LC5, %esi
.L16:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	movl	$1, 520(%rax)
	movl	$0, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_action, .-add_action
	.section	.rodata
.LC6:
	.string	"TRACE not allowed for Script"
.LC7:
	.string	"' for Script"
.LC8:
	.string	"Could not register method '"
	.text
	.type	set_script, @function
set_script:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_method_register
	movl	%eax, -12(%rbp)
	cmpl	$6, -12(%rbp)
	jne	.L18
	movl	$.LC6, %eax
	jmp	.L19
.L18:
	cmpl	$26, -12(%rbp)
	jne	.L20
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC7, %ecx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L19
.L20:
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, 8(%rax,%rdx,8)
	movq	-8(%rbp), %rax
	movl	$1, 520(%rax)
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	set_script, .-set_script
	.section	.rodata
.LC9:
	.string	"Action"
	.align 8
.LC10:
	.string	"a media type followed by a script name"
.LC11:
	.string	"Script"
	.align 8
.LC12:
	.string	"a method followed by a script name"
	.align 64
	.type	action_cmds, @object
	.size	action_cmds, 120
action_cmds:
	.quad	.LC9
	.quad	add_action
	.quad	0
	.long	4
	.long	9
	.quad	.LC10
	.quad	.LC11
	.quad	set_script
	.quad	0
	.long	192
	.long	2
	.quad	.LC12
	.quad	0
	.zero	32
.LC13:
	.string	"File does not exist: %s"
.LC14:
	.string	"HANDLER"
.LC15:
	.string	"?"
	.text
	.type	action_handler, @function
action_handler:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	608(%rax), %rax
	movl	actions_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	520(%rax), %eax
	testl	%eax, %eax
	jne	.L22
	movl	$-1, %eax
	jmp	.L23
.L22:
	movl	$0, -28(%rbp)
	jmp	.L24
.L26:
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	8(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.L25
	movq	-72(%rbp), %rax
	movq	136(%rax), %rdx
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	orq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 136(%rax)
.L25:
	addl	$1, -28(%rbp)
.L24:
	cmpl	$63, -28(%rbp)
	jle	.L26
	movq	-72(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L27
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L30
.L28:
	movq	$0, -24(%rbp)
	jmp	.L30
.L27:
	movq	-72(%rbp), %rax
	movl	128(%rax), %edx
	movq	-40(%rbp), %rax
	movslq	%edx, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	%rax, -24(%rbp)
.L30:
	cmpq	$0, -24(%rbp)
	je	.L31
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-72(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movl	$-1, %eax
	jmp	.L23
.L31:
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L32
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	jmp	.L33
.L32:
	movq	-72(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
.L33:
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L34
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_default_type
	jmp	.L35
.L34:
	movq	-48(%rbp), %rax
.L35:
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L36
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L37
	movq	-72(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L37
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-72(%rbp), %rdx
	pushq	%rax
	movl	$.LC13, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$185, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L23
.L37:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L36:
	cmpq	$0, -24(%rbp)
	jne	.L38
	movl	$-1, %eax
	jmp	.L23
.L38:
	movq	-72(%rbp), %rax
	movq	384(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movl	$.LC15, %r12d
	jmp	.L40
.L39:
	movl	$0, %r12d
.L40:
	movq	-72(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	$0, %r9d
	movq	%rbx, %r8
	movq	%r12, %rcx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_internal_redirect_handler
	movl	$0, %eax
.L23:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	action_handler, .-action_handler
	.type	register_hooks, @function
register_hooks:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$20, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$action_handler, %edi
	call	ap_hook_handler
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

	.file	"mod_authn_default.c"
	.text
	.type	create_authn_default_dir_config, @function
create_authn_default_dir_config:
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
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_authn_default_dir_config, .-create_authn_default_dir_config
	.section	.rodata
.LC0:
	.string	"AuthDefaultAuthoritative"
	.align 8
.LC1:
	.string	"Set to 'Off' to allow access control to be passed along to lower modules if the UserID is not known to this module. (default is On)."
	.align 64
	.type	authn_default_cmds, @object
	.size	authn_default_cmds, 80
authn_default_cmds:
	.quad	.LC0
	.quad	ap_set_flag_slot
	.quad	0
	.long	8
	.long	5
	.quad	.LC1
	.quad	0
	.zero	32
	.globl	authn_default_module
.LC2:
	.string	"mod_authn_default.c"
	.data
	.align 64
	.type	authn_default_module, @object
	.size	authn_default_module, 104
authn_default_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authn_default_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authn_default_cmds
	.quad	register_hooks
	.section	.rodata
.LC3:
	.string	"Basic"
.LC4:
	.string	"<null>"
	.align 8
.LC5:
	.string	"access to %s failed, reason: verification of user id '%s' not configured"
	.text
	.type	authenticate_no_user, @function
authenticate_no_user:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	authn_default_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L4
	movl	$-1, %eax
	jmp	.L5
.L4:
	movq	-16(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L6
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_basic_auth_pw
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L6
	movl	-20(%rbp), %eax
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L8
	movl	$-1, %eax
	jmp	.L5
.L8:
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	jmp	.L10
.L9:
	movl	$.LC4, %eax
.L10:
	movq	-40(%rbp), %rdx
	movq	352(%rdx), %rdx
	movq	-40(%rbp), %rcx
	pushq	%rax
	pushq	%rdx
	movl	$.LC5, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$80, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_auth_failure
	movl	$401, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	authenticate_no_user, .-authenticate_no_user
	.type	register_hooks, @function
register_hooks:
.LFB4:
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
	movl	$authenticate_no_user, %edi
	call	ap_hook_check_user_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

	.file	"mod_authz_user.c"
	.text
	.type	create_authz_user_dir_config, @function
create_authz_user_dir_config:
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
	.size	create_authz_user_dir_config, .-create_authz_user_dir_config
	.section	.rodata
.LC0:
	.string	"AuthzUserAuthoritative"
	.align 8
.LC1:
	.string	"Set to 'Off' to allow access control to be passed along to lower modules if the 'require user' or 'require valid-user' statement is not met. (default: On)."
	.align 64
	.type	authz_user_cmds, @object
	.size	authz_user_cmds, 80
authz_user_cmds:
	.quad	.LC0
	.quad	ap_set_flag_slot
	.quad	0
	.long	8
	.long	5
	.quad	.LC1
	.quad	0
	.zero	32
	.globl	authz_user_module
.LC2:
	.string	"mod_authz_user.c"
	.data
	.align 64
	.type	authz_user_module, @object
	.size	authz_user_module, 104
authz_user_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authz_user_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authz_user_cmds
	.quad	register_hooks
	.section	.rodata
.LC3:
	.string	"valid-user"
.LC4:
	.string	"user"
	.align 8
.LC5:
	.string	"access to %s failed, reason: user '%s' does not meet 'require'ments for user/valid-user to be allowed access"
	.text
	.type	check_user_access, @function
check_user_access:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	608(%rax), %rax
	movl	authz_user_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_requires
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L4
	movl	$-1, %eax
	jmp	.L15
.L4:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, %ebx
	jmp	.L6
.L12:
	movslq	%ebx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L7
	jmp	.L8
.L7:
	movslq	%ebx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_white
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L9
	movl	$0, %eax
	jmp	.L15
.L9:
	movq	-72(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L8
	movl	$1, -20(%rbp)
	jmp	.L10
.L11:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	movl	$0, %eax
	jmp	.L15
.L10:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L11
.L8:
	addl	$1, %ebx
.L6:
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%ebx, %eax
	jg	.L12
	cmpl	$0, -20(%rbp)
	jne	.L13
	movl	$-1, %eax
	jmp	.L15
.L13:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L14
	movl	$-1, %eax
	jmp	.L15
.L14:
	movq	-88(%rbp), %rax
	movq	352(%rax), %rax
	movq	-88(%rbp), %rdx
	pushq	-40(%rbp)
	pushq	%rax
	movl	$.LC5, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$106, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_auth_failure
	movl	$401, %eax
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	check_user_access, .-check_user_access
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
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$check_user_access, %edi
	call	ap_hook_auth_checker
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

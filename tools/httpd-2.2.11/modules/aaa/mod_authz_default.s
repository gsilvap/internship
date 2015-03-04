	.file	"mod_authz_default.c"
	.text
	.type	create_authz_default_dir_config, @function
create_authz_default_dir_config:
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
	.size	create_authz_default_dir_config, .-create_authz_default_dir_config
	.section	.rodata
.LC0:
	.string	"AuthzDefaultAuthoritative"
	.align 8
.LC1:
	.string	"Set to 'Off' to allow access control to be passed along to lower modules. (default is On.)"
	.align 64
	.type	authz_default_cmds, @object
	.size	authz_default_cmds, 80
authz_default_cmds:
	.quad	.LC0
	.quad	ap_set_flag_slot
	.quad	0
	.long	8
	.long	5
	.quad	.LC1
	.quad	0
	.zero	32
	.globl	authz_default_module
.LC2:
	.string	"mod_authz_default.c"
	.data
	.align 64
	.type	authz_default_module, @object
	.size	authz_default_module, 104
authz_default_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authz_default_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authz_default_cmds
	.quad	register_hooks
	.section	.rodata
	.align 8
.LC3:
	.string	"access to %s failed, reason: require directives present and no Authoritative handler."
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
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	608(%rax), %rax
	movl	authz_default_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	$0, -20(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_requires
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, %ebx
	jmp	.L6
.L9:
	movslq	%ebx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L7
	addl	$1, %ebx
	jmp	.L6
.L7:
	movl	$1, -20(%rbp)
	jmp	.L8
.L6:
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%ebx, %eax
	jg	.L9
.L8:
	cmpl	$0, -20(%rbp)
	jne	.L10
	movl	$0, %eax
	jmp	.L5
.L10:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L11
	movl	$-1, %eax
	jmp	.L5
.L11:
	movq	-72(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-72(%rbp), %rdx
	pushq	%rax
	movl	$.LC3, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$93, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_auth_failure
	movl	$401, %eax
.L5:
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
	movl	$20, %ecx
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

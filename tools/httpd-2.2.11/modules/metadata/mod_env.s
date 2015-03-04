	.file	"mod_env.c"
	.globl	env_module
	.section	.rodata
.LC0:
	.string	"mod_env.c"
	.data
	.align 64
	.type	env_module, @object
	.size	env_module, 104
env_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_env_dir_config
	.quad	merge_env_dir_configs
	.quad	0
	.quad	0
	.quad	env_module_cmds
	.quad	register_hooks
	.text
	.type	create_env_dir_config, @function
create_env_dir_config:
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
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_env_dir_config, .-create_env_dir_config
	.type	merge_env_dir_configs, @function
merge_env_dir_configs:
.LFB3:
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
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_copy
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L4
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_unset
	addl	$1, -4(%rbp)
.L5:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L6
.L4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L7
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	addl	$1, -4(%rbp)
.L8:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L9
.L7:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	merge_env_dir_configs, .-merge_env_dir_configs
	.section	.rodata
	.align 8
.LC1:
	.string	"PassEnv variable %s was undefined"
	.text
	.type	add_env_module_vars_passed, @function
add_env_module_vars_passed:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	getenv
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L12
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L13
.L12:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movl	$.LC1, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$104, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L13:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_env_module_vars_passed, .-add_env_module_vars_passed
	.section	.rodata
.LC2:
	.string	""
	.text
	.type	add_env_module_vars_set, @function
add_env_module_vars_set:
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
	cmpq	$0, -48(%rbp)
	je	.L16
	movq	-48(%rbp), %rax
	jmp	.L17
.L16:
	movl	$.LC2, %eax
.L17:
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	apr_table_setn
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	add_env_module_vars_set, .-add_env_module_vars_set
	.type	add_env_module_vars_unset, @function
add_env_module_vars_unset:
.LFB6:
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
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_unset
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_env_module_vars_unset, .-add_env_module_vars_unset
	.section	.rodata
.LC3:
	.string	"PassEnv"
	.align 8
.LC4:
	.string	"a list of environment variables to pass to CGI."
.LC5:
	.string	"SetEnv"
	.align 8
.LC6:
	.string	"an environment variable name and optional value to pass to CGI."
.LC7:
	.string	"UnsetEnv"
	.align 8
.LC8:
	.string	"a list of variables to remove from the CGI environment."
	.align 64
	.type	env_module_cmds, @object
	.size	env_module_cmds, 160
env_module_cmds:
	.quad	.LC3
	.quad	add_env_module_vars_passed
	.quad	0
	.long	4
	.long	3
	.quad	.LC4
	.quad	.LC5
	.quad	add_env_module_vars_set
	.quad	0
	.long	4
	.long	7
	.quad	.LC6
	.quad	.LC7
	.quad	add_env_module_vars_unset
	.quad	0
	.long	4
	.long	3
	.quad	.LC8
	.quad	0
	.zero	32
	.text
	.type	fixup_env_module, @function
fixup_env_module:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	env_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L22
	movl	$-1, %eax
	jmp	.L23
.L22:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 264(%rax)
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fixup_env_module, .-fixup_env_module
	.type	register_hooks, @function
register_hooks:
.LFB8:
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
	movl	$fixup_env_module, %edi
	call	ap_hook_fixups
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

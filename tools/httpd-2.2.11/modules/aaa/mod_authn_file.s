	.file	"mod_authn_file.c"
	.text
	.type	create_authn_file_dir_config, @function
create_authn_file_dir_config:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_authn_file_dir_config, .-create_authn_file_dir_config
	.section	.rodata
.LC0:
	.string	"standard"
.LC1:
	.string	"Invalid auth file type: "
	.text
	.type	set_authn_file_slot, @function
set_authn_file_slot:
.LFB3:
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
	cmpq	$0, -32(%rbp)
	je	.L4
	movq	-32(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L5
.L4:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_set_file_slot
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_authn_file_slot, .-set_authn_file_slot
	.section	.rodata
.LC2:
	.string	"AuthUserFile"
	.align 8
.LC3:
	.string	"text file containing user IDs and passwords"
	.align 64
	.type	authn_file_cmds, @object
	.size	authn_file_cmds, 80
authn_file_cmds:
	.quad	.LC2
	.quad	set_authn_file_slot
	.quad	0
	.long	8
	.long	7
	.quad	.LC3
	.quad	0
	.zero	32
	.globl	authn_file_module
.LC4:
	.string	"mod_authn_file.c"
	.data
	.align 64
	.type	authn_file_module, @object
	.size	authn_file_module, 104
authn_file_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC4
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authn_file_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authn_file_cmds
	.quad	register_hooks
	.section	.rodata
	.align 8
.LC5:
	.string	"Could not open password file: %s"
	.text
	.type	check_password, @function
check_password:
.LFB4:
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
	movq	-8264(%rbp), %rax
	movq	608(%rax), %rax
	movl	authn_file_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8264(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L7
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	subq	$8, %rsp
	movq	-8264(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC5, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$76, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$4, %eax
	jmp	.L17
.L7:
	jmp	.L9
.L14:
	movzbl	-8240(%rbp), %eax
	cmpb	$35, %al
	je	.L9
	movzbl	-8240(%rbp), %eax
	testb	%al, %al
	jne	.L11
	jmp	.L9
.L11:
	leaq	-8240(%rbp), %rax
	movq	%rax, -8248(%rbp)
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8248(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8248(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -8(%rbp)
	jmp	.L13
.L9:
	movq	-40(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L14
.L13:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	cmpq	$0, -8(%rbp)
	jne	.L15
	movl	$3, %eax
	jmp	.L17
.L15:
	movq	-8(%rbp), %rdx
	movq	-8280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_password_validate
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L16
	movl	$0, %eax
	jmp	.L17
.L16:
	movl	$1, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	check_password, .-check_password
	.type	get_realm_hash, @function
get_realm_hash:
.LFB5:
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
	movq	-8264(%rbp), %rax
	movq	608(%rax), %rax
	movl	authn_file_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8264(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	subq	$8, %rsp
	movq	-8264(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC5, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$124, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$4, %eax
	jmp	.L28
.L19:
	jmp	.L21
.L26:
	movzbl	-8240(%rbp), %eax
	cmpb	$35, %al
	je	.L21
	movzbl	-8240(%rbp), %eax
	testb	%al, %al
	jne	.L23
	jmp	.L21
.L23:
	leaq	-8240(%rbp), %rax
	movq	%rax, -8248(%rbp)
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8248(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -32(%rbp)
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8248(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L21
	cmpq	$0, -32(%rbp)
	je	.L21
	movq	-32(%rbp), %rdx
	movq	-8272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L21
	movq	-40(%rbp), %rdx
	movq	-8280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L21
	movq	-8264(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8248(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -8(%rbp)
	jmp	.L25
.L21:
	movq	-48(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L26
.L25:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	cmpq	$0, -8(%rbp)
	jne	.L27
	movl	$3, %eax
	jmp	.L28
.L27:
	movq	-8288(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$2, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_realm_hash, .-get_realm_hash
	.section	.rodata
	.align 16
	.type	authn_file_provider, @object
	.size	authn_file_provider, 16
authn_file_provider:
	.quad	check_password
	.quad	get_realm_hash
.LC6:
	.string	"0"
.LC7:
	.string	"file"
.LC8:
	.string	"authn"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$authn_file_provider, %r8d
	movl	$.LC6, %ecx
	movl	$.LC7, %edx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	ap_register_provider
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

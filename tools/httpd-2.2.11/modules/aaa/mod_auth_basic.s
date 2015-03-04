	.file	"mod_auth_basic.c"
	.text
	.type	create_auth_basic_dir_config, @function
create_auth_basic_dir_config:
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
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_auth_basic_dir_config, .-create_auth_basic_dir_config
	.section	.rodata
.LC0:
	.string	"0"
.LC1:
	.string	"authn"
.LC2:
	.string	"Unknown Authn provider: %s"
	.align 8
.LC3:
	.string	"The '%s' Authn provider doesn't support Basic Authentication"
	.text
	.type	add_authn_provider, @function
add_authn_provider:
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
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$24, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC0, %edx
	movq	%rax, %rsi
	movl	$.LC1, %edi
	call	ap_lookup_provider
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L5
.L4:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L5
.L6:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L8
.L7:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L9:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L8:
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	add_authn_provider, .-add_authn_provider
	.section	.rodata
.LC4:
	.string	"AuthBasicProvider"
	.align 8
.LC5:
	.string	"specify the auth providers for a directory or location"
.LC6:
	.string	"AuthBasicAuthoritative"
	.align 8
.LC7:
	.string	"Set to 'Off' to allow access control to be passed along to lower modules if the UserID is not known to this module"
	.align 64
	.type	auth_basic_cmds, @object
	.size	auth_basic_cmds, 120
auth_basic_cmds:
	.quad	.LC4
	.quad	add_authn_provider
	.quad	0
	.long	8
	.long	3
	.quad	.LC5
	.quad	.LC6
	.quad	ap_set_flag_slot
	.quad	16
	.long	8
	.long	5
	.quad	.LC7
	.quad	0
	.zero	32
	.globl	auth_basic_module
.LC8:
	.string	"mod_auth_basic.c"
	.data
	.align 64
	.type	auth_basic_module, @object
	.size	auth_basic_module, 104
auth_basic_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC8
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_auth_basic_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	auth_basic_cmds
	.quad	register_hooks
	.section	.rodata
.LC9:
	.string	"\""
.LC10:
	.string	"Basic realm=\""
.LC11:
	.string	"Proxy-Authenticate"
.LC12:
	.string	"WWW-Authenticate"
	.text
	.type	note_basic_auth_failure, @function
note_basic_auth_failure:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_name
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC9, %ecx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L12
	movl	$.LC11, %ecx
	jmp	.L13
.L12:
	movl	$.LC12, %ecx
.L13:
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	note_basic_auth_failure, .-note_basic_auth_failure
	.section	.rodata
.LC13:
	.string	"Proxy-Authorization"
.LC14:
	.string	"Authorization"
.LC15:
	.string	"Basic"
	.align 8
.LC16:
	.string	"client used wrong authentication scheme: %s"
	.text
	.type	get_basic_auth, @function
get_basic_auth:
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
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L15
	movl	$.LC13, %edx
	jmp	.L16
.L15:
	movl	$.LC14, %edx
.L16:
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	note_basic_auth_failure
	movl	$401, %eax
	jmp	.L22
.L17:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L19
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC16, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$148, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	note_basic_auth_failure
	movl	$401, %eax
	jmp	.L22
.L19:
	jmp	.L20
.L21:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L20:
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
	jne	.L21
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_base64_decode_len
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_base64_decode
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword_nulls
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 320(%rax)
	movl	$0, %eax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_basic_auth, .-get_basic_auth
	.section	.rodata
.LC17:
	.string	"need AuthName: %s"
.LC18:
	.string	"file"
.LC19:
	.string	"No Authn provider configured"
.LC20:
	.string	"authn_provider_name"
	.align 8
.LC21:
	.string	"user %s: authentication failure for \"%s\": Password Mismatch"
.LC22:
	.string	"user %s not found: %s"
	.text
	.type	authenticate_basic_user, @function
authenticate_basic_user:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	608(%rax), %rax
	movl	auth_basic_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-48(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L25
.L24:
	movl	$-1, %eax
	jmp	.L44
.L25:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_name
	testq	%rax, %rax
	jne	.L27
	movq	-88(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-88(%rbp), %rdx
	pushq	%rax
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$193, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L44
.L27:
	movq	-88(%rbp), %rax
	movq	$.LC15, 328(%rax)
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	get_basic_auth
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L28
	movl	-52(%rbp), %eax
	jmp	.L44
.L28:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L36:
	cmpq	$0, -16(%rbp)
	jne	.L29
	movl	$.LC0, %edx
	movl	$.LC18, %esi
	movl	$.LC1, %edi
	call	ap_lookup_provider
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
.L30:
	movq	-88(%rbp), %rax
	movl	$.LC19, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$217, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$4, -4(%rbp)
	jmp	.L32
.L31:
	movq	-88(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC18, %edx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L33
.L29:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L33:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -4(%rbp)
	movq	-88(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	cmpl	$3, -4(%rbp)
	je	.L34
	jmp	.L32
.L34:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L35
	jmp	.L32
.L35:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L36
.L32:
	cmpl	$1, -4(%rbp)
	je	.L37
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L38
	cmpl	$0, -4(%rbp)
	je	.L38
	movl	$-1, %eax
	jmp	.L44
.L38:
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	je	.L40
	cmpl	$3, %eax
	je	.L41
	jmp	.L45
.L40:
	movq	-88(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC21, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$257, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$401, -28(%rbp)
	jmp	.L42
.L41:
	movq	-88(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC22, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$264, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$401, -28(%rbp)
	jmp	.L42
.L45:
	movl	$500, -28(%rbp)
	nop
.L42:
	cmpl	$401, -28(%rbp)
	jne	.L43
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	note_basic_auth_failure
.L43:
	movl	-28(%rbp), %eax
	jmp	.L44
.L37:
	movl	$0, %eax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	authenticate_basic_user, .-authenticate_basic_user
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
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$authenticate_basic_user, %edi
	call	ap_hook_check_user_id
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

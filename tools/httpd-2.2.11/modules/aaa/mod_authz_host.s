	.file	"mod_authz_host.c"
	.globl	authz_host_module
	.section	.rodata
.LC0:
	.string	"mod_authz_host.c"
	.data
	.align 64
	.type	authz_host_module, @object
	.size	authz_host_module, 104
authz_host_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authz_host_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authz_host_cmds
	.quad	register_hooks
	.text
	.type	create_authz_host_dir_config, @function
create_authz_host_dir_config:
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
	movl	$272, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$272, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$63, -4(%rbp)
	jle	.L3
	movq	-24(%rbp), %rax
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-24(%rbp), %rax
	movl	$24, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_authz_host_dir_config, .-create_authz_host_dir_config
	.section	.rodata
.LC1:
	.string	"allow,deny"
.LC2:
	.string	"deny,allow"
.LC3:
	.string	"mutual-failure"
.LC4:
	.string	"unknown order"
	.text
	.type	order, @function
order:
.LFB3:
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
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L6
	movl	$1, -8(%rbp)
	jmp	.L7
.L6:
	movq	-40(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L8
	movl	$0, -8(%rbp)
	jmp	.L7
.L8:
	movq	-40(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L9
	movl	$2, -8(%rbp)
	jmp	.L7
.L9:
	movl	$.LC4, %eax
	jmp	.L10
.L7:
	movl	$0, -4(%rbp)
	jmp	.L11
.L13:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L12
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movl	-8(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
.L12:
	addl	$1, -4(%rbp)
.L11:
	cmpl	$63, -4(%rbp)
	jle	.L13
	movl	$0, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	order, .-order
	.section	.rodata
.LC5:
	.string	"from"
	.align 8
.LC6:
	.string	"allow and deny must be followed by 'from'"
.LC7:
	.string	"env=!"
.LC8:
	.string	"env="
.LC9:
	.string	"all"
.LC10:
	.string	"An IP address was expected"
	.text
	.type	allow_cmd, @function
allow_cmd:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L15
	movl	$.LC6, %eax
	jmp	.L28
.L15:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
.L18:
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L19
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	5(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L20
.L19:
	movq	-16(%rbp), %rax
	movl	$4, %edx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L21
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L20
.L21:
	movq	-16(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L22
	movq	-24(%rbp), %rax
	movl	$2, 16(%rax)
	jmp	.L20
.L22:
	movq	-16(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L23
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	call	apr_ipsubnet_create
	movl	%eax, -36(%rbp)
	cmpl	$22, -36(%rbp)
	jne	.L24
	movl	$.LC10, %eax
	jmp	.L28
.L24:
	cmpl	$0, -36(%rbp)
	je	.L25
	leaq	-160(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L28
.L25:
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	jmp	.L20
.L23:
	movq	-168(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	call	apr_ipsubnet_create
	movl	%eax, -36(%rbp)
	cmpl	$22, -36(%rbp)
	je	.L26
	cmpl	$0, -36(%rbp)
	je	.L27
	leaq	-160(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	jmp	.L20
.L26:
	movq	-24(%rbp), %rax
	movl	$4, 16(%rax)
.L20:
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	allow_cmd, .-allow_cmd
	.local	its_an_allow
	.comm	its_an_allow,1,1
	.section	.rodata
.LC11:
	.string	"order"
	.align 8
.LC12:
	.string	"'allow,deny', 'deny,allow', or 'mutual-failure'"
.LC13:
	.string	"allow"
	.align 8
.LC14:
	.string	"'from' followed by hostnames or IP-address wildcards"
.LC15:
	.string	"deny"
	.align 64
	.type	authz_host_cmds, @object
	.size	authz_host_cmds, 160
authz_host_cmds:
	.quad	.LC11
	.quad	order
	.quad	0
	.long	1
	.long	1
	.quad	.LC12
	.quad	.LC13
	.quad	allow_cmd
	.quad	its_an_allow
	.long	1
	.long	4
	.quad	.LC14
	.quad	.LC15
	.quad	allow_cmd
	.quad	0
	.long	1
	.long	4
	.quad	.LC14
	.quad	0
	.zero	32
	.text
	.type	in_domain, @function
in_domain:
.LFB5:
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
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	testl	%eax, %eax
	js	.L30
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L31
	movl	$0, %eax
	jmp	.L32
.L31:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L33
	movl	$1, %eax
	jmp	.L32
.L33:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L34
	movl	-8(%rbp), %eax
	subl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L35
.L34:
	movl	$1, %eax
	jmp	.L32
.L35:
	movl	$0, %eax
	jmp	.L32
.L30:
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	in_domain, .-in_domain
	.type	find_allowdeny, @function
find_allowdeny:
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
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-68(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L38
.L57:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	andq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L39
	jmp	.L40
.L39:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	16(%rax), %eax
	cmpl	$5, %eax
	ja	.L40
	movl	%eax, %eax
	movq	.L42(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L42:
	.quad	.L41
	.quad	.L43
	.quad	.L44
	.quad	.L45
	.quad	.L46
	.quad	.L58
	.text
.L41:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	jmp	.L40
.L43:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L50
	movl	$1, %eax
	jmp	.L49
.L50:
	jmp	.L40
.L44:
	movl	$1, %eax
	jmp	.L49
.L45:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_ipsubnet_test
	testl	%eax, %eax
	je	.L51
	movl	$1, %eax
	jmp	.L49
.L51:
	jmp	.L40
.L46:
	cmpl	$0, -8(%rbp)
	jne	.L52
	movq	-56(%rbp), %rax
	movq	608(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-36(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ap_get_remote_host
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L53
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	.L54
.L53:
	movl	$1, -8(%rbp)
	jmp	.L52
.L54:
	movl	$2, -8(%rbp)
.L52:
	cmpl	$2, -8(%rbp)
	jne	.L56
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	in_domain
	testl	%eax, %eax
	je	.L56
	movl	$1, %eax
	jmp	.L49
.L56:
	jmp	.L40
.L58:
	nop
.L40:
	addl	$1, -4(%rbp)
.L38:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L57
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_allowdeny, .-find_allowdeny
	.section	.rodata
.LC16:
	.string	""
.LC17:
	.string	"uri "
	.align 8
.LC18:
	.string	"client denied by server configuration: %s%s"
	.text
	.type	check_dir_access, @function
check_dir_access:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	authz_host_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	$1, %eax
	jne	.L60
	movl	$403, -4(%rbp)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	je	.L61
	movl	$0, -4(%rbp)
.L61:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	je	.L63
	movl	$403, -4(%rbp)
	jmp	.L63
.L60:
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	jne	.L64
	movq	-16(%rbp), %rax
	movq	264(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	je	.L65
	movl	$403, -4(%rbp)
.L65:
	movq	-16(%rbp), %rax
	movq	256(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	je	.L63
	movl	$0, -4(%rbp)
	jmp	.L63
.L64:
	movq	-16(%rbp), %rax
	movq	256(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	je	.L67
	movq	-16(%rbp), %rax
	movq	264(%rax), %rcx
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_allowdeny
	testl	%eax, %eax
	jne	.L67
	movl	$0, -4(%rbp)
	jmp	.L63
.L67:
	movl	$403, -4(%rbp)
.L63:
	cmpl	$403, -4(%rbp)
	jne	.L68
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_satisfies
	cmpl	$1, %eax
	jne	.L69
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_some_auth_required
	testl	%eax, %eax
	jne	.L68
.L69:
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
.L71:
	movq	-24(%rbp), %rdx
	movq	360(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L72
	movl	$.LC16, %ecx
	jmp	.L73
.L72:
	movl	$.LC17, %ecx
.L73:
	movq	-24(%rbp), %rdx
	pushq	%rax
	pushq	%rcx
	movl	$.LC18, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$311, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L68:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	check_dir_access, .-check_dir_access
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
	movl	$check_dir_access, %edi
	call	ap_hook_access_checker
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

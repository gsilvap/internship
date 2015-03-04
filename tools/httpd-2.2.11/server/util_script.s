	.file	"util_script.c"
	.text
	.type	http2env, @function
http2env:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	6(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$72, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$84, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$84, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$80, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$95, (%rax)
	jmp	.L2
.L4:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-33(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L3
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$95, (%rax)
	jmp	.L2
.L3:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	movzbl	-33(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movb	%al, (%rbx)
.L2:
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$0, -33(%rbp)
	jne	.L4
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	http2env, .-http2env
	.section	.rodata
.LC0:
	.string	"TZ"
.LC1:
	.string	"TZ="
.LC2:
	.string	"="
	.text
	.globl	ap_create_environment
	.type	ap_create_environment, @function
ap_create_environment:
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
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -56(%rbp)
	movl	$0, -24(%rbp)
	movq	-80(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L7
	movl	$.LC0, %edi
	call	getenv
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L7
	movl	-24(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -24(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, (%rbx)
.L7:
	movl	$0, -20(%rbp)
	jmp	.L8
.L15:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L9
	jmp	.L10
.L9:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC2, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, (%rbx)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L11
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$95, (%rax)
.L11:
	jmp	.L12
.L14:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L13
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$95, %al
	je	.L13
	movq	-32(%rbp), %rax
	movb	$95, (%rax)
.L13:
	addq	$1, -32(%rbp)
.L12:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L14
	addl	$1, -24(%rbp)
.L10:
	addl	$1, -20(%rbp)
.L8:
	movq	-40(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L15
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_create_environment, .-ap_create_environment
	.section	.rodata
.LC3:
	.string	"Content-type"
.LC4:
	.string	"CONTENT_TYPE"
.LC5:
	.string	"Content-length"
.LC6:
	.string	"CONTENT_LENGTH"
.LC7:
	.string	"Authorization"
.LC8:
	.string	"Proxy-Authorization"
.LC9:
	.string	"PATH"
	.align 8
.LC10:
	.string	"/bin:/usr/bin:/usr/ucb:/usr/bsd:/usr/local/bin"
.LC11:
	.string	""
.LC12:
	.string	"SERVER_SIGNATURE"
.LC13:
	.string	"SERVER_SOFTWARE"
.LC14:
	.string	"SERVER_NAME"
.LC15:
	.string	"SERVER_ADDR"
.LC16:
	.string	"%u"
.LC17:
	.string	"SERVER_PORT"
.LC18:
	.string	"REMOTE_HOST"
.LC19:
	.string	"REMOTE_ADDR"
.LC20:
	.string	"DOCUMENT_ROOT"
.LC21:
	.string	"SERVER_ADMIN"
.LC22:
	.string	"SCRIPT_FILENAME"
.LC23:
	.string	"REMOTE_PORT"
.LC24:
	.string	"REMOTE_USER"
.LC25:
	.string	"REDIRECT_REMOTE_USER"
.LC26:
	.string	"AUTH_TYPE"
.LC27:
	.string	"REMOTE_IDENT"
.LC28:
	.string	"REDIRECT_QUERY_STRING"
.LC29:
	.string	"REDIRECT_URL"
	.text
	.globl	ap_add_common_vars
	.type	ap_add_common_vars, @function
ap_add_common_vars:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-120(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rdi
	call	apr_is_empty_table
	testl	%eax, %eax
	je	.L18
	movq	-120(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L19
.L18:
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	leal	25(%rax), %edx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, -24(%rbp)
.L19:
	movl	$0, -36(%rbp)
	jmp	.L20
.L27:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L21
	jmp	.L22
.L21:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L23
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	jmp	.L22
.L23:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L24
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	jmp	.L22
.L24:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L25
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L26
.L25:
	jmp	.L22
.L26:
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rbx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	http2env
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_addn
.L22:
	addl	$1, -36(%rbp)
.L20:
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-36(%rbp), %eax
	jg	.L27
	movl	$.LC9, %edi
	call	getenv
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L28
	movq	$.LC10, -32(%rbp)
.L28:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	call	ap_psignature
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	call	ap_get_server_banner
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_name
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_port
	movzwl	%ax, %edx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	608(%rax), %rsi
	movq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_get_remote_host
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L29
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L29:
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_document_root
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -90(%rbp)
	movzwl	-90(%rbp), %edx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-120(%rbp), %rax
	movq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	jmp	.L31
.L30:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L32
.L34:
	movq	-48(%rbp), %rax
	movq	320(%rax), %rax
	testq	%rax, %rax
	je	.L33
	movq	-48(%rbp), %rax
	movq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	apr_table_addn
	jmp	.L31
.L33:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
.L32:
	cmpq	$0, -48(%rbp)
	jne	.L34
.L31:
	movq	-120(%rbp), %rax
	movq	328(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-120(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L35:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_remote_logname
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L36
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L36:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	384(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L38:
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-120(%rbp), %rax
	movq	32(%rax), %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	apr_table_addn
.L37:
	movq	-120(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.L17
	movq	-120(%rbp), %rax
	movq	264(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlap
.L17:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_add_common_vars, .-ap_add_common_vars
	.globl	ap_find_path_info
	.type	ap_find_path_info, @function
ap_find_path_info:
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
	jmp	.L41
.L45:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L41
	jmp	.L42
.L43:
	subl	$1, -4(%rbp)
.L42:
	cmpl	$0, -4(%rbp)
	je	.L41
	movl	-4(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L43
.L41:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L44
	movl	-8(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -8(%rbp)
	testl	%eax, %eax
	je	.L44
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L45
.L44:
	cmpl	$-1, -4(%rbp)
	jne	.L46
	movl	$0, -4(%rbp)
.L46:
	jmp	.L47
.L49:
	addl	$1, -4(%rbp)
.L47:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L48
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L49
.L48:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_find_path_info, .-ap_find_path_info
	.type	original_uri, @function
original_uri:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L52
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$1, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	jmp	.L53
.L52:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L54
.L56:
	addq	$1, -8(%rbp)
.L54:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L55
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
	je	.L56
.L55:
	jmp	.L57
.L58:
	addq	$1, -8(%rbp)
.L57:
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
	jne	.L58
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L59
.L61:
	addq	$1, -16(%rbp)
.L59:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L60
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
	je	.L61
.L60:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	original_uri, .-original_uri
	.section	.rodata
.LC30:
	.string	"CGI/1.1"
.LC31:
	.string	"GATEWAY_INTERFACE"
.LC32:
	.string	"SERVER_PROTOCOL"
.LC33:
	.string	"REQUEST_METHOD"
.LC34:
	.string	"QUERY_STRING"
.LC35:
	.string	"REQUEST_URI"
.LC36:
	.string	"INCLUDED"
.LC37:
	.string	"SCRIPT_NAME"
.LC38:
	.string	"PATH_INFO"
.LC39:
	.string	"PATH_TRANSLATED"
	.text
	.globl	ap_add_cgi_vars
	.type	ap_add_cgi_vars, @function
ap_add_cgi_vars:
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
	movq	-8(%rbp), %rax
	movl	$.LC30, %edx
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	jmp	.L64
.L63:
	movl	$.LC11, %eax
.L64:
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	movl	$.LC34, %esi
	movq	%rcx, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	original_uri
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L65
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L67
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L67
.L65:
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L69
.L68:
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L67
.L69:
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_find_path_info
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L67:
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L62
	movq	-40(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L71:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_add_cgi_vars, .-ap_add_cgi_vars
	.type	set_cookie_doo_doo, @function
set_cookie_doo_doo:
.LFB8:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_addn
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	set_cookie_doo_doo, .-set_cookie_doo_doo
	.section	.rodata
.LC40:
	.string	"Set-Cookie"
	.align 8
.LC41:
	.string	"Premature end of script headers: %s"
.LC42:
	.string	"util_script.c"
.LC43:
	.string	"%s: %s"
.LC44:
	.string	"Status"
.LC45:
	.string	"Location"
.LC46:
	.string	"Content-Length"
.LC47:
	.string	"Content-Range"
.LC48:
	.string	"Transfer-Encoding"
.LC49:
	.string	"Last-Modified"
	.text
	.globl	ap_scan_script_header_err_core
	.type	ap_scan_script_header_err_core, @function
ap_scan_script_header_err_core:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8368, %rsp
	movq	%rdi, -8344(%rbp)
	movq	%rsi, -8352(%rbp)
	movq	%rdx, -8360(%rbp)
	movq	%rcx, -8368(%rbp)
	movl	$-200, -12(%rbp)
	cmpq	$0, -8352(%rbp)
	je	.L75
	movq	-8352(%rbp), %rax
	movb	$0, (%rax)
.L75:
	cmpq	$0, -8352(%rbp)
	jne	.L76
	leaq	-8256(%rbp), %rax
	jmp	.L77
.L76:
	movq	-8352(%rbp), %rax
.L77:
	movq	%rax, -32(%rbp)
	movq	-8344(%rbp), %rax
	movq	(%rax), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, -40(%rbp)
	movq	-8344(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, -48(%rbp)
	movq	-8344(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC40, %ecx
	movq	%rax, %rsi
	movl	$set_cookie_doo_doo, %edi
	movl	$0, %eax
	call	apr_table_do
.L104:
	movq	-8368(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8360(%rbp), %rax
	movl	$8191, %esi
	movq	%rcx, %rdi
	call	*%rax
	testl	%eax, %eax
	jne	.L78
	movq	-8344(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-8344(%rbp), %rax
	pushq	%rdx
	movl	$.LC41, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$19, %edx
	movl	$434, %esi
	movl	$.LC42, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L105
.L78:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jle	.L80
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L80
	cmpl	$1, -52(%rbp)
	jle	.L81
	movl	-52(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L81
	movl	-52(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L80
.L81:
	movl	-52(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L80:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L82
	movl	$0, -16(%rbp)
	cmpl	$-200, -12(%rbp)
	jne	.L83
	movq	-8344(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L83
	movq	-8344(%rbp), %rax
	movq	%rax, %rdi
	call	ap_meets_conditions
	movl	%eax, -16(%rbp)
.L83:
	movq	-8344(%rbp), %rax
	movq	256(%rax), %rax
	movq	-40(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlap
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_is_empty_table
	testl	%eax, %eax
	jne	.L84
	movq	-8344(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8344(%rbp), %rax
	movq	256(%rax), %rcx
	movq	-8344(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-8344(%rbp), %rax
	movq	%rdx, 256(%rax)
.L84:
	movl	-16(%rbp), %eax
	jmp	.L105
.L82:
	movq	-32(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L85
	leaq	-8336(%rbp), %rax
	movabsq	$7308623593077498221, %rcx
	movq	%rcx, (%rax)
	movabsq	$8243105062447489124, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$7166107086469883424, %rcx
	movq	%rcx, 16(%rax)
	movabsq	$7008199354036021618, %rsi
	movq	%rsi, 24(%rax)
	movabsq	$8243105062447489124, %rcx
	movq	%rcx, 32(%rax)
	movw	$61, 40(%rax)
	movq	-32(%rbp), %rcx
	leaq	-8336(%rbp), %rax
	movl	$30, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncat
	cmpq	$0, -8352(%rbp)
	jne	.L86
	jmp	.L87
.L88:
	nop
.L87:
	movq	-8368(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8360(%rbp), %rax
	movl	$8191, %esi
	movq	%rcx, %rdi
	call	*%rax
	testl	%eax, %eax
	jne	.L88
.L86:
	movq	-8344(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	-8344(%rbp), %rdx
	pushq	%rax
	leaq	-8336(%rbp), %rax
	pushq	%rax
	movl	$.LC43, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$19, %edx
	movl	$538, %esi
	movl	$.LC42, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L105
.L85:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	jmp	.L89
.L91:
	addq	$1, -8(%rbp)
.L89:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L90
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
	jne	.L91
.L90:
	movq	-32(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L92
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L93
.L95:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L93:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L94
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
	jne	.L95
.L94:
	movq	-8344(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_content_type_tolower
	movq	-64(%rbp), %rdx
	movq	-8344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	jmp	.L96
.L92:
	movq	-32(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L97
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	movq	-8344(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 112(%rax)
	movq	-8344(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8344(%rbp), %rax
	movq	%rdx, 104(%rax)
	jmp	.L96
.L97:
	movq	-32(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L98
	movq	-8344(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L96
.L98:
	movq	-32(%rbp), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L99
	movq	-8344(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L96
.L99:
	movq	-32(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L100
	movq	-8344(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L96
.L100:
	movq	-32(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L101
	movq	-8344(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L96
.L101:
	movq	-32(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L102
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_date_parse_http
	movq	%rax, %rdx
	movq	-8344(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_update_mtime
	movq	-8344(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_last_modified
	jmp	.L96
.L102:
	movq	-32(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L103
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_add
	jmp	.L96
.L103:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_add
.L96:
	jmp	.L104
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_scan_script_header_err_core, .-ap_scan_script_header_err_core
	.type	getsfunc_FILE, @function
getsfunc_FILE:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	getsfunc_FILE, .-getsfunc_FILE
	.globl	ap_scan_script_header_err
	.type	ap_scan_script_header_err, @function
ap_scan_script_header_err:
.LFB11:
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
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$getsfunc_FILE, %edx
	movq	%rax, %rdi
	call	ap_scan_script_header_err_core
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_scan_script_header_err, .-ap_scan_script_header_err
	.type	getsfunc_BRIGADE, @function
getsfunc_BRIGADE:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-108(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L111
.L122:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L112
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L113
.L112:
	movl	$0, %eax
	jmp	.L114
.L113:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	jmp	.L115
.L119:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L116
	movl	$1, -20(%rbp)
	jmp	.L117
.L116:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	je	.L117
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L117:
	addq	$1, -32(%rbp)
.L115:
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L118
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L118
	cmpl	$0, -20(%rbp)
	je	.L119
.L118:
	movq	-32(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jnb	.L120
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-80(%rbp), %rcx
	subq	%rcx, %rdx
	movq	%rdx, %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
.L120:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L111:
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L121
	cmpl	$0, -20(%rbp)
	jne	.L121
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L122
.L121:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movl	$1, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	getsfunc_BRIGADE, .-getsfunc_BRIGADE
	.globl	ap_scan_script_header_err_brigade
	.type	ap_scan_script_header_err_brigade, @function
ap_scan_script_header_err_brigade:
.LFB13:
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
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$getsfunc_BRIGADE, %edx
	movq	%rax, %rdi
	call	ap_scan_script_header_err_core
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_scan_script_header_err_brigade, .-ap_scan_script_header_err_brigade
	.type	getsfunc_STRING, @function
getsfunc_STRING:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L127
.L126:
	movl	$0, %eax
	jmp	.L128
.L127:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L129
	addq	$1, -8(%rbp)
	jmp	.L130
.L129:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
.L130:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.L131
	movl	-44(%rbp), %eax
	movl	%eax, -12(%rbp)
.L131:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L132
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	cmpl	$48, %edx
	jnb	.L133
	movq	16(%rax), %rdx
	movl	(%rax), %ecx
	movl	%ecx, %ecx
	addq	%rcx, %rdx
	movl	(%rax), %ecx
	addl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	.L134
.L133:
	movq	8(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
.L134:
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L135
.L132:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
.L135:
	movl	-12(%rbp), %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	getsfunc_STRING, .-getsfunc_STRING
	.globl	ap_scan_script_header_err_strs
	.type	ap_scan_script_header_err_strs, @function
ap_scan_script_header_err_strs:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L137
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L137:
	movq	%rcx, -256(%rbp)
	movl	$32, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$0, -200(%rbp)
	movl	-224(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L138
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L139
.L138:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L139:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	leaq	-224(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	%rdx, %rcx
	movl	$getsfunc_STRING, %edx
	movq	%rax, %rdi
	call	ap_scan_script_header_err_core
	movl	%eax, -180(%rbp)
	cmpq	$0, -248(%rbp)
	je	.L140
	movq	-192(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, (%rax)
.L140:
	cmpq	$0, -256(%rbp)
	je	.L141
	movl	-200(%rbp), %edx
	movq	-256(%rbp), %rax
	movl	%edx, (%rax)
.L141:
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_scan_script_header_err_strs, .-ap_scan_script_header_err_strs
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

	.file	"mod_log_config.c"
	.globl	log_config_module
	.section	.rodata
.LC0:
	.string	"mod_log_config.c"
	.data
	.align 64
	.type	log_config_module, @object
	.size	log_config_module, 104
log_config_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	0
	.quad	0
	.quad	make_config_log_state
	.quad	merge_config_log_state
	.quad	config_log_cmds
	.quad	register_hooks
	.align 4
	.type	xfer_flags, @object
	.size	xfer_flags, 4
xfer_flags:
	.long	16398
	.align 4
	.type	xfer_perms, @object
	.size	xfer_perms, 4
xfer_perms:
	.long	4095
	.local	log_hash
	.comm	log_hash,8,8
	.align 8
	.type	log_writer, @object
	.size	log_writer, 8
log_writer:
	.quad	ap_default_log_writer
	.align 8
	.type	log_writer_init, @object
	.size	log_writer_init, 8
log_writer_init:
	.quad	ap_default_log_writer_init
	.local	buffered_logs
	.comm	buffered_logs,4,4
	.local	all_buffered_logs
	.comm	all_buffered_logs,8,8
	.text
	.type	format_integer, @function
format_integer:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	format_integer, .-format_integer
	.section	.rodata
.LC1:
	.string	"-"
	.text
	.type	pfmt, @function
pfmt:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L4
	movl	$.LC1, %eax
	jmp	.L5
.L4:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	format_integer
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	pfmt, .-pfmt
	.type	constant_item, @function
constant_item:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	constant_item, .-constant_item
	.type	log_remote_host, @function
log_remote_host:
.LFB5:
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
	movq	608(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_remote_host
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	log_remote_host, .-log_remote_host
	.type	log_remote_address, @function
log_remote_address:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	log_remote_address, .-log_remote_address
	.type	log_local_address, @function
log_local_address:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	80(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	log_local_address, .-log_local_address
	.type	log_remote_logname, @function
log_remote_logname:
.LFB8:
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
	call	ap_get_remote_logname
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	log_remote_logname, .-log_remote_logname
	.section	.rodata
.LC2:
	.string	"\"\""
	.text
	.type	log_remote_user, @function
log_remote_user:
.LFB9:
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
	movq	320(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L17
	movq	$.LC1, -8(%rbp)
	jmp	.L18
.L17:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	movq	$.LC2, -8(%rbp)
	jmp	.L18
.L19:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	movq	%rax, -8(%rbp)
.L18:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	log_remote_user, .-log_remote_user
	.section	.rodata
.LC3:
	.string	" "
	.text
	.type	log_request_line, @function
log_request_line:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	536(%rax), %rax
	testq	%rax, %rax
	je	.L22
	movq	-24(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L23
	movl	$.LC3, %r12d
	jmp	.L24
.L23:
	movl	$0, %r12d
.L24:
	movq	-24(%rbp), %rax
	leaq	512(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_unparse
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rbx, %r9
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$.LC3, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L25
.L22:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
.L25:
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_escape_logitem
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	log_request_line, .-log_request_line
	.type	log_request_file, @function
log_request_file:
.LFB11:
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
	movq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	log_request_file, .-log_request_file
	.type	log_request_uri, @function
log_request_uri:
.LFB12:
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
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	log_request_uri, .-log_request_uri
	.type	log_request_method, @function
log_request_method:
.LFB13:
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
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	log_request_method, .-log_request_method
	.type	log_request_protocol, @function
log_request_protocol:
.LFB14:
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
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	log_request_protocol, .-log_request_protocol
	.section	.rodata
.LC4:
	.string	"?"
.LC5:
	.string	""
	.text
	.type	log_request_query, @function
log_request_query:
.LFB15:
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
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L37
.L36:
	movl	$.LC5, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	log_request_query, .-log_request_query
	.type	log_status, @function
log_status:
.LFB16:
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
	movl	112(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	pfmt
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	log_status, .-log_status
	.type	clf_log_bytes_sent, @function
clf_log_bytes_sent:
.LFB17:
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
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L43
.L42:
	movl	$.LC1, %eax
	jmp	.L44
.L43:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_off_t_toa
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	clf_log_bytes_sent, .-clf_log_bytes_sent
	.section	.rodata
.LC6:
	.string	"0"
	.text
	.type	log_bytes_sent, @function
log_bytes_sent:
.LFB18:
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
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L47
.L46:
	movl	$.LC6, %eax
	jmp	.L48
.L47:
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_off_t_toa
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	log_bytes_sent, .-log_bytes_sent
	.type	log_header_in, @function
log_header_in:
.LFB19:
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
	movq	240(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	log_header_in, .-log_header_in
	.type	find_multiple_headers, @function
find_multiple_headers:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	$1, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.L57:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L54
	cmpq	$0, -24(%rbp)
	jne	.L55
	movq	-72(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L56
.L55:
	movq	-72(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	addq	$2, -16(%rbp)
.L56:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -16(%rbp)
.L54:
	addq	$24, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L57
	cmpq	$0, -24(%rbp)
	je	.L58
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L59
.L61:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L60
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$44, (%rax)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movb	$32, (%rax)
.L60:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L59:
	cmpq	$0, -32(%rbp)
	jne	.L61
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
	jmp	.L53
.L58:
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	find_multiple_headers, .-find_multiple_headers
	.section	.rodata
.LC7:
	.string	"Content-type"
.LC8:
	.string	"Set-Cookie"
	.text
	.type	log_header_out, @function
log_header_out:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L63
	movq	-24(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-24(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movq	%rax, -8(%rbp)
	jmp	.L64
.L63:
	movq	-32(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L65
	movq	-24(%rbp), %rax
	movq	248(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_multiple_headers
	movq	%rax, -8(%rbp)
	jmp	.L64
.L65:
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
.L64:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	log_header_out, .-log_header_out
	.type	log_note, @function
log_note:
.LFB22:
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
	movq	272(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	log_note, .-log_note
	.type	log_env_var, @function
log_env_var:
.LFB23:
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
	movq	264(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	log_env_var, .-log_env_var
	.section	.rodata
.LC9:
	.string	"Cookie"
	.text
	.type	log_cookie, @function
log_cookie:
.LFB24:
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
	movq	240(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L72
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L72
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	$1, %rax
	addq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L73
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L73:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	jmp	.L74
.L72:
	movl	$0, %eax
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	log_cookie, .-log_cookie
	.type	log_request_time_custom, @function
log_request_time_custom:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movq	%rdi, -8216(%rbp)
	movq	%rsi, -8224(%rbp)
	movq	%rdx, -8232(%rbp)
	movq	-8232(%rbp), %rcx
	movq	-8224(%rbp), %rdx
	leaq	-8(%rbp), %rsi
	leaq	-8208(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	apr_strftime
	movq	-8216(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	log_request_time_custom, .-log_request_time_custom
	.local	request_time_cache
	.comm	request_time_cache,160,64
	.section	.rodata
	.align 8
.LC10:
	.string	"[%02d/%s/%d:%02d:%02d:%02d %c%.2d%.2d]"
	.text
	.type	log_request_time, @function
log_request_time:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L78
	movq	-112(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L78
	movq	-104(%rbp), %rax
	movq	96(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_explode_recent_localtime
	leaq	-96(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	log_request_time_custom
	jmp	.L84
.L78:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	andl	$3, %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdx
	movl	-48(%rbp), %ecx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	$request_time_cache, %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	32(%rax), %rax
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-44(%rbp), %eax
	jne	.L80
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	-44(%rbp), %eax
	je	.L81
.L80:
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_explode_recent_localtime
	movl	-56(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jns	.L82
	negl	-24(%rbp)
	movb	$45, -17(%rbp)
	jmp	.L83
.L82:
	movb	$43, -17(%rbp)
.L83:
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, (%rax)
	movl	-24(%rbp), %esi
	movl	$-1851608123, %edx
	movl	%esi, %eax
	imull	%edx
	leal	(%rdx,%rsi), %eax
	sarl	$11, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$3600, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	$-2004318071, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$5, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	movl	-24(%rbp), %ecx
	movl	$-1851608123, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$11, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	movsbl	-17(%rbp), %edi
	movl	-92(%rbp), %esi
	movl	-88(%rbp), %ecx
	movl	-84(%rbp), %edx
	movl	-72(%rbp), %eax
	leal	1900(%rax), %ebx
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	apr_month_snames(%rax), %r11
	movl	-80(%rbp), %eax
	movq	-32(%rbp), %r10
	addq	$4, %r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%ebx, %r9d
	movq	%r11, %r8
	movl	%eax, %ecx
	movl	$.LC10, %edx
	movl	$32, %esi
	movq	%r10, %rdi
	movl	$0, %eax
	call	apr_snprintf
	addq	$48, %rsp
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 36(%rax)
	movl	-48(%rbp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	request_time_cache(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	32(%rax), %rax
	movq	%rax, 32(%rdx)
.L81:
	movq	-32(%rbp), %rax
	addq	$4, %rax
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	log_request_time, .-log_request_time
	.section	.rodata
.LC11:
	.string	"%ld"
	.text
	.type	log_request_duration, @function
log_request_duration:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	call	apr_time_now
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	log_request_duration, .-log_request_duration
	.type	log_request_duration_microseconds, @function
log_request_duration_microseconds:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	apr_time_now
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	subq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	log_request_duration_microseconds, .-log_request_duration_microseconds
	.type	log_virtual_host, @function
log_virtual_host:
.LFB29:
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
	movq	16(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	log_virtual_host, .-log_virtual_host
	.section	.rodata
.LC12:
	.string	"canonical"
.LC13:
	.string	"remote"
.LC14:
	.string	"local"
	.text
	.type	log_server_port, @function
log_server_port:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L92
	movq	-32(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L93
.L92:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	testw	%ax, %ax
	je	.L94
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	jmp	.L95
.L94:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
.L95:
	movw	%ax, -2(%rbp)
	jmp	.L96
.L93:
	movq	-32(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L97
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -2(%rbp)
	jmp	.L96
.L97:
	movq	-32(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L98
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -2(%rbp)
	jmp	.L96
.L98:
	movq	-32(%rbp), %rax
	jmp	.L99
.L96:
	movzwl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
.L99:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	log_server_port, .-log_server_port
	.type	log_server_name, @function
log_server_name:
.LFB31:
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
	call	ap_get_server_name
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	log_server_name, .-log_server_name
	.section	.rodata
.LC15:
	.string	"pid"
.LC16:
	.string	"tid"
.LC17:
	.string	"hextid"
.LC18:
	.string	"%pT"
	.text
	.type	log_pid_tid, @function
log_pid_tid:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L103
	movq	-32(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L104
.L103:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC5, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	ap_append_pid
	jmp	.L105
.L104:
	movq	-32(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L106
	movq	-32(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L107
.L106:
	call	apr_os_thread_current
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rbp), %rdx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L105
.L107:
	movq	-32(%rbp), %rax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	log_pid_tid, .-log_pid_tid
	.section	.rodata
.LC19:
	.string	"X"
.LC20:
	.string	"+"
	.text
	.type	log_connection_status, @function
log_connection_status:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L109
	movl	$.LC19, %eax
	jmp	.L110
.L109:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	jne	.L111
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L112
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	76(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jle	.L111
.L112:
	movl	$.LC20, %eax
	jmp	.L110
.L111:
	movl	$.LC1, %eax
.L110:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	log_connection_status, .-log_connection_status
	.type	log_requests_on_connection, @function
log_requests_on_connection:
.LFB34:
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
	movq	8(%rax), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L114
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	76(%rax), %eax
	subl	$1, %eax
	jmp	.L115
.L114:
	movl	$0, %eax
.L115:
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	log_requests_on_connection, .-log_requests_on_connection
	.type	parse_log_misc_string, @function
parse_log_misc_string:
.LFB35:
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
	movq	$constant_item, (%rax)
	movq	-32(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L118
.L120:
	addq	$1, -8(%rbp)
.L118:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L119
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L120
.L119:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L121
.L130:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	.L122
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L121
.L122:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$110, %eax
	je	.L124
	cmpl	$110, %eax
	jg	.L125
	cmpl	$92, %eax
	je	.L126
	jmp	.L123
.L125:
	cmpl	$114, %eax
	je	.L127
	cmpl	$116, %eax
	je	.L128
	jmp	.L123
.L126:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$92, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L121
.L127:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$13, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L121
.L124:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$10, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L121
.L128:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$9, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L121
.L123:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$92, (%rax)
	nop
.L121:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L129
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L130
.L129:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	parse_log_misc_string, .-parse_log_misc_string
	.section	.rodata
.LC21:
	.string	"%"
	.align 8
.LC22:
	.string	"Unrecognized LogFormat directive %"
	.align 8
.LC23:
	.string	"Ran off end of LogFormat parsing args to some directive"
	.text
	.type	parse_log_item, @function
parse_log_item:
.LFB36:
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
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L133
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_misc_string
	jmp	.L151
.L133:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	jne	.L135
	movq	-48(%rbp), %rax
	movq	$.LC21, 8(%rax)
	movq	-48(%rbp), %rax
	movq	$constant_item, (%rax)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L151
.L135:
	movq	-48(%rbp), %rax
	movl	$-1, 20(%rax)
	movq	-48(%rbp), %rax
	movq	$.LC5, 8(%rax)
	jmp	.L136
.L150:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$57, %eax
	jg	.L138
	cmpl	$48, %eax
	jge	.L139
	cmpl	$33, %eax
	je	.L140
	cmpl	$44, %eax
	je	.L141
	jmp	.L137
.L138:
	cmpl	$62, %eax
	je	.L142
	cmpl	$123, %eax
	je	.L143
	cmpl	$60, %eax
	je	.L144
	jmp	.L137
.L140:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.L136
.L144:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, 20(%rax)
	jmp	.L136
.L142:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 20(%rax)
	jmp	.L136
.L141:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.L136
.L143:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$125, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L136
.L139:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
	jmp	.L145
.L146:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -4(%rbp)
.L145:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L146
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L147
	movq	-40(%rbp), %rax
	movl	$4, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
.L147:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L136
.L137:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	log_hash(%rip), %rcx
	movl	$1, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L148
	movq	-24(%rbp), %rax
	movzbl	-1(%rax), %eax
	movb	%al, -32(%rbp)
	movb	$0, -31(%rbp)
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L151
.L148:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	$-1, %eax
	jne	.L149
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 20(%rax)
.L149:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L151
.L136:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L150
	movl	$.LC23, %eax
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	parse_log_item, .-parse_log_item
	.section	.rodata
.LC24:
	.string	"\n"
	.text
	.type	parse_log_string, @function
parse_log_string:
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
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$30, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -8(%rbp)
	jmp	.L153
.L155:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_item
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L153
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L154
.L153:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L155
	movq	$.LC24, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rcx
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_item
	movq	-8(%rbp), %rax
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	parse_log_string, .-parse_log_string
	.type	process_item, @function
process_item:
.LFB38:
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
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L157
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L158
.L161:
	movq	-40(%rbp), %rax
	movl	112(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-16(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L159
	movl	$1, -8(%rbp)
	jmp	.L160
.L159:
	addl	$1, -4(%rbp)
.L158:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L161
.L160:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L162
	cmpl	$0, -8(%rbp)
	jne	.L163
.L162:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L157
	cmpl	$0, -8(%rbp)
	jne	.L157
.L163:
	movl	$.LC1, %eax
	jmp	.L164
.L157:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L165
	movq	-48(%rbp), %rax
	jmp	.L166
.L165:
	movq	-40(%rbp), %rax
.L166:
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rdx
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L167
	movq	-24(%rbp), %rax
	jmp	.L169
.L167:
	movl	$.LC1, %eax
.L169:
	nop
.L164:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	process_item, .-process_item
	.type	flush_log, @function
flush_log:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L170
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	flush_log, .-flush_log
	.section	.rodata
	.align 8
.LC25:
	.string	"log writer isn't correctly setup"
	.text
	.type	config_log_transaction, @function
config_log_transaction:
.LFB40:
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
	movq	$0, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L173
	movl	$-1, %eax
	jmp	.L174
.L173:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L175
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	je	.L176
	movq	-104(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L175
	movl	$-1, %eax
	jmp	.L174
.L176:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L175
	movl	$-1, %eax
	jmp	.L174
.L175:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L177
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L178
.L177:
	movq	-120(%rbp), %rax
.L178:
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L179
.L180:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L179:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L180
	jmp	.L181
.L182:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
.L181:
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movl	$0, -28(%rbp)
	jmp	.L183
.L184:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-28(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	process_item
	movq	%rax, (%rbx)
	addl	$1, -28(%rbp)
.L183:
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-28(%rbp), %eax
	jg	.L184
	movl	$0, -28(%rbp)
	jmp	.L185
.L186:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-72(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, (%rbx)
	movl	(%rbx), %eax
	cltq
	addq	%rax, -40(%rbp)
	addl	$1, -28(%rbp)
.L185:
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-28(%rbp), %eax
	jg	.L186
	movq	log_writer(%rip), %rax
	testq	%rax, %rax
	jne	.L187
	movq	-104(%rbp), %rax
	movl	$.LC25, %r9d
	movq	%rax, %r8
	movl	$20014, %ecx
	movl	$3, %edx
	movl	$989, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$500, %eax
	jmp	.L174
.L187:
	movq	log_writer(%rip), %rax
	movq	-56(%rbp), %rdx
	movl	12(%rdx), %r8d
	movq	-112(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	-40(%rbp), %r9
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-104(%rbp), %rdi
	call	*%rax
	movl	%eax, -84(%rbp)
	movl	$0, %eax
.L174:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	config_log_transaction, .-config_log_transaction
	.type	multi_log_transaction, @function
multi_log_transaction:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	log_config_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L189
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L190
.L191:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	config_log_transaction
	addl	$1, -4(%rbp)
.L190:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L191
	jmp	.L192
.L189:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L192
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L193
.L194:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	config_log_transaction
	addl	$1, -4(%rbp)
.L193:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L194
.L192:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	multi_log_transaction, .-multi_log_transaction
	.section	.rodata
.LC26:
	.string	"%h %l %u %t \"%r\" %>s %b"
.LC27:
	.string	"CLF"
	.text
	.type	make_config_log_state, @function
make_config_log_state:
.LFB42:
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
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$.LC26, %edx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	make_config_log_state, .-make_config_log_state
	.type	merge_config_log_state, @function
merge_config_log_state:
.LFB43:
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
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L199
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L199:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	merge_config_log_state, .-merge_config_log_state
	.type	log_format, @function
log_format:
.LFB44:
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
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	log_config_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L202
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L204
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L204
.L202:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L204:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	log_format, .-log_format
	.section	.rodata
.LC28:
	.string	"env="
.LC29:
	.string	"error in condition clause"
	.align 8
.LC30:
	.string	"missing environment variable name"
	.text
	.type	add_custom_log, @function
add_custom_log:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	log_config_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	cmpq	$0, -72(%rbp)
	je	.L207
	movq	-72(%rbp), %rax
	movl	$4, %edx
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	je	.L208
	movl	$.LC29, %eax
	jmp	.L214
.L208:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L210
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L211
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L211
.L210:
	movl	$.LC30, %eax
	jmp	.L214
.L211:
	movq	-72(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
.L207:
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -64(%rbp)
	jne	.L212
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L213
.L212:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
.L213:
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	add_custom_log, .-add_custom_log
	.type	set_transfer_log, @function
set_transfer_log:
.LFB46:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	add_custom_log
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	set_transfer_log, .-set_transfer_log
	.section	.rodata
.LC31:
	.string	"%{Cookie}n \"%r\" %t"
	.text
	.type	set_cookie_log, @function
set_cookie_log:
.LFB47:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC31, %ecx
	movq	%rax, %rdi
	call	add_custom_log
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	set_cookie_log, .-set_cookie_log
	.type	set_buffered_logs_on, @function
set_buffered_logs_on:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, buffered_logs(%rip)
	movl	buffered_logs(%rip), %eax
	testl	%eax, %eax
	je	.L220
	movl	$ap_buffered_log_writer_init, %edi
	call	ap_log_set_writer_init
	movl	$ap_buffered_log_writer, %edi
	call	ap_log_set_writer
.L220:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	set_buffered_logs_on, .-set_buffered_logs_on
	.section	.rodata
.LC32:
	.string	"CustomLog"
	.align 8
.LC33:
	.string	"a file name, a custom log format string or format name, and an optional \"env=\" clause (see docs)"
.LC34:
	.string	"TransferLog"
	.align 8
.LC35:
	.string	"the filename of the access log"
.LC36:
	.string	"LogFormat"
	.align 8
.LC37:
	.string	"a log format string (see docs) and an optional format name"
.LC38:
	.string	"CookieLog"
	.align 8
.LC39:
	.string	"the filename of the cookie log"
.LC40:
	.string	"BufferedLogs"
	.align 8
.LC41:
	.string	"Enable Buffered Logging (experimental)"
	.align 64
	.type	config_log_cmds, @object
	.size	config_log_cmds, 240
config_log_cmds:
	.quad	.LC32
	.quad	add_custom_log
	.quad	0
	.long	128
	.long	9
	.quad	.LC33
	.quad	.LC34
	.quad	set_transfer_log
	.quad	0
	.long	128
	.long	1
	.quad	.LC35
	.quad	.LC36
	.quad	log_format
	.quad	0
	.long	128
	.long	7
	.quad	.LC37
	.quad	.LC38
	.quad	set_cookie_log
	.quad	0
	.long	128
	.long	1
	.quad	.LC39
	.quad	.LC40
	.quad	set_buffered_logs_on
	.quad	0
	.long	128
	.long	5
	.quad	.LC41
	.quad	0
	.zero	32
	.text
	.type	open_config_log, @function
open_config_log:
.LFB49:
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
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L223
	movq	-24(%rbp), %rax
	jmp	.L224
.L223:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L225
	movq	-24(%rbp), %rax
	jmp	.L224
.L225:
	movq	log_writer_init(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L226
	movl	$0, %eax
	jmp	.L224
.L226:
	movq	-24(%rbp), %rax
.L224:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	open_config_log, .-open_config_log
	.type	open_multi_logs, @function
open_multi_logs:
.LFB50:
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
	movq	80(%rax), %rax
	movl	log_config_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L228
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L228
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L228:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L229
	leaq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
.L229:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L230
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L231
.L235:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L232
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L232
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
.L232:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	open_config_log
	testq	%rax, %rax
	jne	.L233
	movl	$-2, %eax
	jmp	.L241
.L233:
	addl	$1, -4(%rbp)
.L231:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L235
	jmp	.L236
.L230:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L236
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L237
.L240:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L238
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L238
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	parse_log_string
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16(%rax)
.L238:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	open_config_log
	testq	%rax, %rax
	jne	.L239
	movl	$-2, %eax
	jmp	.L241
.L239:
	addl	$1, -4(%rbp)
.L237:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L240
.L236:
	movl	$0, %eax
.L241:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	open_multi_logs, .-open_multi_logs
	.type	flush_all_logs, @function
flush_all_logs:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	buffered_logs(%rip), %eax
	testl	%eax, %eax
	jne	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	jmp	.L245
.L251:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	log_config_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L246
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L247
.L246:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L247
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L247:
	cmpq	$0, -16(%rbp)
	je	.L248
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L249
.L250:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	flush_log
	addl	$1, -20(%rbp)
.L249:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L250
.L248:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L245:
	cmpq	$0, -8(%rbp)
	jne	.L251
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	flush_all_logs, .-flush_all_logs
	.type	init_config_log, @function
init_config_log:
.LFB52:
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
	movl	buffered_logs(%rip), %eax
	testl	%eax, %eax
	je	.L253
	movq	-32(%rbp), %rax
	movl	$8, %edx
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, all_buffered_logs(%rip)
.L253:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	open_multi_logs
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L254
.L256:
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	open_multi_logs
	movl	%eax, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
.L254:
	cmpl	$0, -4(%rbp)
	jne	.L255
	cmpq	$0, -48(%rbp)
	jne	.L256
.L255:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	init_config_log, .-init_config_log
	.section	.rodata
	.align 8
.LC42:
	.string	"could not initialize buffered log mutex, transfer log may become corrupted"
	.text
	.type	init_child, @function
init_child:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$6, %edi
	call	ap_mpm_query
	movl	buffered_logs(%rip), %eax
	testl	%eax, %eax
	je	.L258
	movq	all_buffered_logs(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$flush_all_logs, %ecx
	movl	$flush_all_logs, %edx
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movl	$0, -4(%rbp)
	jmp	.L260
.L264:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %eax
	cmpl	$1, %eax
	jle	.L261
	movq	-24(%rbp), %rax
	movl	$2, 4112(%rax)
	movq	-24(%rbp), %rax
	leaq	4120(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	apr_thread_mutex_create
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L262
	movq	-48(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC42, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$1329, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-24(%rbp), %rax
	movl	$0, 4112(%rax)
	jmp	.L263
.L262:
	jmp	.L263
.L261:
	movq	-24(%rbp), %rax
	movl	$0, 4112(%rax)
.L263:
	addl	$1, -4(%rbp)
.L260:
	movq	all_buffered_logs(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L264
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	init_child, .-init_child
	.type	ap_register_log_handler, @function
ap_register_log_handler:
.LFB54:
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
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	log_hash(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_hash_set
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ap_register_log_handler, .-ap_register_log_handler
	.type	ap_log_set_writer_init, @function
ap_log_set_writer_init:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	log_writer_init(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, log_writer_init(%rip)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ap_log_set_writer_init, .-ap_log_set_writer_init
	.type	ap_log_set_writer, @function
ap_log_set_writer:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	log_writer(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, log_writer(%rip)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ap_log_set_writer, .-ap_log_set_writer
	.type	ap_default_log_writer, @function
ap_default_log_writer:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movq	%r9, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L271
.L272:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-56(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L271:
	movl	-12(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L272
	leaq	-80(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	ap_default_log_writer, .-ap_default_log_writer
	.section	.rodata
.LC43:
	.string	"invalid transfer log path %s."
	.align 8
.LC44:
	.string	"could not open transfer log file %s."
	.text
	.type	ap_default_log_writer_init, @function
ap_default_log_writer_init:
.LFB58:
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
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L275
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_open_piped_log
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L276
	movl	$0, %eax
	jmp	.L277
.L276:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L277
.L275:
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L278
	subq	$8, %rsp
	movq	-48(%rbp), %rax
	pushq	-56(%rbp)
	movl	$.LC43, %r9d
	movq	%rax, %r8
	movl	$20024, %ecx
	movl	$3, %edx
	movl	$1411, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L277
.L278:
	movl	xfer_perms(%rip), %ecx
	movl	xfer_flags(%rip), %edx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L280
	subq	$8, %rsp
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %eax
	pushq	-16(%rbp)
	movl	$.LC44, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1417, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L277
.L280:
	movq	-32(%rbp), %rax
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ap_default_log_writer_init, .-ap_default_log_writer_init
	.type	ap_buffered_log_writer_init, @function
ap_buffered_log_writer_init:
.LFB59:
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
	movq	-24(%rbp), %rax
	movl	$4128, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$4128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_default_log_writer_init
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L282
	movq	all_buffered_logs(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	jmp	.L283
.L282:
	movl	$0, %eax
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ap_buffered_log_writer_init, .-ap_buffered_log_writer_init
	.type	ap_buffered_log_writer, @function
ap_buffered_log_writer:
.LFB60:
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
	movl	%r8d, -84(%rbp)
	movq	%r9, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	testl	%eax, %eax
	je	.L285
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$2, %eax
	jne	.L286
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_thread_mutex_lock
	jmp	.L294
.L286:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$1, %eax
	jne	.L288
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_lock
	jmp	.L294
.L288:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$3, %eax
	jne	.L290
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_thread_rwlock_rdlock
	jmp	.L294
.L290:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$4, %eax
	jne	.L292
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_thread_rwlock_wrlock
	jmp	.L294
.L292:
	movl	$22, %eax
	jmp	.L294
.L285:
	movl	$0, %eax
.L294:
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L295
	movl	-16(%rbp), %eax
	jmp	.L296
.L295:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	cmpq	$4096, %rax
	jbe	.L297
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	flush_log
.L297:
	cmpq	$4095, -96(%rbp)
	jbe	.L298
	movq	-96(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L299
.L300:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L299:
	movl	-12(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L300
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movl	%eax, -16(%rbp)
	jmp	.L301
.L298:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L302
.L303:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L302:
	movl	-12(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L303
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, -16(%rbp)
.L301:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	testl	%eax, %eax
	je	.L312
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$2, %eax
	jne	.L305
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_thread_mutex_unlock
	jmp	.L312
.L305:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$1, %eax
	jne	.L307
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_unlock
	jmp	.L312
.L307:
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$3, %eax
	je	.L309
	movq	-24(%rbp), %rax
	movl	4112(%rax), %eax
	cmpl	$4, %eax
	jne	.L312
.L309:
	movq	-24(%rbp), %rax
	movq	4120(%rax), %rax
	movq	%rax, %rdi
	call	apr_thread_rwlock_unlock
.L312:
	movl	-16(%rbp), %eax
.L296:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ap_buffered_log_writer, .-ap_buffered_log_writer
	.section	.rodata
.LC45:
	.string	"ap_register_log_handler"
.LC46:
	.string	"h"
.LC47:
	.string	"a"
.LC48:
	.string	"A"
.LC49:
	.string	"l"
.LC50:
	.string	"u"
.LC51:
	.string	"t"
.LC52:
	.string	"f"
.LC53:
	.string	"b"
.LC54:
	.string	"B"
.LC55:
	.string	"i"
.LC56:
	.string	"o"
.LC57:
	.string	"n"
.LC58:
	.string	"e"
.LC59:
	.string	"V"
.LC60:
	.string	"v"
.LC61:
	.string	"p"
.LC62:
	.string	"P"
.LC63:
	.string	"H"
.LC64:
	.string	"m"
.LC65:
	.string	"q"
.LC66:
	.string	"C"
.LC67:
	.string	"k"
.LC68:
	.string	"r"
.LC69:
	.string	"D"
.LC70:
	.string	"T"
.LC71:
	.string	"U"
.LC72:
	.string	"s"
	.text
	.type	log_pre_config, @function
log_pre_config:
.LFB61:
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
	movl	$.LC45, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, log_pfn_register.10104(%rip)
	movq	log_pfn_register.10104(%rip), %rax
	testq	%rax, %rax
	je	.L314
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_remote_host, %edx
	movl	$.LC46, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_remote_address, %edx
	movl	$.LC47, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_local_address, %edx
	movl	$.LC48, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_remote_logname, %edx
	movl	$.LC49, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_remote_user, %edx
	movl	$.LC50, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_request_time, %edx
	movl	$.LC51, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_request_file, %edx
	movl	$.LC52, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$clf_log_bytes_sent, %edx
	movl	$.LC53, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_bytes_sent, %edx
	movl	$.LC54, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_header_in, %edx
	movl	$.LC55, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_header_out, %edx
	movl	$.LC56, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_note, %edx
	movl	$.LC57, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_env_var, %edx
	movl	$.LC58, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_server_name, %edx
	movl	$.LC59, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_virtual_host, %edx
	movl	$.LC60, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_server_port, %edx
	movl	$.LC61, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_pid_tid, %edx
	movl	$.LC62, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_request_protocol, %edx
	movl	$.LC63, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_request_method, %edx
	movl	$.LC64, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_request_query, %edx
	movl	$.LC65, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_connection_status, %edx
	movl	$.LC19, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_cookie, %edx
	movl	$.LC66, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	movl	$log_requests_on_connection, %edx
	movl	$.LC67, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$1, %ecx
	movl	$log_request_line, %edx
	movl	$.LC68, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$1, %ecx
	movl	$log_request_duration_microseconds, %edx
	movl	$.LC69, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$1, %ecx
	movl	$log_request_duration, %edx
	movl	$.LC70, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$1, %ecx
	movl	$log_request_uri, %edx
	movl	$.LC71, %esi
	call	*%rax
	movq	log_pfn_register.10104(%rip), %rax
	movq	-8(%rbp), %rdi
	movl	$1, %ecx
	movl	$log_status, %edx
	movl	$.LC72, %esi
	call	*%rax
.L314:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	log_pre_config, .-log_pre_config
	.section	.rodata
.LC73:
	.string	"ap_log_set_writer_init"
.LC74:
	.string	"ap_log_set_writer"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB62:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$log_pre_config, %edi
	call	ap_hook_pre_config
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$init_child, %edi
	call	ap_hook_child_init
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$init_config_log, %edi
	call	ap_hook_open_logs
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$multi_log_transaction, %edi
	call	ap_hook_log_transaction
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, log_hash(%rip)
	movq	$ap_register_log_handler, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC45, %edi
	call	apr_dynamic_fn_register
	movq	$ap_log_set_writer_init, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC73, %edi
	call	apr_dynamic_fn_register
	movq	$ap_log_set_writer, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC74, %edi
	call	apr_dynamic_fn_register
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	register_hooks, .-register_hooks
	.local	log_pfn_register.10104
	.comm	log_pfn_register.10104,8,8
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

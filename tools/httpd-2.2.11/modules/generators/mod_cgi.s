	.file	"mod_cgi.c"
	.globl	cgi_module
	.section	.rodata
.LC0:
	.string	"mod_cgi.c"
	.data
	.align 64
	.type	cgi_module, @object
	.size	cgi_module, 104
cgi_module:
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
	.quad	create_cgi_config
	.quad	merge_cgi_config
	.quad	cgi_cmds
	.quad	register_hooks
	.local	cgi_pfn_reg_with_ssi
	.comm	cgi_pfn_reg_with_ssi,8,8
	.local	cgi_pfn_gtv
	.comm	cgi_pfn_gtv,8,8
	.local	cgi_pfn_ps
	.comm	cgi_pfn_ps,8,8
	.local	cgi_build_command
	.comm	cgi_build_command,8,8
	.section	.rodata
.LC1:
	.string	"alias-forced-type"
.LC2:
	.string	"cgi-script"
	.text
	.type	is_scriptaliased, @function
is_scriptaliased:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L2
	movq	-8(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L2
	movl	$1, %eax
	jmp	.L3
.L2:
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	is_scriptaliased, .-is_scriptaliased
	.type	create_cgi_config, @function
create_cgi_config:
.LFB3:
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
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$10385760, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$1024, 16(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_cgi_config, .-create_cgi_config
	.type	merge_cgi_config, @function
merge_cgi_config:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-16(%rbp), %rax
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	merge_cgi_config, .-merge_cgi_config
	.section	.rodata
.LC3:
	.string	"Invalid ScriptLog path "
	.text
	.type	set_scriptlog, @function
set_scriptlog:
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
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	cgi_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L13
.L12:
	movl	$0, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	set_scriptlog, .-set_scriptlog
	.type	set_scriptlog_length, @function
set_scriptlog_length:
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
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	cgi_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	set_scriptlog_length, .-set_scriptlog_length
	.type	set_scriptlog_buffer, @function
set_scriptlog_buffer:
.LFB7:
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
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movl	cgi_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_scriptlog_buffer, .-set_scriptlog_buffer
	.section	.rodata
.LC4:
	.string	"ScriptLog"
	.align 8
.LC5:
	.string	"the name of a log for script debugging info"
.LC6:
	.string	"ScriptLogLength"
	.align 8
.LC7:
	.string	"the maximum length (in bytes) of the script debug log"
.LC8:
	.string	"ScriptLogBuffer"
	.align 8
.LC9:
	.string	"the maximum size (in bytes) to record of a POST request"
	.align 64
	.type	cgi_cmds, @object
	.size	cgi_cmds, 160
cgi_cmds:
	.quad	.LC4
	.quad	set_scriptlog
	.quad	0
	.long	128
	.long	1
	.quad	.LC5
	.quad	.LC6
	.quad	set_scriptlog_length
	.quad	0
	.long	128
	.long	1
	.quad	.LC7
	.quad	.LC8
	.quad	set_scriptlog_buffer
	.quad	0
	.long	128
	.long	1
	.quad	.LC9
	.quad	0
	.zero	32
.LC10:
	.string	"%s: %s"
.LC11:
	.string	""
.LC12:
	.string	"?"
.LC13:
	.string	"%%%% [%s] %s %s%s%s %s\n"
.LC14:
	.string	"%%%% %d %s\n"
.LC15:
	.string	"%%error\n%s\n"
	.text
	.type	log_scripterror, @function
log_scripterror:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movl	%edx, -196(%rbp)
	movl	%ecx, -200(%rbp)
	movq	%r8, -208(%rbp)
	movq	$0, -16(%rbp)
	movl	$3, -4(%rbp)
	movq	-184(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-184(%rbp), %rsi
	movl	-200(%rbp), %edx
	movl	-4(%rbp), %eax
	pushq	%rcx
	pushq	-208(%rbp)
	movl	$.LC10, %r9d
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$168, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	jne	.L20
	movq	-88(%rbp), %rdx
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jg	.L19
.L20:
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L21
.L19:
	movl	-196(%rbp), %eax
	jmp	.L27
.L21:
	call	apr_time_now
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_ctime
	movq	-184(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-184(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-184(%rbp), %rax
	movq	384(%rax), %rax
	jmp	.L24
.L23:
	movl	$.LC11, %eax
.L24:
	movq	-184(%rbp), %rdx
	movq	384(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L25
	movl	$.LC12, %r9d
	jmp	.L26
.L25:
	movl	$.LC11, %r9d
.L26:
	movq	-184(%rbp), %rdx
	movq	352(%rdx), %r8
	movq	-184(%rbp), %rdx
	movq	120(%rdx), %rcx
	movq	-16(%rbp), %rdi
	leaq	-176(%rbp), %rdx
	pushq	%rsi
	pushq	%rax
	movl	$.LC13, %esi
	movl	$0, %eax
	call	apr_file_printf
	addq	$16, %rsp
	movq	-184(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	-196(%rbp), %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rdx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	-196(%rbp), %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	log_scripterror, .-log_scripterror
	.section	.rodata
.LC16:
	.string	"%s"
	.text
	.type	log_script_err, @function
log_script_err:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8224, %rsp
	movq	%rdi, -8216(%rbp)
	movq	%rsi, -8224(%rbp)
	jmp	.L29
.L31:
	leaq	-8208(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
.L30:
	subq	$8, %rsp
	movq	-8216(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	pushq	%rax
	movl	$.LC16, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$209, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L29:
	movq	-8224(%rbp), %rdx
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L31
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	log_script_err, .-log_script_err
	.section	.rodata
.LC17:
	.string	"%request\n"
.LC18:
	.string	"%s: %s\n"
.LC19:
	.string	"\n%s\n"
.LC20:
	.string	"%response\n"
.LC21:
	.string	"%s\n"
.LC22:
	.string	"%stdout\n"
.LC23:
	.string	"\n"
.LC24:
	.string	"%stderr\n"
	.text
	.type	log_script, @function
log_script:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8464, %rsp
	movq	%rdi, -8424(%rbp)
	movq	%rsi, -8432(%rbp)
	movl	%edx, -8436(%rbp)
	movq	%rcx, -8448(%rbp)
	movq	%r8, -8456(%rbp)
	movq	%r9, -8464(%rbp)
	movq	-8424(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8248(%rbp)
	movq	-8432(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L34
	movq	-8424(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8432(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-8384(%rbp), %rax
	movq	%rdx, %rcx
	movl	$256, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	jne	.L35
	movq	-8328(%rbp), %rdx
	movq	-8432(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jg	.L34
.L35:
	movq	-8424(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8432(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-8248(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L36
.L34:
	movq	-8464(%rbp), %rax
	movq	%rax, %rdi
	call	discard_script_output
	movq	-8424(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	log_script_err
	movl	-8436(%rbp), %eax
	jmp	.L61
.L36:
	call	apr_time_now
	movq	%rax, %rdx
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_ctime
	movq	-8424(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8424(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-8424(%rbp), %rax
	movq	384(%rax), %rax
	jmp	.L39
.L38:
	movl	$.LC11, %eax
.L39:
	movq	-8424(%rbp), %rdx
	movq	384(%rdx), %rdx
	testq	%rdx, %rdx
	je	.L40
	movl	$.LC12, %r9d
	jmp	.L41
.L40:
	movl	$.LC11, %r9d
.L41:
	movq	-8424(%rbp), %rdx
	movq	352(%rdx), %r8
	movq	-8424(%rbp), %rdx
	movq	120(%rdx), %rcx
	movq	-8248(%rbp), %rdi
	leaq	-8416(%rbp), %rdx
	pushq	%rsi
	pushq	%rax
	movl	$.LC13, %esi
	movl	$0, %eax
	call	apr_file_printf
	addq	$16, %rsp
	movq	-8424(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-8248(%rbp), %rax
	movl	-8436(%rbp), %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC17, %edi
	call	apr_file_puts
	movl	$0, -16(%rbp)
	jmp	.L42
.L45:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	jmp	.L44
.L43:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8248(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L44:
	addl	$1, -16(%rbp)
.L42:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L45
	movq	-8424(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$2, %eax
	je	.L46
	movq	-8424(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$1, %eax
	jne	.L47
.L46:
	movq	-8448(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L47
	movq	-8248(%rbp), %rax
	movq	-8448(%rbp), %rdx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L47:
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC20, %edi
	call	apr_file_puts
	movq	-8424(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L48
.L51:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	jmp	.L50
.L49:
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rcx
	movl	-16(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8248(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L50:
	addl	$1, -16(%rbp)
.L48:
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L51
	cmpq	$0, -8456(%rbp)
	je	.L52
	movq	-8456(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L52
	movq	-8248(%rbp), %rax
	movq	-8456(%rbp), %rdx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L52:
	movl	$1, -12(%rbp)
	movq	-8464(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L53
.L57:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L54
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-8264(%rbp), %rdx
	leaq	-8256(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L55
	movq	-8264(%rbp), %rax
	testq	%rax, %rax
	je	.L55
	cmpl	$0, -12(%rbp)
	je	.L56
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC22, %edi
	call	apr_file_puts
	movl	$0, -12(%rbp)
.L56:
	movq	-8256(%rbp), %rcx
	movq	-8248(%rbp), %rax
	leaq	-8264(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC23, %edi
	call	apr_file_puts
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L53:
	movq	-8464(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L57
.L55:
	leaq	-8240(%rbp), %rax
	movq	16(%rbp), %rdx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	jne	.L58
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC24, %edi
	call	apr_file_puts
	movq	-8248(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_puts
	jmp	.L59
.L60:
	movq	-8248(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_puts
.L59:
	leaq	-8240(%rbp), %rax
	movq	16(%rbp), %rdx
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	je	.L60
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC23, %edi
	call	apr_file_puts
.L58:
	movq	-8464(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	16(%rbp), %rdi
	call	apr_file_close
	movq	-8248(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	-8436(%rbp), %eax
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	log_script, .-log_script
	.section	.rodata
.LC25:
	.string	"PATH_INFO"
.LC26:
	.string	"PATH_TRANSLATED"
.LC27:
	.string	"QUERY_STRING"
.LC28:
	.string	"QUERY_STRING_UNESCAPED"
	.text
	.type	add_ssi_vars, @function
add_ssi_vars:
.LFB11:
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
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L63
	movq	-40(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_shell_cmd
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	apr_table_setn
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L64:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L63:
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_shell_cmd
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	add_ssi_vars, .-add_ssi_vars
	.section	.rodata
.LC29:
	.string	"(%d)%s: %s\n"
	.text
	.type	cgi_child_errfn, @function
cgi_child_errfn:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	-232(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	movq	%rax, %rbx
	leaq	-224(%rbp), %rcx
	movl	-236(%rbp), %eax
	movl	$200, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movl	-236(%rbp), %edx
	movq	%rbx, %r8
	movl	$.LC29, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	cgi_child_errfn, .-cgi_child_errfn
	.section	.rodata
	.align 8
.LC30:
	.string	"couldn't set child process attributes: %s"
	.align 8
.LC31:
	.string	"couldn't create child process: %d: %s"
	.text
	.type	run_cgi_child, @function
run_cgi_child:
.LFB13:
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
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movl	$0, -4(%rbp)
	movq	-96(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	ap_create_environment
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rax
	movq	16(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_procattr_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	24(%rbp), %rax
	movl	4(%rax), %edx
	movq	24(%rbp), %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_procattr_io_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-96(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_dir_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_procattr_limit_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_procattr_limit_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_procattr_limit_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_procattr_cmdtype_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_procattr_detach_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	24(%rbp), %rax
	movl	56(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_procattr_addrspace_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L68
	movq	-40(%rbp), %rax
	movl	$cgi_child_errfn, %esi
	movq	%rax, %rdi
	call	apr_procattr_child_errfn_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L69
.L68:
	movq	-96(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-96(%rbp), %rcx
	movl	-4(%rbp), %eax
	pushq	%rdx
	movl	$.LC30, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$450, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L70
.L69:
	movl	$32, %esi
	movq	16(%rbp), %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %r8
	subq	$8, %rsp
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rax
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_os_create_privileged_process
	addq	$16, %rsp
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L71
	movq	-96(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movl	-4(%rbp), %eax
	pushq	%rdx
	movl	-4(%rbp), %edx
	pushq	%rdx
	movl	$.LC31, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$19, %edx
	movl	$460, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L70
.L71:
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	apr_pool_note_subprocess
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	movl	$9, %eax
	jmp	.L76
.L72:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	24(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	jne	.L70
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L74
	movl	$9, %eax
	jmp	.L76
.L74:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L75
	movl	$9, %eax
	jmp	.L76
.L75:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
.L70:
	movl	-4(%rbp), %eax
.L76:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	run_cgi_child, .-run_cgi_child
	.type	default_build_command, @function
default_build_command:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	$0, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L78
	movq	-72(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L78
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L78
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L78
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -48(%rbp)
.L78:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L79
	movl	$1, -20(%rbp)
	jmp	.L80
.L79:
	movl	$0, -24(%rbp)
	movl	$2, -20(%rbp)
	jmp	.L81
.L83:
	movq	-48(%rbp), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	jne	.L82
	addl	$1, -20(%rbp)
.L82:
	addl	$1, -24(%rbp)
.L81:
	movq	-48(%rbp), %rdx
	movl	-24(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L83
.L80:
	cmpl	$4095, -20(%rbp)
	jle	.L84
	movl	$4095, -20(%rbp)
.L84:
	movl	-20(%rbp), %eax
	addl	$2, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movl	$1, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L85
.L86:
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rax
	movl	$43, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword_nulls
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	cltq
	salq	$3, %rax
	leaq	(%rcx,%rax), %rbx
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_shell_cmd
	movq	%rax, (%rbx)
	addl	$1, -24(%rbp)
.L85:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L86
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movl	$0, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	default_build_command, .-default_build_command
	.type	discard_script_output, @function
discard_script_output:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L89
.L93:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L90
	jmp	.L88
.L90:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L92
	jmp	.L88
.L92:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L89:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L93
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	discard_script_output, .-discard_script_output
	.section	.rodata
.LC32:
	.string	"CGI"
	.align 32
	.type	bucket_type_cgi, @object
	.size	bucket_type_cgi, 56
bucket_type_cgi:
	.quad	.LC32
	.long	5
	.long	0
	.quad	apr_bucket_destroy_noop
	.quad	cgi_bucket_read
	.quad	apr_bucket_setaside_notimpl
	.quad	apr_bucket_split_notimpl
	.quad	apr_bucket_copy_notimpl
	.text
	.type	cgi_bucket_create, @function
cgi_bucket_create:
.LFB16:
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
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$64, %edi
	call	apr_bucket_alloc
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$apr_bucket_free, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$bucket_type_cgi, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_pollset_create
	movl	%eax, -20(%rbp)
	movl	$2, -56(%rbp)
	movw	$1, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$1, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
	movl	%eax, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$2, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cgi_bucket_create, .-cgi_bucket_create
	.type	cgi_bucket_dup, @function
cgi_bucket_dup:
.LFB17:
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
	movq	%rax, %rsi
	movl	$64, %edi
	call	apr_bucket_alloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$apr_bucket_free, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$bucket_type_cgi, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	cgi_bucket_dup, .-cgi_bucket_dup
	.type	cgi_read_stdout, @function
cgi_read_stdout:
.LFB18:
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
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-80(%rbp), %rax
	movq	$8000, (%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_bucket_alloc
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L99
	cmpl	$70014, -12(%rbp)
	je	.L99
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_free
	movl	-12(%rbp), %eax
	jmp	.L100
.L99:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$apr_bucket_free, %ecx
	movq	%rax, %rdi
	call	apr_bucket_heap_make
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	$8000, 16(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cgi_bucket_dup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L102
.L101:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_free
	movq	-56(%rbp), %rax
	movl	$0, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_bucket_immortal_make
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L102:
	movl	-12(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	cgi_read_stdout, .-cgi_read_stdout
	.section	.rodata
	.align 8
.LC33:
	.string	"Timeout waiting for output from CGI script %s"
	.align 8
.LC34:
	.string	"poll failed waiting for CGI child"
	.text
	.type	cgi_bucket_read, @function
cgi_bucket_read:
.LFB19:
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
	movl	%ecx, -76(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -8(%rbp)
	cmpl	$1, -76(%rbp)
	je	.L104
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	jmp	.L105
.L104:
	movl	$0, %eax
.L105:
	movq	%rax, -24(%rbp)
.L118:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_pollset_poll
	movl	%eax, -4(%rbp)
	cmpl	$70007, -4(%rbp)
	jne	.L106
	cmpq	$0, -24(%rbp)
	je	.L107
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC33, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$682, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	jmp	.L117
.L107:
	movl	$11, %eax
	jmp	.L117
.L106:
	cmpl	$4, -4(%rbp)
	je	.L110
	cmpl	$0, -4(%rbp)
	je	.L111
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC34, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$695, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	-4(%rbp), %eax
	jmp	.L117
.L111:
	jmp	.L112
.L116:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$1, %rax
	jne	.L113
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	cgi_read_stdout
	movl	%eax, -4(%rbp)
	cmpl	$70014, -4(%rbp)
	jne	.L114
	movl	$0, -4(%rbp)
.L114:
	movl	$1, -8(%rbp)
	jmp	.L115
.L113:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	log_script_err
	movl	%eax, -28(%rbp)
	cmpl	$70014, -28(%rbp)
	jne	.L115
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_remove
.L115:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -40(%rbp)
.L112:
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	.L116
.L110:
	cmpl	$0, -8(%rbp)
	je	.L118
	movl	-4(%rbp), %eax
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	cgi_bucket_read, .-cgi_bucket_read
	.section	.rodata
.LC35:
	.string	"application/x-httpd-cgi"
.LC36:
	.string	"INCLUDED"
.LC37:
	.string	"nph-"
	.align 8
.LC38:
	.string	"Options ExecCGI is off in this directory"
	.align 8
.LC39:
	.string	"attempt to include NPH CGI script"
	.align 8
.LC40:
	.string	"script not found or unable to stat"
	.align 8
.LC41:
	.string	"attempt to invoke directory as script"
	.align 8
.LC42:
	.string	"AcceptPathInfo off disallows user's path"
	.align 8
.LC43:
	.string	"don't know how to spawn child process: %s"
	.align 8
.LC44:
	.string	"couldn't spawn child process: %s"
	.align 8
.LC45:
	.string	"Error reading request entity data"
.LC46:
	.string	"Location"
.LC47:
	.string	"GET"
.LC48:
	.string	"Content-Length"
	.text
	.type	cgi_handler, @function
cgi_handler:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8480, %rsp
	movq	%rdi, -8472(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	-8472(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8472(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L120
	movq	-8472(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L120
	movl	$-1, %eax
	jmp	.L158
.L120:
	movq	-8472(%rbp), %rax
	movq	72(%rax), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	movq	-8472(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-8472(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	jmp	.L123
.L122:
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
.L123:
	movq	%rax, -80(%rbp)
	movq	-8472(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$4, %edx
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -92(%rbp)
	movq	-8472(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	cgi_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-8472(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L124
	movq	-8472(%rbp), %rax
	movq	%rax, %rdi
	call	is_scriptaliased
	testl	%eax, %eax
	jne	.L124
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movl	$.LC38, %r8d
	movl	$0, %ecx
	movl	$403, %edx
	movq	%rax, %rdi
	call	log_scripterror
	jmp	.L158
.L124:
	cmpl	$0, -92(%rbp)
	je	.L125
	cmpl	$0, -68(%rbp)
	je	.L125
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movl	$.LC39, %r8d
	movl	$0, %ecx
	movl	$403, %edx
	movq	%rax, %rdi
	call	log_scripterror
	jmp	.L158
.L125:
	movq	-8472(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L126
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movl	$.LC40, %r8d
	movl	$0, %ecx
	movl	$404, %edx
	movq	%rax, %rdi
	call	log_scripterror
	jmp	.L158
.L126:
	movq	-8472(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L127
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movl	$.LC41, %r8d
	movl	$0, %ecx
	movl	$403, %edx
	movq	%rax, %rdi
	call	log_scripterror
	jmp	.L158
.L127:
	movq	-8472(%rbp), %rax
	movl	600(%rax), %eax
	cmpl	$1, %eax
	jne	.L128
	movq	-8472(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L128
	movq	-8472(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L128
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movl	$.LC42, %r8d
	movl	$0, %ecx
	movl	$404, %edx
	movq	%rax, %rdi
	call	log_scripterror
	jmp	.L158
.L128:
	movq	-8472(%rbp), %rax
	movq	%rax, %rdi
	call	ap_add_common_vars
	movq	-8472(%rbp), %rax
	movq	%rax, %rdi
	call	ap_add_cgi_vars
	movl	$1, -244(%rbp)
	movl	$1, -240(%rbp)
	movl	$0, -236(%rbp)
	movl	$4, -256(%rbp)
	movl	$4, -252(%rbp)
	movl	$4, -248(%rbp)
	movl	$1, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movl	$0, -200(%rbp)
	movq	cgi_build_command(%rip), %rax
	leaq	-256(%rbp), %r8
	movq	-80(%rbp), %rcx
	movq	-8472(%rbp), %rdx
	leaq	-168(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	call	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L129
	movq	-8472(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-8472(%rbp), %rcx
	movl	-28(%rbp), %eax
	pushq	%rdx
	movl	$.LC43, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$809, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L158
.L129:
	movq	-168(%rbp), %r8
	movq	-160(%rbp), %rcx
	movq	-8472(%rbp), %r9
	leaq	-192(%rbp), %rdx
	leaq	-184(%rbp), %rsi
	leaq	-176(%rbp), %rax
	leaq	-256(%rbp), %rdi
	pushq	%rdi
	pushq	-80(%rbp)
	movq	%rax, %rdi
	call	run_cgi_child
	addq	$16, %rsp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L130
	movq	-8472(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-8472(%rbp), %rcx
	movl	-28(%rbp), %eax
	pushq	%rdx
	movl	$.LC44, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$818, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L158
.L130:
	movq	-64(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -112(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
.L131:
	movq	-8472(%rbp), %rax
	movq	640(%rax), %rax
	movq	-112(%rbp), %rsi
	movl	$8192, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L132
	movq	-8472(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC45, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$840, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$500, %eax
	jmp	.L158
.L132:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.L133
.L144:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L134
	movl	$1, -20(%rbp)
	jmp	.L135
.L134:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_flush, %rax
	jne	.L136
	jmp	.L143
.L136:
	cmpl	$0, -24(%rbp)
	je	.L138
	jmp	.L143
.L138:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-272(%rbp), %rdx
	leaq	-264(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L139
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L139
	movq	-272(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L140
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	.L141
.L140:
	movq	-272(%rbp), %rax
	movl	%eax, -44(%rbp)
.L141:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movl	-44(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L139:
	movq	-272(%rbp), %rdx
	movq	-264(%rbp), %rsi
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	apr_file_write_full
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L143
	movl	$1, -24(%rbp)
.L143:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.L133:
	movq	-112(%rbp), %rax
	addq	$8, %rax
	cmpq	-40(%rbp), %rax
	jne	.L144
.L135:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	cmpl	$0, -20(%rbp)
	je	.L131
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L145:
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_flush
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-192(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-64(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-192(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movq	-8472(%rbp), %rax
	movq	%rax, %rdi
	call	cgi_bucket_create
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-112(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	%rax, 8(%rdx)
	cmpl	$0, -92(%rbp)
	jne	.L146
	leaq	-8464(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-8472(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_scan_script_header_err_brigade
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	.L147
	movq	-192(%rbp), %rdi
	subq	$8, %rsp
	movq	-112(%rbp), %r9
	leaq	-8464(%rbp), %r8
	movq	-16(%rbp), %rcx
	movl	-140(%rbp), %edx
	movq	-104(%rbp), %rsi
	movq	-8472(%rbp), %rax
	pushq	%rdi
	movq	%rax, %rdi
	call	log_script
	addq	$16, %rsp
	movl	%eax, -140(%rbp)
	cmpl	$304, -140(%rbp)
	jne	.L148
	movq	-8472(%rbp), %rax
	movl	-140(%rbp), %edx
	movl	%edx, 112(%rax)
	movl	$0, %eax
	jmp	.L158
.L148:
	movl	-140(%rbp), %eax
	jmp	.L158
.L147:
	movq	-8472(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.L150
	movq	-8472(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L150
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	discard_script_output
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-8472(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-192(%rbp), %rdx
	movq	-8472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	log_script_err
.L150:
	cmpq	$0, -152(%rbp)
	je	.L151
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L151
	movq	-8472(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L151
	movq	-8472(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8472(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-8472(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8472(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8472(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_redirect_handler
	movl	$0, %eax
	jmp	.L158
.L151:
	cmpq	$0, -152(%rbp)
	je	.L152
	movq	-8472(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L152
	movl	$302, %eax
	jmp	.L158
.L152:
	movq	-8472(%rbp), %rax
	movq	632(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -28(%rbp)
	jmp	.L153
.L146:
	movq	-8472(%rbp), %rax
	movq	648(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L154
.L156:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
.L154:
	cmpq	$0, -56(%rbp)
	je	.L155
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$49, %eax
	jbe	.L156
.L155:
	movq	-8472(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 648(%rax)
	movq	-8472(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8472(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-8472(%rbp), %rax
	movq	632(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -28(%rbp)
.L153:
	cmpl	$0, -28(%rbp)
	jne	.L157
	movq	-8472(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L157
	movq	-8472(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-192(%rbp), %rdx
	movq	-8472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	log_script_err
.L157:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	cgi_handler, .-cgi_handler
	.section	.rodata
.LC49:
	.string	"</a>"
.LC50:
	.string	"\">"
.LC51:
	.string	"<a href=\""
	.text
	.type	include_cgi, @function
include_cgi:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L160
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$20014, %eax
	jmp	.L161
.L160:
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L162
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L163
.L162:
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L164
.L163:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$20014, %eax
	jmp	.L161
.L164:
	movq	-32(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	je	.L165
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$20014, %eax
	jmp	.L161
.L165:
	movq	-24(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-32(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_sub_req
	movl	%eax, -36(%rbp)
	cmpl	$299, -36(%rbp)
	jle	.L166
	cmpl	$399, -36(%rbp)
	jg	.L166
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L166
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	pushq	$0
	movl	$.LC49, %r9d
	movq	%rcx, %r8
	movl	$.LC50, %ecx
	movl	$.LC51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-72(%rbp), %rax
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
.L166:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$0, %eax
.L161:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	include_cgi, .-include_cgi
	.section	.rodata
	.align 8
.LC52:
	.string	"don't know how to spawn cmd child process: %s"
	.text
	.type	include_cmd, @function
include_cmd:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	add_ssi_vars
	movl	$0, -84(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -96(%rbp)
	movl	$1, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -72(%rbp)
	leaq	-152(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	cgi_build_command(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	leaq	-96(%rbp), %r8
	movq	-8(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	leaq	-160(%rbp), %rdi
	call	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L168
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	pushq	%rdx
	movl	$.LC52, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1110, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	-12(%rbp), %eax
	jmp	.L171
.L168:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %r10
	movq	-160(%rbp), %rcx
	movq	-8(%rbp), %r9
	leaq	-128(%rbp), %rdx
	leaq	-120(%rbp), %rsi
	leaq	-112(%rbp), %rax
	leaq	-96(%rbp), %r8
	pushq	%r8
	pushq	%rdi
	movq	%r10, %r8
	movq	%rax, %rdi
	call	run_cgi_child
	addq	$16, %rsp
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L170
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %eax
	pushq	%rdx
	movl	$.LC44, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1120, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	-12(%rbp), %eax
	jmp	.L171
.L170:
	movq	-144(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pipe_create
	movq	%rax, -24(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-152(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-136(%rbp), %rax
	movl	$1, 24(%rax)
	movl	$0, %eax
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	include_cmd, .-include_cmd
	.section	.rodata
	.align 8
.LC53:
	.string	"missing argument for exec element in %s"
	.align 8
.LC54:
	.string	"exec used but not allowed in %s"
.LC55:
	.string	"cmd"
	.align 8
.LC56:
	.string	"execution failure for parameter \"%s\" to tag exec in file %s"
.LC57:
	.string	"cgi"
.LC58:
	.string	"invalid CGI ref \"%s\" in %s"
	.align 8
.LC59:
	.string	"unknown parameter \"%s\" to tag exec in %s"
	.text
	.type	handle_exec, @function
handle_exec:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$8328, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -8328(%rbp)
	movq	%rsi, -8336(%rbp)
	movq	%rdx, -8344(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-8336(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8328(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L173
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	movq	-8328(%rbp), %rdx
	movl	16(%rdx), %edx
	andl	$1, %edx
	testl	%edx, %edx
	je	.L174
	movl	$3, %esi
	jmp	.L175
.L174:
	movl	$4, %esi
.L175:
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC53, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%esi, %edx
	movl	$1146, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L173:
	movq	-8328(%rbp), %rax
	movl	16(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L176
	movl	$0, %eax
	jmp	.L186
.L176:
	movq	-8328(%rbp), %rax
	movl	28(%rax), %eax
	testl	%eax, %eax
	jne	.L178
	movq	-8336(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-8328(%rbp), %rax
	movq	(%rax), %rbx
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -56(%rbp)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L186
.L178:
	movq	-8328(%rbp), %rax
	movl	16(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L179
	movq	-40(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	pushq	%rax
	movl	$.LC54, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1163, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8336(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-8328(%rbp), %rax
	movq	(%rax), %rbx
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -64(%rbp)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, %eax
	jmp	.L186
.L179:
	movq	cgi_pfn_gtv(%rip), %rax
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-8328(%rbp), %rdi
	movl	$1, %ecx
	call	*%rax
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	je	.L180
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L180
	movq	-112(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L181
	movq	cgi_pfn_ps(%rip), %rax
	movq	-120(%rbp), %rsi
	leaq	-8320(%rbp), %rdx
	movq	-8328(%rbp), %rdi
	movl	$1, %r8d
	movl	$8192, %ecx
	call	*%rax
	leaq	-8320(%rbp), %rcx
	movq	-8344(%rbp), %rdx
	movq	-8336(%rbp), %rsi
	movq	-8328(%rbp), %rax
	movq	%rax, %rdi
	call	include_cmd
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L182
	movq	-40(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC56, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1183, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8336(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-8328(%rbp), %rax
	movq	(%rax), %rbx
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -80(%rbp)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L180
.L182:
	jmp	.L183
.L181:
	movq	-112(%rbp), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L184
	movq	cgi_pfn_ps(%rip), %rax
	movq	-120(%rbp), %rsi
	leaq	-8320(%rbp), %rdx
	movq	-8328(%rbp), %rdi
	movl	$0, %r8d
	movl	$8192, %ecx
	call	*%rax
	leaq	-8320(%rbp), %rcx
	movq	-8344(%rbp), %rdx
	movq	-8336(%rbp), %rsi
	movq	-8328(%rbp), %rax
	movq	%rax, %rdi
	call	include_cgi
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L185
	movq	-120(%rbp), %rax
	movq	-40(%rbp), %rdx
	pushq	-48(%rbp)
	pushq	%rax
	movl	$.LC58, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1198, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8336(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-8328(%rbp), %rax
	movq	(%rax), %rbx
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -96(%rbp)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L180
.L185:
	jmp	.L183
.L184:
	movq	-112(%rbp), %rax
	movq	-40(%rbp), %rdx
	pushq	-48(%rbp)
	pushq	%rax
	movl	$.LC59, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1205, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8336(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %r12
	movq	-8328(%rbp), %rax
	movq	(%rax), %rbx
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %r13
	movq	-8328(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8328(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	apr_bucket_pool_create
	movq	%rax, -104(%rbp)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8344(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8344(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, 8(%rdx)
	jmp	.L180
.L183:
	jmp	.L179
.L180:
	movl	$0, %eax
.L186:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	handle_exec, .-handle_exec
	.section	.rodata
.LC60:
	.string	"ap_register_include_handler"
.LC61:
	.string	"ap_ssi_get_tag_and_value"
.LC62:
	.string	"ap_ssi_parse_string"
.LC63:
	.string	"exec"
.LC64:
	.string	"ap_cgi_build_command"
	.text
	.type	cgi_post_config, @function
cgi_post_config:
.LFB24:
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
	movl	$.LC60, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, cgi_pfn_reg_with_ssi(%rip)
	movl	$.LC61, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, cgi_pfn_gtv(%rip)
	movl	$.LC62, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, cgi_pfn_ps(%rip)
	movq	cgi_pfn_reg_with_ssi(%rip), %rax
	testq	%rax, %rax
	je	.L188
	movq	cgi_pfn_gtv(%rip), %rax
	testq	%rax, %rax
	je	.L188
	movq	cgi_pfn_ps(%rip), %rax
	testq	%rax, %rax
	je	.L188
	movq	cgi_pfn_reg_with_ssi(%rip), %rax
	movl	$handle_exec, %esi
	movl	$.LC63, %edi
	call	*%rax
.L188:
	movl	$.LC64, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, cgi_build_command(%rip)
	movq	cgi_build_command(%rip), %rax
	testq	%rax, %rax
	jne	.L189
	movq	$default_build_command, cgi_build_command(%rip)
.L189:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	cgi_post_config, .-cgi_post_config
	.type	register_hooks, @function
register_hooks:
.LFB25:
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
	movl	$cgi_handler, %edi
	call	ap_hook_handler
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$aszPre.9550, %esi
	movl	$cgi_post_config, %edi
	call	ap_hook_post_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC65:
	.string	"mod_include.c"
	.align 16
	.type	aszPre.9550, @object
	.size	aszPre.9550, 16
aszPre.9550:
	.quad	.LC65
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

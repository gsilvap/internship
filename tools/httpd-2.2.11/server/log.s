	.file	"log.c"
	.local	_hooks
	.comm	_hooks,8,8
	.globl	ap_default_loglevel
	.data
	.align 4
	.type	ap_default_loglevel, @object
	.size	ap_default_loglevel, 4
ap_default_loglevel:
	.long	4
	.section	.rodata
.LC0:
	.string	"auth"
.LC1:
	.string	"authpriv"
.LC2:
	.string	"cron"
.LC3:
	.string	"daemon"
.LC4:
	.string	"ftp"
.LC5:
	.string	"kern"
.LC6:
	.string	"lpr"
.LC7:
	.string	"mail"
.LC8:
	.string	"news"
.LC9:
	.string	"syslog"
.LC10:
	.string	"user"
.LC11:
	.string	"uucp"
.LC12:
	.string	"local0"
.LC13:
	.string	"local1"
.LC14:
	.string	"local2"
.LC15:
	.string	"local3"
.LC16:
	.string	"local4"
.LC17:
	.string	"local5"
.LC18:
	.string	"local6"
.LC19:
	.string	"local7"
	.align 64
	.type	facilities, @object
	.size	facilities, 336
facilities:
	.quad	.LC0
	.long	32
	.zero	4
	.quad	.LC1
	.long	80
	.zero	4
	.quad	.LC2
	.long	72
	.zero	4
	.quad	.LC3
	.long	24
	.zero	4
	.quad	.LC4
	.long	88
	.zero	4
	.quad	.LC5
	.long	0
	.zero	4
	.quad	.LC6
	.long	48
	.zero	4
	.quad	.LC7
	.long	16
	.zero	4
	.quad	.LC8
	.long	56
	.zero	4
	.quad	.LC9
	.long	40
	.zero	4
	.quad	.LC10
	.long	8
	.zero	4
	.quad	.LC11
	.long	64
	.zero	4
	.quad	.LC12
	.long	128
	.zero	4
	.quad	.LC13
	.long	136
	.zero	4
	.quad	.LC14
	.long	144
	.zero	4
	.quad	.LC15
	.long	152
	.zero	4
	.quad	.LC16
	.long	160
	.zero	4
	.quad	.LC17
	.long	168
	.zero	4
	.quad	.LC18
	.long	176
	.zero	4
	.quad	.LC19
	.long	184
	.zero	4
	.quad	0
	.long	-1
	.zero	4
.LC20:
	.string	"emerg"
.LC21:
	.string	"alert"
.LC22:
	.string	"crit"
.LC23:
	.string	"error"
.LC24:
	.string	"warn"
.LC25:
	.string	"notice"
.LC26:
	.string	"info"
.LC27:
	.string	"debug"
	.align 64
	.type	priorities, @object
	.size	priorities, 144
priorities:
	.quad	.LC20
	.long	0
	.zero	4
	.quad	.LC21
	.long	1
	.zero	4
	.quad	.LC22
	.long	2
	.zero	4
	.quad	.LC23
	.long	3
	.zero	4
	.quad	.LC24
	.long	4
	.zero	4
	.quad	.LC25
	.long	5
	.zero	4
	.quad	.LC26
	.long	6
	.zero	4
	.quad	.LC27
	.long	7
	.zero	4
	.quad	0
	.long	-1
	.zero	4
	.local	stderr_pool
	.comm	stderr_pool,8,8
	.local	stderr_log
	.comm	stderr_log,8,8
	.local	read_handles
	.comm	read_handles,8,8
	.text
	.type	clear_handle_list, @function
clear_handle_list:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$0, read_handles(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	clear_handle_list, .-clear_handle_list
	.type	close_handle_in_child, @function
close_handle_in_child:
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
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	read_handles(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, read_handles(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	close_handle_in_child, .-close_handle_in_child
	.globl	ap_logs_child_init
	.type	ap_logs_child_init, @function
ap_logs_child_init:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	read_handles(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L5:
	cmpq	$0, -8(%rbp)
	jne	.L6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_logs_child_init, .-ap_logs_child_init
	.globl	ap_open_stderr_log
	.type	ap_open_stderr_log, @function
ap_open_stderr_log:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$stderr_log, %edi
	call	apr_file_open_stderr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_open_stderr_log, .-ap_open_stderr_log
	.section	.rodata
.LC28:
	.string	"Invalid -E error log file %s"
.LC29:
	.string	"log.c"
	.align 8
.LC30:
	.string	"%s: could not open error log file %s."
	.align 8
.LC31:
	.string	"unable to replace stderr with error log file"
	.text
	.globl	ap_replace_stderr_log
	.type	ap_replace_stderr_log, @function
ap_replace_stderr_log:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L9
	subq	$8, %rsp
	pushq	-48(%rbp)
	movl	$.LC28, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$34, %edx
	movl	$208, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$20024, %eax
	jmp	.L16
.L9:
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$16398, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L11
	movq	ap_server_argv0(%rip), %rdx
	movl	-4(%rbp), %eax
	pushq	-48(%rbp)
	pushq	%rdx
	movl	$.LC30, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$32, %edx
	movl	$216, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	jmp	.L16
.L11:
	movq	stderr_pool(%rip), %rax
	testq	%rax, %rax
	jne	.L12
	movq	-40(%rbp), %rax
	movq	%rax, stderr_pool(%rip)
.L12:
	movq	stderr_pool(%rip), %rax
	movq	%rax, %rsi
	movl	$stderr_log, %edi
	call	apr_file_open_stderr
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L13
	movq	stderr_log(%rip), %rax
	movq	%rax, %rdi
	call	apr_file_flush
	movq	stderr_pool(%rip), %rdx
	movq	-24(%rbp), %rcx
	movq	stderr_log(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_dup2
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L13:
	movq	stderr_pool(%rip), %rax
	cmpq	-40(%rbp), %rax
	jne	.L14
	movq	$0, stderr_pool(%rip)
.L14:
	cmpl	$0, -4(%rbp)
	je	.L15
	movl	-4(%rbp), %eax
	movl	$.LC31, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$249, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
.L15:
	movl	-4(%rbp), %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_replace_stderr_log, .-ap_replace_stderr_log
	.section	.rodata
.LC32:
	.string	"%s"
	.text
	.type	log_child_errfn, @function
log_child_errfn:
.LFB7:
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
	subq	$8, %rsp
	movl	-12(%rbp), %eax
	pushq	-24(%rbp)
	movl	$.LC32, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$258, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	log_child_errfn, .-log_child_errfn
	.type	log_child, @function
log_child:
.LFB8:
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
	movl	%ecx, -92(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_procattr_cmdtype_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_procattr_io_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_procattr_error_check_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-32(%rbp), %rax
	movl	$log_child_errfn, %esi
	movq	%rax, %rdi
	call	apr_procattr_child_errfn_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_tokenize_to_argv
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stdout
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L20
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_out_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L21
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_err_set
	movl	%eax, -4(%rbp)
	jmp	.L20
.L21:
	movq	-72(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L20
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_err_set
	movl	%eax, -4(%rbp)
.L20:
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	apr_proc_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L19
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pool_note_subprocess
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L19:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	log_child, .-log_child
	.section	.rodata
	.align 8
.LC33:
	.string	"Couldn't start ErrorLog process"
	.align 8
.LC34:
	.string	"%s: Invalid error log path %s."
	.text
	.type	open_error_log, @function
open_error_log:
.LFB9:
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
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$124, %al
	jne	.L25
	movq	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	1(%rax), %rsi
	movl	-44(%rbp), %ecx
	leaq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	log_child
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L26
	movl	-12(%rbp), %eax
	movl	$.LC33, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$32, %edx
	movl	$335, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$-2, %eax
	jmp	.L27
.L26:
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L28
.L25:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$6, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L29
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L30
	addq	$1, -24(%rbp)
	movq	$facilities, -8(%rbp)
	jmp	.L31
.L33:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L32
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	ap_server_argv0(%rip), %rax
	movl	$11, %esi
	movq	%rax, %rdi
	call	openlog
	movq	-40(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$0, %eax
	jmp	.L27
.L32:
	addq	$16, -8(%rbp)
.L31:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	jmp	.L34
.L30:
	movq	ap_server_argv0(%rip), %rax
	movl	$184, %edx
	movl	$11, %esi
	movq	%rax, %rdi
	call	openlog
.L34:
	movq	-40(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	.L28
.L29:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L35
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdx
	movq	ap_server_argv0(%rip), %rax
	pushq	%rdx
	pushq	%rax
	movl	$.LC34, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$32, %edx
	movl	$368, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-2, %eax
	jmp	.L27
.L35:
	movq	-40(%rbp), %rax
	leaq	64(%rax), %rdi
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$16398, %edx
	movq	%rax, %rsi
	call	apr_file_open
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L28
	movq	ap_server_argv0(%rip), %rdx
	movl	-12(%rbp), %eax
	pushq	-24(%rbp)
	pushq	%rdx
	movl	$.LC30, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$32, %edx
	movl	$376, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-2, %eax
	jmp	.L27
.L28:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	open_error_log, .-open_error_log
	.section	.rodata
.LC35:
	.string	"stderr_pool"
	.align 8
.LC36:
	.string	"unable to replace stderr with error_log"
.LC37:
	.string	"w"
.LC38:
	.string	"/dev/null"
	.align 8
.LC39:
	.string	"unable to replace stderr with /dev/null"
	.text
	.globl	ap_open_logs
	.type	ap_open_logs, @function
ap_open_logs:
.LFB10:
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
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$clear_handle_list, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_parent_get
	movq	%rax, %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-32(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	open_error_log
	testl	%eax, %eax
	je	.L37
	movl	$-2, %eax
	jmp	.L53
.L37:
	movl	$1, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_flush
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	64(%rax), %rcx
	movq	stderr_log(%rip), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_dup2
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L40
	movq	-64(%rbp), %rdx
	movl	-24(%rbp), %eax
	movl	$.LC36, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$427, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	jmp	.L39
.L40:
	movq	stderr_pool(%rip), %rax
	testq	%rax, %rax
	je	.L41
	movq	stderr_pool(%rip), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
.L41:
	movq	-32(%rbp), %rax
	movq	%rax, stderr_pool(%rip)
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	stderr_log(%rip), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 64(%rax)
.L39:
	cmpl	$0, -20(%rbp)
	je	.L42
	movq	stderr(%rip), %rax
	movq	%rax, %rdx
	movl	$.LC37, %esi
	movl	$.LC38, %edi
	call	freopen
	testq	%rax, %rax
	jne	.L42
	call	__errno_location
	movl	(%rax), %eax
	movq	-64(%rbp), %rdx
	movl	$.LC39, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$456, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
.L42:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L43
.L52:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L45
.L48:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L46
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L46
	jmp	.L47
.L46:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L45:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L48
.L47:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L49
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	open_error_log
	testl	%eax, %eax
	je	.L51
	movl	$-2, %eax
	jmp	.L53
.L49:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L51
.L44:
	movq	-64(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
.L51:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L43:
	cmpq	$0, -8(%rbp)
	jne	.L52
	movl	$0, %eax
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_open_logs, .-ap_open_logs
	.globl	ap_error_log2stderr
	.type	ap_error_log2stderr, @function
ap_error_log2stderr:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_dup2
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_error_log2stderr, .-ap_error_log2stderr
	.section	.rodata
.LC40:
	.string	"[%s] "
.LC41:
	.string	"%s(%d): "
.LC42:
	.string	"[client %s] "
.LC43:
	.string	"(%d)"
.LC44:
	.string	"(EAI %d)"
.LC45:
	.string	"(OS %d)"
.LC46:
	.string	"(os 0x%08x)"
.LC47:
	.string	"Referer"
.LC48:
	.string	", referer: %s"
	.text
	.type	log_error_core, @function
log_error_core:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16480, %rsp
	movq	%rdi, -16440(%rbp)
	movl	%esi, -16444(%rbp)
	movl	%edx, -16448(%rbp)
	movl	%ecx, -16452(%rbp)
	movq	%r8, -16464(%rbp)
	movq	%r9, -16472(%rbp)
	movq	$0, -16(%rbp)
	movl	-16448(%rbp), %eax
	andl	$7, %eax
	movl	%eax, -20(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L57
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16472(%rbp)
.L57:
	cmpq	$0, -16464(%rbp)
	jne	.L58
	cmpl	$5, -20(%rbp)
	je	.L59
	movl	ap_default_loglevel(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jle	.L59
	jmp	.L56
.L59:
	movq	stderr_log(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L61
.L58:
	movq	-16464(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L62
	cmpl	$5, -20(%rbp)
	je	.L63
	movq	-16464(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	-20(%rbp), %eax
	jge	.L63
	jmp	.L56
.L63:
	movq	-16464(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L61
.L62:
	movq	-16464(%rbp), %rax
	movl	72(%rax), %eax
	cmpl	-20(%rbp), %eax
	jge	.L61
	jmp	.L56
.L61:
	cmpq	$0, -16(%rbp)
	je	.L64
	movl	-16448(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L64
	movb	$91, -8240(%rbp)
	call	apr_time_now
	movq	%rax, %rdx
	leaq	-8240(%rbp), %rax
	addq	$1, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_recent_ctime
	movb	$93, -8215(%rbp)
	movb	$32, -8214(%rbp)
	movq	$27, -8(%rbp)
	jmp	.L65
.L64:
	movq	$0, -8(%rbp)
.L65:
	movl	-16448(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L66
	movl	-20(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$priorities, %rax
	movq	(%rax), %rdx
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movl	$.LC40, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
.L66:
	cmpq	$0, -16440(%rbp)
	je	.L67
	cmpl	$7, -20(%rbp)
	jne	.L67
	movq	-16440(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L68
	movq	-16440(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L68
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16440(%rbp)
.L68:
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movl	-16444(%rbp), %ecx
	movq	-16440(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$.LC41, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
.L67:
	cmpq	$0, -16472(%rbp)
	je	.L69
	movq	-16472(%rbp), %rax
	movq	40(%rax), %rdx
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %rcx
	movl	$.LC42, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
.L69:
	cmpl	$0, -16452(%rbp)
	je	.L70
	cmpl	$669999, -16452(%rbp)
	jg	.L71
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movl	-16452(%rbp), %edx
	movl	%edx, %ecx
	movl	$.LC43, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
	jmp	.L72
.L71:
	cmpl	$719999, -16452(%rbp)
	jg	.L73
	movl	-16452(%rbp), %eax
	leal	-670000(%rax), %edx
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movl	%edx, %ecx
	movl	$.LC44, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
	jmp	.L72
.L73:
	cmpl	$819999, -16452(%rbp)
	jg	.L74
	movl	-16452(%rbp), %eax
	leal	-720000(%rax), %edx
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movl	%edx, %ecx
	movl	$.LC45, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
	jmp	.L72
.L74:
	movl	-16452(%rbp), %eax
	leal	-720000(%rax), %edx
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movl	%edx, %ecx
	movl	$.LC46, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
.L72:
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	-8240(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	movl	-16452(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	leaq	-8240(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, -8(%rbp)
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	cmpq	$2, %rax
	jbe	.L70
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$58, -8240(%rbp,%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$32, -8240(%rbp,%rax)
	leaq	-8240(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L70:
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	leaq	-16432(%rbp), %rax
	movq	%rax, %rdi
	call	apr_vsnprintf
	testl	%eax, %eax
	je	.L75
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	-8240(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	%rax, %rcx
	leaq	-16432(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	ap_escape_errorlog_item
	addq	%rax, -8(%rbp)
.L75:
	cmpq	$0, 16(%rbp)
	je	.L76
	movq	16(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L76
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx
	leaq	-16432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_escape_errorlog_item
	testq	%rax, %rax
	je	.L76
	movl	$8192, %eax
	subq	-8(%rbp), %rax
	leaq	-8240(%rbp), %rcx
	movq	-8(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	-16432(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$.LC48, %edx
	movq	%rax, %rsi
	movl	$0, %eax
	call	apr_snprintf
	cltq
	addq	%rax, -8(%rbp)
.L76:
	cmpq	$0, -16(%rbp)
	je	.L77
	cmpq	$8190, -8(%rbp)
	jbe	.L78
	movq	$8190, -8(%rbp)
.L78:
	leaq	-8240(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
	movq	-16(%rbp), %rdx
	leaq	-8240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_puts
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_flush
	jmp	.L79
.L77:
	leaq	-8240(%rbp), %rdx
	movl	-20(%rbp), %eax
	movl	$.LC32, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	syslog
.L79:
	leaq	-8240(%rbp), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	-16464(%rbp), %rdi
	movl	-16452(%rbp), %ecx
	movl	-16448(%rbp), %edx
	movl	-16444(%rbp), %esi
	movq	-16440(%rbp), %rax
	pushq	%r8
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_run_error_log
	addq	$16, %rsp
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	log_error_core, .-log_error_core
	.globl	ap_log_error
	.type	ap_log_error, @function
ap_log_error:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movq	%r8, -240(%rbp)
	testb	%al, %al
	je	.L82
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L82:
	movq	%r9, -248(%rbp)
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-240(%rbp), %r8
	movl	-228(%rbp), %ecx
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	pushq	-248(%rbp)
	pushq	$0
	pushq	$0
	movl	$0, %r9d
	movq	%rax, %rdi
	call	log_error_core
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_log_error, .-ap_log_error
	.globl	ap_log_perror
	.type	ap_log_perror, @function
ap_log_perror:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movq	%r8, -240(%rbp)
	testb	%al, %al
	je	.L84
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L84:
	movq	%r9, -248(%rbp)
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-228(%rbp), %ecx
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	pushq	-248(%rbp)
	pushq	-240(%rbp)
	pushq	$0
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	log_error_core
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_log_perror, .-ap_log_perror
	.section	.rodata
.LC49:
	.string	"error-notes"
	.text
	.globl	ap_log_rerror
	.type	ap_log_rerror, @function
ap_log_rerror:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movq	%r8, -240(%rbp)
	testb	%al, %al
	je	.L86
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L86:
	movq	%r9, -248(%rbp)
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-240(%rbp), %rax
	movq	16(%rax), %r8
	movl	-228(%rbp), %ecx
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	pushq	-248(%rbp)
	pushq	$0
	pushq	-240(%rbp)
	movl	$0, %r9d
	movq	%rax, %rdi
	call	log_error_core
	addq	$32, %rsp
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-224(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L85
	movl	-224(%rbp), %eax
	andl	$7, %eax
	cmpl	$4, %eax
	jg	.L85
	movq	-240(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L85
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	leaq	-200(%rbp), %rdx
	movq	-248(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pvsprintf
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_log_rerror, .-ap_log_rerror
	.globl	ap_log_cerror
	.type	ap_log_cerror, @function
ap_log_cerror:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movl	%edx, -224(%rbp)
	movl	%ecx, -228(%rbp)
	movq	%r8, -240(%rbp)
	testb	%al, %al
	je	.L89
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L89:
	movq	%r9, -248(%rbp)
	movl	$48, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %r8
	movq	-240(%rbp), %r9
	movl	-228(%rbp), %ecx
	movl	-224(%rbp), %edx
	movl	-220(%rbp), %esi
	movq	-216(%rbp), %rax
	leaq	-200(%rbp), %rdi
	pushq	%rdi
	pushq	-248(%rbp)
	pushq	$0
	pushq	$0
	movq	%rax, %rdi
	call	log_error_core
	addq	$32, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_log_cerror, .-ap_log_cerror
	.section	.rodata
	.align 8
.LC50:
	.string	"Invalid PID file path %s, ignoring."
	.align 8
.LC51:
	.string	"pid file %s overwritten -- Unclean shutdown of previous Apache run?"
.LC52:
	.string	"could not create %s"
	.align 8
.LC53:
	.string	"%s: could not log pid to file %s"
.LC54:
	.string	"%ld\n"
	.text
	.globl	ap_log_pid
	.type	ap_log_pid, @function
ap_log_pid:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.L91
	jmp	.L90
.L91:
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L93
	subq	$8, %rsp
	pushq	-160(%rbp)
	movl	$.LC50, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$34, %edx
	movl	$772, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L90
.L93:
	call	getpid
	movl	%eax, -12(%rbp)
	movl	saved_pid.8377(%rip), %eax
	cmpl	%eax, -12(%rbp)
	je	.L94
	movq	-152(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	jne	.L94
	subq	$8, %rsp
	movq	-152(%rbp), %rax
	pushq	-8(%rbp)
	movl	$.LC51, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$787, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
.L94:
	movq	-152(%rbp), %rdx
	movq	-8(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$1604, %ecx
	movl	$22, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L95
	subq	$8, %rsp
	movl	-16(%rbp), %eax
	pushq	-8(%rbp)
	movl	$.LC52, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$797, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	ap_server_argv0(%rip), %rax
	pushq	-8(%rbp)
	pushq	%rax
	movl	$.LC53, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$799, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$1, %edi
	call	exit
.L95:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movl	$.LC54, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	-12(%rbp), %eax
	movl	%eax, saved_pid.8377(%rip)
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_log_pid, .-ap_log_pid
	.globl	ap_read_pid
	.type	ap_read_pid, @function
ap_read_pid:
.LFB18:
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
	movq	$26, -8(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.L98
	movl	$20014, %eax
	jmp	.L105
.L98:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L100
	subq	$8, %rsp
	pushq	-80(%rbp)
	movl	$.LC50, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$34, %edx
	movl	$825, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$20014, %eax
	jmp	.L105
.L100:
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L101
	movl	-20(%rbp), %eax
	jmp	.L105
.L101:
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdi
	movq	-40(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	apr_file_read_full
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L102
	cmpl	$70014, -20(%rbp)
	je	.L102
	movl	-20(%rbp), %eax
	jmp	.L105
.L102:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L103
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L103
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
	jne	.L104
.L103:
	movl	$20014, %eax
	jmp	.L105
.L104:
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
.L105:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_read_pid, .-ap_read_pid
	.section	.rodata
	.align 8
.LC55:
	.string	"[%s] file %s, line %d, assertion \"%s\" failed"
	.text
	.globl	ap_log_assert
	.type	ap_log_assert, @function
ap_log_assert:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	call	apr_time_now
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_ctime
	pushq	-40(%rbp)
	movl	-52(%rbp), %eax
	pushq	%rax
	pushq	-48(%rbp)
	leaq	-32(%rbp), %rax
	pushq	%rax
	movl	$.LC55, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	$861, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$32, %rsp
	call	abort
	.cfi_endproc
.LFE19:
	.size	ap_log_assert, .-ap_log_assert
	.section	.rodata
	.align 8
.LC56:
	.string	"piped_log_spawn: unable to setup child process '%s': %s"
	.align 8
.LC57:
	.string	"unable to start piped log program '%s': %s"
	.text
	.type	piped_log_spawn, @function
piped_log_spawn:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movq	$0, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L108
	movq	-32(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_procattr_cmdtype_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L108
	movq	-184(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_in_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L108
	movq	-32(%rbp), %rax
	movl	$log_child_errfn, %esi
	movq	%rax, %rdi
	call	apr_procattr_child_errfn_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L108
	movq	-32(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_procattr_error_check_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L109
.L108:
	leaq	-176(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	pushq	%rdx
	pushq	%rax
	movl	$.LC56, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$897, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L110
.L109:
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stdout
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L111
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_out_set
	movl	%eax, -4(%rbp)
.L111:
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L112
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_procattr_child_err_set
	movl	%eax, -4(%rbp)
.L112:
	movq	-184(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_tokenize_to_argv
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	apr_proc_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L113
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rsi
	movq	-184(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-184(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rsi, %r8
	movl	$piped_log_maintenance, %esi
	movq	%rax, %rdi
	call	apr_proc_other_child_register
	movq	-184(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	close_handle_in_child
	jmp	.L110
.L113:
	leaq	-176(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rdx
	movq	-184(%rbp), %rax
	movq	24(%rax), %rax
	pushq	%rdx
	pushq	%rax
	movl	$.LC57, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$931, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L110:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	piped_log_spawn, .-piped_log_spawn
	.section	.rodata
	.align 8
.LC58:
	.string	"can't query MPM state; not restarting piped log program '%s'"
	.align 8
.LC59:
	.string	"piped log program '%s' failed unexpectedly"
	.align 8
.LC60:
	.string	"piped_log_maintenance: unable to respawn '%s': %s"
	.text
	.type	piped_log_maintenance, @function
piped_log_maintenance:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -152(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$4, -148(%rbp)
	ja	.L116
	movl	-148(%rbp), %eax
	movq	.L119(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L119:
	.quad	.L118
	.quad	.L126
	.quad	.L121
	.quad	.L126
	.quad	.L118
	.text
.L118:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_proc_other_child_unregister
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$13, %edi
	call	ap_mpm_query
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L123
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC58, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$956, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L124
.L123:
	movl	-16(%rbp), %eax
	cmpl	$2, %eax
	je	.L124
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC59, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$962, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	piped_log_spawn
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L124
	leaq	-144(%rbp), %rcx
	movl	-12(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	pushq	%rdx
	pushq	%rax
	movl	$.LC60, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$969, %esi
	movl	$.LC29, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L116
.L124:
	jmp	.L116
.L121:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	apr_proc_kill
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L116
.L125:
	jmp	.L116
.L126:
	nop
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	piped_log_maintenance, .-piped_log_maintenance
	.type	piped_log_cleanup_for_exec, @function
piped_log_cleanup_for_exec:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	piped_log_cleanup_for_exec, .-piped_log_cleanup_for_exec
	.type	piped_log_cleanup, @function
piped_log_cleanup:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	apr_proc_kill
.L130:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	piped_log_cleanup_for_exec
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	piped_log_cleanup, .-piped_log_cleanup
	.globl	ap_open_piped_log
	.type	ap_open_piped_log, @function
ap_open_piped_log:
.LFB24:
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
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rsi
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	apr_file_pipe_create
	testl	%eax, %eax
	je	.L133
	movl	$0, %eax
	jmp	.L134
.L133:
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$piped_log_cleanup_for_exec, %ecx
	movl	$piped_log_cleanup, %edx
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	piped_log_spawn
	testl	%eax, %eax
	je	.L135
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movl	$piped_log_cleanup, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pool_cleanup_kill
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
	jmp	.L134
.L135:
	movq	-8(%rbp), %rax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_open_piped_log, .-ap_open_piped_log
	.globl	ap_close_piped_log
	.type	ap_close_piped_log, @function
ap_close_piped_log:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$piped_log_cleanup, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pool_cleanup_run
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_close_piped_log, .-ap_close_piped_log
	.section	.rodata
.LC61:
	.string	"error_log"
	.text
	.globl	ap_hook_error_log
	.type	ap_hook_error_log, @function
ap_hook_error_log:
.LFB26:
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
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	jne	.L138
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks(%rip)
	movl	$_hooks, %esi
	movl	$.LC61, %edi
	call	apr_hook_sort_register
.L138:
	movq	_hooks(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	apr_hook_debug_current(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	apr_hook_debug_enabled(%rip), %eax
	testl	%eax, %eax
	je	.L137
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC61, %edi
	call	apr_hook_debug_show
.L137:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_hook_error_log, .-ap_hook_error_log
	.globl	ap_hook_get_error_log
	.type	ap_hook_get_error_log, @function
ap_hook_get_error_log:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_hook_get_error_log, .-ap_hook_get_error_log
	.globl	ap_run_error_log
	.type	ap_run_error_log, @function
ap_run_error_log:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	je	.L142
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L144
.L145:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %r9
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rdi
	pushq	24(%rbp)
	pushq	16(%rbp)
	call	*%rax
	addq	$16, %rsp
	addl	$1, -4(%rbp)
.L144:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L145
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_run_error_log, .-ap_run_error_log
	.data
	.align 4
	.type	saved_pid.8377, @object
	.size	saved_pid.8377, 4
saved_pid.8377:
	.long	-1
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

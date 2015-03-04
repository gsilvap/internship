	.file	"htdigest.c"
	.globl	tfp
	.bss
	.align 8
	.type	tfp, @object
	.size	tfp, 8
tfp:
	.zero	8
	.comm	errfile,8,8
	.comm	cntxt,8,8
	.text
	.type	cleanup_tempfile_and_exit, @function
cleanup_tempfile_and_exit:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	tfp(%rip), %rax
	testq	%rax, %rax
	je	.L2
	movq	tfp(%rip), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L2:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	cleanup_tempfile_and_exit, .-cleanup_tempfile_and_exit
	.type	getword, @function
getword:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L6:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
.L4:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L5
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-36(%rbp), %al
	jne	.L6
.L5:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
	addl	$1, -4(%rbp)
.L7:
	movl	$0, -8(%rbp)
	nop
.L8:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -8(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, -4(%rbp)
	movslq	%edx, %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getword, .-getword
	.type	get_line, @function
get_line:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, %ebx
	movl	$22, -20(%rbp)
	jmp	.L10
.L12:
	movl	%ebx, %eax
	leal	1(%rax), %ebx
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-21(%rbp), %eax
	movb	%al, (%rdx)
.L10:
	movl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	%ebx, %eax
	jle	.L11
	movq	-56(%rbp), %rdx
	leaq	-21(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L11
	movzbl	-21(%rbp), %eax
	cmpb	$10, %al
	jne	.L12
.L11:
	movzbl	-21(%rbp), %eax
	cmpb	$10, %al
	jne	.L13
	movl	%ebx, %eax
	leal	1(%rax), %ebx
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-21(%rbp), %eax
	movb	%al, (%rdx)
.L13:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpl	$0, -20(%rbp)
	je	.L14
	movl	$1, %eax
	jmp	.L16
.L14:
	movl	$0, %eax
.L16:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_line, .-get_line
	.type	putline, @function
putline:
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
	movl	$0, -4(%rbp)
	jmp	.L18
.L19:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	apr_file_putc
	addl	$1, -4(%rbp)
.L18:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L19
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	putline, .-putline
	.section	.rodata
.LC0:
	.string	"New password: "
.LC1:
	.string	"password too long"
.LC2:
	.string	"Re-type new password: "
.LC3:
	.string	"They don't match, sorry.\n"
.LC4:
	.string	"%s:%s:"
.LC5:
	.string	"%s:%s:%s"
.LC6:
	.string	"%02x"
.LC7:
	.string	"\n"
	.text
	.type	add_password, @function
add_password:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$944, %rsp
	movq	%rdi, -920(%rbp)
	movq	%rsi, -928(%rbp)
	movq	%rdx, -936(%rbp)
	movq	$256, -904(%rbp)
	leaq	-904(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	call	apr_password_get
	testl	%eax, %eax
	je	.L21
	movq	errfile(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$5, %edi
	call	cleanup_tempfile_and_exit
.L21:
	movq	$256, -904(%rbp)
	leaq	-904(%rbp), %rdx
	leaq	-896(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	call	apr_password_get
	leaq	-896(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L22
	movq	errfile(%rip), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	cleanup_tempfile_and_exit
.L22:
	leaq	-640(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-928(%rbp), %rcx
	movq	-920(%rbp), %rdx
	movq	-936(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-16(%rbp), %rsi
	movq	-928(%rbp), %rcx
	movq	-920(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	apr_md5_init
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	leaq	-384(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_md5_update
	leaq	-112(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_md5_final
	movl	$0, -4(%rbp)
	jmp	.L23
.L24:
	movl	-4(%rbp), %eax
	movzbl	-128(%rbp,%rax), %eax
	movzbl	%al, %edx
	movq	-936(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addl	$1, -4(%rbp)
.L23:
	cmpl	$15, -4(%rbp)
	jbe	.L24
	movq	-936(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_password, .-add_password
	.section	.rodata
	.align 8
.LC8:
	.string	"Usage: htdigest [-c] passwordfile realm username\n"
	.align 8
.LC9:
	.string	"The -c flag creates a new file.\n"
	.text
	.type	usage, @function
usage:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	errfile(%rip), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE7:
	.size	usage, .-usage
	.section	.rodata
.LC10:
	.string	"Interrupted.\n"
	.text
	.type	interrupted, @function
interrupted:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	errfile(%rip), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	cleanup_tempfile_and_exit
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	interrupted, .-interrupted
	.type	terminate, @function
terminate:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	apr_terminate
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	terminate, .-terminate
	.section	.rodata
.LC11:
	.string	"-c"
	.align 8
.LC12:
	.string	"Could not open passwd file %s for writing: %s\n"
	.align 8
.LC13:
	.string	"Adding password for %s in realm %s.\n"
	.align 8
.LC14:
	.string	"%s: could not determine temp dir\n"
.LC15:
	.string	"%s/%s"
.LC16:
	.string	"Could not open temp file %s.\n"
	.align 8
.LC17:
	.string	"Could not open passwd file %s for reading.\n"
	.align 8
.LC18:
	.string	"Use -c option to create new one.\n"
	.align 8
.LC19:
	.string	"Changing password for user %s in realm %s\n"
.LC20:
	.string	"Adding user %s in realm %s\n"
.LC21:
	.string	"%s: unable to update file %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1744, %rsp
	movl	%edi, -1732(%rbp)
	movq	%rsi, -1744(%rbp)
	movabsq	$8391162025545593960, %rax
	movq	%rax, -48(%rbp)
	movabsq	$6365935029766157358, %rax
	movq	%rax, -40(%rbp)
	movl	$5789784, -32(%rbp)
	leaq	-1744(%rbp), %rcx
	leaq	-1732(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$terminate, %edi
	call	atexit
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$cntxt, %edi
	call	apr_pool_create_ex
	movq	cntxt(%rip), %rax
	movq	%rax, %rsi
	movl	$errfile, %edi
	call	apr_file_open_stderr
	movl	$interrupted, %esi
	movl	$2, %edi
	call	apr_signal
	movl	-1732(%rbp), %eax
	cmpl	$5, %eax
	jne	.L29
	movq	-1744(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L30
	call	usage
.L30:
	movq	cntxt(%rip), %rdx
	movq	-1744(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$6, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L31
	leaq	-1728(%rbp), %rcx
	movl	-8(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	-1744(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L31:
	movq	-1744(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-1744(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-16(%rbp), %rdx
	movq	-1744(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	movq	-1744(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_password
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %edi
	call	exit
.L29:
	movl	-1732(%rbp), %eax
	cmpl	$4, %eax
	je	.L32
	call	usage
.L32:
	movq	cntxt(%rip), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_temp_dir_get
	testl	%eax, %eax
	je	.L33
	movq	-1744(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L33:
	movq	-56(%rbp), %rdx
	movq	cntxt(%rip), %rax
	leaq	-48(%rbp), %rcx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -56(%rbp)
	movq	cntxt(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$tfp, %edi
	call	apr_file_mktemp
	testl	%eax, %eax
	je	.L34
	movq	-56(%rbp), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L34:
	movq	cntxt(%rip), %rdx
	movq	-1744(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L35
	movq	-1744(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	cleanup_tempfile_and_exit
.L35:
	movq	-1744(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rcx
	leaq	-320(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movq	-1744(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rcx
	leaq	-576(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movl	$0, -4(%rbp)
	jmp	.L36
.L41:
	cmpl	$0, -4(%rbp)
	jne	.L37
	movzbl	-832(%rbp), %eax
	cmpb	$35, %al
	je	.L37
	movzbl	-832(%rbp), %eax
	testb	%al, %al
	jne	.L38
.L37:
	movq	tfp(%rip), %rax
	leaq	-832(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	jmp	.L36
.L38:
	leaq	-832(%rbp), %rdx
	leaq	-1088(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-1088(%rbp), %rcx
	leaq	-1344(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getword
	leaq	-1088(%rbp), %rcx
	leaq	-1600(%rbp), %rax
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	getword
	leaq	-1344(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	leaq	-1600(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L40
.L39:
	movq	tfp(%rip), %rax
	leaq	-832(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	jmp	.L36
.L40:
	movq	errfile(%rip), %rax
	leaq	-576(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	tfp(%rip), %rdx
	leaq	-576(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_password
	movl	$1, -4(%rbp)
.L36:
	movq	-16(%rbp), %rdx
	leaq	-832(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	get_line
	testl	%eax, %eax
	je	.L41
	cmpl	$0, -4(%rbp)
	jne	.L42
	movq	errfile(%rip), %rax
	leaq	-576(%rbp), %rcx
	leaq	-320(%rbp), %rdx
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	tfp(%rip), %rdx
	leaq	-576(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	add_password
.L42:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	cntxt(%rip), %rdx
	movq	-1744(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	apr_file_copy
	testl	%eax, %eax
	je	.L43
	movq	-1744(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movq	-1744(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L43:
	movq	tfp(%rip), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

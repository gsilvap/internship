	.file	"rotatelogs.c"
	.section	.rodata
.LC0:
	.string	"%s\n"
	.align 8
.LC1:
	.string	"Usage: %s [-l] [-f] <logfile> {<rotation time in seconds>|<rotation size in megabytes>} [offset minutes from UTC]\n\n"
	.align 8
.LC2:
	.string	"Add this:\n\nTransferLog \"|%s /some/where 86400\"\n\n"
	.align 8
.LC3:
	.string	"or \n\nTransferLog \"|%s /some/where 5M\"\n\n"
	.align 8
.LC4:
	.ascii	"to httpd.conf. The generated name will be /some/where.nnnn w"
	.ascii	"here nnnn is the\nsystem time a"
	.string	"t which the log nominally starts (N.B. if using a rotation time,\nthe time will always be a multiple of the rotation time, so you can synchronize\ncron scripts with it). At the end of each rotation time or when the file size\nis reached a new log is started.\n"
	.text
	.type	usage, @function
usage:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L2
	movq	stderr(%rip), %rax
	movq	-16(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L2:
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$346, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	usage, .-usage
	.type	get_now, @function
get_now:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	call	apr_time_now
	movq	%rax, -8(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L4
	movq	-8(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
	movl	-24(%rbp), %eax
	movl	%eax, -72(%rbp)
.L4:
	movq	-8(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-72(%rbp), %eax
	addl	%edx, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	get_now, .-get_now
	.section	.rodata
.LC5:
	.string	"lf"
.LC6:
	.string	"Incorrect number of arguments"
	.align 8
.LC7:
	.string	"Invalid rotation size parameter"
	.align 8
.LC8:
	.string	"Invalid rotation time parameter"
	.align 8
.LC9:
	.string	"UTC offset parameter is not valid with -l"
.LC10:
	.string	"Unable to open stdin\n"
	.align 8
.LC11:
	.string	"No rotation time or size specified\n"
.LC12:
	.string	"%s.%010d"
	.align 8
.LC13:
	.string	"Could not open log file '%s' (%s)\n"
	.align 8
.LC14:
	.string	"Resetting log file due to error opening new log file, %10d messages lost: %-25.25s\n"
.LC15:
	.string	"Error writing to the file %s\n"
	.align 8
.LC16:
	.string	"Error %d writing to log file at offset %ld. %10d messages lost (%s)\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$67152, %rsp
	movl	%edi, -67140(%rbp)
	movq	%rsi, -67152(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -66960(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -66976(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	leaq	-67152(%rbp), %rcx
	leaq	-67140(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$apr_terminate, %edi
	call	atexit
	leaq	-66968(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-67152(%rbp), %rcx
	movl	-67140(%rbp), %edx
	movq	-66968(%rbp), %rsi
	leaq	-66984(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
	jmp	.L7
.L10:
	movzbl	-66985(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$102, %eax
	je	.L8
	cmpl	$108, %eax
	je	.L9
	jmp	.L7
.L9:
	movl	$1, -24(%rbp)
	jmp	.L7
.L8:
	movl	$1, -28(%rbp)
	nop
.L7:
	movq	-66984(%rbp), %rax
	leaq	-67000(%rbp), %rcx
	leaq	-66985(%rbp), %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L10
	cmpl	$70014, -44(%rbp)
	je	.L11
	movq	-67152(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	usage
.L11:
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	leal	2(%rax), %edx
	movl	-67140(%rbp), %eax
	cmpl	%eax, %edx
	je	.L12
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	leal	3(%rax), %edx
	movl	-67140(%rbp), %eax
	cmpl	%eax, %edx
	je	.L12
	movq	-67152(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	usage
.L12:
	movq	-67152(%rbp), %rsi
	movq	-66984(%rbp), %rax
	movl	24(%rax), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, 24(%rax)
	movslq	%edx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-67152(%rbp), %rdx
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$77, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L13
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
	movq	-67152(%rbp), %rdx
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	sall	$20, %eax
	movl	%eax, -16(%rbp)
.L14:
	cmpl	$0, -16(%rbp)
	jne	.L16
	movq	-67152(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	usage
	jmp	.L16
.L13:
	movq	-67152(%rbp), %rdx
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jg	.L16
	movq	-67152(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	usage
.L16:
	movq	-66984(%rbp), %rax
	movl	24(%rax), %edx
	addl	$1, %edx
	movl	%edx, 24(%rax)
	movq	-66984(%rbp), %rax
	movl	24(%rax), %edx
	movl	-67140(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L17
	cmpl	$0, -24(%rbp)
	je	.L18
	movq	-67152(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	usage
.L18:
	movq	-67152(%rbp), %rdx
	movq	-66984(%rbp), %rax
	movl	24(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	sall	$2, %eax
	movl	%eax, %edx
	sall	$4, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
.L17:
	movq	-88(%rbp), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-66968(%rbp), %rdx
	leaq	-66952(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stdin
	testl	%eax, %eax
	je	.L19
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	movl	$.LC10, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L19:
	movq	$65536, -66936(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L20
	movq	-66952(%rbp), %rax
	leaq	-66936(%rbp), %rdx
	leaq	-65648(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	testl	%eax, %eax
	je	.L20
	movl	$3, %edi
	call	exit
.L20:
	cmpl	$0, -8(%rbp)
	je	.L21
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	get_now
	movl	%eax, -32(%rbp)
	movq	-66960(%rbp), %rax
	testq	%rax, %rax
	je	.L23
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L23
	movq	-66960(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -66960(%rbp)
	jmp	.L23
.L21:
	cmpl	$0, -16(%rbp)
	je	.L24
	movq	$-1, -56(%rbp)
	movq	-66960(%rbp), %rax
	testq	%rax, %rax
	je	.L25
	movq	-66960(%rbp), %rdx
	leaq	-67136(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	apr_file_info_get
	testl	%eax, %eax
	jne	.L25
	movq	-67080(%rbp), %rax
	movq	%rax, -56(%rbp)
.L25:
	movl	-16(%rbp), %eax
	cmpq	-56(%rbp), %rax
	jge	.L26
	movq	-66960(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -66960(%rbp)
	jmp	.L23
.L26:
	jmp	.L23
.L24:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
	movl	$2, %edi
	call	exit
.L23:
	movq	-66960(%rbp), %rax
	testq	%rax, %rax
	jne	.L27
	cmpl	$0, -8(%rbp)
	je	.L28
	movl	-32(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	imull	-8(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.L29
.L28:
	movl	-12(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	get_now
	movl	%eax, -60(%rbp)
.L29:
	cmpl	$0, -64(%rbp)
	je	.L30
	movl	-60(%rbp), %eax
	cltq
	imulq	$1000000, %rax, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdx
	leaq	-67136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_gmt
	leaq	-67136(%rbp), %rcx
	movq	-88(%rbp), %rdx
	leaq	-67008(%rbp), %rsi
	leaq	-66672(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$1024, %edx
	movq	%rax, %rdi
	call	apr_strftime
	jmp	.L31
.L30:
	movl	-60(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	-66672(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf
.L31:
	movl	-60(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movq	-66976(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-66968(%rbp), %rsi
	leaq	-66976(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-66976(%rbp), %rdx
	leaq	-66672(%rbp), %rsi
	leaq	-66960(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$14, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.L32
	leaq	-67136(%rbp), %rcx
	movl	-100(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	cmpq	$0, -40(%rbp)
	jne	.L33
	movq	stderr(%rip), %rax
	leaq	-67136(%rbp), %rcx
	leaq	-66672(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$2, %edi
	call	exit
.L33:
	movq	-40(%rbp), %rax
	movq	%rax, -66960(%rbp)
	movq	-66976(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movq	-72(%rbp), %rax
	movq	%rax, -66976(%rbp)
	leaq	-67136(%rbp), %rcx
	movl	-20(%rbp), %edx
	leaq	-66928(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$.LC14, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	leaq	-66928(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -66944(%rbp)
	movq	-66960(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_trunc
	movq	-66960(%rbp), %rax
	leaq	-66944(%rbp), %rdx
	leaq	-66928(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	testl	%eax, %eax
	je	.L34
	movq	stderr(%rip), %rax
	leaq	-66672(%rbp), %rdx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$2, %edi
	call	exit
.L34:
	jmp	.L35
.L32:
	cmpq	$0, -40(%rbp)
	je	.L35
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	cmpq	$0, -72(%rbp)
	je	.L35
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
.L35:
	movl	$0, -20(%rbp)
.L27:
	cmpl	$0, -28(%rbp)
	jne	.L36
	movq	-66936(%rbp), %rax
	movq	%rax, -66944(%rbp)
	movq	-66960(%rbp), %rax
	leaq	-66944(%rbp), %rdx
	leaq	-65648(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L37
	movq	-66944(%rbp), %rdx
	movq	-66936(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L37
	movq	-66944(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-66936(%rbp), %rax
	subq	-112(%rbp), %rax
	movq	%rax, -66936(%rbp)
	movq	-66936(%rbp), %rax
	movq	%rax, -66944(%rbp)
	leaq	-65648(%rbp), %rdx
	movq	-112(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-66960(%rbp), %rax
	leaq	-66944(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movl	%eax, -44(%rbp)
.L37:
	movq	-66944(%rbp), %rdx
	movq	-66936(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L38
	movq	$0, -67016(%rbp)
	movq	-66960(%rbp), %rax
	leaq	-67016(%rbp), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	testl	%eax, %eax
	je	.L39
	movq	$-1, -67016(%rbp)
.L39:
	leaq	-67136(%rbp), %rcx
	movl	-44(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	addl	$1, -20(%rbp)
	movq	-67016(%rbp), %rsi
	subq	$8, %rsp
	movl	-20(%rbp), %edi
	movl	-44(%rbp), %edx
	leaq	-66928(%rbp), %rax
	leaq	-67136(%rbp), %rcx
	pushq	%rcx
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	$.LC16, %edx
	movl	$256, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	addq	$16, %rsp
	leaq	-66928(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -66944(%rbp)
	movq	-66960(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_trunc
	movq	-66960(%rbp), %rax
	leaq	-66944(%rbp), %rdx
	leaq	-66928(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	testl	%eax, %eax
	je	.L40
	movq	stderr(%rip), %rax
	leaq	-66672(%rbp), %rdx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$2, %edi
	call	exit
.L40:
	jmp	.L42
.L38:
	addl	$1, -20(%rbp)
	jmp	.L19
.L36:
	movl	$0, -28(%rbp)
.L42:
	jmp	.L19
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

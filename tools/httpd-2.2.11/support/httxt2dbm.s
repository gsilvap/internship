	.file	"httxt2dbm.c"
	.local	input
	.comm	input,8,8
	.local	output
	.comm	output,8,8
	.local	format
	.comm	format,8,8
	.local	shortname
	.comm	shortname,8,8
	.local	errfile
	.comm	errfile,8,8
	.local	errbuf
	.comm	errbuf,120,64
	.local	verbose
	.comm	verbose,4,4
	.section	.rodata
.LC0:
	.string	"available"
.LC1:
	.string	"unavailable"
	.align 8
.LC2:
	.ascii	"%s -- Program to Create DBM Files for use by RewriteMap\nUsa"
	.ascii	"ge: %s [-v] [-f format] -i SOURCE_TXT -o OUTPUT_DBM\n\nOptio"
	.ascii	"ns: \n -v    More verbose output\n\n -i    Source Text File."
	.ascii	" If '-', use stdin.\n\n -o    Output DBM.\n\n -f "
	.string	"   DBM Format.  If not specified, will use the APR Default.\n           GDBM for GDBM files (%s)\n           SDBM for SDBM files (%s)\n           DB   for berkeley DB files (%s)\n           NDBM for NDBM files (%s)\n           default for the default DBM type\n\n"
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
	subq	$32, %rsp
	movq	$.LC0, -8(%rbp)
	movq	$.LC0, -16(%rbp)
	movq	$.LC1, -24(%rbp)
	movq	$.LC0, -32(%rbp)
	movq	shortname(%rip), %rcx
	movq	shortname(%rip), %rdx
	movq	errfile(%rip), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	usage, .-usage
	.section	.rodata
.LC3:
	.string	"    '%s' -> '%s'\n"
	.text
	.type	to_dbm, @function
to_dbm:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1136, %rsp
	movq	%rdi, -1112(%rbp)
	movq	%rsi, -1120(%rbp)
	movq	%rdx, -1128(%rbp)
	movl	$0, -4(%rbp)
	movq	-1128(%rbp), %rsi
	leaq	-1096(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	jmp	.L3
.L19:
	movzbl	-1056(%rbp), %eax
	cmpb	$35, %al
	je	.L4
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-1056(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L5
.L4:
	jmp	.L3
.L5:
	leaq	-1056(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L6
.L8:
	addq	$1, -16(%rbp)
.L6:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L7
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
	je	.L8
.L7:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	jmp	.L3
.L9:
	movq	-16(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-1096(%rbp), %rax
	leaq	-1056(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -1072(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1064(%rbp)
	jmp	.L10
.L12:
	addq	$1, -16(%rbp)
.L10:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L11
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
	jne	.L12
.L11:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L13
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	jmp	.L3
.L13:
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L14
.L16:
	addq	$1, -16(%rbp)
.L14:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L15
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
	je	.L16
.L15:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-1096(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -1088(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -1080(%rbp)
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L17
	movq	-1088(%rbp), %rcx
	movq	-1072(%rbp), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L17:
	movq	-1088(%rbp), %rcx
	movq	-1080(%rbp), %rdi
	movq	-1072(%rbp), %rsi
	movq	-1064(%rbp), %rdx
	movq	-1112(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_dbm_store
	movl	%eax, -4(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	cmpl	$0, -4(%rbp)
	je	.L3
	jmp	.L18
.L3:
	movq	-1120(%rbp), %rdx
	leaq	-1056(%rbp), %rax
	movl	$1025, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	je	.L19
.L18:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	to_dbm, .-to_dbm
	.section	.rodata
.LC4:
	.string	"httxt2dbm"
	.align 8
.LC5:
	.string	"Error: apr_getopt_init failed.\n\n"
	.align 8
.LC6:
	.string	"Error: -v can only be passed once\n\n"
	.align 8
.LC7:
	.string	"Error: -f can only be passed once\n\n"
	.align 8
.LC8:
	.string	"Error: -i can only be passed once\n\n"
	.align 8
.LC9:
	.string	"Error: -o can only be passed once\n\n"
.LC10:
	.string	"vf::i::o::"
	.align 8
.LC11:
	.string	"Error: Parsing Arguments Failed\n\n"
	.align 8
.LC12:
	.string	"Error: No input file specified.\n\n"
	.align 8
.LC13:
	.string	"Error: No output DBM specified.\n\n"
.LC14:
	.string	"default"
.LC15:
	.string	"DBM Format: %s\n"
.LC16:
	.string	"-"
	.align 8
.LC17:
	.string	"Error: Cannot open input file '%s': (%d) %s\n\n"
.LC18:
	.string	"Input File: %s\n"
	.align 8
.LC19:
	.string	"Error: The requested DBM Format '%s' is not available.\n\n"
	.align 8
.LC20:
	.string	"Error: Cannot open output DBM '%s': (%d) %s\n\n"
.LC21:
	.string	"DBM File: %s\n"
	.align 8
.LC22:
	.string	"Error: Converting to DBM: (%d) %s\n\n"
.LC23:
	.string	"Conversion Complete.\n"
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
	subq	$80, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -4(%rbp)
	leaq	-80(%rbp), %rcx
	leaq	-68(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$apr_terminate, %edi
	call	atexit
	movl	$0, verbose(%rip)
	movq	$0, format(%rip)
	movq	$0, input(%rip)
	movq	$0, output(%rip)
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movl	-68(%rbp), %eax
	testl	%eax, %eax
	je	.L22
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, shortname(%rip)
	jmp	.L23
.L22:
	movq	$.LC4, shortname(%rip)
.L23:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$errfile, %edi
	call	apr_file_open_stderr
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L24
	movq	errfile(%rip), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L52
.L24:
	movl	-68(%rbp), %eax
	cmpl	$1, %eax
	jg	.L26
	call	usage
	movl	$1, %eax
	jmp	.L52
.L26:
	jmp	.L27
.L37:
	movzbl	-33(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$105, %eax
	je	.L28
	cmpl	$105, %eax
	jg	.L29
	cmpl	$102, %eax
	je	.L30
	jmp	.L27
.L29:
	cmpl	$111, %eax
	je	.L31
	cmpl	$118, %eax
	je	.L32
	jmp	.L27
.L32:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L33
	movq	errfile(%rip), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L33:
	movl	$1, verbose(%rip)
	jmp	.L27
.L30:
	movq	format(%rip), %rax
	testq	%rax, %rax
	je	.L34
	movq	errfile(%rip), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L34:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, format(%rip)
	jmp	.L27
.L28:
	movq	input(%rip), %rax
	testq	%rax, %rax
	je	.L35
	movq	errfile(%rip), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L35:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, input(%rip)
	jmp	.L27
.L31:
	movq	output(%rip), %rax
	testq	%rax, %rax
	je	.L36
	movq	errfile(%rip), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L36:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, output(%rip)
	nop
.L27:
	movq	-24(%rbp), %rax
	leaq	-32(%rbp), %rcx
	leaq	-33(%rbp), %rdx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L37
	cmpl	$70014, -4(%rbp)
	je	.L38
	movq	errfile(%rip), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L38:
	movq	input(%rip), %rax
	testq	%rax, %rax
	jne	.L39
	movq	errfile(%rip), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L39:
	movq	output(%rip), %rax
	testq	%rax, %rax
	jne	.L40
	movq	errfile(%rip), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	movl	$1, %eax
	jmp	.L52
.L40:
	movq	format(%rip), %rax
	testq	%rax, %rax
	jne	.L41
	movq	$.LC14, format(%rip)
.L41:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L42
	movq	format(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L42:
	movq	input(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L43
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stdin
	movl	%eax, -4(%rbp)
	jmp	.L44
.L43:
	movq	-16(%rbp), %rdx
	movq	input(%rip), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$129, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -4(%rbp)
.L44:
	cmpl	$0, -4(%rbp)
	je	.L45
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movl	$errbuf, %esi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rsi
	movq	input(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	-4(%rbp), %ecx
	movq	%rsi, %r8
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L52
.L45:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L46
	movq	input(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L46:
	movq	-16(%rbp), %rcx
	movq	output(%rip), %rdx
	movq	format(%rip), %rsi
	leaq	-56(%rbp), %rax
	movq	%rcx, %r9
	movl	$4095, %r8d
	movl	$3, %ecx
	movq	%rax, %rdi
	call	apr_dbm_open_ex
	movl	%eax, -4(%rbp)
	cmpl	$70023, -4(%rbp)
	jne	.L47
	movq	format(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L52
.L47:
	cmpl	$0, -4(%rbp)
	je	.L48
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movl	$errbuf, %esi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rsi
	movq	output(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	-4(%rbp), %ecx
	movq	%rsi, %r8
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L52
.L48:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L49
	movq	output(%rip), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L49:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	to_dbm
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L50
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movl	$errbuf, %esi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	errfile(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L52
.L50:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dbm_close
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L51
	movq	errfile(%rip), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L51:
	movl	$0, %eax
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

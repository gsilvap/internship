	.file	"htcacheclean.c"
	.local	delcount
	.comm	delcount,4,4
	.local	interrupted
	.comm	interrupted,4,4
	.local	realclean
	.comm	realclean,4,4
	.local	verbose
	.comm	verbose,4,4
	.local	benice
	.comm	benice,4,4
	.local	dryrun
	.comm	dryrun,4,4
	.local	deldirs
	.comm	deldirs,4,4
	.local	baselen
	.comm	baselen,4,4
	.local	now
	.comm	now,8,8
	.local	errfile
	.comm	errfile,8,8
	.local	unsolicited
	.comm	unsolicited,8,8
	.local	root
	.comm	root,16,16
	.section	.rodata
.LC0:
	.string	"htcacheclean"
	.data
	.align 8
	.type	shortname, @object
	.size	shortname, 8
shortname:
	.quad	.LC0
	.text
	.type	setterm, @function
setterm:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	$1, interrupted(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	setterm, .-setterm
	.type	oom, @function
oom:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	called.5999(%rip), %eax
	testl	%eax, %eax
	jne	.L3
	movl	$1, called.5999(%rip)
	movl	$1, %edi
	call	exit
.L3:
	movl	$12, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	oom, .-oom
	.section	.rodata
.LC1:
	.string	"Statistics:\n"
.LC2:
	.string	"unsolicited size %d.%d%c\n"
.LC3:
	.string	"size limit %d.0%c\n"
	.align 8
.LC4:
	.string	"total size was %d.%d%c, total size now %d.%d%c\n"
	.align 8
.LC5:
	.string	"total entries was %d, total entries now %d\n"
	.text
	.type	printstats, @function
printstats:
.LFB4:
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
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	jne	.L6
	jmp	.L5
.L6:
	movb	$75, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -40(%rbp)
	cmpq	$1023, -40(%rbp)
	jle	.L8
	movb	$77, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -40(%rbp)
.L8:
	movb	$75, -2(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -48(%rbp)
	cmpq	$1023, -48(%rbp)
	jle	.L9
	movb	$77, -2(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -48(%rbp)
.L9:
	movb	$75, -3(%rbp)
	movq	-56(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -56(%rbp)
	cmpq	$1023, -56(%rbp)
	jle	.L10
	movb	$77, -3(%rbp)
	movq	-56(%rbp), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, -56(%rbp)
.L10:
	movq	errfile(%rip), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	unsolicited(%rip), %rax
	testq	%rax, %rax
	je	.L11
	movb	$75, -4(%rbp)
	movq	unsolicited(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	unsolicited(%rip), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, unsolicited(%rip)
	movq	unsolicited(%rip), %rax
	cmpq	$1023, %rax
	jle	.L12
	movb	$77, -4(%rbp)
	movq	unsolicited(%rip), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	unsolicited(%rip), %rax
	leaq	1023(%rax), %rdx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	sarq	$10, %rax
	movq	%rax, unsolicited(%rip)
.L12:
	movq	unsolicited(%rip), %rax
	testq	%rax, %rax
	jne	.L13
	cmpq	$0, -32(%rbp)
	jne	.L13
	movq	$1, -32(%rbp)
.L13:
	movsbl	-4(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	unsolicited(%rip), %rax
	movl	%eax, %esi
	movq	errfile(%rip), %rax
	movl	%edx, %r8d
	movl	%esi, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L11:
	movsbl	-3(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	%eax, %esi
	movq	errfile(%rip), %rax
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movsbl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%eax, %r8d
	movq	-48(%rbp), %rax
	movl	%eax, %r9d
	movsbl	-1(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	movq	errfile(%rip), %rax
	pushq	%rdx
	pushq	%r8
	movl	%ecx, %r8d
	movl	%edi, %ecx
	movl	%esi, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addq	$16, %rsp
	movq	-72(%rbp), %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	errfile(%rip), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printstats, .-printstats
	.section	.rodata
.LC6:
	.string	"/"
	.text
	.type	delete_file, @function
delete_file:
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
	movl	dryrun(%rip), %eax
	testl	%eax, %eax
	jne	.L14
	movq	-40(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_remove
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	benice(%rip), %eax
	testl	%eax, %eax
	je	.L14
	movl	delcount(%rip), %eax
	addl	$1, %eax
	movl	%eax, delcount(%rip)
	movl	delcount(%rip), %eax
	cmpl	$9, %eax
	jle	.L14
	movl	$10000, %edi
	call	apr_sleep
	movl	$0, delcount(%rip)
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	delete_file, .-delete_file
	.section	.rodata
.LC7:
	.string	".header"
.LC8:
	.string	".data"
	.text
	.type	delete_entry, @function
delete_entry:
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
	movl	dryrun(%rip), %eax
	testl	%eax, %eax
	jne	.L18
	movq	-40(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$0, %r9d
	movl	$.LC7, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_remove
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movl	$0, %r9d
	movl	$.LC8, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_remove
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	benice(%rip), %eax
	testl	%eax, %eax
	je	.L18
	movl	delcount(%rip), %eax
	addl	$2, %eax
	movl	%eax, delcount(%rip)
	movl	delcount(%rip), %eax
	cmpl	$9, %eax
	jle	.L18
	movl	$10000, %edi
	call	apr_sleep
	movl	$0, delcount(%rip)
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	delete_entry, .-delete_entry
	.section	.rodata
.LC9:
	.string	"."
.LC10:
	.string	".."
.LC11:
	.string	"aptmp"
	.text
	.type	process_dir, @function
process_dir:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$424, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -424(%rbp)
	movq	%rsi, -432(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -320(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	-432(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, -64(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -68(%rbp)
	movl	$3600000000, %eax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rdx
	movq	-424(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dir_open
	testl	%eax, %eax
	je	.L23
	movl	$1, %eax
	jmp	.L80
.L23:
	jmp	.L25
.L29:
	movq	-184(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L26
	movq	-184(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L27
.L26:
	jmp	.L25
.L27:
	movq	-152(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-424(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	leaq	-320(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-320(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	-320(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	leaq	-320(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L25:
	movq	-144(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_dir_read
	testl	%eax, %eax
	jne	.L28
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L29
.L28:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L30
	movl	$1, %eax
	jmp	.L80
.L30:
	movl	baselen(%rip), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L31
.L52:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L32
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.L32:
	movq	-40(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L33
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L33
	movq	-40(%rbp), %rax
	movl	$5, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L33
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$11, %rax
	jne	.L33
	jmp	.L34
.L33:
	movl	$10, -52(%rbp)
	movl	$0, -28(%rbp)
.L37:
	cmpl	$0, -28(%rbp)
	je	.L35
	movl	$5000, %edi
	call	apr_sleep
.L35:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movl	$33041, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L36
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L36
	subl	$1, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L37
.L36:
	cmpl	$0, -28(%rbp)
	je	.L38
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L39
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L39
	jmp	.L34
.L39:
	movl	$1, %eax
	jmp	.L80
.L38:
	movl	-272(%rbp), %eax
	cmpl	$2, %eax
	jne	.L40
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	-432(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_dir
	testl	%eax, %eax
	je	.L41
	movl	$1, %eax
	jmp	.L80
.L41:
	movl	deldirs(%rip), %eax
	testl	%eax, %eax
	je	.L42
	movl	dryrun(%rip), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-432(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_dir_remove
	jmp	.L34
.L42:
	jmp	.L34
.L40:
	movl	-272(%rbp), %eax
	cmpl	$1, %eax
	je	.L43
	jmp	.L34
.L43:
	cmpq	$0, -96(%rbp)
	jne	.L44
	movq	-40(%rbp), %rax
	movl	$5, %edx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L45
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$11, %rax
	jne	.L45
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	jmp	.L34
.L45:
	jmp	.L34
.L44:
	movq	-96(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L46
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L47
	jmp	.L34
.L47:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L48
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
.L48:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	jmp	.L34
.L46:
	movq	-96(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L34
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movl	-68(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L49
	jmp	.L34
.L49:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L50
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
.L50:
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-208(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L34:
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
.L31:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L51
	leaq	-320(%rbp), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L52
.L51:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L53
	movl	$1, %eax
	jmp	.L80
.L53:
	movl	baselen(%rip), %eax
	movslq	%eax, %rdx
	movq	-424(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-152(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_first
	movq	%rax, -24(%rbp)
	jmp	.L54
.L76:
	leaq	-392(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_hash_this
	movq	-392(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L56
	cmpl	$2, %eax
	jg	.L57
	cmpl	$1, %eax
	je	.L58
	jmp	.L55
.L57:
	cmpl	$3, %eax
	je	.L59
	cmpl	$4, %eax
	je	.L60
	jmp	.L55
.L59:
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	-424(%rbp), %rsi
	movl	$0, %r9d
	movl	$.LC7, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rdx
	movq	-120(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$33, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	jne	.L61
	movq	$4, -296(%rbp)
	movq	-296(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-396(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_file_read_full
	testl	%eax, %eax
	jne	.L62
	movl	-396(%rbp), %eax
	cmpl	$4, %eax
	jne	.L63
	movq	$0, -408(%rbp)
	movq	-160(%rbp), %rax
	leaq	-408(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	movq	$56, -296(%rbp)
	movq	-296(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-384(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_file_read_full
	testl	%eax, %eax
	jne	.L64
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-432(%rbp), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	$root, (%rax)
	movl	$root, %eax
	movq	8(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$root, %eax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$root, %edx
	movq	-128(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-352(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-336(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L55
.L64:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	jmp	.L61
.L63:
	movl	-396(%rbp), %eax
	cmpl	$3, %eax
	jne	.L61
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-152(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	-424(%rbp), %rsi
	movl	$0, %r9d
	movl	$.LC8, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	apr_file_remove
	jmp	.L61
.L62:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L61:
	call	apr_time_now
	movq	%rax, -136(%rbp)
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L66
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rax
	subq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L66
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	cmpq	%rdx, %rax
	jle	.L67
.L66:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	unsolicited(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, unsolicited(%rip)
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	unsolicited(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, unsolicited(%rip)
	jmp	.L55
.L67:
	jmp	.L55
.L58:
	call	apr_time_now
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	-424(%rbp), %rsi
	movl	$0, %r9d
	movl	$.LC7, %r8d
	movq	%rdx, %rcx
	movl	$.LC6, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -120(%rbp)
	movq	-152(%rbp), %rdx
	movq	-120(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$33, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	jne	.L68
	movq	$4, -296(%rbp)
	movq	-296(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-396(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_file_read_full
	testl	%eax, %eax
	jne	.L69
	movl	-396(%rbp), %eax
	cmpl	$3, %eax
	jne	.L69
	movq	$8, -296(%rbp)
	movq	-296(%rbp), %rdx
	movq	-160(%rbp), %rax
	leaq	-296(%rbp), %rcx
	leaq	-416(%rbp), %rsi
	movq	%rax, %rdi
	call	apr_file_read_full
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-416(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jge	.L70
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
.L70:
	nop
	jmp	.L55
.L69:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L68:
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L71
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rax
	subq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L71
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	cmpq	%rdx, %rax
	jle	.L72
.L71:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdx
	movq	unsolicited(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, unsolicited(%rip)
	jmp	.L55
.L72:
	jmp	.L55
.L56:
	call	apr_time_now
	movq	%rax, -136(%rbp)
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L73
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-136(%rbp), %rax
	subq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	jl	.L73
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	cmpq	%rdx, %rax
	jle	.L74
.L73:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	unsolicited(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, unsolicited(%rip)
	jmp	.L55
.L74:
	jmp	.L55
.L60:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-424(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_file
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdx
	movq	unsolicited(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, unsolicited(%rip)
	nop
.L55:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_next
	movq	%rax, -24(%rbp)
.L54:
	cmpq	$0, -24(%rbp)
	je	.L75
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L76
.L75:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L77
	movl	$1, %eax
	jmp	.L80
.L77:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	benice(%rip), %eax
	testl	%eax, %eax
	je	.L78
	movl	$10000, %edi
	call	apr_sleep
.L78:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movl	$0, %eax
.L80:
	addq	$424, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	process_dir, .-process_dir
	.type	purge, @function
purge:
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
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	root(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L82
.L83:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	addq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	addq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L82:
	cmpq	$root, -24(%rbp)
	jne	.L83
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.L84
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	printstats
	jmp	.L81
.L84:
	movq	root(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L86
.L91:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	now(%rip), %rax
	cmpq	%rax, %rdx
	jg	.L87
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	now(%rip), %rax
	cmpq	%rax, %rdx
	jg	.L87
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	now(%rip), %rax
	cmpq	%rax, %rdx
	jle	.L88
.L87:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, -8(%rbp)
	subq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.L88
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L89
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	printstats
	jmp	.L81
.L89:
	jmp	.L81
.L88:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L86:
	cmpq	$root, -24(%rbp)
	je	.L90
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L91
.L90:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L92
	jmp	.L81
.L92:
	movq	root(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L93
.L97:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L94
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	now(%rip), %rax
	cmpq	%rax, %rdx
	jge	.L94
	movq	-24(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, -8(%rbp)
	subq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jg	.L94
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L95
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	printstats
	jmp	.L81
.L95:
	jmp	.L81
.L94:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.L93:
	cmpq	$root, -24(%rbp)
	je	.L96
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L97
.L96:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L98
	jmp	.L81
.L98:
	jmp	.L99
.L104:
	movq	root(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L100
.L102:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L101
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L101:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L100:
	cmpq	$root, -24(%rbp)
	jne	.L102
	movq	-32(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	delete_entry
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	subq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	subq	%rax, -8(%rbp)
	subq	$1, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
.L99:
	movq	-8(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jle	.L103
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L103
	movq	root(%rip), %rax
	cmpq	$root, %rax
	jne	.L104
.L103:
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	printstats
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	purge, .-purge
	.section	.rodata
	.align 8
.LC12:
	.ascii	"%s -- program for cleaning the disk cache.\nUsage: %s [-Dvtr"
	.ascii	"n] -pPATH -lLIMIT\n       %s [-nti] -dINTERVAL -pPATH -lLIMI"
	.ascii	"T\n\nOptions:\n  -d   Daemonize and repeat cache cleaning ev"
	.ascii	"ery INTERVAL minutes.\n       This option is mutually exclus"
	.ascii	"ive with the -D, -v and -r\n       options.\n\n  -D   Do a d"
	.ascii	"ry run and don't delete anything. This option is mutually\n "
	.ascii	"      exclusive with the -d option.\n\n  -v   Be verbose and"
	.ascii	" print statistics. This option is mutually\n       exclusive"
	.ascii	" with the -d option.\n\n  -r   Clean thoroughly. This assume"
	.ascii	"s that the Apache web server is \n       not running. This o"
	.ascii	"ption is mutually exclusive with the -d\n       option and i"
	.ascii	"mplies -t.\n\n  -n   Be nice. This causes slower processing "
	.ascii	"in favour of other\n       processes.\n\n  -t   Delete all e"
	.ascii	"mpty directories. By default only cache files are\n       re"
	.ascii	"moved, however with some configurations the large number of\n"
	.ascii	"       directories created may require attention.\n\n  -p   "
	.ascii	"Specify PATH as the root directory of the disk cache.\n\n  -"
	.ascii	"l   Specify LIMIT as the to"
	.string	"tal disk cache size limit. Attach 'K'\n       or 'M' to the number for specifying KBytes or MBytes.\n\n  -i   Be intelligent and run only when there was a modification of\n       the disk cache. This option is only possible together with the\n       -d option.\n"
	.text
	.type	usage, @function
usage:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	shortname(%rip), %rsi
	movq	shortname(%rip), %rcx
	movq	shortname(%rip), %rdx
	movq	errfile(%rip), %rax
	movq	%rsi, %r8
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE9:
	.size	usage, .-usage
	.section	.rodata
.LC13:
	.string	"iDnvrtd:l:L:p:"
.LC14:
	.string	"Invalid limit: %s\n\n"
	.align 8
.LC15:
	.string	"An error occurred, cache cleaning aborted.\n"
	.align 8
.LC16:
	.string	"Cache cleaning aborted due to user request.\n"
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
	subq	$272, %rsp
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	movl	$0, interrupted(%rip)
	movq	$0, -8(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, dryrun(%rip)
	movl	$0, -40(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, verbose(%rip)
	movl	$0, realclean(%rip)
	movl	$0, benice(%rip)
	movl	$0, deldirs(%rip)
	movl	$0, -44(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -56(%rbp)
	leaq	-272(%rbp), %rcx
	leaq	-260(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	testl	%eax, %eax
	je	.L107
	movl	$1, %eax
	jmp	.L183
.L107:
	movl	$apr_terminate, %edi
	call	atexit
	movl	-260(%rbp), %eax
	testl	%eax, %eax
	je	.L109
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, shortname(%rip)
.L109:
	leaq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	testl	%eax, %eax
	je	.L110
	movl	$1, %eax
	jmp	.L183
.L110:
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$oom, %edi
	call	apr_pool_abort_set
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$errfile, %edi
	call	apr_file_open_stderr
	movl	$setterm, %esi
	movl	$2, %edi
	call	apr_signal
	movl	$setterm, %esi
	movl	$15, %edi
	call	apr_signal
	movq	-272(%rbp), %rcx
	movl	-260(%rbp), %edx
	movq	-88(%rbp), %rsi
	leaq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
.L145:
	movq	-104(%rbp), %rax
	leaq	-240(%rbp), %rcx
	leaq	-225(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -28(%rbp)
	cmpl	$70014, -28(%rbp)
	jne	.L111
	nop
	movq	-104(%rbp), %rax
	movl	24(%rax), %edx
	movl	-260(%rbp), %eax
	cmpl	%eax, %edx
	je	.L146
	jmp	.L184
.L111:
	cmpl	$0, -28(%rbp)
	je	.L113
	call	usage
	jmp	.L114
.L113:
	movzbl	-225(%rbp), %eax
	movsbl	%al, %eax
	subl	$68, %eax
	cmpl	$50, %eax
	ja	.L145
	movl	%eax, %eax
	movq	.L116(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L116:
	.quad	.L115
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L117
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L145
	.quad	.L118
	.quad	.L145
	.quad	.L145
	.quad	.L119
	.quad	.L145
	.quad	.L120
	.quad	.L145
	.quad	.L121
	.quad	.L145
	.quad	.L122
	.quad	.L145
	.quad	.L123
	.quad	.L145
	.quad	.L124
	.text
.L118:
	cmpl	$0, -44(%rbp)
	je	.L125
	call	usage
.L125:
	movl	$1, -44(%rbp)
	jmp	.L114
.L115:
	movl	dryrun(%rip), %eax
	testl	%eax, %eax
	je	.L126
	call	usage
.L126:
	movl	$1, dryrun(%rip)
	jmp	.L114
.L120:
	movl	benice(%rip), %eax
	testl	%eax, %eax
	je	.L127
	call	usage
.L127:
	movl	$1, benice(%rip)
	jmp	.L114
.L123:
	movl	deldirs(%rip), %eax
	testl	%eax, %eax
	je	.L128
	call	usage
.L128:
	movl	$1, deldirs(%rip)
	jmp	.L114
.L124:
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	je	.L129
	call	usage
.L129:
	movl	$1, verbose(%rip)
	jmp	.L114
.L122:
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	je	.L130
	call	usage
.L130:
	movl	$1, realclean(%rip)
	movl	$1, deldirs(%rip)
	jmp	.L114
.L117:
	cmpl	$0, -36(%rbp)
	je	.L131
	call	usage
.L131:
	movl	$1, -36(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	apr_atoi64
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1000000, %rax, %rax
	movq	%rax, -8(%rbp)
	jmp	.L114
.L119:
	cmpl	$0, -40(%rbp)
	je	.L132
	call	usage
.L132:
	movl	$1, -40(%rbp)
	movq	-240(%rbp), %rsi
	leaq	-256(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rdi
	call	apr_strtoff
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.L133
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	je	.L134
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$107, %al
	jne	.L135
.L134:
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L135
	movq	-80(%rbp), %rax
	salq	$10, %rax
	movq	%rax, -80(%rbp)
	jmp	.L133
.L135:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$77, %al
	je	.L136
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$109, %al
	jne	.L137
.L136:
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L137
	movq	-80(%rbp), %rax
	salq	$20, %rax
	movq	%rax, -80(%rbp)
	jmp	.L133
.L137:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	je	.L138
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$103, %al
	jne	.L139
.L138:
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L139
	movq	-80(%rbp), %rax
	salq	$30, %rax
	movq	%rax, -80(%rbp)
	jmp	.L133
.L139:
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L133
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L140
	movq	-256(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	.L141
.L140:
	movq	-256(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L133
.L141:
	movl	$20014, -60(%rbp)
.L133:
	cmpl	$0, -60(%rbp)
	je	.L142
	movq	-240(%rbp), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	call	usage
	jmp	.L114
.L142:
	jmp	.L114
.L121:
	cmpq	$0, -56(%rbp)
	je	.L143
	call	usage
.L143:
	movq	-240(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_filepath_set
	testl	%eax, %eax
	je	.L144
	call	usage
	jmp	.L185
.L144:
.L185:
	nop
.L114:
	jmp	.L145
.L184:
	call	usage
.L146:
	cmpl	$0, -36(%rbp)
	je	.L147
	cmpq	$0, -8(%rbp)
	jle	.L148
	movl	verbose(%rip), %eax
	testl	%eax, %eax
	jne	.L148
	movl	realclean(%rip), %eax
	testl	%eax, %eax
	jne	.L148
	movl	dryrun(%rip), %eax
	testl	%eax, %eax
	je	.L147
.L148:
	call	usage
.L147:
	cmpl	$0, -36(%rbp)
	jne	.L149
	cmpl	$0, -44(%rbp)
	je	.L149
	call	usage
.L149:
	cmpq	$0, -56(%rbp)
	je	.L150
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jg	.L151
.L150:
	call	usage
.L151:
	movq	-88(%rbp), %rdx
	leaq	-248(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_get
	testl	%eax, %eax
	je	.L152
	call	usage
.L152:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, baselen(%rip)
	cmpl	$0, -36(%rbp)
	je	.L153
	movq	errfile(%rip), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$1, %edi
	call	apr_proc_detach
.L153:
	movq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	call	apr_time_now
	movq	%rax, now(%rip)
	movq	$root, root(%rip)
	movq	$root, root+8(%rip)
	movl	$0, delcount(%rip)
	movq	$0, unsolicited(%rip)
	movl	$0, -48(%rbp)
	movl	-44(%rbp), %eax
	cmpl	$1, %eax
	je	.L155
	cmpl	$2, %eax
	je	.L156
	testl	%eax, %eax
	jne	.L154
	movl	$1, -48(%rbp)
	jmp	.L154
.L155:
	movl	$10, -32(%rbp)
	movl	$0, -28(%rbp)
.L160:
	cmpl	$0, -28(%rbp)
	je	.L158
	movl	$5000, %edi
	call	apr_sleep
.L158:
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L159
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L159
	subl	$1, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L160
.L159:
	cmpl	$0, -28(%rbp)
	jne	.L161
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$2, -44(%rbp)
.L161:
	movl	$1, -48(%rbp)
	jmp	.L154
.L156:
	movl	$10, -32(%rbp)
	movl	$0, -28(%rbp)
.L164:
	cmpl	$0, -28(%rbp)
	je	.L162
	movl	$5000, %edi
	call	apr_sleep
.L162:
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L163
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L163
	subl	$1, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L164
.L163:
	cmpl	$0, -28(%rbp)
	jne	.L165
	movq	-144(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L166
	movl	$1, -48(%rbp)
.L166:
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L154
.L165:
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	nop
.L154:
	cmpl	$0, -48(%rbp)
	je	.L167
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L167
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	process_dir
	testl	%eax, %eax
	jne	.L168
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L168
	movq	-80(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	purge
	jmp	.L169
.L168:
	cmpl	$0, -36(%rbp)
	jne	.L169
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L169
	movq	errfile(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L183
.L169:
	cmpl	$0, -44(%rbp)
	je	.L167
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L167
	movl	$10, -32(%rbp)
	movl	$0, -28(%rbp)
.L172:
	cmpl	$0, -28(%rbp)
	je	.L170
	movl	$5000, %edi
	call	apr_sleep
.L170:
	movq	-96(%rbp), %rdx
	movq	-248(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$16, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L171
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	jne	.L171
	subl	$1, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L172
.L171:
	cmpl	$0, -28(%rbp)
	jne	.L173
	movq	-144(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$2, -44(%rbp)
	jmp	.L167
.L173:
	movl	$1, -44(%rbp)
.L167:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	call	apr_time_now
	movq	%rax, -72(%rbp)
	movq	now(%rip), %rax
	cmpq	%rax, -72(%rbp)
	jge	.L174
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L175
.L174:
	movq	now(%rip), %rax
	movq	-72(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	jl	.L176
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L175
.L176:
	movq	now(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	subq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L175:
	cmpl	$0, -36(%rbp)
	je	.L177
	jmp	.L178
.L180:
	cmpq	$1000000, -16(%rbp)
	jle	.L179
	movl	$1000000, %edi
	call	apr_sleep
	subq	$1000000, -16(%rbp)
	jmp	.L178
.L179:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_sleep
	movq	$0, -16(%rbp)
.L178:
	cmpq	$0, -16(%rbp)
	je	.L177
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L180
.L177:
	cmpl	$0, -36(%rbp)
	je	.L181
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L153
.L181:
	cmpl	$0, -36(%rbp)
	jne	.L182
	movl	interrupted(%rip), %eax
	testl	%eax, %eax
	je	.L182
	movq	errfile(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %eax
	jmp	.L183
.L182:
	movl	$0, %eax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	main, .-main
	.local	called.5999
	.comm	called.5999,4,4
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

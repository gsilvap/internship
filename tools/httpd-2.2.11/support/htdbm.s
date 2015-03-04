	.file	"htdbm.c"
	.text
	.type	terminate, @function
terminate:
.LFB2:
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
.LFE2:
	.size	terminate, .-terminate
	.type	htdbm_terminate, @function
htdbm_terminate:
.LFB3:
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
	testq	%rax, %rax
	je	.L3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_dbm_close
.L3:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	htdbm_terminate, .-htdbm_terminate
	.local	h
	.comm	h,8,8
	.section	.rodata
.LC0:
	.string	"htdbm Interrupted !\n"
	.text
	.type	htdbm_interrupted, @function
htdbm_interrupted:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_terminate
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC0, %edi
	call	fwrite
	movl	$4, %edi
	call	exit
	.cfi_endproc
.LFE4:
	.size	htdbm_interrupted, .-htdbm_interrupted
	.section	.rodata
.LC1:
	.string	"default"
	.text
	.type	htdbm_init, @function
htdbm_init:
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
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movl	$htdbm_interrupted, %esi
	movl	$2, %edi
	call	apr_signal
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$72, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$72, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 64(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	$.LC1, 48(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	htdbm_init, .-htdbm_init
	.type	htdbm_open, @function
htdbm_open:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L8
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movl	$4095, %r8d
	movl	$3, %ecx
	movq	%rax, %rdi
	call	apr_dbm_open_ex
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movl	$1, %edi
	jmp	.L11
.L10:
	movl	$2, %edi
.L11:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r9
	movl	$4095, %r8d
	movl	%edi, %ecx
	movq	%rax, %rdi
	call	apr_dbm_open_ex
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	htdbm_open, .-htdbm_open
	.section	.rodata
.LC2:
	.string	":"
	.text
	.type	htdbm_save, @function
htdbm_save:
.LFB7:
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
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movl	$0, %eax
	jmp	.L18
.L13:
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_exists
	testl	%eax, %eax
	je	.L15
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
.L15:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L17
.L16:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC2, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.L17:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_dbm_store
.L18:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	htdbm_save, .-htdbm_save
	.type	htdbm_del, @function
htdbm_del:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_exists
	testl	%eax, %eax
	jne	.L20
	movl	$2, %eax
	jmp	.L22
.L20:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_delete
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	htdbm_del, .-htdbm_del
	.type	htdbm_verify, @function
htdbm_verify:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -312(%rbp)
	leaq	-304(%rbp), %rdx
	movl	$0, %eax
	movl	$32, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	-312(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-312(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_exists
	testl	%eax, %eax
	jne	.L24
	movl	$2, %eax
	jmp	.L29
.L24:
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	call	apr_dbm_fetch
	testl	%eax, %eax
	je	.L26
	movl	$2, %eax
	jmp	.L29
.L26:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L27
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	jmp	.L28
.L27:
	movq	-8(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
.L28:
	movq	-312(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_password_validate
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	htdbm_verify, .-htdbm_verify
	.section	.rodata
.LC3:
	.string	"Empty database -- %s\n"
	.align 8
.LC4:
	.string	"Dumping records from database -- %s\n"
.LC5:
	.string	"Username"
.LC6:
	.string	"    %-32sComment\n"
.LC7:
	.string	"Failed getting data from %s\n"
.LC8:
	.string	"    %-32s"
.LC9:
	.string	"Failed getting NextKey\n"
.LC10:
	.string	"Total #records : %d\n"
	.text
	.type	htdbm_list, @function
htdbm_list:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movl	$0, -4(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_firstkey
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L31
	movq	-328(%rbp), %rax
	movq	16(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$2, %eax
	jmp	.L38
.L31:
	movq	-328(%rbp), %rax
	movq	8(%rax), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8192, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-328(%rbp), %rax
	movq	16(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movl	$.LC5, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L33
.L37:
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	call	apr_dbm_fetch
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L34
	movq	-328(%rbp), %rax
	movq	16(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$20014, %eax
	jmp	.L38
.L34:
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-320(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-40(%rbp), %rax
	movb	$0, -320(%rbp,%rax)
	movq	stderr(%rip), %rax
	leaq	-320(%rbp), %rdx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L35
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	fputs
.L35:
	movq	stderr(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	movq	-328(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_dbm_nextkey
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L36
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
.L36:
	addl	$1, -4(%rbp)
.L33:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L37
	movq	stderr(%rip), %rax
	movl	-4(%rbp), %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	htdbm_list, .-htdbm_list
	.type	to64, @function
to64:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	jmp	.L40
.L41:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	andl	$63, %edx
	movzbl	itoa64.5804(%rdx), %edx
	movb	%dl, (%rax)
	shrq	$6, -16(%rbp)
.L40:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L41
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	to64, .-to64
	.section	.rodata
	.align 8
.LC11:
	.string	"Warning: Plain text passwords aren't supported by the server on this platform!\n"
	.align 8
.LC12:
	.string	"CRYPT is now deprecated, use MD5 instead!\n"
	.text
	.type	htdbm_make, @function
htdbm_make:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	-280(%rbp), %rax
	movl	64(%rax), %eax
	cmpl	$1, %eax
	je	.L44
	cmpl	$1, %eax
	jg	.L45
	testl	%eax, %eax
	je	.L46
	jmp	.L51
.L45:
	cmpl	$2, %eax
	je	.L47
	cmpl	$3, %eax
	je	.L48
	jmp	.L51
.L47:
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %ecx
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-256(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_sha1_base64
	jmp	.L49
.L44:
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	call	rand
	movslq	%eax, %rcx
	leaq	-272(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	to64
	movb	$0, -264(%rbp)
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-256(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movl	$256, %ecx
	movq	%rax, %rdi
	call	apr_md5_encode
	jmp	.L49
.L46:
	movq	-280(%rbp), %rax
	movq	32(%rax), %rcx
	leaq	-256(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$79, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
	jmp	.L49
.L48:
	movl	$0, %edi
	call	time
	movl	%eax, %edi
	call	srand
	call	rand
	movslq	%eax, %rcx
	leaq	-272(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	to64
	movb	$0, -264(%rbp)
	movq	-280(%rbp), %rax
	movq	32(%rax), %rax
	leaq	-272(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	crypt
	movq	%rax, %rcx
	leaq	-256(%rbp), %rax
	movl	$255, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$42, %edx
	movl	$1, %esi
	movl	$.LC12, %edi
	call	fwrite
.L51:
	nop
.L49:
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-256(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	htdbm_make, .-htdbm_make
	.section	.rodata
.LC13:
	.string	"Invalid username length\n"
	.align 8
.LC14:
	.string	"Username contains invalid characters\n"
	.text
	.type	htdbm_valid_username, @function
htdbm_valid_username:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$64, %rax
	ja	.L53
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L54
.L53:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$24, %edx
	movl	$1, %esi
	movl	$.LC13, %edi
	call	fwrite
	movl	$22, %eax
	jmp	.L55
.L54:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L56
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC14, %edi
	call	fwrite
	movl	$22, %eax
	jmp	.L55
.L56:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	htdbm_valid_username, .-htdbm_valid_username
	.section	.rodata
	.align 8
.LC15:
	.string	"htdbm -- program for manipulating DBM password databases.\n\n"
	.align 8
.LC16:
	.string	"Usage: htdbm    [-cmdpstvx] [-TDBTYPE] database username\n"
	.align 8
.LC17:
	.string	"                -b[cmdptsv] [-TDBTYPE] database username password\n"
	.align 8
.LC18:
	.string	"                -n[mdpst]   username\n"
	.align 8
.LC19:
	.string	"                -nb[mdpst]  username password\n"
	.align 8
.LC20:
	.string	"                -v[mdps]    [-TDBTYPE] database username\n"
	.align 8
.LC21:
	.string	"                -vb[mdps]   [-TDBTYPE] database username password\n"
	.align 8
.LC22:
	.string	"                -x[mdps]    [-TDBTYPE] database username\n"
	.align 8
.LC23:
	.string	"                -l                       [-TDBTYPE] database\n"
.LC24:
	.string	"Options:\n"
	.align 8
.LC25:
	.string	"   -b   Use the password from the command line rather than prompting for it.\n"
	.align 8
.LC26:
	.string	"   -c   Create a new database.\n"
	.align 8
.LC27:
	.string	"   -n   Don't update database; display results on stdout.\n"
	.align 8
.LC28:
	.string	"   -m   Force MD5 encryption of the password (default).\n"
	.align 8
.LC29:
	.string	"   -d   Force CRYPT encryption of the password (now deprecated).\n"
	.align 8
.LC30:
	.string	"   -p   Do not encrypt the password (plaintext).\n"
	.align 8
.LC31:
	.string	"   -s   Force SHA encryption of the password.\n"
	.align 8
.LC32:
	.string	"   -T   DBM Type (SDBM|GDBM|DB|default).\n"
	.align 8
.LC33:
	.string	"   -l   Display usernames from database on stdout.\n"
	.align 8
.LC34:
	.string	"   -t   The last param is username comment.\n"
	.align 8
.LC35:
	.string	"   -v   Verify the username/password.\n"
	.align 8
.LC36:
	.string	"   -x   Remove the username record from database.\n"
	.text
	.type	htdbm_usage, @function
htdbm_usage:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	movl	$1, %esi
	movl	$.LC15, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC16, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	movl	$.LC17, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$37, %edx
	movl	$1, %esi
	movl	$.LC18, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	movl	$1, %esi
	movl	$.LC19, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	movl	$.LC21, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC22, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	movl	$1, %esi
	movl	$.LC23, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$9, %edx
	movl	$1, %esi
	movl	$.LC24, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$77, %edx
	movl	$1, %esi
	movl	$.LC25, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC26, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	movl	$.LC27, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	movl	$.LC28, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$49, %edx
	movl	$1, %esi
	movl	$.LC30, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$46, %edx
	movl	$1, %esi
	movl	$.LC31, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC32, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$51, %edx
	movl	$1, %esi
	movl	$.LC33, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC34, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC35, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC36, %edi
	call	fwrite
	movl	$2, %edi
	call	exit
	.cfi_endproc
.LFE14:
	.size	htdbm_usage, .-htdbm_usage
	.section	.rodata
	.align 8
.LC37:
	.string	"Unable to initialize htdbm terminating!\n"
.LC38:
	.string	"Error opening database %s\n"
.LC39:
	.string	"%s\n"
.LC40:
	.string	"Enter password        : "
.LC41:
	.string	"Password too long\n"
.LC42:
	.string	"Re-type password      : "
.LC43:
	.string	"Password verification error\n"
	.align 8
.LC44:
	.string	"The user '%s' could not be found in database\n"
	.align 8
.LC45:
	.string	"Password mismatch for user '%s'\n"
	.align 8
.LC46:
	.string	"Password validated for user '%s'\n"
	.align 8
.LC47:
	.string	"Cannot find user '%s' in database\n"
.LC48:
	.string	"modified"
.LC49:
	.string	"updated"
.LC50:
	.string	"created"
.LC51:
	.string	"Database %s %s.\n"
.LC52:
	.string	"%s:%s\n"
.LC53:
	.string	"%s:%s:%s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$872, %rsp
	.cfi_offset 3, -24
	movl	%edi, -868(%rbp)
	movq	%rsi, -880(%rbp)
	movl	$1, -28(%rbp)
	movl	$1, -32(%rbp)
	movl	$1, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -852(%rbp)
	movl	$0, -48(%rbp)
	movl	$2, -56(%rbp)
	leaq	-880(%rbp), %rcx
	leaq	-868(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$terminate, %edi
	call	atexit
	leaq	-72(%rbp), %rax
	movl	$h, %esi
	movq	%rax, %rdi
	call	htdbm_init
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L59
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC37, %edi
	call	fwrite
	leaq	-848(%rbp), %rcx
	movl	-60(%rbp), %eax
	movl	$256, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movl	$1, %edi
	call	exit
.L59:
	movl	-868(%rbp), %eax
	cmpl	$2, %eax
	jg	.L60
	call	htdbm_usage
.L60:
	movl	$1, -52(%rbp)
	jmp	.L61
.L82:
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L62
	jmp	.L63
.L62:
	jmp	.L64
.L81:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$84, %eax
	cmpl	$36, %eax
	ja	.L65
	movl	%eax, %eax
	movq	.L67(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L67:
	.quad	.L66
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L68
	.quad	.L69
	.quad	.L70
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L65
	.quad	.L71
	.quad	.L72
	.quad	.L73
	.quad	.L65
	.quad	.L74
	.quad	.L65
	.quad	.L65
	.quad	.L75
	.quad	.L76
	.quad	.L65
	.quad	.L77
	.quad	.L65
	.quad	.L78
	.text
.L68:
	movl	$1, -44(%rbp)
	movl	$0, -36(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L64
.L69:
	movq	h(%rip), %rax
	movl	$1, 56(%rax)
	jmp	.L64
.L73:
	movl	$0, -28(%rbp)
	movl	$4, -48(%rbp)
	subl	$1, -56(%rbp)
	jmp	.L64
.L71:
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
	movl	$3, -48(%rbp)
	movq	h(%rip), %rax
	movl	$1, 60(%rax)
	subl	$1, -56(%rbp)
	jmp	.L64
.L76:
	movl	$1, -40(%rbp)
	addl	$1, -56(%rbp)
	jmp	.L64
.L66:
	movq	h(%rip), %rbx
	addq	$1, -24(%rbp)
	movq	h(%rip), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 48(%rbx)
	jmp	.L79
.L80:
	addq	$1, -24(%rbp)
.L79:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L80
	subq	$1, -24(%rbp)
	jmp	.L64
.L77:
	movq	h(%rip), %rax
	movl	$1, 60(%rax)
	movl	$2, -48(%rbp)
	jmp	.L64
.L78:
	movl	$0, -36(%rbp)
	movl	$1, -48(%rbp)
	jmp	.L64
.L72:
	movq	h(%rip), %rax
	movl	$1, 64(%rax)
	jmp	.L64
.L74:
	movq	h(%rip), %rax
	movl	$0, 64(%rax)
	jmp	.L64
.L75:
	movq	h(%rip), %rax
	movl	$2, 64(%rax)
	jmp	.L64
.L70:
	movq	h(%rip), %rax
	movl	$3, 64(%rax)
	jmp	.L64
.L65:
	call	htdbm_usage
	nop
.L64:
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L81
	addl	$1, -52(%rbp)
.L61:
	movl	-868(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L82
.L63:
	movl	-868(%rbp), %eax
	subl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	je	.L83
	call	htdbm_usage
.L83:
	cmpl	$0, -28(%rbp)
	jne	.L84
	subl	$1, -52(%rbp)
	jmp	.L85
.L84:
	movq	h(%rip), %rbx
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	h(%rip), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 16(%rbx)
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_open
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L85
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	leaq	-848(%rbp), %rcx
	movl	-60(%rbp), %eax
	movl	$256, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	stderr(%rip), %rax
	leaq	-848(%rbp), %rdx
	movl	$.LC39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %edi
	call	exit
.L85:
	cmpl	$0, -32(%rbp)
	je	.L86
	movq	h(%rip), %rbx
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 24(%rbx)
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_valid_username
	testl	%eax, %eax
	je	.L86
	movl	$6, %edi
	call	exit
.L86:
	cmpl	$0, -44(%rbp)
	je	.L87
	movq	h(%rip), %rbx
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 32(%rbx)
.L87:
	cmpl	$0, -36(%rbp)
	je	.L88
	movq	$256, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC40, %edi
	call	apr_password_get
	testl	%eax, %eax
	je	.L89
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	movl	$.LC41, %edi
	call	fwrite
	movl	$5, %edi
	call	exit
.L89:
	movq	$256, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC42, %edi
	call	apr_password_get
	testl	%eax, %eax
	je	.L90
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$18, %edx
	movl	$1, %esi
	movl	$.LC41, %edi
	call	fwrite
	movl	$5, %edi
	call	exit
.L90:
	leaq	-592(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L91
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$28, %edx
	movl	$1, %esi
	movl	$.LC43, %edi
	call	fwrite
	movl	$3, %edi
	call	exit
.L91:
	movq	h(%rip), %rbx
	movq	-72(%rbp), %rax
	leaq	-336(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 32(%rbx)
.L88:
	cmpl	$0, -40(%rbp)
	je	.L92
	cmpl	$0, -44(%rbp)
	je	.L92
	movq	h(%rip), %rbx
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$3, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 40(%rbx)
	jmp	.L93
.L92:
	cmpl	$0, -40(%rbp)
	je	.L93
	movq	h(%rip), %rbx
	movq	-880(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	addq	$2, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 40(%rbx)
.L93:
	movl	-48(%rbp), %eax
	cmpl	$2, %eax
	je	.L95
	cmpl	$3, %eax
	je	.L96
	cmpl	$1, %eax
	je	.L97
	jmp	.L111
.L95:
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_verify
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L98
	cmpl	$2, -60(%rbp)
	jne	.L99
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$6, %edi
	call	exit
.L99:
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$3, %edi
	call	exit
.L98:
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L100
.L97:
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_del
	testl	%eax, %eax
	je	.L101
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$6, %edi
	call	exit
.L101:
	movq	h(%rip), %rax
	movq	$0, 24(%rax)
	movl	$1, -852(%rbp)
	jmp	.L100
.L96:
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_list
	jmp	.L100
.L111:
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_make
	nop
.L100:
	cmpl	$0, -28(%rbp)
	je	.L102
	movq	h(%rip), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L102
	movq	h(%rip), %rax
	leaq	-852(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	htdbm_save
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L103
	leaq	-848(%rbp), %rcx
	movl	-60(%rbp), %eax
	movl	$256, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movl	$1, %edi
	call	exit
.L103:
	movq	h(%rip), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L104
	movl	-852(%rbp), %eax
	testl	%eax, %eax
	je	.L105
	movl	$.LC48, %eax
	jmp	.L107
.L105:
	movl	$.LC49, %eax
	jmp	.L107
.L104:
	movl	$.LC50, %eax
.L107:
	movq	h(%rip), %rdx
	movq	16(%rdx), %rdx
	movq	stdout(%rip), %rdi
	movq	%rax, %rcx
	movl	$.LC51, %esi
	movl	$0, %eax
	call	fprintf
.L102:
	cmpl	$4, -48(%rbp)
	jne	.L108
	cmpl	$0, -40(%rbp)
	jne	.L109
	movq	h(%rip), %rax
	movq	32(%rax), %rcx
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L108
.L109:
	movq	h(%rip), %rax
	movq	40(%rax), %rsi
	movq	h(%rip), %rax
	movq	32(%rax), %rcx
	movq	h(%rip), %rax
	movq	24(%rax), %rdx
	movq	stderr(%rip), %rax
	movq	%rsi, %r8
	movl	$.LC53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L108:
	movq	h(%rip), %rax
	movq	%rax, %rdi
	call	htdbm_terminate
	movl	$0, %eax
	addq	$872, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.data
	.align 64
	.type	itoa64.5804, @object
	.size	itoa64.5804, 65
itoa64.5804:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

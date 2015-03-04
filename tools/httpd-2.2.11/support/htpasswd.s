	.file	"htpasswd.c"
	.comm	errfile,8,8
	.globl	ftemp
	.bss
	.align 8
	.type	ftemp, @object
	.size	ftemp, 8
ftemp:
	.zero	8
	.text
	.type	to64, @function
to64:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	andl	$63, %edx
	movzbl	itoa64.5685(%rdx), %edx
	movb	%dl, (%rax)
	shrq	$6, -16(%rbp)
.L2:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L3
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	to64, .-to64
	.type	generate_salt, @function
generate_salt:
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
	movq	$0, -8(%rbp)
	jmp	.L5
.L6:
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	cltq
	movzbl	tbl.5693(%rax), %eax
	movb	%al, (%rdx)
	addq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L6
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	generate_salt, .-generate_salt
	.section	.rodata
	.align 8
.LC2:
	.string	"Unable to generate random bytes: %pm\n"
	.text
	.type	seed_rand, @function
seed_rand:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_generate_random_bytes
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	je	.L8
	movq	errfile(%rip), %rax
	leaq	-8(%rbp), %rdx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	-8(%rbp), %eax
	jmp	.L10
.L8:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	srand
	movl	-8(%rbp), %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	seed_rand, .-seed_rand
	.type	putline, @function
putline:
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
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	putline, .-putline
	.section	.rodata
.LC3:
	.string	"New password: "
.LC4:
	.string	"password too long (>%lu)"
.LC5:
	.string	"Re-type new password: "
.LC6:
	.string	"password verification error"
.LC7:
	.string	"resultant record too long"
	.text
	.type	mkrecord, @function
mkrecord:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$728, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -696(%rbp)
	movq	%rsi, -704(%rbp)
	movq	%rdx, -712(%rbp)
	movq	%rcx, -720(%rbp)
	movl	%r8d, -724(%rbp)
	cmpq	$0, -720(%rbp)
	je	.L13
	movq	-720(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L14
.L13:
	movq	$256, -680(%rbp)
	leaq	-680(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	call	apr_password_get
	testl	%eax, %eax
	je	.L15
	movq	-712(%rbp), %rax
	leaq	-1(%rax), %rsi
	movq	-704(%rbp), %rax
	movl	$255, %ecx
	movl	$.LC4, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movl	$5, %eax
	jmp	.L26
.L15:
	movq	$256, -680(%rbp)
	leaq	-680(%rbp), %rdx
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	call	apr_password_get
	leaq	-656(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L17
	movq	-712(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_cpystrn
	movl	$3, %eax
	jmp	.L26
.L17:
	leaq	-400(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-656(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
.L14:
	movl	-724(%rbp), %eax
	cmpl	$2, %eax
	je	.L19
	cmpl	$3, %eax
	je	.L20
	testl	%eax, %eax
	je	.L21
	jmp	.L27
.L20:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %ecx
	leaq	-144(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_sha1_base64
	jmp	.L22
.L19:
	call	seed_rand
	testl	%eax, %eax
	je	.L23
	jmp	.L22
.L23:
	leaq	-672(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	generate_salt
	movb	$0, -664(%rbp)
	leaq	-144(%rbp), %rdx
	leaq	-672(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$120, %ecx
	movq	%rax, %rdi
	call	apr_md5_encode
	jmp	.L22
.L21:
	movq	-24(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	jmp	.L22
.L27:
	call	seed_rand
	testl	%eax, %eax
	je	.L24
	jmp	.L22
.L24:
	call	rand
	movslq	%eax, %rcx
	leaq	-672(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	to64
	movb	$0, -664(%rbp)
	leaq	-672(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	crypt
	movq	%rax, %rcx
	leaq	-144(%rbp), %rax
	movl	$119, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	nop
.L22:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-696(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rbx, %rax
	leaq	1(%rax), %rdx
	movq	-712(%rbp), %rax
	subq	$1, %rax
	cmpq	%rax, %rdx
	jbe	.L25
	movq	-712(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	apr_cpystrn
	movl	$5, %eax
	jmp	.L26
.L25:
	movq	-696(%rbp), %rdx
	movq	-704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-704(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	addq	%rdx, %rax
	movw	$58, (%rax)
	leaq	-144(%rbp), %rdx
	movq	-704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat
	movq	-704(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	movq	-704(%rbp), %rax
	addq	%rdx, %rax
	movw	$10, (%rax)
	movl	$0, %eax
.L26:
	addq	$728, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mkrecord, .-mkrecord
	.section	.rodata
.LC8:
	.string	"Usage:\n"
	.align 8
.LC9:
	.string	"\thtpasswd [-cmdpsD] passwordfile username\n"
	.align 8
.LC10:
	.string	"\thtpasswd -b[cmdpsD] passwordfile username password\n\n"
.LC11:
	.string	"\thtpasswd -n[mdps] username\n"
	.align 8
.LC12:
	.string	"\thtpasswd -nb[mdps] username password\n"
.LC13:
	.string	" -c  Create a new file.\n"
	.align 8
.LC14:
	.string	" -n  Don't update file; display results on stdout.\n"
	.align 8
.LC15:
	.string	" -m  Force MD5 encryption of the password.\n"
	.align 8
.LC16:
	.string	" -d  Force CRYPT encryption of the password (default).\n"
	.align 8
.LC17:
	.string	" -p  Do not encrypt the password (plaintext).\n"
	.align 8
.LC18:
	.string	" -s  Force SHA encryption of the password.\n"
	.align 8
.LC19:
	.string	" -b  Use the password from the command line rather than prompting for it.\n"
	.align 8
.LC20:
	.string	" -D  Delete the specified user.\n"
	.align 8
.LC21:
	.string	"On Windows, NetWare and TPF systems the '-m' flag is used by default.\n"
	.align 8
.LC22:
	.string	"On all other systems, the '-p' flag will probably not work.\n"
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
	movq	errfile(%rip), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
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
	movq	errfile(%rip), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	errfile(%rip), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$2, %edi
	call	exit
	.cfi_endproc
.LFE7:
	.size	usage, .-usage
	.type	accessible, @function
accessible:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rsi
	leaq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$4095, %ecx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L30
	movl	$0, %eax
	jmp	.L32
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	accessible, .-accessible
	.type	exists, @function
exists:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32768, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L34
	movl	-112(%rbp), %eax
	cmpl	$1, %eax
	jne	.L34
	movl	$1, %eax
	jmp	.L36
.L34:
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	exists, .-exists
	.type	terminate, @function
terminate:
.LFB10:
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
.LFE10:
	.size	terminate, .-terminate
	.section	.rodata
	.align 8
.LC23:
	.string	"%s: -c and -n options conflict\n"
	.align 8
.LC24:
	.string	"%s: -c and -D options conflict\n"
	.align 8
.LC25:
	.string	"%s: -n and -D options conflict\n"
.LC26:
	.string	"%s: filename too long\n"
.LC27:
	.string	"%s: username too long (> %d)\n"
	.align 8
.LC28:
	.string	"%s: username contains illegal character '%c'\n"
.LC29:
	.string	"%s: password too long (> %d)\n"
	.text
	.type	check_args, @function
check_args:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$2, -12(%rbp)
	cmpl	$2, -28(%rbp)
	jg	.L39
	call	usage
.L39:
	movl	$1, -16(%rbp)
	jmp	.L40
.L53:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L41
	jmp	.L42
.L41:
	jmp	.L43
.L52:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$99, %al
	jne	.L44
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L44:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$110, %al
	jne	.L45
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	subl	$1, -12(%rbp)
	jmp	.L43
.L45:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$109, %al
	jne	.L46
	movq	-48(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L43
.L46:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$115, %al
	jne	.L47
	movq	-48(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L43
.L47:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$112, %al
	jne	.L48
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L43
.L48:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$100, %al
	jne	.L49
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L43
.L49:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$98, %al
	jne	.L50
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	addl	$1, -12(%rbp)
	jmp	.L43
.L50:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$68, %al
	jne	.L51
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L43
.L51:
	call	usage
.L43:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L52
	addl	$1, -16(%rbp)
.L40:
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L53
.L42:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L54
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L54
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$2, %edi
	call	exit
.L54:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L55
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L55
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$2, %edi
	call	exit
.L55:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L56
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L56
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$2, %edi
	call	exit
.L56:
	movl	-28(%rbp), %eax
	subl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.L57
	call	usage
.L57:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L58
	subl	$1, -16(%rbp)
	jmp	.L59
.L58:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$4095, %rax
	jbe	.L60
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$5, %edi
	call	exit
.L60:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$255, %rax
	jbe	.L59
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$255, %ecx
	movl	$.LC27, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$5, %edi
	call	exit
.L59:
	movl	-16(%rbp), %eax
	cltq
	addq	$1, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L61
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$6, %edi
	call	exit
.L61:
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L38
	movl	-16(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$255, %rax
	jbe	.L63
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$256, %ecx
	movl	$.LC29, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$5, %edi
	call	exit
.L63:
	movl	-16(%rbp), %eax
	cltq
	addq	$2, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	movq	%rdx, (%rax)
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	check_args, .-check_args
	.section	.rodata
	.align 8
.LC30:
	.string	"Warning: storing passwords as plain text might just not work on this platform.\n"
	.align 8
.LC31:
	.string	"%s: cannot open file %s for read/write access\n"
	.align 8
.LC32:
	.string	"%s: cannot modify file %s; use '-c' to create it\n"
.LC33:
	.string	"%s: cannot create file %s\n"
.LC34:
	.string	"%s: %s\n"
	.align 8
.LC35:
	.string	"%s: could not determine temp dir\n"
.LC36:
	.string	"%s/%s"
	.align 8
.LC37:
	.string	"%s: unable to create temporary file %s\n"
.LC38:
	.string	"%s: unable to read file %s\n"
	.align 8
.LC39:
	.string	"%s: The file %s does not appear to be a valid htpasswd file.\n"
.LC40:
	.string	"Updating "
.LC41:
	.string	"Deleting "
.LC42:
	.string	"Adding "
.LC43:
	.string	"User %s not found\n"
.LC44:
	.string	"password for user %s\n"
.LC45:
	.string	"%s: unable to update file %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$912, %rsp
	movl	%edi, -900(%rbp)
	movq	%rsi, -912(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -584(%rbp)
	movabsq	$7239381865414554728, %rax
	movq	%rax, -608(%rbp)
	movabsq	$6365935029766157358, %rax
	movq	%rax, -600(%rbp)
	movl	$5789784, -592(%rbp)
	movl	$0, -12(%rbp)
	movl	$1, -884(%rbp)
	movl	$0, -888(%rbp)
	movl	$0, -16(%rbp)
	leaq	-912(%rbp), %rcx
	leaq	-900(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$terminate, %edi
	call	atexit
	leaq	-896(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-896(%rbp), %rax
	movq	%rax, %rsi
	movl	$errfile, %edi
	call	apr_file_open_stderr
	movq	-912(%rbp), %rdx
	movl	-900(%rbp), %esi
	movq	-896(%rbp), %rax
	leaq	-584(%rbp), %r9
	leaq	-888(%rbp), %r8
	leaq	-884(%rbp), %rcx
	leaq	-568(%rbp), %rdi
	pushq	%rdi
	leaq	-576(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	check_args
	addq	$16, %rsp
	movl	-884(%rbp), %eax
	testl	%eax, %eax
	jne	.L65
	movq	errfile(%rip), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L65:
	movl	-888(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L66
	movq	-896(%rbp), %rdx
	movq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	exists
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L67
	movq	-576(%rbp), %rcx
	movq	-896(%rbp), %rax
	movl	$9, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	accessible
	testl	%eax, %eax
	jne	.L66
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L67:
	movl	-888(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L68
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L68:
	movq	-576(%rbp), %rcx
	movq	-896(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	accessible
	testl	%eax, %eax
	jne	.L66
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L66:
	movl	-888(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L69
	movl	-884(%rbp), %ecx
	movq	-568(%rbp), %rdx
	movq	-584(%rbp), %rax
	leaq	-304(%rbp), %rsi
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movl	$255, %edx
	movq	%rax, %rdi
	call	mkrecord
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L70
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	leaq	-304(%rbp), %rcx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	exit
.L70:
	movl	-888(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L69
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$0, %edi
	call	exit
.L69:
	movq	-896(%rbp), %rdx
	leaq	-616(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_temp_dir_get
	testl	%eax, %eax
	je	.L71
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L71:
	movq	-616(%rbp), %rdx
	movq	-896(%rbp), %rax
	leaq	-608(%rbp), %rcx
	movl	$.LC36, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -616(%rbp)
	movq	-896(%rbp), %rdx
	movq	-616(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$ftemp, %edi
	call	apr_file_mktemp
	testl	%eax, %eax
	je	.L72
	movq	-616(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L72:
	cmpl	$0, -16(%rbp)
	je	.L73
	movl	-888(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L73
	movq	-896(%rbp), %rdx
	movq	-576(%rbp), %rsi
	leaq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$129, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L74
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L74:
	jmp	.L75
.L84:
	leaq	-560(%rbp), %rdx
	leaq	-880(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leaq	-880(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L76
.L77:
	addq	$1, -8(%rbp)
.L76:
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
	jne	.L77
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L78
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L79
.L78:
	movq	ftemp(%rip), %rax
	leaq	-560(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	jmp	.L75
.L79:
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L80
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-584(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L82
	jmp	.L89
.L80:
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$7, %edi
	call	exit
.L89:
	movq	ftemp(%rip), %rax
	leaq	-560(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	jmp	.L75
.L82:
	movl	-888(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L83
	movq	errfile(%rip), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	ftemp(%rip), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	addl	$1, -12(%rbp)
	jmp	.L75
.L83:
	movq	errfile(%rip), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addl	$1, -12(%rbp)
.L75:
	movq	-40(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	testl	%eax, %eax
	je	.L84
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L73:
	cmpl	$0, -12(%rbp)
	jne	.L85
	movl	-888(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L85
	movq	errfile(%rip), %rax
	movl	$.LC42, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	ftemp(%rip), %rax
	leaq	-304(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	putline
	jmp	.L86
.L85:
	cmpl	$0, -12(%rbp)
	jne	.L86
	movl	-888(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L86
	movq	-584(%rbp), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$0, %edi
	call	exit
.L86:
	movq	-584(%rbp), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-896(%rbp), %rdx
	movq	-576(%rbp), %rsi
	movq	-616(%rbp), %rax
	movq	%rdx, %rcx
	movl	$4096, %edx
	movq	%rax, %rdi
	call	apr_file_copy
	testl	%eax, %eax
	je	.L87
	movq	-576(%rbp), %rcx
	movq	-912(%rbp), %rax
	movq	(%rax), %rdx
	movq	errfile(%rip), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$1, %edi
	call	exit
.L87:
	movq	ftemp(%rip), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.data
	.align 64
	.type	itoa64.5685, @object
	.size	itoa64.5685, 65
itoa64.5685:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.align 64
	.type	tbl.5693, @object
	.size	tbl.5693, 65
tbl.5693:
	.string	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1078984704
	.align 8
.LC1:
	.long	0
	.long	1105199104
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

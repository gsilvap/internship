	.file	"util.c"
	.section	.rodata
	.align 64
	.type	test_char_table, @object
	.size	test_char_table, 256
test_char_table:
	.byte	32
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	63
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	62
	.byte	14
	.byte	0
	.byte	31
	.byte	6
	.byte	1
	.byte	38
	.byte	1
	.byte	1
	.byte	9
	.byte	9
	.byte	1
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	15
	.byte	15
	.byte	8
	.byte	15
	.byte	15
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	31
	.byte	15
	.byte	7
	.byte	0
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	15
	.byte	39
	.byte	15
	.byte	1
	.byte	62
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.byte	54
	.text
	.globl	ap_field_noparam
	.type	ap_field_noparam, @function
ap_field_noparam:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L3
.L4:
	jmp	.L5
.L7:
	subq	$1, -8(%rbp)
.L5:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L6
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L7
.L6:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_field_noparam, .-ap_field_noparam
	.globl	ap_ht_time
	.type	ap_ht_time, @function
ap_ht_time:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16496, %rsp
	movq	%rdi, -16472(%rbp)
	movq	%rsi, -16480(%rbp)
	movq	%rdx, -16488(%rbp)
	movl	%ecx, -16492(%rbp)
	cmpl	$0, -16492(%rbp)
	je	.L9
	movq	-16480(%rbp), %rdx
	leaq	-16464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_gmt
	leaq	-16416(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16488(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L10
.L17:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L11
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$90, %eax
	je	.L13
	cmpl	$122, %eax
	je	.L14
	cmpl	$37, %eax
	jne	.L12
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L12
.L13:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$71, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$77, (%rax)
	movq	-16(%rbp), %rax
	movb	$84, (%rax)
	addq	$1, -8(%rbp)
	jmp	.L12
.L14:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$43, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$48, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$48, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$48, (%rax)
	movq	-16(%rbp), %rax
	movb	$48, (%rax)
	addq	$1, -8(%rbp)
	nop
.L12:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
.L10:
	leaq	-16416(%rbp), %rax
	addq	$8186, %rax
	cmpq	%rax, -16(%rbp)
	jnb	.L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L17
.L16:
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	leaq	-16416(%rbp), %rax
	movq	%rax, -16488(%rbp)
	jmp	.L18
.L9:
	movq	-16480(%rbp), %rdx
	leaq	-16464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
.L18:
	leaq	-16464(%rbp), %rcx
	movq	-16488(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	leaq	-8224(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	apr_strftime
	movb	$0, -33(%rbp)
	leaq	-8224(%rbp), %rdx
	movq	-16472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_ht_time, .-ap_ht_time
	.globl	ap_strcmp_match
	.type	ap_strcmp_match, @function
ap_strcmp_match:
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
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L21
.L30:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L22
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L22
	movl	$-1, %eax
	jmp	.L23
.L22:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L24
.L25:
	addl	$1, -8(%rbp)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L25
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L26
	movl	$0, %eax
	jmp	.L23
.L26:
	jmp	.L27
.L28:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_strcmp_match
	movl	%eax, -12(%rbp)
	cmpl	$1, -12(%rbp)
	je	.L27
	movl	-12(%rbp), %eax
	jmp	.L23
.L27:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	movl	$-1, %eax
	jmp	.L23
.L24:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	je	.L29
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
	je	.L29
	movl	$1, %eax
	jmp	.L23
.L29:
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
.L21:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L30
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_strcmp_match, .-ap_strcmp_match
	.globl	ap_strcasecmp_match
	.type	ap_strcasecmp_match, @function
ap_strcasecmp_match:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L32
.L41:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L33
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L33
	movl	$-1, %eax
	jmp	.L34
.L33:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L35
.L36:
	addl	$1, -24(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L36
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L37
	movl	$0, %eax
	jmp	.L34
.L37:
	jmp	.L38
.L39:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_strcasecmp_match
	movl	%eax, -28(%rbp)
	cmpl	$1, -28(%rbp)
	je	.L38
	movl	-28(%rbp), %eax
	jmp	.L34
.L38:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L39
	movl	$-1, %eax
	jmp	.L34
.L35:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	je	.L40
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	je	.L40
	movl	$1, %eax
	jmp	.L34
.L40:
	addl	$1, -24(%rbp)
	addl	$1, -20(%rbp)
.L32:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L41
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	movzbl	%al, %eax
.L34:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_strcasecmp_match, .-ap_strcasecmp_match
	.globl	ap_os_is_path_absolute
	.type	ap_os_is_path_absolute, @function
ap_os_is_path_absolute:
.LFB6:
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
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_filepath_root
	testl	%eax, %eax
	jne	.L43
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	je	.L44
.L43:
	movl	$0, %eax
	jmp	.L46
.L44:
	movl	$1, %eax
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_os_is_path_absolute, .-ap_os_is_path_absolute
	.globl	ap_is_matchexp
	.type	ap_is_matchexp, @function
ap_is_matchexp:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movl	$0, %ebx
	jmp	.L48
.L52:
	movslq	%ebx, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L49
	movslq	%ebx, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$63, %al
	jne	.L50
.L49:
	movl	$1, %eax
	jmp	.L51
.L50:
	addl	$1, %ebx
.L48:
	movslq	%ebx, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L52
	movl	$0, %eax
.L51:
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_is_matchexp, .-ap_is_matchexp
	.type	regex_cleanup, @function
regex_cleanup:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_regfree
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	regex_cleanup, .-regex_cleanup
	.globl	ap_pregcomp
	.type	ap_pregcomp, @function
ap_pregcomp:
.LFB9:
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
	movq	-24(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_regcomp
	testl	%eax, %eax
	je	.L56
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$regex_cleanup, %edx
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-8(%rbp), %rax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_pregcomp, .-ap_pregcomp
	.globl	ap_pregfree
	.type	ap_pregfree, @function
ap_pregfree:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_regfree
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$regex_cleanup, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pool_cleanup_kill
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_pregfree, .-ap_pregfree
	.globl	ap_strcasestr
	.type	ap_strcasestr, @function
ap_strcasestr:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L60
	movq	-40(%rbp), %rax
	jmp	.L61
.L60:
	jmp	.L62
.L64:
	addq	$1, -40(%rbp)
.L62:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L63
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	jne	.L64
.L63:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L65
	movl	$0, %eax
	jmp	.L61
.L65:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
	jmp	.L66
.L68:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L67
	movq	-40(%rbp), %rax
	jmp	.L61
.L67:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L66:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	je	.L68
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L69
	nop
	movq	-40(%rbp), %rax
	jmp	.L61
.L69:
	addq	$1, -40(%rbp)
	jmp	.L60
.L61:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_strcasestr, .-ap_strcasestr
	.globl	ap_stripprefix
	.type	ap_stripprefix, @function
ap_stripprefix:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L72
	movq	-24(%rbp), %rax
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L76:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %ecx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %eax
	cmpb	%al, %cl
	je	.L74
	movq	-24(%rbp), %rax
	jmp	.L73
.L74:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L75
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L76
.L75:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L77
	movq	-8(%rbp), %rax
	jmp	.L73
.L77:
	movq	-24(%rbp), %rax
.L73:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_stripprefix, .-ap_stripprefix
	.globl	ap_pregsub
	.type	ap_pregsub, @function
ap_pregsub:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.L79
	movl	$0, %eax
	jmp	.L80
.L79:
	cmpq	$0, -96(%rbp)
	jne	.L81
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L80
.L81:
	movl	$0, -52(%rbp)
	jmp	.L82
.L89:
	cmpb	$38, -33(%rbp)
	jne	.L83
	movq	$0, -48(%rbp)
	jmp	.L84
.L83:
	cmpb	$36, -33(%rbp)
	jne	.L85
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L85
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -48(%rbp)
	jmp	.L84
.L85:
	movq	$10, -48(%rbp)
.L84:
	cmpq	$9, -48(%rbp)
	jbe	.L86
	cmpb	$92, -33(%rbp)
	jne	.L87
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	je	.L88
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L87
.L88:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
.L87:
	addl	$1, -52(%rbp)
	jmp	.L82
.L86:
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L82
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L82
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, -52(%rbp)
.L82:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$0, -33(%rbp)
	jne	.L89
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rbx
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L90
.L97:
	cmpb	$38, -33(%rbp)
	jne	.L91
	movq	$0, -48(%rbp)
	jmp	.L92
.L91:
	cmpb	$36, -33(%rbp)
	jne	.L93
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L93
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	movq	%rax, -48(%rbp)
	jmp	.L92
.L93:
	movq	$10, -48(%rbp)
.L92:
	cmpq	$9, -48(%rbp)
	jbe	.L94
	cmpb	$92, -33(%rbp)
	jne	.L95
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	je	.L96
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L95
.L96:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
.L95:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	-33(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L90
.L94:
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L90
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jge	.L90
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %edx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-104(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, -32(%rbp)
.L90:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
	cmpb	$0, -33(%rbp)
	jne	.L97
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
.L80:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_pregsub, .-ap_pregsub
	.globl	ap_getparents
	.type	ap_getparents, @function
ap_getparents:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L99
.L101:
	addq	$1, -24(%rbp)
.L99:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L100
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L101
.L100:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L102
.L105:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L103
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L103
	cmpl	$0, -28(%rbp)
	je	.L104
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L103
.L104:
	addl	$2, -28(%rbp)
	jmp	.L102
.L103:
	movl	-32(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rcx)
.L102:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L105
	cmpl	$1, -32(%rbp)
	jne	.L106
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L106
	subl	$1, -32(%rbp)
	jmp	.L107
.L106:
	cmpl	$1, -32(%rbp)
	jle	.L107
	movl	-32(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L107
	movl	-32(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L107
	subl	$1, -32(%rbp)
.L107:
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.L108
.L118:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L109
	movl	-28(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L109
	movl	-28(%rbp), %eax
	cltq
	leaq	2(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L109
	cmpl	$0, -28(%rbp)
	je	.L110
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L109
.L110:
	movl	-28(%rbp), %eax
	leal	3(%rax), %r12d
	subl	$2, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L111
	jmp	.L112
.L114:
	subl	$1, -28(%rbp)
.L112:
	cmpl	$0, -28(%rbp)
	js	.L113
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L114
.L113:
	addl	$1, -28(%rbp)
	jmp	.L115
.L111:
	movl	$0, -28(%rbp)
.L115:
	movl	-28(%rbp), %ebx
	jmp	.L116
.L117:
	addl	$1, %ebx
	addl	$1, %r12d
.L116:
	movslq	%ebx, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movslq	%r12d, %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L117
	jmp	.L108
.L109:
	addl	$1, -28(%rbp)
.L108:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L118
	cmpl	$2, -28(%rbp)
	jne	.L119
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L119
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L119
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L98
.L119:
	cmpl	$2, -28(%rbp)
	jle	.L98
	movl	-28(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L98
	movl	-28(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L98
	movl	-28(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L98
	subl	$4, -28(%rbp)
	cmpl	$0, -28(%rbp)
	js	.L121
	jmp	.L122
.L124:
	subl	$1, -28(%rbp)
.L122:
	cmpl	$0, -28(%rbp)
	js	.L123
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L124
.L123:
	addl	$1, -28(%rbp)
	jmp	.L125
.L121:
	movl	$0, -28(%rbp)
.L125:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L98:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_getparents, .-ap_getparents
	.globl	ap_no2slash
	.type	ap_no2slash, @function
ap_no2slash:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L127
.L130:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L128
.L129:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L129
	jmp	.L127
.L128:
	addq	$1, -16(%rbp)
.L127:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L130
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_no2slash, .-ap_no2slash
	.globl	ap_make_dirstr_prefix
	.type	ap_make_dirstr_prefix, @function
ap_make_dirstr_prefix:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L132
	movq	-8(%rbp), %rax
	movb	$47, (%rax)
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L133
.L132:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L134
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L135
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L135
.L134:
	movq	-8(%rbp), %rax
	movb	$47, (%rax)
	nop
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	jmp	.L133
.L135:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L132
.L133:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_make_dirstr_prefix, .-ap_make_dirstr_prefix
	.section	.rodata
.LC0:
	.string	""
	.text
	.globl	ap_make_dirstr_parent
	.type	ap_make_dirstr_parent, @function
ap_make_dirstr_parent:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L138
	movq	-40(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L139
.L138:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_make_dirstr_parent, .-ap_make_dirstr_parent
	.globl	ap_count_dirs
	.type	ap_count_dirs, @function
ap_count_dirs:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movl	$0, %ebx
	movl	$0, %r12d
	jmp	.L141
.L143:
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L142
	addl	$1, %r12d
.L142:
	addl	$1, %ebx
.L141:
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L143
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_count_dirs, .-ap_count_dirs
	.globl	ap_getword_nc
	.type	ap_getword_nc, @function
ap_getword_nc:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_getword_nc, .-ap_getword_nc
	.globl	ap_getword
	.type	ap_getword, @function
ap_getword:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L148
.L150:
	addq	$1, -8(%rbp)
.L148:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-52(%rbp), %al
	je	.L149
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L150
.L149:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	cmpb	$0, -52(%rbp)
	je	.L151
	jmp	.L152
.L153:
	addq	$1, -8(%rbp)
.L152:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-52(%rbp), %al
	je	.L153
.L151:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_getword, .-ap_getword
	.globl	ap_getword_white_nc
	.type	ap_getword_white_nc, @function
ap_getword_white_nc:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_white
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_getword_white_nc, .-ap_getword_white_nc
	.globl	ap_getword_white
	.type	ap_getword_white, @function
ap_getword_white:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L158
.L160:
	addq	$1, -8(%rbp)
.L158:
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
	jne	.L159
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L160
.L159:
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L161
.L162:
	addq	$1, -8(%rbp)
.L161:
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
	jne	.L162
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_getword_white, .-ap_getword_white
	.globl	ap_getword_nulls_nc
	.type	ap_getword_nulls_nc, @function
ap_getword_nulls_nc:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword_nulls
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_getword_nulls_nc, .-ap_getword_nulls_nc
	.globl	ap_getword_nulls
	.type	ap_getword_nulls, @function
ap_getword_nulls:
.LFB24:
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
	movq	%rsi, -48(%rbp)
	movl	%edx, %eax
	movb	%al, -52(%rbp)
	movsbl	-52(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L167
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	(%rbx,%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L168
.L167:
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -32(%rbp)
	addq	$1, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
.L168:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_getword_nulls, .-ap_getword_nulls
	.type	substring_conf, @function
substring_conf:
.LFB25:
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
	movl	%ecx, %eax
	movb	%al, -56(%rbp)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L170
.L174:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L171
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	.L172
	cmpb	$0, -56(%rbp)
	je	.L171
	movl	-12(%rbp), %eax
	cltq
	leaq	1(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	-56(%rbp), %al
	jne	.L171
.L172:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L173
.L171:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %edx
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L173:
	addl	$1, -12(%rbp)
.L170:
	movl	-12(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L174
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	substring_conf, .-substring_conf
	.globl	ap_getword_conf_nc
	.type	ap_getword_conf_nc, @function
ap_getword_conf_nc:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_getword_conf_nc, .-ap_getword_conf_nc
	.globl	ap_getword_conf
	.type	ap_getword_conf, @function
ap_getword_conf:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L179
.L181:
	addq	$1, -8(%rbp)
.L179:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L180
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
	jne	.L181
.L180:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L182
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$.LC0, %eax
	jmp	.L183
.L182:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -25(%rbp)
	cmpb	$34, -25(%rbp)
	je	.L184
	cmpb	$39, -25(%rbp)
	jne	.L185
.L184:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.L186
.L190:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L187
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L187
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	je	.L188
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L187
.L188:
	addq	$2, -16(%rbp)
	jmp	.L186
.L187:
	addq	$1, -16(%rbp)
.L186:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L189
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	jne	.L190
.L189:
	movsbl	-25(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	subl	$1, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	substring_conf
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-25(%rbp), %al
	jne	.L191
	addq	$1, -16(%rbp)
	jmp	.L192
.L191:
	jmp	.L192
.L185:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L193
.L195:
	addq	$1, -16(%rbp)
.L193:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L194
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
	je	.L195
.L194:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	substring_conf
	movq	%rax, -24(%rbp)
.L192:
	jmp	.L196
.L198:
	addq	$1, -16(%rbp)
.L196:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L197
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
	jne	.L198
.L197:
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_getword_conf, .-ap_getword_conf
	.globl	ap_resolve_env
	.type	ap_resolve_env, @function
ap_resolve_env:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L200
	movq	-208(%rbp), %rax
	jmp	.L217
.L200:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -36(%rbp)
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	leaq	-192(%rbp), %rdx
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rdx
	movq	-208(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.L214:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L202
	cmpl	$4, -36(%rbp)
	ja	.L203
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	leaq	-192(%rbp), %rdx
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	jmp	.L204
.L203:
	movq	-200(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
.L204:
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.L202:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$36, %al
	jne	.L205
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$123, %al
	jne	.L206
	movq	-32(%rbp), %rax
	movl	$125, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L206
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	subq	$2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	leaq	2(%rax), %rcx
	movq	-200(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, %rdi
	call	getenv
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L207
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -48(%rbp)
	jmp	.L208
.L207:
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -48(%rbp)
.L208:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.L210
.L206:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	$1, 16(%rax)
	addq	$1, -48(%rbp)
	jmp	.L210
.L205:
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-32(%rbp), %rax
	movl	$36, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 8(%rax)
	cmpq	$0, -32(%rbp)
	je	.L211
	movq	-32(%rbp), %rdx
	movq	-208(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	jmp	.L212
.L211:
	movq	-56(%rbp), %rdx
	movq	-208(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
.L212:
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -48(%rbp)
.L210:
	cmpq	$0, -32(%rbp)
	je	.L213
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L214
.L213:
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.L216:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L215
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -24(%rbp)
.L215:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L216
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
.L217:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_resolve_env, .-ap_resolve_env
	.globl	ap_cfg_closefile
	.type	ap_cfg_closefile, @function
ap_cfg_closefile:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L219
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L220
.L219:
	movl	$0, %eax
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	ap_cfg_closefile, .-ap_cfg_closefile
	.type	cfg_close, @function
cfg_close:
.LFB30:
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
	movq	%rax, %rdi
	call	apr_file_close
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	cfg_close, .-cfg_close
	.type	cfg_getch, @function
cfg_getch:
.LFB31:
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
	movq	-8(%rbp), %rdx
	leaq	-9(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_getc
	testl	%eax, %eax
	jne	.L225
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	jmp	.L227
.L225:
	movl	$-1, %eax
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	cfg_getch, .-cfg_getch
	.type	cfg_getstr, @function
cfg_getstr:
.LFB32:
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
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_file_gets
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L229
	movq	-24(%rbp), %rax
	jmp	.L230
.L229:
	movl	$0, %eax
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	cfg_getstr, .-cfg_getstr
	.section	.rodata
	.align 8
.LC1:
	.string	"Internal error: pcfg_openfile() called with NULL filename"
.LC2:
	.string	"util.c"
.LC3:
	.string	"/dev/null"
	.align 8
.LC4:
	.string	"Access to file %s denied by server: not a regular file"
	.text
	.globl	ap_pcfg_openfile
	.type	ap_pcfg_openfile, @function
ap_pcfg_openfile:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.L232
	movl	$.LC1, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$899, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$9, %eax
	jmp	.L237
.L232:
	movq	-160(%rbp), %rdx
	movq	-168(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$129, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L234
	movl	-4(%rbp), %eax
	jmp	.L237
.L234:
	movq	-24(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$32768, %esi
	movq	%rax, %rdi
	call	apr_file_info_get
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L235
	movl	-4(%rbp), %eax
	jmp	.L237
.L235:
	movl	-128(%rbp), %eax
	cmpl	$1, %eax
	je	.L236
	movq	-168(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L236
	subq	$8, %rsp
	pushq	-168(%rbp)
	movl	$.LC4, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$925, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$9, %eax
	jmp	.L237
.L236:
	movq	-160(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$cfg_getch, (%rax)
	movq	-16(%rbp), %rax
	movq	$cfg_getstr, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$cfg_close, 16(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-152(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ap_pcfg_openfile, .-ap_pcfg_openfile
	.globl	ap_pcfg_open_custom
	.type	ap_pcfg_open_custom, @function
ap_pcfg_open_custom:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ap_pcfg_open_custom, .-ap_pcfg_open_custom
	.globl	ap_cfg_getc
	.type	ap_cfg_getc, @function
ap_cfg_getc:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %ebx
	cmpl	$10, %ebx
	jne	.L241
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
.L241:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ap_cfg_getc, .-ap_cfg_getc
	.globl	ap_cfg_getline
	.type	ap_cfg_getline, @function
ap_cfg_getline:
.LFB36:
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
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L244
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
.L254:
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	testq	%rax, %rax
	jne	.L245
	movl	$1, %eax
	jmp	.L246
.L245:
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.L247
.L249:
	addq	$1, -40(%rbp)
.L247:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.L248
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L249
.L248:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L250
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L250
	subq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L251
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L251
	subq	$1, -40(%rbp)
.L251:
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L250
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L250
	subq	$1, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jbe	.L252
	movq	-40(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	.L253
.L252:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L254
.L253:
	jmp	.L255
.L256:
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-40(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -40(%rbp)
.L255:
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-40(%rbp), %rax
	jbe	.L250
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L256
.L250:
	nop
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L257
.L258:
	addq	$1, -24(%rbp)
.L257:
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
	jne	.L258
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L259
.L261:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L259:
	subq	$1, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L260
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L261
.L260:
	movq	-24(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.L262
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
.L263:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L263
.L262:
	movl	$0, %eax
	jmp	.L246
.L244:
	movl	$0, %ebx
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.L264:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r12d
	cmpl	$9, %r12d
	je	.L264
	cmpl	$32, %r12d
	je	.L264
	cmpl	$-1, %r12d
	jne	.L265
	movl	$1, %eax
	jmp	.L246
.L265:
	cmpq	$1, -80(%rbp)
	ja	.L266
	movl	$1, %eax
	jmp	.L246
.L266:
	cmpl	$9, %r12d
	je	.L267
	cmpl	$32, %r12d
	jne	.L268
.L267:
	movq	%rbx, %rax
	leaq	1(%rax), %rbx
	movq	-72(%rbp), %rdx
	addq	%rdx, %rax
	movb	$32, (%rax)
	jmp	.L269
.L270:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r12d
.L269:
	cmpl	$9, %r12d
	je	.L270
	cmpl	$32, %r12d
	je	.L270
.L268:
	cmpl	$13, %r12d
	jne	.L271
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r12d
.L271:
	cmpl	$10, %r12d
	jne	.L272
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 40(%rax)
.L272:
	cmpl	$-1, %r12d
	je	.L273
	cmpl	$4, %r12d
	je	.L273
	cmpl	$10, %r12d
	je	.L273
	movq	-80(%rbp), %rax
	subq	$2, %rax
	cmpq	%rbx, %rax
	ja	.L274
.L273:
	testq	%rbx, %rbx
	je	.L275
	leaq	-1(%rbx), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L275
	subq	$1, %rbx
	testq	%rbx, %rbx
	je	.L276
	leaq	-1(%rbx), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	.L275
.L276:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r12d
	jmp	.L277
.L275:
	jmp	.L278
.L280:
	subq	$1, %rbx
.L278:
	testq	%rbx, %rbx
	je	.L279
	call	__ctype_b_loc
	movq	(%rax), %rax
	leaq	-1(%rbx), %rcx
	movq	-72(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L280
.L279:
	movq	-72(%rbp), %rax
	addq	%rbx, %rax
	movb	$0, (%rax)
	movl	$0, %eax
	jmp	.L246
.L274:
	movq	-72(%rbp), %rax
	addq	%rbx, %rax
	movl	%r12d, %edx
	movb	%dl, (%rax)
	addq	$1, %rbx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, %r12d
.L277:
	jmp	.L266
.L246:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ap_cfg_getline, .-ap_cfg_getline
	.globl	ap_size_list_item
	.type	ap_size_list_item, @function
ap_size_list_item:
.LFB37:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L282
.L283:
	addq	$1, -8(%rbp)
.L282:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L283
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
	jne	.L283
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L284
.L297:
	cmpl	$0, -12(%rbp)
	je	.L285
	movl	$0, -12(%rbp)
	jmp	.L286
.L285:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$40, %eax
	je	.L288
	cmpl	$40, %eax
	jg	.L289
	cmpl	$34, %eax
	je	.L290
	jmp	.L286
.L289:
	cmpl	$41, %eax
	je	.L291
	cmpl	$92, %eax
	je	.L292
	jmp	.L286
.L292:
	movl	$1, -12(%rbp)
	jmp	.L286
.L290:
	cmpl	$0, -20(%rbp)
	jne	.L293
	cmpl	$0, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	jmp	.L286
.L293:
	jmp	.L286
.L288:
	cmpl	$0, -16(%rbp)
	jne	.L294
	addl	$1, -20(%rbp)
	jmp	.L286
.L294:
	jmp	.L286
.L291:
	cmpl	$0, -20(%rbp)
	je	.L295
	subl	$1, -20(%rbp)
	jmp	.L302
.L295:
.L302:
	nop
.L286:
	addq	$1, -8(%rbp)
.L284:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L296
	cmpl	$0, -12(%rbp)
	jne	.L297
	cmpl	$0, -16(%rbp)
	jne	.L297
	cmpl	$0, -20(%rbp)
	jne	.L297
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L297
.L296:
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L298
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L299
.L298:
	jmp	.L300
.L301:
	addq	$1, -8(%rbp)
.L300:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L301
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
	jne	.L301
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ap_size_list_item, .-ap_size_list_item
	.globl	ap_get_list_item
	.type	ap_get_list_item, @function
ap_get_list_item:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -68(%rbp)
	leaq	-68(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_size_list_item
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L304
	movl	$0, %eax
	jmp	.L334
.L304:
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L306
.L333:
	cmpl	$0, -40(%rbp)
	je	.L307
	movl	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L308
.L307:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$9, %eax
	cmpl	$83, %eax
	ja	.L309
	movl	%eax, %eax
	movq	.L311(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L311:
	.quad	.L310
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L310
	.quad	.L309
	.quad	.L312
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L313
	.quad	.L314
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L315
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L315
	.quad	.L309
	.quad	.L315
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L309
	.quad	.L316
	.text
.L316:
	movl	$1, -40(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.L317
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$32, (%rax)
.L317:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movl	$0, -36(%rbp)
	jmp	.L308
.L312:
	cmpl	$0, -48(%rbp)
	jne	.L318
	cmpl	$0, -44(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
.L318:
	cmpl	$1, -36(%rbp)
	jne	.L319
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$32, (%rax)
.L319:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movl	$0, -36(%rbp)
	jmp	.L308
.L313:
	cmpl	$0, -44(%rbp)
	jne	.L320
	addl	$1, -48(%rbp)
.L320:
	cmpl	$1, -36(%rbp)
	jne	.L321
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$32, (%rax)
.L321:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movl	$0, -36(%rbp)
	jmp	.L308
.L314:
	cmpl	$0, -48(%rbp)
	je	.L322
	subl	$1, -48(%rbp)
.L322:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movl	$0, -36(%rbp)
	jmp	.L308
.L310:
	cmpl	$0, -36(%rbp)
	je	.L323
	jmp	.L308
.L323:
	cmpl	$0, -48(%rbp)
	jne	.L324
	cmpl	$0, -44(%rbp)
	je	.L325
.L324:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L308
.L325:
	movl	$1, -36(%rbp)
	jmp	.L308
.L315:
	cmpl	$0, -48(%rbp)
	jne	.L327
	cmpl	$0, -44(%rbp)
	jne	.L327
	movl	$-1, -36(%rbp)
.L327:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L308
.L309:
	cmpl	$1, -36(%rbp)
	jne	.L328
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$32, (%rax)
.L328:
	movq	-32(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.L329
	cmpl	$0, -44(%rbp)
	je	.L330
.L329:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	jmp	.L331
.L330:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
.L331:
	movb	%al, (%rbx)
	movl	$0, -36(%rbp)
	nop
.L308:
	addq	$1, -24(%rbp)
.L306:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L332
	cmpl	$0, -40(%rbp)
	jne	.L333
	cmpl	$0, -44(%rbp)
	jne	.L333
	cmpl	$0, -48(%rbp)
	jne	.L333
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L333
.L332:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-64(%rbp), %rax
.L334:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ap_get_list_item, .-ap_get_list_item
	.globl	ap_find_list_item
	.type	ap_find_list_item, @function
ap_find_list_item:
.LFB39:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L336
	cmpq	$0, -88(%rbp)
	jne	.L337
.L336:
	movl	$0, %eax
	jmp	.L338
.L337:
	jmp	.L339
.L340:
	addq	$1, -32(%rbp)
.L339:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L340
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L340
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L341
	movl	$1, -36(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L344
.L341:
	jmp	.L343
.L392:
	cmpl	$0, -44(%rbp)
	je	.L345
	movl	$0, -44(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L347
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.L347
.L345:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$9, %eax
	cmpl	$83, %eax
	ja	.L348
	movl	%eax, %eax
	movq	.L350(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L350:
	.quad	.L349
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L349
	.quad	.L348
	.quad	.L351
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L352
	.quad	.L353
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L354
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L354
	.quad	.L348
	.quad	.L354
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L348
	.quad	.L355
	.text
.L355:
	movl	$1, -44(%rbp)
	cmpl	$1, -40(%rbp)
	jne	.L356
	cmpl	$0, -36(%rbp)
	je	.L357
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L357
	movl	$1, %eax
	jmp	.L358
.L357:
	movl	$0, %eax
.L358:
	movl	%eax, -36(%rbp)
.L356:
	cmpl	$0, -36(%rbp)
	je	.L359
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L359
	movl	$1, %eax
	jmp	.L360
.L359:
	movl	$0, %eax
.L360:
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L347
.L351:
	cmpl	$0, -52(%rbp)
	jne	.L361
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -48(%rbp)
.L361:
	cmpl	$1, -40(%rbp)
	jne	.L362
	cmpl	$0, -36(%rbp)
	je	.L363
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L363
	movl	$1, %eax
	jmp	.L364
.L363:
	movl	$0, %eax
.L364:
	movl	%eax, -36(%rbp)
.L362:
	cmpl	$0, -36(%rbp)
	je	.L365
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L365
	movl	$1, %eax
	jmp	.L366
.L365:
	movl	$0, %eax
.L366:
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L347
.L352:
	cmpl	$0, -48(%rbp)
	jne	.L367
	addl	$1, -52(%rbp)
.L367:
	cmpl	$1, -40(%rbp)
	jne	.L368
	cmpl	$0, -36(%rbp)
	je	.L369
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L369
	movl	$1, %eax
	jmp	.L370
.L369:
	movl	$0, %eax
.L370:
	movl	%eax, -36(%rbp)
.L368:
	cmpl	$0, -36(%rbp)
	je	.L371
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L371
	movl	$1, %eax
	jmp	.L372
.L371:
	movl	$0, %eax
.L372:
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L347
.L353:
	cmpl	$0, -52(%rbp)
	je	.L373
	subl	$1, -52(%rbp)
.L373:
	cmpl	$0, -36(%rbp)
	je	.L374
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L374
	movl	$1, %eax
	jmp	.L375
.L374:
	movl	$0, %eax
.L375:
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L347
.L349:
	cmpl	$0, -40(%rbp)
	jne	.L347
	cmpl	$0, -36(%rbp)
	je	.L347
	cmpl	$0, -52(%rbp)
	jne	.L376
	cmpl	$0, -48(%rbp)
	je	.L377
.L376:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	jmp	.L347
.L377:
	movl	$1, -40(%rbp)
	jmp	.L347
.L354:
	cmpl	$0, -52(%rbp)
	jne	.L379
	cmpl	$0, -48(%rbp)
	jne	.L379
	movl	$-1, -40(%rbp)
.L379:
	cmpl	$0, -36(%rbp)
	je	.L380
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L380
	movl	$1, %eax
	jmp	.L381
.L380:
	movl	$0, %eax
.L381:
	movl	%eax, -36(%rbp)
	jmp	.L347
.L348:
	cmpl	$0, -36(%rbp)
	jne	.L382
	jmp	.L347
.L382:
	cmpl	$1, -40(%rbp)
	jne	.L383
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	cmpb	$32, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
.L383:
	cmpl	$0, -52(%rbp)
	jne	.L384
	cmpl	$0, -48(%rbp)
	je	.L385
.L384:
	cmpl	$0, -36(%rbp)
	je	.L386
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L386
	movl	$1, %eax
	jmp	.L387
.L386:
	movl	$0, %eax
.L387:
	movl	%eax, -36(%rbp)
	jmp	.L388
.L385:
	cmpl	$0, -36(%rbp)
	je	.L389
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %ebx
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	cmpl	%eax, %ebx
	jne	.L389
	movl	$1, %eax
	jmp	.L390
.L389:
	movl	$0, %eax
.L390:
	movl	%eax, -36(%rbp)
.L388:
	movl	$0, -40(%rbp)
	nop
.L347:
	addq	$1, -32(%rbp)
.L344:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L391
	cmpl	$0, -44(%rbp)
	jne	.L392
	cmpl	$0, -48(%rbp)
	jne	.L392
	cmpl	$0, -52(%rbp)
	jne	.L392
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L392
.L391:
	cmpl	$0, -36(%rbp)
	je	.L393
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L393
	movl	$0, -36(%rbp)
.L393:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L343
	cmpl	$0, -36(%rbp)
	je	.L337
.L343:
	movl	-36(%rbp), %eax
.L338:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ap_find_list_item, .-ap_find_list_item
	.globl	ap_get_token
	.type	ap_get_token, @function
ap_get_token:
.LFB40:
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
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L395
.L397:
	addq	$1, -8(%rbp)
.L395:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L396
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
	jne	.L397
.L396:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L398
.L403:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L398
	jmp	.L399
.L400:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L399
	jmp	.L398
.L399:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L400
.L398:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L401
	cmpl	$0, -52(%rbp)
	jne	.L402
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
	jne	.L401
.L402:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L401
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L403
.L401:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -32(%rbp)
	jmp	.L404
.L406:
	addq	$1, -8(%rbp)
.L404:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L405
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
	jne	.L406
.L405:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ap_get_token, .-ap_get_token
	.globl	ap_find_token
	.type	ap_find_token, @function
ap_find_token:
.LFB41:
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
	cmpq	$0, -32(%rbp)
	jne	.L409
	movl	$0, %eax
	jmp	.L410
.L409:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L419:
	jmp	.L411
.L412:
	addq	$1, -8(%rbp)
.L411:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L412
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L413
	movl	$0, %eax
	jmp	.L410
.L413:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L414
.L416:
	addq	$1, -8(%rbp)
.L414:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L415
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L416
.L415:
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L417
	movl	$1, %eax
	jmp	.L410
.L417:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L418
	movl	$0, %eax
	jmp	.L410
.L418:
	jmp	.L419
.L410:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ap_find_token, .-ap_find_token
	.globl	ap_find_last_token
	.type	ap_find_last_token, @function
ap_find_last_token:
.LFB42:
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
	cmpq	$0, -32(%rbp)
	jne	.L421
	movl	$0, %eax
	jmp	.L422
.L421:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L423
	cmpl	$0, -12(%rbp)
	jle	.L424
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-1(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L424
	movl	-12(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	je	.L424
.L423:
	movl	$0, %eax
	jmp	.L422
.L424:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-12(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncasecmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
.L422:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ap_find_last_token, .-ap_find_last_token
	.globl	ap_escape_shell_cmd
	.type	ap_escape_shell_cmd, @function
ap_escape_shell_cmd:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	addq	%rax, %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L426
.L428:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L427
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$92, (%rax)
.L427:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addq	$1, -16(%rbp)
.L426:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L428
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ap_escape_shell_cmd, .-ap_escape_shell_cmd
	.type	x2c, @function
x2c:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L431
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-33, %eax
	subl	$55, %eax
	jmp	.L432
.L431:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	subl	$48, %eax
.L432:
	movl	%eax, %ebx
	movl	%ebx, %eax
	sall	$4, %eax
	movl	%eax, %ebx
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L433
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	andl	$-33, %eax
	subl	$55, %eax
	jmp	.L434
.L433:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	subl	$48, %eax
.L434:
	movl	%ebx, %edx
	addl	%edx, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	x2c, .-x2c
	.globl	ap_unescape_url
	.type	ap_unescape_url, @function
ap_unescape_url:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movl	$0, %r12d
	movl	$0, %ebx
	movq	-40(%rbp), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L437
	movl	$0, %eax
	jmp	.L438
.L437:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L439
.L445:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L440
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L441
.L440:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L442
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L443
.L442:
	movl	$1, %r12d
	movq	-24(%rbp), %rax
	movb	$37, (%rax)
	jmp	.L441
.L443:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	x2c
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	addq	$2, -32(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L444
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L441
.L444:
	movl	$1, %ebx
.L441:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L439:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L445
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	testl	%r12d, %r12d
	je	.L446
	movl	$400, %eax
	jmp	.L438
.L446:
	testl	%ebx, %ebx
	je	.L447
	movl	$404, %eax
	jmp	.L438
.L447:
	movl	$0, %eax
.L438:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	ap_unescape_url, .-ap_unescape_url
	.globl	ap_unescape_url_keep2f
	.type	ap_unescape_url_keep2f, @function
ap_unescape_url_keep2f:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movl	$0, %r12d
	movl	$0, %ebx
	movq	-56(%rbp), %rax
	movl	$37, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L449
	movl	$0, %eax
	jmp	.L450
.L449:
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L451
.L457:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L452
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L453
.L452:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L454
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$2, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L455
.L454:
	movl	$1, %r12d
	movq	-24(%rbp), %rax
	movb	$37, (%rax)
	jmp	.L453
.L455:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	x2c
	movb	%al, -33(%rbp)
	cmpb	$0, -33(%rbp)
	jne	.L456
	movl	$1, %ebx
	jmp	.L453
.L456:
	movq	-24(%rbp), %rax
	movzbl	-33(%rbp), %edx
	movb	%dl, (%rax)
	addq	$2, -32(%rbp)
.L453:
	addq	$1, -24(%rbp)
	addq	$1, -32(%rbp)
.L451:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L457
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	testl	%r12d, %r12d
	je	.L458
	movl	$400, %eax
	jmp	.L450
.L458:
	testl	%ebx, %ebx
	je	.L459
	movl	$404, %eax
	jmp	.L450
.L459:
	movl	$0, %eax
.L450:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ap_unescape_url_keep2f, .-ap_unescape_url_keep2f
	.section	.rodata
.LC5:
	.string	"%s:%u"
	.text
	.globl	ap_construct_server
	.type	ap_construct_server, @function
ap_construct_server:
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
	movl	%edx, %eax
	movq	%rcx, -32(%rbp)
	movw	%ax, -20(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
	cmpw	-20(%rbp), %ax
	jne	.L461
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L462
.L461:
	movzwl	-20(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
.L462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ap_construct_server, .-ap_construct_server
	.section	.rodata
	.align 16
	.type	c2x_table, @object
	.size	c2x_table, 17
c2x_table:
	.string	"0123456789abcdef"
	.text
	.type	c2x, @function
c2x:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, %eax
	movq	%rdx, -16(%rbp)
	movb	%al, -8(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	-8(%rbp), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	shrl	$4, %edx
	movl	%edx, %edx
	movzbl	c2x_table(%rdx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	andl	$15, %edx
	movl	%edx, %edx
	movzbl	c2x_table(%rdx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	c2x, .-c2x
	.globl	ap_escape_path_segment
	.type	ap_escape_path_segment, @function
ap_escape_path_segment:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L466
.L469:
	movl	-28(%rbp), %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L467
	movq	-16(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$37, %esi
	movl	%eax, %edi
	call	c2x
	movq	%rax, -16(%rbp)
	jmp	.L468
.L467:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L468:
	addq	$1, -8(%rbp)
.L466:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L469
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ap_escape_path_segment, .-ap_escape_path_segment
	.globl	ap_os_escape_path
	.type	ap_os_escape_path, @function
ap_os_escape_path:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L472
	movq	-64(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L472
	cmpq	$0, -40(%rbp)
	je	.L473
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L472
.L473:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$46, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$47, (%rax)
.L472:
	jmp	.L474
.L477:
	movl	-44(%rbp), %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L475
	movq	-16(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	$37, %esi
	movl	%eax, %edi
	call	c2x
	movq	%rax, -16(%rbp)
	jmp	.L476
.L475:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-44(%rbp), %edx
	movb	%dl, (%rax)
.L476:
	addq	$1, -8(%rbp)
.L474:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L477
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	ap_os_escape_path, .-ap_os_escape_path
	.section	.rodata
.LC6:
	.string	"&lt;"
.LC7:
	.string	"&gt;"
.LC8:
	.string	"&amp;"
.LC9:
	.string	"&quot;"
	.text
	.globl	ap_escape_html
	.type	ap_escape_html, @function
ap_escape_html:
.LFB51:
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
	movl	$0, -8(%rbp)
	jmp	.L480
.L485:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	je	.L481
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L482
.L481:
	addl	$3, -8(%rbp)
	jmp	.L483
.L482:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L484
	addl	$4, -8(%rbp)
	jmp	.L483
.L484:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L483
	addl	$5, -8(%rbp)
.L483:
	addl	$1, -4(%rbp)
.L480:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L485
	cmpl	$0, -8(%rbp)
	jne	.L486
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	jmp	.L487
.L486:
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L488
.L494:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L489
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	memcpy
	addl	$3, -8(%rbp)
	jmp	.L490
.L489:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L491
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	memcpy
	addl	$3, -8(%rbp)
	jmp	.L490
.L491:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L492
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$5, %edx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	memcpy
	addl	$4, -8(%rbp)
	jmp	.L490
.L492:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L493
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	$6, %edx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	memcpy
	addl	$5, -8(%rbp)
	jmp	.L490
.L493:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L490:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L488:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L494
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
.L487:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	ap_escape_html, .-ap_escape_html
	.globl	ap_escape_logitem
	.type	ap_escape_logitem, @function
ap_escape_logitem:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L496
	movl	$0, %eax
	jmp	.L497
.L496:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	salq	$2, %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L498
.L510:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L499
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$92, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$11, %eax
	je	.L501
	cmpl	$11, %eax
	jg	.L502
	cmpl	$9, %eax
	je	.L503
	cmpl	$9, %eax
	jg	.L504
	cmpl	$8, %eax
	je	.L505
	jmp	.L500
.L502:
	cmpl	$34, %eax
	je	.L506
	cmpl	$92, %eax
	je	.L506
	cmpl	$13, %eax
	je	.L507
	jmp	.L500
.L505:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$98, (%rax)
	jmp	.L508
.L504:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$110, (%rax)
	jmp	.L508
.L507:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$114, (%rax)
	jmp	.L508
.L503:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$116, (%rax)
	jmp	.L508
.L501:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$118, (%rax)
	jmp	.L508
.L506:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L508
.L500:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	movl	$120, %esi
	movl	%eax, %edi
	call	c2x
	addq	$3, -8(%rbp)
	jmp	.L509
.L508:
	jmp	.L509
.L499:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L509:
	addq	$1, -16(%rbp)
.L498:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L510
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	ap_escape_logitem, .-ap_escape_logitem
	.globl	ap_escape_errorlog_item
	.type	ap_escape_errorlog_item, @function
ap_escape_errorlog_item:
.LFB53:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L512
	cmpq	$0, -56(%rbp)
	jne	.L513
.L512:
	movl	$0, %eax
	jmp	.L514
.L513:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L515
.L531:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	movzbl	test_char_table(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L516
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$92, (%rax)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L517
	subq	$1, -8(%rbp)
	jmp	.L518
.L517:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	cmpl	$11, %eax
	je	.L520
	cmpl	$11, %eax
	jg	.L521
	cmpl	$9, %eax
	je	.L522
	cmpl	$9, %eax
	jg	.L523
	cmpl	$8, %eax
	je	.L524
	jmp	.L519
.L521:
	cmpl	$34, %eax
	je	.L525
	cmpl	$92, %eax
	je	.L526
	cmpl	$13, %eax
	je	.L527
	jmp	.L519
.L524:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$98, (%rax)
	jmp	.L528
.L523:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$110, (%rax)
	jmp	.L528
.L527:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$114, (%rax)
	jmp	.L528
.L522:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$116, (%rax)
	jmp	.L528
.L520:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$118, (%rax)
	jmp	.L528
.L526:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	jmp	.L528
.L525:
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	jmp	.L528
.L519:
	movq	-16(%rbp), %rax
	subq	$2, %rax
	cmpq	-8(%rbp), %rax
	ja	.L529
	subq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L528
.L529:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	movl	$120, %esi
	movl	%eax, %edi
	call	c2x
	addq	$3, -8(%rbp)
	jmp	.L530
.L528:
	jmp	.L530
.L516:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L530:
	addq	$1, -24(%rbp)
.L515:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jnb	.L518
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L531
.L518:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L514:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	ap_escape_errorlog_item, .-ap_escape_errorlog_item
	.globl	ap_is_directory
	.type	ap_is_directory, @function
ap_is_directory:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32768, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	je	.L533
	movl	$0, %eax
	jmp	.L535
.L533:
	movl	-112(%rbp), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
.L535:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ap_is_directory, .-ap_is_directory
	.globl	ap_is_rdirectory
	.type	ap_is_rdirectory, @function
ap_is_rdirectory:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	-136(%rbp), %rdx
	movq	-144(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32769, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	je	.L537
	movl	$0, %eax
	jmp	.L539
.L537:
	movl	-112(%rbp), %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
.L539:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ap_is_rdirectory, .-ap_is_rdirectory
	.globl	ap_make_full_path
	.type	ap_make_full_path, @function
ap_make_full_path:
.LFB56:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	3(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L541
	movq	-32(%rbp), %rax
	movb	$47, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	jmp	.L542
.L541:
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L543
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$47, (%rax)
.L543:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
.L542:
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ap_make_full_path, .-ap_make_full_path
	.globl	ap_is_url
	.type	ap_is_url, @function
ap_is_url:
.LFB57:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$0, %ebx
	jmp	.L546
.L550:
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L547
	call	__ctype_b_loc
	movq	(%rax), %rax
	movslq	%ebx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L548
	call	__ctype_b_loc
	movq	(%rax), %rax
	movslq	%ebx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L548
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L548
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	je	.L548
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L548
.L547:
	movl	$0, %eax
	jmp	.L549
.L548:
	addl	$1, %ebx
.L546:
	movslq	%ebx, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L550
	testl	%ebx, %ebx
	setne	%al
	movzbl	%al, %eax
.L549:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	ap_is_url, .-ap_is_url
	.globl	ap_ind
	.type	ap_ind, @function
ap_ind:
.LFB58:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L552
	movl	$-1, %eax
	jmp	.L553
.L552:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L553:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ap_ind, .-ap_ind
	.globl	ap_rind
	.type	ap_rind, @function
ap_rind:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movsbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L555
	movl	$-1, %eax
	jmp	.L556
.L555:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L556:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ap_rind, .-ap_rind
	.globl	ap_str_tolower
	.type	ap_str_tolower, @function
ap_str_tolower:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.L558
.L559:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -8(%rbp)
.L558:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L559
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ap_str_tolower, .-ap_str_tolower
	.section	.rodata
	.align 8
.LC10:
	.string	"%s: apr_gethostname() failed to determine ServerName"
	.align 8
.LC11:
	.string	"%s: apr_sockaddr_info_get() failed for %s"
.LC12:
	.string	"127.0.0.1"
	.align 8
.LC13:
	.string	"%s: Could not reliably determine the server's fully qualified domain name, using %s for ServerName"
	.text
	.globl	ap_get_local_host
	.type	ap_get_local_host, @function
ap_get_local_host:
.LFB61:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	$0, -8(%rbp)
	movq	-296(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	apr_gethostname
	testl	%eax, %eax
	je	.L561
	movq	ap_server_argv0(%rip), %rax
	subq	$8, %rsp
	movq	-296(%rbp), %rdx
	pushq	%rax
	movl	$.LC10, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$36, %edx
	movl	$2002, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	jmp	.L562
.L561:
	movb	$0, -16(%rbp)
	movq	-296(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	leaq	-280(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	testl	%eax, %eax
	jne	.L563
	movq	-280(%rbp), %rcx
	leaq	-288(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_getnameinfo
	testl	%eax, %eax
	jne	.L564
	movq	-288(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L564
	movq	-288(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	jmp	.L569
.L564:
	leaq	-272(%rbp), %rax
	movl	$46, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L566
	leaq	-272(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	jmp	.L562
.L566:
	movq	-280(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_ip_get
	movq	-288(%rbp), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	jmp	.L562
.L563:
	movq	ap_server_argv0(%rip), %rax
	movq	-296(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	pushq	%rdx
	pushq	%rax
	movl	$.LC11, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$36, %edx
	movl	$2019, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
.L562:
	cmpq	$0, -8(%rbp)
	jne	.L568
	movq	-296(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
.L568:
	movq	ap_server_argv0(%rip), %rax
	movq	-296(%rbp), %rdx
	pushq	-8(%rbp)
	pushq	%rax
	movl	$.LC13, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$33, %edx
	movl	$2028, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
.L569:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	ap_get_local_host, .-ap_get_local_host
	.globl	ap_pbase64decode
	.type	ap_pbase64decode, @function
ap_pbase64decode:
.LFB62:
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
	movq	%rax, %rdi
	call	apr_base64_decode_len
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_base64_decode
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	ap_pbase64decode, .-ap_pbase64decode
	.globl	ap_pbase64encode
	.type	ap_pbase64encode, @function
ap_pbase64encode:
.LFB63:
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
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	apr_base64_encode_len
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_base64_encode
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ap_pbase64encode, .-ap_pbase64encode
	.globl	ap_content_type_tolower
	.type	ap_content_type_tolower, @function
ap_content_type_tolower:
.LFB64:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L575
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L575:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	cmpq	$0, -8(%rbp)
	je	.L574
	movq	-8(%rbp), %rax
	movb	$59, (%rax)
.L574:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	ap_content_type_tolower, .-ap_content_type_tolower
	.globl	ap_escape_quotes
	.type	ap_escape_quotes, @function
ap_escape_quotes:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -4(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L578
.L581:
	addl	$1, -4(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L579
	addl	$1, -4(%rbp)
.L579:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L580
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L580
	addq	$1, -16(%rbp)
	addl	$1, -4(%rbp)
.L580:
	addq	$1, -16(%rbp)
.L578:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L581
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L582
.L585:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L583
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L583
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L583:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L584
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$92, (%rax)
.L584:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L582
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L582:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L585
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	ap_escape_quotes, .-ap_escape_quotes
	.section	.rodata
.LC14:
	.string	"%s%s%d"
	.text
	.globl	ap_append_pid
	.type	ap_append_pid, @function
ap_append_pid:
.LFB66:
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
	call	getpid
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	%esi, %r8d
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	ap_append_pid, .-ap_append_pid
	.globl	ap_timeout_parameter_parse
	.type	ap_timeout_parameter_parse, @function
ap_timeout_parameter_parse:
.LFB67:
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
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_strtoi64
	movq	%rax, -16(%rbp)
	call	__errno_location
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L590
	call	__errno_location
	movl	(%rax), %eax
	jmp	.L604
.L590:
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L592
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L593
.L592:
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L594
.L593:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L594:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$109, %eax
	je	.L596
	cmpl	$115, %eax
	je	.L597
	cmpl	$104, %eax
	je	.L598
	jmp	.L605
.L597:
	movq	-16(%rbp), %rax
	imulq	$1000000, %rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L599
.L598:
	movq	-16(%rbp), %rdx
	movl	$3600000000, %eax
	imulq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L599
.L596:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$105, %eax
	je	.L601
	cmpl	$115, %eax
	jne	.L606
	movq	-16(%rbp), %rax
	imulq	$1000, %rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L603
.L601:
	movq	-16(%rbp), %rax
	imulq	$60000000, %rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L603
.L606:
	movl	$20014, %eax
	jmp	.L604
.L603:
	jmp	.L599
.L605:
	movl	$20014, %eax
	jmp	.L604
.L599:
	movl	$0, %eax
.L604:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	ap_timeout_parameter_parse, .-ap_timeout_parameter_parse
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

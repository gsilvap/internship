	.file	"maketables.c"
	.section	.rodata
.LC0:
	.string	"*+?{^.$|()["
	.text
	.globl	pcre_maketables
	.type	pcre_maketables, @function
pcre_maketables:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	pcre_malloc(%rip), %rax
	movl	$1088, %edi
	call	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L4
.L5:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tolower
	movb	%al, (%rbx)
	addl	$1, -28(%rbp)
.L4:
	cmpl	$255, -28(%rbp)
	jle	.L5
	movl	$0, -28(%rbp)
	jmp	.L6
.L9:
	movq	-24(%rbp), %rbx
	leaq	1(%rbx), %rax
	movq	%rax, -24(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L7
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	toupper
	jmp	.L8
.L7:
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	tolower
.L8:
	movb	%al, (%rbx)
	addl	$1, -28(%rbp)
.L6:
	cmpl	$255, -28(%rbp)
	jle	.L9
	movq	-24(%rbp), %rax
	movl	$320, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -28(%rbp)
	jmp	.L10
.L21:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L11
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	64(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$64, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	160(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$160, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L11:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L12
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	96(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$96, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	160(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$160, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L12:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	je	.L13
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	128(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	subl	$-128, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	160(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$160, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L13:
	cmpl	$95, -28(%rbp)
	jne	.L14
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	160(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$160, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L14:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L15
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %esi
	movl	-28(%rbp), %edx
	andl	$7, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%edi, %edx
	orl	%esi, %edx
	movb	%dl, (%rax)
.L15:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L16
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	32(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$32, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L16:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jns	.L17
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	192(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$192, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L17:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L18
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	224(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$224, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L18:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L19
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	256(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$256, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L19:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L20
	movl	-28(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	leal	288(%rax), %edx
	movslq	%edx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	addl	$288, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-28(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L20:
	addl	$1, -28(%rbp)
.L10:
	cmpl	$255, -28(%rbp)
	jle	.L21
	addq	$320, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L22
.L30:
	movl	$0, -32(%rbp)
	cmpl	$11, -28(%rbp)
	je	.L23
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L23
	addl	$1, -32(%rbp)
.L23:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L24
	addl	$2, -32(%rbp)
.L24:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L25
	addl	$4, -32(%rbp)
.L25:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L26
	addl	$8, -32(%rbp)
.L26:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L27
	cmpl	$95, -28(%rbp)
	jne	.L28
.L27:
	addl	$16, -32(%rbp)
.L28:
	movl	-28(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	call	strchr
	testq	%rax, %rax
	je	.L29
	subl	$-128, -32(%rbp)
.L29:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movl	-32(%rbp), %edx
	movb	%dl, (%rax)
	addl	$1, -28(%rbp)
.L22:
	cmpl	$255, -28(%rbp)
	jle	.L30
	movq	-40(%rbp), %rax
.L3:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	pcre_maketables, .-pcre_maketables
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

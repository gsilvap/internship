	.file	"study.c"
	.text
	.type	set_bit, @function
set_bit:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-12(%rbp), %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	cmpl	$0, -16(%rbp)
	je	.L1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movl	-12(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-12(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	shrb	$3, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movl	-12(%rbp), %eax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$7, %eax
	movl	$1, %edi
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %eax
	orl	%esi, %eax
	movb	%al, (%rdx)
.L1:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_bit, .-set_bit
	.type	set_start_bits, @function
set_start_bits:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movq	%r8, -80(%rbp)
.L86:
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
	jmp	.L4
.L85:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	ja	.L5
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L6
.L5:
	movq	-80(%rbp), %rdi
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_start_bits
	testl	%eax, %eax
	jne	.L7
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$0, -28(%rbp)
	jmp	.L4
.L6:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$5, %eax
	cmpl	$74, %eax
	ja	.L9
	movl	%eax, %eax
	movq	.L11(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L11:
	.quad	.L10
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L17
	.quad	.L9
	.quad	.L9
	.quad	.L18
	.quad	.L18
	.quad	.L9
	.quad	.L19
	.quad	.L19
	.quad	.L18
	.quad	.L18
	.quad	.L19
	.quad	.L19
	.quad	.L20
	.quad	.L20
	.quad	.L21
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L22
	.quad	.L22
	.quad	.L23
	.quad	.L23
	.quad	.L22
	.quad	.L22
	.quad	.L24
	.quad	.L24
	.quad	.L25
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L26
	.quad	.L27
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L28
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L29
	.quad	.L29
	.quad	.L29
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L9
	.quad	.L30
	.quad	.L30
	.quad	.L31
	.text
.L9:
	movl	$0, %eax
	jmp	.L8
.L28:
	addq	$6, -24(%rbp)
	jmp	.L4
.L31:
	addq	$3, -24(%rbp)
	jmp	.L4
.L29:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L29
	addq	$3, -24(%rbp)
	jmp	.L4
.L17:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -68(%rbp)
	addq	$2, -24(%rbp)
	jmp	.L4
.L30:
	addq	$1, -24(%rbp)
	movq	-80(%rbp), %rdi
	movl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_start_bits
	testl	%eax, %eax
	jne	.L32
	movl	$0, %eax
	jmp	.L8
.L32:
	movl	$1, -36(%rbp)
.L33:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L33
	addq	$3, -24(%rbp)
	jmp	.L4
.L19:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	set_bit
	addq	$2, -24(%rbp)
	jmp	.L4
.L20:
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	set_bit
	addq	$4, -24(%rbp)
	jmp	.L4
.L21:
	addq	$2, -24(%rbp)
.L18:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %esi
	movq	-80(%rbp), %rcx
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	set_bit
	movl	$0, -28(%rbp)
	jmp	.L4
.L10:
	movl	$0, %ebx
	jmp	.L34
.L35:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rcx
	addq	$64, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L34:
	cmpl	$31, %ebx
	jle	.L35
	movl	$0, -28(%rbp)
	jmp	.L4
.L12:
	movl	$0, %ebx
	jmp	.L36
.L37:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rsi
	addq	$64, %rsi
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L36:
	cmpl	$31, %ebx
	jle	.L37
	movl	$0, -28(%rbp)
	jmp	.L4
.L13:
	movl	$0, %ebx
	jmp	.L38
.L39:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	%ebx, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L38:
	cmpl	$31, %ebx
	jle	.L39
	movl	$0, -28(%rbp)
	jmp	.L4
.L14:
	movl	$0, %ebx
	jmp	.L40
.L41:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movslq	%ebx, %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L40:
	cmpl	$31, %ebx
	jle	.L41
	movl	$0, -28(%rbp)
	jmp	.L4
.L15:
	movl	$0, %ebx
	jmp	.L42
.L43:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rcx
	addq	$160, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L42:
	cmpl	$31, %ebx
	jle	.L43
	movl	$0, -28(%rbp)
	jmp	.L4
.L16:
	movl	$0, %ebx
	jmp	.L44
.L45:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rsi
	addq	$160, %rsi
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L44:
	cmpl	$31, %ebx
	jle	.L45
	movl	$0, -28(%rbp)
	jmp	.L4
.L23:
	addq	$1, -24(%rbp)
	jmp	.L4
.L25:
	addq	$3, -24(%rbp)
	jmp	.L4
.L24:
	addq	$2, -24(%rbp)
.L22:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$5, %eax
	cmpl	$6, %eax
	ja	.L46
	movl	%eax, %eax
	movq	.L48(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L48:
	.quad	.L47
	.quad	.L49
	.quad	.L50
	.quad	.L51
	.quad	.L52
	.quad	.L53
	.quad	.L54
	.text
.L54:
	movl	$0, %eax
	jmp	.L8
.L47:
	movl	$0, %ebx
	jmp	.L55
.L56:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rcx
	addq	$64, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L55:
	cmpl	$31, %ebx
	jle	.L56
	jmp	.L46
.L49:
	movl	$0, %ebx
	jmp	.L57
.L58:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rsi
	addq	$64, %rsi
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L57:
	cmpl	$31, %ebx
	jle	.L58
	jmp	.L46
.L50:
	movl	$0, %ebx
	jmp	.L59
.L60:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rcx
	movslq	%ebx, %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L59:
	cmpl	$31, %ebx
	jle	.L60
	jmp	.L46
.L51:
	movl	$0, %ebx
	jmp	.L61
.L62:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rsi
	movslq	%ebx, %rax
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L61:
	cmpl	$31, %ebx
	jle	.L62
	jmp	.L46
.L52:
	movl	$0, %ebx
	jmp	.L63
.L64:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rcx
	addq	$160, %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	notl	%eax
	orl	%esi, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L63:
	cmpl	$31, %ebx
	jle	.L64
	jmp	.L46
.L53:
	movl	$0, %ebx
	jmp	.L65
.L66:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movslq	%ebx, %rsi
	addq	$160, %rsi
	addq	%rsi, %rax
	movzbl	(%rax), %eax
	orl	%ecx, %eax
	movb	%al, (%rdx)
	addl	$1, %ebx
.L65:
	cmpl	$31, %ebx
	jle	.L66
	nop
.L46:
	addq	$2, -24(%rbp)
	jmp	.L4
.L27:
	cmpl	$0, -72(%rbp)
	je	.L26
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	-64(%rbp), %rdx
	addq	$24, %rdx
	movzbl	(%rdx), %edx
	orl	$-16, %edx
	movb	%dl, (%rax)
	movq	-64(%rbp), %rax
	addq	$25, %rax
	movl	$7, %edx
	movl	$255, %esi
	movq	%rax, %rdi
	call	memset
.L26:
	addq	$1, -24(%rbp)
	cmpl	$0, -72(%rbp)
	je	.L67
	movl	$0, %ebx
	jmp	.L68
.L69:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movslq	%ebx, %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, %ebx
.L68:
	cmpl	$15, %ebx
	jle	.L69
	movl	$128, %ebx
	jmp	.L70
.L74:
	movl	%ebx, %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L71
	movl	%ebx, %eax
	andl	$7, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	je	.L71
	movl	$1, %eax
	jmp	.L72
.L71:
	movl	$0, %eax
.L72:
	testl	%eax, %eax
	je	.L73
	movl	%ebx, %eax
	sarl	$6, %eax
	orb	$-64, %al
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	leal	7(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movslq	%edx, %rcx
	movq	-64(%rbp), %rax
	addq	%rcx, %rax
	movslq	%edx, %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movl	%edx, %esi
	movl	-32(%rbp), %edx
	andl	$7, %edx
	movl	$1, %edi
	movl	%edx, %ecx
	sall	%cl, %edi
	movl	%edi, %edx
	orl	%esi, %edx
	movb	%dl, (%rax)
	movl	%ebx, %eax
	andl	$192, %eax
	leal	63(%rax), %ebx
.L73:
	addl	$1, %ebx
.L70:
	cmpl	$255, %ebx
	jle	.L74
	jmp	.L75
.L67:
	movl	$0, %ebx
	jmp	.L76
.L77:
	movslq	%ebx, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movslq	%ebx, %rcx
	movq	-64(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movslq	%ebx, %rsi
	movq	-24(%rbp), %rdx
	addq	%rsi, %rdx
	movzbl	(%rdx), %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, %ebx
.L76:
	cmpl	$31, %ebx
	jle	.L77
.L75:
	addq	$32, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	$51, %eax
	cmpl	$7, %eax
	ja	.L78
	movl	%eax, %eax
	movq	.L80(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L80:
	.quad	.L79
	.quad	.L79
	.quad	.L78
	.quad	.L78
	.quad	.L79
	.quad	.L79
	.quad	.L81
	.quad	.L81
	.text
.L79:
	addq	$1, -24(%rbp)
	jmp	.L82
.L81:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	testl	%eax, %eax
	jne	.L83
	addq	$5, -24(%rbp)
	jmp	.L82
.L83:
	movl	$0, -28(%rbp)
	jmp	.L82
.L78:
	movl	$0, -28(%rbp)
	nop
.L82:
	nop
.L4:
	cmpl	$0, -28(%rbp)
	jne	.L85
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	cltq
	addq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L86
	movl	$1, %eax
.L8:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_start_bits, .-set_start_bits
	.section	.rodata
	.align 8
.LC0:
	.string	"argument is not a compiled regular expression"
	.align 8
.LC1:
	.string	"unknown or incorrect option bit(s) set"
.LC2:
	.string	"failed to get memory"
	.text
	.globl	pcre_study
	.type	pcre_study, @function
pcre_study:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movq	%rdx, -184(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movzwl	28(%rax), %eax
	movzwl	%ax, %ecx
	movq	-8(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	imull	%ecx, %eax
	cltq
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-184(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L88
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1346589253, %eax
	je	.L89
.L88:
	movq	-184(%rbp), %rax
	movq	$.LC0, (%rax)
	movl	$0, %eax
	jmp	.L96
.L89:
	cmpl	$0, -172(%rbp)
	je	.L91
	movq	-184(%rbp), %rax
	movq	$.LC1, (%rax)
	movl	$0, %eax
	jmp	.L96
.L91:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1342177296, %eax
	testl	%eax, %eax
	je	.L92
	movl	$0, %eax
	jmp	.L96
.L92:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L93
	leaq	-72(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rcx
	movl	$11, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	pcre_fullinfo
.L93:
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-72(%rbp), %rax
	addq	$256, %rax
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -144(%rbp)
	movq	-72(%rbp), %rax
	addq	$832, %rax
	movq	%rax, -136(%rbp)
	leaq	-64(%rbp), %rax
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	leaq	-160(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	set_start_bits
	testl	%eax, %eax
	jne	.L94
	movl	$0, %eax
	jmp	.L96
.L94:
	movq	pcre_malloc(%rip), %rax
	movl	$80, %edi
	call	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L95
	movq	-184(%rbp), %rax
	movq	$.LC2, (%rax)
	movl	$0, %eax
	jmp	.L96
.L95:
	movq	-24(%rbp), %rax
	addq	$40, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$40, (%rax)
	movq	-32(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	pcre_study, .-pcre_study
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

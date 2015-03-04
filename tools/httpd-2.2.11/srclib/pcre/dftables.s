	.file	"dftables.c"
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
	movl	$1088, %edi
	call	malloc
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
	.section	.rodata
	.align 8
.LC1:
	.string	"dftables: one filename argument is required\n"
.LC2:
	.string	"w"
	.align 8
.LC3:
	.string	"dftables: failed to open %s for writing\n"
	.align 8
.LC4:
	.ascii	"/*************************************************\n*      P"
	.ascii	"erl-Compatible"
	.string	" Regular Expressions       *\n*************************************************/\n\n/* This file is automatically written by the dftables auxiliary \nprogram. If you edit it by hand, you might like to edit the Makefile to \nprevent its ever being regenerated.\n\n"
	.align 8
.LC5:
	.string	"This file is #included in the compilation of pcre.c to build the default\ncharacter tables which are used when no tables are passed to the compile\nfunction. */\n\nstatic unsigned char pcre_default_tables[] = {\n\n/* This table is a lower casing table. */\n\n"
.LC6:
	.string	"  "
.LC7:
	.string	"\n  "
.LC8:
	.string	"%3d"
.LC9:
	.string	",\n\n"
	.align 8
.LC10:
	.string	"/* This table is a case flipping table. */\n\n"
	.align 8
.LC11:
	.ascii	"/* This table contains bit maps for various character cla"
	.string	"sses.\nEach map is 32 bytes long and the bits run from the least\nsignificant end of each byte. The classes that have their own\nmaps are: space, xdigit, digit, upper, lower, word, graph\nprint, punct, and cntrl. Other classes are built from combinations. */\n\n"
.LC12:
	.string	"0x%02x"
	.align 8
.LC13:
	.ascii	"/* This table ide"
	.string	"ntifies various classes of character by individual bits:\n  0x%02x   white space character\n  0x%02x   letter\n  0x%02x   decimal digit\n  0x%02x   hexadecimal digit\n  0x%02x   alphanumeric or '_'\n  0x%02x   regular expression metacharacter or binary zero\n*/\n\n"
.LC14:
	.string	" /* "
.LC15:
	.string	" %c -"
.LC16:
	.string	"%3d-"
.LC17:
	.string	" %c "
.LC18:
	.string	" */\n  "
.LC19:
	.string	"};/* "
	.align 8
.LC20:
	.string	" */\n\n/* End of chartables.c */\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	call	pcre_maketables
	movq	%rax, -16(%rbp)
	cmpl	$2, -36(%rbp)
	je	.L32
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %eax
	jmp	.L33
.L32:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L34
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %eax
	jmp	.L33
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$329, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$251, %edx
	movl	$1, %esi
	movl	$.LC5, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L35
.L38:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L36
	cmpl	$0, -4(%rbp)
	je	.L36
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
.L36:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$255, -4(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc
.L37:
	addl	$1, -4(%rbp)
.L35:
	cmpl	$255, -4(%rbp)
	jle	.L38
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC10, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L39
.L42:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L40
	cmpl	$0, -4(%rbp)
	je	.L40
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
.L40:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$255, -4(%rbp)
	je	.L41
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc
.L41:
	addl	$1, -4(%rbp)
.L39:
	cmpl	$255, -4(%rbp)
	jle	.L42
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$313, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L43
.L47:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L44
	cmpl	$0, -4(%rbp)
	je	.L44
	movl	-4(%rbp), %eax
	andl	$31, %eax
	testl	%eax, %eax
	jne	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC7, %edi
	call	fwrite
.L44:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$319, -4(%rbp)
	je	.L46
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc
.L46:
	addl	$1, -4(%rbp)
.L43:
	cmpl	$319, -4(%rbp)
	jle	.L47
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$3, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	pushq	$128
	pushq	$16
	movl	$8, %r9d
	movl	$4, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$2, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L48
.L55:
	movl	-4(%rbp), %eax
	andl	$7, %eax
	testl	%eax, %eax
	jne	.L49
	cmpl	$0, -4(%rbp)
	je	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$4, %edx
	movl	$1, %esi
	movl	$.LC14, %edi
	call	fwrite
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L50
	movl	-4(%rbp), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L51
.L50:
	movl	-4(%rbp), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L51:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L52
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L53
.L52:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L53:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$.LC18, %edi
	call	fwrite
.L49:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$255, -4(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$44, %edi
	call	fputc
.L54:
	addl	$1, -4(%rbp)
.L48:
	cmpl	$255, -4(%rbp)
	jle	.L55
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$.LC19, %edi
	call	fwrite
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	subq	$16, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L56
	movl	-4(%rbp), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L57
.L56:
	movl	-4(%rbp), %eax
	leal	-8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L57:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L58
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L59
.L58:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L59:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$31, %edx
	movl	$1, %esi
	movl	$.LC20, %edi
	call	fwrite
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

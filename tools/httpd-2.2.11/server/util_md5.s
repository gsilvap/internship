	.file	"util_md5.c"
	.section	.rodata
.LC0:
	.string	"0123456789abcdef"
	.text
	.globl	ap_md5_binary
	.type	ap_md5_binary, @function
ap_md5_binary:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, -212(%rbp)
	movq	$.LC0, -24(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	apr_md5_init
	movl	-212(%rbp), %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_md5_update
	leaq	-128(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_md5_final
	movl	$0, -12(%rbp)
	leaq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-144(%rbp,%rdx), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-144(%rbp,%rdx), %edx
	movzbl	%dl, %edx
	movq	%rdx, %rcx
	andl	$15, %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	addl	$1, -12(%rbp)
.L2:
	cmpl	$15, -12(%rbp)
	jle	.L3
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_md5_binary, .-ap_md5_binary
	.globl	ap_md5
	.type	ap_md5, @function
ap_md5:
.LFB3:
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
	call	strlen
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_md5_binary
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_md5, .-ap_md5
	.data
	.align 64
	.type	basis_64, @object
	.size	basis_64, 65
basis_64:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
	.text
	.globl	ap_md5contextTo64
	.type	ap_md5contextTo64, @function
ap_md5contextTo64:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$25, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_md5_final
	movb	$0, -32(%rbp)
	movzbl	-32(%rbp), %eax
	movb	%al, -31(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	shrb	$2, %dl
	movzbl	%dl, %edx
	movslq	%edx, %rdx
	movzbl	basis_64(%rdx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	movzbl	%dl, %edx
	andl	$3, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	shrb	$4, %dl
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movslq	%edx, %rdx
	movzbl	basis_64(%rdx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	movzbl	%dl, %edx
	andl	$15, %edx
	leal	0(,%rdx,4), %ecx
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	orl	%ecx, %edx
	movslq	%edx, %rdx
	movzbl	basis_64(%rdx), %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzbl	-48(%rbp,%rdx), %edx
	movzbl	%dl, %edx
	andl	$63, %edx
	movslq	%edx, %rdx
	movzbl	basis_64(%rdx), %edx
	movb	%dl, (%rax)
	addl	$3, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	$17, %eax
	jbe	.L9
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$61, (%rax)
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movb	$61, (%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_md5contextTo64, .-ap_md5contextTo64
	.globl	ap_md5digest
	.type	ap_md5digest, @function
ap_md5digest:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4224, %rsp
	movq	%rdi, -4216(%rbp)
	movq	%rsi, -4224(%rbp)
	movq	$0, -4208(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	apr_md5_init
	movq	$4096, -4200(%rbp)
	jmp	.L12
.L13:
	movq	-4200(%rbp), %rdx
	leaq	-4192(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_md5_update
	movq	$4096, -4200(%rbp)
.L12:
	leaq	-4200(%rbp), %rdx
	leaq	-4192(%rbp), %rcx
	movq	-4224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	testl	%eax, %eax
	je	.L13
	leaq	-4208(%rbp), %rdx
	movq	-4224(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_seek
	leaq	-96(%rbp), %rdx
	movq	-4216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_md5contextTo64
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_md5digest, .-ap_md5digest
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

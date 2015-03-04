	.file	"util_time.c"
	.local	exploded_cache_localtime
	.comm	exploded_cache_localtime,1024,64
	.local	exploded_cache_gmt
	.comm	exploded_cache_gmt,1024,64
	.text
	.type	cached_explode, @function
cached_explode:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movq	-112(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$15, %eax
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jl	.L2
	movq	-24(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L3
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L4
.L3:
	cmpl	$0, -124(%rbp)
	je	.L5
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_gmt
	jmp	.L11
.L5:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
	jmp	.L11
.L4:
	leaq	-96(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	jmp	.L7
.L2:
	cmpl	$0, -124(%rbp)
	je	.L8
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_gmt
	movl	%eax, -4(%rbp)
	jmp	.L9
.L8:
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
	movl	%eax, -4(%rbp)
.L9:
	cmpl	$0, -4(%rbp)
	je	.L10
	movl	-4(%rbp), %eax
	jmp	.L11
.L10:
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-104(%rbp), %rax
	movl	$44, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 56(%rax)
.L7:
	movq	-112(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$1000000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cached_explode, .-cached_explode
	.globl	ap_explode_recent_localtime
	.type	ap_explode_recent_localtime, @function
ap_explode_recent_localtime:
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %ecx
	movl	$exploded_cache_localtime, %edx
	movq	%rax, %rdi
	call	cached_explode
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_explode_recent_localtime, .-ap_explode_recent_localtime
	.globl	ap_explode_recent_gmt
	.type	ap_explode_recent_gmt, @function
ap_explode_recent_gmt:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %ecx
	movl	$exploded_cache_gmt, %edx
	movq	%rax, %rdi
	call	cached_explode
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_explode_recent_gmt, .-ap_explode_recent_gmt
	.globl	ap_recent_ctime
	.type	ap_recent_ctime, @function
ap_recent_ctime:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_explode_recent_localtime
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	$apr_day_snames, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	$apr_month_snames, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-48(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-48(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$58, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$58, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movl	-40(%rbp), %eax
	addl	$1900, %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$274877907, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$274877907, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$1000, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rdi)
	movq	-72(%rbp), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$100, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rdi)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$0, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_recent_ctime, .-ap_recent_ctime
	.globl	ap_recent_rfc822_date
	.type	ap_recent_rfc822_date, @function
ap_recent_rfc822_date:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_explode_recent_gmt
	movl	-36(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	$apr_day_snames, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$44, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-48(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-48(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movl	-44(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	$apr_month_snames, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movl	-40(%rbp), %eax
	addl	$1900, %eax
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$274877907, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$274877907, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$6, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$1000, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rdi)
	movq	-72(%rbp), %rdi
	leaq	1(%rdi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %esi
	movl	$1374389535, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	$100, %ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rdi)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$58, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-56(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$58, (%rax)
	movq	-72(%rbp), %rcx
	leaq	1(%rcx), %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %esi
	movl	$1717986919, %edx
	movl	%esi, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rcx)
	movq	-72(%rbp), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, -72(%rbp)
	movl	-60(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movb	%al, (%rsi)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$32, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$71, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$77, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$84, (%rax)
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movb	$0, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_recent_rfc822_date, .-ap_recent_rfc822_date
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

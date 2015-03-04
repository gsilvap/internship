	.file	"eoc_bucket.c"
	.text
	.type	eoc_bucket_read, @function
eoc_bucket_read:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	eoc_bucket_read, .-eoc_bucket_read
	.globl	ap_bucket_eoc_make
	.type	ap_bucket_eoc_make, @function
ap_bucket_eoc_make:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$ap_bucket_type_eoc, 16(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_bucket_eoc_make, .-ap_bucket_eoc_make
	.globl	ap_bucket_eoc_create
	.type	ap_bucket_eoc_create, @function
ap_bucket_eoc_create:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$64, %edi
	call	apr_bucket_alloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$apr_bucket_free, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_bucket_eoc_make
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_bucket_eoc_create, .-ap_bucket_eoc_create
	.globl	ap_bucket_type_eoc
	.section	.rodata
.LC0:
	.string	"EOC"
	.align 32
	.type	ap_bucket_type_eoc, @object
	.size	ap_bucket_type_eoc, 56
ap_bucket_type_eoc:
	.quad	.LC0
	.long	5
	.long	1
	.quad	apr_bucket_destroy_noop
	.quad	eoc_bucket_read
	.quad	apr_bucket_setaside_noop
	.quad	apr_bucket_split_notimpl
	.quad	apr_bucket_simple_copy
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

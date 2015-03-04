	.file	"error_bucket.c"
	.text
	.type	error_bucket_read, @function
error_bucket_read:
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
	.size	error_bucket_read, .-error_bucket_read
	.type	error_bucket_destroy, @function
error_bucket_destroy:
.LFB3:
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
	call	apr_bucket_shared_destroy
	testl	%eax, %eax
	je	.L3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_free
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	error_bucket_destroy, .-error_bucket_destroy
	.globl	ap_bucket_error_make
	.type	ap_bucket_error_make, @function
ap_bucket_error_make:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	apr_bucket_alloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 4(%rax)
	cmpq	$0, -40(%rbp)
	je	.L6
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	jmp	.L7
.L6:
	movl	$0, %edx
.L7:
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_bucket_shared_make
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	$ap_bucket_type_error, 16(%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_bucket_error_make, .-ap_bucket_error_make
	.globl	ap_bucket_error_create
	.type	ap_bucket_error_create, @function
ap_bucket_error_create:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
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
	movq	-48(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_bucket_error_make
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_bucket_error_create, .-ap_bucket_error_create
	.globl	ap_bucket_type_error
	.section	.rodata
.LC0:
	.string	"ERROR"
	.align 32
	.type	ap_bucket_type_error, @object
	.size	ap_bucket_type_error, 56
ap_bucket_type_error:
	.quad	.LC0
	.long	5
	.long	1
	.quad	error_bucket_destroy
	.quad	error_bucket_read
	.quad	apr_bucket_setaside_notimpl
	.quad	apr_bucket_split_notimpl
	.quad	apr_bucket_shared_copy
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

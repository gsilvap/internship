	.file	"provider.c"
	.local	global_providers
	.comm	global_providers,8,8
	.local	global_providers_names
	.comm	global_providers_names,8,8
	.text
	.type	cleanup_global_providers, @function
cleanup_global_providers:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$0, global_providers(%rip)
	movq	$0, global_providers_names(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cleanup_global_providers, .-cleanup_global_providers
	.globl	ap_register_provider
	.type	ap_register_provider, @function
ap_register_provider:
.LFB3:
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
	movq	global_providers(%rip), %rax
	testq	%rax, %rax
	jne	.L4
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, global_providers(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, global_providers_names(%rip)
	movq	-24(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$cleanup_global_providers, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
.L4:
	movq	global_providers(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, -8(%rbp)
	movq	global_providers(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L5:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L6
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L6:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	movq	global_providers_names(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, -8(%rbp)
	movq	global_providers_names(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L7:
	movq	-48(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L8:
	movq	-40(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_register_provider, .-ap_register_provider
	.globl	ap_lookup_provider
	.type	ap_lookup_provider, @function
ap_lookup_provider:
.LFB4:
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
	movq	global_providers(%rip), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	global_providers(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L13
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L14
	movl	$0, %eax
	jmp	.L12
.L14:
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_lookup_provider, .-ap_lookup_provider
	.globl	ap_list_provider_names
	.type	ap_list_provider_names, @function
ap_list_provider_names:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-72(%rbp), %rax
	movl	$8, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -16(%rbp)
	movq	global_providers_names(%rip), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-16(%rbp), %rax
	jmp	.L22
.L16:
	movq	global_providers_names(%rip), %rax
	movq	-80(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L18
	movq	-16(%rbp), %rax
	jmp	.L22
.L18:
	movq	-88(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L19
	movq	-16(%rbp), %rax
	jmp	.L22
.L19:
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_first
	movq	%rax, -8(%rbp)
	jmp	.L20
.L21:
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_hash_this
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_next
	movq	%rax, -8(%rbp)
.L20:
	cmpq	$0, -8(%rbp)
	jne	.L21
	movq	-16(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_list_provider_names, .-ap_list_provider_names
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

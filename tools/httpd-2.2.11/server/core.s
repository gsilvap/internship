	.file	"core.c"
	.local	_hooks
	.comm	_hooks,8,8
	.section	.rodata
.LC0:
	.string	"get_mgmt_items"
	.text
	.globl	ap_hook_get_mgmt_items
	.type	ap_hook_get_mgmt_items, @function
ap_hook_get_mgmt_items:
.LFB2:
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
	movl	%ecx, -44(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	jne	.L2
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks(%rip)
	movl	$_hooks, %esi
	movl	$.LC0, %edi
	call	apr_hook_sort_register
.L2:
	movq	_hooks(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	apr_hook_debug_current(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	apr_hook_debug_enabled(%rip), %eax
	testl	%eax, %eax
	je	.L1
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	call	apr_hook_debug_show
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_hook_get_mgmt_items, .-ap_hook_get_mgmt_items
	.globl	ap_hook_get_get_mgmt_items
	.type	ap_hook_get_get_mgmt_items, @function
ap_hook_get_get_mgmt_items:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_hook_get_get_mgmt_items, .-ap_hook_get_get_mgmt_items
	.globl	ap_run_get_mgmt_items
	.type	ap_run_get_mgmt_items, @function
ap_run_get_mgmt_items:
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
	movl	$0, -8(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L10:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L9
	cmpl	$-1, -8(%rbp)
	je	.L9
	jmp	.L7
.L9:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L8:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L10
.L7:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_run_get_mgmt_items, .-ap_run_get_mgmt_items
	.comm	ap_subreq_core_filter_handle,8,8
	.comm	ap_core_output_filter_handle,8,8
	.comm	ap_content_length_filter_handle,8,8
	.comm	ap_core_input_filter_handle,8,8
	.local	errordocument_default
	.comm	errordocument_default,1,1
	.section	.rodata
.LC1:
	.string	"iso-8859-1"
	.text
	.type	create_core_dir_config, @function
create_core_dir_config:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$232, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$232, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L13
	movl	$16, %edx
	jmp	.L14
.L13:
	movl	$31, %edx
.L14:
	movq	-16(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 14(%rax)
	movq	-16(%rbp), %rax
	movzbl	14(%rax), %edx
	movq	-16(%rbp), %rax
	movb	%dl, 13(%rax)
	cmpq	$0, -32(%rbp)
	je	.L15
	movl	$32, %edx
	jmp	.L16
.L15:
	movl	$63, %edx
.L16:
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	movq	-16(%rbp), %rax
	movb	$-1, 16(%rax)
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-49, %edx
	orl	$32, %edx
	movb	%dl, 72(%rax)
	movq	-16(%rbp), %rax
	movl	$3, 184(%rax)
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %edx
	orl	$-64, %edx
	movb	%dl, 72(%rax)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-97, %edx
	orl	$64, %edx
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-16, %edx
	orl	$3, %edx
	movb	%dl, 72(%rax)
	movq	-24(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$2, (%rax)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$63, -4(%rbp)
	jle	.L18
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 112(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 120(%rax)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-16(%rbp), %rax
	movzbl	73(%rax), %edx
	andl	$-7, %edx
	orl	$4, %edx
	movb	%dl, 73(%rax)
	movq	-16(%rbp), %rax
	movq	$.LC1, 80(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-13, %edx
	orl	$8, %edx
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	create_core_dir_config, .-create_core_dir_config
	.type	merge_ct_filters, @function
merge_ct_filters:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L21
.L22:
	movq	-56(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -16(%rbp)
.L21:
	cmpq	$0, -16(%rbp)
	jne	.L22
	jmp	.L23
.L29:
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L24
.L27:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L25
	movl	$1, -36(%rbp)
	jmp	.L26
.L25:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.L24:
	cmpq	$0, -32(%rbp)
	jne	.L27
.L26:
	cmpl	$0, -36(%rbp)
	jne	.L28
	movq	-56(%rbp), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L28:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L23:
	cmpq	$0, -24(%rbp)
	jne	.L29
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	merge_ct_filters, .-merge_ct_filters
	.type	merge_core_dir_configs, @function
merge_core_dir_configs:
.LFB7:
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
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$232, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	73(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 73(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L32
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	14(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	13(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 13(%rax)
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	13(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movzbl	14(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 14(%rax)
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-16(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L34
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L34
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	andl	$-35, %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.L34
.L32:
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	movq	-24(%rbp), %rax
	movzbl	13(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 13(%rax)
	movq	-24(%rbp), %rax
	movzbl	14(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 14(%rax)
.L34:
	movq	-24(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L35
	movq	-24(%rbp), %rax
	movzbl	15(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 15(%rax)
.L35:
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L36
	movq	-24(%rbp), %rax
	movzbl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 16(%rax)
.L36:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
.L37:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L38
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 40(%rax)
.L38:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
.L39:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 56(%rax)
.L40:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	jmp	.L42
.L41:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movl	$456, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
	movl	$0, -4(%rbp)
	jmp	.L43
.L45:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L44
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
.L44:
	addl	$1, -4(%rbp)
.L43:
	cmpl	$56, -4(%rbp)
	jle	.L45
.L42:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$15, %eax
	cmpb	$3, %al
	je	.L46
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	andl	$15, %ecx
	movzbl	72(%rax), %edx
	andl	$-16, %edx
	orl	%ecx, %edx
	movb	%dl, 72(%rax)
.L46:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	sall	$2, %eax
	sarb	$6, %al
	movsbl	%al, %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L47
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	sall	$2, %eax
	sarb	$6, %al
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	72(%rdx), %eax
	andl	$-49, %eax
	orl	%ecx, %eax
	movb	%al, 72(%rdx)
.L47:
	movq	-24(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	$3, %eax
	je	.L48
	movq	-24(%rbp), %rax
	movl	184(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 184(%rax)
.L48:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$-64, %eax
	cmpb	$-64, %al
	je	.L49
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	shrb	$6, %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	72(%rax), %edx
	andl	$63, %edx
	orl	%ecx, %edx
	movb	%dl, 72(%rax)
.L49:
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$96, %eax
	cmpb	$64, %al
	je	.L50
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	shrb	$5, %al
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	sall	$5, %eax
	movl	%eax, %ecx
	movzbl	224(%rdx), %eax
	andl	$-97, %eax
	orl	%ecx, %eax
	movb	%al, 224(%rdx)
.L50:
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 88(%rax)
.L51:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 96(%rax)
.L52:
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L53
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 104(%rax)
.L53:
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$-1, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 112(%rax)
.L54:
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$-1, %rax
	je	.L55
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 120(%rax)
	jmp	.L56
.L55:
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 120(%rax)
.L56:
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	jne	.L57
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 136(%rax)
	jmp	.L58
.L57:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	testq	%rax, %rax
	je	.L58
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	136(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 136(%rax)
.L58:
	movq	-40(%rbp), %rax
	movl	$256, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 32(%rax)
	movl	$0, -4(%rbp)
	jmp	.L59
.L62:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L60
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	jmp	.L61
.L60:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L61:
	addl	$1, -4(%rbp)
.L59:
	cmpl	$63, -4(%rbp)
	jle	.L62
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L63
	movq	-24(%rbp), %rax
	movl	128(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 128(%rax)
.L63:
	movq	-24(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$6, %eax
	cmpb	$4, %al
	je	.L64
	movq	-24(%rbp), %rax
	movzbl	73(%rax), %eax
	shrb	%al
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	leal	(%rax,%rax), %ecx
	movzbl	73(%rdx), %eax
	andl	$-7, %eax
	orl	%ecx, %eax
	movb	%al, 73(%rdx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 80(%rax)
.L64:
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L65
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 152(%rax)
.L65:
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L66
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 160(%rax)
.L66:
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	je	.L67
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 168(%rax)
.L67:
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 176(%rax)
.L68:
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-32(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %r8d
	movl	$merge_ct_filters, %ecx
	movq	%rax, %rdi
	call	apr_hash_merge
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_copy
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 192(%rax)
	jmp	.L70
.L71:
	movq	-32(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_copy
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 192(%rax)
.L70:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	movq	-32(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-32(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	216(%rax), %rax
	notq	%rax
	andq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	orq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 200(%rax)
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 216(%rax)
.L73:
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	cmpq	$1, %rax
	je	.L74
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	andq	$-2, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 200(%rax)
.L74:
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$3, %eax
	cmpb	$2, %al
	je	.L75
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, %ecx
	andl	$3, %ecx
	movzbl	224(%rax), %edx
	andl	$-4, %edx
	orl	%ecx, %edx
	movb	%dl, 224(%rax)
.L75:
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$12, %eax
	cmpb	$8, %al
	je	.L76
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	shrb	$2, %al
	andl	$3, %eax
	movq	-32(%rbp), %rdx
	andl	$3, %eax
	leal	0(,%rax,4), %ecx
	movzbl	224(%rdx), %eax
	andl	$-13, %eax
	orl	%ecx, %eax
	movb	%al, 224(%rdx)
.L76:
	movq	-24(%rbp), %rax
	movzbl	224(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	movq	-32(%rbp), %rdx
	andl	$1, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	224(%rdx), %eax
	andl	$-17, %eax
	orl	%ecx, %eax
	movb	%al, 224(%rdx)
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	merge_core_dir_configs, .-merge_core_dir_configs
	.section	.rodata
.LC2:
	.string	".htaccess"
	.align 8
.LC3:
	.string	"/home/user/Desktop/demo/installdir//htdocs"
.LC4:
	.string	"data"
.LC5:
	.string	"http"
.LC6:
	.string	"https"
	.text
	.type	create_core_server_config, @function
create_core_server_config:
.LFB8:
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
	movl	76(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L79
	movl	$.LC2, %edx
	jmp	.L80
.L79:
	movl	$0, %edx
.L80:
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	cmpl	$0, -4(%rbp)
	jne	.L81
	movl	$.LC3, %edx
	jmp	.L82
.L81:
	movl	$0, %edx
.L82:
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC4, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_table_set
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC4, %edx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_set
	movq	-16(%rbp), %rax
	movl	$-1, 56(%rax)
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	create_core_server_config, .-create_core_server_config
	.type	merge_core_server_configs, @function
merge_core_server_configs:
.LFB9:
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
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$64, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L85
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L85:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L86
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L86:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L87
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
.L87:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L88
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	jmp	.L89
.L88:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
.L89:
	movq	-24(%rbp), %rdx
	movl	%eax, 32(%rdx)
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L90
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	jmp	.L91
.L90:
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
.L91:
	movq	-24(%rbp), %rdx
	movl	%eax, 36(%rdx)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	cmpl	$-1, %eax
	je	.L92
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.L93
.L92:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
.L93:
	movq	-24(%rbp), %rdx
	movl	%eax, 56(%rdx)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	merge_core_server_configs, .-merge_core_server_configs
	.globl	ap_add_per_dir_conf
	.type	ap_add_per_dir_conf, @function
ap_add_per_dir_conf:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_add_per_dir_conf, .-ap_add_per_dir_conf
	.globl	ap_add_per_url_conf
	.type	ap_add_per_url_conf, @function
ap_add_per_url_conf:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_add_per_url_conf, .-ap_add_per_url_conf
	.globl	ap_add_file_conf
	.type	ap_add_file_conf, @function
ap_add_file_conf:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_add_file_conf, .-ap_add_file_conf
	.type	reorder_sorter, @function
reorder_sorter:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L99
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L99
	movl	$-1, %eax
	jmp	.L100
.L99:
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L101
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L101
	movl	$1, %eax
	jmp	.L100
.L101:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jnb	.L102
	movl	$-1, %eax
	jmp	.L100
.L102:
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, %edx
	jbe	.L103
	movl	$1, %eax
	jmp	.L100
.L103:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
.L100:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	reorder_sorter, .-reorder_sorter
	.globl	ap_core_reorder_directories
	.type	ap_core_reorder_directories, @function
ap_core_reorder_directories:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L104
	movq	-72(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -48(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L107
.L108:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 8(%rdx)
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L107:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L108
	movl	-28(%rbp), %eax
	movslq	%eax, %rsi
	movq	-48(%rbp), %rax
	movl	$reorder_sorter, %ecx
	movl	$16, %edx
	movq	%rax, %rdi
	call	qsort
	movl	$0, -4(%rbp)
	jmp	.L109
.L110:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, -4(%rbp)
.L109:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L110
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_core_reorder_directories, .-ap_core_reorder_directories
	.globl	ap_allow_options
	.type	ap_allow_options, @function
ap_allow_options:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_allow_options, .-ap_allow_options
	.globl	ap_allow_overrides
	.type	ap_allow_overrides, @function
ap_allow_overrides:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_allow_overrides, .-ap_allow_overrides
	.globl	ap_auth_type
	.type	ap_auth_type, @function
ap_auth_type:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_auth_type, .-ap_auth_type
	.globl	ap_auth_name
	.type	ap_auth_name, @function
ap_auth_name:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_auth_name, .-ap_auth_name
	.section	.rodata
.LC7:
	.string	"text/plain"
	.text
	.globl	ap_default_type
	.type	ap_default_type, @function
ap_default_type:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L120
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L121
.L120:
	movl	$.LC7, %eax
.L121:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_default_type, .-ap_default_type
	.globl	ap_document_root
	.type	ap_document_root, @function
ap_document_root:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_document_root, .-ap_document_root
	.globl	ap_requires
	.type	ap_requires, @function
ap_requires:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_requires, .-ap_requires
	.globl	ap_satisfies
	.type	ap_satisfies, @function
ap_satisfies:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_satisfies, .-ap_satisfies
	.globl	ap_response_code_string
	.type	ap_response_code_string, @function
ap_response_code_string:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L130
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	jmp	.L131
.L130:
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L132
	movl	$0, %eax
	jmp	.L131
.L132:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	$errordocument_default, %rax
	jne	.L133
	movl	$0, %eax
	jmp	.L131
.L133:
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
.L131:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_response_code_string, .-ap_response_code_string
	.type	do_double_reverse, @function
do_double_reverse:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$3, %eax
	testb	%al, %al
	je	.L135
	jmp	.L134
.L135:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L137
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L138
.L137:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %edx
	orl	$3, %edx
	movb	%dl, 72(%rax)
	jmp	.L134
.L138:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L139
	jmp	.L140
.L142:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_equal
	testl	%eax, %eax
	je	.L141
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 72(%rax)
	jmp	.L134
.L141:
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -16(%rbp)
.L140:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	jne	.L142
.L139:
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %edx
	orl	$3, %edx
	movb	%dl, 72(%rax)
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	do_double_reverse, .-do_double_reverse
	.section	.rodata
.LC8:
	.string	""
	.text
	.globl	ap_get_remote_host
	.type	ap_get_remote_host, @function
ap_get_remote_host:
.LFB25:
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
	movq	%rcx, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L145
	leaq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.L145:
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L146
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	72(%rax), %eax
	andl	$15, %eax
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	cmpl	$3, -4(%rbp)
	jne	.L148
	movl	$0, -4(%rbp)
	jmp	.L148
.L146:
	movl	$0, -4(%rbp)
.L148:
	cmpl	$2, -36(%rbp)
	je	.L149
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L149
	cmpl	$3, -36(%rbp)
	je	.L150
	cmpl	$0, -4(%rbp)
	je	.L149
.L150:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	48(%rdx), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	apr_getnameinfo
	testl	%eax, %eax
	jne	.L151
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	cmpl	$2, -4(%rbp)
	jne	.L151
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	do_double_reverse
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$3, %eax
	cmpb	$1, %al
	je	.L151
	movq	-24(%rbp), %rax
	movq	$0, 48(%rax)
.L151:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L149
	movq	-24(%rbp), %rax
	movq	$.LC8, 48(%rax)
.L149:
	cmpl	$3, -36(%rbp)
	jne	.L152
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	do_double_reverse
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	andl	$3, %eax
	cmpb	$3, %al
	jne	.L152
	movl	$0, %eax
	jmp	.L157
.L152:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L154
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L154
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.L157
.L154:
	cmpl	$0, -36(%rbp)
	je	.L155
	cmpl	$3, -36(%rbp)
	jne	.L156
.L155:
	movl	$0, %eax
	jmp	.L157
.L156:
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
.L157:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_get_remote_host, .-ap_get_remote_host
	.local	ident_lookup
	.comm	ident_lookup,8,8
	.globl	ap_get_remote_logname
	.type	ap_get_remote_logname, @function
ap_get_remote_logname:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L159
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	56(%rax), %rax
	jmp	.L160
.L159:
	movq	ident_lookup(%rip), %rax
	testq	%rax, %rax
	je	.L161
	movq	ident_lookup(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L160
.L161:
	movl	$0, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_get_remote_logname, .-ap_get_remote_logname
	.section	.rodata
	.align 8
.LC9:
	.string	"ap_get_server_name: Invalid UCN Option somehow"
.LC10:
	.string	"core.c"
.LC11:
	.string	"localhost"
	.text
	.globl	ap_get_server_name
	.type	ap_get_server_name, @function
ap_get_server_name:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	72(%rax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L164
	cmpl	$1, %eax
	jg	.L165
	testl	%eax, %eax
	je	.L166
	jmp	.L163
.L165:
	cmpl	$2, %eax
	je	.L167
	cmpl	$3, %eax
	je	.L166
	jmp	.L163
.L164:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L168
.L167:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L169
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	leaq	88(%rdx), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	apr_getnameinfo
	testl	%eax, %eax
	je	.L170
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L169
.L170:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
.L169:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L168
.L166:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L171
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	jmp	.L172
.L171:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
.L172:
	movq	%rax, -8(%rbp)
	jmp	.L168
.L163:
	movq	-40(%rbp), %rax
	movl	$.LC9, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$932, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movq	$.LC11, -8(%rbp)
	nop
.L168:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_get_server_name, .-ap_get_server_name
	.section	.rodata
.LC12:
	.string	"[%s]"
	.text
	.type	get_server_name_for_url, @function
get_server_name_for_url:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L175
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L176
.L175:
	movq	-8(%rbp), %rax
.L176:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	get_server_name_for_url, .-get_server_name_for_url
	.section	.rodata
	.align 8
.LC13:
	.string	"ap_get_server_port: Invalid UCN Option somehow"
	.text
	.globl	ap_get_server_port
	.type	ap_get_server_port, @function
ap_get_server_port:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	je	.L179
	cmpl	$1, %eax
	jg	.L180
	testl	%eax, %eax
	je	.L181
	jmp	.L178
.L180:
	cmpl	$3, %eax
	jg	.L178
.L181:
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$96, %eax
	cmpb	$32, %al
	jne	.L182
	movq	-24(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L183
	movq	-24(%rbp), %rax
	movzwl	592(%rax), %eax
	jmp	.L184
.L183:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	testw	%ax, %ax
	je	.L185
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	jmp	.L184
.L185:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	testw	%ax, %ax
	je	.L187
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	jmp	.L184
.L187:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
.L184:
	movw	%ax, -2(%rbp)
	jmp	.L194
.L182:
	movq	-24(%rbp), %rax
	movq	552(%rax), %rax
	testq	%rax, %rax
	je	.L190
	movq	-24(%rbp), %rax
	movzwl	592(%rax), %eax
	jmp	.L191
.L190:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	testw	%ax, %ax
	je	.L192
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	jmp	.L191
.L192:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
.L191:
	movw	%ax, -2(%rbp)
	jmp	.L194
.L179:
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$96, %eax
	cmpb	$32, %al
	jne	.L195
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	testw	%ax, %ax
	je	.L196
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	jmp	.L197
.L196:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	testw	%ax, %ax
	je	.L198
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	jmp	.L197
.L198:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
.L197:
	movw	%ax, -2(%rbp)
	jmp	.L194
.L195:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	testw	%ax, %ax
	je	.L201
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	48(%rax), %eax
	jmp	.L202
.L201:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
.L202:
	movw	%ax, -2(%rbp)
	jmp	.L194
.L178:
	movq	-24(%rbp), %rax
	movl	$.LC13, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$995, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
	movw	%ax, -2(%rbp)
	nop
.L194:
	movzwl	-2(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	ap_get_server_port, .-ap_get_server_port
	.section	.rodata
.LC14:
	.string	"://"
.LC15:
	.string	"%s://%s:%u%s"
	.text
	.globl	ap_construct_url
	.type	ap_construct_url, @function
ap_construct_url:
.LFB30:
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
	movq	%rax, %rdi
	call	ap_get_server_port
	movzwl	%ax, %eax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	get_server_name_for_url
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_default_port
	movzwl	%ax, %eax
	cmpl	-4(%rbp), %eax
	jne	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_http_scheme
	movq	%rax, %rsi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$.LC14, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L206
.L205:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_http_scheme
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rsi, %r9
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
.L206:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ap_construct_url, .-ap_construct_url
	.globl	ap_get_limit_req_body
	.type	ap_get_limit_req_body, @function
ap_get_limit_req_body:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$-1, %rax
	jne	.L208
	movl	$0, %eax
	jmp	.L209
.L208:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
.L209:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ap_get_limit_req_body, .-ap_get_limit_req_body
	.type	find_parent, @function
find_parent:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L211
.L213:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L211
	movq	-8(%rbp), %rax
	jmp	.L212
.L211:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L213
	movl	$0, %eax
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	find_parent, .-find_parent
	.section	.rodata
.LC16:
	.string	">"
	.align 8
.LC17:
	.string	" cannot occur within <VirtualHost> section"
	.align 8
.LC18:
	.string	" cannot occur within <Limit> section"
	.align 8
.LC19:
	.string	" cannot occur within <Directory/Location/Files> section"
.LC20:
	.string	"<Directory"
.LC21:
	.string	"<DirectoryMatch"
.LC22:
	.string	"<Location"
.LC23:
	.string	"<LocationMatch"
.LC24:
	.string	"<Files"
.LC25:
	.string	"<FilesMatch"
.LC26:
	.string	"> section"
.LC27:
	.string	" cannot occur within "
	.text
	.globl	ap_check_cmd_context
	.type	ap_check_cmd_context, @function
ap_check_cmd_context:
.LFB33:
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
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L215
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	je	.L215
	movl	$.LC16, %eax
	jmp	.L216
.L215:
	movl	$.LC8, %eax
.L216:
	movq	%rax, -32(%rbp)
	movl	-44(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L217
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L217
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC17, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L218
.L217:
	movl	-44(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L219
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$-1, %rax
	je	.L219
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC18, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L218
.L219:
	movl	-44(%rbp), %eax
	andl	$28, %eax
	cmpl	$28, %eax
	jne	.L220
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L221
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC19, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L218
.L221:
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movl	24(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L220
	movl	$0, %eax
	jmp	.L218
.L220:
	movl	-44(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L222
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L223
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L223
.L222:
	movl	-44(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L224
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L223
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L223
.L224:
	movl	-44(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L225
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L223
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	find_parent
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L225
.L223:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	movq	-32(%rbp), %rdx
	pushq	$0
	movl	$.LC26, %r9d
	movq	%rcx, %r8
	movl	$.LC27, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L218
.L225:
	movl	$0, %eax
.L218:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ap_check_cmd_context, .-ap_check_cmd_context
	.type	set_access_name, @function
set_access_name:
.LFB34:
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
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L227
	movq	-24(%rbp), %rax
	jmp	.L228
.L227:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	set_access_name, .-set_access_name
	.section	.rodata
.LC28:
	.string	"Off"
.LC29:
	.string	"On"
	.text
	.type	set_add_default_charset, @function
set_add_default_charset:
.LFB35:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L230
	movq	-16(%rbp), %rax
	jmp	.L231
.L230:
	movq	-40(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L232
	movq	-8(%rbp), %rax
	movzbl	73(%rax), %edx
	andl	$-7, %edx
	movb	%dl, 73(%rax)
	jmp	.L233
.L232:
	movq	-40(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L234
	movq	-8(%rbp), %rax
	movzbl	73(%rax), %edx
	andl	$-7, %edx
	orl	$2, %edx
	movb	%dl, 73(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC1, 80(%rax)
	jmp	.L233
.L234:
	movq	-8(%rbp), %rax
	movzbl	73(%rax), %edx
	andl	$-7, %edx
	orl	$2, %edx
	movb	%dl, 73(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 80(%rax)
.L233:
	movl	$0, %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	set_add_default_charset, .-set_add_default_charset
	.section	.rodata
	.align 8
.LC30:
	.string	"DocumentRoot must be a directory"
	.align 8
.LC31:
	.string	"Warning: DocumentRoot [%s] does not exist"
	.text
	.type	set_document_root, @function
set_document_root:
.LFB36:
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
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L236
	movq	-24(%rbp), %rax
	jmp	.L237
.L236:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L238
	movl	$.LC30, %eax
	jmp	.L237
.L238:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %r8
	movl	$32, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	testl	%eax, %eax
	jne	.L239
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_is_directory
	testl	%eax, %eax
	jne	.L240
.L239:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	pushq	-56(%rbp)
	movl	$.LC31, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1182, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L240
.L241:
	movl	$.LC30, %eax
	jmp	.L237
.L240:
	movl	$0, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	set_document_root, .-set_document_root
	.section	.rodata
.LC32:
	.string	"\""
	.text
	.globl	ap_custom_response
	.type	ap_custom_response, @function
ap_custom_response:
.LFB37:
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
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L243
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$456, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$456, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
.L243:
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	jne	.L244
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L245
.L244:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L245
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L246
.L245:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
.L246:
	movq	%rax, (%rbx)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ap_custom_response, .-ap_custom_response
	.section	.rodata
	.align 8
.LC33:
	.string	"Unsupported HTTP response code "
	.align 8
.LC34:
	.string	"cannot use a full URL in a 401 ErrorDocument directive --- ignoring!"
.LC35:
	.string	"default"
	.text
	.type	set_error_document, @function
set_error_document:
.LFB38:
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
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L248
	movq	-40(%rbp), %rax
	jmp	.L249
.L248:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -44(%rbp)
	movl	$500, %edi
	call	ap_index_of_response
	movl	%eax, -48(%rbp)
	cmpl	$500, -44(%rbp)
	jne	.L250
	movl	-48(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.L251
.L250:
	movl	-44(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.L251
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC33, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L249
.L251:
	movq	-80(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L252
	movl	$0, -24(%rbp)
	jmp	.L253
.L252:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L254
	movl	$1, -24(%rbp)
	jmp	.L253
.L254:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	je	.L255
	movl	$2, -24(%rbp)
	jmp	.L253
.L255:
	movl	$0, -24(%rbp)
.L253:
	cmpl	$401, -44(%rbp)
	jne	.L256
	cmpl	$2, -24(%rbp)
	jne	.L256
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movl	$.LC34, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1254, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	jmp	.L257
.L256:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.L258
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$456, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$456, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 64(%rax)
.L258:
	movq	-80(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L259
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$errordocument_default, (%rax)
	jmp	.L257
.L259:
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	cmpl	$0, -24(%rbp)
	jne	.L260
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-80(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L261
.L260:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
.L261:
	movq	%rax, (%rbx)
.L257:
	movl	$0, %eax
.L249:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	set_error_document, .-set_error_document
	.section	.rodata
.LC36:
	.string	"Indexes"
.LC37:
	.string	"Includes"
.LC38:
	.string	"IncludesNOEXEC"
.LC39:
	.string	"FollowSymLinks"
.LC40:
	.string	"SymLinksIfOwnerMatch"
.LC41:
	.string	"ExecCGI"
.LC42:
	.string	"MultiViews"
.LC43:
	.string	"RunScripts"
.LC44:
	.string	"None"
.LC45:
	.string	"All"
.LC46:
	.string	"Illegal option "
.LC47:
	.string	","
	.text
	.type	set_allow_opts, @function
set_allow_opts:
.LFB39:
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
	movl	$1, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L263
.L277:
	cmpl	$0, -8(%rbp)
	je	.L264
	movq	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -8(%rbp)
.L264:
	movq	-24(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L265
	movb	$1, -1(%rbp)
	jmp	.L266
.L265:
	movq	-24(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L267
	movb	$2, -1(%rbp)
	jmp	.L266
.L267:
	movq	-24(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L268
	movb	$34, -1(%rbp)
	jmp	.L266
.L268:
	movq	-24(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L269
	movb	$4, -1(%rbp)
	jmp	.L266
.L269:
	movq	-24(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L270
	movb	$64, -1(%rbp)
	jmp	.L266
.L270:
	movq	-24(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L271
	movb	$8, -1(%rbp)
	jmp	.L266
.L271:
	movq	-24(%rbp), %rax
	movl	$.LC42, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L272
	movb	$-128, -1(%rbp)
	jmp	.L266
.L272:
	movq	-24(%rbp), %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L273
	movb	$-120, -1(%rbp)
	jmp	.L266
.L273:
	movq	-24(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L274
	movb	$0, -1(%rbp)
	jmp	.L266
.L274:
	movq	-24(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L275
	movb	$15, -1(%rbp)
	jmp	.L266
.L275:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L278
.L266:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	orb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
.L263:
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	call	apr_strtok
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L277
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-17, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
	movl	$0, %eax
.L278:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	set_allow_opts, .-set_allow_opts
	.section	.rodata
	.align 8
.LC48:
	.string	"Useless use of AllowOverride in line %d of %s."
.LC49:
	.string	"Limit"
.LC50:
	.string	"Options"
.LC51:
	.string	"FileInfo"
.LC52:
	.string	"AuthConfig"
.LC53:
	.string	"Illegal override option "
	.text
	.type	set_override, @function
set_override:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L280
	movq	-24(%rbp), %rax
	jmp	.L281
.L280:
	movq	-56(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	testq	%rax, %rax
	je	.L282
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	56(%rax), %eax
	movq	-56(%rbp), %rcx
	movq	72(%rcx), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC48, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$1358, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L282:
	movq	-16(%rbp), %rax
	movb	$0, 15(%rax)
	jmp	.L283
.L295:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$61, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L284
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movb	$0, (%rax)
.L284:
	movq	-32(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L285
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	orl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	jmp	.L286
.L285:
	movq	-40(%rbp), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L287
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	orl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	cmpq	$0, -8(%rbp)
	je	.L288
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	set_allow_opts
	jmp	.L286
.L288:
	movq	-16(%rbp), %rax
	movb	$15, 16(%rax)
	jmp	.L286
.L287:
	movq	-32(%rbp), %rax
	movl	$.LC51, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L290
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	jmp	.L286
.L290:
	movq	-32(%rbp), %rax
	movl	$.LC52, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L291
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	orl	$8, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	jmp	.L286
.L291:
	movq	-32(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L292
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
	jmp	.L286
.L292:
	movq	-32(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L293
	movq	-16(%rbp), %rax
	movb	$0, 15(%rax)
	jmp	.L286
.L293:
	movq	-32(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L294
	movq	-16(%rbp), %rax
	movb	$31, 15(%rax)
	jmp	.L286
.L294:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L281
.L286:
	movq	-16(%rbp), %rax
	movzbl	15(%rax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movb	%dl, 15(%rax)
.L283:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L295
	movl	$0, %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	set_override, .-set_override
	.section	.rodata
.LC54:
	.string	" not allowed here"
.LC55:
	.string	"Option "
	.text
	.type	set_options, @function
set_options:
.LFB41:
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
	movq	%rax, -32(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L297
.L316:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -24(%rbp)
	movb	$0, -9(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L298
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L299
.L298:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	jmp	.L300
.L299:
	cmpl	$0, -8(%rbp)
	je	.L300
	movq	-32(%rbp), %rax
	movb	$0, 12(%rax)
	movl	$0, -8(%rbp)
.L300:
	movq	-24(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L301
	movb	$1, -1(%rbp)
	jmp	.L302
.L301:
	movq	-24(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L303
	movb	$2, -1(%rbp)
	jmp	.L302
.L303:
	movq	-24(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L304
	movb	$34, -1(%rbp)
	jmp	.L302
.L304:
	movq	-24(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L305
	movb	$4, -1(%rbp)
	jmp	.L302
.L305:
	movq	-24(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L306
	movb	$64, -1(%rbp)
	jmp	.L302
.L306:
	movq	-24(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L307
	movb	$8, -1(%rbp)
	jmp	.L302
.L307:
	movq	-24(%rbp), %rax
	movl	$.LC42, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L308
	movb	$-128, -1(%rbp)
	jmp	.L302
.L308:
	movq	-24(%rbp), %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L309
	movb	$-120, -1(%rbp)
	jmp	.L302
.L309:
	movq	-24(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L310
	movb	$0, -1(%rbp)
	jmp	.L302
.L310:
	movq	-24(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L311
	movb	$15, -1(%rbp)
	jmp	.L302
.L311:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L312
.L302:
	movq	-40(%rbp), %rax
	movl	112(%rax), %edx
	movzbl	-1(%rbp), %eax
	andl	%eax, %edx
	movzbl	-1(%rbp), %eax
	cmpl	%eax, %edx
	je	.L313
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC54, %ecx
	movl	$.LC55, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L312
.L313:
	cmpb	$45, -9(%rbp)
	jne	.L314
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	orb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 14(%rax)
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 13(%rax)
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.L297
.L314:
	cmpb	$43, -9(%rbp)
	jne	.L315
	movq	-32(%rbp), %rax
	movzbl	13(%rax), %eax
	orb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 13(%rax)
	movq	-32(%rbp), %rax
	movzbl	14(%rax), %eax
	movl	%eax, %edx
	movzbl	-1(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 14(%rax)
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	orb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
	jmp	.L297
.L315:
	movq	-32(%rbp), %rax
	movzbl	12(%rax), %eax
	orb	-1(%rbp), %al
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 12(%rax)
.L297:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L316
	movl	$0, %eax
.L312:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	set_options, .-set_options
	.section	.rodata
.LC56:
	.string	"Size"
.LC57:
	.string	"LMTime"
.LC58:
	.string	"MTime"
.LC59:
	.string	"LastModified"
.LC60:
	.string	"INode"
.LC61:
	.string	" directive"
.LC62:
	.string	"' for "
.LC63:
	.string	"Unknown keyword '"
	.align 8
.LC64:
	.string	"' cannot be used with '+' or '-'"
.LC65:
	.string	" keyword '"
	.text
	.type	set_etag_bits, @function
set_etag_bits:
.LFB42:
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
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L318
.L337:
	movb	$42, -9(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -28(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L319
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L320
.L319:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	addq	$1, -24(%rbp)
	jmp	.L321
.L320:
	cmpl	$0, -32(%rbp)
	je	.L321
	movq	-48(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 216(%rax)
	movl	$0, -32(%rbp)
.L321:
	movq	-24(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L322
	cmpb	$42, -9(%rbp)
	je	.L323
	movl	$0, -28(%rbp)
	jmp	.L325
.L323:
	movq	$1, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 200(%rax)
	movl	$1, -36(%rbp)
	jmp	.L325
.L322:
	movq	-24(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L326
	cmpb	$42, -9(%rbp)
	je	.L327
	movl	$0, -28(%rbp)
	jmp	.L325
.L327:
	movl	$1, -36(%rbp)
	movq	$14, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 200(%rax)
	jmp	.L325
.L326:
	movq	-24(%rbp), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L329
	movq	$8, -8(%rbp)
	jmp	.L325
.L329:
	movq	-24(%rbp), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L330
	movq	-24(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L330
	movq	-24(%rbp), %rax
	movl	$.LC59, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L331
.L330:
	movq	$2, -8(%rbp)
	jmp	.L325
.L331:
	movq	-24(%rbp), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L332
	movq	$4, -8(%rbp)
	jmp	.L325
.L332:
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	$0
	movl	$.LC61, %r9d
	movq	%rcx, %r8
	movl	$.LC62, %ecx
	movl	$.LC63, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L341
.L325:
	cmpl	$0, -28(%rbp)
	jne	.L334
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %r9d
	movl	$.LC64, %r8d
	movq	%rdx, %rcx
	movl	$.LC65, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L341
.L334:
	cmpb	$43, -9(%rbp)
	jne	.L335
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	orq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 208(%rax)
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdx
	notq	%rdx
	andq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 216(%rax)
	jmp	.L318
.L335:
	cmpb	$45, -9(%rbp)
	jne	.L336
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	orq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdx
	notq	%rdx
	andq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 208(%rax)
	jmp	.L318
.L336:
	movq	-48(%rbp), %rax
	movq	200(%rax), %rax
	orq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 208(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 216(%rax)
	movl	$1, -36(%rbp)
.L318:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L337
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	testq	%rax, %rax
	je	.L338
	movq	-48(%rbp), %rax
	movq	208(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 208(%rax)
.L338:
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	je	.L339
	movq	-48(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 216(%rax)
.L339:
	cmpl	$0, -36(%rbp)
	je	.L340
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 200(%rax)
	movq	-48(%rbp), %rax
	movq	200(%rax), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L340
	movq	-48(%rbp), %rax
	movq	200(%rax), %rax
	andq	$-2, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 200(%rax)
.L340:
	movl	$0, %eax
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	set_etag_bits, .-set_etag_bits
	.section	.rodata
.LC66:
	.string	"on"
.LC67:
	.string	"off"
	.align 8
.LC68:
	.string	"parameter must be 'on' or 'off'"
	.text
	.type	set_enable_mmap, @function
set_enable_mmap:
.LFB43:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L343
	movq	-16(%rbp), %rax
	jmp	.L344
.L343:
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L345
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 224(%rax)
	jmp	.L346
.L345:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L347
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 224(%rax)
	jmp	.L346
.L347:
	movl	$.LC68, %eax
	jmp	.L344
.L346:
	movl	$0, %eax
.L344:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	set_enable_mmap, .-set_enable_mmap
	.type	set_enable_sendfile, @function
set_enable_sendfile:
.LFB44:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L349
	movq	-16(%rbp), %rax
	jmp	.L350
.L349:
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L351
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-13, %edx
	orl	$4, %edx
	movb	%dl, 224(%rax)
	jmp	.L352
.L351:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L353
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-13, %edx
	movb	%dl, 224(%rax)
	jmp	.L352
.L353:
	movl	$.LC68, %eax
	jmp	.L350
.L352:
	movl	$0, %eax
.L350:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	set_enable_sendfile, .-set_enable_sendfile
	.section	.rodata
.LC69:
	.string	"all"
.LC70:
	.string	"any"
	.align 8
.LC71:
	.string	"Satisfy either 'any' or 'all'."
	.text
	.type	satisfy, @function
satisfy:
.LFB45:
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
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$2, -4(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L355
	movl	$0, -4(%rbp)
	jmp	.L356
.L355:
	movq	-40(%rbp), %rax
	movl	$.LC70, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L357
	movl	$1, -4(%rbp)
	jmp	.L356
.L357:
	movl	$.LC71, %eax
	jmp	.L358
.L356:
	movl	$0, -8(%rbp)
	jmp	.L359
.L361:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L360
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
.L360:
	addl	$1, -8(%rbp)
.L359:
	cmpl	$63, -8(%rbp)
	jle	.L361
	movl	$0, %eax
.L358:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	satisfy, .-satisfy
	.type	require, @function
require:
.LFB46:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L363
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
.L363:
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	require, .-require
	.section	.rodata
	.align 8
.LC72:
	.string	"> directive missing closing '>'"
	.text
	.type	unclosed_directive, @function
unclosed_directive:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC72, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	unclosed_directive, .-unclosed_directive
	.section	.rodata
	.align 8
.LC73:
	.string	"> directive requires additional arguments"
	.text
	.type	missing_container_arg, @function
missing_container_arg:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC73, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	missing_container_arg, .-missing_container_arg
	.section	.rodata
	.align 8
.LC74:
	.string	"TRACE cannot be controlled by <Limit>, see TraceEnable"
	.text
	.globl	ap_limit_section
	.type	ap_limit_section, @function
ap_limit_section:
.LFB49:
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
	movq	-88(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	88(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L370
	movq	-40(%rbp), %rax
	jmp	.L380
.L370:
	cmpq	$0, -24(%rbp)
	jne	.L372
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L380
.L372:
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L373
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L380
.L373:
	jmp	.L374
.L377:
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, -12(%rbp)
	cmpl	$6, -12(%rbp)
	jne	.L375
	cmpq	$0, -32(%rbp)
	jne	.L375
	movl	$.LC74, %eax
	jmp	.L380
.L375:
	cmpl	$26, -12(%rbp)
	jne	.L376
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_method_register
	movl	%eax, -12(%rbp)
.L376:
	movl	-12(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -8(%rbp)
.L374:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L377
	cmpq	$0, -32(%rbp)
	je	.L378
	movq	-8(%rbp), %rax
	notq	%rax
	jmp	.L379
.L378:
	movq	-8(%rbp), %rax
.L379:
	movq	-72(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-72(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-56(%rbp), %rax
.L380:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ap_limit_section, .-ap_limit_section
	.section	.rodata
	.align 8
.LC75:
	.string	"<DirectoryMatch > block must specify a path"
	.align 8
.LC76:
	.string	"<Directory > block must specify a path"
.LC77:
	.string	"~"
	.align 8
.LC78:
	.string	"<Directory ~ > block must specify a path"
.LC79:
	.string	"Regex could not be compiled"
.LC80:
	.string	"/"
.LC81:
	.string	"\"> path is invalid."
.LC82:
	.string	"<Directory \""
	.align 8
.LC83:
	.string	"> arguments not (yet) supported."
.LC84:
	.string	"Multiple "
	.text
	.type	dirsection, @function
dirsection:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_per_dir_config
	movq	%rax, -56(%rbp)
	movq	$0, -24(%rbp)
	movq	-120(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-120(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L382
	movq	-72(%rbp), %rax
	jmp	.L383
.L382:
	cmpq	$0, -32(%rbp)
	jne	.L384
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L383
.L384:
	movq	-32(%rbp), %rax
	movq	-136(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L385
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L383
.L385:
	movq	-136(%rbp), %rax
	testq	%rax, %rax
	jne	.L386
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L387
	movl	$.LC75, %eax
	jmp	.L383
.L387:
	movl	$.LC76, %eax
	jmp	.L383
.L386:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-120(%rbp), %rax
	movl	$95, 8(%rax)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movl	$.LC77, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L388
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L389
	movl	$.LC78, %eax
	jmp	.L383
.L389:
	movq	-120(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L390
	movl	$.LC79, %eax
	jmp	.L383
.L388:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L391
	movq	-120(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L390
	movl	$.LC79, %eax
	jmp	.L383
.L391:
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L390
	movq	-120(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-104(%rbp), %rax
	movq	%rcx, %r8
	movl	$32, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L392
	cmpl	$20025, -76(%rbp)
	je	.L392
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC81, %ecx
	movl	$.LC82, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L383
.L392:
	movq	-104(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rbx
	movq	-120(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L390
	movq	-120(%rbp), %rax
	movq	80(%rax), %rsi
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC80, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 80(%rax)
.L390:
	movq	-120(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movl	$core_module, %ecx
	movq	%rax, %rdi
	call	ap_set_config_vectors
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.L394
	movq	-96(%rbp), %rax
	jmp	.L383
.L394:
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-120(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	setne	%dl
	movq	-88(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	73(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 73(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L395
	movq	-88(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.L396
.L395:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_count_dirs
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 8(%rax)
.L396:
	movq	-120(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_per_dir_conf
	movq	-136(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L397
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC83, %ecx
	movl	$.LC84, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L383
.L397:
	movq	-120(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-120(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L383:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	dirsection, .-dirsection
	.type	urlsection, @function
urlsection:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-104(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_per_dir_config
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L399
	movq	-56(%rbp), %rax
	jmp	.L400
.L399:
	cmpq	$0, -16(%rbp)
	jne	.L401
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L400
.L401:
	movq	-16(%rbp), %rax
	movq	-104(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L402
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L400
.L402:
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-88(%rbp), %rax
	movl	$95, 8(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L403
	movq	-88(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L404
	movl	$.LC79, %eax
	jmp	.L400
.L403:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movl	$.LC77, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L404
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-88(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L404
	movl	$.LC79, %eax
	jmp	.L400
.L404:
	movq	-88(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	%rcx, %r8
	movl	$core_module, %ecx
	movq	%rax, %rdi
	call	ap_set_config_vectors
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L405
	movq	-72(%rbp), %rax
	jmp	.L400
.L405:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	setne	%dl
	movq	-64(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	73(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 73(%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_per_url_conf
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L406
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC83, %ecx
	movl	$.LC84, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L400
.L406:
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-88(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L400:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	urlsection, .-urlsection
	.section	.rodata
.LC85:
	.string	"\"> is invalid."
.LC86:
	.string	"<Files \""
	.text
	.type	filesection, @function
filesection:
.LFB52:
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
	movq	-120(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_per_dir_config
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L408
	movq	-64(%rbp), %rax
	jmp	.L409
.L408:
	cmpq	$0, -16(%rbp)
	jne	.L410
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L409
.L410:
	movq	-16(%rbp), %rax
	movq	-120(%rbp), %rdx
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L411
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L409
.L411:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 80(%rax)
	cmpq	$0, -32(%rbp)
	jne	.L412
	movq	-104(%rbp), %rax
	movl	$95, 8(%rax)
.L412:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L413
	movq	-104(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L414
	movl	$.LC79, %eax
	jmp	.L409
.L413:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movl	$.LC77, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L415
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L414
	movl	$.LC79, %eax
	jmp	.L409
.L415:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	leaq	-88(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	testl	%eax, %eax
	je	.L416
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC85, %ecx
	movl	$.LC86, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L409
.L416:
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 80(%rax)
.L414:
	movq	-104(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rsi
	movq	%rcx, %r8
	movl	$core_module, %ecx
	movq	%rax, %rdi
	call	ap_set_config_vectors
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L417
	movq	-80(%rbp), %rax
	jmp	.L409
.L417:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	setne	%dl
	movq	-72(%rbp), %rax
	movl	%edx, %ecx
	andl	$1, %ecx
	movzbl	73(%rax), %edx
	andl	$-2, %edx
	orl	%ecx, %edx
	movb	%dl, 73(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_file_conf
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L418
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC83, %ecx
	movl	$.LC84, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L409
.L418:
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 80(%rax)
	movq	-104(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movl	$0, %eax
.L409:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	filesection, .-filesection
	.section	.rodata
.LC87:
	.string	"ap_find_loaded_module_symbol"
.LC88:
	.string	"<IfModule"
	.text
	.type	start_ifmod, @function
start_ifmod:
.LFB53:
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
	movq	-88(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L420
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L421
.L420:
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -88(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L422
	addq	$1, -88(%rbp)
.L422:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L423
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L421
.L423:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_find_linked_module
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L424
	movq	$ap_prelinked_module_symbols, -16(%rbp)
	jmp	.L425
.L427:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L426
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L424
.L426:
	addq	$16, -16(%rbp)
.L425:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L427
.L424:
	cmpq	$0, -8(%rbp)
	jne	.L428
	movl	$.LC87, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L428
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-88(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -8(%rbp)
.L428:
	cmpl	$0, -28(%rbp)
	jne	.L429
	cmpq	$0, -8(%rbp)
	jne	.L430
.L429:
	cmpl	$0, -28(%rbp)
	je	.L431
	cmpq	$0, -8(%rbp)
	jne	.L431
.L430:
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movl	$.LC88, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_build_cont_config
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	jmp	.L421
.L431:
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$.LC88, %esi
	movq	%rax, %rdi
	call	ap_soak_end_container
.L421:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	start_ifmod, .-start_ifmod
	.globl	ap_exists_config_define
	.type	ap_exists_config_define, @function
ap_exists_config_define:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ap_server_config_defines(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L433
.L436:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L434
	movl	$1, %eax
	jmp	.L435
.L434:
	addl	$1, -4(%rbp)
.L433:
	movq	ap_server_config_defines(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L436
	movl	$0, %eax
.L435:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ap_exists_config_define, .-ap_exists_config_define
	.section	.rodata
.LC89:
	.string	"<IfDefine"
	.text
	.type	start_ifdefine, @function
start_ifdefine:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -4(%rbp)
	movq	-72(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L438
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L439
.L438:
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$33, %al
	jne	.L440
	movl	$1, -4(%rbp)
	addq	$1, -72(%rbp)
.L440:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L441
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L439
.L441:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_exists_config_define
	movl	%eax, -20(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L442
	cmpl	$0, -20(%rbp)
	jne	.L443
.L442:
	cmpl	$0, -4(%rbp)
	je	.L444
	cmpl	$0, -20(%rbp)
	jne	.L444
.L443:
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$.LC89, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_build_cont_config
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	jmp	.L439
.L444:
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	ap_soak_end_container
.L439:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	start_ifdefine, .-start_ifdefine
	.section	.rodata
.LC90:
	.string	"<VirtualHost> doesn't nest!"
	.text
	.type	virtualhost_section, @function
virtualhost_section:
.LFB56:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	$62, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L446
	movq	-32(%rbp), %rax
	jmp	.L452
.L446:
	cmpq	$0, -16(%rbp)
	jne	.L448
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	unclosed_directive
	jmp	.L452
.L448:
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L449
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	missing_container_arg
	jmp	.L452
.L449:
	movq	-8(%rbp), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L450
	movl	$.LC90, %eax
	jmp	.L452
.L450:
	leaq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_init_virtual_host
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L451
	movq	-40(%rbp), %rax
	jmp	.L452
.L451:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	48(%rdx), %rdx
	movl	56(%rdx), %edx
	movl	%edx, 24(%rax)
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	24(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-40(%rbp), %rax
.L452:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	virtualhost_section, .-virtualhost_section
	.section	.rodata
	.align 8
.LC91:
	.string	"ServerAlias only used in <VirtualHost>"
	.text
	.type	set_server_alias, @function
set_server_alias:
.LFB57:
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
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L454
	movl	$.LC91, %eax
	jmp	.L455
.L454:
	jmp	.L456
.L459:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_matchexp
	testl	%eax, %eax
	je	.L457
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	jmp	.L458
.L457:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
.L458:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L456:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L459
	movl	$0, %eax
.L455:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	set_server_alias, .-set_server_alias
	.type	set_accf_map, @function
set_accf_map:
.LFB58:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L461
	movq	-8(%rbp), %rax
	jmp	.L462
.L461:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	movl	$0, %eax
.L462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	set_accf_map, .-set_accf_map
	.globl	ap_get_server_protocol
	.type	ap_get_server_protocol, @function
ap_get_server_protocol:
.LFB59:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ap_get_server_protocol, .-ap_get_server_protocol
	.globl	ap_set_server_protocol
	.type	ap_set_server_protocol, @function
ap_set_server_protocol:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 40(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ap_set_server_protocol, .-ap_set_server_protocol
	.type	set_protocol, @function
set_protocol:
.LFB61:
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
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L467
	movq	-8(%rbp), %rax
	jmp	.L468
.L467:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 40(%rax)
	movl	$0, %eax
.L468:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	set_protocol, .-set_protocol
	.type	set_server_string_slot, @function
set_server_string_slot:
.LFB62:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L470
	movq	-24(%rbp), %rax
	jmp	.L471
.L470:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
.L471:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	set_server_string_slot, .-set_server_string_slot
	.section	.rodata
	.align 8
.LC92:
	.string	"\" is outside the appropriate range (i.e., 1..65535)."
.LC93:
	.string	"The port number \""
	.text
	.type	server_hostname_port, @function
server_hostname_port:
.LFB63:
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
	movq	-72(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L473
	movq	-40(%rbp), %rax
	jmp	.L474
.L473:
	movq	-88(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L475
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 176(%rax)
	addq	$3, -24(%rbp)
	jmp	.L476
.L475:
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
.L476:
	movq	-24(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L477
	movq	-72(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, 40(%rbx)
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L478
	cmpl	$65535, -28(%rbp)
	jle	.L479
.L478:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	-88(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC92, %ecx
	movl	$.LC93, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L474
.L477:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, 40(%rbx)
	movl	$0, -28(%rbp)
.L479:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movl	-28(%rbp), %edx
	movw	%dx, 48(%rax)
	movl	$0, %eax
.L474:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	server_hostname_port, .-server_hostname_port
	.section	.rodata
.LC94:
	.string	"EMail"
	.align 8
.LC95:
	.string	"ServerSignature: use one of: off | on | email"
	.text
	.type	set_signature_flag, @function
set_signature_flag:
.LFB64:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L481
	movq	-16(%rbp), %rax
	jmp	.L482
.L481:
	movq	-40(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L483
	movq	-8(%rbp), %rax
	movl	$2, 128(%rax)
	jmp	.L484
.L483:
	movq	-40(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L485
	movq	-8(%rbp), %rax
	movl	$1, 128(%rax)
	jmp	.L484
.L485:
	movq	-40(%rbp), %rax
	movl	$.LC94, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L486
	movq	-8(%rbp), %rax
	movl	$3, 128(%rax)
	jmp	.L484
.L486:
	movl	$.LC95, %eax
	jmp	.L482
.L484:
	movl	$0, %eax
.L482:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	set_signature_flag, .-set_signature_flag
	.section	.rodata
	.align 8
.LC96:
	.string	"ServerRoot must be a valid directory"
	.text
	.type	set_server_root, @function
set_server_root:
.LFB65:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L488
	movq	-8(%rbp), %rax
	jmp	.L489
.L488:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %r8
	movl	$32, %ecx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$ap_server_root, %edi
	call	apr_filepath_merge
	testl	%eax, %eax
	jne	.L490
	movq	ap_server_root(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_is_directory
	testl	%eax, %eax
	jne	.L491
.L490:
	movl	$.LC96, %eax
	jmp	.L489
.L491:
	movl	$0, %eax
.L489:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	set_server_root, .-set_server_root
	.type	set_timeout, @function
set_timeout:
.LFB66:
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
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L493
	movq	-24(%rbp), %rax
	jmp	.L494
.L493:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	cltq
	imulq	$1000000, %rax, %rax
	movq	%rax, 104(%rbx)
	movl	$0, %eax
.L494:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	set_timeout, .-set_timeout
	.type	set_allow2f, @function
set_allow2f:
.LFB67:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L496
	movq	-16(%rbp), %rax
	jmp	.L497
.L496:
	cmpl	$0, -36(%rbp)
	setne	%dl
	movq	-8(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$4, %ecx
	movzbl	224(%rax), %edx
	andl	$-17, %edx
	orl	%ecx, %edx
	movb	%dl, 224(%rax)
	movl	$0, %eax
.L497:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	set_allow2f, .-set_allow2f
	.section	.rodata
.LC97:
	.string	"double"
	.align 8
.LC98:
	.string	"parameter must be 'on', 'off', or 'double'"
	.text
	.type	set_hostname_lookups, @function
set_hostname_lookups:
.LFB68:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L499
	movq	-16(%rbp), %rax
	jmp	.L500
.L499:
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L501
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-16, %edx
	orl	$1, %edx
	movb	%dl, 72(%rax)
	jmp	.L502
.L501:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L503
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-16, %edx
	movb	%dl, 72(%rax)
	jmp	.L502
.L503:
	movq	-40(%rbp), %rax
	movl	$.LC97, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L504
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$-16, %edx
	orl	$2, %edx
	movb	%dl, 72(%rax)
	jmp	.L502
.L504:
	movl	$.LC98, %eax
	jmp	.L500
.L502:
	movl	$0, %eax
.L500:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	set_hostname_lookups, .-set_hostname_lookups
	.type	set_serverpath, @function
set_serverpath:
.LFB69:
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
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L506
	movq	-24(%rbp), %rax
	jmp	.L507
.L506:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, 136(%rbx)
	movl	$0, %eax
.L507:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	set_serverpath, .-set_serverpath
	.type	set_content_md5, @function
set_content_md5:
.LFB70:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L509
	movq	-16(%rbp), %rax
	jmp	.L510
.L509:
	cmpl	$0, -36(%rbp)
	setne	%al
	sall	$6, %eax
	sarb	$6, %al
	movq	-8(%rbp), %rdx
	andl	$3, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movzbl	72(%rdx), %eax
	andl	$-49, %eax
	orl	%ecx, %eax
	movb	%al, 72(%rdx)
	movl	$0, %eax
.L510:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	set_content_md5, .-set_content_md5
	.section	.rodata
	.align 8
.LC99:
	.string	"AcceptPathInfo must be set to on, off or default"
	.text
	.type	set_accept_path_info, @function
set_accept_path_info:
.LFB71:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L512
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	jmp	.L513
.L512:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L514
	movq	-8(%rbp), %rax
	movl	$1, 184(%rax)
	jmp	.L513
.L514:
	movq	-40(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L515
	movq	-8(%rbp), %rax
	movl	$2, 184(%rax)
	jmp	.L513
.L515:
	movl	$.LC99, %eax
	jmp	.L516
.L513:
	movl	$0, %eax
.L516:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	set_accept_path_info, .-set_accept_path_info
	.section	.rodata
.LC100:
	.string	"dns"
	.align 8
.LC101:
	.string	"parameter must be 'on', 'off', or 'dns'"
	.text
	.type	set_use_canonical_name, @function
set_use_canonical_name:
.LFB72:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L518
	movq	-16(%rbp), %rax
	jmp	.L519
.L518:
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L520
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$63, %edx
	orl	$64, %edx
	movb	%dl, 72(%rax)
	jmp	.L521
.L520:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L522
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$63, %edx
	movb	%dl, 72(%rax)
	jmp	.L521
.L522:
	movq	-40(%rbp), %rax
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L523
	movq	-8(%rbp), %rax
	movzbl	72(%rax), %edx
	andl	$63, %edx
	orl	$-128, %edx
	movb	%dl, 72(%rax)
	jmp	.L521
.L523:
	movl	$.LC101, %eax
	jmp	.L519
.L521:
	movl	$0, %eax
.L519:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	set_use_canonical_name, .-set_use_canonical_name
	.type	set_use_canonical_phys_port, @function
set_use_canonical_phys_port:
.LFB73:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L525
	movq	-16(%rbp), %rax
	jmp	.L526
.L525:
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L527
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-97, %edx
	orl	$32, %edx
	movb	%dl, 224(%rax)
	jmp	.L528
.L527:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L529
	movq	-8(%rbp), %rax
	movzbl	224(%rax), %edx
	andl	$-97, %edx
	movb	%dl, 224(%rax)
	jmp	.L528
.L529:
	movl	$.LC68, %eax
	jmp	.L526
.L528:
	movl	$0, %eax
.L526:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	set_use_canonical_phys_port, .-set_use_canonical_phys_port
	.section	.rodata
.LC102:
	.string	"ap_include_sentinel"
	.align 8
.LC103:
	.string	"Exceeded maximum include depth of %u. You have probably a recursion somewhere."
.LC104:
	.string	"Invalid Include path "
	.text
	.type	include_config, @function
include_config:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	leaq	-40(%rbp), %rax
	movl	$.LC102, %esi
	movq	%rax, %rdi
	call	apr_pool_userdata_get
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L531
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L532
.L531:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$.LC102, %esi
	movq	%rax, %rdi
	call	apr_pool_userdata_setn
.L532:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$128, %eax
	jbe	.L533
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$128, %edx
	movl	$.LC103, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L538
.L533:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L535
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC104, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L538
.L535:
	movq	-56(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	56(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_process_resource_config
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L536
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L538
.L536:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L537
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
.L537:
	movl	$0, %eax
.L538:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	include_config, .-include_config
	.section	.rodata
.LC105:
	.string	"emerg"
.LC106:
	.string	"alert"
.LC107:
	.string	"crit"
.LC108:
	.string	"error"
.LC109:
	.string	"warn"
.LC110:
	.string	"notice"
.LC111:
	.string	"info"
.LC112:
	.string	"debug"
	.align 8
.LC113:
	.string	"LogLevel requires level keyword: one of emerg/alert/crit/error/warn/notice/info/debug"
	.align 8
.LC114:
	.string	"LogLevel requires level keyword"
	.text
	.type	set_loglevel, @function
set_loglevel:
.LFB75:
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
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L540
	movq	-8(%rbp), %rax
	jmp	.L541
.L540:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L542
	movq	-16(%rbp), %rax
	movl	$.LC105, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L543
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 72(%rax)
	jmp	.L544
.L543:
	movq	-16(%rbp), %rax
	movl	$.LC106, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L545
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$1, 72(%rax)
	jmp	.L544
.L545:
	movq	-16(%rbp), %rax
	movl	$.LC107, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L546
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$2, 72(%rax)
	jmp	.L544
.L546:
	movq	-16(%rbp), %rax
	movl	$.LC108, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L547
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$3, 72(%rax)
	jmp	.L544
.L547:
	movq	-16(%rbp), %rax
	movl	$.LC109, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L548
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$4, 72(%rax)
	jmp	.L544
.L548:
	movq	-16(%rbp), %rax
	movl	$.LC110, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L549
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$5, 72(%rax)
	jmp	.L544
.L549:
	movq	-16(%rbp), %rax
	movl	$.LC111, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L550
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$6, 72(%rax)
	jmp	.L544
.L550:
	movq	-16(%rbp), %rax
	movl	$.LC112, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L551
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$7, 72(%rax)
	jmp	.L544
.L551:
	movl	$.LC113, %eax
	jmp	.L541
.L542:
	movl	$.LC114, %eax
	jmp	.L541
.L544:
	movl	$0, %eax
.L541:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	set_loglevel, .-set_loglevel
	.section	.rodata
.LC115:
	.string	"%u"
.LC116:
	.string	"mailto:"
.LC117:
	.string	" Server at <a href=\""
.LC118:
	.string	"<address>"
.LC119:
	.string	"</address>\n"
.LC120:
	.string	"</a> Port "
.LC121:
	.string	"\">"
.LC122:
	.string	" Server at "
.LC123:
	.string	" Port "
	.text
	.globl	ap_psignature
	.type	ap_psignature, @function
ap_psignature:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$1, %eax
	je	.L553
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L554
.L553:
	movl	$.LC8, %eax
	jmp	.L559
.L554:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_port
	movzwl	%ax, %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %ecx
	movl	$.LC115, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$3, %eax
	jne	.L556
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_name
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	je	.L557
	movl	$.LC8, %r13d
	jmp	.L558
.L557:
	movl	$.LC116, %r13d
.L558:
	call	ap_get_server_banner
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-72(%rbp), %rsi
	pushq	$0
	pushq	$.LC119
	leaq	-64(%rbp), %rdx
	pushq	%rdx
	pushq	$.LC120
	pushq	%r12
	pushq	$.LC121
	pushq	%rbx
	movq	%r13, %r9
	movl	$.LC117, %r8d
	movl	$.LC118, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$64, %rsp
	jmp	.L559
.L556:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_name
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	call	ap_get_server_banner
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rsi
	pushq	$0
	pushq	$.LC119
	leaq	-64(%rbp), %rdx
	pushq	%rdx
	pushq	$.LC123
	movq	%rbx, %r9
	movl	$.LC122, %r8d
	movl	$.LC118, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$32, %rsp
.L559:
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ap_psignature, .-ap_psignature
	.type	set_authname, @function
set_authname:
.LFB77:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_quotes
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	set_authname, .-set_authname
	.local	server_banner
	.comm	server_banner,8,8
	.local	banner_locked
	.comm	banner_locked,4,4
	.local	server_description
	.comm	server_description,8,8
	.data
	.align 4
	.type	ap_server_tokens, @object
	.size	ap_server_tokens, 4
ap_server_tokens:
	.long	4
	.text
	.type	reset_banner, @function
reset_banner:
.LFB78:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, banner_locked(%rip)
	movl	$4, ap_server_tokens(%rip)
	movq	$0, server_banner(%rip)
	movq	$0, server_description(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	reset_banner, .-reset_banner
	.globl	ap_get_server_revision
	.type	ap_get_server_revision, @function
ap_get_server_revision:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$11, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC8, 16(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	ap_get_server_revision, .-ap_get_server_revision
	.section	.rodata
.LC124:
	.string	"Apache/2.2.11 (Unix)"
	.text
	.globl	ap_get_server_description
	.type	ap_get_server_description, @function
ap_get_server_description:
.LFB80:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	server_description(%rip), %rax
	testq	%rax, %rax
	je	.L566
	movq	server_description(%rip), %rax
	jmp	.L567
.L566:
	movl	$.LC124, %eax
.L567:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	ap_get_server_description, .-ap_get_server_description
	.section	.rodata
.LC125:
	.string	"Apache/2.2.11"
	.text
	.globl	ap_get_server_banner
	.type	ap_get_server_banner, @function
ap_get_server_banner:
.LFB81:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	server_banner(%rip), %rax
	testq	%rax, %rax
	je	.L570
	movq	server_banner(%rip), %rax
	jmp	.L571
.L570:
	movl	$.LC125, %eax
.L571:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ap_get_server_banner, .-ap_get_server_banner
	.globl	ap_get_server_version
	.type	ap_get_server_version, @function
ap_get_server_version:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	ap_get_server_banner
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ap_get_server_version, .-ap_get_server_version
	.section	.rodata
.LC126:
	.string	" "
	.text
	.globl	ap_add_version_component
	.type	ap_add_version_component, @function
ap_add_version_component:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	banner_locked(%rip), %eax
	testl	%eax, %eax
	jne	.L576
	movq	server_banner(%rip), %rax
	testq	%rax, %rax
	jne	.L577
	movq	-8(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$reset_banner, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, server_banner(%rip)
	jmp	.L576
.L577:
	movq	server_banner(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC126, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, server_banner(%rip)
.L576:
	movq	server_description(%rip), %rsi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC126, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, server_description(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ap_add_version_component, .-ap_add_version_component
	.section	.rodata
.LC127:
	.string	"Apache"
.LC128:
	.string	"Apache/2.2"
.LC129:
	.string	"Apache/2"
	.text
	.type	set_banner, @function
set_banner:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	ap_server_tokens(%rip), %eax
	cmpl	$5, %eax
	jne	.L579
	movq	-8(%rbp), %rax
	movl	$.LC127, %esi
	movq	%rax, %rdi
	call	ap_add_version_component
	jmp	.L580
.L579:
	movl	ap_server_tokens(%rip), %eax
	cmpl	$2, %eax
	jne	.L581
	movq	-8(%rbp), %rax
	movl	$.LC125, %esi
	movq	%rax, %rdi
	call	ap_add_version_component
	jmp	.L580
.L581:
	movl	ap_server_tokens(%rip), %eax
	cmpl	$1, %eax
	jne	.L582
	movq	-8(%rbp), %rax
	movl	$.LC128, %esi
	movq	%rax, %rdi
	call	ap_add_version_component
	jmp	.L580
.L582:
	movl	ap_server_tokens(%rip), %eax
	testl	%eax, %eax
	jne	.L583
	movq	-8(%rbp), %rax
	movl	$.LC129, %esi
	movq	%rax, %rdi
	call	ap_add_version_component
	jmp	.L580
.L583:
	movq	-8(%rbp), %rax
	movl	$.LC124, %esi
	movq	%rax, %rdi
	call	ap_add_version_component
.L580:
	movl	ap_server_tokens(%rip), %eax
	cmpl	$4, %eax
	je	.L584
	movl	banner_locked(%rip), %eax
	addl	$1, %eax
	movl	%eax, banner_locked(%rip)
.L584:
	movq	$.LC124, server_description(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	set_banner, .-set_banner
	.section	.rodata
.LC130:
	.string	"OS"
.LC131:
	.string	"Min"
.LC132:
	.string	"Minimal"
.LC133:
	.string	"Major"
.LC134:
	.string	"Minor"
.LC135:
	.string	"Prod"
.LC136:
	.string	"ProductOnly"
	.text
	.type	set_serv_tokens, @function
set_serv_tokens:
.LFB85:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L586
	movq	-8(%rbp), %rax
	jmp	.L587
.L586:
	movq	-40(%rbp), %rax
	movl	$.LC130, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L588
	movl	$3, ap_server_tokens(%rip)
	jmp	.L589
.L588:
	movq	-40(%rbp), %rax
	movl	$.LC131, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L590
	movq	-40(%rbp), %rax
	movl	$.LC132, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L591
.L590:
	movl	$2, ap_server_tokens(%rip)
	jmp	.L589
.L591:
	movq	-40(%rbp), %rax
	movl	$.LC133, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L592
	movl	$0, ap_server_tokens(%rip)
	jmp	.L589
.L592:
	movq	-40(%rbp), %rax
	movl	$.LC134, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L593
	movl	$1, ap_server_tokens(%rip)
	jmp	.L589
.L593:
	movq	-40(%rbp), %rax
	movl	$.LC135, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L594
	movq	-40(%rbp), %rax
	movl	$.LC136, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L595
.L594:
	movl	$5, ap_server_tokens(%rip)
	jmp	.L589
.L595:
	movl	$4, ap_server_tokens(%rip)
.L589:
	movl	$0, %eax
.L587:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	set_serv_tokens, .-set_serv_tokens
	.section	.rodata
	.align 8
.LC137:
	.string	"\" must be a non-negative integer"
.LC138:
	.string	"LimitRequestLine \""
	.text
	.type	set_limit_req_line, @function
set_limit_req_line:
.LFB86:
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
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L597
	movq	-8(%rbp), %rax
	jmp	.L598
.L597:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L599
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC137, %ecx
	movl	$.LC138, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L598
.L599:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 160(%rax)
	movl	$0, %eax
.L598:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	set_limit_req_line, .-set_limit_req_line
	.section	.rodata
.LC139:
	.string	"LimitRequestFieldsize \""
	.text
	.type	set_limit_req_fieldsize, @function
set_limit_req_fieldsize:
.LFB87:
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
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L601
	movq	-8(%rbp), %rax
	jmp	.L602
.L601:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L603
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC137, %ecx
	movl	$.LC139, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L602
.L603:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 164(%rax)
	movl	$0, %eax
.L602:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	set_limit_req_fieldsize, .-set_limit_req_fieldsize
	.section	.rodata
	.align 8
.LC140:
	.string	"\" must be a non-negative integer (0 = no limit)"
.LC141:
	.string	"LimitRequestFields \""
	.text
	.type	set_limit_req_fields, @function
set_limit_req_fields:
.LFB88:
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
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L605
	movq	-8(%rbp), %rax
	jmp	.L606
.L605:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jns	.L607
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC140, %ecx
	movl	$.LC141, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L606
.L607:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 168(%rax)
	movl	$0, %eax
.L606:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	set_limit_req_fields, .-set_limit_req_fields
	.section	.rodata
	.align 8
.LC142:
	.string	"LimitRequestBody argument is not parsable."
	.align 8
.LC143:
	.string	"LimitRequestBody requires a non-negative integer."
	.text
	.type	set_limit_req_body, @function
set_limit_req_body:
.LFB89:
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
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L609
	movq	-16(%rbp), %rax
	jmp	.L614
.L609:
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdi
	leaq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movl	$10, %ecx
	movq	%rax, %rsi
	call	apr_strtoff
	testl	%eax, %eax
	je	.L611
	movl	$.LC142, %eax
	jmp	.L614
.L611:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L612
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jns	.L613
.L612:
	movl	$.LC143, %eax
	jmp	.L614
.L613:
	movl	$0, %eax
.L614:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	set_limit_req_body, .-set_limit_req_body
	.section	.rodata
	.align 8
.LC144:
	.string	"LimitXMLRequestBody requires a non-negative integer."
	.text
	.type	set_limit_xml_req_body, @function
set_limit_xml_req_body:
.LFB90:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L616
	movq	-16(%rbp), %rax
	jmp	.L617
.L616:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	jns	.L618
	movl	$.LC144, %eax
	jmp	.L617
.L618:
	movl	$0, %eax
.L617:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	set_limit_xml_req_body, .-set_limit_xml_req_body
	.globl	ap_get_limit_xml_body
	.type	ap_get_limit_xml_body, @function
ap_get_limit_xml_body:
.LFB91:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	$-1, %rax
	jne	.L620
	movl	$1000000, %eax
	jmp	.L621
.L620:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
.L621:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	ap_get_limit_xml_body, .-ap_get_limit_xml_body
	.type	set_limit_cpu, @function
set_limit_cpu:
.LFB92:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	88(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	unixd_set_rlimit
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	set_limit_cpu, .-set_limit_cpu
	.type	set_limit_mem, @function
set_limit_mem:
.LFB93:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	96(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$9, %r8d
	movq	%rax, %rdi
	call	unixd_set_rlimit
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	set_limit_mem, .-set_limit_mem
	.type	set_limit_nproc, @function
set_limit_nproc:
.LFB94:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	104(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$6, %r8d
	movq	%rax, %rdi
	call	unixd_set_rlimit
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	set_limit_nproc, .-set_limit_nproc
	.section	.rodata
	.align 8
.LC145:
	.string	"The recursion limit must be greater than zero."
	.align 8
.LC146:
	.string	"Limiting internal redirects to very low numbers may cause normal requests to fail."
	.align 8
.LC147:
	.string	"Limiting the subrequest depth to a very low level may cause normal requests to fail."
	.text
	.type	set_recursion_limit, @function
set_recursion_limit:
.LFB95:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L629
	movl	$.LC145, %eax
	jmp	.L630
.L629:
	cmpl	$3, -4(%rbp)
	jg	.L631
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$.LC146, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$3017, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
.L631:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 32(%rax)
	cmpq	$0, -48(%rbp)
	je	.L632
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jg	.L633
	movl	$.LC145, %eax
	jmp	.L630
.L633:
	cmpl	$3, -4(%rbp)
	jg	.L632
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$.LC147, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$3031, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
.L632:
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 36(%rax)
	movl	$0, %eax
.L630:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	set_recursion_limit, .-set_recursion_limit
	.section	.rodata
.LC148:
	.string	"(unexpectedly NULL)"
.LC149:
	.string	"r->uri = %s"
.LC150:
	.string	"redirected from r->uri = %s"
.LC151:
	.string	"subrequested from r->uri = %s"
	.text
	.type	log_backtrace, @function
log_backtrace:
.LFB96:
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
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L635
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	jmp	.L636
.L635:
	movl	$.LC148, %eax
.L636:
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC149, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$3046, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L637
.L644:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L638
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L639
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	jmp	.L640
.L639:
	movl	$.LC148, %eax
.L640:
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC150, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$3052, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L638:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L637
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L637
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L641
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	jmp	.L642
.L641:
	movl	$.LC148, %eax
.L642:
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC151, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$3059, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L637:
	cmpq	$0, -8(%rbp)
	je	.L634
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L644
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L644
.L634:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	log_backtrace, .-log_backtrace
	.section	.rodata
	.align 8
.LC152:
	.string	"Request exceeded the limit of %d internal redirects due to probable configuration error. Use 'LimitInternalRecursion' to increase the limit if necessary. Use 'LogLevel debug' to get a backtrace."
	.align 8
.LC153:
	.string	"Request exceeded the limit of %d subrequest nesting levels due to probable confguration error. Use 'LimitInternalRecursion' to increase the limit if necessary. Use 'LogLevel debug' to get a backtrace."
	.text
	.globl	ap_is_recursion_limit_exceeded
	.type	ap_is_recursion_limit_exceeded, @function
ap_is_recursion_limit_exceeded:
.LFB97:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L646
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	jmp	.L647
.L646:
	movl	$10, %eax
.L647:
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	testl	%eax, %eax
	je	.L648
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	jmp	.L649
.L648:
	movl	$10, %eax
.L649:
	movl	%eax, -32(%rbp)
	jmp	.L650
.L655:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L651
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L652
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	pushq	%rax
	movl	$.LC152, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3087, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	log_backtrace
	movl	$1, %eax
	jmp	.L653
.L652:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L651:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L650
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L650
	addl	$1, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L654
	subq	$8, %rsp
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %eax
	pushq	%rax
	movl	$.LC153, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3107, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	log_backtrace
	movl	$1, %eax
	jmp	.L653
.L654:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.L650:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L655
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L655
	movl	$0, %eax
.L653:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	ap_is_recursion_limit_exceeded, .-ap_is_recursion_limit_exceeded
	.section	.rodata
.LC154:
	.string	"invalid filter name"
	.text
	.type	add_ct_output_filters, @function
add_ct_output_filters:
.LFB98:
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
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L657
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	$0, -8(%rbp)
	jmp	.L658
.L657:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L658
	jmp	.L659
.L660:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L659:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L660
.L658:
	jmp	.L661
.L665:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -8(%rbp)
	je	.L662
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	.L663
.L662:
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
.L663:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L661:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L664
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-56(%rbp), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L664
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L665
.L664:
	cmpq	$0, -16(%rbp)
	jne	.L666
	movl	$.LC154, %eax
	jmp	.L667
.L666:
	movl	$0, %eax
.L667:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	add_ct_output_filters, .-add_ct_output_filters
	.globl	ap_add_output_filters_by_type
	.type	ap_add_output_filters_by_type, @function
ap_add_output_filters_by_type:
.LFB99:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L669
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	testq	%rax, %rax
	jne	.L670
.L669:
	jmp	.L668
.L670:
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L672
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	jmp	.L673
.L674:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L673:
	cmpq	$0, -8(%rbp)
	jne	.L674
.L672:
	nop
.L668:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	ap_add_output_filters_by_type, .-ap_add_output_filters_by_type
	.section	.rodata
.LC155:
	.string	"extended"
	.align 8
.LC156:
	.string	"TraceEnable must be one of 'on', 'off', or 'extended'"
	.text
	.type	set_trace_enable, @function
set_trace_enable:
.LFB100:
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
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC66, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L676
	movq	-8(%rbp), %rax
	movl	$1, 56(%rax)
	jmp	.L677
.L676:
	movq	-40(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L678
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	jmp	.L677
.L678:
	movq	-40(%rbp), %rax
	movl	$.LC155, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L679
	movq	-8(%rbp), %rax
	movl	$2, 56(%rax)
	jmp	.L677
.L679:
	movl	$.LC156, %eax
	jmp	.L680
.L677:
	movl	$0, %eax
.L680:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	set_trace_enable, .-set_trace_enable
	.section	.rodata
	.align 8
.LC157:
	.string	"Container for directives affecting resources located in the specified directories"
	.align 8
.LC158:
	.string	"Container for directives affecting resources accessed through the specified URL paths"
.LC159:
	.string	"<VirtualHost"
	.align 8
.LC160:
	.string	"Container to map directives to a particular virtual host, takes one or more host addresses"
	.align 8
.LC161:
	.string	"Container for directives affecting files matching specified patterns"
.LC162:
	.string	"<Limit"
	.align 8
.LC163:
	.string	"Container for authentication directives when accessed using specified HTTP methods"
.LC164:
	.string	"<LimitExcept"
	.align 8
.LC165:
	.string	"Container for authentication directives to be applied when any HTTP method other than those specified is used to access the resource"
	.align 8
.LC166:
	.string	"Container for directives based on existance of specified modules"
	.align 8
.LC167:
	.string	"Container for directives based on existance of command line defines"
.LC168:
	.string	"AuthType"
	.align 8
.LC169:
	.string	"An HTTP authorization type (e.g., \"Basic\")"
.LC170:
	.string	"AuthName"
	.align 8
.LC171:
	.string	"The authentication realm (e.g. \"Members Only\")"
.LC172:
	.string	"Require"
	.align 8
.LC173:
	.string	"Selects which authenticated users or groups may access a protected space"
.LC174:
	.string	"Satisfy"
	.align 8
.LC175:
	.string	"access policy if both allow and require used ('all' or 'any')"
.LC176:
	.string	"AddDefaultCharset"
	.align 8
.LC177:
	.string	"The name of the default charset to add to any Content-Type without one or 'Off' to disable"
.LC178:
	.string	"AcceptPathInfo"
	.align 8
.LC179:
	.string	"Set to on or off for PATH_INFO to be accepted by handlers, or default for the per-handler preference"
.LC180:
	.string	"AccessFileName"
	.align 8
.LC181:
	.string	"Name(s) of per-directory config files (default: .htaccess)"
.LC182:
	.string	"DocumentRoot"
	.align 8
.LC183:
	.string	"Root directory of the document tree"
.LC184:
	.string	"ErrorDocument"
	.align 8
.LC185:
	.string	"Change responses for HTTP errors"
.LC186:
	.string	"AllowOverride"
	.align 8
.LC187:
	.string	"Controls what groups of directives can be configured by per-directory config files"
	.align 8
.LC188:
	.string	"Set a number of attributes for a given directory"
.LC189:
	.string	"DefaultType"
	.align 8
.LC190:
	.string	"the default MIME type for untypable files"
.LC191:
	.string	"FileETag"
	.align 8
.LC192:
	.string	"Specify components used to construct a file's ETag"
.LC193:
	.string	"EnableMMAP"
	.align 8
.LC194:
	.string	"Controls whether memory-mapping may be used to read files"
.LC195:
	.string	"EnableSendfile"
	.align 8
.LC196:
	.string	"Controls whether sendfile may be used to transmit files"
.LC197:
	.string	"Protocol"
	.align 8
.LC198:
	.string	"Set the Protocol for httpd to use."
.LC199:
	.string	"AcceptFilter"
	.align 8
.LC200:
	.string	"Set the Accept Filter to use for a protocol"
.LC201:
	.string	"Port"
	.align 8
.LC202:
	.string	"Port was replaced with Listen in Apache 2.0"
.LC203:
	.string	"HostnameLookups"
	.align 8
.LC204:
	.string	"\"on\" to enable, \"off\" to disable reverse DNS lookups, or \"double\" to enable double-reverse DNS lookups"
.LC205:
	.string	"ServerAdmin"
	.align 8
.LC206:
	.string	"The email address of the server administrator"
.LC207:
	.string	"ServerName"
	.align 8
.LC208:
	.string	"The hostname and port of the server"
.LC209:
	.string	"ServerSignature"
	.align 8
.LC210:
	.string	"En-/disable server signature (on|off|email)"
.LC211:
	.string	"ServerRoot"
	.align 8
.LC212:
	.string	"Common directory of server-related files (logs, confs, etc.)"
.LC213:
	.string	"ErrorLog"
.LC214:
	.string	"The filename of the error log"
.LC215:
	.string	"ServerAlias"
	.align 8
.LC216:
	.string	"A name or names alternately used to access the server"
.LC217:
	.string	"ServerPath"
	.align 8
.LC218:
	.string	"The pathname the server can be reached at"
.LC219:
	.string	"Timeout"
.LC220:
	.string	"Timeout duration (sec)"
.LC221:
	.string	"ContentDigest"
	.align 8
.LC222:
	.string	"whether or not to send a Content-MD5 header with each request"
.LC223:
	.string	"UseCanonicalName"
	.align 8
.LC224:
	.string	"How to work out the ServerName : Port when constructing URLs"
.LC225:
	.string	"UseCanonicalPhysicalPort"
	.align 8
.LC226:
	.string	"Whether to use the physical Port when constructing URLs"
.LC227:
	.string	"Include"
	.align 8
.LC228:
	.string	"Name of the config file to be included"
.LC229:
	.string	"LogLevel"
	.align 8
.LC230:
	.string	"Level of verbosity in error logging"
.LC231:
	.string	"NameVirtualHost"
	.align 8
.LC232:
	.string	"A numeric IP address:port, or the name of a host"
.LC233:
	.string	"ServerTokens"
	.align 8
.LC234:
	.string	"Determine tokens displayed in the Server: header - Min(imal), OS or Full"
.LC235:
	.string	"LimitRequestLine"
	.align 8
.LC236:
	.string	"Limit on maximum size of an HTTP request line"
.LC237:
	.string	"LimitRequestFieldsize"
	.align 8
.LC238:
	.string	"Limit on maximum size of an HTTP request header field"
.LC239:
	.string	"LimitRequestFields"
	.align 8
.LC240:
	.string	"Limit (0 = unlimited) on max number of header fields in a request message"
.LC241:
	.string	"LimitRequestBody"
	.align 8
.LC242:
	.string	"Limit (in bytes) on maximum size of request message body"
.LC243:
	.string	"LimitXMLRequestBody"
	.align 8
.LC244:
	.string	"Limit (in bytes) on maximum size of an XML-based request body"
.LC245:
	.string	"RLimitCPU"
	.align 8
.LC246:
	.string	"Soft/hard limits for max CPU usage in seconds"
.LC247:
	.string	"RLimitMEM"
	.align 8
.LC248:
	.string	"Soft/hard limits for max memory usage per process"
.LC249:
	.string	"RLimitNPROC"
	.align 8
.LC250:
	.string	"soft/hard limits for max number of processes per uid"
.LC251:
	.string	"LimitInternalRecursion"
	.align 8
.LC252:
	.string	"maximum recursion depth of internal redirects and subrequests"
.LC253:
	.string	"ForceType"
	.align 8
.LC254:
	.string	"a mime type that overrides other configured type"
.LC255:
	.string	"SetHandler"
	.align 8
.LC256:
	.string	"a handler name that overrides any other configured handler"
.LC257:
	.string	"SetOutputFilter"
	.align 8
.LC258:
	.string	"filter (or ; delimited list of filters) to be run on the request content"
.LC259:
	.string	"SetInputFilter"
	.align 8
.LC260:
	.string	"filter (or ; delimited list of filters) to be run on the request body"
.LC261:
	.string	"AddOutputFilterByType"
	.align 8
.LC262:
	.string	"output filter name followed by one or more content-types"
.LC263:
	.string	"AllowEncodedSlashes"
	.align 8
.LC264:
	.string	"Allow URLs containing '/' encoded as '%2F'"
.LC265:
	.string	"PidFile"
	.align 8
.LC266:
	.string	"A file for logging the server process ID"
.LC267:
	.string	"ScoreBoardFile"
	.align 8
.LC268:
	.string	"A file for Apache to maintain runtime process management information"
.LC269:
	.string	"LockFile"
	.align 8
.LC270:
	.string	"The lockfile used when Apache needs to lock the accept() call"
.LC271:
	.string	"MaxRequestsPerChild"
	.align 8
.LC272:
	.string	"Maximum number of requests a particular child serves before dying."
.LC273:
	.string	"CoreDumpDirectory"
	.align 8
.LC274:
	.string	"The location of the directory Apache changes to before dumping core"
.LC275:
	.string	"AcceptMutex"
.LC276:
	.string	"MaxMemFree"
	.align 8
.LC277:
	.string	"Maximum number of 1k blocks a particular childs allocator may hold."
.LC278:
	.string	"TraceEnable"
	.align 8
.LC279:
	.string	"'on' (default), 'off' or 'extended' to trace request body content"
	.align 64
	.type	core_cmds, @object
	.size	core_cmds, 2760
core_cmds:
	.quad	.LC20
	.quad	dirsection
	.quad	0
	.long	128
	.long	0
	.quad	.LC157
	.quad	.LC22
	.quad	urlsection
	.quad	0
	.long	128
	.long	0
	.quad	.LC158
	.quad	.LC159
	.quad	virtualhost_section
	.quad	0
	.long	128
	.long	0
	.quad	.LC160
	.quad	.LC24
	.quad	filesection
	.quad	0
	.long	31
	.long	0
	.quad	.LC161
	.quad	.LC162
	.quad	ap_limit_section
	.quad	0
	.long	31
	.long	0
	.quad	.LC163
	.quad	.LC164
	.quad	ap_limit_section
	.quad	1
	.long	31
	.long	0
	.quad	.LC165
	.quad	.LC88
	.quad	start_ifmod
	.quad	0
	.long	287
	.long	1
	.quad	.LC166
	.quad	.LC89
	.quad	start_ifdefine
	.quad	0
	.long	287
	.long	1
	.quad	.LC167
	.quad	.LC21
	.quad	dirsection
	.quad	1
	.long	128
	.long	0
	.quad	.LC157
	.quad	.LC23
	.quad	urlsection
	.quad	1
	.long	128
	.long	0
	.quad	.LC158
	.quad	.LC25
	.quad	filesection
	.quad	1
	.long	31
	.long	0
	.quad	.LC161
	.quad	.LC168
	.quad	ap_set_string_slot
	.quad	40
	.long	8
	.long	1
	.quad	.LC169
	.quad	.LC170
	.quad	set_authname
	.quad	0
	.long	8
	.long	1
	.quad	.LC171
	.quad	.LC172
	.quad	require
	.quad	0
	.long	8
	.long	0
	.quad	.LC173
	.quad	.LC174
	.quad	satisfy
	.quad	0
	.long	8
	.long	1
	.quad	.LC175
	.quad	.LC176
	.quad	set_add_default_charset
	.quad	0
	.long	4
	.long	1
	.quad	.LC177
	.quad	.LC178
	.quad	set_accept_path_info
	.quad	0
	.long	4
	.long	1
	.quad	.LC179
	.quad	.LC180
	.quad	set_access_name
	.quad	0
	.long	128
	.long	0
	.quad	.LC181
	.quad	.LC182
	.quad	set_document_root
	.quad	0
	.long	128
	.long	1
	.quad	.LC183
	.quad	.LC184
	.quad	set_error_document
	.quad	0
	.long	4
	.long	2
	.quad	.LC185
	.quad	.LC186
	.quad	set_override
	.quad	0
	.long	64
	.long	0
	.quad	.LC187
	.quad	.LC50
	.quad	set_options
	.quad	0
	.long	2
	.long	0
	.quad	.LC188
	.quad	.LC189
	.quad	ap_set_string_slot
	.quad	24
	.long	4
	.long	1
	.quad	.LC190
	.quad	.LC191
	.quad	set_etag_bits
	.quad	0
	.long	4
	.long	0
	.quad	.LC192
	.quad	.LC193
	.quad	set_enable_mmap
	.quad	0
	.long	4
	.long	1
	.quad	.LC194
	.quad	.LC195
	.quad	set_enable_sendfile
	.quad	0
	.long	4
	.long	1
	.quad	.LC196
	.quad	.LC197
	.quad	set_protocol
	.quad	0
	.long	128
	.long	1
	.quad	.LC198
	.quad	.LC199
	.quad	set_accf_map
	.quad	0
	.long	128
	.long	2
	.quad	.LC200
	.quad	.LC201
	.quad	ap_set_deprecated
	.quad	0
	.long	128
	.long	1
	.quad	.LC202
	.quad	.LC203
	.quad	set_hostname_lookups
	.quad	0
	.long	192
	.long	1
	.quad	.LC204
	.quad	.LC205
	.quad	set_server_string_slot
	.quad	32
	.long	128
	.long	1
	.quad	.LC206
	.quad	.LC207
	.quad	server_hostname_port
	.quad	0
	.long	128
	.long	1
	.quad	.LC208
	.quad	.LC209
	.quad	set_signature_flag
	.quad	0
	.long	31
	.long	1
	.quad	.LC210
	.quad	.LC211
	.quad	set_server_root
	.quad	0
	.long	384
	.long	1
	.quad	.LC212
	.quad	.LC213
	.quad	set_server_string_slot
	.quad	56
	.long	128
	.long	1
	.quad	.LC214
	.quad	.LC215
	.quad	set_server_alias
	.quad	0
	.long	128
	.long	0
	.quad	.LC216
	.quad	.LC217
	.quad	set_serverpath
	.quad	0
	.long	128
	.long	1
	.quad	.LC218
	.quad	.LC219
	.quad	set_timeout
	.quad	0
	.long	128
	.long	1
	.quad	.LC220
	.quad	.LC221
	.quad	set_content_md5
	.quad	0
	.long	2
	.long	5
	.quad	.LC222
	.quad	.LC223
	.quad	set_use_canonical_name
	.quad	0
	.long	192
	.long	1
	.quad	.LC224
	.quad	.LC225
	.quad	set_use_canonical_phys_port
	.quad	0
	.long	192
	.long	1
	.quad	.LC226
	.quad	.LC227
	.quad	include_config
	.quad	0
	.long	448
	.long	1
	.quad	.LC228
	.quad	.LC229
	.quad	set_loglevel
	.quad	0
	.long	128
	.long	1
	.quad	.LC230
	.quad	.LC231
	.quad	ap_set_name_virtual_host
	.quad	0
	.long	128
	.long	1
	.quad	.LC232
	.quad	.LC233
	.quad	set_serv_tokens
	.quad	0
	.long	128
	.long	1
	.quad	.LC234
	.quad	.LC235
	.quad	set_limit_req_line
	.quad	0
	.long	128
	.long	1
	.quad	.LC236
	.quad	.LC237
	.quad	set_limit_req_fieldsize
	.quad	0
	.long	128
	.long	1
	.quad	.LC238
	.quad	.LC239
	.quad	set_limit_req_fields
	.quad	0
	.long	128
	.long	1
	.quad	.LC240
	.quad	.LC241
	.quad	set_limit_req_body
	.quad	112
	.long	31
	.long	1
	.quad	.LC242
	.quad	.LC243
	.quad	set_limit_xml_req_body
	.quad	0
	.long	31
	.long	1
	.quad	.LC244
	.quad	.LC245
	.quad	set_limit_cpu
	.quad	88
	.long	31
	.long	7
	.quad	.LC246
	.quad	.LC247
	.quad	set_limit_mem
	.quad	96
	.long	31
	.long	7
	.quad	.LC248
	.quad	.LC249
	.quad	set_limit_nproc
	.quad	104
	.long	31
	.long	7
	.quad	.LC250
	.quad	.LC251
	.quad	set_recursion_limit
	.quad	0
	.long	128
	.long	7
	.quad	.LC252
	.quad	.LC253
	.quad	ap_set_string_slot_lower
	.quad	152
	.long	4
	.long	1
	.quad	.LC254
	.quad	.LC255
	.quad	ap_set_string_slot_lower
	.quad	160
	.long	4
	.long	1
	.quad	.LC256
	.quad	.LC257
	.quad	ap_set_string_slot
	.quad	168
	.long	4
	.long	1
	.quad	.LC258
	.quad	.LC259
	.quad	ap_set_string_slot
	.quad	176
	.long	4
	.long	1
	.quad	.LC260
	.quad	.LC261
	.quad	add_ct_output_filters
	.quad	192
	.long	4
	.long	4
	.quad	.LC262
	.quad	.LC263
	.quad	set_allow2f
	.quad	0
	.long	128
	.long	5
	.quad	.LC264
	.quad	.LC265
	.quad	ap_mpm_set_pidfile
	.quad	0
	.long	128
	.long	1
	.quad	.LC266
	.quad	.LC267
	.quad	ap_mpm_set_scoreboard
	.quad	0
	.long	128
	.long	1
	.quad	.LC268
	.quad	.LC269
	.quad	ap_mpm_set_lockfile
	.quad	0
	.long	128
	.long	1
	.quad	.LC270
	.quad	.LC271
	.quad	ap_mpm_set_max_requests
	.quad	0
	.long	128
	.long	1
	.quad	.LC272
	.quad	.LC273
	.quad	ap_mpm_set_coredumpdir
	.quad	0
	.long	128
	.long	1
	.quad	.LC274
	.quad	.LC275
	.quad	ap_mpm_set_accept_lock_mech
	.quad	0
	.long	128
	.long	1
	.quad	ap_valid_accept_mutex_string
	.quad	.LC276
	.quad	ap_mpm_set_max_mem_free
	.quad	0
	.long	128
	.long	1
	.quad	.LC277
	.quad	.LC278
	.quad	set_trace_enable
	.quad	0
	.long	128
	.long	1
	.quad	.LC279
	.quad	0
	.zero	32
.LC280:
	.string	"*"
.LC281:
	.string	"Invalid URI in request %s"
.LC282:
	.string	"Cannot map %s to file"
	.text
	.globl	ap_core_translate
	.type	ap_core_translate, @function
ap_core_translate:
.LFB101:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L682
	movl	$403, %eax
	jmp	.L683
.L682:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L684
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L685
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movl	$.LC280, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L685
.L684:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	%rax
	movl	$.LC281, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3485, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$400, %eax
	jmp	.L683
.L685:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L686
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	136(%rax), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	128(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L686
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	128(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	136(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L687
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L687
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L686
.L687:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	jmp	.L688
.L689:
	addq	$1, -8(%rbp)
.L688:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L689
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	360(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rcx, %r8
	movl	$35, %ecx
	movq	%rax, %rsi
	call	apr_filepath_merge
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L690
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	subq	$8, %rsp
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	pushq	%rdx
	movl	$.LC282, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$3507, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L683
.L690:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 368(%rax)
	jmp	.L691
.L686:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L692
.L693:
	addq	$1, -16(%rbp)
.L692:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L693
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	leaq	360(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %r8
	movl	$35, %ecx
	movq	%rax, %rsi
	call	apr_filepath_merge
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L694
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdx
	subq	$8, %rsp
	movq	-56(%rbp), %rcx
	movl	-36(%rbp), %eax
	pushq	%rdx
	movl	$.LC282, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$3530, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L683
.L694:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 368(%rax)
.L691:
	movl	$0, %eax
.L683:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	ap_core_translate, .-ap_core_translate
	.type	core_map_to_storage, @function
core_map_to_storage:
.LFB102:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_directory_walk
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L696
	movl	-4(%rbp), %eax
	jmp	.L697
.L696:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_file_walk
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L698
	movl	-4(%rbp), %eax
	jmp	.L697
.L698:
	movl	$0, %eax
.L697:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	core_map_to_storage, .-core_map_to_storage
	.type	do_nothing, @function
do_nothing:
.LFB103:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	do_nothing, .-do_nothing
	.section	.rodata
.LC283:
	.string	"none"
	.text
	.type	core_override_type, @function
core_override_type:
.LFB104:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	testq	%rax, %rax
	je	.L702
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movl	$.LC283, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L702
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L702:
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	testq	%rax, %rax
	je	.L703
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movl	$.LC283, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L703
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 288(%rax)
.L703:
	movq	-24(%rbp), %rax
	movl	600(%rax), %eax
	cmpl	$2, %eax
	jne	.L704
	movq	-8(%rbp), %rax
	movl	184(%rax), %eax
	cmpl	$3, %eax
	je	.L704
	movq	-8(%rbp), %rax
	movl	184(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 600(%rax)
.L704:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	core_override_type, .-core_override_type
	.section	.rodata
.LC284:
	.string	"File does not exist: %s"
	.align 8
.LC285:
	.string	"Attempt to serve directory: %s"
	.align 8
.LC286:
	.string	"This resource does not accept the %s method."
	.align 8
.LC287:
	.string	"file permissions deny server access: %s"
.LC288:
	.string	"bytes"
.LC289:
	.string	"Accept-Ranges"
.LC290:
	.string	"Content-MD5"
	.align 8
.LC291:
	.string	"default_handler: ap_pass_brigade returned %i"
.LC292:
	.string	"Invalid method in request %s"
	.text
	.type	default_handler, @function
default_handler:
.LFB105:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	72(%rax), %eax
	sall	$2, %eax
	sarb	$6, %al
	movsbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L707
	movq	-104(%rbp), %rax
	movq	632(%rax), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	$10, %eax
	je	.L707
	movl	$1, %eax
	jmp	.L708
.L707:
	movl	$0, %eax
.L708:
	movl	%eax, -20(%rbp)
	movq	-104(%rbp), %rax
	movl	$-1, %r9d
	movl	$2, %r8d
	movl	$5, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_allow_standard_methods
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ap_discard_request_body
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L709
	movl	-24(%rbp), %eax
	jmp	.L728
.L709:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L711
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$2, %eax
	jne	.L712
.L711:
	movq	-104(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L713
	movq	-104(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-104(%rbp), %rdx
	pushq	%rax
	movl	$.LC284, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3631, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L728
.L713:
	movq	-104(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L714
	movq	-104(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-104(%rbp), %rdx
	pushq	%rax
	movl	$.LC285, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3640, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L728
.L714:
	movq	-104(%rbp), %rax
	movl	600(%rax), %eax
	testl	%eax, %eax
	je	.L715
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L715
	movq	-104(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L715
	movq	-104(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-104(%rbp), %rax
	pushq	%rdx
	movl	$.LC284, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3649, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$404, %eax
	jmp	.L728
.L715:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L716
	movq	-104(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L716
	movq	-104(%rbp), %rax
	movq	120(%rax), %rax
	subq	$8, %rsp
	movq	-104(%rbp), %rdx
	pushq	%rax
	movl	$.LC286, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3669, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$405, %eax
	jmp	.L728
.L716:
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$12, %eax
	testb	%al, %al
	jne	.L717
	movl	$33, %edi
	jmp	.L718
.L717:
	movl	$4129, %edi
.L718:
	movq	-104(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L719
	movq	-104(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-104(%rbp), %rcx
	movl	-36(%rbp), %eax
	pushq	%rdx
	movl	$.LC287, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$3683, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L728
.L719:
	movq	-104(%rbp), %rax
	movq	472(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_update_mtime
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_last_modified
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_etag
	movq	-104(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC288, %edx
	movl	$.LC289, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-104(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_length
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ap_meets_conditions
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L720
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movq	-104(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 112(%rax)
	jmp	.L721
.L720:
	cmpl	$0, -20(%rbp)
	je	.L729
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_md5digest
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC290, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L729:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, %rsi
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_bucket_file_create
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$3, %eax
	testb	%al, %al
	jne	.L723
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_bucket_file_enable_mmap
.L723:
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
.L721:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-104(%rbp), %rax
	movq	632(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L724
	movq	-104(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L724
	movq	-8(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L725
.L724:
	movl	$0, %eax
	jmp	.L728
.L725:
	subq	$8, %rsp
	movq	-104(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	-36(%rbp), %edx
	pushq	%rdx
	movl	$.LC291, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$3748, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L728
.L712:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$26, %eax
	jne	.L726
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	subq	$8, %rsp
	movq	-104(%rbp), %rdx
	pushq	%rax
	movl	$.LC292, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$3756, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$501, %eax
	jmp	.L728
.L726:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$5, %eax
	jne	.L727
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	ap_send_http_options
	jmp	.L728
.L727:
	movl	$405, %eax
.L728:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	default_handler, .-default_handler
	.comm	logio_add_bytes_out,8,8
	.section	.rodata
.LC293:
	.string	"ap_logio_add_bytes_out"
.LC294:
	.string	"ap_ident_lookup"
	.text
	.type	core_post_config, @function
core_post_config:
.LFB106:
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
	movq	%rcx, -32(%rbp)
	movl	$.LC293, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, logio_add_bytes_out(%rip)
	movl	$.LC294, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, ident_lookup(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	set_banner
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_setup_make_content_type
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	core_post_config, .-core_post_config
	.type	core_insert_filter, @function
core_insert_filter:
.LFB107:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L733
	jmp	.L734
.L735:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter
.L734:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L733
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L735
.L733:
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L732
	jmp	.L737
.L738:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_input_filter
.L737:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L732
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rcx
	movl	$59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L738
.L732:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE107:
	.size	core_insert_filter, .-core_insert_filter
	.data
	.align 8
	.type	num_request_notes, @object
	.size	num_request_notes, 8
num_request_notes:
	.quad	3
	.text
	.type	reset_request_notes, @function
reset_request_notes:
.LFB108:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$3, num_request_notes(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	reset_request_notes, .-reset_request_notes
	.globl	ap_register_request_note
	.type	ap_register_request_note, @function
ap_register_request_note:
.LFB109:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	apr_hook_global_pool(%rip), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$reset_request_notes, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	num_request_notes(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, num_request_notes(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	ap_register_request_note, .-ap_register_request_note
	.globl	ap_get_request_note
	.type	ap_get_request_note, @function
ap_get_request_note:
.LFB110:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	num_request_notes(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jb	.L744
	movl	$0, %eax
	jmp	.L745
.L744:
	movq	-24(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L746
	movl	$0, %eax
	jmp	.L745
.L746:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
.L745:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	ap_get_request_note, .-ap_get_request_note
	.type	core_create_req, @function
core_create_req:
.LFB111:
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
	movq	num_request_notes(%rip), %rax
	addq	$5, %rax
	leaq	0(,%rax,8), %rbx
	movq	num_request_notes(%rip), %rax
	addq	$5, %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L748
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L749
.L748:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L749:
	movq	-40(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE111:
	.size	core_create_req, .-core_create_req
	.type	core_create_proxy_req, @function
core_create_proxy_req:
.LFB112:
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
	call	core_create_req
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE112:
	.size	core_create_proxy_req, .-core_create_proxy_req
	.section	.rodata
	.align 8
.LC295:
	.string	"apr_socket_addr_get(APR_LOCAL)"
	.align 8
.LC296:
	.string	"apr_socket_addr_get(APR_REMOTE)"
	.text
	.type	core_create_conn, @function
core_create_conn:
.LFB113:
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
	movl	$168, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$168, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_create_conn_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-24(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	24(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	movq	%rcx, %rdi
	call	apr_socket_addr_get
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L754
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$.LC295, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$6, %edx
	movl	$3889, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	$0, %eax
	jmp	.L755
.L754:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	apr_sockaddr_ip_get
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movq	%rcx, %rdi
	call	apr_socket_addr_get
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L756
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$.LC296, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$6, %edx
	movl	$3898, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	$0, %eax
	jmp	.L755
.L756:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$40, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	apr_sockaddr_ip_get
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 164(%rax)
	movq	-8(%rbp), %rax
.L755:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE113:
	.size	core_create_conn, .-core_create_conn
	.section	.rodata
	.align 8
.LC297:
	.string	"apr_socket_opt_set(APR_TCP_NODELAY)"
.LC298:
	.string	"apr_socket_timeout_set"
	.text
	.type	core_pre_connection, @function
core_pre_connection:
.LFB114:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L758
	cmpl	$70023, -12(%rbp)
	je	.L758
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$.LC297, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$3932, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_cerror
.L758:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L759
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	movl	$.LC298, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$3946, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_cerror
.L759:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	ap_core_input_filter_handle(%rip), %rax
	movq	-8(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_add_input_filter_handle
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	ap_core_output_filter_handle(%rip), %rax
	movq	-8(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	movl	$-2, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE114:
	.size	core_pre_connection, .-core_pre_connection
	.section	.rodata
.LC299:
	.string	"create_req"
.LC300:
	.string	"CORE_IN"
.LC301:
	.string	"CONTENT_LENGTH"
.LC302:
	.string	"CORE"
.LC303:
	.string	"SUBREQ_CORE"
.LC304:
	.string	"OLD_WRITE"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB115:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_create_conn, %edi
	call	ap_hook_create_connection
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_pre_connection, %edi
	call	ap_hook_pre_connection
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_post_config, %edi
	call	ap_hook_post_config
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_core_translate, %edi
	call	ap_hook_translate_name
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_map_to_storage, %edi
	call	ap_hook_map_to_storage
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_open_logs, %edi
	call	ap_hook_open_logs
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_logs_child_init, %edi
	call	ap_hook_child_init
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$default_handler, %edi
	call	ap_hook_handler
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$do_nothing, %edi
	call	ap_hook_type_checker
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_override_type, %edi
	call	ap_hook_fixups
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$do_nothing, %edi
	call	ap_hook_access_checker
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_create_req, %edi
	call	ap_hook_create_request
	movq	$core_create_proxy_req, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$.LC299, %edi
	call	apr_optional_hook_add
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_create_scoreboard, %edi
	call	ap_hook_pre_mpm
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$core_insert_filter, %edi
	call	ap_hook_insert_filter
	movl	$60, %ecx
	movl	$0, %edx
	movl	$ap_core_input_filter, %esi
	movl	$.LC300, %edi
	call	ap_register_input_filter
	movq	%rax, ap_core_input_filter_handle(%rip)
	movl	$30, %ecx
	movl	$0, %edx
	movl	$ap_content_length_filter, %esi
	movl	$.LC301, %edi
	call	ap_register_output_filter
	movq	%rax, ap_content_length_filter_handle(%rip)
	movl	$60, %ecx
	movl	$0, %edx
	movl	$ap_core_output_filter, %esi
	movl	$.LC302, %edi
	call	ap_register_output_filter
	movq	%rax, ap_core_output_filter_handle(%rip)
	movl	$20, %ecx
	movl	$0, %edx
	movl	$ap_sub_req_output_filter, %esi
	movl	$.LC303, %edi
	call	ap_register_output_filter
	movq	%rax, ap_subreq_core_filter_handle(%rip)
	movl	$0, %ecx
	movl	$0, %edx
	movl	$ap_old_write_filter, %esi
	movl	$.LC304, %edi
	call	ap_register_output_filter
	movq	%rax, ap_old_write_func(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE115:
	.size	register_hooks, .-register_hooks
	.globl	core_module
	.data
	.align 64
	.type	core_module, @object
	.size	core_module, 104
core_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC10
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_core_dir_config
	.quad	merge_core_dir_configs
	.quad	create_core_server_config
	.quad	merge_core_server_configs
	.quad	core_cmds
	.quad	register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

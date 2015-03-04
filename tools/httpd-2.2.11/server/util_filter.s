	.file	"util_filter.c"
	.text
	.type	trie_node_link, @function
trie_node_link:
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
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	jne	.L2
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	leal	(%rax,%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-32(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L2:
	movl	$0, -4(%rbp)
	jmp	.L3
.L8:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-44(%rbp), %eax
	jne	.L4
	jmp	.L1
.L4:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	-44(%rbp), %eax
	jle	.L6
	jmp	.L7
.L6:
	addl	$1, -4(%rbp)
.L3:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L8
.L7:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -8(%rbp)
	jmp	.L9
.L10:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	subq	$16, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	subq	$16, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
	subl	$1, -8(%rbp)
.L9:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	.L10
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-44(%rbp), %eax
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	trie_node_link, .-trie_node_link
	.type	trie_node_alloc, @function
trie_node_alloc:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L12
	movl	$0, -12(%rbp)
	jmp	.L13
.L18:
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L14
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	jmp	.L15
.L14:
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L16
	jmp	.L17
.L16:
	addl	$1, -12(%rbp)
.L13:
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L18
.L17:
	movq	-24(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movsbl	-36(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	trie_node_link
	jmp	.L19
.L12:
	movq	-24(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
.L19:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 20(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	trie_node_alloc, .-trie_node_alloc
	.local	registered_output_filters
	.comm	registered_output_filters,8,8
	.local	registered_input_filters
	.comm	registered_input_filters,8,8
	.type	filter_cleanup, @function
filter_cleanup:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$0, registered_output_filters(%rip)
	movq	$0, registered_input_filters(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	filter_cleanup, .-filter_cleanup
	.type	get_filter_handle, @function
get_filter_handle:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L23
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L24
.L32:
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L25
.L29:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-29(%rbp), %al
	jne	.L26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-29(%rbp), %al
	jge	.L28
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L25
.L28:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L25:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L29
.L27:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L30
	movq	$0, -16(%rbp)
	jmp	.L31
.L30:
	addq	$1, -8(%rbp)
.L24:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
.L31:
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L33
.L23:
	movl	$0, %eax
.L33:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_filter_handle, .-get_filter_handle
	.globl	ap_get_output_filter_handle
	.type	ap_get_output_filter_handle, @function
ap_get_output_filter_handle:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	registered_output_filters(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_filter_handle
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_get_output_filter_handle, .-ap_get_output_filter_handle
	.globl	ap_get_input_filter_handle
	.type	ap_get_input_filter_handle, @function
ap_get_input_filter_handle:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	registered_input_filters(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	get_filter_handle
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_get_input_filter_handle, .-ap_get_input_filter_handle
	.type	register_filter, @function
register_filter:
.LFB8:
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
	movl	%ecx, -76(%rbp)
	movq	%r8, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L39
	movq	apr_hook_global_pool(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	trie_node_alloc
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L39:
	movq	apr_hook_global_pool(%rip), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L40
.L42:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	movq	apr_hook_global_pool(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	trie_node_alloc
	movq	%rax, -40(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L41
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movl	%eax, %ecx
	movq	apr_hook_global_pool(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	call	trie_node_link
.L41:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	addq	$1, -16(%rbp)
.L40:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L42
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L44
.L43:
	movq	apr_hook_global_pool(%rip), %rax
	movl	$56, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$56, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
.L44:
	movq	-8(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	apr_hook_global_pool(%rip), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$filter_cleanup, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	register_filter, .-register_filter
	.globl	ap_register_input_filter
	.type	ap_register_input_filter, @function
ap_register_input_filter:
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
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$registered_input_filters, %r8d
	movq	%rax, %rdi
	call	register_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_register_input_filter, .-ap_register_input_filter
	.globl	ap_register_output_filter
	.type	ap_register_output_filter, @function
ap_register_output_filter:
.LFB10:
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
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ap_register_output_filter_protocol
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_register_output_filter, .-ap_register_output_filter
	.globl	ap_register_output_filter_protocol
	.type	ap_register_output_filter_protocol, @function
ap_register_output_filter_protocol:
.LFB11:
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
	movl	%r8d, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$registered_output_filters, %r8d
	movq	%rax, %rdi
	call	register_filter
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 52(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_register_output_filter_protocol, .-ap_register_output_filter_protocol
	.section	.rodata
	.align 8
.LC0:
	.string	"a content filter was added without a request: %s"
.LC1:
	.string	"util_filter.c"
	.align 8
.LC2:
	.string	"a protocol filter was added without a request: %s"
	.text
	.type	add_any_filter_handle, @function
add_any_filter_handle:
.LFB12:
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
	cmpq	$0, -72(%rbp)
	je	.L53
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L54
.L53:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
.L54:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$29, %eax
	ja	.L55
	cmpq	$0, -72(%rbp)
	je	.L56
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L57
.L56:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$291, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L58
.L55:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$49, %eax
	ja	.L59
	cmpq	$0, -72(%rbp)
	je	.L60
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L57
.L60:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC2, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$301, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L58
.L59:
	movq	16(%rbp), %rax
	movq	%rax, -8(%rbp)
.L57:
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	ja	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L62
.L61:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
	movq	$0, -16(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L64
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	je	.L64
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L65
.L66:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
.L65:
	cmpq	$0, -16(%rbp)
	je	.L64
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L66
.L64:
	cmpq	$0, -16(%rbp)
	je	.L63
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.L63
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L63:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L67
.L62:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L68
.L70:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L68:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L69
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	cmpl	%eax, %edx
	ja	.L69
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L70
.L69:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L67:
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$49, %eax
	ja	.L71
	movq	-88(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L71
	movq	-96(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L71:
	movq	-40(%rbp), %rax
.L58:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	add_any_filter_handle, .-add_any_filter_handle
	.section	.rodata
	.align 8
.LC3:
	.string	"an unknown filter was not added: %s"
	.text
	.type	add_any_filter, @function
add_any_filter:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L73
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L82:
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L75
.L79:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movb	%al, -29(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-29(%rbp), %al
	jne	.L76
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L77
.L76:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	-29(%rbp), %al
	jge	.L78
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L75
.L78:
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.L75:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L79
.L77:
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.L80
	movq	$0, -16(%rbp)
	jmp	.L81
.L80:
	addq	$1, -8(%rbp)
.L74:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L82
.L81:
	cmpq	$0, -16(%rbp)
	je	.L73
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L73
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	pushq	24(%rbp)
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_any_filter_handle
	addq	$16, %rsp
	jmp	.L83
.L73:
	subq	$8, %rsp
	pushq	-40(%rbp)
	movl	$.LC3, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$397, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	add_any_filter, .-add_any_filter
	.globl	ap_add_input_filter
	.type	ap_add_input_filter, @function
ap_add_input_filter:
.LFB14:
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
	movq	-32(%rbp), %rax
	leaq	120(%rax), %r10
	cmpq	$0, -24(%rbp)
	je	.L85
	movq	-24(%rbp), %rax
	leaq	656(%rax), %rdi
	jmp	.L86
.L85:
	movl	$0, %edi
.L86:
	cmpq	$0, -24(%rbp)
	je	.L87
	movq	-24(%rbp), %rax
	leaq	640(%rax), %r9
	jmp	.L88
.L87:
	movl	$0, %r9d
.L88:
	movq	registered_input_filters(%rip), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	%r10
	pushq	%rdi
	movq	%rax, %rdi
	call	add_any_filter
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_add_input_filter, .-ap_add_input_filter
	.globl	ap_add_input_filter_handle
	.type	ap_add_input_filter_handle, @function
ap_add_input_filter_handle:
.LFB15:
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
	movq	-32(%rbp), %rax
	leaq	120(%rax), %r9
	cmpq	$0, -24(%rbp)
	je	.L91
	movq	-24(%rbp), %rax
	leaq	656(%rax), %r8
	jmp	.L92
.L91:
	movl	$0, %r8d
.L92:
	cmpq	$0, -24(%rbp)
	je	.L93
	movq	-24(%rbp), %rax
	leaq	640(%rax), %rdi
	jmp	.L94
.L93:
	movl	$0, %edi
.L94:
	subq	$8, %rsp
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_any_filter_handle
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_add_input_filter_handle, .-ap_add_input_filter_handle
	.globl	ap_add_output_filter
	.type	ap_add_output_filter, @function
ap_add_output_filter:
.LFB16:
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
	movq	-32(%rbp), %rax
	leaq	128(%rax), %r10
	cmpq	$0, -24(%rbp)
	je	.L97
	movq	-24(%rbp), %rax
	leaq	648(%rax), %rdi
	jmp	.L98
.L97:
	movl	$0, %edi
.L98:
	cmpq	$0, -24(%rbp)
	je	.L99
	movq	-24(%rbp), %rax
	leaq	632(%rax), %r9
	jmp	.L100
.L99:
	movl	$0, %r9d
.L100:
	movq	registered_output_filters(%rip), %r8
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	%r10
	pushq	%rdi
	movq	%rax, %rdi
	call	add_any_filter
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_add_output_filter, .-ap_add_output_filter
	.globl	ap_add_output_filter_handle
	.type	ap_add_output_filter_handle, @function
ap_add_output_filter_handle:
.LFB17:
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
	movq	-32(%rbp), %rax
	leaq	128(%rax), %r9
	cmpq	$0, -24(%rbp)
	je	.L103
	movq	-24(%rbp), %rax
	leaq	648(%rax), %r8
	jmp	.L104
.L103:
	movl	$0, %r8d
.L104:
	cmpq	$0, -24(%rbp)
	je	.L105
	movq	-24(%rbp), %rax
	leaq	632(%rax), %rdi
	jmp	.L106
.L105:
	movl	$0, %edi
.L106:
	subq	$8, %rsp
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_any_filter_handle
	addq	$16, %rsp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_add_output_filter_handle, .-ap_add_output_filter_handle
	.type	remove_any_filter, @function
remove_any_filter:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L109
	movq	-32(%rbp), %rax
	jmp	.L110
.L109:
	movq	-48(%rbp), %rax
.L110:
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L111
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L111
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L111:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L112
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L108
.L112:
	jmp	.L114
.L115:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L114
	jmp	.L108
.L114:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L115
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L108:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	remove_any_filter, .-remove_any_filter
	.globl	ap_remove_input_filter
	.type	ap_remove_input_filter, @function
ap_remove_input_filter:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	120(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	656(%rax), %rdx
	jmp	.L118
.L117:
	movl	$0, %edx
.L118:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	640(%rax), %rsi
	jmp	.L120
.L119:
	movl	$0, %esi
.L120:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	remove_any_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_remove_input_filter, .-ap_remove_input_filter
	.globl	ap_remove_output_filter
	.type	ap_remove_output_filter, @function
ap_remove_output_filter:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	128(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	648(%rax), %rdx
	jmp	.L123
.L122:
	movl	$0, %edx
.L123:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L124
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	632(%rax), %rsi
	jmp	.L125
.L124:
	movl	$0, %esi
.L125:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	remove_any_filter
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_remove_output_filter, .-ap_remove_output_filter
	.globl	ap_get_brigade
	.type	ap_get_brigade, @function
ap_get_brigade:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L127
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %r8
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	call	*%rax
	jmp	.L128
.L127:
	movl	$-2, %eax
.L128:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_get_brigade, .-ap_get_brigade
	.globl	ap_pass_brigade
	.type	ap_pass_brigade, @function
ap_pass_brigade:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L130
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L131
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L131
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movl	$1, 664(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L132
.L133:
	movq	-8(%rbp), %rax
	movl	$1, 664(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L132:
	cmpq	$0, -8(%rbp)
	jne	.L133
.L131:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L134
.L130:
	movl	$-1, %eax
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_pass_brigade, .-ap_pass_brigade
	.globl	ap_save_brigade
	.type	ap_save_brigade, @function
ap_save_brigade:
.LFB23:
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
	movl	$0, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L136
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L136:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L137
.L142:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$70023, -12(%rbp)
	jne	.L138
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L138
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -12(%rbp)
.L138:
	cmpl	$0, -12(%rbp)
	je	.L140
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$70023, -12(%rbp)
	je	.L140
	movl	-12(%rbp), %eax
	jmp	.L141
.L140:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L137:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L142
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L143
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L143:
	movl	-16(%rbp), %eax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_save_brigade, .-ap_save_brigade
	.globl	ap_filter_flush
	.type	ap_filter_flush, @function
ap_filter_flush:
.LFB24:
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
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_filter_flush, .-ap_filter_flush
	.globl	ap_fflush
	.type	ap_fflush, @function
ap_fflush:
.LFB25:
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
	movq	32(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_flush_create
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_fflush, .-ap_fflush
	.globl	ap_fputstrs
	.type	ap_fputstrs, @function
ap_fputstrs:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L149
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L149:
	movq	%rsi, -224(%rbp)
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rax
	movl	$ap_filter_flush, %esi
	movq	%rax, %rdi
	call	apr_brigade_vputstrs
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_fputstrs, .-ap_fputstrs
	.globl	ap_fprintf
	.type	ap_fprintf, @function
ap_fprintf:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L152
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L152:
	movq	%rdx, -232(%rbp)
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rsi
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rsi, %r8
	movl	$ap_filter_flush, %esi
	movq	%rax, %rdi
	call	apr_brigade_vprintf
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_fprintf, .-ap_fprintf
	.globl	ap_filter_protocol
	.type	ap_filter_protocol, @function
ap_filter_protocol:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 52(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_filter_protocol, .-ap_filter_protocol
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

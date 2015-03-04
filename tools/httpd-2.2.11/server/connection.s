	.file	"connection.c"
	.local	_hooks
	.comm	_hooks,24,16
	.section	.rodata
.LC0:
	.string	"create_connection"
	.text
	.globl	ap_hook_create_connection
	.type	ap_hook_create_connection, @function
ap_hook_create_connection:
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
	.size	ap_hook_create_connection, .-ap_hook_create_connection
	.globl	ap_hook_get_create_connection
	.type	ap_hook_get_create_connection, @function
ap_hook_get_create_connection:
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
	.size	ap_hook_get_create_connection, .-ap_hook_get_create_connection
	.globl	ap_run_create_connection
	.type	ap_run_create_connection, @function
ap_run_create_connection:
.LFB4:
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
	movq	$0, -16(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
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
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %r9
	movq	-72(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L9
	jmp	.L7
.L9:
	addl	$1, -4(%rbp)
.L8:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L10
.L7:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_run_create_connection, .-ap_run_create_connection
	.section	.rodata
.LC1:
	.string	"process_connection"
	.text
	.globl	ap_hook_process_connection
	.type	ap_hook_process_connection, @function
ap_hook_process_connection:
.LFB5:
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
	movq	_hooks+8(%rip), %rax
	testq	%rax, %rax
	jne	.L13
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+8(%rip)
	movl	$_hooks+8, %esi
	movl	$.LC1, %edi
	call	apr_hook_sort_register
.L13:
	movq	_hooks+8(%rip), %rax
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
	je	.L12
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	call	apr_hook_debug_show
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_hook_process_connection, .-ap_hook_process_connection
	.globl	ap_hook_get_process_connection
	.type	ap_hook_get_process_connection, @function
ap_hook_get_process_connection:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_hook_get_process_connection, .-ap_hook_get_process_connection
	.globl	ap_run_process_connection
	.type	ap_run_process_connection, @function
ap_run_process_connection:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
	movq	_hooks+8(%rip), %rax
	testq	%rax, %rax
	je	.L18
	movq	_hooks+8(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L19
.L21:
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
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L20
	jmp	.L18
.L20:
	addl	$1, -4(%rbp)
.L19:
	movq	_hooks+8(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L21
.L18:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_run_process_connection, .-ap_run_process_connection
	.section	.rodata
.LC2:
	.string	"pre_connection"
	.text
	.globl	ap_hook_pre_connection
	.type	ap_hook_pre_connection, @function
ap_hook_pre_connection:
.LFB8:
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
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	jne	.L24
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+16(%rip)
	movl	$_hooks+16, %esi
	movl	$.LC2, %edi
	call	apr_hook_sort_register
.L24:
	movq	_hooks+16(%rip), %rax
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
	je	.L23
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	call	apr_hook_debug_show
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_hook_pre_connection, .-ap_hook_pre_connection
	.globl	ap_hook_get_pre_connection
	.type	ap_hook_get_pre_connection, @function
ap_hook_get_pre_connection:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+16(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_hook_get_pre_connection, .-ap_hook_get_pre_connection
	.globl	ap_run_pre_connection
	.type	ap_run_pre_connection, @function
ap_run_pre_connection:
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
	movl	$0, -8(%rbp)
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	je	.L29
	movq	_hooks+16(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L30
.L32:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L31
	cmpl	$-1, -8(%rbp)
	je	.L31
	jmp	.L29
.L31:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L30:
	movq	_hooks+16(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L32
.L29:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_run_pre_connection, .-ap_run_pre_connection
	.globl	ap_flush_conn
	.type	ap_flush_conn, @function
ap_flush_conn:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_flush_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	ap_bucket_eoc_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_flush_conn, .-ap_flush_conn
	.globl	ap_lingering_close
	.type	ap_lingering_close, @function
ap_lingering_close:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$560, %rsp
	movq	%rdi, -552(%rbp)
	movq	$0, -8(%rbp)
	movq	-552(%rbp), %rax
	movq	104(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L36
	jmp	.L35
.L36:
	movq	-552(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	ap_flush_conn
	movq	-552(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L38
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	jmp	.L35
.L38:
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_socket_shutdown
	testl	%eax, %eax
	jne	.L39
	movq	-552(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L40
.L39:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	jmp	.L35
.L40:
	movq	-16(%rbp), %rax
	movl	$2000000, %esi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$4096, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
.L43:
	movq	$512, -536(%rbp)
	leaq	-536(%rbp), %rdx
	leaq	-528(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_socket_recv
	testl	%eax, %eax
	jne	.L41
	movq	-536(%rbp), %rax
	testq	%rax, %rax
	je	.L41
	cmpq	$0, -8(%rbp)
	jne	.L42
	call	apr_time_now
	addq	$30000000, %rax
	movq	%rax, -8(%rbp)
	nop
.L42:
	call	apr_time_now
	cmpq	-8(%rbp), %rax
	jl	.L43
.L41:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	nop
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_lingering_close, .-ap_lingering_close
	.globl	ap_process_connection
	.type	ap_process_connection, @function
ap_process_connection:
.LFB13:
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
	movq	%rax, %rdi
	call	ap_update_vhost_given_ip
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_run_pre_connection
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L46
	cmpl	$-2, -4(%rbp)
	je	.L46
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %edx
	orl	$1, %edx
	movb	%dl, 64(%rax)
.L46:
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L45
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_process_connection
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_process_connection, .-ap_process_connection
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

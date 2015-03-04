	.file	"config.c"
	.globl	ap_server_argv0
	.bss
	.align 8
	.type	ap_server_argv0, @object
	.size	ap_server_argv0, 8
ap_server_argv0:
	.zero	8
	.globl	ap_server_root
	.align 8
	.type	ap_server_root, @object
	.size	ap_server_root, 8
ap_server_root:
	.zero	8
	.globl	ap_server_pre_read_config
	.align 8
	.type	ap_server_pre_read_config, @object
	.size	ap_server_pre_read_config, 8
ap_server_pre_read_config:
	.zero	8
	.globl	ap_server_post_read_config
	.align 8
	.type	ap_server_post_read_config, @object
	.size	ap_server_post_read_config, 8
ap_server_post_read_config:
	.zero	8
	.globl	ap_server_config_defines
	.align 8
	.type	ap_server_config_defines, @object
	.size	ap_server_config_defines, 8
ap_server_config_defines:
	.zero	8
	.globl	ap_conftree
	.align 8
	.type	ap_conftree, @object
	.size	ap_conftree, 8
ap_conftree:
	.zero	8
	.local	_hooks
	.comm	_hooks,72,64
	.section	.rodata
.LC0:
	.string	"header_parser"
	.text
	.globl	ap_hook_header_parser
	.type	ap_hook_header_parser, @function
ap_hook_header_parser:
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
	.size	ap_hook_header_parser, .-ap_hook_header_parser
	.globl	ap_hook_get_header_parser
	.type	ap_hook_get_header_parser, @function
ap_hook_get_header_parser:
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
	.size	ap_hook_get_header_parser, .-ap_hook_get_header_parser
	.globl	ap_run_header_parser
	.type	ap_run_header_parser, @function
ap_run_header_parser:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
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
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
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
	.size	ap_run_header_parser, .-ap_run_header_parser
	.section	.rodata
.LC1:
	.string	"pre_config"
	.text
	.globl	ap_hook_pre_config
	.type	ap_hook_pre_config, @function
ap_hook_pre_config:
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
	.size	ap_hook_pre_config, .-ap_hook_pre_config
	.globl	ap_hook_get_pre_config
	.type	ap_hook_get_pre_config, @function
ap_hook_get_pre_config:
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
	.size	ap_hook_get_pre_config, .-ap_hook_get_pre_config
	.globl	ap_run_pre_config
	.type	ap_run_pre_config, @function
ap_run_pre_config:
.LFB7:
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L20
	cmpl	$-1, -8(%rbp)
	je	.L20
	jmp	.L18
.L20:
	movl	$0, -8(%rbp)
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
	.size	ap_run_pre_config, .-ap_run_pre_config
	.section	.rodata
.LC2:
	.string	"test_config"
	.text
	.globl	ap_hook_test_config
	.type	ap_hook_test_config, @function
ap_hook_test_config:
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
	movq	_hooks+64(%rip), %rax
	testq	%rax, %rax
	jne	.L24
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+64(%rip)
	movl	$_hooks+64, %esi
	movl	$.LC2, %edi
	call	apr_hook_sort_register
.L24:
	movq	_hooks+64(%rip), %rax
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
	.size	ap_hook_test_config, .-ap_hook_test_config
	.globl	ap_hook_get_test_config
	.type	ap_hook_get_test_config, @function
ap_hook_get_test_config:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+64(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_hook_get_test_config, .-ap_hook_get_test_config
	.globl	ap_run_test_config
	.type	ap_run_test_config, @function
ap_run_test_config:
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
	movq	_hooks+64(%rip), %rax
	testq	%rax, %rax
	je	.L28
	movq	_hooks+64(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L30
.L31:
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
	addl	$1, -4(%rbp)
.L30:
	movq	_hooks+64(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L31
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_run_test_config, .-ap_run_test_config
	.section	.rodata
.LC3:
	.string	"post_config"
	.text
	.globl	ap_hook_post_config
	.type	ap_hook_post_config, @function
ap_hook_post_config:
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
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	jne	.L33
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+16(%rip)
	movl	$_hooks+16, %esi
	movl	$.LC3, %edi
	call	apr_hook_sort_register
.L33:
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
	je	.L32
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	call	apr_hook_debug_show
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_hook_post_config, .-ap_hook_post_config
	.globl	ap_hook_get_post_config
	.type	ap_hook_get_post_config, @function
ap_hook_get_post_config:
.LFB12:
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
.LFE12:
	.size	ap_hook_get_post_config, .-ap_hook_get_post_config
	.globl	ap_run_post_config
	.type	ap_run_post_config, @function
ap_run_post_config:
.LFB13:
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
	movl	$0, -8(%rbp)
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	je	.L38
	movq	_hooks+16(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L39
.L41:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L40
	cmpl	$-1, -8(%rbp)
	je	.L40
	jmp	.L38
.L40:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L39:
	movq	_hooks+16(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L41
.L38:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_run_post_config, .-ap_run_post_config
	.section	.rodata
.LC4:
	.string	"open_logs"
	.text
	.globl	ap_hook_open_logs
	.type	ap_hook_open_logs, @function
ap_hook_open_logs:
.LFB14:
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
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	jne	.L44
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+24(%rip)
	movl	$_hooks+24, %esi
	movl	$.LC4, %edi
	call	apr_hook_sort_register
.L44:
	movq	_hooks+24(%rip), %rax
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
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	call	apr_hook_debug_show
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_hook_open_logs, .-ap_hook_open_logs
	.globl	ap_hook_get_open_logs
	.type	ap_hook_get_open_logs, @function
ap_hook_get_open_logs:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+24(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_hook_get_open_logs, .-ap_hook_get_open_logs
	.globl	ap_run_open_logs
	.type	ap_run_open_logs, @function
ap_run_open_logs:
.LFB16:
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
	movl	$0, -8(%rbp)
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	je	.L49
	movq	_hooks+24(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L50
.L52:
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
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L51
	cmpl	$-1, -8(%rbp)
	je	.L51
	jmp	.L49
.L51:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L50:
	movq	_hooks+24(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L52
.L49:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_run_open_logs, .-ap_run_open_logs
	.section	.rodata
.LC5:
	.string	"child_init"
	.text
	.globl	ap_hook_child_init
	.type	ap_hook_child_init, @function
ap_hook_child_init:
.LFB17:
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
	movq	_hooks+32(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+32(%rip)
	movl	$_hooks+32, %esi
	movl	$.LC5, %edi
	call	apr_hook_sort_register
.L55:
	movq	_hooks+32(%rip), %rax
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
	je	.L54
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	call	apr_hook_debug_show
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_hook_child_init, .-ap_hook_child_init
	.globl	ap_hook_get_child_init
	.type	ap_hook_get_child_init, @function
ap_hook_get_child_init:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+32(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_hook_get_child_init, .-ap_hook_get_child_init
	.globl	ap_run_child_init
	.type	ap_run_child_init, @function
ap_run_child_init:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	_hooks+32(%rip), %rax
	testq	%rax, %rax
	je	.L59
	movq	_hooks+32(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L61
.L62:
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
	addl	$1, -4(%rbp)
.L61:
	movq	_hooks+32(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L62
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_run_child_init, .-ap_run_child_init
	.section	.rodata
.LC6:
	.string	"handler"
	.text
	.globl	ap_hook_handler
	.type	ap_hook_handler, @function
ap_hook_handler:
.LFB20:
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
	movq	_hooks+40(%rip), %rax
	testq	%rax, %rax
	jne	.L64
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+40(%rip)
	movl	$_hooks+40, %esi
	movl	$.LC6, %edi
	call	apr_hook_sort_register
.L64:
	movq	_hooks+40(%rip), %rax
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
	je	.L63
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	call	apr_hook_debug_show
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_hook_handler, .-ap_hook_handler
	.globl	ap_hook_get_handler
	.type	ap_hook_get_handler, @function
ap_hook_get_handler:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+40(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_hook_get_handler, .-ap_hook_get_handler
	.globl	ap_run_handler
	.type	ap_run_handler, @function
ap_run_handler:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
	movq	_hooks+40(%rip), %rax
	testq	%rax, %rax
	je	.L69
	movq	_hooks+40(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L70
.L72:
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
	je	.L71
	jmp	.L69
.L71:
	addl	$1, -4(%rbp)
.L70:
	movq	_hooks+40(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L72
.L69:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_run_handler, .-ap_run_handler
	.section	.rodata
.LC7:
	.string	"quick_handler"
	.text
	.globl	ap_hook_quick_handler
	.type	ap_hook_quick_handler, @function
ap_hook_quick_handler:
.LFB23:
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
	movq	_hooks+48(%rip), %rax
	testq	%rax, %rax
	jne	.L75
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+48(%rip)
	movl	$_hooks+48, %esi
	movl	$.LC7, %edi
	call	apr_hook_sort_register
.L75:
	movq	_hooks+48(%rip), %rax
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
	je	.L74
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	call	apr_hook_debug_show
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_hook_quick_handler, .-ap_hook_quick_handler
	.globl	ap_hook_get_quick_handler
	.type	ap_hook_get_quick_handler, @function
ap_hook_get_quick_handler:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+48(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_hook_get_quick_handler, .-ap_hook_get_quick_handler
	.globl	ap_run_quick_handler
	.type	ap_run_quick_handler, @function
ap_run_quick_handler:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$-1, -8(%rbp)
	movq	_hooks+48(%rip), %rax
	testq	%rax, %rax
	je	.L80
	movq	_hooks+48(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L81
.L83:
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
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L82
	jmp	.L80
.L82:
	addl	$1, -4(%rbp)
.L81:
	movq	_hooks+48(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L83
.L80:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_run_quick_handler, .-ap_run_quick_handler
	.section	.rodata
.LC8:
	.string	"optional_fn_retrieve"
	.text
	.globl	ap_hook_optional_fn_retrieve
	.type	ap_hook_optional_fn_retrieve, @function
ap_hook_optional_fn_retrieve:
.LFB26:
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
	movq	_hooks+56(%rip), %rax
	testq	%rax, %rax
	jne	.L86
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+56(%rip)
	movl	$_hooks+56, %esi
	movl	$.LC8, %edi
	call	apr_hook_sort_register
.L86:
	movq	_hooks+56(%rip), %rax
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
	je	.L85
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	call	apr_hook_debug_show
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_hook_optional_fn_retrieve, .-ap_hook_optional_fn_retrieve
	.globl	ap_hook_get_optional_fn_retrieve
	.type	ap_hook_get_optional_fn_retrieve, @function
ap_hook_get_optional_fn_retrieve:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+56(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_hook_get_optional_fn_retrieve, .-ap_hook_get_optional_fn_retrieve
	.globl	ap_run_optional_fn_retrieve
	.type	ap_run_optional_fn_retrieve, @function
ap_run_optional_fn_retrieve:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	_hooks+56(%rip), %rax
	testq	%rax, %rax
	je	.L90
	movq	_hooks+56(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L92
.L93:
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
	call	*%rax
	addl	$1, -4(%rbp)
.L92:
	movq	_hooks+56(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L93
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_run_optional_fn_retrieve, .-ap_run_optional_fn_retrieve
	.local	total_modules
	.comm	total_modules,4,4
	.local	dynamic_modules
	.comm	dynamic_modules,4,4
	.globl	ap_top_module
	.bss
	.align 8
	.type	ap_top_module, @object
	.size	ap_top_module, 8
ap_top_module:
	.zero	8
	.globl	ap_loaded_modules
	.align 8
	.type	ap_loaded_modules, @object
	.size	ap_loaded_modules, 8
ap_loaded_modules:
	.zero	8
	.local	ap_config_hash
	.comm	ap_config_hash,8,8
	.text
	.type	create_empty_config, @function
create_empty_config:
.LFB29:
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
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rbx
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	create_empty_config, .-create_empty_config
	.type	create_default_per_dir_config, @function
create_default_per_dir_config:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rbx
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L97
.L99:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L98
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
.L98:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L97:
	cmpq	$0, -24(%rbp)
	jne	.L99
	movq	-32(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	create_default_per_dir_config, .-create_default_per_dir_config
	.globl	ap_merge_per_dir_configs
	.type	ap_merge_per_dir_configs, @function
ap_merge_per_dir_configs:
.LFB31:
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
	movl	total_modules(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L102
.L106:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L103
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L104
.L103:
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L105
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L105
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
	jmp	.L104
.L105:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
.L104:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L102:
	cmpq	$0, -24(%rbp)
	jne	.L106
	movq	-32(%rbp), %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ap_merge_per_dir_configs, .-ap_merge_per_dir_configs
	.type	create_server_config, @function
create_server_config:
.LFB32:
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
	movq	%rsi, -48(%rbp)
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rbx
	movl	total_modules(%rip), %eax
	subl	$-128, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rbx, %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L109
.L111:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
.L110:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L109:
	cmpq	$0, -24(%rbp)
	jne	.L111
	movq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	create_server_config, .-create_server_config
	.type	merge_server_configs, @function
merge_server_configs:
.LFB33:
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
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L114
.L117:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L115
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L116
.L115:
	cmpq	$0, -48(%rbp)
	je	.L116
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
.L116:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L114:
	cmpq	$0, -24(%rbp)
	jne	.L117
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	merge_server_configs, .-merge_server_configs
	.globl	ap_create_request_config
	.type	ap_create_request_config, @function
ap_create_request_config:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	create_empty_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ap_create_request_config, .-ap_create_request_config
	.globl	ap_create_conn_config
	.type	ap_create_conn_config, @function
ap_create_conn_config:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	create_empty_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ap_create_conn_config, .-ap_create_conn_config
	.globl	ap_create_per_dir_config
	.type	ap_create_per_dir_config, @function
ap_create_per_dir_config:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	create_empty_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ap_create_per_dir_config, .-ap_create_per_dir_config
	.type	ap_invoke_filter_init, @function
ap_invoke_filter_init:
.LFB37:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L125
.L128:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L126
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L126
	movl	-4(%rbp), %eax
	jmp	.L127
.L126:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L125:
	cmpq	$0, -24(%rbp)
	jne	.L128
	movl	$0, %eax
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ap_invoke_filter_init, .-ap_invoke_filter_init
	.section	.rodata
	.align 8
.LC9:
	.string	"handler \"%s\" not found for: %s"
.LC10:
	.string	"config.c"
.LC11:
	.string	"HTTP_IGNORE_RANGE"
	.align 8
.LC12:
	.string	"Handler for %s returned invalid result code %d"
	.text
	.globl	ap_invoke_handler
	.type	ap_invoke_handler, @function
ap_invoke_handler:
.LFB38:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_insert_filter
	movq	-72(%rbp), %rax
	movq	640(%rax), %rax
	movq	%rax, %rdi
	call	ap_invoke_filter_init
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L130
	movl	-12(%rbp), %eax
	jmp	.L131
.L130:
	movq	-72(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, %rdi
	call	ap_invoke_filter_init
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L132
	movl	-12(%rbp), %eax
	jmp	.L131
.L132:
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L133
	movq	-72(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L134
	movq	-72(%rbp), %rax
	movq	280(%rax), %rax
	jmp	.L135
.L134:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_default_type
.L135:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$59, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L136
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L137
.L139:
	subq	$1, -24(%rbp)
.L137:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L138
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L139
.L138:
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L136:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 288(%rax)
.L133:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_handler
	movl	%eax, -12(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 288(%rax)
	cmpl	$-1, -12(%rbp)
	jne	.L140
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-72(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L140
	movq	-72(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	movq	-72(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC9, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$377, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L140:
	cmpl	$0, -12(%rbp)
	je	.L141
	cmpl	$-2, -12(%rbp)
	je	.L141
	cmpl	$-1, -12(%rbp)
	je	.L141
	cmpl	$-3, -12(%rbp)
	je	.L141
	cmpl	$99, -12(%rbp)
	jle	.L142
	cmpl	$599, -12(%rbp)
	jle	.L141
.L142:
	movq	-72(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.L141
	movq	-72(%rbp), %rax
	movq	288(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	-12(%rbp), %edx
	pushq	%rdx
	pushq	%rax
	movl	$.LC12, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$391, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, -12(%rbp)
.L141:
	cmpl	$-1, -12(%rbp)
	je	.L143
	movl	-12(%rbp), %eax
	jmp	.L145
.L143:
	movl	$500, %eax
.L145:
	nop
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ap_invoke_handler, .-ap_invoke_handler
	.globl	ap_method_is_limited
	.type	ap_method_is_limited, @function
ap_method_is_limited:
.LFB39:
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
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, -4(%rbp)
	cmpl	$26, -4(%rbp)
	je	.L147
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L148
.L147:
	movl	$0, %eax
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ap_method_is_limited, .-ap_method_is_limited
	.section	.rodata
.LC13:
	.string	"SHOW_HOOKS"
.LC14:
	.string	"Registering hooks for %s\n"
	.text
	.globl	ap_register_hooks
	.type	ap_register_hooks, @function
ap_register_hooks:
.LFB40:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L149
	movl	$.LC13, %edi
	call	getenv
	testq	%rax, %rax
	je	.L151
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$1, apr_hook_debug_enabled(%rip)
.L151:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, apr_hook_debug_current(%rip)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ap_register_hooks, .-ap_register_hooks
	.type	reload_conf_hash, @function
reload_conf_hash:
.LFB41:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$0, ap_config_hash(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	reload_conf_hash, .-reload_conf_hash
	.type	rebuild_conf_hash, @function
rebuild_conf_hash:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, ap_config_hash(%rip)
	movq	-24(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$reload_conf_hash, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	cmpl	$0, -28(%rbp)
	je	.L154
	movq	$ap_prelinked_modules, -8(%rbp)
	jmp	.L156
.L157:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_module_commands
	addq	$8, -8(%rbp)
.L156:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L157
.L154:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	rebuild_conf_hash, .-rebuild_conf_hash
	.type	ap_add_module_commands, @function
ap_add_module_commands:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	ap_config_hash(%rip), %rax
	testq	%rax, %rax
	jne	.L159
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rebuild_conf_hash
.L159:
	movq	ap_config_hash(%rip), %rax
	movq	%rax, %rdi
	call	apr_hash_pool_get
	movq	%rax, -16(%rbp)
	jmp	.L160
.L162:
	movq	-16(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	ap_config_hash(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	ap_config_hash(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	addq	$40, -8(%rbp)
.L160:
	cmpq	$0, -8(%rbp)
	je	.L158
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L162
.L158:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ap_add_module_commands, .-ap_add_module_commands
	.section	.rodata
	.align 8
.LC15:
	.string	"Module \"%s\" is not compatible with this version of Apache (found %d, need %d). Please contact the vendor for the correct version."
	.align 8
.LC16:
	.string	"Module \"%s\" could not be loaded, because the dynamic module limit was reached. Please increase DYNAMIC_MODULE_LIMIT and recompile."
	.text
	.globl	ap_add_module
	.type	ap_add_module, @function
ap_add_module:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$20051115, %eax
	je	.L164
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$20051115, %r8d
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L165
.L164:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L166
	movq	ap_top_module(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, ap_top_module(%rip)
.L166:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L167
	movl	total_modules(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, total_modules(%rip)
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	dynamic_modules(%rip), %eax
	addl	$1, %eax
	movl	%eax, dynamic_modules(%rip)
	movl	dynamic_modules(%rip), %eax
	cmpl	$128, %eax
	jle	.L167
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L165
.L167:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	.L168
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L168:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	strrchr
	testq	%rax, %rax
	je	.L169
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$92, %esi
	movq	%rax, %rdi
	call	strrchr
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
.L169:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_module_commands
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_register_hooks
	movl	$0, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ap_add_module, .-ap_add_module
	.section	.rodata
	.align 8
.LC17:
	.string	"Cannot remove module %s: not found in module list"
	.text
	.globl	ap_remove_module
	.type	ap_remove_module, @function
ap_remove_module:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L171
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, ap_top_module(%rip)
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
	jmp	.L172
.L171:
	jmp	.L173
.L175:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L173:
	cmpq	$0, -8(%rbp)
	je	.L174
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.L175
.L174:
	cmpq	$0, -8(%rbp)
	jne	.L176
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC17, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movl	$586, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L170
.L176:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
.L172:
	movq	-24(%rbp), %rax
	movl	$-1, 8(%rax)
	movl	dynamic_modules(%rip), %eax
	subl	$1, %eax
	movl	%eax, dynamic_modules(%rip)
	movl	total_modules(%rip), %eax
	subl	$1, %eax
	movl	%eax, total_modules(%rip)
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	ap_remove_module, .-ap_remove_module
	.globl	ap_add_loaded_module
	.type	ap_add_loaded_module, @function
ap_add_loaded_module:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_module
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L179
	movq	-16(%rbp), %rax
	jmp	.L180
.L179:
	movq	ap_loaded_modules(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L181
.L182:
	addq	$8, -8(%rbp)
.L181:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L182
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ap_add_loaded_module, .-ap_add_loaded_module
	.globl	ap_remove_loaded_module
	.type	ap_remove_loaded_module, @function
ap_remove_loaded_module:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_remove_module
	movq	ap_loaded_modules(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L184
.L187:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.L185
	cmpl	$0, -20(%rbp)
	jne	.L185
	movl	$1, -20(%rbp)
	jmp	.L186
.L185:
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L186:
	addq	$8, -16(%rbp)
.L184:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L187
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ap_remove_loaded_module, .-ap_remove_loaded_module
	.section	.rodata
	.align 8
.LC18:
	.string	"Ouch! Out of memory in ap_setup_prelinked_modules()!"
	.text
	.globl	ap_setup_prelinked_modules
	.type	ap_setup_prelinked_modules, @function
ap_setup_prelinked_modules:
.LFB48:
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
	movq	%rax, apr_hook_global_pool(%rip)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	rebuild_conf_hash
	movl	$0, total_modules(%rip)
	movq	$ap_preloaded_modules, -8(%rbp)
	jmp	.L189
.L190:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movl	total_modules(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, total_modules(%rip)
	movl	%eax, 8(%rdx)
	addq	$8, -8(%rbp)
.L189:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L190
	movl	total_modules(%rip), %eax
	addl	$129, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, ap_loaded_modules(%rip)
	movq	ap_loaded_modules(%rip), %rax
	testq	%rax, %rax
	jne	.L191
	movl	$.LC18, %eax
	jmp	.L192
.L191:
	movq	$ap_preloaded_modules, -8(%rbp)
	movq	ap_loaded_modules(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L193
.L194:
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
.L193:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L194
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	$ap_prelinked_modules, -8(%rbp)
	jmp	.L195
.L197:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_module
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L196
	movq	-24(%rbp), %rax
	jmp	.L192
.L196:
	addq	$8, -8(%rbp)
.L195:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L197
	call	apr_hook_sort_all
	movl	$0, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ap_setup_prelinked_modules, .-ap_setup_prelinked_modules
	.globl	ap_find_module_name
	.type	ap_find_module_name, @function
ap_find_module_name:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ap_find_module_name, .-ap_find_module_name
	.globl	ap_find_linked_module
	.type	ap_find_linked_module, @function
ap_find_linked_module:
.LFB50:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L201
.L204:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L202
	movq	-8(%rbp), %rax
	jmp	.L203
.L202:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L201:
	cmpq	$0, -8(%rbp)
	jne	.L204
	movl	$0, %eax
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	ap_find_linked_module, .-ap_find_linked_module
	.section	.rodata
.LC19:
	.string	" not allowed here"
.LC20:
	.string	" takes no arguments"
.LC21:
	.string	", "
.LC22:
	.string	" takes one argument"
.LC23:
	.string	" takes two arguments"
.LC24:
	.string	" takes 1-2 arguments"
.LC25:
	.string	" takes three arguments"
.LC26:
	.string	" takes two or three arguments"
	.align 8
.LC27:
	.string	" takes one, two or three arguments"
.LC28:
	.string	" takes one or three arguments"
.LC29:
	.string	"\007\b"
	.align 8
.LC30:
	.string	" requires at least two arguments"
.LC31:
	.string	"on"
.LC32:
	.string	"off"
.LC33:
	.string	" must be On or Off"
	.align 8
.LC34:
	.string	" is improperly configured internally (server bug)"
	.text
	.type	invoke_cmd, @function
invoke_cmd:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$600, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -584(%rbp)
	movq	%rsi, -592(%rbp)
	movq	%rdx, -600(%rbp)
	movq	%rcx, -608(%rbp)
	movq	$0, -24(%rbp)
	movq	-592(%rbp), %rax
	movl	8(%rax), %edx
	movq	-584(%rbp), %rax
	movl	24(%rax), %eax
	andl	%edx, %eax
	testl	%eax, %eax
	jne	.L206
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC19, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L206:
	movq	-584(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-592(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-592(%rbp), %rax
	movq	-584(%rbp), %rdx
	movq	%rdx, 88(%rax)
	movq	-584(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$12, %eax
	ja	.L208
	movl	%eax, %eax
	movq	.L210(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L210:
	.quad	.L209
	.quad	.L211
	.quad	.L212
	.quad	.L268
	.quad	.L214
	.quad	.L215
	.quad	.L216
	.quad	.L217
	.quad	.L218
	.quad	.L219
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.text
.L209:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	jmp	.L207
.L222:
	movl	$0, -28(%rbp)
.L225:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L223
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L223
	jmp	.L224
.L223:
	movl	-28(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rdx, -576(%rbp,%rax,8)
	addl	$1, -28(%rbp)
	cmpl	$63, -28(%rbp)
	jg	.L224
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L225
.L224:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-576(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L216:
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L226
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC20, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L226:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-600(%rbp), %rcx
	movq	-592(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	jmp	.L207
.L211:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L227
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L228
.L227:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L229
	movl	$.LC21, %ecx
	jmp	.L230
.L229:
	movl	$0, %ecx
.L230:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC22, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L228:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	jmp	.L207
.L212:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L231
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L231
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L232
.L231:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L233
	movl	$.LC21, %ecx
	jmp	.L234
.L233:
	movl	$0, %ecx
.L234:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC23, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L232:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L217:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L235
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L236
.L235:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L237
	movl	$.LC21, %ecx
	jmp	.L238
.L237:
	movl	$0, %ecx
.L238:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC24, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L236:
	movq	-584(%rbp), %rax
	movq	8(%rax), %r8
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L239
	movq	-48(%rbp), %rax
	jmp	.L240
.L239:
	movl	$0, %eax
.L240:
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	movq	%rax, %rcx
	call	*%r8
	jmp	.L207
.L218:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L241
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L241
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L241
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L242
.L241:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L243
	movl	$.LC21, %ecx
	jmp	.L244
.L243:
	movl	$0, %ecx
.L244:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC25, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L242:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L219:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L245
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	jmp	.L246
.L245:
	movl	$0, %eax
.L246:
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L247
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L247
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L248
.L247:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L249
	movl	$.LC21, %ecx
	jmp	.L250
.L249:
	movl	$0, %ecx
.L250:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC26, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L248:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L220:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L251
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	jmp	.L252
.L251:
	movl	$0, %eax
.L252:
	movq	%rax, -48(%rbp)
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L253
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	jmp	.L254
.L253:
	movl	$0, %eax
.L254:
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L255
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L256
.L255:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L257
	movl	$.LC21, %ecx
	jmp	.L258
.L257:
	movl	$0, %ecx
.L258:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC27, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L256:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L221:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L259
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	jmp	.L260
.L259:
	movl	$0, %eax
.L260:
	movq	%rax, -48(%rbp)
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L261
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	jmp	.L262
.L261:
	movl	$0, %eax
.L262:
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L263
	cmpq	$0, -48(%rbp)
	je	.L264
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L264
	cmpq	$0, -56(%rbp)
	je	.L263
.L264:
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L265
.L263:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L266
	movl	$.LC21, %ecx
	jmp	.L267
.L266:
	movl	$0, %ecx
.L267:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC28, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L265:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-56(%rbp), %r8
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	jmp	.L207
.L269:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L268
	movq	-24(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L268
	movq	-24(%rbp), %rax
	jmp	.L207
.L268:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L269
	movq	-24(%rbp), %rax
	jmp	.L207
.L214:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L270
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L271
.L270:
	movq	-584(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-584(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L272
	movl	$.LC21, %ecx
	jmp	.L273
.L272:
	movl	$0, %ecx
.L273:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$.LC30, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L271:
	jmp	.L274
.L275:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	-592(%rbp), %rdi
	call	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L274
	movq	-24(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L274
	movq	-24(%rbp), %rax
	jmp	.L207
.L274:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L275
	movq	-24(%rbp), %rax
	jmp	.L207
.L215:
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-608(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L276
	movq	-40(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L277
	movq	-40(%rbp), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L277
.L276:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC33, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L207
.L277:
	movq	-584(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-600(%rbp), %rcx
	movq	-592(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%rbx
	jmp	.L207
.L208:
	movq	-584(%rbp), %rax
	movq	(%rax), %rsi
	movq	-592(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %ecx
	movl	$.LC34, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
.L207:
	addq	$600, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	invoke_cmd, .-invoke_cmd
	.globl	ap_find_command
	.type	ap_find_command, @function
ap_find_command:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	jmp	.L279
.L282:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L280
	movq	-16(%rbp), %rax
	jmp	.L281
.L280:
	addq	$40, -16(%rbp)
.L279:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L282
	movl	$0, %eax
.L281:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	ap_find_command, .-ap_find_command
	.globl	ap_find_command_in_modules
	.type	ap_find_command_in_modules, @function
ap_find_command_in_modules:
.LFB53:
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
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L284
.L287:
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L285
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_find_command
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L285
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	jmp	.L286
.L285:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L284:
	cmpq	$0, -8(%rbp)
	jne	.L287
	movl	$0, %eax
.L286:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	ap_find_command_in_modules, .-ap_find_command_in_modules
	.globl	ap_set_config_vectors
	.type	ap_set_config_vectors, @function
ap_set_config_vectors:
.LFB54:
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
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L289
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L289
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L289:
	cmpq	$0, -16(%rbp)
	jne	.L290
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L290
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
.L290:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	ap_set_config_vectors, .-ap_set_config_vectors
	.section	.rodata
.LC35:
	.string	">"
.LC36:
	.string	" section"
.LC37:
	.string	" without matching <"
	.align 8
.LC38:
	.string	"> directive missing closing '>'"
.LC39:
	.string	"> but saw "
.LC40:
	.string	"Expected </"
	.text
	.type	ap_build_config_sub, @function
ap_build_config_sub:
.LFB55:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movq	$0, -8(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L293
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L294
.L293:
	movl	$0, %eax
	jmp	.L314
.L294:
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_resolve_env
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L296
	movl	$0, %eax
	jmp	.L314
.L296:
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L297
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L298
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L298:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L297
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L297
	movq	$.LC35, -56(%rbp)
.L297:
	movq	-88(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movq	32(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movl	40(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_find_command_in_modules
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L299
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L299
	movq	$0, -72(%rbp)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	subq	$8, %rsp
	leaq	-72(%rbp), %r9
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	-16(%rbp), %rax
	pushq	%rdi
	movq	%rax, %rdi
	call	execute_now
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L300
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L301
.L300:
	movq	-72(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L302
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L302:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L301
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L301:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L303
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L304
	movq	-120(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
.L304:
	jmp	.L305
.L306:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L305:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L306
.L303:
	movq	-8(%rbp), %rax
	jmp	.L314
.L299:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L307
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L308
	movq	-120(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$1, %ecx
	movq	%rax, %rdi
	call	ap_add_node
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L313
.L308:
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-16(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %r9d
	movl	$.LC36, %r8d
	movq	%rdx, %rcx
	movl	$.LC37, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L314
.L310:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	je	.L311
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC38, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L314
.L311:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L312
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	subq	$8, %rsp
	movq	-16(%rbp), %rcx
	movq	-88(%rbp), %rax
	pushq	$0
	movl	$.LC35, %r9d
	movq	%rcx, %r8
	movl	$.LC39, %ecx
	movl	$.LC40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L314
.L312:
	movq	-48(%rbp), %rax
	movb	$62, (%rax)
	movq	-128(%rbp), %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L313
.L307:
	movq	-120(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rdx
	movq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_add_node
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
.L313:
	movq	-8(%rbp), %rax
.L314:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	ap_build_config_sub, .-ap_build_config_sub
	.section	.rodata
.LC41:
	.string	"</"
	.text
	.globl	ap_build_cont_config
	.type	ap_build_cont_config, @function
ap_build_cont_config:
.LFB56:
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
	movq	$0, -32(%rbp)
	movq	-48(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC35, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -16(%rbp)
	jmp	.L316
.L322:
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L317
	movq	-8(%rbp), %rax
	leaq	2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L317
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L317
	jmp	.L318
.L317:
	subq	$8, %rsp
	movq	-72(%rbp), %r9
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	leaq	-32(%rbp), %rdi
	pushq	%rdi
	movq	%rax, %rdi
	call	ap_build_config_sub
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L319
	movq	-24(%rbp), %rax
	jmp	.L323
.L319:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L321
	cmpq	$0, -72(%rbp)
	je	.L321
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L321:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L316
	cmpq	$0, -64(%rbp)
	je	.L316
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L316:
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L322
.L318:
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L323:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	ap_build_cont_config, .-ap_build_cont_config
	.section	.rodata
	.align 8
.LC42:
	.string	"', perhaps misspelled or defined by a module not included in the server configuration"
.LC43:
	.string	"Invalid command '"
	.text
	.type	ap_walk_config_sub, @function
ap_walk_config_sub:
.LFB57:
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
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	ap_config_hash(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L325
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC42, %ecx
	movl	$.LC43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L326
.L325:
	jmp	.L327
.L331:
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	72(%rax), %rax
	movq	-72(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_set_config_vectors
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	24(%rax), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L328
	jmp	.L329
.L328:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	invoke_cmd
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L329
	movq	-40(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L329
	movq	-64(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L330
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 104(%rax)
.L330:
	movq	-40(%rbp), %rax
	jmp	.L326
.L329:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L327:
	cmpq	$0, -8(%rbp)
	jne	.L331
	movl	$0, %eax
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	ap_walk_config_sub, .-ap_walk_config_sub
	.globl	ap_walk_config
	.type	ap_walk_config, @function
ap_walk_config:
.LFB58:
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
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 96(%rax)
	jmp	.L333
.L336:
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config_sub
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L334
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movq	-16(%rbp), %rax
	jmp	.L335
.L334:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L333:
	cmpq	$0, -24(%rbp)
	jne	.L336
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 96(%rax)
	movl	$0, %eax
.L335:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	ap_walk_config, .-ap_walk_config
	.section	.rodata
.LC44:
	.string	""
.LC45:
	.string	"\n"
	.align 8
.LC46:
	.string	"%s%s%s:%u: %s> was not closed."
	.text
	.globl	ap_build_config
	.type	ap_build_config, @function
ap_build_config:
.LFB59:
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L338
	jmp	.L339
.L340:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L339:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L340
.L338:
	jmp	.L341
.L345:
	subq	$8, %rsp
	leaq	-32(%rbp), %r8
	leaq	-24(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	pushq	-64(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_build_config_sub
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	jmp	.L351
.L342:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L344
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L344
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L344:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L341
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L341
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
.L341:
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L345
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L346
	movq	$.LC44, -8(%rbp)
	jmp	.L347
.L350:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	56(%rax), %edi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L348
	movl	$.LC44, %r10d
	jmp	.L349
.L348:
	movl	$.LC45, %r10d
.L349:
	subq	$8, %rsp
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rax
	pushq	%rcx
	movl	%edi, %r9d
	movq	%rsi, %r8
	movq	%r10, %rcx
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	addq	$16, %rsp
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.L347:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L350
	movq	-8(%rbp), %rax
	jmp	.L351
.L346:
	movl	$0, %eax
.L351:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	ap_build_config, .-ap_build_config
	.globl	ap_set_string_slot
	.type	ap_set_string_slot, @function
ap_set_string_slot:
.LFB60:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	ap_set_string_slot, .-ap_set_string_slot
	.section	.rodata
	.align 8
.LC47:
	.string	"Invalid value for directive %s, expected integer"
	.text
	.globl	ap_set_int_slot
	.type	ap_set_int_slot, @function
ap_set_int_slot:
.LFB61:
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
	movq	$0, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	leaq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movl	%eax, (%rbx)
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L355
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L356
.L355:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -24(%rbp)
.L356:
	movq	-24(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	ap_set_int_slot, .-ap_set_int_slot
	.globl	ap_set_string_slot_lower
	.type	ap_set_string_slot_lower, @function
ap_set_string_slot_lower:
.LFB62:
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
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	ap_set_string_slot_lower, .-ap_set_string_slot_lower
	.globl	ap_set_flag_slot
	.type	ap_set_flag_slot, @function
ap_set_flag_slot:
.LFB63:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%rdx)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	ap_set_flag_slot, .-ap_set_flag_slot
	.section	.rodata
.LC48:
	.string	"Invalid file path "
	.text
	.globl	ap_set_file_slot
	.type	ap_set_file_slot, @function
ap_set_file_slot:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L363
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L364
.L363:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
.L364:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	ap_set_file_slot, .-ap_set_file_slot
	.globl	ap_set_deprecated
	.type	ap_set_deprecated, @function
ap_set_deprecated:
.LFB65:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	32(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	ap_set_deprecated, .-ap_set_deprecated
	.data
	.align 64
	.type	default_parms, @object
	.size	default_parms, 120
default_parms:
	.quad	0
	.long	0
	.zero	4
	.quad	-1
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	24
	.text
	.globl	ap_server_root_relative
	.type	ap_server_root_relative, @function
ap_server_root_relative:
.LFB66:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	ap_server_root(%rip), %rsi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rdi
	call	apr_filepath_merge
	movl	%eax, -4(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L368
	cmpl	$0, -4(%rbp)
	je	.L369
	cmpl	$20025, -4(%rbp)
	je	.L369
	cmpl	$2, -4(%rbp)
	je	.L369
	cmpl	$20, -4(%rbp)
	jne	.L368
.L369:
	movq	-16(%rbp), %rax
	jmp	.L371
.L368:
	movl	$0, %eax
.L371:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	ap_server_root_relative, .-ap_server_root_relative
	.section	.rodata
.LC49:
	.string	"> before end of configuration"
	.text
	.globl	ap_soak_end_container
	.type	ap_soak_end_container, @function
ap_soak_end_container:
.LFB67:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movq	%rdi, -8232(%rbp)
	movq	%rsi, -8240(%rbp)
	jmp	.L373
.L378:
	movq	-8232(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-8208(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_resolve_env
	movq	%rax, -8216(%rbp)
	movq	-8232(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-8216(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L373
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L374
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L375
	movq	-8240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8232(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	movq	-8(%rbp), %rcx
	pushq	$0
	movl	$.LC35, %r9d
	movq	%rcx, %r8
	movl	$.LC39, %ecx
	movl	$.LC40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L379
.L375:
	movl	$0, %eax
	jmp	.L379
.L374:
	movq	-8216(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L377
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L377
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L377:
	movq	-8(%rbp), %rdx
	movq	-8232(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_soak_end_container
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L373
	movq	-16(%rbp), %rax
	jmp	.L379
.L373:
	movq	-8232(%rbp), %rax
	movq	40(%rax), %rdx
	leaq	-8208(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L378
	movq	-8240(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-8232(%rbp), %rax
	movq	56(%rax), %rax
	movl	$0, %r8d
	movl	$.LC49, %ecx
	movl	$.LC40, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
.L379:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	ap_soak_end_container, .-ap_soak_end_container
	.type	execute_now, @function
execute_now:
.LFB68:
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
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	ap_config_hash(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L381
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC42, %ecx
	movl	$.LC43, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L382
.L381:
	jmp	.L383
.L385:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	invoke_cmd
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L384
	movq	-32(%rbp), %rax
	jmp	.L382
.L384:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L383:
	cmpq	$0, -8(%rbp)
	jne	.L385
	movl	$0, %eax
.L382:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	execute_now, .-execute_now
	.type	arr_elts_getstr, @function
arr_elts_getstr:
.LFB69:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	%eax, %edx
	jle	.L387
	movl	$0, %eax
	jmp	.L388
.L387:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	subq	$8, %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movq	-24(%rbp), %rax
.L388:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	arr_elts_getstr, .-arr_elts_getstr
	.type	arr_elts_close, @function
arr_elts_close:
.LFB70:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	arr_elts_close, .-arr_elts_close
	.section	.rodata
.LC50:
	.string	"-c/-C directives"
	.align 8
.LC51:
	.string	"Syntax error in -C/-c directive: "
	.text
	.type	process_command_config, @function
process_command_config:
.LFB71:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%r8, -184(%rbp)
	movl	$0, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	ap_config_hash(%rip), %rax
	testq	%rax, %rax
	jne	.L392
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	rebuild_conf_hash
.L392:
	movq	default_parms(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	default_parms+8(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	default_parms+16(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	default_parms+24(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	default_parms+32(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	default_parms+40(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	default_parms+48(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	default_parms+56(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	default_parms+64(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	default_parms+72(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	default_parms+80(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	default_parms+88(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	default_parms+96(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	default_parms+104(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	default_parms+112(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$150, -120(%rbp)
	movl	$239, -16(%rbp)
	leaq	-144(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$arr_elts_close, %r9d
	movl	$arr_elts_getstr, %r8d
	movl	$0, %ecx
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	ap_pcfg_open_custom
	movq	%rax, -88(%rbp)
	movq	-168(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-176(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	ap_build_config
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	cmpq	$0, -8(%rbp)
	je	.L393
	movq	-8(%rbp), %rdx
	movq	-176(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC51, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L395
.L393:
	movl	$0, %eax
.L395:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	process_command_config, .-process_command_config
	.type	fname_alphasort, @function
fname_alphasort:
.LFB72:
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
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	fname_alphasort, .-fname_alphasort
	.section	.rodata
	.align 8
.LC52:
	.string	"Directory %s exceeds the maximum include directory nesting level of %u. You have probably a recursion somewhere."
	.align 8
.LC53:
	.string	"Could not open config directory %s: %s"
.LC54:
	.string	"."
.LC55:
	.string	".."
	.align 8
.LC56:
	.string	"Could not open configuration file %s: %s"
	.align 8
.LC57:
	.string	"Syntax error on line %d of %s: %s"
	.text
	.type	process_resource_config_nofnmatch, @function
process_resource_config_nofnmatch:
.LFB73:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$368, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, -352(%rbp)
	movq	%r8, -360(%rbp)
	movl	%r9d, -364(%rbp)
	movq	-336(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_is_directory
	testl	%eax, %eax
	je	.L399
	movq	$0, -16(%rbp)
	movq	-336(%rbp), %rdx
	movq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	addl	$1, -364(%rbp)
	cmpl	$128, -364(%rbp)
	jbe	.L400
	movq	-24(%rbp), %rdx
	movq	-352(%rbp), %rax
	movl	$128, %ecx
	movl	$.LC52, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L412
.L400:
	movq	-352(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dir_open
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L402
	leaq	-320(%rbp), %rcx
	movl	-28(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-352(%rbp), %rax
	movl	$.LC53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L412
.L402:
	movq	-352(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -16(%rbp)
	jmp	.L403
.L404:
	movq	-216(%rbp), %rax
	movl	$.LC54, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L403
	movq	-216(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L403
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movq	-216(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L403:
	movq	-192(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movl	$33554432, %esi
	movq	%rax, %rdi
	call	apr_dir_read
	testl	%eax, %eax
	je	.L404
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L405
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$fname_alphasort, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort
	movl	$0, -4(%rbp)
	jmp	.L406
.L408:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movl	-364(%rbp), %r8d
	movq	-360(%rbp), %rdi
	movq	-352(%rbp), %rcx
	movq	-344(%rbp), %rdx
	movq	-328(%rbp), %rax
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	process_resource_config_nofnmatch
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L407
	movq	-48(%rbp), %rax
	jmp	.L412
.L407:
	addl	$1, -4(%rbp)
.L406:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L408
.L405:
	movl	$0, %eax
	jmp	.L412
.L399:
	movq	default_parms(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	default_parms+8(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	default_parms+16(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	default_parms+24(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	default_parms+32(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	default_parms+40(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	default_parms+48(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	default_parms+56(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	default_parms+64(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	default_parms+72(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	default_parms+80(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	default_parms+88(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	default_parms+96(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	default_parms+104(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	default_parms+112(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$150, -168(%rbp)
	movl	$239, -64(%rbp)
	movq	-336(%rbp), %rdx
	movq	-352(%rbp), %rcx
	leaq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L410
	leaq	-320(%rbp), %rcx
	movl	-28(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	-336(%rbp), %rdx
	movq	-352(%rbp), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L412
.L410:
	movq	-184(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-344(%rbp), %rcx
	movq	-360(%rbp), %rdx
	movq	-352(%rbp), %rsi
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ap_build_config
	movq	%rax, -48(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	cmpq	$0, -48(%rbp)
	je	.L411
	movq	-72(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-72(%rbp), %rax
	movl	56(%rax), %edx
	movq	-48(%rbp), %rsi
	movq	-352(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC57, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L412
.L411:
	movl	$0, %eax
.L412:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	process_resource_config_nofnmatch, .-process_resource_config_nofnmatch
	.section	.rodata
.LC58:
	.string	"conf/httpd.conf"
	.align 8
.LC59:
	.string	"Wildcard patterns not allowed in Include "
.LC60:
	.string	"' not found"
.LC61:
	.string	"Include directory '"
	.align 8
.LC62:
	.string	"Must include a wildcard pattern for Include "
	.text
	.globl	ap_process_resource_config
	.type	ap_process_resource_config, @function
ap_process_resource_config:
.LFB74:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movq	%rdx, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%r8, -232(%rbp)
	movq	ap_server_pre_read_config(%rip), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L414
	movq	ap_server_post_read_config(%rip), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L415
.L414:
	movq	-224(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L415
	movq	-224(%rbp), %rdx
	movq	-208(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32769, %edx
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	je	.L415
	movl	$0, %eax
	jmp	.L417
.L415:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	jne	.L418
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movq	-200(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	process_resource_config_nofnmatch
	jmp	.L417
.L418:
	movq	$0, -16(%rbp)
	movq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	je	.L419
	movq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC59, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L417
.L419:
	movq	-24(%rbp), %rdx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_is_directory
	testl	%eax, %eax
	jne	.L421
	movq	-24(%rbp), %rdx
	movq	-224(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC60, %ecx
	movl	$.LC61, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L417
.L421:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	jne	.L422
	movq	-208(%rbp), %rdx
	movq	-224(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC62, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L417
.L422:
	movq	-224(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dir_open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L423
	leaq	-192(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-224(%rbp), %rax
	movl	$.LC53, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L417
.L423:
	movq	-224(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -16(%rbp)
	jmp	.L424
.L425:
	movq	-88(%rbp), %rax
	movl	$.LC54, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L424
	movq	-88(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L424
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	jne	.L424
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
.L424:
	movq	-64(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movl	$33554432, %esi
	movq	%rax, %rdi
	call	apr_dir_read
	testl	%eax, %eax
	je	.L425
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L426
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	$fname_alphasort, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort
	movl	$0, -4(%rbp)
	jmp	.L427
.L429:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-232(%rbp), %rdi
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	-200(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	process_resource_config_nofnmatch
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L428
	movq	-56(%rbp), %rax
	jmp	.L417
.L428:
	addl	$1, -4(%rbp)
.L427:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L429
.L426:
	movl	$0, %eax
.L417:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	ap_process_resource_config, .-ap_process_resource_config
	.section	.rodata
	.align 8
.LC63:
	.string	"Syntax error on line %d of %s:"
.LC64:
	.string	"%s"
	.text
	.globl	ap_process_config_tree
	.type	ap_process_config_tree, @function
ap_process_config_tree:
.LFB75:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	default_parms(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	default_parms+8(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	default_parms+16(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	default_parms+24(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	default_parms+32(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	default_parms+40(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	default_parms+48(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	default_parms+56(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	default_parms+64(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	default_parms+72(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	default_parms+80(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	default_parms+88(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	default_parms+96(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	default_parms+104(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	default_parms+112(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$150, -120(%rbp)
	movl	$239, -16(%rbp)
	movq	$-1, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	88(%rax), %rdx
	leaq	-128(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L431
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	movq	-152(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC63, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1763, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	subq	$8, %rsp
	movq	-152(%rbp), %rax
	pushq	-8(%rbp)
	movl	$.LC64, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1767, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L433
.L431:
	movl	$0, %eax
.L433:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	ap_process_config_tree, .-ap_process_config_tree
	.section	.rodata
.LC65:
	.string	"%s: %s"
	.align 8
.LC66:
	.string	"%s pcfg_openfile: unable to check htaccess file, ensure it is readable"
	.align 8
.LC67:
	.string	"Server unable to read htaccess file, denying access to be safe"
.LC68:
	.string	"error-notes"
	.text
	.globl	ap_parse_htaccess
	.type	ap_parse_htaccess, @function
ap_parse_htaccess:
.LFB76:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	movl	%edx, -212(%rbp)
	movl	%ecx, -216(%rbp)
	movq	%r8, -224(%rbp)
	movq	%r9, -232(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -16(%rbp)
	movq	-208(%rbp), %rax
	movq	624(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L435
.L438:
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-212(%rbp), %eax
	jne	.L436
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L436
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-200(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L445
.L436:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.L435:
	cmpq	$0, -8(%rbp)
	jne	.L438
	movq	default_parms(%rip), %rax
	movq	%rax, -176(%rbp)
	movq	default_parms+8(%rip), %rax
	movq	%rax, -168(%rbp)
	movq	default_parms+16(%rip), %rax
	movq	%rax, -160(%rbp)
	movq	default_parms+24(%rip), %rax
	movq	%rax, -152(%rbp)
	movq	default_parms+32(%rip), %rax
	movq	%rax, -144(%rbp)
	movq	default_parms+40(%rip), %rax
	movq	%rax, -136(%rbp)
	movq	default_parms+48(%rip), %rax
	movq	%rax, -128(%rbp)
	movq	default_parms+56(%rip), %rax
	movq	%rax, -120(%rbp)
	movq	default_parms+64(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	default_parms+72(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	default_parms+80(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	default_parms+88(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	default_parms+96(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	default_parms+104(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	default_parms+112(%rip), %rax
	movq	%rax, -64(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-216(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-208(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -96(%rbp)
	jmp	.L439
.L444:
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	leaq	-232(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, -32(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rcx
	movq	-32(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L440
	movq	$0, -184(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_per_dir_config
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-208(%rbp), %rax
	movq	(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-184(%rbp), %rcx
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	ap_build_config
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L441
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_walk_config
	movq	%rax, -24(%rbp)
.L441:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	cmpq	$0, -24(%rbp)
	je	.L442
	movq	-208(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	$.LC65, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$1828, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L445
.L442:
	movq	-200(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L443
.L440:
	cmpl	$2, -36(%rbp)
	je	.L439
	cmpl	$20, -36(%rbp)
	je	.L439
	subq	$8, %rsp
	movq	-208(%rbp), %rdx
	movl	-36(%rbp), %eax
	pushq	-32(%rbp)
	movl	$.LC66, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$1839, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-208(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC67, %edx
	movl	$.LC68, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$403, %eax
	jmp	.L445
.L439:
	movq	-232(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L444
.L443:
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	-212(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	-216(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-208(%rbp), %rax
	movq	624(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-208(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 624(%rax)
	movl	$0, %eax
.L445:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	ap_parse_htaccess, .-ap_parse_htaccess
	.globl	ap_init_virtual_host
	.type	ap_init_virtual_host, @function
ap_init_virtual_host:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	$184, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$184, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 124(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 120(%rax)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-40(%rbp), %rax
	movl	72(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 72(%rax)
	movq	-40(%rbp), %rax
	movzwl	48(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 76(%rax)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	create_empty_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_create_per_dir_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-40(%rbp), %rax
	movl	160(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 160(%rax)
	movq	-40(%rbp), %rax
	movl	164(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 164(%rax)
	movq	-40(%rbp), %rax
	movl	168(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 168(%rax)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_parse_vhost_addrs
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	ap_init_virtual_host, .-ap_init_virtual_host
	.globl	ap_fixup_virtual_hosts
	.type	ap_fixup_virtual_hosts, @function
ap_fixup_virtual_hosts:
.LFB78:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L449
.L455:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	merge_server_configs
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L450
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
.L450:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L451
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
.L451:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jne	.L452
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 112(%rax)
.L452:
	movq	-8(%rbp), %rax
	movl	124(%rax), %eax
	cmpl	$-1, %eax
	jne	.L453
	movq	-32(%rbp), %rax
	movl	124(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 124(%rax)
.L453:
	movq	-8(%rbp), %rax
	movl	120(%rax), %eax
	cmpl	$-1, %eax
	jne	.L454
	movq	-32(%rbp), %rax
	movl	120(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 120(%rax)
.L454:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_core_reorder_directories
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L449:
	cmpq	$0, -8(%rbp)
	jne	.L455
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_core_reorder_directories
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	ap_fixup_virtual_hosts, .-ap_fixup_virtual_hosts
	.type	init_config_globals, @function
init_config_globals:
.LFB79:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_init_vhost_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	init_config_globals, .-init_config_globals
	.section	.rodata
.LC69:
	.string	"[no address given]"
.LC70:
	.string	"logs/error_log"
.LC71:
	.string	"rv == APR_SUCCESS"
	.text
	.type	init_server_config, @function
init_server_config:
.LFB80:
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
	movl	$184, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$184, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	apr_file_open_stderr
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movw	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC69, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC70, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$8190, 160(%rax)
	movq	-8(%rbp), %rax
	movl	$8190, 164(%rax)
	movq	-8(%rbp), %rax
	movl	$100, 168(%rax)
	movq	-8(%rbp), %rax
	movq	$300000000, 104(%rax)
	movq	-8(%rbp), %rax
	movq	$5000000, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$100, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 124(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %r9
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L458
	movl	$1978, %edx
	movl	$.LC10, %esi
	movl	$.LC71, %edi
	call	ap_log_assert
.L458:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movw	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	$.LC44, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_server_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	create_default_per_dir_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	init_server_config, .-init_server_config
	.section	.rodata
.LC72:
	.string	"Invalid config file path %s"
	.text
	.globl	ap_read_config
	.type	ap_read_config, @function
ap_read_config:
.LFB81:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init_server_config
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	init_config_globals
	movq	ap_server_pre_read_config(%rip), %rsi
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	process_command_config
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L461
	movq	ap_server_argv0(%rip), %rax
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC65, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$34, %edx
	movl	$2005, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L462
.L461:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L463
	subq	$8, %rsp
	pushq	-56(%rbp)
	movl	$.LC72, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$34, %edx
	movl	$2016, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L462
.L463:
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_process_resource_config
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L464
	movq	ap_server_argv0(%rip), %rax
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC65, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$34, %edx
	movl	$2024, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L462
.L464:
	movq	ap_server_post_read_config(%rip), %rsi
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	process_command_config
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L465
	movq	ap_server_argv0(%rip), %rax
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC65, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$34, %edx
	movl	$2033, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L462
.L465:
	movq	-16(%rbp), %rax
.L462:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	ap_read_config, .-ap_read_config
	.globl	ap_single_module_configure
	.type	ap_single_module_configure, @function
ap_single_module_configure:
.LFB82:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.L467
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
.L467:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	je	.L466
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$3, %rax
	leaq	(%rdx,%rax), %rbx
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %esi
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, (%rbx)
.L466:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	ap_single_module_configure, .-ap_single_module_configure
	.globl	ap_run_rewrite_args
	.type	ap_run_rewrite_args, @function
ap_run_rewrite_args:
.LFB83:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	ap_top_module(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L470
.L472:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L471
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L471:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.L470:
	cmpq	$0, -8(%rbp)
	jne	.L472
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	ap_run_rewrite_args, .-ap_run_rewrite_args
	.section	.rodata
.LC73:
	.string	"\tAllowed in *.conf "
.LC74:
	.string	"anywhere"
	.align 8
.LC75:
	.string	"only outside <Directory>, <Files> or <Location>"
	.align 8
.LC76:
	.string	"only inside <Directory>, <Files> or <Location>"
.LC77:
	.string	" [no per-dir config]"
	.align 8
.LC78:
	.string	" and in .htaccess\n\twhen AllowOverride"
.LC79:
	.string	" isn't None"
.LC80:
	.string	" includes "
.LC81:
	.string	" or "
.LC82:
	.string	"AuthConfig"
.LC83:
	.string	"Limit"
.LC84:
	.string	"Options"
.LC85:
	.string	"FileInfo"
.LC86:
	.string	"Indexes"
	.text
	.type	show_overrides, @function
show_overrides:
.LFB84:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$.LC73, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$22, %eax
	testl	%eax, %eax
	jne	.L474
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L475
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$73, %eax
	testl	%eax, %eax
	je	.L475
.L474:
	movl	$.LC74, %edi
	movl	$0, %eax
	call	printf
	jmp	.L476
.L475:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L477
	movl	$.LC75, %edi
	movl	$0, %eax
	call	printf
	jmp	.L476
.L477:
	movl	$.LC76, %edi
	movl	$0, %eax
	call	printf
.L476:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$95, %eax
	testl	%eax, %eax
	je	.L478
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.L478
	movl	$.LC77, %edi
	movl	$0, %eax
	call	printf
.L478:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$31, %eax
	testl	%eax, %eax
	je	.L479
	movl	$.LC78, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$31, %eax
	cmpl	$31, %eax
	jne	.L480
	movl	$.LC79, %edi
	movl	$0, %eax
	call	printf
	jmp	.L479
.L480:
	movl	$.LC80, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L481
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L482
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
.L482:
	movl	$.LC82, %edi
	movl	$0, %eax
	call	printf
.L481:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L483
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L484
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
.L484:
	movl	$.LC83, %edi
	movl	$0, %eax
	call	printf
.L483:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L485
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L486
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
.L486:
	movl	$.LC84, %edi
	movl	$0, %eax
	call	printf
.L485:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L487
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L488
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
.L488:
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
.L487:
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L479
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	je	.L489
	movl	$.LC81, %edi
	movl	$0, %eax
	call	printf
.L489:
	movl	$.LC86, %edi
	movl	$0, %eax
	call	printf
.L479:
	movl	$10, %edi
	call	putchar
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	show_overrides, .-show_overrides
	.section	.rodata
.LC87:
	.string	"%s (%s)\n"
.LC88:
	.string	"\t%s\n"
	.text
	.globl	ap_show_directives
	.type	ap_show_directives, @function
ap_show_directives:
.LFB85:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L491
.L496:
	movq	ap_loaded_modules(%rip), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L492
.L495:
	movq	ap_loaded_modules(%rip), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L493
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC88, %edi
	movl	$0, %eax
	call	printf
.L493:
	movq	ap_loaded_modules(%rip), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_overrides
	addq	$40, -8(%rbp)
.L492:
	cmpq	$0, -8(%rbp)
	je	.L494
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L495
.L494:
	addl	$1, -12(%rbp)
.L491:
	movq	ap_loaded_modules(%rip), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L496
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	ap_show_directives, .-ap_show_directives
	.section	.rodata
.LC89:
	.string	"Compiled in modules:"
.LC90:
	.string	"  %s\n"
	.text
	.globl	ap_show_modules
	.type	ap_show_modules, @function
ap_show_modules:
.LFB86:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$.LC89, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L498
.L499:
	movq	ap_loaded_modules(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L498:
	movq	ap_loaded_modules(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L499
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	ap_show_modules, .-ap_show_modules
	.section	.rodata
.LC91:
	.string	"Prefork"
	.text
	.globl	ap_show_mpm
	.type	ap_show_mpm, @function
ap_show_mpm:
.LFB87:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC91, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	ap_show_mpm, .-ap_show_mpm
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

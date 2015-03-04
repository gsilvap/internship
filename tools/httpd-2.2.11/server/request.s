	.file	"request.c"
	.local	_hooks
	.comm	_hooks,72,64
	.section	.rodata
.LC0:
	.string	"translate_name"
	.text
	.globl	ap_hook_translate_name
	.type	ap_hook_translate_name, @function
ap_hook_translate_name:
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
	.size	ap_hook_translate_name, .-ap_hook_translate_name
	.globl	ap_hook_get_translate_name
	.type	ap_hook_get_translate_name, @function
ap_hook_get_translate_name:
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
	.size	ap_hook_get_translate_name, .-ap_hook_get_translate_name
	.globl	ap_run_translate_name
	.type	ap_run_translate_name, @function
ap_run_translate_name:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
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
	cmpl	$-1, -8(%rbp)
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
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_run_translate_name, .-ap_run_translate_name
	.section	.rodata
.LC1:
	.string	"map_to_storage"
	.text
	.globl	ap_hook_map_to_storage
	.type	ap_hook_map_to_storage, @function
ap_hook_map_to_storage:
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
	.size	ap_hook_map_to_storage, .-ap_hook_map_to_storage
	.globl	ap_hook_get_map_to_storage
	.type	ap_hook_get_map_to_storage, @function
ap_hook_get_map_to_storage:
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
	.size	ap_hook_get_map_to_storage, .-ap_hook_get_map_to_storage
	.globl	ap_run_map_to_storage
	.type	ap_run_map_to_storage, @function
ap_run_map_to_storage:
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
	.size	ap_run_map_to_storage, .-ap_run_map_to_storage
	.section	.rodata
.LC2:
	.string	"check_user_id"
	.text
	.globl	ap_hook_check_user_id
	.type	ap_hook_check_user_id, @function
ap_hook_check_user_id:
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
	.size	ap_hook_check_user_id, .-ap_hook_check_user_id
	.globl	ap_hook_get_check_user_id
	.type	ap_hook_get_check_user_id, @function
ap_hook_get_check_user_id:
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
	.size	ap_hook_get_check_user_id, .-ap_hook_get_check_user_id
	.globl	ap_run_check_user_id
	.type	ap_run_check_user_id, @function
ap_run_check_user_id:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
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
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L31
	jmp	.L29
.L31:
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
	.size	ap_run_check_user_id, .-ap_run_check_user_id
	.section	.rodata
.LC3:
	.string	"fixups"
	.text
	.globl	ap_hook_fixups
	.type	ap_hook_fixups, @function
ap_hook_fixups:
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
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	jne	.L35
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+24(%rip)
	movl	$_hooks+24, %esi
	movl	$.LC3, %edi
	call	apr_hook_sort_register
.L35:
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
	je	.L34
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	call	apr_hook_debug_show
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_hook_fixups, .-ap_hook_fixups
	.globl	ap_hook_get_fixups
	.type	ap_hook_get_fixups, @function
ap_hook_get_fixups:
.LFB12:
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
.LFE12:
	.size	ap_hook_get_fixups, .-ap_hook_get_fixups
	.globl	ap_run_fixups
	.type	ap_run_fixups, @function
ap_run_fixups:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	je	.L40
	movq	_hooks+24(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L41
.L43:
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
	je	.L42
	cmpl	$-1, -8(%rbp)
	je	.L42
	jmp	.L40
.L42:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L41:
	movq	_hooks+24(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L43
.L40:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_run_fixups, .-ap_run_fixups
	.section	.rodata
.LC4:
	.string	"type_checker"
	.text
	.globl	ap_hook_type_checker
	.type	ap_hook_type_checker, @function
ap_hook_type_checker:
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
	movq	_hooks+32(%rip), %rax
	testq	%rax, %rax
	jne	.L46
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+32(%rip)
	movl	$_hooks+32, %esi
	movl	$.LC4, %edi
	call	apr_hook_sort_register
.L46:
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
	je	.L45
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	call	apr_hook_debug_show
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_hook_type_checker, .-ap_hook_type_checker
	.globl	ap_hook_get_type_checker
	.type	ap_hook_get_type_checker, @function
ap_hook_get_type_checker:
.LFB15:
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
.LFE15:
	.size	ap_hook_get_type_checker, .-ap_hook_get_type_checker
	.globl	ap_run_type_checker
	.type	ap_run_type_checker, @function
ap_run_type_checker:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -8(%rbp)
	movq	_hooks+32(%rip), %rax
	testq	%rax, %rax
	je	.L51
	movq	_hooks+32(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L52
.L54:
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
	je	.L53
	jmp	.L51
.L53:
	addl	$1, -4(%rbp)
.L52:
	movq	_hooks+32(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L54
.L51:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_run_type_checker, .-ap_run_type_checker
	.section	.rodata
.LC5:
	.string	"access_checker"
	.text
	.globl	ap_hook_access_checker
	.type	ap_hook_access_checker, @function
ap_hook_access_checker:
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
	movq	_hooks+40(%rip), %rax
	testq	%rax, %rax
	jne	.L57
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+40(%rip)
	movl	$_hooks+40, %esi
	movl	$.LC5, %edi
	call	apr_hook_sort_register
.L57:
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
	je	.L56
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	call	apr_hook_debug_show
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_hook_access_checker, .-ap_hook_access_checker
	.globl	ap_hook_get_access_checker
	.type	ap_hook_get_access_checker, @function
ap_hook_get_access_checker:
.LFB18:
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
.LFE18:
	.size	ap_hook_get_access_checker, .-ap_hook_get_access_checker
	.globl	ap_run_access_checker
	.type	ap_run_access_checker, @function
ap_run_access_checker:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	_hooks+40(%rip), %rax
	testq	%rax, %rax
	je	.L62
	movq	_hooks+40(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L63
.L65:
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
	je	.L64
	cmpl	$-1, -8(%rbp)
	je	.L64
	jmp	.L62
.L64:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L63:
	movq	_hooks+40(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L65
.L62:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_run_access_checker, .-ap_run_access_checker
	.section	.rodata
.LC6:
	.string	"auth_checker"
	.text
	.globl	ap_hook_auth_checker
	.type	ap_hook_auth_checker, @function
ap_hook_auth_checker:
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
	movq	_hooks+48(%rip), %rax
	testq	%rax, %rax
	jne	.L68
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+48(%rip)
	movl	$_hooks+48, %esi
	movl	$.LC6, %edi
	call	apr_hook_sort_register
.L68:
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
	je	.L67
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	call	apr_hook_debug_show
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_hook_auth_checker, .-ap_hook_auth_checker
	.globl	ap_hook_get_auth_checker
	.type	ap_hook_get_auth_checker, @function
ap_hook_get_auth_checker:
.LFB21:
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
.LFE21:
	.size	ap_hook_get_auth_checker, .-ap_hook_get_auth_checker
	.globl	ap_run_auth_checker
	.type	ap_run_auth_checker, @function
ap_run_auth_checker:
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
	movq	_hooks+48(%rip), %rax
	testq	%rax, %rax
	je	.L73
	movq	_hooks+48(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L74
.L76:
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
	je	.L75
	jmp	.L73
.L75:
	addl	$1, -4(%rbp)
.L74:
	movq	_hooks+48(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L76
.L73:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_run_auth_checker, .-ap_run_auth_checker
	.section	.rodata
.LC7:
	.string	"insert_filter"
	.text
	.globl	ap_hook_insert_filter
	.type	ap_hook_insert_filter, @function
ap_hook_insert_filter:
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
	movq	_hooks+56(%rip), %rax
	testq	%rax, %rax
	jne	.L79
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+56(%rip)
	movl	$_hooks+56, %esi
	movl	$.LC7, %edi
	call	apr_hook_sort_register
.L79:
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
	je	.L78
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	call	apr_hook_debug_show
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_hook_insert_filter, .-ap_hook_insert_filter
	.globl	ap_hook_get_insert_filter
	.type	ap_hook_get_insert_filter, @function
ap_hook_get_insert_filter:
.LFB24:
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
.LFE24:
	.size	ap_hook_get_insert_filter, .-ap_hook_get_insert_filter
	.globl	ap_run_insert_filter
	.type	ap_run_insert_filter, @function
ap_run_insert_filter:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	_hooks+56(%rip), %rax
	testq	%rax, %rax
	je	.L83
	movq	_hooks+56(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L85
.L86:
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
	addl	$1, -4(%rbp)
.L85:
	movq	_hooks+56(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L86
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_run_insert_filter, .-ap_run_insert_filter
	.section	.rodata
.LC8:
	.string	"create_request"
	.text
	.globl	ap_hook_create_request
	.type	ap_hook_create_request, @function
ap_hook_create_request:
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
	movq	_hooks+64(%rip), %rax
	testq	%rax, %rax
	jne	.L88
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+64(%rip)
	movl	$_hooks+64, %esi
	movl	$.LC8, %edi
	call	apr_hook_sort_register
.L88:
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
	je	.L87
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	call	apr_hook_debug_show
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_hook_create_request, .-ap_hook_create_request
	.globl	ap_hook_get_create_request
	.type	ap_hook_get_create_request, @function
ap_hook_get_create_request:
.LFB27:
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
.LFE27:
	.size	ap_hook_get_create_request, .-ap_hook_get_create_request
	.globl	ap_run_create_request
	.type	ap_run_create_request, @function
ap_run_create_request:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	_hooks+64(%rip), %rax
	testq	%rax, %rax
	je	.L93
	movq	_hooks+64(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L94
.L96:
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
	je	.L95
	cmpl	$-1, -8(%rbp)
	je	.L95
	jmp	.L93
.L95:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L94:
	movq	_hooks+64(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L96
.L93:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_run_create_request, .-ap_run_create_request
	.section	.rodata
	.align 8
.LC9:
	.string	"configuration error:  couldn't %s: %s"
.LC10:
	.string	"request.c"
	.text
	.type	decl_die, @function
decl_die:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L99
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	movq	-24(%rbp), %rdx
	pushq	%rax
	pushq	-16(%rbp)
	movl	$.LC9, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$2, %edx
	movl	$88, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L100
.L99:
	movl	-4(%rbp), %eax
.L100:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	decl_die, .-decl_die
	.section	.rodata
	.align 8
.LC11:
	.string	"found %%2f (encoded '/') in URI (decoded='%s'), returning 404"
.LC12:
	.string	"translate"
.LC13:
	.string	"check access"
.LC14:
	.string	"check user.  No user file?"
	.align 8
.LC15:
	.string	"perform authentication. AuthType not set!"
	.align 8
.LC16:
	.string	"check access.  No groups file?"
.LC17:
	.string	"find types"
	.text
	.globl	ap_process_request_internal
	.type	ap_process_request_internal, @function
ap_process_request_internal:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L102
	movl	$1, %eax
	jmp	.L103
.L102:
	movl	$0, %eax
.L103:
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	jne	.L104
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	testq	%rax, %rax
	je	.L104
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	je	.L105
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	call	ap_unescape_url_keep2f
	movl	%eax, -4(%rbp)
	jmp	.L106
.L105:
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	movl	%eax, -4(%rbp)
.L106:
	cmpl	$0, -4(%rbp)
	je	.L104
	cmpl	$404, -4(%rbp)
	jne	.L107
	movq	-16(%rbp), %rax
	movzbl	224(%rax), %eax
	andl	$16, %eax
	testb	%al, %al
	jne	.L107
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC11, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$120, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L107:
	movl	-4(%rbp), %eax
	jmp	.L108
.L104:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	ap_getparents
	cmpl	$0, -8(%rbp)
	jne	.L109
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_location_walk
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L110
	movl	-4(%rbp), %eax
	jmp	.L108
.L110:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_translate_name
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L109
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC12, %esi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L109:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_map_to_storage
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L111
	movl	-4(%rbp), %eax
	jmp	.L108
.L111:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_location_walk
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L112
	movl	-4(%rbp), %eax
	jmp	.L108
.L112:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L113
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_header_parser
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L113
	movl	-4(%rbp), %eax
	jmp	.L108
.L113:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L114
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	608(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L114
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	328(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 328(%rax)
	jmp	.L115
.L114:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L116
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	608(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L116
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	320(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	328(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 328(%rax)
	jmp	.L115
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_satisfies
	cmpl	$1, %eax
	je	.L117
	cmpl	$2, %eax
	je	.L118
	testl	%eax, %eax
	jne	.L115
.L118:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_access_checker
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L119
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC13, %esi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L119:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_some_auth_required
	testl	%eax, %eax
	je	.L120
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_check_user_id
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L121
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	jne	.L122
.L121:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	je	.L123
	movl	$.LC14, %ecx
	jmp	.L124
.L123:
	movl	$.LC15, %ecx
.L124:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L122:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_auth_checker
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L125
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	jne	.L120
.L125:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	je	.L126
	movl	$.LC16, %ecx
	jmp	.L127
.L126:
	movl	$.LC15, %ecx
.L127:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L120:
	jmp	.L115
.L117:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_access_checker
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L128
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_some_auth_required
	testl	%eax, %eax
	jne	.L129
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC13, %esi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L129:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_check_user_id
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L130
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	jne	.L131
.L130:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	je	.L132
	movl	$.LC14, %ecx
	jmp	.L133
.L132:
	movl	$.LC15, %ecx
.L133:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L131:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_auth_checker
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L134
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	jne	.L128
.L134:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	testq	%rax, %rax
	je	.L135
	movl	$.LC16, %ecx
	jmp	.L136
.L135:
	movl	$.LC15, %ecx
.L136:
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L128:
	nop
.L115:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_type_checker
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L137
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC17, %esi
	movl	%eax, %edi
	call	decl_die
	jmp	.L108
.L137:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_fixups
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L138
	movl	-4(%rbp), %eax
	jmp	.L108
.L138:
	movl	$0, %eax
.L108:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	ap_process_request_internal, .-ap_process_request_internal
	.type	prep_walk_cache, @function
prep_walk_cache:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_request_note
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L140
	movl	$0, %eax
	jmp	.L141
.L140:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L142
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L143
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_request_note
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L143
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L144
.L143:
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L145
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_request_note
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L145
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L145
.L144:
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$40, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pmemdup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_array_copy
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	jmp	.L146
.L145:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$40, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
.L146:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
.L142:
	movq	-8(%rbp), %rax
.L141:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	prep_walk_cache, .-prep_walk_cache
	.type	resolve_symlink, @function
resolve_symlink:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%rcx, -176(%rbp)
	movl	-164(%rbp), %eax
	andl	$68, %eax
	testl	%eax, %eax
	jne	.L148
	movl	$403, %eax
	jmp	.L159
.L148:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L150
	movq	-160(%rbp), %rax
	movq	104(%rax), %rax
	jmp	.L151
.L150:
	movl	$0, %eax
.L151:
	movq	%rax, -8(%rbp)
	movl	-164(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L152
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	andl	$-33554434, %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L153
	movl	$403, %eax
	jmp	.L159
.L153:
	leaq	-144(%rbp), %rcx
	movq	-160(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	cmpq	$0, -8(%rbp)
	je	.L154
	movq	-160(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	orl	$33554432, %eax
	movl	%eax, %edx
	movq	-160(%rbp), %rax
	movl	%edx, 8(%rax)
.L154:
	movl	$0, %eax
	jmp	.L159
.L152:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	andl	$196608, %eax
	testl	%eax, %eax
	jne	.L155
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	orl	$196609, %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L155
	movl	$403, %eax
	jmp	.L159
.L155:
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	andl	$-33554433, %eax
	movl	%eax, %edi
	movq	-176(%rbp), %rdx
	movq	-152(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L156
	movl	$403, %eax
	jmp	.L159
.L156:
	movl	-124(%rbp), %edx
	movq	-160(%rbp), %rax
	movl	20(%rax), %eax
	cmpl	%eax, %edx
	je	.L157
	movl	$403, %eax
	jmp	.L159
.L157:
	leaq	-144(%rbp), %rcx
	movq	-160(%rbp), %rax
	movl	$120, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	cmpq	$0, -8(%rbp)
	je	.L158
	movq	-160(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 104(%rax)
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	orl	$33554432, %eax
	movl	%eax, %edx
	movq	-160(%rbp), %rax
	movl	%edx, 8(%rax)
.L158:
	movl	$0, %eax
.L159:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	resolve_symlink, .-resolve_symlink
	.type	core_opts_merge, @function
core_opts_merge:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L161
	jmp	.L160
.L161:
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %eax
	movzbl	%al, %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L163
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, 2(%rax)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L164
.L163:
	movq	-8(%rbp), %rax
	movzbl	12(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	13(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	14(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 2(%rax)
.L164:
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L160
	movq	-8(%rbp), %rax
	movzbl	15(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 3(%rax)
	movq	-8(%rbp), %rax
	movzbl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movb	%dl, 4(%rax)
.L160:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	core_opts_merge, .-core_opts_merge
	.section	.rodata
	.align 8
.LC18:
	.string	"Module bug?  Request filename is missing for URI %s"
	.align 8
.LC19:
	.string	"Module bug?  Request filename path %s is invalid or or not absolute for uri %s"
.LC20:
	.string	"/"
	.align 8
.LC21:
	.string	"dir_walk error, path_info %s is not relative to the filename path %s for uri %s"
	.align 8
.LC22:
	.string	"dir_walk error, could not determine the root path of filename %s%s for uri %s"
.LC23:
	.string	"access to %s denied"
.LC24:
	.string	"access to %s failed"
	.align 8
.LC25:
	.string	"Symbolic link not allowed or link target not accessible: %s"
	.align 8
.LC26:
	.string	"Forbidden: %s doesn't point to a file or directory"
	.text
	.globl	ap_directory_walk
	.type	ap_directory_walk, @function
ap_directory_walk:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$360, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -360(%rbp)
	movq	$0, -24(%rbp)
	movq	-360(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -100(%rbp)
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L166
	movq	-360(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-360(%rbp), %rdx
	pushq	%rax
	movl	$.LC18, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$485, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L241
.L166:
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	leaq	-208(%rbp), %rax
	movq	%rcx, %r8
	movl	$4, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_filepath_merge
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L168
	movq	-360(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	-360(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC19, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$498, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L241
.L168:
	movq	-208(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	prep_walk_cache
	movq	%rax, -112(%rbp)
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L169
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$6, %eax
	jne	.L170
.L169:
	movq	-360(%rbp), %rax
	movq	(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	-360(%rbp), %rcx
	leaq	392(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$33136, %edx
	movq	%rax, %rsi
	call	apr_stat
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jne	.L171
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L170
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	je	.L170
	movq	-360(%rbp), %rax
	movq	360(%rax), %rbx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L170
.L171:
	movq	-360(%rbp), %rax
	movl	$0, 408(%rax)
.L170:
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	jne	.L172
	movq	-208(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -208(%rbp)
	jmp	.L173
.L172:
	movq	-360(%rbp), %rax
	movq	360(%rax), %rbx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L173
	movq	-360(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC20, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -208(%rbp)
.L173:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L174
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	je	.L175
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L174
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L175
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L174
.L175:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.L174
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L174
	movq	-360(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L176
	movl	$0, %eax
	jmp	.L241
.L176:
	movq	-360(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L177
	movq	-112(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 608(%rax)
	movl	$0, %eax
	jmp	.L241
.L177:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L178
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L179
.L178:
	jmp	.L179
.L174:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-360(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzbl	12(%rax), %eax
	movb	%al, -224(%rbp)
	movq	-120(%rbp), %rax
	movzbl	13(%rax), %eax
	movb	%al, -223(%rbp)
	movq	-120(%rbp), %rax
	movzbl	14(%rax), %eax
	movb	%al, -222(%rbp)
	movq	-120(%rbp), %rax
	movzbl	15(%rax), %eax
	movb	%al, -221(%rbp)
	movq	-120(%rbp), %rax
	movzbl	16(%rax), %eax
	movb	%al, -220(%rbp)
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L180
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L180
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L180
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	-360(%rbp), %rsi
	leaq	376(%rsi), %rdi
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rsi
	call	apr_filepath_merge
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L181
	movq	-360(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rdx
	subq	$8, %rsp
	movq	-360(%rbp), %rdi
	movl	-104(%rbp), %eax
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	$.LC21, %r9d
	movq	%rdi, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$630, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
	movl	$500, %eax
	jmp	.L241
.L181:
	movq	$0, -48(%rbp)
	jmp	.L183
.L180:
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 376(%rax)
.L183:
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-360(%rbp), %rdx
	leaq	376(%rdx), %rsi
	movq	-360(%rbp), %rdx
	leaq	360(%rdx), %rdi
	movq	%rax, %rcx
	movl	$0, %edx
	call	apr_filepath_root
	movl	%eax, -104(%rbp)
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -64(%rbp)
	cmpl	$0, -104(%rbp)
	je	.L184
	movq	-360(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-360(%rbp), %rdi
	movl	-104(%rbp), %eax
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	$.LC22, %r9d
	movq	%rdi, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$697, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
	movl	$500, %eax
	jmp	.L241
.L184:
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -136(%rbp)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-360(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, 360(%rax)
	movl	$32768, -344(%rbp)
	movl	$2, -336(%rbp)
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	ap_count_dirs
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	$0, -28(%rbp)
.L223:
	movl	$0, -76(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jbe	.L185
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	-64(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L185
	movq	-360(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -64(%rbp)
	addq	%rcx, %rax
	movb	$47, (%rax)
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, -76(%rbp)
.L185:
	jmp	.L186
.L196:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movl	core_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-152(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L187
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-52(%rbp), %eax
	ja	.L187
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L188
	movq	-160(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-52(%rbp), %eax
	jb	.L189
	movq	-160(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L190
	movq	-360(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	jne	.L189
	jmp	.L188
.L190:
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L188
.L189:
	jmp	.L191
.L188:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	core_opts_merge
	cmpl	$0, -32(%rbp)
	je	.L192
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L193
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$16, -40(%rbp)
	subl	$1, -32(%rbp)
	jmp	.L191
.L193:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$0, -32(%rbp)
.L192:
	cmpq	$0, -24(%rbp)
	je	.L194
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, -24(%rbp)
	jmp	.L195
.L194:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L195:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L191:
	addl	$1, -28(%rbp)
.L186:
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L196
.L187:
	movq	$0, -232(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jb	.L204
	movzbl	-221(%rbp), %eax
	testb	%al, %al
	je	.L204
	movq	-88(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdi
	movzbl	-220(%rbp), %eax
	movzbl	%al, %ecx
	movzbl	-221(%rbp), %eax
	movzbl	%al, %edx
	movq	-360(%rbp), %rsi
	leaq	-232(%rbp), %rax
	movq	%rbx, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_parse_htaccess
	movl	%eax, -188(%rbp)
	cmpl	$0, -188(%rbp)
	je	.L198
	movl	-188(%rbp), %eax
	jmp	.L241
.L198:
	movq	-232(%rbp), %rax
	testq	%rax, %rax
	jne	.L199
	jmp	.L204
.L199:
	movq	-232(%rbp), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	core_opts_merge
	cmpl	$0, -32(%rbp)
	je	.L200
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-232(%rbp), %rax
	cmpq	%rax, %rdx
	jne	.L201
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$16, -40(%rbp)
	subl	$1, -32(%rbp)
	jmp	.L204
.L201:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$0, -32(%rbp)
.L200:
	cmpq	$0, -24(%rbp)
	je	.L202
	movq	-232(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, -24(%rbp)
	jmp	.L203
.L202:
	movq	-232(%rbp), %rax
	movq	%rax, -24(%rbp)
.L203:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movq	-232(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L204:
	cmpl	$0, -76(%rbp)
	je	.L205
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$1, -64(%rbp)
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L205:
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L206
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L206
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-360(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L207
	movl	$1, %eax
	jmp	.L208
.L207:
	movl	$0, %eax
.L208:
	addq	%rdx, %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.L209
	movq	-168(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movb	$0, (%rax)
	movq	-176(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-176(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-360(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, 376(%rax)
	movq	-168(%rbp), %rax
	movb	$47, (%rax)
	jmp	.L210
.L209:
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-184(%rbp), %rax
	addq	%rax, -64(%rbp)
	movq	-360(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 376(%rax)
.L210:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L211
	addq	$1, -72(%rbp)
.L211:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L212
	jmp	.L206
.L212:
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L213
	movzbl	-224(%rbp), %eax
	movzbl	%al, %eax
	andl	$68, %eax
	cmpl	$4, %eax
	jne	.L213
	movl	$2, -336(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L214
.L213:
	movq	-360(%rbp), %rax
	movq	(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-352(%rbp), %rax
	movq	%rdx, %rcx
	movl	$33587569, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -104(%rbp)
	cmpl	$2, -104(%rbp)
	jne	.L215
	movl	$0, -336(%rbp)
	jmp	.L206
.L215:
	cmpl	$13, -104(%rbp)
	jne	.L216
	movq	-360(%rbp), %rax
	movq	352(%rax), %rdx
	subq	$8, %rsp
	movq	-360(%rbp), %rcx
	movl	-104(%rbp), %eax
	pushq	%rdx
	movl	$.LC23, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$958, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movl	$403, 112(%rax)
	movq	-360(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L241
.L216:
	cmpl	$0, -104(%rbp)
	je	.L217
	cmpl	$70008, -104(%rbp)
	jne	.L218
.L217:
	movl	-344(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	jne	.L219
.L218:
	movq	-360(%rbp), %rax
	movq	352(%rax), %rdx
	subq	$8, %rsp
	movq	-360(%rbp), %rcx
	movl	-104(%rbp), %eax
	pushq	%rdx
	movl	$.LC24, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$967, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movl	$403, 112(%rax)
	movq	-360(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L241
.L219:
	movl	-344(%rbp), %eax
	andl	$33554432, %eax
	testl	%eax, %eax
	je	.L220
	movq	-248(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L220
	movq	-248(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -64(%rbp)
.L220:
	movl	-336(%rbp), %eax
	cmpl	$6, %eax
	jne	.L221
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movzbl	-224(%rbp), %eax
	movzbl	%al, %edx
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	leaq	-352(%rbp), %rsi
	movq	%rax, %rdi
	call	resolve_symlink
	movl	%eax, -188(%rbp)
	cmpl	$0, -188(%rbp)
	je	.L221
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-360(%rbp), %rdx
	pushq	%rax
	movl	$.LC25, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$989, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movl	-188(%rbp), %edx
	movl	%edx, 112(%rax)
	movq	-360(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L241
.L221:
	movl	-336(%rbp), %eax
	cmpl	$1, %eax
	je	.L206
	movl	-336(%rbp), %eax
	testl	%eax, %eax
	je	.L206
	movl	-336(%rbp), %eax
	cmpl	$2, %eax
	je	.L222
	movq	-360(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-360(%rbp), %rdx
	pushq	%rax
	movl	$.LC26, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1006, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-360(%rbp), %rax
	movl	$403, 112(%rax)
	movq	-360(%rbp), %rax
	movl	112(%rax), %eax
	jmp	.L241
.L222:
	addl	$1, -52(%rbp)
.L214:
	movl	-336(%rbp), %eax
	cmpl	$2, %eax
	je	.L223
.L206:
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	je	.L224
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$6, %eax
	jne	.L225
.L224:
	movq	-360(%rbp), %rax
	movq	-352(%rbp), %rdx
	movq	%rdx, 392(%rax)
	movq	-344(%rbp), %rdx
	movq	%rdx, 400(%rax)
	movq	-336(%rbp), %rdx
	movq	%rdx, 408(%rax)
	movq	-328(%rbp), %rdx
	movq	%rdx, 416(%rax)
	movq	-320(%rbp), %rdx
	movq	%rdx, 424(%rax)
	movq	-312(%rbp), %rdx
	movq	%rdx, 432(%rax)
	movq	-304(%rbp), %rdx
	movq	%rdx, 440(%rax)
	movq	-296(%rbp), %rdx
	movq	%rdx, 448(%rax)
	movq	-288(%rbp), %rdx
	movq	%rdx, 456(%rax)
	movq	-280(%rbp), %rdx
	movq	%rdx, 464(%rax)
	movq	-272(%rbp), %rdx
	movq	%rdx, 472(%rax)
	movq	-264(%rbp), %rdx
	movq	%rdx, 480(%rax)
	movq	-256(%rbp), %rdx
	movq	%rdx, 488(%rax)
	movq	-248(%rbp), %rdx
	movq	%rdx, 496(%rax)
	movq	-240(%rbp), %rdx
	movq	%rdx, 504(%rax)
.L225:
	cmpq	$0, -48(%rbp)
	je	.L226
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L227
	movq	-360(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L227
	movq	-360(%rbp), %rax
	movq	376(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 376(%rax)
	jmp	.L226
.L227:
	movq	-360(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 376(%rax)
.L226:
	jmp	.L228
.L236:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	jne	.L229
	jmp	.L230
.L229:
	movq	-360(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-200(%rbp), %rax
	movq	144(%rax), %rax
	movl	$8, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	je	.L231
	jmp	.L230
.L231:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	core_opts_merge
	cmpl	$0, -32(%rbp)
	je	.L232
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-96(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L233
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	addq	$16, -40(%rbp)
	subl	$1, -32(%rbp)
	jmp	.L230
.L233:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$0, -32(%rbp)
.L232:
	cmpq	$0, -24(%rbp)
	je	.L234
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, -24(%rbp)
	jmp	.L235
.L234:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L235:
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L230:
	addl	$1, -28(%rbp)
.L228:
	movl	-28(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jl	.L236
	cmpl	$0, -32(%rbp)
	je	.L179
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
.L179:
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-360(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L238
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L239
.L238:
	movq	-360(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, (%rax)
.L239:
	movq	-112(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-360(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpq	$0, -24(%rbp)
	je	.L240
	movq	-360(%rbp), %rax
	movq	608(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, 608(%rax)
.L240:
	movq	-360(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$0, %eax
.L241:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ap_directory_walk, .-ap_directory_walk
	.globl	ap_location_walk
	.type	ap_location_walk, @function
ap_location_walk:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	$0, -8(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L243
	movl	$0, %eax
	jmp	.L244
.L243:
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	prep_walk_cache
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L245
	movq	-104(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L246
.L245:
	movq	-104(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_no2slash
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
.L246:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L247
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L247
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L247
	movq	-104(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L248
	movl	$0, %eax
	jmp	.L244
.L248:
	movq	-104(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L249
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 608(%rax)
	movl	$0, %eax
	jmp	.L244
.L249:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L250
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L251
.L250:
	jmp	.L251
.L247:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L252
.L266:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L253
	movq	-104(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	144(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	setne	%al
	jmp	.L254
.L253:
	movq	-80(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L255
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	setne	%al
	jmp	.L254
.L255:
	movl	-84(%rbp), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L257
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L258
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L258
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movl	-84(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L258
.L257:
	movl	$1, %eax
	jmp	.L259
.L258:
	movl	$0, %eax
.L259:
	andl	$1, %eax
.L254:
	testb	%al, %al
	je	.L260
	jmp	.L261
.L260:
	cmpl	$0, -24(%rbp)
	je	.L262
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L263
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$16, -32(%rbp)
	subl	$1, -24(%rbp)
	jmp	.L261
.L263:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$0, -24(%rbp)
.L262:
	cmpq	$0, -8(%rbp)
	je	.L264
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, -8(%rbp)
	jmp	.L265
.L264:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L265:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L261:
	addl	$1, -20(%rbp)
.L252:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L266
	cmpl	$0, -24(%rbp)
	je	.L251
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
.L251:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpq	$0, -8(%rbp)
	je	.L267
	movq	-104(%rbp), %rax
	movq	608(%rax), %rcx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 608(%rax)
.L267:
	movq	-104(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$0, %eax
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ap_location_walk, .-ap_location_walk
	.globl	ap_file_walk
	.type	ap_file_walk, @function
ap_file_walk:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	$0, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	jne	.L269
	movl	$0, %eax
	jmp	.L270
.L269:
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	prep_walk_cache
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.L271
	movl	$0, %eax
	jmp	.L270
.L271:
	movq	-88(%rbp), %rax
	movq	360(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L272
	movq	-88(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	jmp	.L273
.L272:
	addq	$1, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
.L273:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L274
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.L274
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L274
	movq	-88(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L275
	movl	$0, %eax
	jmp	.L270
.L275:
	movq	-88(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L276
	movq	-64(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 608(%rax)
	movl	$0, %eax
	jmp	.L270
.L276:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L277
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	cltq
	salq	$4, %rax
	subq	$16, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L278
.L277:
	jmp	.L278
.L274:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, -20(%rbp)
	jmp	.L279
.L290:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	testq	%rax, %rax
	je	.L280
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	144(%rax), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	setne	%al
	jmp	.L281
.L280:
	movq	-72(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L282
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	setne	%al
	jmp	.L281
.L282:
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	setne	%al
.L281:
	testb	%al, %al
	je	.L284
	jmp	.L285
.L284:
	cmpl	$0, -24(%rbp)
	je	.L286
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L287
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$16, -32(%rbp)
	subl	$1, -24(%rbp)
	jmp	.L285
.L287:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movl	$0, -24(%rbp)
.L286:
	cmpq	$0, -8(%rbp)
	je	.L288
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, -8(%rbp)
	jmp	.L289
.L288:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L289:
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L285:
	addl	$1, -20(%rbp)
.L279:
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L290
	cmpl	$0, -24(%rbp)
	je	.L278
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	12(%rdx), %edx
	subl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
.L278:
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpq	$0, -8(%rbp)
	je	.L291
	movq	-88(%rbp), %rax
	movq	608(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_merge_per_dir_configs
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 608(%rax)
.L291:
	movq	-88(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 24(%rax)
	movl	$0, %eax
.L270:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ap_file_walk, .-ap_file_walk
	.section	.rodata
.LC27:
	.string	"subrequest"
	.text
	.type	make_sub_request, @function
make_sub_request:
.LFB37:
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
	movq	(%rax), %rsi
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-16(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-16(%rbp), %rax
	movl	$672, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$672, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_request_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 616(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-24(%rbp), %rax
	movq	624(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 624(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_make_method_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_copy_method_list
	cmpq	$0, -32(%rbp)
	je	.L293
	movq	-24(%rbp), %rax
	movq	640(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-24(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 632(%rax)
	movq	-24(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	jmp	.L294
.L293:
	movq	-24(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-24(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	movq	-24(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-24(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 632(%rax)
.L294:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_sub_req_protocol
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_create_request
	movq	-8(%rbp), %rax
	movl	$2, 600(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	make_sub_request, .-make_sub_request
	.globl	ap_sub_req_output_filter
	.type	ap_sub_req_output_filter, @function
ap_sub_req_output_filter:
.LFB38:
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
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L297
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
.L297:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	je	.L298
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L299
.L298:
	movl	$0, %eax
.L299:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ap_sub_req_output_filter, .-ap_sub_req_output_filter
	.globl	ap_some_auth_required
	.type	ap_some_auth_required, @function
ap_some_auth_required:
.LFB39:
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
	call	ap_requires
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L301
	movl	$0, %eax
	jmp	.L302
.L301:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L303
.L305:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L304
	movl	$1, %eax
	jmp	.L302
.L304:
	addl	$1, -4(%rbp)
.L303:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L305
	movl	$0, %eax
.L302:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	ap_some_auth_required, .-ap_some_auth_required
	.globl	ap_sub_req_method_uri
	.type	ap_sub_req_method_uri, @function
ap_sub_req_method_uri:
.LFB40:
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
	movl	$500, -4(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_sub_request
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 120(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L307
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	jmp	.L308
.L307:
	movq	-56(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
.L308:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_recursion_limit_exceeded
	testl	%eax, %eax
	je	.L309
	movq	-16(%rbp), %rax
	movl	$500, 112(%rax)
	movq	-16(%rbp), %rax
	jmp	.L310
.L309:
	cmpq	$0, -64(%rbp)
	je	.L311
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ap_run_quick_handler
	movl	%eax, -4(%rbp)
.L311:
	cmpq	$0, -64(%rbp)
	je	.L312
	cmpl	$0, -4(%rbp)
	je	.L313
.L312:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L313
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, 112(%rax)
.L313:
	movq	-16(%rbp), %rax
.L310:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ap_sub_req_method_uri, .-ap_sub_req_method_uri
	.section	.rodata
.LC28:
	.string	"GET"
	.text
	.globl	ap_sub_req_lookup_uri
	.type	ap_sub_req_lookup_uri, @function
ap_sub_req_lookup_uri:
.LFB41:
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
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC28, %edi
	call	ap_sub_req_method_uri
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ap_sub_req_lookup_uri, .-ap_sub_req_lookup_uri
	.section	.rodata
.LC29:
	.string	"?"
	.text
	.globl	ap_sub_req_lookup_dirent
	.type	ap_sub_req_lookup_dirent, @function
ap_sub_req_lookup_dirent:
.LFB42:
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
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_sub_request
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L317
	movq	-64(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L317
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_find_path_info
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 352(%rax)
	cmpl	$1, -68(%rbp)
	jne	.L318
	movq	-64(%rbp), %rax
	movq	376(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-64(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 376(%rax)
.L318:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 352(%rax)
	jmp	.L319
.L317:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 352(%rax)
.L319:
	movq	-64(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-64(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L320
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 368(%rax)
.L320:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	andl	$33136, %eax
	cmpl	$33136, %eax
	je	.L321
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$4, %eax
	testl	%eax, %eax
	je	.L322
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	-24(%rbp), %rcx
	leaq	392(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$33136, %edx
	movq	%rax, %rsi
	call	apr_stat
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L324
	cmpl	$70008, -44(%rbp)
	je	.L324
	movq	-24(%rbp), %rax
	movl	$0, 408(%rax)
	jmp	.L325
.L322:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	-24(%rbp), %rcx
	leaq	392(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$33137, %edx
	movq	%rax, %rsi
	call	apr_stat
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L324
	cmpl	$70008, -44(%rbp)
	je	.L324
	movq	-24(%rbp), %rax
	movl	$0, 408(%rax)
	jmp	.L325
.L324:
	jmp	.L325
.L321:
	movq	-24(%rbp), %rax
	leaq	392(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$120, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
.L325:
	movq	-24(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$6, %eax
	jne	.L326
	movq	-24(%rbp), %rax
	movq	(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	leaq	392(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	resolve_symlink
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L326
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 112(%rax)
	movq	-24(%rbp), %rax
	jmp	.L327
.L326:
	movq	-24(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	jne	.L328
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L329
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L328
.L329:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rdx
	movq	%rdx, %rax
	movq	$-1, %rcx
	movq	%rax, %rsi
	movl	$0, %eax
	movq	%rsi, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	addq	%rdx, %rax
	movw	$47, (%rax)
.L328:
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L330
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L330
	cmpl	$1, -68(%rbp)
	jne	.L330
	movq	-64(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC29, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	jmp	.L331
.L330:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
.L331:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_recursion_limit_exceeded
	testl	%eax, %eax
	je	.L332
	movq	-24(%rbp), %rax
	movl	$500, 112(%rax)
	movq	-24(%rbp), %rax
	jmp	.L327
.L332:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.L333
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %edx
	movl	%edx, 112(%rax)
.L333:
	movq	-24(%rbp), %rax
.L327:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ap_sub_req_lookup_dirent, .-ap_sub_req_lookup_dirent
	.section	.rodata
.LC30:
	.string	""
	.text
	.globl	ap_sub_req_lookup_file
	.type	ap_sub_req_lookup_file, @function
ap_sub_req_lookup_file:
.LFB43:
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
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_sub_request
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	360(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L335
	movq	-8(%rbp), %rax
	movq	$1, 368(%rax)
.L335:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	360(%rax), %rdi
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movl	$32, %ecx
	movq	%rax, %rsi
	call	apr_filepath_merge
	testl	%eax, %eax
	je	.L336
	movq	-8(%rbp), %rax
	movl	$403, 112(%rax)
	movq	-8(%rbp), %rax
	jmp	.L337
.L336:
	movq	-8(%rbp), %rax
	movq	368(%rax), %rax
	testq	%rax, %rax
	je	.L338
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 368(%rax)
.L338:
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L339
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L339
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L339
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	andl	$4, %eax
	testl	%eax, %eax
	je	.L340
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	392(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$33136, %edx
	movq	%rax, %rsi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L342
	cmpl	$70008, -28(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	movl	$0, 408(%rax)
	jmp	.L342
.L340:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	-8(%rbp), %rcx
	leaq	392(%rcx), %rdi
	movq	%rdx, %rcx
	movl	$33137, %edx
	movq	%rax, %rsi
	call	apr_stat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L342
	cmpl	$70008, -28(%rbp)
	je	.L342
	movq	-8(%rbp), %rax
	movl	$0, 408(%rax)
.L342:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L343
	movq	-64(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L343
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	nop
	jmp	.L345
.L343:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 352(%rax)
	jmp	.L345
.L339:
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 352(%rax)
.L345:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_recursion_limit_exceeded
	testl	%eax, %eax
	je	.L346
	movq	-8(%rbp), %rax
	movl	$500, 112(%rax)
	movq	-8(%rbp), %rax
	jmp	.L337
.L346:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L347
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movl	%edx, 112(%rax)
.L347:
	movq	-8(%rbp), %rax
.L337:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ap_sub_req_lookup_file, .-ap_sub_req_lookup_file
	.globl	ap_run_sub_req
	.type	ap_run_sub_req, @function
ap_run_sub_req:
.LFB44:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$-1, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L349
	movq	-24(%rbp), %rax
	movl	408(%rax), %eax
	testl	%eax, %eax
	jne	.L350
.L349:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_run_quick_handler
	movl	%eax, -4(%rbp)
.L350:
	cmpl	$0, -4(%rbp)
	je	.L351
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_invoke_handler
	movl	%eax, -4(%rbp)
	cmpl	$-2, -4(%rbp)
	jne	.L351
	movl	$0, -4(%rbp)
.L351:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_sub_req_protocol
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ap_run_sub_req, .-ap_run_sub_req
	.globl	ap_destroy_sub_req
	.type	ap_destroy_sub_req, @function
ap_destroy_sub_req:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	ap_destroy_sub_req, .-ap_destroy_sub_req
	.globl	ap_update_mtime
	.type	ap_update_mtime, @function
ap_update_mtime:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	-16(%rbp), %rax
	jge	.L354
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 176(%rax)
.L354:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ap_update_mtime, .-ap_update_mtime
	.globl	ap_is_initial_req
	.type	ap_is_initial_req, @function
ap_is_initial_req:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L357
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L357
	movl	$1, %eax
	jmp	.L358
.L357:
	movl	$0, %eax
.L358:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ap_is_initial_req, .-ap_is_initial_req
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

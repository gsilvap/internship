	.file	"scoreboard.c"
	.globl	ap_scoreboard_image
	.bss
	.align 8
	.type	ap_scoreboard_image, @object
	.size	ap_scoreboard_image, 8
ap_scoreboard_image:
	.zero	8
	.globl	ap_scoreboard_fname
	.align 8
	.type	ap_scoreboard_fname, @object
	.size	ap_scoreboard_fname, 8
ap_scoreboard_fname:
	.zero	8
	.globl	ap_extended_status
	.align 4
	.type	ap_extended_status, @object
	.size	ap_extended_status, 4
ap_extended_status:
	.zero	4
	.globl	ap_mod_status_reqtail
	.align 4
	.type	ap_mod_status_reqtail, @object
	.size	ap_mod_status_reqtail, 4
ap_mod_status_reqtail:
	.zero	4
	.local	ap_scoreboard_shm
	.comm	ap_scoreboard_shm,8,8
	.local	_hooks
	.comm	_hooks,8,8
	.section	.rodata
.LC0:
	.string	"pre_mpm"
	.text
	.globl	ap_hook_pre_mpm
	.type	ap_hook_pre_mpm, @function
ap_hook_pre_mpm:
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
	.size	ap_hook_pre_mpm, .-ap_hook_pre_mpm
	.globl	ap_hook_get_pre_mpm
	.type	ap_hook_get_pre_mpm, @function
ap_hook_get_pre_mpm:
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
	.size	ap_hook_get_pre_mpm, .-ap_hook_get_pre_mpm
	.globl	ap_run_pre_mpm
	.type	ap_run_pre_mpm, @function
ap_run_pre_mpm:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
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
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, %esi
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
	.size	ap_run_pre_mpm, .-ap_run_pre_mpm
	.local	proxy_lb_workers
	.comm	proxy_lb_workers,8,8
	.local	server_limit
	.comm	server_limit,4,4
	.local	thread_limit
	.comm	thread_limit,4,4
	.local	lb_limit
	.comm	lb_limit,4,4
	.local	scoreboard_size
	.comm	scoreboard_size,8,8
	.type	ap_cleanup_shared_mem, @function
ap_cleanup_shared_mem:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	%rax, %rdi
	call	free
	movq	$0, ap_scoreboard_image(%rip)
	movq	ap_scoreboard_shm(%rip), %rax
	movq	%rax, %rdi
	call	apr_shm_destroy
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_cleanup_shared_mem, .-ap_cleanup_shared_mem
	.section	.rodata
.LC1:
	.string	"ap_proxy_lb_workers"
	.text
	.globl	ap_calc_scoreboard_size
	.type	ap_calc_scoreboard_size, @function
ap_calc_scoreboard_size:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$thread_limit, %esi
	movl	$5, %edi
	call	ap_mpm_query
	movl	$server_limit, %esi
	movl	$4, %edi
	call	ap_mpm_query
	movq	proxy_lb_workers(%rip), %rax
	testq	%rax, %rax
	jne	.L15
	movl	$.LC1, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, proxy_lb_workers(%rip)
.L15:
	movq	proxy_lb_workers(%rip), %rax
	testq	%rax, %rax
	je	.L16
	movq	proxy_lb_workers(%rip), %rax
	call	*%rax
	movl	%eax, lb_limit(%rip)
	jmp	.L17
.L16:
	movl	$0, lb_limit(%rip)
.L17:
	movq	$32, scoreboard_size(%rip)
	movl	server_limit(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	scoreboard_size(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, scoreboard_size(%rip)
	movl	server_limit(%rip), %eax
	movslq	%eax, %rdx
	movl	thread_limit(%rip), %eax
	cltq
	imulq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	scoreboard_size(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, scoreboard_size(%rip)
	movl	lb_limit(%rip), %eax
	testl	%eax, %eax
	je	.L18
	movl	lb_limit(%rip), %eax
	cltq
	salq	$10, %rax
	movq	%rax, %rdx
	movq	scoreboard_size(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, scoreboard_size(%rip)
.L18:
	movq	scoreboard_size(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_calc_scoreboard_size, .-ap_calc_scoreboard_size
	.section	.rodata
.LC2:
	.string	"scoreboard.c"
	.align 8
.LC3:
	.string	"more_storage == (char*)shared_score + scoreboard_size"
	.text
	.globl	ap_init_scoreboard
	.type	ap_init_scoreboard, @function
ap_init_scoreboard:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	call	ap_calc_scoreboard_size
	movl	server_limit(%rip), %eax
	cltq
	addq	$4, %rax
	salq	$3, %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	calloc
	movq	%rax, ap_scoreboard_image(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	addq	$32, -8(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	server_limit(%rip), %eax
	cltq
	salq	$4, %rax
	addq	%rax, -8(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	ap_scoreboard_image(%rip), %rdx
	addq	$32, %rdx
	movq	%rdx, 16(%rax)
	movl	$0, -12(%rbp)
	jmp	.L21
.L22:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movl	thread_limit(%rip), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	addq	%rax, -8(%rbp)
	addl	$1, -12(%rbp)
.L21:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L22
	movl	lb_limit(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movq	ap_scoreboard_image(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	lb_limit(%rip), %eax
	cltq
	salq	$10, %rax
	addq	%rax, -8(%rbp)
.L23:
	movq	scoreboard_size(%rip), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-8(%rbp), %rax
	je	.L24
	movl	$137, %edx
	movl	$.LC2, %esi
	movl	$.LC3, %edi
	call	ap_log_assert
.L24:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	server_limit(%rip), %edx
	movl	%edx, (%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	thread_limit(%rip), %edx
	movl	%edx, 4(%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	lb_limit(%rip), %edx
	movl	%edx, 24(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_init_scoreboard, .-ap_init_scoreboard
	.section	.rodata
	.align 8
.LC4:
	.string	"unable to create or access scoreboard \"%s\" (name-based shared memory failure)"
	.text
	.type	create_namebased_scoreboard, @function
create_namebased_scoreboard:
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
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_shm_remove
	movq	scoreboard_size(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movl	$ap_scoreboard_shm, %edi
	call	apr_shm_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L26
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	-32(%rbp)
	movl	$.LC4, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$159, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	-4(%rbp), %eax
	jmp	.L27
.L26:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	create_namebased_scoreboard, .-create_namebased_scoreboard
	.section	.rodata
	.align 8
.LC5:
	.string	"Fatal error: unable to create global pool for use with by the scoreboard"
	.align 8
.LC6:
	.string	"Fatal error: Invalid Scoreboard path %s"
	.align 8
.LC7:
	.string	"Unable to create or access scoreboard (anonymous shared memory failure)"
.LC8:
	.string	"logs/apache_runtime_status"
	.text
	.type	open_scoreboard, @function
open_scoreboard:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -8(%rbp)
	leaq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L29
	movl	-12(%rbp), %eax
	movl	$.LC5, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$184, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	-12(%rbp), %eax
	jmp	.L35
.L29:
	movq	ap_scoreboard_fname(%rip), %rax
	testq	%rax, %rax
	je	.L31
	movq	ap_scoreboard_fname(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L32
	movq	ap_scoreboard_fname(%rip), %rax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC6, %r9d
	movl	$0, %r8d
	movl	$20024, %ecx
	movl	$2, %edx
	movl	$195, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$20024, %eax
	jmp	.L35
.L32:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_namebased_scoreboard
	jmp	.L35
.L31:
	movq	-24(%rbp), %rdx
	movq	scoreboard_size(%rip), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$ap_scoreboard_shm, %edi
	call	apr_shm_create
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L33
	cmpl	$70023, -12(%rbp)
	je	.L33
	movl	-12(%rbp), %eax
	movl	$.LC7, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$206, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	-12(%rbp), %eax
	jmp	.L35
.L33:
	cmpl	$70023, -12(%rbp)
	jne	.L34
	movq	$.LC8, ap_scoreboard_fname(%rip)
	movq	ap_scoreboard_fname(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	create_namebased_scoreboard
	jmp	.L35
.L34:
	movl	$0, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	open_scoreboard, .-open_scoreboard
	.section	.rodata
	.align 8
.LC9:
	.string	"Fatal error: shared scoreboard too small for child!"
	.text
	.globl	ap_reopen_scoreboard
	.type	ap_reopen_scoreboard, @function
ap_reopen_scoreboard:
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
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L37
	movl	$0, %eax
	jmp	.L38
.L37:
	movq	ap_scoreboard_shm(%rip), %rax
	movq	%rax, %rdi
	call	apr_shm_size_get
	movq	%rax, %rdx
	movq	scoreboard_size(%rip), %rax
	cmpq	%rax, %rdx
	jnb	.L39
	movl	$.LC9, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	$234, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	ap_scoreboard_shm(%rip), %rax
	movq	%rax, %rdi
	call	apr_shm_detach
	movq	$0, ap_scoreboard_shm(%rip)
	movl	$22, %eax
	jmp	.L38
.L39:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movq	ap_scoreboard_shm(%rip), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
.L40:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_reopen_scoreboard, .-ap_reopen_scoreboard
	.globl	ap_cleanup_scoreboard
	.type	ap_cleanup_scoreboard, @function
ap_cleanup_scoreboard:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	testq	%rax, %rax
	jne	.L42
	movl	$0, %eax
	jmp	.L43
.L42:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L44
	movl	$0, %edi
	call	ap_cleanup_shared_mem
	jmp	.L45
.L44:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	ap_scoreboard_image(%rip), %rax
	movq	%rax, %rdi
	call	free
	movq	$0, ap_scoreboard_image(%rip)
.L45:
	movl	$0, %eax
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_cleanup_scoreboard, .-ap_cleanup_scoreboard
	.section	.rodata
	.align 8
.LC10:
	.string	"(%d)%s: cannot allocate scoreboard"
	.text
	.globl	ap_create_scoreboard
	.type	ap_create_scoreboard, @function
ap_create_scoreboard:
.LFB12:
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
	movl	%esi, -60(%rbp)
	movl	$0, -24(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	testq	%rax, %rax
	je	.L47
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rbx
	call	apr_time_now
	movq	%rax, 16(%rbx)
	movl	server_limit(%rip), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movl	$0, -20(%rbp)
	jmp	.L48
.L49:
	movl	thread_limit(%rip), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdx
	salq	$5, %rdx
	addq	%rax, %rdx
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	addl	$1, -20(%rbp)
.L48:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L49
	movl	lb_limit(%rip), %eax
	testl	%eax, %eax
	je	.L50
	movl	lb_limit(%rip), %eax
	cltq
	salq	$10, %rax
	movq	%rax, %rdx
	movq	ap_scoreboard_image(%rip), %rax
	movq	24(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
.L50:
	movl	$0, %eax
	jmp	.L51
.L47:
	call	ap_calc_scoreboard_size
	cmpl	$2, -60(%rbp)
	jne	.L52
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	open_scoreboard
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.L53
	movq	ap_scoreboard_shm(%rip), %rax
	movq	%rax, %rdi
	call	apr_shm_baseaddr_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L54
.L53:
	movl	$500, %eax
	jmp	.L51
.L54:
	movq	scoreboard_size(%rip), %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_init_scoreboard
	jmp	.L55
.L52:
	movq	scoreboard_size(%rip), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	calloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L56
	call	__errno_location
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror
	movq	%rax, %rbx
	call	__errno_location
	movl	(%rax), %eax
	pushq	%rbx
	pushq	%rax
	movl	$.LC10, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movl	$309, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L51
.L56:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_init_scoreboard
.L55:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rbx
	call	apr_time_now
	movq	%rax, 16(%rbx)
	movq	-56(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$ap_cleanup_scoreboard, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movl	$0, %eax
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_create_scoreboard, .-ap_create_scoreboard
	.globl	ap_exists_scoreboard_image
	.type	ap_exists_scoreboard_image, @function
ap_exists_scoreboard_image:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ap_scoreboard_image(%rip), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_exists_scoreboard_image, .-ap_exists_scoreboard_image
	.globl	ap_increment_counts
	.type	ap_increment_counts, @function
ap_increment_counts:
.LFB14:
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
	jne	.L60
	jmp	.L59
.L60:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$96, %rax
	movq	%rax, %rdi
	call	times
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movzwl	72(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_increment_counts, .-ap_increment_counts
	.globl	find_child_by_pid
	.type	find_child_by_pid, @function
find_child_by_pid:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$12, %edi
	call	ap_mpm_query
	movl	$0, -4(%rbp)
	jmp	.L63
.L66:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L64
	movl	-4(%rbp), %eax
	jmp	.L67
.L64:
	addl	$1, -4(%rbp)
.L63:
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L66
	movl	$-1, %eax
.L67:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	find_child_by_pid, .-find_child_by_pid
	.globl	ap_create_sb_handle
	.type	ap_create_sb_handle, @function
ap_create_sb_handle:
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 4(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_create_sb_handle, .-ap_create_sb_handle
	.section	.rodata
.LC11:
	.string	"NULL"
.LC12:
	.string	" "
	.text
	.type	copy_request, @function
copy_request:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	jne	.L70
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_cpystrn
	jmp	.L69
.L70:
	movq	-56(%rbp), %rax
	movq	536(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L73
.L72:
	movq	-56(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L74
	movl	$.LC12, %r12d
	jmp	.L75
.L74:
	movl	$0, %r12d
.L75:
	movq	-56(%rbp), %rax
	leaq	512(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_unparse
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	120(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	pushq	$0
	movq	%rbx, %r9
	movq	%r12, %r8
	movq	%rdx, %rcx
	movl	$.LC12, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
.L73:
	movl	ap_mod_status_reqtail(%rip), %eax
	testl	%eax, %eax
	jne	.L76
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	jmp	.L69
.L76:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L77
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	jmp	.L69
.L77:
	movq	-32(%rbp), %rax
	subq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
.L69:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	copy_request, .-copy_request
	.globl	ap_update_child_status_from_indexes
	.type	ap_update_child_status_from_indexes, @function
ap_update_child_status_from_indexes:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	cmpl	$0, -36(%rbp)
	jns	.L79
	movl	$-1, %eax
	jmp	.L80
.L79:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-40(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 24(%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	cmpl	$2, -44(%rbp)
	jne	.L81
	cmpl	$1, -12(%rbp)
	jne	.L81
	movl	thread_limit(%rip), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movl	ap_my_generation(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 4(%rax)
.L81:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L82
	call	apr_time_now
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	cmpl	$2, -44(%rbp)
	je	.L83
	cmpl	$0, -44(%rbp)
	jne	.L84
.L83:
	cmpl	$0, -44(%rbp)
	jne	.L85
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
.L85:
	movq	-8(%rbp), %rax
	movw	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.L84:
	cmpq	$0, -56(%rbp)
	je	.L82
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	608(%rax), %rsi
	movq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ap_get_remote_host
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	addq	$136, %rax
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_cpystrn
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$64, %esi
	movq	%rcx, %rdi
	call	copy_request
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	232(%rdx), %rcx
	movl	$32, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	apr_cpystrn
.L82:
	movl	-12(%rbp), %eax
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_update_child_status_from_indexes, .-ap_update_child_status_from_indexes
	.globl	ap_update_child_status
	.type	ap_update_child_status, @function
ap_update_child_status:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L87
	movl	$-1, %eax
	jmp	.L88
.L87:
	movq	-8(%rbp), %rax
	movl	4(%rax), %esi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %edx
	movl	%eax, %edi
	call	ap_update_child_status_from_indexes
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_update_child_status, .-ap_update_child_status
	.globl	ap_time_process_request
	.type	ap_time_process_request, @function
ap_time_process_request:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L90
	jmp	.L89
.L90:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L92
	jmp	.L89
.L92:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	cmpl	$1, -28(%rbp)
	jne	.L93
	call	apr_time_now
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	jmp	.L89
.L93:
	cmpl	$2, -28(%rbp)
	jne	.L89
	call	apr_time_now
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_time_process_request, .-ap_time_process_request
	.globl	ap_get_scoreboard_worker
	.type	ap_get_scoreboard_worker, @function
ap_get_scoreboard_worker:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L95
	movl	server_limit(%rip), %eax
	cmpl	-4(%rbp), %eax
	jl	.L95
	cmpl	$0, -8(%rbp)
	js	.L95
	movl	thread_limit(%rip), %eax
	cmpl	-8(%rbp), %eax
	jge	.L96
.L95:
	movl	$0, %eax
	jmp	.L97
.L96:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
.L97:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_get_scoreboard_worker, .-ap_get_scoreboard_worker
	.globl	ap_get_scoreboard_process
	.type	ap_get_scoreboard_process, @function
ap_get_scoreboard_process:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L99
	movl	server_limit(%rip), %eax
	cmpl	-4(%rbp), %eax
	jge	.L100
.L99:
	movl	$0, %eax
	jmp	.L101
.L100:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
.L101:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_get_scoreboard_process, .-ap_get_scoreboard_process
	.globl	ap_get_scoreboard_global
	.type	ap_get_scoreboard_global, @function
ap_get_scoreboard_global:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_get_scoreboard_global, .-ap_get_scoreboard_global
	.globl	ap_get_scoreboard_lb
	.type	ap_get_scoreboard_lb, @function
ap_get_scoreboard_lb:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L105
	movl	lb_limit(%rip), %eax
	cmpl	-4(%rbp), %eax
	jge	.L106
.L105:
	movl	$0, %eax
	jmp	.L107
.L106:
	movq	ap_scoreboard_image(%rip), %rax
	movq	24(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$10, %rdx
	addq	%rdx, %rax
.L107:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_get_scoreboard_lb, .-ap_get_scoreboard_lb
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

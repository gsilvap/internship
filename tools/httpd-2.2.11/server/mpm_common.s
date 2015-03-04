	.file	"mpm_common.c"
	.local	_hooks
	.comm	_hooks,8,8
	.section	.rodata
.LC0:
	.string	"monitor"
	.text
	.globl	ap_hook_monitor
	.type	ap_hook_monitor, @function
ap_hook_monitor:
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
	.size	ap_hook_monitor, .-ap_hook_monitor
	.globl	ap_hook_get_monitor
	.type	ap_hook_get_monitor, @function
ap_hook_get_monitor:
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
	.size	ap_hook_get_monitor, .-ap_hook_get_monitor
	.globl	ap_run_monitor
	.type	ap_run_monitor, @function
ap_run_monitor:
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
	.size	ap_run_monitor, .-ap_run_monitor
	.local	extras
	.comm	extras,8,8
	.globl	ap_register_extra_mpm_process
	.type	ap_register_extra_mpm_process, @function
ap_register_extra_mpm_process:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	extras(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, extras(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_register_extra_mpm_process, .-ap_register_extra_mpm_process
	.globl	ap_unregister_extra_mpm_process
	.type	ap_unregister_extra_mpm_process, @function
ap_unregister_extra_mpm_process:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	extras(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L14
.L16:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L14:
	cmpq	$0, -8(%rbp)
	je	.L15
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	.L16
.L15:
	cmpq	$0, -8(%rbp)
	je	.L17
	cmpq	$0, -16(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, extras(%rip)
.L19:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$1, %eax
	jmp	.L20
.L17:
	movl	$0, %eax
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_unregister_extra_mpm_process, .-ap_unregister_extra_mpm_process
	.section	.rodata
	.align 8
.LC1:
	.string	"child process %d still did not exit, sending a SIGTERM"
.LC2:
	.string	"mpm_common.c"
	.align 8
.LC3:
	.string	"child process %d still did not exit, sending a SIGKILL"
	.align 8
.LC4:
	.string	"could not make child process %d exit, attempting to continue anyway"
	.text
	.type	reclaim_one_pid, @function
reclaim_one_pid:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jg	.L22
	movl	$1, %eax
	jmp	.L30
.L22:
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_proc_wait
	movl	%eax, -4(%rbp)
	cmpl	$70006, -4(%rbp)
	je	.L24
	movl	$1, %eax
	jmp	.L30
.L24:
	movl	-56(%rbp), %eax
	cmpl	$1, %eax
	je	.L26
	cmpl	$1, %eax
	jb	.L31
	cmpl	$2, %eax
	je	.L28
	cmpl	$3, %eax
	je	.L29
	jmp	.L25
.L26:
	movq	ap_server_conf(%rip), %rdx
	subq	$8, %rsp
	movl	-52(%rbp), %eax
	pushq	%rax
	movl	$.LC1, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$146, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	-52(%rbp), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	kill
	jmp	.L25
.L28:
	movq	ap_server_conf(%rip), %rdx
	subq	$8, %rsp
	movl	-52(%rbp), %eax
	pushq	%rax
	movl	$.LC3, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$156, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	-52(%rbp), %eax
	movl	$9, %esi
	movl	%eax, %edi
	call	kill
	jmp	.L25
.L29:
	movq	ap_server_conf(%rip), %rdx
	subq	$8, %rsp
	movl	-52(%rbp), %eax
	pushq	%rax
	movl	$.LC4, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$181, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L25
.L31:
	nop
.L25:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	reclaim_one_pid, .-reclaim_one_pid
	.globl	ap_reclaim_child_processes
	.type	ap_reclaim_child_processes, @function
ap_reclaim_child_processes:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movl	%edi, -196(%rbp)
	movq	$16384, -24(%rbp)
	call	apr_time_now
	movq	%rax, -64(%rbp)
	movl	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movl	$1, -176(%rbp)
	movq	$3000000, -168(%rbp)
	movl	$1, -160(%rbp)
	movq	$5000000, -152(%rbp)
	movl	$1, -144(%rbp)
	movq	$7000000, -136(%rbp)
	movl	$2, -128(%rbp)
	movq	$9000000, -120(%rbp)
	movl	$3, -112(%rbp)
	movq	$10000000, -104(%rbp)
	movl	$1, -52(%rbp)
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	ap_mpm_query
.L45:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_sleep
	salq	$2, -24(%rbp)
	cmpq	$1000000, -24(%rbp)
	jle	.L33
	movq	$1000000, -24(%rbp)
.L33:
	movl	-52(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$176, %rax
	movq	8(%rax), %rbx
	call	apr_time_now
	subq	-64(%rbp), %rax
	cmpq	%rax, %rbx
	jg	.L34
	movl	-52(%rbp), %eax
	movl	%eax, -48(%rbp)
	addl	$1, -52(%rbp)
	jmp	.L35
.L34:
	movl	$0, -48(%rbp)
.L35:
	movl	$0, -44(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L36
.L40:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L37
	jmp	.L38
.L37:
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rax
	subq	$176, %rax
	movl	(%rax), %edx
	movl	-68(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	reclaim_one_pid
	testl	%eax, %eax
	je	.L39
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	jmp	.L38
.L39:
	addl	$1, -44(%rbp)
.L38:
	addl	$1, -28(%rbp)
.L36:
	movl	-84(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L40
	movq	extras(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	.L41
.L43:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rbp), %rbx
	addq	%rbx, %rax
	subq	$176, %rax
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	reclaim_one_pid
	testl	%eax, %eax
	jne	.L42
	addl	$1, -44(%rbp)
.L42:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.L41:
	cmpq	$0, -40(%rbp)
	jne	.L43
	movl	$2, %edi
	call	apr_proc_other_child_refresh_all
	cmpl	$0, -44(%rbp)
	jle	.L32
	movl	-48(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	-16(%rbp), %rsi
	addq	%rsi, %rax
	subq	$176, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L45
.L32:
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_reclaim_child_processes, .-ap_reclaim_child_processes
	.globl	ap_relieve_child_processes
	.type	ap_relieve_child_processes, @function
ap_relieve_child_processes:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	ap_mpm_query
	movl	$0, -4(%rbp)
	jmp	.L47
.L50:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L48
	jmp	.L49
.L48:
	movl	-20(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	reclaim_one_pid
	testl	%eax, %eax
	je	.L49
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
.L49:
	addl	$1, -4(%rbp)
.L47:
	movl	-36(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L50
	movq	extras(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L51
.L52:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	reclaim_one_pid
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
.L51:
	cmpq	$0, -16(%rbp)
	jne	.L52
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_relieve_child_processes, .-ap_relieve_child_processes
	.section	.rodata
	.align 8
.LC5:
	.string	"refusing to send signal %d to pid %ld outside process group"
	.text
	.globl	ap_mpm_safe_kill
	.type	ap_mpm_safe_kill, @function
ap_mpm_safe_kill:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jg	.L54
	movl	$22, %eax
	jmp	.L55
.L54:
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	getpgid
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L56
	call	__errno_location
	movl	(%rax), %eax
	jmp	.L55
.L56:
	call	getpgrp
	cmpl	-4(%rbp), %eax
	je	.L57
	movl	-20(%rbp), %eax
	cltq
	movq	ap_server_conf(%rip), %rdx
	pushq	%rax
	movl	-24(%rbp), %eax
	pushq	%rax
	movl	$.LC5, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$364, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$22, %eax
	jmp	.L55
.L57:
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	kill
	testl	%eax, %eax
	je	.L58
	call	__errno_location
	movl	(%rax), %eax
	jmp	.L60
.L58:
	movl	$0, %eax
.L60:
	nop
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_mpm_safe_kill, .-ap_mpm_safe_kill
	.local	wait_or_timeout_counter
	.comm	wait_or_timeout_counter,4,4
	.globl	ap_wait_or_timeout
	.type	ap_wait_or_timeout, @function
ap_wait_or_timeout:
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
	movq	%rcx, -48(%rbp)
	movl	wait_or_timeout_counter(%rip), %eax
	addl	$1, %eax
	movl	%eax, wait_or_timeout_counter(%rip)
	movl	wait_or_timeout_counter(%rip), %eax
	cmpl	$10, %eax
	jne	.L62
	movl	$0, wait_or_timeout_counter(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_monitor
.L62:
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movl	$1, %ecx
	movq	%rax, %rdi
	call	apr_proc_wait_all_procs
	movl	%eax, -4(%rbp)
	cmpl	$4, -4(%rbp)
	jne	.L63
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	jmp	.L61
.L63:
	cmpl	$70005, -4(%rbp)
	jne	.L65
	jmp	.L61
.L65:
	movl	$1000000, %edi
	call	apr_sleep
	movq	-40(%rbp), %rax
	movl	$-1, (%rax)
	nop
.L61:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_wait_or_timeout, .-ap_wait_or_timeout
	.section	.rodata
	.align 8
.LC6:
	.string	"Child %d returned a Fatal error... Apache is exiting!"
	.align 8
.LC7:
	.string	"child pid %ld exit signal %s (%d), possible coredump in %s"
	.align 8
.LC8:
	.string	"child pid %ld exit signal %s (%d)"
	.text
	.globl	ap_process_child_status
	.type	ap_process_child_status, @function
ap_process_child_status:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	apr_signal_description_get
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L67
	cmpl	$7, -32(%rbp)
	jne	.L68
	movl	-32(%rbp), %eax
	jmp	.L69
.L68:
	cmpl	$15, -32(%rbp)
	jne	.L70
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movq	ap_server_conf(%rip), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC6, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	$436, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$15, %eax
	jmp	.L69
.L70:
	movl	$0, %eax
	jmp	.L69
.L67:
	movl	-28(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L71
	movl	-4(%rbp), %eax
	cmpl	$10, %eax
	jg	.L73
	cmpl	$9, %eax
	jge	.L76
	cmpl	$1, %eax
	je	.L76
	jmp	.L72
.L73:
	cmpl	$15, %eax
	je	.L76
.L72:
	movl	-28(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L75
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	ap_server_conf(%rip), %rcx
	pushq	$ap_coredump_dir
	movl	-4(%rbp), %edx
	pushq	%rdx
	pushq	-16(%rbp)
	pushq	%rax
	movl	$.LC7, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$457, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$32, %rsp
	jmp	.L71
.L75:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	movq	ap_server_conf(%rip), %rcx
	subq	$8, %rsp
	movl	-4(%rbp), %edx
	pushq	%rdx
	pushq	-16(%rbp)
	pushq	%rax
	movl	$.LC8, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$465, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$32, %rsp
	jmp	.L71
.L76:
	nop
.L71:
	movl	$0, %eax
.L69:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_process_child_status, .-ap_process_child_status
	.section	.rodata
	.align 8
.LC9:
	.string	"apr_socket_opt_set: (TCP_NODELAY)"
	.text
	.globl	ap_sock_disable_nagle
	.type	ap_sock_disable_nagle, @function
ap_sock_disable_nagle:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$512, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L77
	movq	ap_server_conf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC9, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$491, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L77:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_sock_disable_nagle, .-ap_sock_disable_nagle
	.section	.rodata
.LC10:
	.string	"%s: bad user name %s"
	.text
	.globl	ap_uname2id
	.type	ap_uname2id, @function
ap_uname2id:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L80
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L81
.L80:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getpwnam
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L82
	movq	ap_server_argv0(%rip), %rax
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC10, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$506, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$1, %edi
	call	exit
.L82:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_uname2id, .-ap_uname2id
	.section	.rodata
.LC11:
	.string	"%s: bad group name %s"
	.text
	.globl	ap_gname2id
	.type	ap_gname2id, @function
ap_gname2id:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L84
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	atoi
	jmp	.L85
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	getgrnam
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L86
	movq	ap_server_argv0(%rip), %rax
	pushq	-24(%rbp)
	pushq	%rax
	movl	$.LC11, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$524, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$1, %edi
	call	exit
.L86:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_gname2id, .-ap_gname2id
	.globl	ap_mpm_pod_open
	.type	ap_mpm_pod_open, @function
ap_mpm_pod_open:
.LFB16:
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
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	call	apr_file_pipe_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L88
	movl	-4(%rbp), %eax
	jmp	.L89
.L88:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_file_pipe_timeout_set
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_inherit_unset
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_inherit_unset
	movl	$0, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_mpm_pod_open, .-ap_mpm_pod_open
	.globl	ap_mpm_pod_check
	.type	ap_mpm_pod_check, @function
ap_mpm_pod_check:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rdx
	leaq	-5(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L91
	movq	-16(%rbp), %rax
	cmpq	$1, %rax
	jne	.L91
	movl	$0, %eax
	jmp	.L94
.L91:
	cmpl	$0, -4(%rbp)
	je	.L93
	movl	-4(%rbp), %eax
	jmp	.L94
.L93:
	movl	$120001, %eax
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_mpm_pod_check, .-ap_mpm_pod_check
	.globl	ap_mpm_pod_close
	.type	ap_mpm_pod_close, @function
ap_mpm_pod_close:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L96
	movl	-4(%rbp), %eax
	jmp	.L97
.L96:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L98
	movl	-4(%rbp), %eax
	jmp	.L97
.L98:
	movl	$0, %eax
.L97:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_mpm_pod_close, .-ap_mpm_pod_close
	.section	.rodata
.LC12:
	.string	"write pipe_of_death"
	.text
	.type	pod_signal_internal, @function
pod_signal_internal:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movb	$33, -5(%rbp)
	movq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-16(%rbp), %rdx
	leaq	-5(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_write
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L100
	movq	ap_server_conf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC12, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$632, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L100:
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	pod_signal_internal, .-pod_signal_internal
	.section	.rodata
	.align 8
.LC13:
	.string	"get socket to connect to listener"
	.align 8
.LC14:
	.string	"set timeout on socket to connect to listener"
.LC15:
	.string	"connect to listener on %pI"
	.align 8
.LC16:
	.string	" (internal dummy connection)\r\n\r\n"
	.align 8
.LC17:
	.string	"OPTIONS * HTTP/1.0\r\nUser-Agent: "
	.text
	.type	dummy_connection, @function
dummy_connection:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rsi
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L103
	movl	-8(%rbp), %eax
	jmp	.L109
.L103:
	movq	-32(%rbp), %rdx
	movq	ap_listeners(%rip), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %esi
	leaq	-24(%rbp), %rax
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_socket_create
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L105
	movq	ap_server_conf(%rip), %rdx
	movl	-8(%rbp), %eax
	movl	$.LC13, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$661, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	-8(%rbp), %eax
	jmp	.L109
.L105:
	movq	-24(%rbp), %rax
	movl	$3000000, %esi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L106
	movq	ap_server_conf(%rip), %rdx
	movl	-8(%rbp), %eax
	movl	$.LC14, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$675, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	-8(%rbp), %eax
	jmp	.L109
.L106:
	movq	ap_listeners(%rip), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_connect
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.L107
	movl	$4, -4(%rbp)
	cmpl	$70007, -8(%rbp)
	jne	.L108
	movl	$7, -4(%rbp)
.L108:
	movq	ap_listeners(%rip), %rax
	movq	16(%rax), %rcx
	movq	ap_server_conf(%rip), %rsi
	subq	$8, %rsp
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	pushq	%rcx
	movl	$.LC15, %r9d
	movq	%rsi, %r8
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	$694, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L107:
	call	ap_get_server_banner
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC16, %ecx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_socket_send
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	-8(%rbp), %eax
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	dummy_connection, .-dummy_connection
	.globl	ap_mpm_pod_signal
	.type	ap_mpm_pod_signal, @function
ap_mpm_pod_signal:
.LFB21:
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
	call	pod_signal_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L111
	movl	-4(%rbp), %eax
	jmp	.L112
.L111:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dummy_connection
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_mpm_pod_signal, .-ap_mpm_pod_signal
	.globl	ap_mpm_pod_killpg
	.type	ap_mpm_pod_killpg, @function
ap_mpm_pod_killpg:
.LFB22:
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
	movl	$0, -4(%rbp)
	jmp	.L114
.L116:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	dummy_connection
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L114:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.L113
	cmpl	$0, -8(%rbp)
	je	.L116
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_mpm_pod_killpg, .-ap_mpm_pod_killpg
	.globl	ap_pid_fname
	.bss
	.align 8
	.type	ap_pid_fname, @object
	.size	ap_pid_fname, 8
ap_pid_fname:
	.zero	8
	.section	.rodata
	.align 8
.LC18:
	.string	"PidFile directive not allowed in <VirtualHost>"
	.text
	.globl	ap_mpm_set_pidfile
	.type	ap_mpm_set_pidfile, @function
ap_mpm_set_pidfile:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L118
	movq	-8(%rbp), %rax
	jmp	.L119
.L118:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	76(%rax), %eax
	testl	%eax, %eax
	je	.L120
	movl	$.LC18, %eax
	jmp	.L119
.L120:
	movq	-40(%rbp), %rax
	movq	%rax, ap_pid_fname(%rip)
	movl	$0, %eax
.L119:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_mpm_set_pidfile, .-ap_mpm_set_pidfile
	.globl	ap_mpm_set_scoreboard
	.type	ap_mpm_set_scoreboard, @function
ap_mpm_set_scoreboard:
.LFB24:
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
	je	.L122
	movq	-8(%rbp), %rax
	jmp	.L123
.L122:
	movq	-40(%rbp), %rax
	movq	%rax, ap_scoreboard_fname(%rip)
	movl	$0, %eax
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_mpm_set_scoreboard, .-ap_mpm_set_scoreboard
	.globl	ap_lock_fname
	.bss
	.align 8
	.type	ap_lock_fname, @object
	.size	ap_lock_fname, 8
ap_lock_fname:
	.zero	8
	.text
	.globl	ap_mpm_set_lockfile
	.type	ap_mpm_set_lockfile, @function
ap_mpm_set_lockfile:
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
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L125
	movq	-8(%rbp), %rax
	jmp	.L126
.L125:
	movq	-40(%rbp), %rax
	movq	%rax, ap_lock_fname(%rip)
	movl	$0, %eax
.L126:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_mpm_set_lockfile, .-ap_mpm_set_lockfile
	.globl	ap_max_requests_per_child
	.bss
	.align 4
	.type	ap_max_requests_per_child, @object
	.size	ap_max_requests_per_child, 4
ap_max_requests_per_child:
	.zero	4
	.text
	.globl	ap_mpm_set_max_requests
	.type	ap_mpm_set_max_requests, @function
ap_mpm_set_max_requests:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L128
	movq	-8(%rbp), %rax
	jmp	.L129
.L128:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_max_requests_per_child(%rip)
	movl	$0, %eax
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_mpm_set_max_requests, .-ap_mpm_set_max_requests
	.comm	ap_coredump_dir,8192,64
	.comm	ap_coredumpdir_configured,4,4
	.section	.rodata
	.align 8
.LC19:
	.string	"Invalid CoreDumpDirectory path "
.LC20:
	.string	" does not exist"
.LC21:
	.string	"CoreDumpDirectory "
.LC22:
	.string	" is not a directory"
	.text
	.globl	ap_mpm_set_coredumpdir
	.type	ap_mpm_set_coredumpdir, @function
ap_mpm_set_coredumpdir:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-152(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L131
	movq	-8(%rbp), %rax
	jmp	.L136
.L131:
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L133
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-168(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L136
.L133:
	movq	-152(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rdx, %rcx
	movl	$32768, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L134
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC20, %ecx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L136
.L134:
	movl	-128(%rbp), %eax
	cmpl	$2, %eax
	je	.L135
	movq	-152(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC22, %ecx
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L136
.L135:
	movq	-16(%rbp), %rax
	movl	$8192, %edx
	movq	%rax, %rsi
	movl	$ap_coredump_dir, %edi
	call	apr_cpystrn
	movl	$1, ap_coredumpdir_configured(%rip)
	movl	$0, %eax
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_mpm_set_coredumpdir, .-ap_mpm_set_coredumpdir
	.globl	ap_graceful_shutdown_timeout
	.bss
	.align 4
	.type	ap_graceful_shutdown_timeout, @object
	.size	ap_graceful_shutdown_timeout, 4
ap_graceful_shutdown_timeout:
	.zero	4
	.text
	.globl	ap_mpm_set_graceful_shutdown
	.type	ap_mpm_set_graceful_shutdown, @function
ap_mpm_set_graceful_shutdown:
.LFB28:
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
	je	.L138
	movq	-8(%rbp), %rax
	jmp	.L139
.L138:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_graceful_shutdown_timeout(%rip)
	movl	$0, %eax
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_mpm_set_graceful_shutdown, .-ap_mpm_set_graceful_shutdown
	.globl	ap_accept_lock_mech
	.data
	.align 4
	.type	ap_accept_lock_mech, @object
	.size	ap_accept_lock_mech, 4
ap_accept_lock_mech:
	.long	5
	.globl	ap_valid_accept_mutex_string
	.section	.rodata
	.align 64
	.type	ap_valid_accept_mutex_string, @object
	.size	ap_valid_accept_mutex_string, 103
ap_valid_accept_mutex_string:
	.string	"Valid accept mutexes for this platform and MPM are: default, flock, fcntl, sysvsem, posixsem, pthread."
.LC23:
	.string	"default"
.LC24:
	.string	"flock"
.LC25:
	.string	"fcntl"
.LC26:
	.string	"sysvsem"
.LC27:
	.string	"posixsem"
.LC28:
	.string	"pthread"
	.align 8
.LC29:
	.string	" is an invalid mutex mechanism; "
	.text
	.globl	ap_mpm_set_accept_lock_mech
	.type	ap_mpm_set_accept_lock_mech, @function
ap_mpm_set_accept_lock_mech:
.LFB29:
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
	je	.L141
	movq	-8(%rbp), %rax
	jmp	.L142
.L141:
	movq	-40(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L143
	movl	$5, ap_accept_lock_mech(%rip)
	jmp	.L144
.L143:
	movq	-40(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L145
	movl	$1, ap_accept_lock_mech(%rip)
	jmp	.L144
.L145:
	movq	-40(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L146
	movl	$0, ap_accept_lock_mech(%rip)
	jmp	.L144
.L146:
	movq	-40(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L147
	movl	$2, ap_accept_lock_mech(%rip)
	jmp	.L144
.L147:
	movq	-40(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L148
	movl	$4, ap_accept_lock_mech(%rip)
	jmp	.L144
.L148:
	movq	-40(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L149
	movl	$3, ap_accept_lock_mech(%rip)
	jmp	.L144
.L149:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	$0, %r8d
	movl	$ap_valid_accept_mutex_string, %ecx
	movl	$.LC29, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L142
.L144:
	movl	$0, %eax
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	ap_mpm_set_accept_lock_mech, .-ap_mpm_set_accept_lock_mech
	.local	dash_k_arg
	.comm	dash_k_arg,8,8
	.section	.rodata
.LC30:
	.string	"sending signal to server"
	.text
	.type	send_signal, @function
send_signal:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	kill
	testl	%eax, %eax
	jns	.L151
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC30, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$32, %edx
	movl	$956, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, %eax
	jmp	.L152
.L151:
	movl	$0, %eax
.L152:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	send_signal, .-send_signal
	.section	.rodata
.LC31:
	.string	"Error retrieving pid file %s"
	.align 8
.LC32:
	.string	"Remove it before continuing if it is corrupted."
	.align 8
.LC33:
	.string	"httpd (no pid file) not running"
	.align 8
.LC34:
	.string	"httpd (pid %d) already running"
.LC35:
	.string	"httpd (pid %d?) not running"
.LC36:
	.string	"start"
.LC37:
	.string	"stop"
.LC38:
	.string	"restart"
	.align 8
.LC39:
	.string	"httpd not running, trying to start"
.LC40:
	.string	"graceful"
.LC41:
	.string	"graceful-stop"
	.text
	.globl	ap_signal_server
	.type	ap_signal_server, @function
ap_signal_server:
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
	movl	$0, -4(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	ap_pid_fname(%rip), %rcx
	leaq	-28(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_read_pid
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L154
	cmpl	$2, -24(%rbp)
	je	.L155
	movq	ap_pid_fname(%rip), %rdx
	subq	$8, %rsp
	movl	-24(%rbp), %eax
	pushq	%rdx
	movl	$.LC31, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$32, %edx
	movl	$976, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$.LC32, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$978, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movl	$1, %eax
	jmp	.L170
.L155:
	movq	$.LC33, -16(%rbp)
	jmp	.L157
.L154:
	movl	$1, -20(%rbp)
	movl	-28(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	kill
	testl	%eax, %eax
	jne	.L158
	movl	$1, -4(%rbp)
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -16(%rbp)
	jmp	.L157
.L158:
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -16(%rbp)
.L157:
	movq	dash_k_arg(%rip), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L159
	cmpl	$0, -4(%rbp)
	je	.L159
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$1, %eax
	jmp	.L170
.L159:
	movq	dash_k_arg(%rip), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L160
	cmpl	$0, -4(%rbp)
	jne	.L161
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	jmp	.L162
.L161:
	movl	-28(%rbp), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	send_signal
.L162:
	movl	$1, %eax
	jmp	.L170
.L160:
	movq	dash_k_arg(%rip), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L163
	cmpl	$0, -4(%rbp)
	jne	.L164
	movl	$.LC39, %edi
	call	puts
	jmp	.L163
.L164:
	movl	-28(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	send_signal
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L170
.L163:
	movq	dash_k_arg(%rip), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L165
	cmpl	$0, -4(%rbp)
	jne	.L166
	movl	$.LC39, %edi
	call	puts
	jmp	.L165
.L166:
	movl	-28(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	send_signal
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movl	$1, %eax
	jmp	.L170
.L165:
	movq	dash_k_arg(%rip), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L167
	cmpl	$0, -4(%rbp)
	jne	.L168
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	jmp	.L169
.L168:
	movl	-28(%rbp), %eax
	movl	$28, %esi
	movl	%eax, %edi
	call	send_signal
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L169:
	movl	$1, %eax
	jmp	.L170
.L167:
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ap_signal_server, .-ap_signal_server
	.section	.rodata
.LC42:
	.string	"k:C:c:D:d:E:e:f:vVlLtSMh?X"
.LC43:
	.string	"ap_signal_server"
	.text
	.globl	ap_mpm_rewrite_args
	.type	ap_mpm_rewrite_args, @function
ap_mpm_rewrite_args:
.LFB32:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -28(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-88(%rbp), %rax
	movl	16(%rax), %edx
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movb	$45, -64(%rbp)
	movb	$0, -62(%rbp)
	jmp	.L172
.L176:
	movzbl	-63(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$107, %eax
	jne	.L173
	movq	dash_k_arg(%rip), %rax
	testq	%rax, %rax
	jne	.L173
	movq	-72(%rbp), %rax
	movl	$.LC36, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L175
	movq	-72(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L175
	movq	-72(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L175
	movq	-72(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L175
	movq	-72(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L173
.L175:
	movq	-72(%rbp), %rax
	movq	%rax, dash_k_arg(%rip)
	jmp	.L172
.L173:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, (%rbx)
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	je	.L172
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rax, (%rdx)
.L172:
	movq	-48(%rbp), %rax
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	1(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC42, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.L176
	cmpl	$70012, -32(%rbp)
	je	.L177
	cmpl	$70013, -32(%rbp)
	jne	.L178
.L177:
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	subl	$1, %edx
	movl	%edx, 24(%rax)
.L178:
	jmp	.L179
.L180:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, 24(%rax)
	movslq	%edx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, (%rbx)
.L179:
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, %edx
	jl	.L180
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	dash_k_arg(%rip), %rax
	testq	%rax, %rax
	je	.L171
	movq	$ap_signal_server, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC43, %edi
	call	apr_dynamic_fn_register
.L171:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ap_mpm_rewrite_args, .-ap_mpm_rewrite_args
	.globl	ap_max_mem_free
	.bss
	.align 4
	.type	ap_max_mem_free, @object
	.size	ap_max_mem_free, 4
ap_max_mem_free:
	.zero	4
	.section	.rodata
.LC44:
	.string	"Invalid MaxMemFree value: "
	.text
	.globl	ap_mpm_set_max_mem_free
	.type	ap_mpm_set_max_mem_free, @function
ap_mpm_set_max_mem_free:
.LFB33:
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
	je	.L183
	movq	-8(%rbp), %rax
	jmp	.L184
.L183:
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtol
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	js	.L185
	call	__errno_location
	movl	(%rax), %eax
	cmpl	$34, %eax
	jne	.L186
.L185:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L184
.L186:
	movq	-16(%rbp), %rax
	sall	$10, %eax
	movl	%eax, ap_max_mem_free(%rip)
	movl	$0, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ap_mpm_set_max_mem_free, .-ap_mpm_set_max_mem_free
	.local	parent_pid
	.comm	parent_pid,4,4
	.local	my_pid
	.comm	my_pid,4,4
	.comm	pconf,8,8
	.section	.rodata
	.align 8
.LC45:
	.string	"seg fault or similar nasty error detected in the parent process"
	.text
	.type	sig_coredump, @function
sig_coredump:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	pconf(%rip), %rax
	movq	%rax, %rsi
	movl	$ap_coredump_dir, %edi
	call	apr_filepath_set
	movl	-4(%rbp), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	apr_signal
	call	getpid
	movl	%eax, %edx
	movl	parent_pid(%rip), %eax
	cmpl	%eax, %edx
	jne	.L188
	movq	ap_server_conf(%rip), %rax
	movl	$.LC45, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1225, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L188:
	call	getpid
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	%edx, %edi
	call	kill
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	sig_coredump, .-sig_coredump
	.globl	ap_fatal_signal_child_setup
	.type	ap_fatal_signal_child_setup, @function
ap_fatal_signal_child_setup:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	getpid
	movl	%eax, my_pid(%rip)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ap_fatal_signal_child_setup, .-ap_fatal_signal_child_setup
	.section	.rodata
.LC46:
	.string	"sigaction(SIGSEGV)"
.LC47:
	.string	"sigaction(SIGBUS)"
.LC48:
	.string	"sigaction(SIGABRT)"
.LC49:
	.string	"sigaction(SIGILL)"
.LC50:
	.string	"sigaction(SIGFPE)"
	.text
	.globl	ap_fatal_signal_setup
	.type	ap_fatal_signal_setup, @function
ap_fatal_signal_setup:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	sigemptyset
	movl	$-2147483648, -24(%rbp)
	movq	$sig_coredump, -160(%rbp)
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$11, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L192
	call	__errno_location
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	$.LC46, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1268, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L192:
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$7, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L193
	call	__errno_location
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	$.LC47, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1271, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L193:
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$6, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L194
	call	__errno_location
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	$.LC48, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1279, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L194:
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$4, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L195
	call	__errno_location
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	$.LC49, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1283, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L195:
	leaq	-160(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$8, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L196
	call	__errno_location
	movl	(%rax), %eax
	movq	-168(%rbp), %rdx
	movl	$.LC50, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1287, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L196:
	movq	-176(%rbp), %rax
	movq	%rax, pconf(%rip)
	call	getpid
	movl	%eax, my_pid(%rip)
	movl	my_pid(%rip), %eax
	movl	%eax, parent_pid(%rip)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	ap_fatal_signal_setup, .-ap_fatal_signal_setup
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

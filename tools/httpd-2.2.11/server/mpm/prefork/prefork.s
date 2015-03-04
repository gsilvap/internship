	.file	"prefork.c"
	.globl	ap_threads_per_child
	.bss
	.align 4
	.type	ap_threads_per_child, @object
	.size	ap_threads_per_child, 4
ap_threads_per_child:
	.zero	4
	.local	accept_mutex
	.comm	accept_mutex,8,8
	.local	ap_daemons_to_start
	.comm	ap_daemons_to_start,4,4
	.local	ap_daemons_min_free
	.comm	ap_daemons_min_free,4,4
	.local	ap_daemons_max_free
	.comm	ap_daemons_max_free,4,4
	.local	ap_daemons_limit
	.comm	ap_daemons_limit,4,4
	.data
	.align 4
	.type	server_limit, @object
	.size	server_limit, 4
server_limit:
	.long	256
	.local	first_server_limit
	.comm	first_server_limit,4,4
	.local	changed_limit_at_restart
	.comm	changed_limit_at_restart,4,4
	.local	mpm_state
	.comm	mpm_state,4,4
	.local	pod
	.comm	pod,8,8
	.globl	ap_max_daemons_limit
	.align 4
	.type	ap_max_daemons_limit, @object
	.size	ap_max_daemons_limit, 4
ap_max_daemons_limit:
	.long	-1
	.comm	ap_server_conf,8,8
	.local	one_process
	.comm	one_process,4,4
	.local	pconf
	.comm	pconf,8,8
	.local	pchild
	.comm	pchild,8,8
	.local	ap_my_pid
	.comm	ap_my_pid,4,4
	.local	parent_pid
	.comm	parent_pid,4,4
	.local	my_child_num
	.comm	my_child_num,4,4
	.globl	ap_my_generation
	.bss
	.align 4
	.type	ap_my_generation, @object
	.size	ap_my_generation, 4
ap_my_generation:
	.zero	4
	.local	die_now
	.comm	die_now,4,4
	.text
	.type	clean_child_exit, @function
clean_child_exit:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$2, mpm_state(%rip)
	movq	pchild(%rip), %rax
	testq	%rax, %rax
	je	.L2
	movq	pchild(%rip), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
.L2:
	movq	pod(%rip), %rax
	movq	%rax, %rdi
	call	ap_mpm_pod_close
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	clean_child_exit, .-clean_child_exit
	.section	.rodata
	.align 8
.LC0:
	.string	"couldn't grab the accept mutex"
.LC1:
	.string	"%s"
.LC2:
	.string	"prefork.c"
	.text
	.type	accept_mutex_on, @function
accept_mutex_on:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	accept_mutex(%rip), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_lock
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L3
	movq	$.LC0, -16(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	movl	ap_my_generation(%rip), %eax
	cmpl	%eax, %edx
	je	.L5
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	-16(%rbp)
	movl	$.LC1, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$211, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %edi
	call	clean_child_exit
.L5:
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	-16(%rbp)
	movl	$.LC1, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$215, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$15, %edi
	call	exit
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	accept_mutex_on, .-accept_mutex_on
	.section	.rodata
	.align 8
.LC3:
	.string	"couldn't release the accept mutex"
	.text
	.type	accept_mutex_off, @function
accept_mutex_off:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	accept_mutex(%rip), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_unlock
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	movq	$.LC3, -16(%rbp)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	movl	ap_my_generation(%rip), %eax
	cmpl	%eax, %edx
	je	.L8
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	-16(%rbp)
	movl	$.LC1, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$7, %edx
	movl	$229, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L6
.L8:
	subq	$8, %rsp
	movl	-4(%rbp), %eax
	pushq	-16(%rbp)
	movl	$.LC1, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$236, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$15, %edi
	call	exit
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	accept_mutex_off, .-accept_mutex_off
	.globl	ap_mpm_query
	.type	ap_mpm_query, @function
ap_mpm_query:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$13, -4(%rbp)
	ja	.L10
	movl	-4(%rbp), %eax
	movq	.L12(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L12:
	.quad	.L10
	.quad	.L11
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.quad	.L17
	.quad	.L18
	.quad	.L19
	.quad	.L20
	.quad	.L21
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.text
.L11:
	movl	ap_daemons_limit(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L13:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L25
.L14:
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	movl	$0, %eax
	jmp	.L25
.L15:
	movl	server_limit(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L16:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L25
.L17:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L25
.L18:
	movl	ap_daemons_min_free(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L19:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L25
.L20:
	movl	ap_daemons_max_free(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L21:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, %eax
	jmp	.L25
.L22:
	movl	ap_max_requests_per_child(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L23:
	movl	server_limit(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L24:
	movl	mpm_state(%rip), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, %eax
	jmp	.L25
.L10:
	movl	$70023, %eax
.L25:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_mpm_query, .-ap_mpm_query
	.type	just_die, @function
just_die:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, %edi
	call	clean_child_exit
	.cfi_endproc
.LFE6:
	.size	just_die, .-just_die
	.type	stop_listening, @function
stop_listening:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	call	ap_close_listeners
	movl	$1, die_now(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	stop_listening, .-stop_listening
	.local	shutdown_pending
	.comm	shutdown_pending,4,4
	.local	restart_pending
	.comm	restart_pending,4,4
	.local	is_graceful
	.comm	is_graceful,4,4
	.type	sig_term, @function
sig_term:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	shutdown_pending(%rip), %eax
	cmpl	$1, %eax
	jne	.L29
	jmp	.L28
.L29:
	movl	$1, shutdown_pending(%rip)
	cmpl	$28, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, is_graceful(%rip)
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	sig_term, .-sig_term
	.type	restart, @function
restart:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	restart_pending(%rip), %eax
	cmpl	$1, %eax
	jne	.L32
	jmp	.L31
.L32:
	movl	$1, restart_pending(%rip)
	cmpl	$10, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, is_graceful(%rip)
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	restart, .-restart
	.section	.rodata
.LC4:
	.string	"sigaction(SIGTERM)"
.LC5:
	.string	"sigaction(SIGWINCH)"
.LC6:
	.string	"sigaction(SIGINT)"
.LC7:
	.string	"sigaction(SIGXCPU)"
.LC8:
	.string	"sigaction(SIGXFSZ)"
.LC9:
	.string	"sigaction(SIGPIPE)"
.LC10:
	.string	"sigaction(SIGHUP)"
.LC11:
	.string	"sigaction(SIGUSR1)"
	.text
	.type	set_signals, @function
set_signals:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 3, -24
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	jne	.L35
	movq	pconf(%rip), %rdx
	movq	ap_server_conf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fatal_signal_setup
.L35:
	leaq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	sigemptyset
	movl	$0, -40(%rbp)
	movq	$sig_term, -176(%rbp)
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$15, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L36
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC4, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$386, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L36:
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$28, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L37
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC5, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$389, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L37:
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$2, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L38
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC6, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$394, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L38:
	movq	$0, -176(%rbp)
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$24, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L39
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC7, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$399, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L39:
	movq	$0, -176(%rbp)
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$25, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L40
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC8, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$404, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L40:
	movq	$1, -176(%rbp)
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$13, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L41
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC9, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$409, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L41:
	leaq	-176(%rbp), %rax
	addq	$8, %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	sigaddset
	leaq	-176(%rbp), %rax
	addq	$8, %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	sigaddset
	movq	$restart, -176(%rbp)
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L42
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC10, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$419, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L42:
	leaq	-176(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$10, %edi
	call	sigaction
	testl	%eax, %eax
	jns	.L34
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC11, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$421, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L34:
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	set_signals, .-set_signals
	.local	requests_this_child
	.comm	requests_this_child,4,4
	.local	num_listensocks
	.comm	num_listensocks,4,4
	.globl	ap_graceful_stop_signalled
	.type	ap_graceful_stop_signalled, @function
ap_graceful_stop_signalled:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_graceful_stop_signalled, .-ap_graceful_stop_signalled
	.section	.rodata
.LC12:
	.string	"transaction"
	.align 8
.LC13:
	.string	"Couldn't initialize cross-process lock in child (%s) (%d)"
.LC14:
	.string	"apr_pollset_poll: (listen)"
	.text
	.type	child_main, @function
child_main:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movl	%edi, -132(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, mpm_state(%rip)
	movl	-132(%rbp), %eax
	movl	%eax, my_child_num(%rip)
	call	getpid
	movl	%eax, ap_my_pid(%rip)
	movl	$0, requests_this_child(%rip)
	movq	ap_server_conf(%rip), %rax
	movq	%rax, %rdi
	call	ap_fatal_signal_child_setup
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_allocator_create
	movl	ap_max_mem_free(%rip), %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_allocator_max_free_set
	movq	-56(%rbp), %rdx
	movq	pconf(%rip), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$pchild, %edi
	call	apr_pool_create_ex
	movq	pchild(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_allocator_owner_set
	movq	pchild(%rip), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-48(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	pchild(%rip), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_reopen_scoreboard
	movq	pchild(%rip), %rdx
	movq	ap_lock_fname(%rip), %rax
	movq	%rax, %rsi
	movl	$accept_mutex, %edi
	call	apr_proc_mutex_child_init
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L47
	movl	ap_accept_lock_mech(%rip), %ecx
	movq	ap_lock_fname(%rip), %rdx
	movq	ap_server_conf(%rip), %rsi
	movl	-24(%rbp), %eax
	pushq	%rcx
	pushq	%rdx
	movl	$.LC13, %r9d
	movq	%rsi, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$503, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$15, %edi
	call	clean_child_exit
.L47:
	call	unixd_setup_child
	testl	%eax, %eax
	je	.L48
	movl	$15, %edi
	call	clean_child_exit
.L48:
	movq	ap_server_conf(%rip), %rdx
	movq	pchild(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_run_child_init
	movl	my_child_num(%rip), %edx
	movq	pchild(%rip), %rsi
	leaq	-72(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	ap_create_sb_handle
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	pchild(%rip), %rdx
	movl	num_listensocks(%rip), %eax
	movl	%eax, %esi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	apr_pollset_create
	movq	ap_listeners(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	num_listensocks(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.L49
.L50:
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$1, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movw	$1, -116(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	leaq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L49:
	movl	-4(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -4(%rbp)
	testl	%eax, %eax
	jne	.L50
	movl	$1, mpm_state(%rip)
	movq	pchild(%rip), %rax
	movq	%rax, %rdi
	call	apr_bucket_alloc_create
	movq	%rax, -32(%rbp)
	jmp	.L51
.L67:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movl	ap_max_requests_per_child(%rip), %eax
	testl	%eax, %eax
	jle	.L52
	movl	requests_this_child(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, requests_this_child(%rip)
	movl	ap_max_requests_per_child(%rip), %edx
	cmpl	%edx, %eax
	jl	.L52
	movl	$0, %edi
	call	clean_child_exit
.L52:
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	call	accept_mutex_on
	movl	num_listensocks(%rip), %eax
	cmpl	$1, %eax
	jne	.L53
	movq	ap_listeners(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L54
.L53:
	movq	-64(%rbp), %rax
	leaq	-96(%rbp), %rcx
	leaq	-84(%rbp), %rdx
	movq	$-1, %rsi
	movq	%rax, %rdi
	call	apr_pollset_poll
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L55
	cmpl	$4, -24(%rbp)
	jne	.L56
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	je	.L57
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	jne	.L68
.L57:
	movl	die_now(%rip), %eax
	testl	%eax, %eax
	je	.L59
	call	accept_mutex_off
	movl	$0, %edi
	call	clean_child_exit
.L59:
	jmp	.L53
.L56:
	movq	ap_server_conf(%rip), %rdx
	movl	-24(%rbp), %eax
	movl	$.LC14, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$597, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	call	accept_mutex_off
	movl	$1, %edi
	call	clean_child_exit
.L55:
	movl	-84(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L60
	movl	$0, -20(%rbp)
.L60:
	movq	-96(%rbp), %rcx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L54:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -24(%rbp)
	call	accept_mutex_off
	cmpl	$20014, -24(%rbp)
	jne	.L61
	movl	$1, %edi
	call	clean_child_exit
.L61:
	cmpl	$0, -24(%rbp)
	je	.L62
	jmp	.L51
.L62:
	movq	-72(%rbp), %rdi
	movl	my_child_num(%rip), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movq	ap_server_conf(%rip), %rsi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %r8
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_run_create_connection
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L63
	movq	-80(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_process_connection
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_lingering_close
.L63:
	movq	pod(%rip), %rax
	movq	%rax, %rdi
	call	ap_mpm_pod_check
	testl	%eax, %eax
	jne	.L64
	movl	$1, die_now(%rip)
	jmp	.L51
.L64:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	12(%rax), %edx
	movl	ap_my_generation(%rip), %eax
	cmpl	%eax, %edx
	je	.L51
	movl	$1, die_now(%rip)
.L51:
	movl	die_now(%rip), %eax
	testl	%eax, %eax
	jne	.L66
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	je	.L67
.L66:
	movl	$0, %edi
	call	clean_child_exit
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	child_main, .-child_main
	.section	.rodata
	.align 8
.LC15:
	.string	"fork: Unable to fork new process"
	.text
	.type	make_child, @function
make_child:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	ap_max_daemons_limit(%rip), %eax
	cmpl	%eax, %edx
	jle	.L70
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, ap_max_daemons_limit(%rip)
.L70:
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	je	.L71
	movl	$sig_term, %esi
	movl	$1, %edi
	call	apr_signal
	movl	$sig_term, %esi
	movl	$2, %edi
	call	apr_signal
	movl	$0, %esi
	movl	$3, %edi
	call	apr_signal
	movl	$sig_term, %esi
	movl	$15, %edi
	call	apr_signal
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	child_main
	movl	$0, %eax
	jmp	.L72
.L71:
	movl	-28(%rbp), %eax
	movl	$0, %ecx
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	ap_update_child_status_from_indexes
	call	fork
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L73
	call	__errno_location
	movl	(%rax), %eax
	movq	-24(%rbp), %rdx
	movl	$.LC15, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$706, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	-28(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	ap_update_child_status_from_indexes
	movl	$10, %edi
	call	sleep
	movl	$-1, %eax
	jmp	.L72
.L73:
	cmpl	$0, -4(%rbp)
	jne	.L74
	movl	$just_die, %esi
	movl	$1, %edi
	call	apr_signal
	movl	$just_die, %esi
	movl	$15, %edi
	call	apr_signal
	movl	$stop_listening, %esi
	movl	$10, %edi
	call	apr_signal
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	child_main
.L74:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	$0, %eax
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	make_child, .-make_child
	.type	startup_children, @function
startup_children:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L76
.L81:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	.L77
	jmp	.L78
.L77:
	movq	ap_server_conf(%rip), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make_child
	testl	%eax, %eax
	jns	.L79
	jmp	.L75
.L79:
	subl	$1, -20(%rbp)
.L78:
	addl	$1, -4(%rbp)
.L76:
	cmpl	$0, -20(%rbp)
	je	.L75
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L81
.L75:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	startup_children, .-startup_children
	.data
	.align 4
	.type	idle_spawn_rate, @object
	.size	idle_spawn_rate, 4
idle_spawn_rate:
	.long	1
	.local	hold_off_on_exponential_spawning
	.comm	hold_off_on_exponential_spawning,4,4
	.section	.rodata
	.align 8
.LC16:
	.string	"server reached MaxClients setting, consider raising the MaxClients setting"
	.align 8
.LC17:
	.string	"server seems busy, (you may need to increase StartServers, or Min/MaxSpareServers), spawning %d children, there are %d idle, and %d total children"
	.text
	.type	perform_idle_server_maintenance, @function
perform_idle_server_maintenance:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	movl	$0, -12(%rbp)
	movl	$-1, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$-1, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L83
.L90:
	movl	ap_max_daemons_limit(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L84
	movl	idle_spawn_rate(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L84
	jmp	.L85
.L84:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L86
	movl	idle_spawn_rate(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jge	.L88
	movl	-12(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movl	%edx, -176(%rbp,%rax,4)
	addl	$1, -12(%rbp)
	jmp	.L88
.L86:
	cmpl	$2, -36(%rbp)
	jg	.L89
	addl	$1, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -24(%rbp)
.L89:
	addl	$1, -20(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)
.L88:
	addl	$1, -4(%rbp)
.L83:
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L90
.L85:
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, ap_max_daemons_limit(%rip)
	movl	ap_daemons_max_free(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L91
	movq	pod(%rip), %rax
	movq	%rax, %rdi
	call	ap_mpm_pod_signal
	movl	$1, idle_spawn_rate(%rip)
	jmp	.L82
.L91:
	movl	ap_daemons_min_free(%rip), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L93
	cmpl	$0, -12(%rbp)
	jne	.L94
	movl	reported.9982(%rip), %eax
	testl	%eax, %eax
	jne	.L95
	movq	ap_server_conf(%rip), %rax
	movl	$.LC16, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$855, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, reported.9982(%rip)
.L95:
	movl	$1, idle_spawn_rate(%rip)
	jmp	.L82
.L94:
	movl	idle_spawn_rate(%rip), %eax
	cmpl	$7, %eax
	jle	.L97
	movl	idle_spawn_rate(%rip), %eax
	movq	ap_server_conf(%rip), %rcx
	subq	$8, %rsp
	movl	-20(%rbp), %edx
	pushq	%rdx
	movl	-8(%rbp), %edx
	pushq	%rdx
	pushq	%rax
	movl	$.LC17, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$864, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$32, %rsp
.L97:
	movl	$0, -4(%rbp)
	jmp	.L98
.L99:
	movl	-4(%rbp), %eax
	cltq
	movl	-176(%rbp,%rax,4), %edx
	movq	ap_server_conf(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make_child
	addl	$1, -4(%rbp)
.L98:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.L99
	movl	hold_off_on_exponential_spawning(%rip), %eax
	testl	%eax, %eax
	je	.L100
	movl	hold_off_on_exponential_spawning(%rip), %eax
	subl	$1, %eax
	movl	%eax, hold_off_on_exponential_spawning(%rip)
	jmp	.L82
.L100:
	movl	idle_spawn_rate(%rip), %eax
	cmpl	$31, %eax
	jg	.L82
	movl	idle_spawn_rate(%rip), %eax
	addl	%eax, %eax
	movl	%eax, idle_spawn_rate(%rip)
	jmp	.L82
.L93:
	movl	$1, idle_spawn_rate(%rip)
.L82:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	perform_idle_server_maintenance, .-perform_idle_server_maintenance
	.section	.rodata
	.align 8
.LC18:
	.string	"WARNING: Attempt to change ServerLimit ignored during restart"
.LC19:
	.string	"%s.%d"
	.align 8
.LC20:
	.string	"Couldn't create accept lock (%s) (%d)"
	.align 8
.LC21:
	.string	"Couldn't set permissions on cross-process lock; check User and Group directives"
	.align 8
.LC22:
	.string	"%s configured -- resuming normal operations"
.LC23:
	.string	"Server built: %s"
.LC24:
	.string	"AcceptMutex: %s (default: %s)"
	.align 8
.LC25:
	.string	"long lost child came home! (pid %ld)"
.LC26:
	.string	"killpg SIGTERM"
.LC27:
	.string	"removed PID file %s (pid=%ld)"
.LC28:
	.string	"caught SIGTERM, shutting down"
	.align 8
.LC29:
	.string	"caught SIGWINCH, shutting down gracefully"
	.align 8
.LC30:
	.string	"Graceful restart requested, doing restart"
.LC31:
	.string	"killpg SIGHUP"
	.align 8
.LC32:
	.string	"SIGHUP received.  Attempting to restart"
	.text
	.globl	ap_mpm_run
	.type	ap_mpm_run, @function
ap_mpm_run:
.LFB16:
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
	movq	ap_pid_fname(%rip), %rdx
	movq	pconf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_log_pid
	movl	server_limit(%rip), %eax
	movl	%eax, first_server_limit(%rip)
	movl	changed_limit_at_restart(%rip), %eax
	testl	%eax, %eax
	je	.L102
	movq	-136(%rbp), %rax
	movl	$.LC18, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$914, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$0, changed_limit_at_restart(%rip)
.L102:
	movl	ap_my_pid(%rip), %ebx
	movq	ap_lock_fname(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, %rdx
	movq	-120(%rbp), %rax
	movl	%ebx, %ecx
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, ap_lock_fname(%rip)
	movl	ap_accept_lock_mech(%rip), %edx
	movq	ap_lock_fname(%rip), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, %rsi
	movl	$accept_mutex, %edi
	call	apr_proc_mutex_create
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L103
	movl	ap_accept_lock_mech(%rip), %ecx
	movq	ap_lock_fname(%rip), %rdx
	movq	-136(%rbp), %rsi
	movl	-44(%rbp), %eax
	pushq	%rcx
	pushq	%rdx
	movl	$.LC20, %r9d
	movq	%rsi, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$928, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$2, mpm_state(%rip)
	movl	$1, %eax
	jmp	.L104
.L103:
	movl	ap_accept_lock_mech(%rip), %eax
	cmpl	$5, %eax
	je	.L105
	movl	ap_accept_lock_mech(%rip), %eax
	cmpl	$2, %eax
	jne	.L106
.L105:
	movq	accept_mutex(%rip), %rax
	movq	%rax, %rdi
	call	unixd_set_proc_mutex_perms
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L106
	movq	-136(%rbp), %rdx
	movl	-44(%rbp), %eax
	movl	$.LC21, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$943, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$2, mpm_state(%rip)
	movl	$1, %eax
	jmp	.L104
.L106:
	movl	is_graceful(%rip), %eax
	testl	%eax, %eax
	jne	.L107
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_run_pre_mpm
	testl	%eax, %eax
	je	.L108
	movl	$2, mpm_state(%rip)
	movl	$1, %eax
	jmp	.L104
.L108:
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	ap_my_generation(%rip), %edx
	movl	%edx, 12(%rax)
.L107:
	call	set_signals
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	je	.L109
	movq	ap_server_conf(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	make_child
	jmp	.L110
.L109:
	movl	ap_daemons_min_free(%rip), %eax
	leal	1(%rax), %edx
	movl	ap_daemons_max_free(%rip), %eax
	cmpl	%eax, %edx
	jle	.L111
	movl	ap_daemons_min_free(%rip), %eax
	addl	$1, %eax
	movl	%eax, ap_daemons_max_free(%rip)
.L111:
	movl	ap_daemons_to_start(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jle	.L112
	movl	ap_daemons_limit(%rip), %eax
	movl	%eax, -24(%rbp)
.L112:
	movl	is_graceful(%rip), %eax
	testl	%eax, %eax
	jne	.L113
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	startup_children
	movl	$0, -24(%rbp)
	jmp	.L114
.L113:
	movl	$10, hold_off_on_exponential_spawning(%rip)
.L114:
	call	ap_get_server_description
	movq	%rax, %rdx
	movq	ap_server_conf(%rip), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$.LC22, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$995, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	call	ap_get_server_built
	movq	%rax, %rdx
	movq	ap_server_conf(%rip), %rax
	subq	$8, %rsp
	pushq	%rdx
	movl	$.LC23, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$998, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	call	apr_proc_mutex_defname
	movq	%rax, %rbx
	movq	accept_mutex(%rip), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_name
	movq	%rax, %rdx
	movq	ap_server_conf(%rip), %rax
	pushq	%rbx
	pushq	%rdx
	movl	$.LC24, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$1001, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	movl	%eax, shutdown_pending(%rip)
	movl	%eax, restart_pending(%rip)
	movl	$1, mpm_state(%rip)
	jmp	.L115
.L124:
	movq	pconf(%rip), %rcx
	leaq	-112(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	leaq	-76(%rbp), %rax
	movq	%rax, %rdi
	call	ap_wait_or_timeout
	movl	-112(%rbp), %eax
	cmpl	$-1, %eax
	je	.L116
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %ecx
	leaq	-112(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	ap_process_child_status
	movl	%eax, -48(%rbp)
	cmpl	$15, -48(%rbp)
	jne	.L117
	movl	$2, mpm_state(%rip)
	movl	$1, %eax
	jmp	.L104
.L117:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	find_child_by_pid
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	js	.L118
	movl	-52(%rbp), %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	%eax, %edi
	call	ap_update_child_status_from_indexes
	cmpl	$7, -48(%rbp)
	jne	.L119
	movl	$1, idle_spawn_rate(%rip)
	jmp	.L121
.L119:
	cmpl	$0, -24(%rbp)
	je	.L121
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -52(%rbp)
	jge	.L121
	movq	ap_server_conf(%rip), %rax
	movl	-52(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	make_child
	subl	$1, -24(%rbp)
	jmp	.L115
.L118:
	movl	-80(%rbp), %edx
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_proc_other_child_alert
	testl	%eax, %eax
	je	.L121
	movl	is_graceful(%rip), %eax
	testl	%eax, %eax
	je	.L121
	movl	-112(%rbp), %eax
	cltq
	movq	ap_server_conf(%rip), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC25, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$1060, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L115
.L121:
	jmp	.L115
.L116:
	cmpl	$0, -24(%rbp)
	je	.L123
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	startup_children
	movl	$0, -24(%rbp)
	jmp	.L115
.L123:
	movq	pconf(%rip), %rax
	movq	%rax, %rdi
	call	perform_idle_server_maintenance
.L115:
	movl	restart_pending(%rip), %eax
	testl	%eax, %eax
	jne	.L110
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	je	.L124
.L110:
	movl	$2, mpm_state(%rip)
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	je	.L125
	movl	is_graceful(%rip), %eax
	testl	%eax, %eax
	jne	.L125
	call	getpgrp
	movl	$15, %esi
	movl	%eax, %edi
	call	killpg
	testl	%eax, %eax
	jns	.L126
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC26, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1101, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L126:
	movl	$1, %edi
	call	ap_reclaim_child_processes
	movq	$0, -64(%rbp)
	movq	ap_pid_fname(%rip), %rdx
	movq	pconf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L127
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	unlink
	testl	%eax, %eax
	jne	.L127
	call	getpid
	cltq
	movq	ap_server_conf(%rip), %rdx
	pushq	%rax
	pushq	-64(%rbp)
	movl	$.LC27, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$1110, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L127:
	movq	ap_server_conf(%rip), %rax
	movl	$.LC28, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1116, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, %eax
	jmp	.L104
.L125:
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	je	.L128
	movq	$0, -40(%rbp)
	call	ap_close_listeners
	movl	ap_max_daemons_limit(%rip), %edx
	movq	pod(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_mpm_pod_killpg
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L129
.L131:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	.L130
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	ap_mpm_safe_kill
	addl	$1, -28(%rbp)
.L130:
	addl	$1, -20(%rbp)
.L129:
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L131
	call	ap_relieve_child_processes
	movq	$0, -72(%rbp)
	movq	ap_pid_fname(%rip), %rdx
	movq	pconf(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L132
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	unlink
	testl	%eax, %eax
	jne	.L132
	call	getpid
	cltq
	movq	ap_server_conf(%rip), %rdx
	pushq	%rax
	pushq	-72(%rbp)
	movl	$.LC27, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$1153, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L132:
	movq	ap_server_conf(%rip), %rax
	movl	$.LC29, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1159, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	ap_graceful_shutdown_timeout(%rip), %eax
	testl	%eax, %eax
	je	.L133
	call	apr_time_now
	movq	%rax, %rdx
	movl	ap_graceful_shutdown_timeout(%rip), %eax
	cltq
	imulq	$1000000, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
.L133:
	movl	$0, shutdown_pending(%rip)
.L139:
	movl	$1, %edi
	call	sleep
	call	ap_relieve_child_processes
	movl	$0, -28(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L134
.L137:
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$0, %esi
	movl	%eax, %edi
	call	ap_mpm_safe_kill
	testl	%eax, %eax
	jne	.L135
	movl	$1, -28(%rbp)
	jmp	.L136
.L135:
	addl	$1, -20(%rbp)
.L134:
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L137
.L136:
	movl	shutdown_pending(%rip), %eax
	testl	%eax, %eax
	jne	.L138
	cmpl	$0, -28(%rbp)
	je	.L138
	movl	ap_graceful_shutdown_timeout(%rip), %eax
	testl	%eax, %eax
	je	.L139
	call	apr_time_now
	cmpq	-40(%rbp), %rax
	jl	.L139
.L138:
	call	getpgrp
	movl	$15, %esi
	movl	%eax, %edi
	call	killpg
	movl	$1, %eax
	jmp	.L104
.L128:
	movl	$1, %esi
	movl	$1, %edi
	call	apr_signal
	movl	$1, %esi
	movl	$10, %edi
	call	apr_signal
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	je	.L140
	movl	$1, %eax
	jmp	.L104
.L140:
	movl	ap_my_generation(%rip), %eax
	addl	$1, %eax
	movl	%eax, ap_my_generation(%rip)
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movl	ap_my_generation(%rip), %edx
	movl	%edx, 12(%rax)
	movl	is_graceful(%rip), %eax
	testl	%eax, %eax
	je	.L141
	movq	ap_server_conf(%rip), %rax
	movl	$.LC30, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1212, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	ap_max_daemons_limit(%rip), %edx
	movq	pod(%rip), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_mpm_pod_killpg
	movl	$0, -20(%rbp)
	jmp	.L142
.L144:
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	je	.L143
	movq	ap_scoreboard_image(%rip), %rax
	movq	16(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movb	$9, 24(%rax)
	movq	ap_scoreboard_image(%rip), %rax
	movq	8(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	ap_mpm_safe_kill
.L143:
	addl	$1, -20(%rbp)
.L142:
	movl	ap_daemons_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L144
	jmp	.L145
.L141:
	call	getpgrp
	movl	$1, %esi
	movl	%eax, %edi
	call	killpg
	testl	%eax, %eax
	jns	.L146
	movq	ap_server_conf(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC31, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$1240, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L146:
	movl	$0, %edi
	call	ap_reclaim_child_processes
	movq	ap_server_conf(%rip), %rax
	movl	$.LC32, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$5, %edx
	movl	$1243, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
.L145:
	movl	$0, %eax
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_mpm_run, .-ap_mpm_run
	.section	.rodata
	.align 8
.LC33:
	.string	"no listening sockets available, shutting down"
.LC34:
	.string	"Could not open pipe-of-death."
	.text
	.type	prefork_open_logs, @function
prefork_open_logs:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, pconf(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, ap_server_conf(%rip)
	movq	ap_server_conf(%rip), %rax
	movq	%rax, %rdi
	call	ap_setup_listeners
	movl	%eax, num_listensocks(%rip)
	movl	num_listensocks(%rip), %eax
	testl	%eax, %eax
	jg	.L148
	movl	$.LC33, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$33, %edx
	movl	$1261, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$-2, %eax
	jmp	.L149
.L148:
	movq	pconf(%rip), %rax
	movl	$pod, %esi
	movq	%rax, %rdi
	call	ap_mpm_pod_open
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L150
	movl	-4(%rbp), %eax
	movl	$.LC34, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$34, %edx
	movl	$1267, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$-2, %eax
	jmp	.L149
.L150:
	movl	$0, %eax
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	prefork_open_logs, .-prefork_open_logs
	.section	.rodata
.LC35:
	.string	"DEBUG"
.LC36:
	.string	"NO_DETACH"
.LC37:
	.string	"ONE_PROCESS"
.LC38:
	.string	"FOREGROUND"
.LC39:
	.string	"apr_proc_detach failed"
.LC40:
	.string	"logs/httpd.pid"
.LC41:
	.string	"logs/accept.lock"
	.text
	.type	prefork_pre_config, @function
prefork_pre_config:
.LFB18:
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
	movl	$0, mpm_state(%rip)
	movl	$.LC35, %edi
	call	ap_exists_config_define
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L152
	movl	$1, one_process(%rip)
	movl	one_process(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L153
.L152:
	movl	$.LC36, %edi
	call	ap_exists_config_define
	movl	%eax, -4(%rbp)
	movl	$.LC37, %edi
	call	ap_exists_config_define
	movl	%eax, one_process(%rip)
	movl	$.LC38, %edi
	call	ap_exists_config_define
	movl	%eax, -8(%rbp)
.L153:
	movl	restart_num.10029(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, restart_num.10029(%rip)
	cmpl	$1, %eax
	jne	.L154
	movl	$0, is_graceful(%rip)
	movl	one_process(%rip), %eax
	testl	%eax, %eax
	jne	.L155
	cmpl	$0, -8(%rbp)
	jne	.L155
	cmpl	$0, -4(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, %edi
	call	apr_proc_detach
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L155
	movl	-16(%rbp), %eax
	movl	$.LC39, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$1303, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$500, %eax
	jmp	.L156
.L155:
	call	getpid
	movl	%eax, ap_my_pid(%rip)
	movl	ap_my_pid(%rip), %eax
	movl	%eax, parent_pid(%rip)
.L154:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	unixd_pre_config
	call	ap_listen_pre_config
	movl	$5, ap_daemons_to_start(%rip)
	movl	$5, ap_daemons_min_free(%rip)
	movl	$10, ap_daemons_max_free(%rip)
	movl	server_limit(%rip), %eax
	movl	%eax, ap_daemons_limit(%rip)
	movq	$.LC40, ap_pid_fname(%rip)
	movq	$.LC41, ap_lock_fname(%rip)
	movl	$10000, ap_max_requests_per_child(%rip)
	movl	$0, ap_extended_status(%rip)
	movl	$0, ap_max_mem_free(%rip)
	movq	ap_server_root(%rip), %rax
	movl	$8192, %edx
	movq	%rax, %rsi
	movl	$ap_coredump_dir, %edi
	call	apr_cpystrn
	movl	$0, %eax
.L156:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	prefork_pre_config, .-prefork_pre_config
	.type	prefork_hooks, @function
prefork_hooks:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %ecx
	movl	$aszSucc.10037, %edx
	movl	$0, %esi
	movl	$prefork_open_logs, %edi
	call	ap_hook_open_logs
	movl	$-10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$prefork_pre_config, %edi
	call	ap_hook_pre_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	prefork_hooks, .-prefork_hooks
	.type	set_daemons_to_start, @function
set_daemons_to_start:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L159
	movq	-8(%rbp), %rax
	jmp	.L160
.L159:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_daemons_to_start(%rip)
	movl	$0, %eax
.L160:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	set_daemons_to_start, .-set_daemons_to_start
	.section	.rodata
	.align 8
.LC42:
	.string	"WARNING: detected MinSpareServers set to non-positive."
	.align 8
.LC43:
	.string	"Resetting to 1 to avoid almost certain Apache failure."
	.align 8
.LC44:
	.string	"Please read the documentation."
	.text
	.type	set_min_free_servers, @function
set_min_free_servers:
.LFB21:
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
	je	.L162
	movq	-8(%rbp), %rax
	jmp	.L163
.L162:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_daemons_min_free(%rip)
	movl	ap_daemons_min_free(%rip), %eax
	testl	%eax, %eax
	jg	.L164
	movl	$.LC42, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1370, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC43, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1372, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC44, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1374, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, ap_daemons_min_free(%rip)
.L164:
	movl	$0, %eax
.L163:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	set_min_free_servers, .-set_min_free_servers
	.type	set_max_free_servers, @function
set_max_free_servers:
.LFB22:
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
	je	.L166
	movq	-8(%rbp), %rax
	jmp	.L167
.L166:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_daemons_max_free(%rip)
	movl	$0, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	set_max_free_servers, .-set_max_free_servers
	.section	.rodata
	.align 8
.LC45:
	.string	"WARNING: MaxClients of %d exceeds ServerLimit value of %d servers,"
	.align 8
.LC46:
	.string	" lowering MaxClients to %d.  To increase, please see the ServerLimit"
.LC47:
	.string	" directive."
	.align 8
.LC48:
	.string	"WARNING: Require MaxClients > 0, setting to 1"
	.text
	.type	set_max_clients, @function
set_max_clients:
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
	je	.L169
	movq	-8(%rbp), %rax
	jmp	.L170
.L169:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, ap_daemons_limit(%rip)
	movl	ap_daemons_limit(%rip), %edx
	movl	server_limit(%rip), %eax
	cmpl	%eax, %edx
	jle	.L171
	movl	server_limit(%rip), %edx
	movl	ap_daemons_limit(%rip), %eax
	pushq	%rdx
	pushq	%rax
	movl	$.LC45, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1402, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	server_limit(%rip), %eax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC46, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1405, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$.LC47, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1408, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	server_limit(%rip), %eax
	movl	%eax, ap_daemons_limit(%rip)
	jmp	.L172
.L171:
	movl	ap_daemons_limit(%rip), %eax
	testl	%eax, %eax
	jg	.L172
	movl	$.LC48, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1413, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, ap_daemons_limit(%rip)
.L172:
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	set_max_clients, .-set_max_clients
	.section	.rodata
	.align 8
.LC49:
	.string	"WARNING: ServerLimit of %d exceeds compile time limit of %d servers,"
.LC50:
	.string	" lowering ServerLimit to %d."
	.align 8
.LC51:
	.string	"WARNING: Require ServerLimit > 0, setting to 1"
	.text
	.type	set_server_limit, @function
set_server_limit:
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
	je	.L174
	movq	-8(%rbp), %rax
	jmp	.L175
.L174:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	movl	first_server_limit(%rip), %eax
	testl	%eax, %eax
	je	.L176
	movl	server_limit(%rip), %eax
	cmpl	%eax, -12(%rbp)
	je	.L176
	movl	$1, changed_limit_at_restart(%rip)
	movl	$0, %eax
	jmp	.L175
.L176:
	movl	-12(%rbp), %eax
	movl	%eax, server_limit(%rip)
	movl	server_limit(%rip), %eax
	cmpl	$200000, %eax
	jle	.L177
	movl	server_limit(%rip), %eax
	pushq	$200000
	pushq	%rax
	movl	$.LC49, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1445, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	subq	$8, %rsp
	pushq	$200000
	movl	$.LC50, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1448, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$200000, server_limit(%rip)
	jmp	.L178
.L177:
	movl	server_limit(%rip), %eax
	testl	%eax, %eax
	jg	.L178
	movl	$.LC51, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$1453, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$1, server_limit(%rip)
.L178:
	movl	$0, %eax
.L175:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	set_server_limit, .-set_server_limit
	.section	.rodata
.LC52:
	.string	"User"
	.align 8
.LC53:
	.string	"Effective user id for this server"
.LC54:
	.string	"Group"
	.align 8
.LC55:
	.string	"Effective group id for this server"
.LC56:
	.string	"ChrootDir"
	.align 8
.LC57:
	.string	"The directory to chroot(2) into"
.LC58:
	.string	"ListenBacklog"
	.align 8
.LC59:
	.string	"Maximum length of the queue of pending connections, as used by listen(2)"
.LC60:
	.string	"Listen"
	.align 8
.LC61:
	.string	"A port number or a numeric IP address and a port number, and an optional protocol"
.LC62:
	.string	"SendBufferSize"
.LC63:
	.string	"Send buffer size in bytes"
.LC64:
	.string	"ReceiveBufferSize"
.LC65:
	.string	"Receive buffer size in bytes"
.LC66:
	.string	"StartServers"
	.align 8
.LC67:
	.string	"Number of child processes launched at server startup"
.LC68:
	.string	"MinSpareServers"
	.align 8
.LC69:
	.string	"Minimum number of idle children, to handle request spikes"
.LC70:
	.string	"MaxSpareServers"
	.align 8
.LC71:
	.string	"Maximum number of idle children"
.LC72:
	.string	"MaxClients"
	.align 8
.LC73:
	.string	"Maximum number of children alive at the same time"
.LC74:
	.string	"ServerLimit"
	.align 8
.LC75:
	.string	"Maximum value of MaxClients for this run of Apache"
.LC76:
	.string	"GracefulShutdownTimeout"
	.align 8
.LC77:
	.string	"Maximum time in seconds to wait for child processes to complete transactions during shutdown"
	.align 64
	.type	prefork_cmds, @object
	.size	prefork_cmds, 560
prefork_cmds:
	.quad	.LC52
	.quad	unixd_set_user
	.quad	0
	.long	128
	.long	1
	.quad	.LC53
	.quad	.LC54
	.quad	unixd_set_group
	.quad	0
	.long	128
	.long	1
	.quad	.LC55
	.quad	.LC56
	.quad	unixd_set_chroot_dir
	.quad	0
	.long	128
	.long	1
	.quad	.LC57
	.quad	.LC58
	.quad	ap_set_listenbacklog
	.quad	0
	.long	128
	.long	1
	.quad	.LC59
	.quad	.LC60
	.quad	ap_set_listener
	.quad	0
	.long	128
	.long	12
	.quad	.LC61
	.quad	.LC62
	.quad	ap_set_send_buffer_size
	.quad	0
	.long	128
	.long	1
	.quad	.LC63
	.quad	.LC64
	.quad	ap_set_receive_buffer_size
	.quad	0
	.long	128
	.long	1
	.quad	.LC65
	.quad	.LC66
	.quad	set_daemons_to_start
	.quad	0
	.long	128
	.long	1
	.quad	.LC67
	.quad	.LC68
	.quad	set_min_free_servers
	.quad	0
	.long	128
	.long	1
	.quad	.LC69
	.quad	.LC70
	.quad	set_max_free_servers
	.quad	0
	.long	128
	.long	1
	.quad	.LC71
	.quad	.LC72
	.quad	set_max_clients
	.quad	0
	.long	128
	.long	1
	.quad	.LC73
	.quad	.LC74
	.quad	set_server_limit
	.quad	0
	.long	128
	.long	1
	.quad	.LC75
	.quad	.LC76
	.quad	ap_mpm_set_graceful_shutdown
	.quad	0
	.long	128
	.long	1
	.quad	.LC77
	.quad	0
	.zero	32
	.globl	mpm_prefork_module
	.data
	.align 64
	.type	mpm_prefork_module, @object
	.size	mpm_prefork_module, 104
mpm_prefork_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC2
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	ap_mpm_rewrite_args
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	prefork_cmds
	.quad	prefork_hooks
	.local	reported.9982
	.comm	reported.9982,4,4
	.local	restart_num.10029
	.comm	restart_num.10029,4,4
	.section	.rodata
.LC78:
	.string	"core.c"
	.align 16
	.type	aszSucc.10037, @object
	.size	aszSucc.10037, 16
aszSucc.10037:
	.quad	.LC78
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

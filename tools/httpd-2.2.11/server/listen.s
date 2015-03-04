	.file	"listen.c"
	.globl	ap_listeners
	.bss
	.align 8
	.type	ap_listeners, @object
	.size	ap_listeners, 8
ap_listeners:
	.zero	8
	.local	old_listeners
	.comm	old_listeners,8,8
	.local	ap_listenbacklog
	.comm	ap_listenbacklog,4,4
	.local	send_buffer_size
	.comm	send_buffer_size,4,4
	.local	receive_buffer_size
	.comm	receive_buffer_size,4,4
	.section	.rodata
	.align 8
.LC0:
	.string	"make_sock: for address %pI, apr_socket_opt_set: (SO_REUSEADDR)"
.LC1:
	.string	"listen.c"
	.align 8
.LC2:
	.string	"make_sock: for address %pI, apr_socket_opt_set: (SO_KEEPALIVE)"
	.align 8
.LC3:
	.string	"make_sock: for address %pI, apr_socket_opt_set: (IPV6_V6ONLY)"
	.align 8
.LC4:
	.string	"make_sock: failed to set SendBufferSize for address %pI, using default"
	.align 8
.LC5:
	.string	"make_sock: failed to set ReceiveBufferSize for address %pI, using default"
	.align 8
.LC6:
	.string	"make_sock: could not bind to address %pI"
	.align 8
.LC7:
	.string	"make_sock: unable to listen for connections on address %pI"
	.text
	.type	make_sock, @function
make_sock:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L2
	cmpl	$70023, -20(%rbp)
	je	.L2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC0, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$57, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	-20(%rbp), %eax
	jmp	.L3
.L2:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L4
	cmpl	$70023, -20(%rbp)
	je	.L4
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC2, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$67, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	-20(%rbp), %eax
	jmp	.L3
.L4:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$10, %eax
	jne	.L5
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$16384, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L5
	cmpl	$70023, -20(%rbp)
	je	.L5
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC3, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$78, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	-20(%rbp), %eax
	jmp	.L3
.L5:
	movl	send_buffer_size(%rip), %eax
	testl	%eax, %eax
	je	.L6
	movl	send_buffer_size(%rip), %edx
	movq	-8(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L6
	cmpl	$70023, -20(%rbp)
	je	.L6
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC4, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$110, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
.L6:
	movl	receive_buffer_size(%rip), %eax
	testl	%eax, %eax
	je	.L7
	movl	receive_buffer_size(%rip), %edx
	movq	-8(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L7
	cmpl	$70023, -20(%rbp)
	je	.L7
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC5, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$120, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
.L7:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_sock_disable_nagle
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_bind
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L8
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC6, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$34, %edx
	movl	$133, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	-20(%rbp), %eax
	jmp	.L3
.L8:
	movl	ap_listenbacklog(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_socket_listen
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L9
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	subq	$8, %rsp
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	pushq	%rdx
	movl	$.LC7, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$35, %edx
	movl	$141, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	-20(%rbp), %eax
	jmp	.L3
.L9:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-48(%rbp), %rax
	movq	$unixd_accept, 24(%rax)
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	make_sock, .-make_sock
	.section	.rodata
.LC8:
	.string	"none"
	.text
	.type	find_accf_name, @function
find_accf_name:
.LFB3:
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
	cmpq	$0, -32(%rbp)
	jne	.L11
	movl	$0, %eax
	jmp	.L12
.L11:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L13
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	call	strcmp
	testl	%eax, %eax
	jne	.L13
	movl	$0, %eax
	jmp	.L12
.L13:
	movq	-16(%rbp), %rax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	find_accf_name, .-find_accf_name
	.section	.rodata
	.align 8
.LC9:
	.string	"Failed to enable APR_TCP_DEFER_ACCEPT"
	.text
	.type	ap_apply_accept_filter, @function
ap_apply_accept_filter:
.LFB4:
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
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_protocol
	movq	%rax, -8(%rbp)
.L15:
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_accf_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L14
	movq	-16(%rbp), %rax
	movl	$1, %edx
	movl	$32768, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L14
	cmpl	$70023, -28(%rbp)
	je	.L14
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %eax
	movl	$.LC9, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$4, %edx
	movl	$230, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_apply_accept_filter, .-ap_apply_accept_filter
	.type	close_listeners_on_exec, @function
close_listeners_on_exec:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	ap_close_listeners
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	close_listeners_on_exec, .-close_listeners_on_exec
	.section	.rodata
	.align 8
.LC10:
	.string	"alloc_listener: failed to set up sockaddr for %s"
.LC11:
	.string	"Listen setup failed"
	.align 8
.LC12:
	.string	"alloc_listener: failed to get a socket for %s"
	.text
	.type	alloc_listener, @function
alloc_listener:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movq	%rcx, -96(%rbp)
	movw	%ax, -84(%rbp)
	movl	$0, -20(%rbp)
	movq	$old_listeners, -8(%rbp)
	jmp	.L20
.L24:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	je	.L21
	movq	-56(%rbp), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -22(%rbp)
	movzwl	-84(%rbp), %eax
	cmpw	-22(%rbp), %ax
	jne	.L21
	cmpq	$0, -80(%rbp)
	jne	.L22
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L23
.L22:
	cmpq	$0, -80(%rbp)
	je	.L21
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L21
.L23:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	ap_listeners(%rip), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, ap_listeners(%rip)
	movl	$1, -20(%rbp)
	jmp	.L20
.L21:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L24
	cmpl	$0, -20(%rbp)
	je	.L25
	movl	$0, %eax
	jmp	.L36
.L25:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movzwl	-84(%rbp), %edx
	movq	-80(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L27
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	subq	$8, %rsp
	movl	-36(%rbp), %eax
	pushq	-80(%rbp)
	movl	$.LC10, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$286, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movl	$.LC11, %eax
	jmp	.L36
.L27:
	movq	ap_listeners(%rip), %rax
	movq	%rax, -16(%rbp)
	jmp	.L28
.L30:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L28:
	cmpq	$0, -16(%rbp)
	je	.L29
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L30
.L29:
	jmp	.L31
.L35:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	movq	-48(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	call	apr_socket_create
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L32
	cmpq	$0, -80(%rbp)
	jne	.L32
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$10, %eax
	jne	.L32
	jmp	.L31
.L32:
	cmpl	$0, -36(%rbp)
	je	.L33
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	subq	$8, %rsp
	movl	-36(%rbp), %eax
	pushq	-80(%rbp)
	movl	$.LC12, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$2, %edx
	movl	$324, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movl	$.LC11, %eax
	jmp	.L36
.L33:
	cmpq	$0, -16(%rbp)
	jne	.L34
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, ap_listeners(%rip)
	jmp	.L31
.L34:
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.L31:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L35
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	alloc_listener, .-alloc_listener
	.section	.rodata
.LC13:
	.string	"ap_open_listeners"
	.align 8
.LC14:
	.string	"unable to control socket non-blocking status"
	.text
	.type	open_listeners, @function
open_listeners:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	$.LC13, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -16(%rbp)
	movq	ap_listeners(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L38
.L61:
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L39
	addl	$1, -20(%rbp)
	jmp	.L40
.L39:
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	jne	.L41
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %eax
	cmpw	%ax, %dx
	jne	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$10, %eax
	jne	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	addq	$72, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movq	-56(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L42
	movl	$1, %eax
	jmp	.L43
.L42:
	movl	$0, %eax
.L43:
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -16(%rbp)
	je	.L44
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L45
.L44:
	movq	-64(%rbp), %rax
	movq	%rax, ap_listeners(%rip)
.L45:
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L41:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L46
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	jne	.L46
	movq	ap_listeners(%rip), %rax
	movq	%rax, -32(%rbp)
	jmp	.L47
.L52:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %edx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %eax
	cmpw	%ax, %dx
	jne	.L48
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$10, %eax
	jne	.L48
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	$72, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-72(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	testl	%eax, %eax
	je	.L48
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-100(%rbp), %rdx
	movl	$16384, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_get
	testl	%eax, %eax
	jne	.L48
	movl	-100(%rbp), %eax
	testl	%eax, %eax
	jne	.L48
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -36(%rbp)
	jmp	.L51
.L48:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L47:
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L52
.L51:
	cmpl	$0, -36(%rbp)
	je	.L46
	jmp	.L40
.L46:
	movq	-8(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	make_sock
	testl	%eax, %eax
	jne	.L54
	addl	$1, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	jmp	.L40
.L54:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L55
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$10, %eax
	jne	.L55
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	addq	$72, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movq	-80(%rbp), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movq	-80(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L56
	movl	$1, %eax
	jmp	.L57
.L56:
	movl	$0, %eax
.L57:
	testl	%eax, %eax
	je	.L55
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %eax
	cmpw	%ax, %dx
	jne	.L55
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L55
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	jne	.L55
	cmpq	$0, -16(%rbp)
	je	.L58
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L59
.L58:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, ap_listeners(%rip)
.L59:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$2, 28(%rax)
	jmp	.L40
.L55:
	movl	$-1, %eax
	jmp	.L72
.L40:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L38:
	cmpq	$0, -8(%rbp)
	jne	.L61
	movq	old_listeners(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.L62:
	cmpq	$0, -8(%rbp)
	jne	.L63
	movq	$0, old_listeners(%rip)
	movq	ap_listeners(%rip), %rax
	testq	%rax, %rax
	je	.L64
	movq	ap_listeners(%rip), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L64
	movl	$1, %eax
	jmp	.L65
.L64:
	movl	$0, %eax
.L65:
	movl	%eax, -84(%rbp)
	movq	ap_listeners(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L66
.L68:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-84(%rbp), %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.L67
	movq	-120(%rbp), %rdx
	movl	-88(%rbp), %eax
	movl	$.LC14, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$35, %edx
	movl	$502, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_perror
	movl	$-1, %eax
	jmp	.L72
.L67:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L66:
	cmpq	$0, -8(%rbp)
	jne	.L68
	movq	-120(%rbp), %rdx
	movq	-48(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pool_userdata_get
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L69
	movq	-120(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movl	$apr_pool_cleanup_null, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	apr_pool_userdata_set
	movq	-120(%rbp), %rax
	movl	$close_listeners_on_exec, %ecx
	movl	$apr_pool_cleanup_null, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
.L69:
	cmpl	$0, -20(%rbp)
	je	.L70
	movl	$0, %eax
	jmp	.L71
.L70:
	movl	$-1, %eax
.L71:
	nop
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	open_listeners, .-open_listeners
	.section	.rodata
.LC15:
	.string	"http"
	.text
	.globl	ap_setup_listeners
	.type	ap_setup_listeners, @function
ap_setup_listeners:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$0, -28(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L74
.L83:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_protocol
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L75
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L76
.L82:
	movq	ap_listeners(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L77
.L80:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_equal
	testl	%eax, %eax
	je	.L78
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, %dx
	jne	.L78
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_server_protocol
	movl	$1, -32(%rbp)
	jmp	.L79
.L78:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L77:
	cmpq	$0, -24(%rbp)
	jne	.L80
.L79:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L76:
	cmpq	$0, -16(%rbp)
	je	.L81
	cmpl	$0, -32(%rbp)
	je	.L82
.L81:
	cmpl	$0, -32(%rbp)
	jne	.L75
	movq	-8(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	call	ap_set_server_protocol
.L75:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L74:
	cmpq	$0, -8(%rbp)
	jne	.L83
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	open_listeners
	testl	%eax, %eax
	je	.L84
	movl	$0, %eax
	jmp	.L85
.L84:
	movq	ap_listeners(%rip), %rax
	movq	%rax, -24(%rbp)
	jmp	.L86
.L95:
	addl	$1, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L87
.L93:
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L88
.L91:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_equal
	testl	%eax, %eax
	je	.L89
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movzwl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, %dx
	jne	.L89
	movl	$1, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_apply_accept_filter
.L89:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L88:
	cmpq	$0, -16(%rbp)
	je	.L90
	cmpl	$0, -32(%rbp)
	je	.L91
.L90:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L87:
	cmpq	$0, -8(%rbp)
	je	.L92
	cmpl	$0, -32(%rbp)
	je	.L93
.L92:
	cmpl	$0, -32(%rbp)
	jne	.L94
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_apply_accept_filter
.L94:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L86:
	cmpq	$0, -24(%rbp)
	jne	.L95
	movl	-28(%rbp), %eax
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_setup_listeners, .-ap_setup_listeners
	.globl	ap_close_listeners
	.type	ap_close_listeners, @function
ap_close_listeners:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	ap_listeners(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L97
.L98:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L97:
	cmpq	$0, -8(%rbp)
	jne	.L98
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_close_listeners, .-ap_close_listeners
	.globl	ap_listen_pre_config
	.type	ap_listen_pre_config, @function
ap_listen_pre_config:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ap_listeners(%rip), %rax
	movq	%rax, old_listeners(%rip)
	movq	$0, ap_listeners(%rip)
	movl	$511, ap_listenbacklog(%rip)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_listen_pre_config, .-ap_listen_pre_config
	.section	.rodata
	.align 8
.LC16:
	.string	"Listen requires 1 or 2 arguments."
.LC17:
	.string	"Invalid address or port"
.LC18:
	.string	"*"
.LC19:
	.string	"Scope id is not supported"
.LC20:
	.string	"Port must be specified"
	.text
	.globl	ap_set_listener
	.type	ap_set_listener, @function
ap_set_listener:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L101
	movq	-16(%rbp), %rax
	jmp	.L111
.L101:
	cmpl	$0, -68(%rbp)
	jle	.L103
	cmpl	$2, -68(%rbp)
	jle	.L104
.L103:
	movl	$.LC16, %eax
	jmp	.L111
.L104:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	leaq	-42(%rbp), %rdx
	leaq	-40(%rbp), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_parse_addr_port
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L105
	movl	$.LC17, %eax
	jmp	.L111
.L105:
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L106
	movq	-32(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L106
	movq	$0, -32(%rbp)
.L106:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L107
	movl	$.LC19, %eax
	jmp	.L111
.L107:
	movzwl	-42(%rbp), %eax
	testw	%ax, %ax
	jne	.L108
	movl	$.LC20, %eax
	jmp	.L111
.L108:
	cmpl	$2, -68(%rbp)
	je	.L109
	movq	$.LC15, -8(%rbp)
	jmp	.L110
.L109:
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
.L110:
	movzwl	-42(%rbp), %eax
	movzwl	%ax, %edx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	call	alloc_listener
.L111:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_set_listener, .-ap_set_listener
	.section	.rodata
.LC21:
	.string	"ListenBacklog must be > 0"
	.text
	.globl	ap_set_listenbacklog
	.type	ap_set_listenbacklog, @function
ap_set_listenbacklog:
.LFB12:
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
	je	.L113
	movq	-8(%rbp), %rax
	jmp	.L114
.L113:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L115
	movl	$.LC21, %eax
	jmp	.L114
.L115:
	movl	-12(%rbp), %eax
	movl	%eax, ap_listenbacklog(%rip)
	movl	$0, %eax
.L114:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_set_listenbacklog, .-ap_set_listenbacklog
	.section	.rodata
	.align 8
.LC22:
	.string	"SendBufferSize must be >= 512 bytes, or 0 for system default."
	.text
	.globl	ap_set_send_buffer_size
	.type	ap_set_send_buffer_size, @function
ap_set_send_buffer_size:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L117
	movq	-16(%rbp), %rax
	jmp	.L118
.L117:
	cmpl	$511, -4(%rbp)
	jg	.L119
	cmpl	$0, -4(%rbp)
	je	.L119
	movl	$.LC22, %eax
	jmp	.L118
.L119:
	movl	-4(%rbp), %eax
	movl	%eax, send_buffer_size(%rip)
	movl	$0, %eax
.L118:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_set_send_buffer_size, .-ap_set_send_buffer_size
	.section	.rodata
	.align 8
.LC23:
	.string	"ReceiveBufferSize must be >= 512 bytes, or 0 for system default."
	.text
	.globl	ap_set_receive_buffer_size
	.type	ap_set_receive_buffer_size, @function
ap_set_receive_buffer_size:
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L121
	movq	-16(%rbp), %rax
	jmp	.L122
.L121:
	cmpl	$511, -4(%rbp)
	jg	.L123
	cmpl	$0, -4(%rbp)
	je	.L123
	movl	$.LC23, %eax
	jmp	.L122
.L123:
	movl	-4(%rbp), %eax
	movl	%eax, receive_buffer_size(%rip)
	movl	$0, %eax
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_set_receive_buffer_size, .-ap_set_receive_buffer_size
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

	.file	"http_core.c"
	.comm	ap_http_input_filter_handle,8,8
	.comm	ap_http_header_filter_handle,8,8
	.comm	ap_chunk_filter_handle,8,8
	.comm	ap_http_outerror_filter_handle,8,8
	.comm	ap_byterange_filter_handle,8,8
	.text
	.type	set_keep_alive_timeout, @function
set_keep_alive_timeout:
.LFB2:
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
	je	.L2
	movq	-24(%rbp), %rax
	jmp	.L3
.L2:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	cltq
	imulq	$1000000, %rax, %rax
	movq	%rax, 112(%rbx)
	movl	$0, %eax
.L3:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_keep_alive_timeout, .-set_keep_alive_timeout
	.section	.rodata
.LC0:
	.string	"off"
.LC1:
	.string	"0"
	.text
	.type	set_keep_alive, @function
set_keep_alive:
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
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L5
	movq	-8(%rbp), %rax
	jmp	.L6
.L5:
	movq	-40(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L7
	movq	-40(%rbp), %rax
	movl	$.LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L8
.L7:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 124(%rax)
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	$1, 124(%rax)
.L9:
	movl	$0, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_keep_alive, .-set_keep_alive
	.type	set_keep_alive_max, @function
set_keep_alive_max:
.LFB4:
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
	je	.L11
	movq	-24(%rbp), %rax
	jmp	.L12
.L11:
	movq	-40(%rbp), %rax
	movq	72(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, 120(%rbx)
	movl	$0, %eax
.L12:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	set_keep_alive_max, .-set_keep_alive_max
	.section	.rodata
.LC2:
	.string	"KeepAliveTimeout"
	.align 8
.LC3:
	.string	"Keep-Alive timeout duration (sec)"
.LC4:
	.string	"MaxKeepAliveRequests"
	.align 8
.LC5:
	.string	"Maximum number of Keep-Alive requests per connection, or 0 for infinite"
.LC6:
	.string	"KeepAlive"
	.align 8
.LC7:
	.string	"Whether persistent connections should be On or Off"
	.align 64
	.type	http_cmds, @object
	.size	http_cmds, 160
http_cmds:
	.quad	.LC2
	.quad	set_keep_alive_timeout
	.quad	0
	.long	128
	.long	1
	.quad	.LC3
	.quad	.LC4
	.quad	set_keep_alive_max
	.quad	0
	.long	128
	.long	1
	.quad	.LC5
	.quad	.LC6
	.quad	set_keep_alive
	.quad	0
	.long	128
	.long	1
	.quad	.LC7
	.quad	0
	.zero	32
.LC8:
	.string	"https"
.LC9:
	.string	"http"
	.text
	.type	http_scheme, @function
http_scheme:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L14
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	176(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L14
	movl	$.LC8, %eax
	jmp	.L15
.L14:
	movl	$.LC9, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	http_scheme, .-http_scheme
	.type	http_port, @function
http_port:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L17
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	176(%rax), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	movl	$443, %eax
	jmp	.L18
.L17:
	movl	$80, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	http_port, .-http_port
	.type	ap_process_http_async_connection, @function
ap_process_http_async_connection:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	164(%rax), %eax
	testl	%eax, %eax
	je	.L20
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_http_connection
	jmp	.L21
.L20:
	jmp	.L22
.L29:
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_read_request
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L23
	movq	-24(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L24
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request
.L24:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L25
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_increment_counts
.L25:
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	jne	.L26
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L26
	call	ap_graceful_stop_signalled
	testl	%eax, %eax
	je	.L27
.L26:
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
	jmp	.L28
.L27:
	movq	-24(%rbp), %rax
	movl	160(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
.L28:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
.L22:
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	cmpl	$1, %eax
	je	.L29
	movl	$0, %eax
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_process_http_async_connection, .-ap_process_http_async_connection
	.type	ap_process_http_connection, @function
ap_process_http_connection:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	jmp	.L31
.L37:
	movq	-24(%rbp), %rax
	movl	$0, 68(%rax)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$4, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L32
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request
.L32:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L33
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_increment_counts
.L33:
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$2, %eax
	jne	.L34
	movq	-24(%rbp), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L34
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$5, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	call	ap_graceful_stop_signalled
	testl	%eax, %eax
	je	.L35
	jmp	.L34
.L35:
	cmpq	$0, -8(%rbp)
	jne	.L36
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L36:
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$4096, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
.L31:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_read_request
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L37
.L34:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_process_http_connection, .-ap_process_http_connection
	.type	http_create_request, @function
http_create_request:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L40
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_byterange_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_content_length_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_http_header_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_http_outerror_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
.L40:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	http_create_request, .-http_create_request
	.type	http_send_options, @function
http_send_options:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$5, %eax
	jne	.L43
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L43
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L43
	movl	$-2, %eax
	jmp	.L44
.L43:
	movl	$-1, %eax
.L44:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	http_send_options, .-http_send_options
	.section	.rodata
.LC10:
	.string	"HTTP_IN"
.LC11:
	.string	"HTTP_HEADER"
.LC12:
	.string	"CHUNK"
.LC13:
	.string	"HTTP_OUTERROR"
.LC14:
	.string	"BYTERANGE"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movl	$14, %edi
	call	ap_mpm_query
	testl	%eax, %eax
	jne	.L46
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jne	.L46
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_process_http_async_connection, %edi
	call	ap_hook_process_connection
	jmp	.L47
.L46:
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_process_http_connection, %edi
	call	ap_hook_process_connection
.L47:
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$ap_send_http_trace, %edi
	call	ap_hook_map_to_storage
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$http_send_options, %edi
	call	ap_hook_map_to_storage
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$http_scheme, %edi
	call	ap_hook_http_scheme
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$http_port, %edi
	call	ap_hook_default_port
	movl	$30, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$http_create_request, %edi
	call	ap_hook_create_request
	movl	$30, %ecx
	movl	$0, %edx
	movl	$ap_http_filter, %esi
	movl	$.LC10, %edi
	call	ap_register_input_filter
	movq	%rax, ap_http_input_filter_handle(%rip)
	movl	$30, %ecx
	movl	$0, %edx
	movl	$ap_http_header_filter, %esi
	movl	$.LC11, %edi
	call	ap_register_output_filter
	movq	%rax, ap_http_header_filter_handle(%rip)
	movl	$40, %ecx
	movl	$0, %edx
	movl	$ap_http_chunk_filter, %esi
	movl	$.LC12, %edi
	call	ap_register_output_filter
	movq	%rax, ap_chunk_filter_handle(%rip)
	movl	$30, %ecx
	movl	$0, %edx
	movl	$ap_http_outerror_filter, %esi
	movl	$.LC13, %edi
	call	ap_register_output_filter
	movq	%rax, ap_http_outerror_filter_handle(%rip)
	movl	$30, %ecx
	movl	$0, %edx
	movl	$ap_byterange_filter, %esi
	movl	$.LC14, %edi
	call	ap_register_output_filter
	movq	%rax, ap_byterange_filter_handle(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_method_registry_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	register_hooks, .-register_hooks
	.globl	http_module
	.section	.rodata
.LC15:
	.string	"http_core.c"
	.data
	.align 64
	.type	http_module, @object
	.size	http_module, 104
http_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC15
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	http_cmds
	.quad	register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

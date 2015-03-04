	.file	"http_request.c"
	.text
	.type	update_r_in_filters, @function
update_r_in_filters:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.L2
.L4:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.L3
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L3:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L2:
	cmpq	$0, -8(%rbp)
	jne	.L4
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	update_r_in_filters, .-update_r_in_filters
	.section	.rodata
	.align 8
.LC0:
	.string	"Custom error page caused AP_FILTER_ERROR"
.LC1:
	.string	"http_request.c"
.LC2:
	.string	"Location"
.LC3:
	.string	"REQUEST_METHOD"
.LC4:
	.string	"error-notes"
.LC5:
	.string	"ERROR_NOTES"
.LC6:
	.string	"GET"
	.align 8
.LC7:
	.string	"Invalid error redirection directive: %s"
	.text
	.globl	ap_die
	.type	ap_die, @function
ap_die:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_response_code_string
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$-3, -52(%rbp)
	jne	.L6
	movq	-64(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L7
.L9:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
.L7:
	cmpq	$0, -32(%rbp)
	je	.L8
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	ap_http_header_filter_handle(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L9
.L8:
	cmpq	$0, -32(%rbp)
	je	.L10
	movq	-64(%rbp), %rax
	movl	$.LC0, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$101, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$500, -52(%rbp)
	jmp	.L6
.L10:
	jmp	.L5
.L6:
	cmpl	$-2, -52(%rbp)
	jne	.L12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L5
.L12:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L13
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L14
.L16:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
.L14:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L15
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L16
.L15:
	movq	-24(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L17
	movq	-24(%rbp), %rax
	movq	648(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
	movq	-24(%rbp), %rax
	movq	640(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
.L17:
	movq	$0, -8(%rbp)
.L13:
	movq	-64(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 112(%rax)
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$401, %eax
	jne	.L18
	movq	-64(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L18
	movq	-64(%rbp), %rax
	movl	$407, 112(%rax)
.L18:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$400, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$408, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$411, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$413, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$414, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$500, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$503, %eax
	je	.L19
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$501, %eax
	jne	.L20
.L19:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
.L20:
	cmpq	$0, -8(%rbp)
	je	.L21
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	je	.L21
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	je	.L22
	movq	-64(%rbp), %rax
	movl	$302, 112(%rax)
	movq	-64(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L21
.L22:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L23
	movq	-64(%rbp), %rax
	movl	$1, 340(%rax)
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-64(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L24
	movq	-64(%rbp), %rax
	movq	264(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L24:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_redirect
	jmp	.L5
.L23:
	movl	$500, -12(%rbp)
	subq	$8, %rsp
	movq	-64(%rbp), %rax
	pushq	-8(%rbp)
	movl	$.LC7, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$210, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L21:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_die, .-ap_die
	.type	check_pipeline_flush, @function
check_pipeline_flush:
.LFB4:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	je	.L26
	movq	-40(%rbp), %rax
	movq	640(%rax), %rax
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	testl	%eax, %eax
	je	.L27
	movq	-8(%rbp), %rax
	movl	$0, 160(%rax)
	jmp	.L26
.L27:
	movq	-8(%rbp), %rax
	movl	$1, 160(%rax)
	jmp	.L25
.L26:
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_flush_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	check_pipeline_flush, .-check_pipeline_flush
	.globl	ap_process_request
	.type	ap_process_request, @function
ap_process_request:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L30
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	ap_time_process_request
.L30:
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_run_quick_handler
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_invoke_handler
	movl	%eax, -4(%rbp)
.L31:
	cmpl	$-2, -4(%rbp)
	jne	.L32
	movl	$0, -4(%rbp)
.L32:
	cmpl	$0, -4(%rbp)
	jne	.L33
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L34
.L33:
	movq	-24(%rbp), %rax
	movl	$200, 112(%rax)
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	check_pipeline_flush
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L29
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_time_process_request
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_process_request, .-ap_process_request
	.section	.rodata
.LC8:
	.string	"REDIRECT_"
	.text
	.type	rename_original_env, @function
rename_original_env:
.LFB6:
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
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L37
.L40:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L38
	jmp	.L39
.L38:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rbx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L39:
	addl	$1, -20(%rbp)
.L37:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L40
	movq	-48(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	rename_original_env, .-rename_original_env
	.section	.rodata
.LC9:
	.string	"REDIRECT_STATUS"
	.text
	.type	internal_internal_redirect, @function
internal_internal_redirect:
.LFB7:
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
	call	ap_is_recursion_limit_exceeded
	testl	%eax, %eax
	je	.L43
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$500, %edi
	call	ap_die
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$672, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$672, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-32(%rbp), %rax
	movl	128(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_make_method_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_request_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 616(%rax)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_create_request
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-32(%rbp), %rax
	movl	112(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	movq	-32(%rbp), %rax
	movl	64(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-32(%rbp), %rax
	movl	80(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 80(%rax)
	movq	-32(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-32(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-32(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-32(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	rename_original_env
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_make_method_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-32(%rbp), %rax
	movq	624(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 624(%rax)
	movq	-32(%rbp), %rax
	movl	336(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 336(%rax)
	movq	-32(%rbp), %rax
	movl	232(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-32(%rbp), %rax
	movl	340(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 340(%rax)
	movq	-32(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	312(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-32(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	movq	-32(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-8(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-8(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
.L45:
	movq	-8(%rbp), %rax
	movq	640(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
	movq	-32(%rbp), %rax
	movl	112(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_post_read_request
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L46
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
	movl	$0, %eax
	jmp	.L44
.L46:
	movq	-8(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	internal_internal_redirect, .-internal_internal_redirect
	.globl	ap_internal_fast_redirect
	.type	ap_internal_fast_redirect, @function
ap_internal_fast_redirect:
.LFB8:
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
	movl	60(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-16(%rbp), %rax
	movl	336(%rax), %eax
	testl	%eax, %eax
	je	.L48
	movq	-8(%rbp), %rax
	movl	336(%rax), %eax
	testl	%eax, %eax
	je	.L48
	movl	$1, %edx
	jmp	.L49
.L48:
	movl	$0, %edx
.L49:
	movq	-16(%rbp), %rax
	movl	%edx, 336(%rax)
	movq	-16(%rbp), %rax
	movl	340(%rax), %eax
	testl	%eax, %eax
	je	.L50
	movq	-8(%rbp), %rax
	movl	340(%rax), %eax
	testl	%eax, %eax
	je	.L50
	movl	$1, %edx
	jmp	.L51
.L50:
	movl	$0, %edx
.L51:
	movq	-16(%rbp), %rax
	movl	%edx, 340(%rax)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 176(%rax)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 352(%rax)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-8(%rbp), %rax
	movq	368(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 368(%rax)
	movq	-8(%rbp), %rax
	movq	376(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 376(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	392(%rdx), %rcx
	movq	%rcx, 392(%rax)
	movq	400(%rdx), %rcx
	movq	%rcx, 400(%rax)
	movq	408(%rdx), %rcx
	movq	%rcx, 408(%rax)
	movq	416(%rdx), %rcx
	movq	%rcx, 416(%rax)
	movq	424(%rdx), %rcx
	movq	%rcx, 424(%rax)
	movq	432(%rdx), %rcx
	movq	%rcx, 432(%rax)
	movq	440(%rdx), %rcx
	movq	%rcx, 440(%rax)
	movq	448(%rdx), %rcx
	movq	%rcx, 448(%rax)
	movq	456(%rdx), %rcx
	movq	%rcx, 456(%rax)
	movq	464(%rdx), %rcx
	movq	%rcx, 464(%rax)
	movq	472(%rdx), %rcx
	movq	%rcx, 472(%rax)
	movq	480(%rdx), %rcx
	movq	%rcx, 480(%rax)
	movq	488(%rdx), %rcx
	movq	%rcx, 488(%rax)
	movq	496(%rdx), %rcx
	movq	%rcx, 496(%rax)
	movq	504(%rdx), %rdx
	movq	%rdx, 504(%rax)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 296(%rax)
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 304(%rax)
	movq	-8(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	272(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	256(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	264(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-8(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-8(%rbp), %rax
	movq	640(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.L52
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_output_filter_handle
	jmp	.L53
.L52:
	movq	-16(%rbp), %rax
	movq	632(%rax), %rax
	movq	(%rax), %rdx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L53
	movq	-16(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, %rdi
	call	ap_remove_output_filter
	movq	-16(%rbp), %rax
	movq	632(%rax), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 632(%rax)
.L53:
	movq	-16(%rbp), %rax
	movq	640(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
	movq	-16(%rbp), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	update_r_in_filters
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_internal_fast_redirect, .-ap_internal_fast_redirect
	.globl	ap_internal_redirect
	.type	ap_internal_redirect, @function
ap_internal_redirect:
.LFB9:
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
	call	internal_internal_redirect
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L55
	jmp	.L54
.L55:
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_run_quick_handler
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L57
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L57
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_invoke_handler
	movl	%eax, -4(%rbp)
.L57:
	cmpl	$0, -4(%rbp)
	jne	.L58
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L54
.L58:
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_internal_redirect, .-ap_internal_redirect
	.globl	ap_internal_redirect_handler
	.type	ap_internal_redirect_handler, @function
ap_internal_redirect_handler:
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
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	internal_internal_redirect
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L60
	jmp	.L59
.L60:
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L62
	movq	-32(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L62:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_request_internal
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L63
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_invoke_handler
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L64
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
	jmp	.L59
.L64:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L59
.L63:
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
.L59:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_internal_redirect_handler, .-ap_internal_redirect_handler
	.globl	ap_allow_methods
	.type	ap_allow_methods, @function
ap_allow_methods:
.LFB11:
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
	je	.L66
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L66:
	movl	%esi, -220(%rbp)
	cmpl	$0, -220(%rbp)
	je	.L67
	movq	-216(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ap_clear_method_list
.L67:
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.L68
.L71:
	movq	-216(%rbp), %rax
	movq	152(%rax), %rax
	movq	-184(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_method_list_add
.L68:
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L69
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L70
.L69:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L70:
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.L71
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_allow_methods, .-ap_allow_methods
	.globl	ap_allow_standard_methods
	.type	ap_allow_standard_methods, @function
ap_allow_standard_methods:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L73
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L73:
	movl	%esi, -236(%rbp)
	cmpl	$0, -236(%rbp)
	je	.L74
	movq	-232(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	call	ap_clear_method_list
.L74:
	movq	$0, -184(%rbp)
	movl	$16, -216(%rbp)
	movl	$48, -212(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -208(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	jmp	.L75
.L78:
	movl	-188(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	orq	%rax, -184(%rbp)
.L75:
	movl	-216(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L76
	movq	-200(%rbp), %rax
	movl	-216(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -216(%rbp)
	jmp	.L77
.L76:
	movq	-208(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -208(%rbp)
.L77:
	movl	(%rax), %eax
	movl	%eax, -188(%rbp)
	cmpl	$-1, -188(%rbp)
	jne	.L78
	movq	-232(%rbp), %rax
	movq	152(%rax), %rax
	movq	-232(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	(%rdx), %rdx
	orq	-184(%rbp), %rdx
	movq	%rdx, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_allow_standard_methods, .-ap_allow_standard_methods
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

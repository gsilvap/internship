	.file	"http_protocol.c"
	.section	.rodata
.LC0:
	.string	"100 Continue"
.LC1:
	.string	"101 Switching Protocols"
.LC2:
	.string	"102 Processing"
.LC3:
	.string	"200 OK"
.LC4:
	.string	"201 Created"
.LC5:
	.string	"202 Accepted"
	.align 8
.LC6:
	.string	"203 Non-Authoritative Information"
.LC7:
	.string	"204 No Content"
.LC8:
	.string	"205 Reset Content"
.LC9:
	.string	"206 Partial Content"
.LC10:
	.string	"207 Multi-Status"
.LC11:
	.string	"300 Multiple Choices"
.LC12:
	.string	"301 Moved Permanently"
.LC13:
	.string	"302 Found"
.LC14:
	.string	"303 See Other"
.LC15:
	.string	"304 Not Modified"
.LC16:
	.string	"305 Use Proxy"
.LC17:
	.string	"306 unused"
.LC18:
	.string	"307 Temporary Redirect"
.LC19:
	.string	"400 Bad Request"
.LC20:
	.string	"401 Authorization Required"
.LC21:
	.string	"402 Payment Required"
.LC22:
	.string	"403 Forbidden"
.LC23:
	.string	"404 Not Found"
.LC24:
	.string	"405 Method Not Allowed"
.LC25:
	.string	"406 Not Acceptable"
	.align 8
.LC26:
	.string	"407 Proxy Authentication Required"
.LC27:
	.string	"408 Request Time-out"
.LC28:
	.string	"409 Conflict"
.LC29:
	.string	"410 Gone"
.LC30:
	.string	"411 Length Required"
.LC31:
	.string	"412 Precondition Failed"
.LC32:
	.string	"413 Request Entity Too Large"
.LC33:
	.string	"414 Request-URI Too Large"
.LC34:
	.string	"415 Unsupported Media Type"
	.align 8
.LC35:
	.string	"416 Requested Range Not Satisfiable"
.LC36:
	.string	"417 Expectation Failed"
.LC37:
	.string	"418 unused"
.LC38:
	.string	"419 unused"
.LC39:
	.string	"420 unused"
.LC40:
	.string	"421 unused"
.LC41:
	.string	"422 Unprocessable Entity"
.LC42:
	.string	"423 Locked"
.LC43:
	.string	"424 Failed Dependency"
.LC44:
	.string	"425 No code"
.LC45:
	.string	"426 Upgrade Required"
.LC46:
	.string	"500 Internal Server Error"
.LC47:
	.string	"501 Method Not Implemented"
.LC48:
	.string	"502 Bad Gateway"
	.align 8
.LC49:
	.string	"503 Service Temporarily Unavailable"
.LC50:
	.string	"504 Gateway Time-out"
	.align 8
.LC51:
	.string	"505 HTTP Version Not Supported"
.LC52:
	.string	"506 Variant Also Negotiates"
.LC53:
	.string	"507 Insufficient Storage"
.LC54:
	.string	"508 unused"
.LC55:
	.string	"509 unused"
.LC56:
	.string	"510 Not Extended"
	.align 64
	.type	status_lines, @object
	.size	status_lines, 456
status_lines:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC26
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.quad	.LC46
	.quad	.LC47
	.quad	.LC48
	.quad	.LC49
	.quad	.LC50
	.quad	.LC51
	.quad	.LC52
	.quad	.LC53
	.quad	.LC54
	.quad	.LC55
	.quad	.LC56
	.local	_hooks
	.comm	_hooks,8,8
.LC57:
	.string	"insert_error_filter"
	.text
	.globl	ap_hook_insert_error_filter
	.type	ap_hook_insert_error_filter, @function
ap_hook_insert_error_filter:
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
	movl	$.LC57, %edi
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
	movl	$.LC57, %edi
	call	apr_hook_debug_show
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_hook_insert_error_filter, .-ap_hook_insert_error_filter
	.globl	ap_hook_get_insert_error_filter
	.type	ap_hook_get_insert_error_filter, @function
ap_hook_get_insert_error_filter:
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
	.size	ap_hook_get_insert_error_filter, .-ap_hook_get_insert_error_filter
	.globl	ap_run_insert_error_filter
	.type	ap_run_insert_error_filter, @function
ap_run_insert_error_filter:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	je	.L6
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
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
.L8:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L9
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_run_insert_error_filter, .-ap_run_insert_error_filter
	.section	.rodata
.LC58:
	.string	"Connection"
.LC59:
	.string	"close"
.LC60:
	.string	"Content-Length"
.LC61:
	.string	"Transfer-Encoding"
.LC62:
	.string	"chunked"
.LC63:
	.string	"nokeepalive"
.LC64:
	.string	"Via"
.LC65:
	.string	"keep-alive"
.LC66:
	.string	"timeout=%d, max=%d"
.LC67:
	.string	"Keep-Alive"
.LC68:
	.string	"timeout=%d"
	.text
	.globl	ap_set_keepalive
	.type	ap_set_keepalive, @function
ap_set_keepalive:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	$0, -4(%rbp)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %edx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	76(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_token
	movl	%eax, -12(%rbp)
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$304, %eax
	je	.L12
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$204, %eax
	je	.L12
	movq	-40(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	jne	.L12
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L12
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC62, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_last_token
	testl	%eax, %eax
	jne	.L12
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jle	.L11
	movq	-40(%rbp), %rax
	movl	$1, 184(%rax)
.L12:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	124(%rax), %eax
	testl	%eax, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	jle	.L11
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L13
	cmpl	$0, -8(%rbp)
	jle	.L11
.L13:
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$400, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$408, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$411, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$413, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$414, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$500, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$503, %eax
	je	.L11
	movq	-40(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$501, %eax
	je	.L11
	cmpl	$0, -12(%rbp)
	jne	.L11
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$.LC59, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_token
	testl	%eax, %eax
	jne	.L11
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L14
	movq	-40(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC64, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L11
.L14:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movl	$.LC65, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_token
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L15
	movq	-40(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jle	.L11
.L15:
	call	ap_graceful_stop_signalled
	testl	%eax, %eax
	jne	.L11
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2, 68(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	76(%rax), %edx
	addl	$1, %edx
	movl	%edx, 76(%rax)
	cmpl	$0, -4(%rbp)
	je	.L16
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L17
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$.LC66, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L18
.L17:
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	112(%rax), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC68, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L18:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC67, %edx
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	apr_table_mergen
.L16:
	movl	$1, %eax
	jmp	.L19
.L11:
	cmpl	$0, -12(%rbp)
	jne	.L20
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC59, %edx
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	apr_table_mergen
.L20:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$1, %eax
	je	.L21
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movl	120(%rax), %eax
	testl	%eax, %eax
	je	.L21
	cmpl	$0, -8(%rbp)
	jne	.L21
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	76(%rax), %edx
	addl	$1, %edx
	movl	%edx, 76(%rax)
.L21:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 68(%rax)
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_set_keepalive, .-ap_set_keepalive
	.section	.rodata
.LC69:
	.string	"ETag"
.LC70:
	.string	"If-Match"
.LC71:
	.string	"If-Unmodified-Since"
.LC72:
	.string	"If-None-Match"
.LC73:
	.string	"Range"
.LC74:
	.string	"If-Modified-Since"
	.text
	.globl	ap_meets_conditions
	.type	ap_meets_conditions, @function
ap_meets_conditions:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movl	$0, -4(%rbp)
	movq	-104(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$199, %eax
	jle	.L23
	movq	-104(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jg	.L23
	movq	-104(%rbp), %rax
	movl	340(%rax), %eax
	testl	%eax, %eax
	je	.L24
.L23:
	movl	$0, %eax
	jmp	.L25
.L24:
	movq	-104(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	movq	-104(%rbp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-104(%rbp), %rax
	movq	176(%rax), %rax
	jmp	.L27
.L26:
	call	apr_time_now
.L27:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC70, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L28
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L29
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	je	.L30
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_list_item
	testl	%eax, %eax
	jne	.L29
.L30:
	movl	$412, %eax
	jmp	.L25
.L28:
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC71, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L29
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_date_parse_http
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L29
	movq	-56(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	-32(%rbp), %rax
	jge	.L29
	movl	$412, %eax
	jmp	.L25
.L29:
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC72, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.L31
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L32
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L33
	movl	$1, -4(%rbp)
	jmp	.L31
.L33:
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC73, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L35
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$87, %al
	je	.L36
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_list_item
	testl	%eax, %eax
	je	.L36
	movl	$1, %eax
	jmp	.L37
.L36:
	movl	$0, %eax
.L37:
	movl	%eax, -4(%rbp)
	jmp	.L31
.L35:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_list_item
	movl	%eax, -4(%rbp)
	jmp	.L31
.L32:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	je	.L38
	cmpq	$0, -16(%rbp)
	je	.L31
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_find_list_item
	testl	%eax, %eax
	je	.L31
.L38:
	movl	$412, %eax
	jmp	.L25
.L31:
	movq	-104(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L39
	cmpl	$0, -4(%rbp)
	jne	.L40
	cmpq	$0, -64(%rbp)
	jne	.L39
.L40:
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC74, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L39
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	apr_date_parse_http
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	96(%rax), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jl	.L41
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jg	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	movl	%eax, -4(%rbp)
.L39:
	cmpl	$0, -4(%rbp)
	je	.L43
	movl	$304, %eax
	jmp	.L25
.L43:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_meets_conditions, .-ap_meets_conditions
	.local	methods_registry
	.comm	methods_registry,8,8
	.data
	.align 4
	.type	cur_method_number, @object
	.size	cur_method_number, 4
cur_method_number:
	.long	27
	.text
	.type	register_one_method, @function
register_one_method:
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
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, (%rax)
	movq	methods_registry(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	$-1, %rdx
	movq	%rax, %rdi
	call	apr_hash_set
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	register_one_method, .-register_one_method
	.type	ap_method_registry_destroy, @function
ap_method_registry_destroy:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	$0, methods_registry(%rip)
	movl	$27, cur_method_number(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_method_registry_destroy, .-ap_method_registry_destroy
	.section	.rodata
.LC75:
	.string	"GET"
.LC76:
	.string	"PUT"
.LC77:
	.string	"POST"
.LC78:
	.string	"DELETE"
.LC79:
	.string	"CONNECT"
.LC80:
	.string	"OPTIONS"
.LC81:
	.string	"TRACE"
.LC82:
	.string	"PATCH"
.LC83:
	.string	"PROPFIND"
.LC84:
	.string	"PROPPATCH"
.LC85:
	.string	"MKCOL"
.LC86:
	.string	"COPY"
.LC87:
	.string	"MOVE"
.LC88:
	.string	"LOCK"
.LC89:
	.string	"UNLOCK"
.LC90:
	.string	"VERSION-CONTROL"
.LC91:
	.string	"CHECKOUT"
.LC92:
	.string	"UNCHECKOUT"
.LC93:
	.string	"CHECKIN"
.LC94:
	.string	"UPDATE"
.LC95:
	.string	"LABEL"
.LC96:
	.string	"REPORT"
.LC97:
	.string	"MKWORKSPACE"
.LC98:
	.string	"MKACTIVITY"
.LC99:
	.string	"BASELINE-CONTROL"
.LC100:
	.string	"MERGE"
	.text
	.globl	ap_method_registry_init
	.type	ap_method_registry_init, @function
ap_method_registry_init:
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
	movq	%rax, %rdi
	call	apr_hash_make
	movq	%rax, methods_registry(%rip)
	movq	-8(%rbp), %rax
	movl	$apr_pool_cleanup_null, %ecx
	movl	$ap_method_registry_destroy, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movl	$.LC75, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movl	$.LC76, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$2, %edx
	movl	$.LC77, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movl	$.LC78, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$4, %edx
	movl	$.LC79, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC81, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$7, %edx
	movl	$.LC82, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$9, %edx
	movl	$.LC84, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movl	$.LC85, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$.LC86, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$12, %edx
	movl	$.LC87, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$13, %edx
	movl	$.LC88, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$14, %edx
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$15, %edx
	movl	$.LC90, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$.LC91, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$17, %edx
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$18, %edx
	movl	$.LC93, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$19, %edx
	movl	$.LC94, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$20, %edx
	movl	$.LC95, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$21, %edx
	movl	$.LC96, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$22, %edx
	movl	$.LC97, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$23, %edx
	movl	$.LC98, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$24, %edx
	movl	$.LC99, %esi
	movq	%rax, %rdi
	call	register_one_method
	movq	-8(%rbp), %rax
	movl	$25, %edx
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	register_one_method
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_method_registry_init, .-ap_method_registry_init
	.section	.rodata
	.align 8
.LC101:
	.string	"Maximum new request methods %d reached while registering method %s."
.LC102:
	.string	"http_protocol.c"
	.text
	.globl	ap_method_register
	.type	ap_method_register, @function
ap_method_register:
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
	movq	methods_registry(%rip), %rax
	testq	%rax, %rax
	jne	.L49
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_method_registry_init
.L49:
	cmpq	$0, -32(%rbp)
	jne	.L50
	movl	$26, %eax
	jmp	.L51
.L50:
	movq	methods_registry(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	$-1, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L52
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L51
.L52:
	movl	cur_method_number(%rip), %eax
	cmpl	$62, %eax
	jle	.L53
	movq	-24(%rbp), %rax
	pushq	-32(%rbp)
	pushq	$62
	movl	$.LC101, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$488, %esi
	movl	$.LC102, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movl	$26, %eax
	jmp	.L51
.L53:
	movl	cur_method_number(%rip), %edx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	register_one_method
	movl	cur_method_number(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, cur_method_number(%rip)
	nop
.L51:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_method_register, .-ap_method_register
	.type	lookup_builtin_method, @function
lookup_builtin_method:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	cmpq	$13, %rax
	ja	.L55
	movq	.L57(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L57:
	.quad	.L56
	.quad	.L58
	.quad	.L59
	.quad	.L60
	.quad	.L61
	.quad	.L62
	.quad	.L63
	.quad	.L64
	.quad	.L65
	.quad	.L55
	.quad	.L55
	.quad	.L55
	.quad	.L66
	.quad	.L67
	.text
.L56:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$71, %eax
	je	.L69
	cmpl	$80, %eax
	jne	.L157
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$85, %al
	jne	.L71
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L71
	movl	$1, %eax
	jmp	.L73
.L71:
	movl	$-1, %eax
	jmp	.L73
.L69:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L74
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L74
	movl	$0, %eax
	jmp	.L73
.L74:
	movl	$-1, %eax
	jmp	.L73
.L157:
	movl	$-1, %eax
	jmp	.L73
.L58:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$67, %eax
	cmpl	$13, %eax
	ja	.L76
	movl	%eax, %eax
	movq	.L78(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L78:
	.quad	.L77
	.quad	.L76
	.quad	.L76
	.quad	.L76
	.quad	.L76
	.quad	.L79
	.quad	.L76
	.quad	.L76
	.quad	.L76
	.quad	.L80
	.quad	.L81
	.quad	.L76
	.quad	.L76
	.quad	.L82
	.text
.L79:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L83
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L83
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$68, %al
	jne	.L83
	movl	$0, %eax
	jmp	.L73
.L83:
	movl	$-1, %eax
	jmp	.L73
.L82:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	jne	.L85
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$83, %al
	jne	.L85
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L85
	movl	$2, %eax
	jmp	.L73
.L85:
	movl	$-1, %eax
	jmp	.L73
.L81:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	jne	.L87
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L87
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L87
	movl	$12, %eax
	jmp	.L73
.L87:
	movl	$-1, %eax
	jmp	.L73
.L80:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	jne	.L89
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$67, %al
	jne	.L89
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$75, %al
	jne	.L89
	movl	$13, %eax
	jmp	.L73
.L89:
	movl	$-1, %eax
	jmp	.L73
.L77:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	jne	.L91
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$80, %al
	jne	.L91
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$89, %al
	jne	.L91
	movl	$11, %eax
	jmp	.L73
.L91:
	movl	$-1, %eax
	jmp	.L73
.L76:
	movl	$-1, %eax
	jmp	.L73
.L59:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	cmpl	$19, %eax
	ja	.L93
	movl	%eax, %eax
	movq	.L95(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L95:
	.quad	.L94
	.quad	.L96
	.quad	.L97
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L93
	.quad	.L98
	.quad	.L93
	.quad	.L99
	.text
.L99:
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC82, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L100
	movl	$7, %eax
	jmp	.L73
.L100:
	movl	$-1, %eax
	jmp	.L73
.L98:
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L102
	movl	$25, %eax
	jmp	.L73
.L102:
	movl	$-1, %eax
	jmp	.L73
.L97:
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC85, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L104
	movl	$10, %eax
	jmp	.L73
.L104:
	movl	$-1, %eax
	jmp	.L73
.L96:
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC95, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L106
	movl	$20, %eax
	jmp	.L73
.L106:
	movl	$-1, %eax
	jmp	.L73
.L94:
	movq	-8(%rbp), %rax
	movl	$5, %edx
	movl	$.LC81, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L108
	movl	$6, %eax
	jmp	.L73
.L108:
	movl	$-1, %eax
	jmp	.L73
.L93:
	movl	$-1, %eax
	jmp	.L73
.L60:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$82, %eax
	je	.L111
	cmpl	$85, %eax
	je	.L112
	cmpl	$68, %eax
	je	.L113
	jmp	.L158
.L112:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$69, %eax
	je	.L115
	cmpl	$75, %eax
	jne	.L159
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC89, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L117
	movl	$14, %eax
	jmp	.L73
.L117:
	movl	$-1, %eax
	jmp	.L73
.L115:
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC94, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L119
	movl	$19, %eax
	jmp	.L73
.L119:
	movl	$-1, %eax
	jmp	.L73
.L159:
	movl	$-1, %eax
	jmp	.L73
.L111:
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC96, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L121
	movl	$21, %eax
	jmp	.L73
.L121:
	movl	$-1, %eax
	jmp	.L73
.L113:
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movl	$.LC78, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L123
	movl	$3, %eax
	jmp	.L73
.L123:
	movl	$-1, %eax
	jmp	.L73
.L158:
	movl	$-1, %eax
	jmp	.L73
.L61:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$79, %eax
	je	.L126
	cmpl	$80, %eax
	je	.L127
	cmpl	$72, %eax
	je	.L128
	jmp	.L160
.L127:
	movq	-8(%rbp), %rax
	movl	$7, %edx
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L129
	movl	$5, %eax
	jmp	.L73
.L129:
	movl	$-1, %eax
	jmp	.L73
.L126:
	movq	-8(%rbp), %rax
	movl	$7, %edx
	movl	$.LC79, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L131
	movl	$4, %eax
	jmp	.L73
.L131:
	movl	$-1, %eax
	jmp	.L73
.L128:
	movq	-8(%rbp), %rax
	movl	$7, %edx
	movl	$.LC93, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L133
	movl	$18, %eax
	jmp	.L73
.L133:
	movl	$-1, %eax
	jmp	.L73
.L160:
	movl	$-1, %eax
	jmp	.L73
.L62:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$67, %eax
	je	.L136
	cmpl	$80, %eax
	jne	.L161
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	$.LC83, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L138
	movl	$8, %eax
	jmp	.L73
.L138:
	movl	$-1, %eax
	jmp	.L73
.L136:
	movq	-8(%rbp), %rax
	movl	$8, %edx
	movl	$.LC91, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L140
	movl	$16, %eax
	jmp	.L73
.L140:
	movl	$-1, %eax
	jmp	.L73
.L161:
	movl	$-1, %eax
	jmp	.L73
.L63:
	movq	-8(%rbp), %rax
	movl	$9, %edx
	movl	$.LC84, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L142
	movl	$9, %eax
	jmp	.L73
.L142:
	movl	$-1, %eax
	jmp	.L73
.L64:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$77, %eax
	je	.L145
	cmpl	$85, %eax
	jne	.L162
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movl	$.LC92, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L147
	movl	$17, %eax
	jmp	.L73
.L147:
	movl	$-1, %eax
	jmp	.L73
.L145:
	movq	-8(%rbp), %rax
	movl	$10, %edx
	movl	$.LC98, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L149
	movl	$23, %eax
	jmp	.L73
.L149:
	movl	$-1, %eax
	jmp	.L73
.L162:
	movl	$-1, %eax
	jmp	.L73
.L65:
	movq	-8(%rbp), %rax
	movl	$11, %edx
	movl	$.LC97, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L151
	movl	$22, %eax
	jmp	.L73
.L151:
	movl	$-1, %eax
	jmp	.L73
.L66:
	movq	-8(%rbp), %rax
	movl	$15, %edx
	movl	$.LC90, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L153
	movl	$15, %eax
	jmp	.L73
.L153:
	movl	$-1, %eax
	jmp	.L73
.L67:
	movq	-8(%rbp), %rax
	movl	$16, %edx
	movl	$.LC99, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L155
	movl	$24, %eax
	jmp	.L73
.L155:
	movl	$-1, %eax
	jmp	.L73
.L55:
	movl	$-1, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	lookup_builtin_method, .-lookup_builtin_method
	.globl	ap_method_number_of
	.type	ap_method_number_of, @function
ap_method_number_of:
.LFB12:
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
	call	strlen
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	lookup_builtin_method
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	je	.L164
	movl	-8(%rbp), %eax
	jmp	.L165
.L164:
	movq	methods_registry(%rip), %rax
	testq	%rax, %rax
	je	.L166
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	methods_registry(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_hash_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L166
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L165
.L166:
	movl	$26, %eax
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_method_number_of, .-ap_method_number_of
	.globl	ap_method_name_of
	.type	ap_method_name_of, @function
ap_method_name_of:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	methods_registry(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_first
	movq	%rax, -8(%rbp)
	jmp	.L168
.L171:
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_hash_this
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-44(%rbp), %eax
	jne	.L169
	movq	-16(%rbp), %rax
	jmp	.L170
.L169:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_next
	movq	%rax, -8(%rbp)
.L168:
	cmpq	$0, -8(%rbp)
	jne	.L171
	movl	$0, %eax
.L170:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_method_name_of, .-ap_method_name_of
	.globl	ap_index_of_response
	.type	ap_index_of_response, @function
ap_index_of_response:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	cmpl	$99, -20(%rbp)
	jg	.L173
	movl	$46, %eax
	jmp	.L174
.L173:
	movl	$0, -4(%rbp)
	jmp	.L175
.L178:
	subl	$100, -20(%rbp)
	cmpl	$99, -20(%rbp)
	jg	.L176
	movl	-4(%rbp), %eax
	cltq
	movl	shortcut.10033(,%rax,4), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	shortcut.10033(,%rax,4), %eax
	cmpl	-8(%rbp), %eax
	jle	.L177
	movl	-8(%rbp), %eax
	jmp	.L174
.L177:
	movl	$46, %eax
	jmp	.L174
.L176:
	addl	$1, -4(%rbp)
.L175:
	cmpl	$4, -4(%rbp)
	jle	.L178
	movl	$46, %eax
.L174:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_index_of_response, .-ap_index_of_response
	.globl	ap_get_status_line
	.type	ap_get_status_line, @function
ap_get_status_line:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	cltq
	movq	status_lines(,%rax,8), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	ap_get_status_line, .-ap_get_status_line
	.section	.rodata
.LC103:
	.string	"HEAD"
.LC104:
	.string	","
	.text
	.type	make_allow, @function
make_allow:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %edx
	movl	$10, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, -32(%rbp)
	movq	methods_registry(%rip), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_hash_first
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.L182
.L184:
	leaq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_hash_this
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L183
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L183
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC103, (%rax)
.L183:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_hash_next
	movq	%rax, -16(%rbp)
.L182:
	cmpq	$0, -16(%rbp)
	jne	.L184
	movq	-40(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L185
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	$.LC81, (%rax)
.L185:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_pstrcat
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	andl	$67108864, %eax
	testq	%rax, %rax
	je	.L186
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L186
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L187
.L188:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC104, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	addl	$1, -20(%rbp)
.L187:
	movq	-88(%rbp), %rax
	movq	152(%rax), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-20(%rbp), %eax
	jg	.L188
.L186:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	make_allow, .-make_allow
	.section	.rodata
.LC105:
	.string	"Allow"
	.text
	.globl	ap_send_http_options
	.type	ap_send_http_options, @function
ap_send_http_options:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L191
	movl	$-1, %eax
	jmp	.L192
.L191:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	make_allow
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC105, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$0, %eax
.L192:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_send_http_options, .-ap_send_http_options
	.globl	ap_set_content_type
	.type	ap_set_content_type, @function
ap_set_content_type:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L194
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	jmp	.L193
.L194:
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L196
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L193
.L196:
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 280(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_add_output_filters_by_type
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_set_content_type, .-ap_set_content_type
	.type	add_optional_notes, @function
add_optional_notes:
.LFB19:
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
	movq	272(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L198
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	jmp	.L199
.L198:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L199:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	add_optional_notes, .-add_optional_notes
	.section	.rodata
.LC106:
	.string	"\">here</a>.</p>\n"
	.align 8
.LC107:
	.string	"<p>The document has moved <a href=\""
	.align 8
.LC108:
	.string	"<p>The answer to your request is located <a href=\""
	.align 8
.LC109:
	.string	"<br />\nYou will need to configure your client to use that proxy.</p>\n"
	.align 8
.LC110:
	.string	"<p>This resource is only accessible through the proxy\n"
	.align 8
.LC111:
	.string	"<p>This server could not verify that you\nare authorized to access the document\nrequested.  Either you supplied the wrong\ncredentials (e.g., bad password), or your\nbrowser doesn't understand how to supply\nthe credentials required.</p>\n"
.LC112:
	.string	"</p>\n"
.LC113:
	.string	"error-notes"
	.align 8
.LC114:
	.string	"<p>Your browser sent a request that this server could not understand.<br />\n"
.LC115:
	.string	"\non this server.</p>\n"
	.align 8
.LC116:
	.string	"<p>You don't have permission to access "
	.align 8
.LC117:
	.string	" was not found on this server.</p>\n"
.LC118:
	.string	"<p>The requested URL "
.LC119:
	.string	".</p>\n"
.LC120:
	.string	" is not allowed for the URL "
.LC121:
	.string	"<p>The requested method "
	.align 8
.LC122:
	.string	" could not be found on this server.</p>\n"
	.align 8
.LC123:
	.string	"<p>An appropriate representation of the requested resource "
.LC124:
	.string	""
.LC125:
	.string	"variant-list"
	.align 8
.LC126:
	.string	" requires a valid Content-length.<br />\n"
	.align 8
.LC127:
	.string	"<p>A request of the requested method "
.LC128:
	.string	" evaluated to false.</p>\n"
	.align 8
.LC129:
	.string	"<p>The precondition on the request for the URL "
.LC130:
	.string	" not supported.<br />\n"
.LC131:
	.string	" to "
.LC132:
	.string	"<p>"
	.align 8
.LC133:
	.string	"<p>The proxy server received an invalid\r\nresponse from an upstream server.<br />\r\n"
	.align 8
.LC134:
	.string	"\n</pre>\nis itself a negotiable resource. This indicates a configuration error.</p>\n"
	.align 8
.LC135:
	.string	"<p>A variant for the requested resource\n<pre>\n"
	.align 8
.LC136:
	.string	"<p>Server timeout waiting for the HTTP request from the client.</p>\n"
	.align 8
.LC137:
	.string	"<br />\nis no longer available on this server and there is no forwarding address.\nPlease remove all references to this resource.</p>\n"
	.align 8
.LC138:
	.string	"<p>The requested resource<br />"
	.align 8
.LC139:
	.string	"does not allow request data with "
.LC140:
	.string	"<br />\n"
.LC141:
	.string	"The requested resource<br />"
	.align 8
.LC142:
	.string	" requests, or the amount of data provided in\nthe request exceeds the capacity limit.\n"
	.align 8
.LC143:
	.string	"<p>The requested URL's length exceeds the capacity\nlimit for this server.<br />\n"
	.align 8
.LC144:
	.string	"<p>The supplied request data is not in a format\nacceptable for processing by this resource.</p>\n"
	.align 8
.LC145:
	.string	"<p>None of the range-specifier values in the Range\nrequest-header field overlap the current extent\nof the selected resource.</p>\n"
.LC146:
	.string	"Expect"
	.align 8
.LC147:
	.string	"\n</pre>\nbut we only allow the 100-continue expectation.</p>\n"
	.align 8
.LC148:
	.string	"<p>The expectation given in the Expect request-header\nfield could not be met by this server.</p>\n<p>The client sent<pre>\n    Expect: "
	.align 8
.LC149:
	.string	"<p>The server understands the media type of the\nrequest entity, but was unable to process the\ncontained instructions.</p>\n"
	.align 8
.LC150:
	.string	"<p>The requested resource is currently locked.\nThe lock must be released or proper identification\ngiven before the method can be applied.</p>\n"
	.align 8
.LC151:
	.string	"<p>The method could not be performed on the resource\nbecause the requested action depended on another\naction and that other action failed.</p>\n"
	.align 8
.LC152:
	.string	"<p>The requested resource can only be retrieved\nusing SSL.  The server is willing to upgrade the current\nconnection to SSL, but your client doesn't support it.\nEither upgrade your client, or try requesting the page\nusing https://\n"
	.align 8
.LC153:
	.string	"<p>The method could not be performed on the resource\nbecause the server is unable to store the\nrepresentation needed to successfully complete the\nrequest.  There is insufficient free space left in\nyour storage allocation.</p>\n"
	.align 8
.LC154:
	.string	"<p>The server is temporarily unable to service your\nrequest due to maintenance downtime or capacity\nproblems. Please try again later.</p>\n"
	.align 8
.LC155:
	.string	"<p>The proxy server did not receive a timely response\nfrom the upstream server.</p>\n"
	.align 8
.LC156:
	.string	"<p>A mandatory extension policy in the request is not\naccepted by the server for this resource.</p>\n"
.LC157:
	.string	"verbose-error-to"
.LC158:
	.string	"*"
.LC159:
	.string	"<p />\n"
	.align 8
.LC160:
	.string	" and inform them of the time the error occurred,\nand anything you might have done that may have\ncaused the error.</p>\n<p>More information about this error may be available\nin the server error log.</p>\n"
	.align 8
.LC161:
	.string	"<p>The server encountered an internal error or\nmisconfiguration and was unable to complete\nyour request.</p>\n<p>Please contact the server administrator,\n "
	.text
	.type	get_canned_error_string, @function
get_canned_error_string:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-52(%rbp), %eax
	subl	$300, %eax
	cmpl	$210, %eax
	ja	.L202
	movl	%eax, %eax
	movq	.L204(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L204:
	.quad	.L203
	.quad	.L205
	.quad	.L205
	.quad	.L206
	.quad	.L202
	.quad	.L207
	.quad	.L202
	.quad	.L205
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L208
	.quad	.L209
	.quad	.L202
	.quad	.L210
	.quad	.L211
	.quad	.L212
	.quad	.L213
	.quad	.L209
	.quad	.L214
	.quad	.L202
	.quad	.L215
	.quad	.L216
	.quad	.L217
	.quad	.L218
	.quad	.L219
	.quad	.L220
	.quad	.L221
	.quad	.L222
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L223
	.quad	.L224
	.quad	.L225
	.quad	.L202
	.quad	.L226
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L202
	.quad	.L227
	.quad	.L228
	.quad	.L229
	.quad	.L230
	.quad	.L202
	.quad	.L231
	.quad	.L232
	.quad	.L202
	.quad	.L202
	.quad	.L233
	.text
.L205:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC106, %ecx
	movl	$.LC107, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L206:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC106, %ecx
	movl	$.LC108, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L207:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC109, %ecx
	movl	$.LC110, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L209:
	movl	$.LC111, %eax
	jmp	.L234
.L208:
	movq	-64(%rbp), %rax
	movl	$.LC112, %ecx
	movl	$.LC113, %edx
	movl	$.LC114, %esi
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L210:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC115, %ecx
	movl	$.LC116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L211:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC117, %ecx
	movl	$.LC118, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L212:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-24(%rbp), %rax
	pushq	$0
	movl	$.LC119, %r9d
	movq	%rbx, %r8
	movl	$.LC120, %ecx
	movl	$.LC121, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L234
.L213:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC122, %ecx
	movl	$.LC123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$.LC124, %ecx
	movl	$.LC125, %edx
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L203:
	movq	-64(%rbp), %rax
	movl	$.LC124, %ecx
	movl	$.LC125, %edx
	movl	$.LC124, %esi
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L216:
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC126, %ecx
	movl	$.LC127, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$.LC112, %ecx
	movl	$.LC113, %edx
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L217:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC128, %ecx
	movl	$.LC129, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L227:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-24(%rbp), %rax
	pushq	$0
	movl	$.LC130, %r9d
	movq	%rbx, %r8
	movl	$.LC131, %ecx
	movl	$.LC132, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$.LC112, %ecx
	movl	$.LC113, %edx
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L228:
	movq	$.LC133, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$.LC112, %ecx
	movl	$.LC113, %edx
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L231:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC134, %ecx
	movl	$.LC135, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L214:
	movl	$.LC136, %eax
	jmp	.L234
.L215:
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC137, %ecx
	movl	$.LC138, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L218:
	movq	-64(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	pushq	$0
	pushq	$.LC142
	movq	%rbx, %r9
	movl	$.LC139, %r8d
	movl	$.LC140, %ecx
	movl	$.LC141, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L234
.L219:
	movq	$.LC143, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	$.LC112, %ecx
	movl	$.LC113, %edx
	movq	%rax, %rdi
	call	add_optional_notes
	jmp	.L234
.L220:
	movl	$.LC144, %eax
	jmp	.L234
.L221:
	movl	$.LC145, %eax
	jmp	.L234
.L222:
	movq	-64(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC146, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC147, %ecx
	movl	$.LC148, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L223:
	movl	$.LC149, %eax
	jmp	.L234
.L224:
	movl	$.LC150, %eax
	jmp	.L234
.L225:
	movl	$.LC151, %eax
	jmp	.L234
.L226:
	movl	$.LC152, %eax
	jmp	.L234
.L232:
	movl	$.LC153, %eax
	jmp	.L234
.L229:
	movl	$.LC154, %eax
	jmp	.L234
.L230:
	movl	$.LC155, %eax
	jmp	.L234
.L233:
	movl	$.LC156, %eax
	jmp	.L234
.L202:
	movq	-64(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC113, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L235
	movq	-64(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC157, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L235
	movq	-48(%rbp), %rax
	movl	$.LC158, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L235
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC159, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L234
.L235:
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC160, %ecx
	movl	$.LC161, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
.L234:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	get_canned_error_string, .-get_canned_error_string
	.section	.rodata
.LC162:
	.string	"Location"
.LC163:
	.string	"suppress-error-charset"
.LC164:
	.string	"text/html"
.LC165:
	.string	"text/html; charset=iso-8859-1"
.LC166:
	.string	"</h1>\n"
.LC167:
	.string	"</title>\n</head><body>\n<h1>"
	.align 8
.LC168:
	.string	"<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n<html><head>\n<title>"
	.align 8
.LC169:
	.string	"\nerror was encountered while trying to use an ErrorDocument to handle the request.</p>\n"
.LC170:
	.string	"<p>Additionally, a "
.LC171:
	.string	"<hr>\n"
.LC172:
	.string	"</body></html>\n"
	.text
	.globl	ap_send_error_response
	.type	ap_send_error_response, @function
ap_send_error_response:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	-72(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	movl	%eax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC162, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, 664(%rax)
	movq	-72(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_insert_error_filter
	cmpq	$0, -8(%rbp)
	jne	.L237
	movq	-72(%rbp), %rax
	movq	256(%rax), %rax
	movl	$.LC162, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
.L237:
	cmpl	$304, -20(%rbp)
	jne	.L238
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L236
.L238:
	cmpl	$204, -20(%rbp)
	jne	.L240
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L236
.L240:
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L241
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 256(%rax)
	movq	-72(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_clear
	cmpl	$299, -20(%rbp)
	jle	.L242
	cmpl	$399, -20(%rbp)
	jle	.L243
.L242:
	cmpl	$201, -20(%rbp)
	jne	.L244
.L243:
	cmpq	$0, -8(%rbp)
	je	.L245
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L245
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC162, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L244
.L245:
	movq	$.LC124, -8(%rbp)
.L244:
	movq	-72(%rbp), %rax
	movq	$0, 304(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 296(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-72(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC163, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L246
	movq	-72(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$1, 32(%rax)
	movq	-72(%rbp), %rax
	movl	$.LC164, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	jmp	.L247
.L246:
	movq	-72(%rbp), %rax
	movl	$.LC165, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
.L247:
	cmpl	$405, -20(%rbp)
	je	.L248
	cmpl	$501, -20(%rbp)
	jne	.L249
.L248:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	make_allow
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC105, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L249:
	movq	-72(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L241
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L236
.L241:
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_response_code_string
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L250
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L250
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
	jmp	.L236
.L250:
	movl	-24(%rbp), %eax
	cltq
	movq	status_lines(,%rax,8), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	je	.L251
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$4, %rax
	jbe	.L251
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L251
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L251
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L251
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L251
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L251
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -16(%rbp)
.L251:
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	subq	$8, %rsp
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	pushq	$0
	movl	$.LC166, %r9d
	movq	%rcx, %r8
	movl	$.LC167, %ecx
	movl	$.LC168, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-20(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	get_canned_error_string
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	cmpl	$0, -76(%rbp)
	je	.L252
	movl	-76(%rbp), %eax
	movl	%eax, %edi
	call	ap_index_of_response
	cltq
	movq	status_lines(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC169, %ecx
	movl	$.LC170, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L252:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC171, %edi
	call	ap_psignature
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movl	$.LC172, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	ap_finalize_request_protocol
.L236:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_send_error_response, .-ap_send_error_response
	.globl	ap_make_method_list
	.type	ap_make_method_list, @function
ap_make_method_list:
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
	movq	-24(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	$8, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_make_method_list, .-ap_make_method_list
	.globl	ap_copy_method_list
	.type	ap_copy_method_list, @function
ap_copy_method_list:
.LFB23:
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
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L256
.L257:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	addl	$1, -4(%rbp)
.L256:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L257
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_copy_method_list, .-ap_copy_method_list
	.globl	ap_method_in_list
	.type	ap_method_in_list, @function
ap_method_in_list:
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
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, -8(%rbp)
	cmpl	$26, -8(%rbp)
	je	.L259
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	jmp	.L260
.L259:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L261
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L262
.L261:
	movl	$0, %eax
	jmp	.L260
.L262:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L263
.L265:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L264
	movl	$1, %eax
	jmp	.L260
.L264:
	addl	$1, -4(%rbp)
.L263:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L265
	movl	$0, %eax
.L260:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_method_in_list, .-ap_method_in_list
	.globl	ap_method_list_add
	.type	ap_method_list_add, @function
ap_method_list_add:
.LFB25:
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
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	orq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$26, -8(%rbp)
	je	.L267
	jmp	.L266
.L267:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L269
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L270
.L272:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L271
	jmp	.L266
.L271:
	addl	$1, -4(%rbp)
.L270:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L272
.L269:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
.L266:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_method_list_add, .-ap_method_list_add
	.globl	ap_method_list_remove
	.type	ap_method_list_remove, @function
ap_method_list_remove:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %ecx
	salq	%cl, %rsi
	movq	%rsi, %rax
	notq	%rax
	orq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
	cmpl	$26, -36(%rbp)
	je	.L274
	jmp	.L273
.L274:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	je	.L273
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, %ebx
	jmp	.L276
.L280:
	movslq	%ebx, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L277
	movl	%ebx, %r13d
	leal	1(%rbx), %r12d
	jmp	.L278
.L279:
	movslq	%r13d, %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movslq	%r12d, %rax
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	addl	$1, %r13d
	addl	$1, %r12d
.L278:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	%r12d, %eax
	jg	.L279
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	movl	%edx, 12(%rax)
	jmp	.L276
.L277:
	addl	$1, %ebx
.L276:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	cmpl	%ebx, %eax
	jg	.L280
.L273:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	ap_method_list_remove, .-ap_method_list_remove
	.globl	ap_clear_method_list
	.type	ap_clear_method_list, @function
ap_clear_method_list:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, 12(%rax)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_clear_method_list, .-ap_clear_method_list
	.data
	.align 16
	.type	shortcut.10033, @object
	.size	shortcut.10033, 24
shortcut.10033:
	.long	0
	.long	3
	.long	11
	.long	19
	.long	46
	.long	57
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

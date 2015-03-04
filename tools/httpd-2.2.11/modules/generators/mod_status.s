	.file	"mod_status.c"
	.globl	status_module
	.section	.rodata
.LC0:
	.string	"mod_status.c"
	.data
	.align 64
	.type	status_module, @object
	.size	status_module, 104
status_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	status_module_cmds
	.quad	register_hooks
	.local	server_limit
	.comm	server_limit,4,4
	.local	thread_limit
	.comm	thread_limit,4,4
	.section	.rodata
.LC1:
	.string	"status_hook"
	.text
	.globl	ap_run_status_hook
	.type	ap_run_status_hook, @function
ap_run_status_hook:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$.LC1, %edi
	call	apr_optional_hook_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L6:
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
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L5
	cmpl	$-1, -28(%rbp)
	je	.L5
	movl	-28(%rbp), %eax
	jmp	.L3
.L5:
	addl	$1, -4(%rbp)
.L4:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L6
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_run_status_hook, .-ap_run_status_hook
	.local	child_pid
	.comm	child_pid,4,4
	.type	set_extended_status, @function
set_extended_status:
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
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	jmp	.L9
.L8:
	movl	-36(%rbp), %eax
	movl	%eax, ap_extended_status(%rip)
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_extended_status, .-set_extended_status
	.type	set_reqtail, @function
set_reqtail:
.LFB4:
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
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L11
	movq	-8(%rbp), %rax
	jmp	.L12
.L11:
	movl	-36(%rbp), %eax
	movl	%eax, ap_mod_status_reqtail(%rip)
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	set_reqtail, .-set_reqtail
	.section	.rodata
.LC2:
	.string	"ExtendedStatus"
	.align 8
.LC3:
	.string	"\"On\" to enable extended status information, \"Off\" to disable"
.LC4:
	.string	"SeeRequestTail"
	.align 8
.LC5:
	.string	"For verbose requests, \"On\" to see the last 63 chars of the request, \"Off\" (default) to see the first 63 in extended status display"
	.align 64
	.type	status_module_cmds, @object
	.size	status_module_cmds, 120
status_module_cmds:
	.quad	.LC2
	.quad	set_extended_status
	.quad	0
	.long	128
	.long	5
	.quad	.LC3
	.quad	.LC4
	.quad	set_reqtail
	.quad	0
	.long	128
	.long	5
	.quad	.LC5
	.quad	0
	.zero	32
.LC6:
	.string	"%d B"
.LC8:
	.string	"%.1f kB"
.LC10:
	.string	"%.1f MB"
.LC12:
	.string	"%.1f GB"
	.text
	.type	format_byte_out, @function
format_byte_out:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$5119, -16(%rbp)
	jg	.L14
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	jmp	.L13
.L14:
	cmpq	$524287, -16(%rbp)
	jg	.L16
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-16(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
	jmp	.L13
.L16:
	cmpq	$536870911, -16(%rbp)
	jg	.L17
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-16(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
	jmp	.L13
.L17:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-16(%rbp), %xmm0
	movss	.LC11(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	format_byte_out, .-format_byte_out
	.section	.rodata
.LC13:
	.string	"%d kB"
	.text
	.type	format_kbyte_out, @function
format_kbyte_out:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$1023, -16(%rbp)
	jg	.L19
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	jmp	.L18
.L19:
	cmpq	$1048575, -16(%rbp)
	jg	.L21
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-16(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
	jmp	.L18
.L21:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-16(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	format_kbyte_out, .-format_kbyte_out
	.section	.rodata
.LC14:
	.string	""
.LC15:
	.string	"s"
.LC16:
	.string	" %d day%s"
.LC17:
	.string	" %d hour%s"
.LC18:
	.string	" %d minute%s"
.LC19:
	.string	" %d second%s"
	.text
	.type	show_time, @function
show_time:
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
	movq	-32(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	leaq	0(,%rdx,4), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	leaq	0(,%rdx,4), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$-8608480567731124087, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	leaq	(%rdx,%rcx), %rax
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$3074457345618258603, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, -12(%rbp)
	movq	-32(%rbp), %rcx
	movabsq	$3074457345618258603, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L23
	cmpl	$1, -16(%rbp)
	jne	.L24
	movl	$.LC14, %ecx
	jmp	.L25
.L24:
	movl	$.LC15, %ecx
.L25:
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L23:
	cmpl	$0, -12(%rbp)
	je	.L26
	cmpl	$1, -12(%rbp)
	jne	.L27
	movl	$.LC14, %ecx
	jmp	.L28
.L27:
	movl	$.LC15, %ecx
.L28:
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L26:
	cmpl	$0, -8(%rbp)
	je	.L29
	cmpl	$1, -8(%rbp)
	jne	.L30
	movl	$.LC14, %ecx
	jmp	.L31
.L30:
	movl	$.LC15, %ecx
.L31:
	movl	-8(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L29:
	cmpl	$0, -4(%rbp)
	je	.L22
	cmpl	$1, -4(%rbp)
	jne	.L33
	movl	$.LC14, %ecx
	jmp	.L34
.L33:
	movl	$.LC15, %ecx
.L34:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	show_time, .-show_time
	.section	.rodata
.LC20:
	.string	"refresh"
.LC21:
	.string	"Refresh"
.LC22:
	.string	"notable"
.LC23:
	.string	"auto"
	.align 64
	.type	status_options, @object
	.size	status_options, 96
status_options:
	.long	0
	.zero	4
	.quad	.LC20
	.quad	.LC21
	.long	1
	.zero	4
	.quad	.LC22
	.quad	0
	.long	2
	.zero	4
	.quad	.LC23
	.quad	0
	.long	-1
	.zero	4
	.quad	0
	.quad	0
	.local	status_flags
	.comm	status_flags,11,1
.LC24:
	.string	"application/x-httpd-status"
.LC25:
	.string	"server-status"
	.align 8
.LC26:
	.string	"Server status unavailable in inetd mode"
.LC27:
	.string	"text/html; charset=ISO-8859-1"
	.align 8
.LC28:
	.string	"text/plain; charset=ISO-8859-1"
	.align 8
.LC29:
	.string	"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">\n<html><head>\n<title>Apache Status</title>\n</head><body>\n"
.LC30:
	.string	"<h1>Apache Server Status for "
.LC31:
	.string	"</h1>\n\n"
.LC32:
	.string	"</dt>\n"
.LC33:
	.string	"<dl><dt>Server Version: "
.LC34:
	.string	"\n</dt></dl><hr /><dl>\n"
.LC35:
	.string	"<dt>Server Built: "
.LC36:
	.string	"%A, %d-%b-%Y %H:%M:%S %Z"
.LC37:
	.string	"<dt>Current Time: "
.LC38:
	.string	"<dt>Restart Time: "
	.align 8
.LC39:
	.string	"<dt>Parent Server Generation: %d</dt>\n"
.LC40:
	.string	"<dt>Server uptime: "
	.align 8
.LC41:
	.string	"Total Accesses: %lu\nTotal kBytes: %ld\n"
.LC43:
	.string	"CPULoad: %g\n"
.LC44:
	.string	"Uptime: %ld\n"
.LC45:
	.string	"ReqPerSec: %g\n"
.LC46:
	.string	"BytesPerSec: %g\n"
.LC47:
	.string	"BytesPerReq: %g\n"
	.align 8
.LC48:
	.string	"<dt>Total accesses: %lu - Total Traffic: "
	.align 8
.LC49:
	.string	"<dt>CPU Usage: u%g s%g cu%g cs%g"
.LC50:
	.string	" - %.3g%% CPU load</dt>\n"
.LC51:
	.string	"<dt>%.3g requests/sec - "
.LC53:
	.string	"/second - "
.LC54:
	.string	"/request"
	.align 8
.LC55:
	.string	"<dt>%d requests currently being processed, %d idle workers</dt>\n"
	.align 8
.LC56:
	.string	"BusyWorkers: %d\nIdleWorkers: %d\n"
.LC57:
	.string	"</dl><pre>"
.LC58:
	.string	"Scoreboard: "
.LC59:
	.string	"\n"
.LC60:
	.string	"</pre>\n"
.LC61:
	.string	"<p>Scoreboard Key:<br />\n"
	.align 8
.LC62:
	.string	"\"<b><code>_</code></b>\" Waiting for Connection, \n"
	.align 8
.LC63:
	.string	"\"<b><code>S</code></b>\" Starting up, \n"
	.align 8
.LC64:
	.string	"\"<b><code>R</code></b>\" Reading Request,<br />\n"
	.align 8
.LC65:
	.string	"\"<b><code>W</code></b>\" Sending Reply, \n"
	.align 8
.LC66:
	.string	"\"<b><code>K</code></b>\" Keepalive (read), \n"
	.align 8
.LC67:
	.string	"\"<b><code>D</code></b>\" DNS Lookup,<br />\n"
	.align 8
.LC68:
	.string	"\"<b><code>C</code></b>\" Closing connection, \n"
	.align 8
.LC69:
	.string	"\"<b><code>L</code></b>\" Logging, \n"
	.align 8
.LC70:
	.string	"\"<b><code>G</code></b>\" Gracefully finishing,<br /> \n"
	.align 8
.LC71:
	.string	"\"<b><code>I</code></b>\" Idle cleanup of worker, \n"
	.align 8
.LC72:
	.string	"\"<b><code>.</code></b>\" Open slot with no current process</p>\n"
.LC73:
	.string	"<p />\n"
.LC74:
	.string	"PID Key: <br />\n"
.LC75:
	.string	"<pre>\n"
.LC76:
	.string	"   %d in state: %c "
.LC77:
	.string	","
	.align 8
.LC78:
	.string	"<hr /><h2>Server Details</h2>\n\n"
	.align 8
.LC79:
	.string	"\n\n<table border=\"0\"><tr><th>Srv</th><th>PID</th><th>Acc</th><th>M</th><th>CPU\n</th><th>SS</th><th>Req</th><th>Conn</th><th>Child</th><th>Slot</th><th>Client</th><th>VHost</th><th>Request</th></tr>\n\n"
	.align 8
.LC80:
	.string	"<b>Server %d-%d</b> (-): %d|%lu|%lu ["
	.align 8
.LC81:
	.string	"<b>Server %d-%d</b> (%d): %d|%lu|%lu ["
.LC82:
	.string	"Ready"
.LC83:
	.string	"Starting"
.LC84:
	.string	"<b>Read</b>"
.LC85:
	.string	"<b>Write</b>"
.LC86:
	.string	"<b>Keepalive</b>"
.LC87:
	.string	"<b>Logging</b>"
.LC88:
	.string	"<b>DNS lookup</b>"
.LC89:
	.string	"<b>Closing</b>"
.LC90:
	.string	"Dead"
.LC91:
	.string	"Graceful"
.LC92:
	.string	"Dying"
.LC93:
	.string	"?STATE?"
	.align 8
.LC94:
	.string	"] u%g s%g cu%g cs%g\n %ld %ld ("
.LC95:
	.string	"|"
.LC96:
	.string	")\n"
	.align 8
.LC97:
	.string	" <i>%s {%s}</i> <b>[%s]</b><br />\n\n"
	.align 8
.LC98:
	.string	"<tr><td><b>%d-%d</b></td><td>-</td><td>%d/%lu/%lu"
	.align 8
.LC99:
	.string	"<tr><td><b>%d-%d</b></td><td>%d</td><td>%d/%lu/%lu"
.LC100:
	.string	"</td><td>_"
.LC101:
	.string	"</td><td><b>S</b>"
.LC102:
	.string	"</td><td><b>R</b>"
.LC103:
	.string	"</td><td><b>W</b>"
.LC104:
	.string	"</td><td><b>K</b>"
.LC105:
	.string	"</td><td><b>L</b>"
.LC106:
	.string	"</td><td><b>D</b>"
.LC107:
	.string	"</td><td><b>C</b>"
.LC108:
	.string	"</td><td>."
.LC109:
	.string	"</td><td>G"
.LC110:
	.string	"</td><td>I"
.LC111:
	.string	"</td><td>?"
	.align 8
.LC112:
	.string	"\n</td><td>%.2f</td><td>%ld</td><td>%ld"
	.align 8
.LC113:
	.string	"</td><td>%-1.1f</td><td>%-2.2f</td><td>%-2.2f\n"
	.align 8
.LC114:
	.string	"</td><td>?</td><td nowrap>?</td><td nowrap>..reading.. </td></tr>\n\n"
	.align 8
.LC115:
	.string	"</td><td>%s</td><td nowrap>%s</td><td nowrap>%s</td></tr>\n\n"
	.align 8
.LC116:
	.ascii	"</table>\n <hr /> <table>\n <tr><th>Srv</th><td>Child Server"
	.ascii	" number - generation</td></tr>\n <tr><th>PID</th><td>OS proc"
	.ascii	"ess ID</td></tr>\n <tr><th>Acc</th><td>Number of accesses th"
	.ascii	"is connection / this child / this slot</td></tr>\n <tr><th>M"
	.ascii	"</th><td>Mode of operation</td></tr>\n<tr><th>CPU</th><td>CP"
	.ascii	"U usage, number of seconds</td></tr>\n<tr><th>SS</th><td>Sec"
	.ascii	"onds since beginning of most recent request</td></tr>\n <tr>"
	.ascii	"<th>Req</th><td>Milliseconds required t"
	.string	"o process most recent request</td></tr>\n <tr><th>Conn</th><td>Kilobytes transferred this connection</td></tr>\n <tr><th>Child</th><td>Megabytes transferred this child</td></tr>\n <tr><th>Slot</th><td>Total megabytes transferred this slot</td></tr>\n </table>\n"
	.align 8
.LC117:
	.string	"<hr />To obtain a full report with current status information you need to use the <code>ExtendedStatus On</code> directive.\n"
.LC118:
	.string	"<hr />\n"
.LC119:
	.string	"</body></html>\n"
	.text
	.type	status_handler, @function
status_handler:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$352, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -360(%rbp)
	call	getpid
	movl	%eax, %edx
	movl	child_pid(%rip), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -172(%rbp)
	movq	-360(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L36
	movq	-360(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L36
	movl	$-1, %eax
	jmp	.L37
.L36:
	movl	$2, %edi
	call	sysconf
	pxor	%xmm4, %xmm4
	cvtsi2ssq	%rax, %xmm4
	movd	%xmm4, %eax
	movl	%eax, -176(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	server_limit(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -184(%rbp)
	movl	server_limit(%rip), %edx
	movl	thread_limit(%rip), %eax
	imull	%edx, %eax
	movslq	%eax, %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -192(%rbp)
	call	apr_time_now
	movq	%rax, -200(%rbp)
	movq	$0, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	call	ap_exists_scoreboard_image
	testl	%eax, %eax
	jne	.L38
	movq	-360(%rbp), %rax
	movl	$.LC26, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$279, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	$500, %eax
	jmp	.L37
.L38:
	movq	-360(%rbp), %rax
	movq	$1, 136(%rax)
	movq	-360(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L39
	movl	$-1, %eax
	jmp	.L37
.L39:
	movq	-360(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	movq	-360(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L40
	movl	$0, -24(%rbp)
	jmp	.L41
.L49:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$status_options, %rax
	movq	8(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.L42
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$status_options, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L43
	cmpl	$2, %eax
	je	.L44
	testl	%eax, %eax
	jne	.L42
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$status_options, %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -216(%rbp)
	movq	$0, -128(%rbp)
	movq	-208(%rbp), %rdx
	movq	-216(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L46
	movq	-216(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-208(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -128(%rbp)
.L46:
	cmpq	$0, -128(%rbp)
	jle	.L47
	movq	-128(%rbp), %rax
	jmp	.L48
.L47:
	movl	$10, %eax
.L48:
	movq	-360(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	apr_ltoa
	movq	%rax, %rsi
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$status_options+16, %rax
	movq	(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_set
	jmp	.L42
.L43:
	movl	$1, -72(%rbp)
	jmp	.L42
.L44:
	movq	-360(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	ap_set_content_type
	movl	$1, -68(%rbp)
	nop
.L42:
	addl	$1, -24(%rbp)
.L41:
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$status_options, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	jne	.L49
.L40:
	movl	$0, -24(%rbp)
	jmp	.L50
.L60:
	movq	$0, -136(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ap_get_scoreboard_process
	movq	%rax, -224(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L51
.L59:
	movl	thread_limit(%rip), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -228(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ap_get_scoreboard_worker
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -244(%rbp)
	movl	-228(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rax, %rdx
	movl	-244(%rbp), %eax
	cltq
	movzbl	status_flags(%rax), %eax
	movb	%al, (%rdx)
	movq	-224(%rbp), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L52
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L52
	cmpl	$2, -244(%rbp)
	jne	.L53
	movq	-224(%rbp), %rax
	movl	4(%rax), %edx
	movl	ap_my_generation(%rip), %eax
	cmpl	%eax, %edx
	jne	.L53
	addl	$1, -28(%rbp)
	jmp	.L52
.L53:
	cmpl	$0, -244(%rbp)
	je	.L52
	cmpl	$1, -244(%rbp)
	je	.L52
	cmpl	$10, -244(%rbp)
	je	.L52
	addl	$1, -32(%rbp)
.L52:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L54
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)
	cmpq	$0, -256(%rbp)
	jne	.L55
	cmpl	$2, -244(%rbp)
	je	.L54
	cmpl	$0, -244(%rbp)
	je	.L54
.L55:
	movq	-240(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-240(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-240(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-240(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -296(%rbp)
	cmpl	$0, -172(%rbp)
	je	.L56
	movq	-272(%rbp), %rax
	addq	%rax, -136(%rbp)
	movq	-280(%rbp), %rax
	addq	%rax, -144(%rbp)
	movq	-288(%rbp), %rax
	addq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -160(%rbp)
	jmp	.L57
.L56:
	movq	-272(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jg	.L58
	movq	-280(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.L58
	movq	-288(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jg	.L58
	movq	-296(%rbp), %rax
	cmpq	-160(%rbp), %rax
	jle	.L57
.L58:
	movq	-272(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -152(%rbp)
.L57:
	movq	-256(%rbp), %rax
	addq	%rax, -40(%rbp)
	movq	-264(%rbp), %rax
	addq	%rax, -48(%rbp)
	cmpq	$1023, -48(%rbp)
	jle	.L54
	movq	-48(%rbp), %rax
	sarq	$10, %rax
	addq	%rax, -56(%rbp)
	andq	$1023, -48(%rbp)
.L54:
	addl	$1, -20(%rbp)
.L51:
	movl	thread_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L59
	movq	-136(%rbp), %rax
	addq	%rax, -88(%rbp)
	movq	-144(%rbp), %rax
	addq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	addq	%rax, -104(%rbp)
	movq	-160(%rbp), %rax
	addq	%rax, -112(%rbp)
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rax, %rdx
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	addl	$1, -24(%rbp)
.L50:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L60
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %eax
	movq	%rax, -304(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.L61
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC29, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC30, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_server_name
	movq	%rax, %rsi
	movq	-360(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC31, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	call	ap_get_server_description
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC32, %ecx
	movl	$.LC33, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	call	ap_get_server_built
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC34, %ecx
	movl	$.LC35, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	-200(%rbp), %rsi
	movl	$0, %ecx
	movl	$.LC36, %edx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC32, %ecx
	movl	$.LC37, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	ap_scoreboard_image(%rip), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC36, %edx
	movq	%rax, %rdi
	call	ap_ht_time
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC32, %ecx
	movl	$.LC38, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movl	ap_my_generation(%rip), %edx
	movq	-360(%rbp), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC40, %edi
	call	ap_rputs
	movq	-304(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	show_time
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC32, %edi
	call	ap_rputs
.L61:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L62
	cmpl	$0, -68(%rbp)
	je	.L63
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-360(%rbp), %rax
	movl	$.LC41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	cmpq	$0, -96(%rbp)
	jne	.L64
	cmpq	$0, -88(%rbp)
	jne	.L64
	cmpq	$0, -104(%rbp)
	jne	.L64
	cmpq	$0, -112(%rbp)
	je	.L65
.L64:
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC42(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L65:
	movq	-304(%rbp), %rdx
	movq	-360(%rbp), %rax
	movl	$.LC44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	cmpq	$0, -304(%rbp)
	jle	.L66
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L67
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L68
.L67:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L68:
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC45, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L66:
	cmpq	$0, -304(%rbp)
	jle	.L69
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-56(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC46, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L69:
	cmpq	$0, -40(%rbp)
	je	.L62
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-56(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L71
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L72
.L71:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L72:
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC47, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
	jmp	.L62
.L63:
	movq	-40(%rbp), %rdx
	movq	-360(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	movq	-56(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_kbyte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC32, %edi
	call	ap_rputs
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-112(%rbp), %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-104(%rbp), %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-96(%rbp), %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-88(%rbp), %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC49, %esi
	movq	%rax, %rdi
	movl	$4, %eax
	call	ap_rprintf
	cmpq	$0, -96(%rbp)
	jne	.L73
	cmpq	$0, -88(%rbp)
	jne	.L73
	cmpq	$0, -104(%rbp)
	jne	.L73
	cmpq	$0, -112(%rbp)
	je	.L74
.L73:
	movq	-88(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rax, %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC42(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC50, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L74:
	cmpq	$0, -304(%rbp)
	jle	.L75
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L76
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L77
.L76:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L77:
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movl	$.LC51, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
.L75:
	cmpq	$0, -304(%rbp)
	jle	.L78
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-56(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ssq	-304(%rbp), %xmm1
	divss	%xmm1, %xmm0
	ucomiss	.LC52(%rip), %xmm0
	jnb	.L79
	cvttss2siq	%xmm0, %rax
	jmp	.L80
.L79:
	movss	.LC52(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L80:
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_byte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC53, %edi
	call	ap_rputs
.L78:
	cmpq	$0, -40(%rbp)
	je	.L81
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-56(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.L82
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	jmp	.L83
.L82:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.L83:
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	ucomiss	.LC52(%rip), %xmm0
	jnb	.L84
	cvttss2siq	%xmm0, %rax
	jmp	.L85
.L84:
	movss	.LC52(%rip), %xmm1
	subss	%xmm1, %xmm0
	cvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rdx
	xorq	%rdx, %rax
.L85:
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_byte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC54, %edi
	call	ap_rputs
.L81:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC32, %edi
	call	ap_rputs
.L62:
	cmpl	$0, -68(%rbp)
	jne	.L86
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-360(%rbp), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	jmp	.L87
.L86:
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movq	-360(%rbp), %rax
	movl	$.LC56, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L87:
	cmpl	$0, -68(%rbp)
	jne	.L88
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC57, %edi
	call	ap_rputs
	jmp	.L89
.L88:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC58, %edi
	call	ap_rputs
.L89:
	movl	$0, -24(%rbp)
	jmp	.L90
.L94:
	movl	$0, -20(%rbp)
	jmp	.L91
.L93:
	movl	thread_limit(%rip), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -308(%rbp)
	movl	-308(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	-360(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_rputc
	movl	-308(%rbp), %eax
	cltd
	shrl	$26, %edx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	cmpl	$63, %eax
	jne	.L92
	cmpl	$0, -68(%rbp)
	jne	.L92
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC59, %edi
	call	ap_rputs
.L92:
	addl	$1, -20(%rbp)
.L91:
	movl	thread_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L93
	addl	$1, -24(%rbp)
.L90:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L94
	cmpl	$0, -68(%rbp)
	je	.L95
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC59, %edi
	call	ap_rputs
	jmp	.L96
.L95:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC60, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC61, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC62, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC63, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC64, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC65, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC66, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC67, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC68, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC69, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC70, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC71, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC72, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC73, %edi
	call	ap_rputs
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	jne	.L96
	movl	$0, -168(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC74, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC75, %edi
	call	ap_rputs
	movl	$0, -24(%rbp)
	jmp	.L97
.L102:
	movl	$0, -164(%rbp)
	jmp	.L98
.L101:
	movl	thread_limit(%rip), %eax
	imull	-24(%rbp), %eax
	movl	%eax, %edx
	movl	-164(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -312(%rbp)
	movl	-312(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	je	.L99
	movl	-312(%rbp), %eax
	movslq	%eax, %rdx
	movq	-192(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movq	-360(%rbp), %rax
	movl	$.LC76, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	addl	$1, -168(%rbp)
	cmpl	$2, -168(%rbp)
	jle	.L100
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC59, %edi
	call	ap_rputs
	movl	$0, -168(%rbp)
	jmp	.L99
.L100:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC77, %edi
	call	ap_rputs
.L99:
	addl	$1, -164(%rbp)
.L98:
	movl	thread_limit(%rip), %eax
	cmpl	%eax, -164(%rbp)
	jl	.L101
	addl	$1, -24(%rbp)
.L97:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L102
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC59, %edi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC60, %edi
	call	ap_rputs
.L96:
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L103
	cmpl	$0, -68(%rbp)
	jne	.L103
	cmpl	$0, -72(%rbp)
	je	.L104
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC78, %edi
	call	ap_rputs
	jmp	.L105
.L104:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC79, %edi
	call	ap_rputs
.L105:
	movl	$0, -24(%rbp)
	jmp	.L106
.L151:
	movl	$0, -20(%rbp)
	jmp	.L107
.L150:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	ap_get_scoreboard_worker
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	jne	.L108
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	cmpb	$2, %al
	je	.L109
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	jne	.L108
.L109:
	jmp	.L110
.L108:
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	ap_get_scoreboard_process
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	jne	.L111
	movq	$0, -64(%rbp)
	jmp	.L112
.L111:
	movq	-240(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
.L112:
	cmpq	$0, -64(%rbp)
	jns	.L113
	movq	$0, -64(%rbp)
.L113:
	movq	-240(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-240(%rbp), %rax
	movzwl	72(%rax), %eax
	movzwl	%ax, %eax
	movq	%rax, -328(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-240(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-240(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-240(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L114
	movq	-240(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-240(%rbp), %rax
	movl	20(%rax), %eax
	movl	%eax, -116(%rbp)
	jmp	.L115
.L114:
	movq	-224(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	-224(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -116(%rbp)
.L115:
	cmpl	$0, -72(%rbp)
	je	.L116
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	jne	.L117
	movq	-328(%rbp), %rax
	movl	%eax, %edi
	subq	$8, %rsp
	movq	-320(%rbp), %rsi
	movl	-116(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-360(%rbp), %rax
	pushq	-256(%rbp)
	movq	%rsi, %r9
	movl	%edi, %r8d
	movl	$.LC80, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	addq	$16, %rsp
	jmp	.L118
.L117:
	movq	-328(%rbp), %rax
	movl	%eax, %edi
	movl	-76(%rbp), %esi
	movl	-116(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-360(%rbp), %rax
	pushq	-256(%rbp)
	pushq	-320(%rbp)
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC81, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	addq	$16, %rsp
.L118:
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	cmpl	$10, %eax
	ja	.L119
	movl	%eax, %eax
	movq	.L121(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L121:
	.quad	.L120
	.quad	.L122
	.quad	.L123
	.quad	.L124
	.quad	.L125
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.quad	.L129
	.quad	.L130
	.quad	.L131
	.text
.L123:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC82, %edi
	call	ap_rputs
	jmp	.L132
.L122:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC83, %edi
	call	ap_rputs
	jmp	.L132
.L124:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC84, %edi
	call	ap_rputs
	jmp	.L132
.L125:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC85, %edi
	call	ap_rputs
	jmp	.L132
.L126:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC86, %edi
	call	ap_rputs
	jmp	.L132
.L127:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC87, %edi
	call	ap_rputs
	jmp	.L132
.L128:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC88, %edi
	call	ap_rputs
	jmp	.L132
.L129:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC89, %edi
	call	ap_rputs
	jmp	.L132
.L120:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC90, %edi
	call	ap_rputs
	jmp	.L132
.L130:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC91, %edi
	call	ap_rputs
	jmp	.L132
.L131:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC92, %edi
	call	ap_rputs
	jmp	.L132
.L119:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC93, %edi
	call	ap_rputs
	nop
.L132:
	movq	-240(%rbp), %rax
	movq	128(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	-240(%rbp), %rax
	movq	120(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	-240(%rbp), %rax
	movq	112(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm2
	movq	-240(%rbp), %rax
	movq	104(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movq	-240(%rbp), %rax
	movq	96(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-64(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC94, %esi
	movq	%rax, %rdi
	movl	$4, %eax
	call	ap_rprintf
	movq	-344(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_byte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	call	ap_rputs
	movq	-336(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_byte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	call	ap_rputs
	movq	-264(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	format_byte_out
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	call	ap_rputs
	movq	-240(%rbp), %rax
	leaq	232(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %r12
	movq	-240(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-240(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$.LC97, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	jmp	.L110
.L116:
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	testb	%al, %al
	jne	.L133
	movq	-328(%rbp), %rax
	movl	%eax, %edi
	subq	$8, %rsp
	movq	-320(%rbp), %rsi
	movl	-116(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-360(%rbp), %rax
	pushq	-256(%rbp)
	movq	%rsi, %r9
	movl	%edi, %r8d
	movl	$.LC98, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	addq	$16, %rsp
	jmp	.L134
.L133:
	movq	-328(%rbp), %rax
	movl	%eax, %edi
	movl	-76(%rbp), %esi
	movl	-116(%rbp), %ecx
	movl	-24(%rbp), %edx
	movq	-360(%rbp), %rax
	pushq	-256(%rbp)
	pushq	-320(%rbp)
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	$.LC99, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	addq	$16, %rsp
.L134:
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	movzbl	%al, %eax
	cmpl	$10, %eax
	ja	.L135
	movl	%eax, %eax
	movq	.L137(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L137:
	.quad	.L136
	.quad	.L138
	.quad	.L139
	.quad	.L140
	.quad	.L141
	.quad	.L142
	.quad	.L143
	.quad	.L144
	.quad	.L145
	.quad	.L146
	.quad	.L147
	.text
.L139:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC100, %edi
	call	ap_rputs
	jmp	.L148
.L138:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC101, %edi
	call	ap_rputs
	jmp	.L148
.L140:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC102, %edi
	call	ap_rputs
	jmp	.L148
.L141:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC103, %edi
	call	ap_rputs
	jmp	.L148
.L142:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC104, %edi
	call	ap_rputs
	jmp	.L148
.L143:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC105, %edi
	call	ap_rputs
	jmp	.L148
.L144:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC106, %edi
	call	ap_rputs
	jmp	.L148
.L145:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC107, %edi
	call	ap_rputs
	jmp	.L148
.L136:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC108, %edi
	call	ap_rputs
	jmp	.L148
.L146:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC109, %edi
	call	ap_rputs
	jmp	.L148
.L147:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC110, %edi
	call	ap_rputs
	jmp	.L148
.L135:
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC111, %edi
	call	ap_rputs
	nop
.L148:
	movq	-240(%rbp), %rax
	movq	128(%rax), %rax
	movq	-200(%rbp), %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	-240(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-240(%rbp), %rax
	movq	104(%rax), %rax
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	112(%rax), %rax
	addq	%rax, %rdx
	movq	-240(%rbp), %rax
	movq	120(%rax), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
	divss	-176(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-64(%rbp), %rdx
	movq	-360(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$.LC112, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	ap_rprintf
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-264(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-336(%rbp), %xmm0
	movss	.LC9(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2ssq	-344(%rbp), %xmm0
	movss	.LC7(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-360(%rbp), %rax
	movapd	%xmm3, %xmm1
	movl	$.LC113, %esi
	movq	%rax, %rdi
	movl	$3, %eax
	call	ap_rprintf
	movq	-240(%rbp), %rax
	movzbl	24(%rax), %eax
	cmpb	$3, %al
	jne	.L149
	movq	-360(%rbp), %rax
	movl	$.LC114, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
	jmp	.L110
.L149:
	movq	-240(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_logitem
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %r12
	movq	-240(%rbp), %rax
	leaq	232(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rbx
	movq	-240(%rbp), %rax
	leaq	136(%rax), %rdx
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movl	$.LC115, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L110:
	addl	$1, -20(%rbp)
.L107:
	movl	thread_limit(%rip), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L150
	addl	$1, -24(%rbp)
.L106:
	movl	server_limit(%rip), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L151
	cmpl	$0, -72(%rbp)
	jne	.L152
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC116, %edi
	call	ap_rputs
	jmp	.L153
.L152:
	jmp	.L153
.L103:
	cmpl	$0, -68(%rbp)
	jne	.L153
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC117, %edi
	call	ap_rputs
.L153:
	cmpl	$0, -68(%rbp)
	setne	%al
	movzbl	%al, %eax
	cmpl	$0, -72(%rbp)
	je	.L154
	movl	$2, %edx
	jmp	.L155
.L154:
	movl	$0, %edx
.L155:
	orl	%eax, %edx
	movl	ap_extended_status(%rip), %eax
	testl	%eax, %eax
	je	.L156
	movl	$4, %eax
	jmp	.L157
.L156:
	movl	$0, %eax
.L157:
	orl	%edx, %eax
	movl	%eax, -348(%rbp)
	movl	-348(%rbp), %edx
	movq	-360(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	ap_run_status_hook
	cmpl	$0, -68(%rbp)
	jne	.L158
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC118, %edi
	call	ap_psignature
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
	movq	-360(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC119, %edi
	call	ap_rputs
.L158:
	movl	$0, %eax
.L37:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	status_handler, .-status_handler
	.type	status_init, @function
status_init:
.LFB9:
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
	movq	%rcx, -32(%rbp)
	movb	$46, status_flags(%rip)
	movb	$95, status_flags+2(%rip)
	movb	$83, status_flags+1(%rip)
	movb	$82, status_flags+3(%rip)
	movb	$87, status_flags+4(%rip)
	movb	$75, status_flags+5(%rip)
	movb	$76, status_flags+6(%rip)
	movb	$68, status_flags+7(%rip)
	movb	$67, status_flags+8(%rip)
	movb	$71, status_flags+9(%rip)
	movb	$73, status_flags+10(%rip)
	movl	$thread_limit, %esi
	movl	$5, %edi
	call	ap_mpm_query
	movl	$server_limit, %esi
	movl	$4, %edi
	call	ap_mpm_query
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	status_init, .-status_init
	.type	status_child_init, @function
status_child_init:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	call	getpid
	movl	%eax, child_pid(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	status_child_init, .-status_child_init
	.type	register_hooks, @function
register_hooks:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$status_handler, %edi
	call	ap_hook_handler
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$status_init, %edi
	call	ap_hook_post_config
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$status_child_init, %edi
	call	ap_hook_child_init
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	register_hooks, .-register_hooks
	.section	.rodata
	.align 4
.LC7:
	.long	1149239296
	.align 4
.LC9:
	.long	1233125376
	.align 4
.LC11:
	.long	1317011456
	.align 8
.LC42:
	.long	0
	.long	1079574528
	.align 4
.LC52:
	.long	1593835520
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

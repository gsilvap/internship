	.file	"ab.c"
	.globl	verbosity
	.bss
	.align 4
	.type	verbosity, @object
	.size	verbosity, 4
verbosity:
	.zero	4
	.globl	recverrok
	.align 4
	.type	recverrok, @object
	.size	recverrok, 4
recverrok:
	.zero	4
	.globl	posting
	.align 4
	.type	posting, @object
	.size	posting, 4
posting:
	.zero	4
	.globl	requests
	.data
	.align 4
	.type	requests, @object
	.size	requests, 4
requests:
	.long	1
	.globl	heartbeatres
	.align 4
	.type	heartbeatres, @object
	.size	heartbeatres, 4
heartbeatres:
	.long	100
	.globl	concurrency
	.align 4
	.type	concurrency, @object
	.size	concurrency, 4
concurrency:
	.long	1
	.globl	percentile
	.align 4
	.type	percentile, @object
	.size	percentile, 4
percentile:
	.long	1
	.globl	confidence
	.align 4
	.type	confidence, @object
	.size	confidence, 4
confidence:
	.long	1
	.globl	tlimit
	.bss
	.align 4
	.type	tlimit, @object
	.size	tlimit, 4
tlimit:
	.zero	4
	.globl	keepalive
	.align 4
	.type	keepalive, @object
	.size	keepalive, 4
keepalive:
	.zero	4
	.globl	windowsize
	.align 4
	.type	windowsize, @object
	.size	windowsize, 4
windowsize:
	.zero	4
	.comm	servername,1024,64
	.comm	hostname,8,8
	.comm	host_field,8,8
	.comm	path,8,8
	.comm	postfile,1024,64
	.comm	postdata,8,8
	.globl	postlen
	.align 8
	.type	postlen, @object
	.size	postlen, 8
postlen:
	.zero	8
	.comm	content_type,1024,64
	.comm	cookie,8,8
	.comm	auth,8,8
	.comm	hdrs,8,8
	.comm	port,2,2
	.comm	proxyhost,1024,64
	.globl	proxyport
	.align 4
	.type	proxyport, @object
	.size	proxyport, 4
proxyport:
	.zero	4
	.comm	connecthost,8,8
	.comm	connectport,2,2
	.comm	gnuplot,8,8
	.comm	csvperc,8,8
	.comm	url,1024,64
	.comm	fullurl,8,8
	.comm	colonhost,8,8
	.globl	isproxy
	.align 4
	.type	isproxy, @object
	.size	isproxy, 4
isproxy:
	.zero	4
	.globl	aprtimeout
	.data
	.align 8
	.type	aprtimeout, @object
	.size	aprtimeout, 8
aprtimeout:
	.quad	30000000
	.globl	opt_host
	.bss
	.align 4
	.type	opt_host, @object
	.size	opt_host, 4
opt_host:
	.zero	4
	.globl	opt_useragent
	.align 4
	.type	opt_useragent, @object
	.size	opt_useragent, 4
opt_useragent:
	.zero	4
	.globl	opt_accept
	.align 4
	.type	opt_accept, @object
	.size	opt_accept, 4
opt_accept:
	.zero	4
	.globl	use_html
	.align 4
	.type	use_html, @object
	.size	use_html, 4
use_html:
	.zero	4
	.comm	tablestring,8,8
	.comm	trstring,8,8
	.comm	tdstring,8,8
	.globl	doclen
	.align 8
	.type	doclen, @object
	.size	doclen, 8
doclen:
	.zero	8
	.globl	totalread
	.align 8
	.type	totalread, @object
	.size	totalread, 8
totalread:
	.zero	8
	.globl	totalbread
	.align 8
	.type	totalbread, @object
	.size	totalbread, 8
totalbread:
	.zero	8
	.globl	totalposted
	.align 8
	.type	totalposted, @object
	.size	totalposted, 8
totalposted:
	.zero	8
	.globl	started
	.align 4
	.type	started, @object
	.size	started, 4
started:
	.zero	4
	.globl	done
	.align 4
	.type	done, @object
	.size	done, 4
done:
	.zero	4
	.globl	doneka
	.align 4
	.type	doneka, @object
	.size	doneka, 4
doneka:
	.zero	4
	.globl	good
	.align 4
	.type	good, @object
	.size	good, 4
good:
	.zero	4
	.globl	bad
	.align 4
	.type	bad, @object
	.size	bad, 4
bad:
	.zero	4
	.globl	epipe
	.align 4
	.type	epipe, @object
	.size	epipe, 4
epipe:
	.zero	4
	.globl	err_length
	.align 4
	.type	err_length, @object
	.size	err_length, 4
err_length:
	.zero	4
	.globl	err_conn
	.align 4
	.type	err_conn, @object
	.size	err_conn, 4
err_conn:
	.zero	4
	.globl	err_recv
	.align 4
	.type	err_recv, @object
	.size	err_recv, 4
err_recv:
	.zero	4
	.globl	err_except
	.align 4
	.type	err_except, @object
	.size	err_except, 4
err_except:
	.zero	4
	.globl	err_response
	.align 4
	.type	err_response, @object
	.size	err_response, 4
err_response:
	.zero	4
	.comm	start,8,8
	.comm	lasttime,8,8
	.comm	stoptime,8,8
	.comm	_request,2048,64
	.globl	request
	.data
	.align 8
	.type	request, @object
	.size	request, 8
request:
	.quad	_request
	.comm	reqlen,8,8
	.comm	buffer,8192,64
	.globl	percs
	.align 32
	.type	percs, @object
	.size	percs, 36
percs:
	.long	50
	.long	66
	.long	75
	.long	80
	.long	90
	.long	95
	.long	98
	.long	99
	.long	100
	.comm	con,8,8
	.comm	stats,8,8
	.comm	cntxt,8,8
	.comm	readbits,8,8
	.comm	destsa,8,8
	.section	.rodata
.LC0:
	.string	"%s\n"
	.align 8
.LC1:
	.string	"Total of %d requests completed\n"
	.text
	.type	err, @function
err:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	done(%rip), %eax
	testl	%eax, %eax
	je	.L2
	movl	done(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L2:
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE2:
	.size	err, .-err
	.section	.rodata
.LC2:
	.string	"%s: %s (%d)\n"
	.text
	.type	apr_err, @function
apr_err:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movl	%esi, -140(%rbp)
	leaq	-128(%rbp), %rcx
	movl	-140(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rsi
	movq	stderr(%rip), %rax
	movl	-140(%rbp), %ecx
	movq	-136(%rbp), %rdx
	movl	%ecx, %r8d
	movq	%rsi, %rcx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	done(%rip), %eax
	testl	%eax, %eax
	je	.L4
	movl	done(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
.L4:
	movl	-140(%rbp), %eax
	movl	%eax, %edi
	call	exit
	.cfi_endproc
.LFE3:
	.size	apr_err, .-apr_err
	.section	.rodata
.LC3:
	.string	"Send request timed out!"
.LC4:
	.string	"Send request failed!"
	.text
	.type	write_request, @function
write_request:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
.L11:
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L6
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 2136(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 48(%rax)
	movq	reqlen(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	movl	posting(%rip), %eax
	testl	%eax, %eax
	je	.L8
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdx
	movq	postlen(%rip), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L8
.L6:
	movq	-72(%rbp), %rax
	movq	2136(%rax), %rdx
	movq	aprtimeout(%rip), %rax
	addq	%rdx, %rax
	cmpq	-16(%rbp), %rax
	jge	.L8
	movl	$.LC3, %edi
	call	puts
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	close_connection
	jmp	.L5
.L8:
	movq	request(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_socket_send
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L10
	cmpl	$11, -4(%rbp)
	je	.L10
	movl	epipe(%rip), %eax
	addl	$1, %eax
	movl	%eax, epipe(%rip)
	movl	$.LC4, %edi
	call	puts
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	close_connection
	nop
	jmp	.L5
.L10:
	movq	totalposted(%rip), %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, totalposted(%rip)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movq	-72(%rbp), %rax
	movl	$3, 16(%rax)
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 2144(%rax)
	movl	$1, -56(%rbp)
	movw	$1, -52(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	readbits(%rip), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	write_request, .-write_request
	.type	compradre, @function
compradre:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L15
	movl	$-1, %eax
	jmp	.L16
.L15:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L17
	movl	$1, %eax
	jmp	.L16
.L17:
	movl	$0, %eax
.L16:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	compradre, .-compradre
	.type	comprando, @function
comprando:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L19
	movl	$-1, %eax
	jmp	.L20
.L19:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L21
	movl	$1, %eax
	jmp	.L20
.L21:
	movl	$0, %eax
.L20:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	comprando, .-comprando
	.type	compri, @function
compri:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.L23
	movl	$-1, %eax
	jmp	.L24
.L23:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.L25
	movl	$1, %eax
	jmp	.L24
.L25:
	movl	$0, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	compri, .-compri
	.type	compwait, @function
compwait:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L27
	movl	$-1, %eax
	jmp	.L28
.L27:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L29
	movl	$1, %eax
	jmp	.L28
.L29:
	movl	$0, %eax
.L28:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	compwait, .-compwait
	.section	.rodata
.LC6:
	.string	"\n"
.LC7:
	.string	"Server Software:        %s\n"
.LC8:
	.string	"Server Hostname:        %s\n"
.LC9:
	.string	"Server Port:            %hu\n"
.LC10:
	.string	"Document Path:          %s\n"
	.align 8
.LC11:
	.string	"Document Length:        %lu bytes\n"
.LC12:
	.string	"Concurrency Level:      %d\n"
	.align 8
.LC13:
	.string	"Time taken for tests:   %.3f seconds\n"
.LC14:
	.string	"Complete requests:      %d\n"
.LC15:
	.string	"Failed requests:        %d\n"
	.align 8
.LC16:
	.string	"   (Connect: %d, Receive: %d, Length: %d, Exceptions: %d)\n"
.LC17:
	.string	"Write errors:           %d\n"
.LC18:
	.string	"Non-2xx responses:      %d\n"
.LC19:
	.string	"Keep-Alive requests:    %d\n"
	.align 8
.LC20:
	.string	"Total transferred:      %ld bytes\n"
.LC21:
	.string	"Total POSTed:           %ld\n"
	.align 8
.LC22:
	.string	"HTML transferred:       %ld bytes\n"
	.align 8
.LC24:
	.string	"Requests per second:    %.2f [#/sec] (mean)\n"
	.align 8
.LC26:
	.string	"Time per request:       %.3f [ms] (mean)\n"
	.align 8
.LC27:
	.string	"Time per request:       %.3f [ms] (mean, across all concurrent requests)\n"
	.align 8
.LC29:
	.string	"Transfer rate:          %.2f [Kbytes/sec] received\n"
	.align 8
.LC30:
	.string	"                        %.2f kb/s sent\n"
	.align 8
.LC31:
	.string	"                        %.2f kb/s total\n"
.LC32:
	.string	"\nConnection Times (ms)"
	.align 8
.LC33:
	.string	"              min  mean[+/-sd] median   max"
	.align 8
.LC34:
	.string	"Connect:    %5ld %4ld %5.1f %6ld %7ld\n"
	.align 8
.LC35:
	.string	"Processing: %5ld %4ld %5.1f %6ld %7ld\n"
	.align 8
.LC36:
	.string	"Waiting:    %5ld %4ld %5.1f %6ld %7ld\n"
	.align 8
.LC37:
	.string	"Total:      %5ld %4ld %5.1f %6ld %7ld\n"
	.align 8
.LC39:
	.string	"ERROR: The median and mean for the initial connection time are more than twice the standard\n       deviation apart. These results are NOT reliable."
	.align 8
.LC40:
	.string	"WARNING: The median and mean for the initial connection time are not within a normal deviation\n        These results are probably not that reliable."
	.align 8
.LC41:
	.string	"ERROR: The median and mean for the processing time are more than twice the standard\n       deviation apart. These results are NOT reliable."
	.align 8
.LC42:
	.string	"WARNING: The median and mean for the processing time are not within a normal deviation\n        These results are probably not that reliable."
	.align 8
.LC43:
	.string	"ERROR: The median and mean for the waiting time are more than twice the standard\n       deviation apart. These results are NOT reliable."
	.align 8
.LC44:
	.string	"WARNING: The median and mean for the waiting time are not within a normal deviation\n        These results are probably not that reliable."
	.align 8
.LC45:
	.string	"ERROR: The median and mean for the total time are more than twice the standard\n       deviation apart. These results are NOT reliable."
	.align 8
.LC46:
	.string	"WARNING: The median and mean for the total time are not within a normal deviation\n        These results are probably not that reliable."
.LC47:
	.string	"              min   avg   max"
.LC48:
	.string	"Connect:    %5ld %5ld%5ld\n"
.LC49:
	.string	"Processing: %5ld %5ld%5ld\n"
.LC50:
	.string	"Total:      %5ld %5ld%5ld\n"
	.align 8
.LC51:
	.string	"\nPercentage of the requests served within a certain time (ms)"
.LC52:
	.string	" 0%%  <0> (never)\n"
	.align 8
.LC53:
	.string	" 100%%  %5ld (longest request)\n"
.LC54:
	.string	"  %d%%  %5ld\n"
.LC55:
	.string	"w"
.LC56:
	.string	"Cannot open CSV output file"
.LC57:
	.string	"Percentage served,Time in ms\n"
.LC60:
	.string	"%d,%.3f\n"
	.align 8
.LC61:
	.string	"Cannot open gnuplot output file"
	.align 8
.LC62:
	.string	"starttime\tseconds\tctime\tdtime\tttime\twait\n"
.LC63:
	.string	"%s\t%ld\t%ld\t%ld\t%ld\t%ld\n"
	.text
	.type	output_results, @function
output_results:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movl	%edi, -324(%rbp)
	cmpl	$0, -324(%rbp)
	je	.L31
	call	apr_time_now
	movq	%rax, lasttime(%rip)
.L31:
	movq	lasttime(%rip), %rdx
	movq	start(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -216(%rbp)
	movl	$.LC6, %edi
	call	puts
	movl	$servername, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movq	hostname(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movzwl	port(%rip), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	movq	path(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movq	doclen(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	movl	concurrency(%rip), %eax
	movl	%eax, %esi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movq	-216(%rbp), %rax
	movq	%rax, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movl	$.LC13, %edi
	movl	$1, %eax
	call	printf
	movl	done(%rip), %eax
	movl	%eax, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	bad(%rip), %eax
	movl	%eax, %esi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movl	bad(%rip), %eax
	testl	%eax, %eax
	je	.L32
	movl	err_except(%rip), %esi
	movl	err_length(%rip), %ecx
	movl	err_recv(%rip), %edx
	movl	err_conn(%rip), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC16, %edi
	movl	$0, %eax
	call	printf
.L32:
	movl	epipe(%rip), %eax
	movl	%eax, %esi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	movl	err_response(%rip), %eax
	testl	%eax, %eax
	je	.L33
	movl	err_response(%rip), %eax
	movl	%eax, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	printf
.L33:
	movl	keepalive(%rip), %eax
	testl	%eax, %eax
	je	.L34
	movl	doneka(%rip), %eax
	movl	%eax, %esi
	movl	$.LC19, %edi
	movl	$0, %eax
	call	printf
.L34:
	movq	totalread(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	printf
	movl	posting(%rip), %eax
	testl	%eax, %eax
	jle	.L35
	movq	totalposted(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC21, %edi
	movl	$0, %eax
	call	printf
.L35:
	movq	totalbread(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	pxor	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	jp	.L102
	pxor	%xmm0, %xmm0
	ucomisd	-216(%rbp), %xmm0
	je	.L36
.L102:
	movl	done(%rip), %eax
	testl	%eax, %eax
	je	.L36
	movl	done(%rip), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	-216(%rbp), %xmm0
	movl	$.LC24, %edi
	movl	$1, %eax
	call	printf
	movl	concurrency(%rip), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	-216(%rbp), %xmm0
	movsd	.LC25(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movl	done(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC26, %edi
	movl	$1, %eax
	call	printf
	movsd	-216(%rbp), %xmm1
	movsd	.LC25(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movl	done(%rip), %eax
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC27, %edi
	movl	$1, %eax
	call	printf
	movq	totalread(%rip), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC28(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	-216(%rbp), %xmm0
	movl	$.LC29, %edi
	movl	$1, %eax
	call	printf
	movl	posting(%rip), %eax
	testl	%eax, %eax
	jle	.L36
	movq	totalposted(%rip), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-216(%rbp), %xmm0
	movsd	.LC28(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC30, %edi
	movl	$1, %eax
	call	printf
	movq	totalread(%rip), %rdx
	movq	totalposted(%rip), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-216(%rbp), %xmm0
	movsd	.LC28(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$.LC31, %edi
	movl	$1, %eax
	call	printf
.L36:
	movl	done(%rip), %eax
	testl	%eax, %eax
	jle	.L38
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -48(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -56(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -64(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -136(%rbp)
	movl	$0, %eax
	movq	%rax, -144(%rbp)
	movl	$0, %eax
	movq	%rax, -152(%rbp)
	movl	$0, %eax
	movq	%rax, -160(%rbp)
	movl	$0, %eax
	movq	%rax, -168(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L39
.L40:
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-224(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	-96(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -16(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -24(%rbp)
	movq	-224(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-224(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, -32(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, -40(%rbp)
	addl	$1, -4(%rbp)
.L39:
	movl	done(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L40
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, -232(%rbp)
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-24(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, -240(%rbp)
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-32(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, -248(%rbp)
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-40(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, -256(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L41
.L42:
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-240(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -272(%rbp)
	movsd	-272(%rbp), %xmm0
	mulsd	-272(%rbp), %xmm0
	movsd	-144(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -144(%rbp)
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-232(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -272(%rbp)
	movsd	-272(%rbp), %xmm0
	mulsd	-272(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -152(%rbp)
	movq	-264(%rbp), %rax
	movq	24(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movq	-264(%rbp), %rax
	movq	16(%rax), %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-248(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -272(%rbp)
	movsd	-272(%rbp), %xmm0
	mulsd	-272(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -160(%rbp)
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-256(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -272(%rbp)
	movsd	-272(%rbp), %xmm0
	mulsd	-272(%rbp), %xmm0
	movsd	-168(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -168(%rbp)
	addl	$1, -4(%rbp)
.L41:
	movl	done(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L42
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L43
	movl	done(%rip), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	-144(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	movq	%rax, -144(%rbp)
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L45
	movl	done(%rip), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	-152(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	jmp	.L46
.L45:
	movl	$0, %eax
.L46:
	movq	%rax, -152(%rbp)
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L47
	movl	done(%rip), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	-160(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	movq	%rax, -160(%rbp)
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L49
	movl	done(%rip), %eax
	subl	$1, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	-168(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	jmp	.L50
.L49:
	movl	$0, %eax
.L50:
	movq	%rax, -168(%rbp)
	movl	done(%rip), %eax
	movslq	%eax, %rsi
	movq	stats(%rip), %rax
	movl	$compradre, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	qsort
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L51
	movl	done(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L51
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rdx
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	addq	$1, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -112(%rbp)
	jmp	.L52
.L51:
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
.L52:
	movl	done(%rip), %eax
	movslq	%eax, %rsi
	movq	stats(%rip), %rax
	movl	$compri, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	qsort
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L53
	movl	done(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L53
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	addq	$1, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	24(%rax), %rax
	leaq	(%rdx,%rax), %rcx
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	subq	%rax, %rcx
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	addq	$1, %rax
	salq	$5, %rax
	addq	%rdx, %rax
	movq	16(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -128(%rbp)
	jmp	.L54
.L53:
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
.L54:
	movl	done(%rip), %eax
	movslq	%eax, %rsi
	movq	stats(%rip), %rax
	movl	$compwait, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	qsort
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L55
	movl	done(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L55
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rdx
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	addq	$1, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -136(%rbp)
	jmp	.L56
.L55:
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
.L56:
	movl	done(%rip), %eax
	movslq	%eax, %rsi
	movq	stats(%rip), %rax
	movl	$comprando, %ecx
	movl	$32, %edx
	movq	%rax, %rdi
	call	qsort
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L57
	movl	done(%rip), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L57
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	cltq
	addq	$1, %rax
	salq	$5, %rax
	addq	%rcx, %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -120(%rbp)
	jmp	.L58
.L57:
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
.L58:
	movl	$.LC32, %edi
	call	puts
	movq	-48(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -232(%rbp)
	movq	-248(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -240(%rbp)
	movq	-112(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movq	-128(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movq	-136(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movsd	-152(%rbp), %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -152(%rbp)
	movsd	-160(%rbp), %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -160(%rbp)
	movsd	-168(%rbp), %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -168(%rbp)
	movsd	-144(%rbp), %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -144(%rbp)
	movl	confidence(%rip), %eax
	testl	%eax, %eax
	je	.L59
	movl	$.LC33, %edi
	call	puts
	movq	-80(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movq	-152(%rbp), %rsi
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rsi, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movq	%rax, %rsi
	movl	$.LC34, %edi
	movl	$1, %eax
	call	printf
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movq	-160(%rbp), %rsi
	movq	-248(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdi, %r8
	movq	%rsi, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movq	%rax, %rsi
	movl	$.LC35, %edi
	movl	$1, %eax
	call	printf
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rcx
	movq	-168(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rsi, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movq	%rax, %rsi
	movl	$.LC36, %edi
	movl	$1, %eax
	call	printf
	movq	-88(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movq	-144(%rbp), %rsi
	movq	-240(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rsi, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movq	%rax, %rsi
	movl	$.LC37, %edi
	movl	$1, %eax
	call	printf
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-232(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-112(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -176(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-176(%rbp), %xmm0
	jbe	.L60
	movsd	-176(%rbp), %xmm1
	movsd	.LC38(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -176(%rbp)
.L60:
	movsd	-152(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-176(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L115
	movl	$.LC39, %edi
	call	puts
	jmp	.L64
.L115:
	movsd	-176(%rbp), %xmm0
	ucomisd	-152(%rbp), %xmm0
	jbe	.L64
	movl	$.LC40, %edi
	call	puts
.L64:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-248(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-128(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -184(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-184(%rbp), %xmm0
	jbe	.L66
	movsd	-184(%rbp), %xmm1
	movsd	.LC38(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -184(%rbp)
.L66:
	movsd	-160(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-184(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L116
	movl	$.LC41, %edi
	call	puts
	jmp	.L70
.L116:
	movsd	-184(%rbp), %xmm0
	ucomisd	-160(%rbp), %xmm0
	jbe	.L70
	movl	$.LC42, %edi
	call	puts
.L70:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-256(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-136(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -192(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-192(%rbp), %xmm0
	jbe	.L72
	movsd	-192(%rbp), %xmm1
	movsd	.LC38(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -192(%rbp)
.L72:
	movsd	-168(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-192(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L117
	movl	$.LC43, %edi
	call	puts
	jmp	.L76
.L117:
	movsd	-192(%rbp), %xmm0
	ucomisd	-168(%rbp), %xmm0
	jbe	.L76
	movl	$.LC44, %edi
	call	puts
.L76:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-240(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-120(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -200(%rbp)
	pxor	%xmm0, %xmm0
	ucomisd	-200(%rbp), %xmm0
	jbe	.L78
	movsd	-200(%rbp), %xmm1
	movsd	.LC38(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, -200(%rbp)
.L78:
	movsd	-144(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	-200(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L118
	movl	$.LC45, %edi
	call	puts
	jmp	.L84
.L118:
	movsd	-200(%rbp), %xmm0
	ucomisd	-144(%rbp), %xmm0
	ja	.L114
	jmp	.L84
.L114:
	movl	$.LC46, %edi
	call	puts
	jmp	.L84
.L59:
	movl	$.LC47, %edi
	call	puts
	movq	-80(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC48, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	subq	-80(%rbp), %rax
	movq	%rax, %rcx
	movq	-240(%rbp), %rax
	subq	-232(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC49, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC50, %edi
	movl	$0, %eax
	call	printf
.L84:
	movl	percentile(%rip), %eax
	testl	%eax, %eax
	je	.L85
	movl	done(%rip), %eax
	cmpl	$1, %eax
	jle	.L85
	movl	$.LC51, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L86
.L90:
	movl	-4(%rbp), %eax
	cltq
	movl	percs(,%rax,4), %eax
	testl	%eax, %eax
	jg	.L87
	movl	$.LC52, %edi
	movl	$0, %eax
	call	printf
	jmp	.L88
.L87:
	movl	-4(%rbp), %eax
	cltq
	movl	percs(,%rax,4), %eax
	cmpl	$99, %eax
	jle	.L89
	movq	stats(%rip), %rax
	movl	done(%rip), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC53, %edi
	movl	$0, %eax
	call	printf
	jmp	.L88
.L89:
	movq	stats(%rip), %rsi
	movl	-4(%rbp), %eax
	cltq
	movl	percs(,%rax,4), %edx
	movl	done(%rip), %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	salq	$5, %rax
	addq	%rsi, %rax
	movq	24(%rax), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	movl	percs(,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC54, %edi
	movl	$0, %eax
	call	printf
.L88:
	addl	$1, -4(%rbp)
.L86:
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	jbe	.L90
.L85:
	movq	csvperc(%rip), %rax
	testq	%rax, %rax
	je	.L91
	movq	csvperc(%rip), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.L92
	movl	$.LC56, %edi
	call	perror
	movl	$1, %edi
	call	exit
.L92:
	movq	-280(%rbp), %rax
	movq	%rax, %rcx
	movl	$29, %edx
	movl	$1, %esi
	movl	$.LC57, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L93
.L97:
	cmpl	$0, -4(%rbp)
	jne	.L94
	movq	stats(%rip), %rax
	movq	24(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -208(%rbp)
	jmp	.L95
.L94:
	cmpl	$100, -4(%rbp)
	jne	.L96
	movq	stats(%rip), %rax
	movl	done(%rip), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	subq	$32, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -208(%rbp)
	jmp	.L95
.L96:
	movq	stats(%rip), %rdx
	movl	done(%rip), %eax
	imull	-4(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC58(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC59(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movq	24(%rax), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC25(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -208(%rbp)
.L95:
	movq	-208(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-280(%rbp), %rax
	movq	%rcx, -336(%rbp)
	movsd	-336(%rbp), %xmm0
	movl	$.LC60, %esi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf
	addl	$1, -4(%rbp)
.L93:
	cmpl	$99, -4(%rbp)
	jle	.L97
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.L91:
	movq	gnuplot(%rip), %rax
	testq	%rax, %rax
	je	.L38
	movq	gnuplot(%rip), %rax
	movl	$.LC55, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -288(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.L98
	movl	$.LC61, %edi
	call	perror
	movl	$1, %edi
	call	exit
.L98:
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	movl	$41, %edx
	movl	$1, %esi
	movl	$.LC62, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L99
.L100:
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_ctime
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	8(%rax), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	24(%rax), %rdx
	movq	stats(%rip), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %r9
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	16(%rax), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %r8
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movabsq	$4835703278458516699, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$18, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	leaq	-320(%rbp), %rdx
	movq	-288(%rbp), %rax
	pushq	%rdi
	pushq	%rsi
	movl	$.LC63, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	addq	$16, %rsp
	addl	$1, -4(%rbp)
.L99:
	movl	done(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L100
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.L38:
	cmpl	$0, -324(%rbp)
	je	.L30
	movl	$1, %edi
	call	exit
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	output_results, .-output_results
	.section	.rodata
.LC64:
	.string	"\n\n<table %s>\n"
	.align 8
.LC65:
	.string	"<tr %s><th colspan=2 %s>Server Software:</th><td colspan=2 %s>%s</td></tr>\n"
	.align 8
.LC66:
	.string	"<tr %s><th colspan=2 %s>Server Hostname:</th><td colspan=2 %s>%s</td></tr>\n"
	.align 8
.LC67:
	.string	"<tr %s><th colspan=2 %s>Server Port:</th><td colspan=2 %s>%hu</td></tr>\n"
	.align 8
.LC68:
	.string	"<tr %s><th colspan=2 %s>Document Path:</th><td colspan=2 %s>%s</td></tr>\n"
	.align 8
.LC69:
	.string	"<tr %s><th colspan=2 %s>Document Length:</th><td colspan=2 %s>%lu bytes</td></tr>\n"
	.align 8
.LC70:
	.string	"<tr %s><th colspan=2 %s>Concurrency Level:</th><td colspan=2 %s>%d</td></tr>\n"
	.align 8
.LC71:
	.string	"<tr %s><th colspan=2 %s>Time taken for tests:</th><td colspan=2 %s>%.3f seconds</td></tr>\n"
	.align 8
.LC72:
	.string	"<tr %s><th colspan=2 %s>Complete requests:</th><td colspan=2 %s>%d</td></tr>\n"
	.align 8
.LC73:
	.string	"<tr %s><th colspan=2 %s>Failed requests:</th><td colspan=2 %s>%d</td></tr>\n"
	.align 8
.LC74:
	.string	"<tr %s><td colspan=4 %s >   (Connect: %d, Length: %d, Exceptions: %d)</td></tr>\n"
	.align 8
.LC75:
	.string	"<tr %s><th colspan=2 %s>Non-2xx responses:</th><td colspan=2 %s>%d</td></tr>\n"
	.align 8
.LC76:
	.string	"<tr %s><th colspan=2 %s>Keep-Alive requests:</th><td colspan=2 %s>%d</td></tr>\n"
	.align 8
.LC77:
	.string	"<tr %s><th colspan=2 %s>Total transferred:</th><td colspan=2 %s>%ld bytes</td></tr>\n"
	.align 8
.LC78:
	.string	"<tr %s><th colspan=2 %s>Total POSTed:</th><td colspan=2 %s>%ld</td></tr>\n"
	.align 8
.LC79:
	.string	"<tr %s><th colspan=2 %s>HTML transferred:</th><td colspan=2 %s>%ld bytes</td></tr>\n"
	.align 8
.LC80:
	.string	"<tr %s><th colspan=2 %s>Requests per second:</th><td colspan=2 %s>%.2f</td></tr>\n"
	.align 8
.LC81:
	.string	"<tr %s><th colspan=2 %s>Transfer rate:</th><td colspan=2 %s>%.2f kb/s received</td></tr>\n"
	.align 8
.LC82:
	.string	"<tr %s><td colspan=2 %s>&nbsp;</td><td colspan=2 %s>%.2f kb/s sent</td></tr>\n"
	.align 8
.LC83:
	.string	"<tr %s><td colspan=2 %s>&nbsp;</td><td colspan=2 %s>%.2f kb/s total</td></tr>\n"
	.align 8
.LC84:
	.string	"<tr %s><th %s colspan=4>Connnection Times (ms)</th></tr>\n"
	.align 8
.LC85:
	.string	"<tr %s><th %s>&nbsp;</th> <th %s>min</th>   <th %s>avg</th>   <th %s>max</th></tr>\n"
	.align 8
.LC86:
	.string	"<tr %s><th %s>Connect:</th><td %s>%5ld</td><td %s>%5ld</td><td %s>%5ld</td></tr>\n"
	.align 8
.LC87:
	.string	"<tr %s><th %s>Processing:</th><td %s>%5ld</td><td %s>%5ld</td><td %s>%5ld</td></tr>\n"
	.align 8
.LC88:
	.string	"<tr %s><th %s>Total:</th><td %s>%5ld</td><td %s>%5ld</td><td %s>%5ld</td></tr>\n"
.LC89:
	.string	"</table>"
	.text
	.type	output_html_results, @function
output_html_results:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	lasttime(%rip), %rdx
	movq	start(%rip), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC5(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, -64(%rbp)
	movq	tablestring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC64, %edi
	movl	$0, %eax
	call	printf
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	$servername, %r8d
	movq	%rax, %rsi
	movl	$.LC65, %edi
	movl	$0, %eax
	call	printf
	movq	hostname(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC66, %edi
	movl	$0, %eax
	call	printf
	movzwl	port(%rip), %eax
	movzwl	%ax, %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC67, %edi
	movl	$0, %eax
	call	printf
	movq	path(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC68, %edi
	movl	$0, %eax
	call	printf
	movq	doclen(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC69, %edi
	movl	$0, %eax
	call	printf
	movl	concurrency(%rip), %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC70, %edi
	movl	$0, %eax
	call	printf
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	-64(%rbp), %rsi
	movq	%rsi, -88(%rbp)
	movsd	-88(%rbp), %xmm0
	movq	%rax, %rsi
	movl	$.LC71, %edi
	movl	$1, %eax
	call	printf
	movl	done(%rip), %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC72, %edi
	movl	$0, %eax
	call	printf
	movl	bad(%rip), %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC73, %edi
	movl	$0, %eax
	call	printf
	movl	bad(%rip), %eax
	testl	%eax, %eax
	je	.L120
	movl	err_except(%rip), %edi
	movl	err_length(%rip), %esi
	movl	err_conn(%rip), %ecx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC74, %edi
	movl	$0, %eax
	call	printf
.L120:
	movl	err_response(%rip), %eax
	testl	%eax, %eax
	je	.L121
	movl	err_response(%rip), %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC75, %edi
	movl	$0, %eax
	call	printf
.L121:
	movl	keepalive(%rip), %eax
	testl	%eax, %eax
	je	.L122
	movl	doneka(%rip), %esi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movl	%esi, %r8d
	movq	%rax, %rsi
	movl	$.LC76, %edi
	movl	$0, %eax
	call	printf
.L122:
	movq	totalread(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC77, %edi
	movl	$0, %eax
	call	printf
	movl	posting(%rip), %eax
	testl	%eax, %eax
	jle	.L123
	movq	totalposted(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC78, %edi
	movl	$0, %eax
	call	printf
.L123:
	movq	totalbread(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC79, %edi
	movl	$0, %eax
	call	printf
	pxor	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jp	.L129
	pxor	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	je	.L124
.L129:
	movl	done(%rip), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC25(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	divsd	-64(%rbp), %xmm0
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC80, %edi
	movl	$1, %eax
	call	printf
	movq	totalread(%rip), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-64(%rbp), %xmm0
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC81, %edi
	movl	$1, %eax
	call	printf
	movl	posting(%rip), %eax
	testl	%eax, %eax
	jle	.L124
	movq	totalposted(%rip), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-64(%rbp), %xmm0
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC82, %edi
	movl	$1, %eax
	call	printf
	movq	totalread(%rip), %rdx
	movq	totalposted(%rip), %rax
	addq	%rdx, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	divsd	-64(%rbp), %xmm0
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC83, %edi
	movl	$1, %eax
	call	printf
.L124:
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -32(%rbp)
	movabsq	$9223372036854775807, %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L126
.L127:
	movq	stats(%rip), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	cmovge	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rax, -24(%rbp)
	addl	$1, -4(%rbp)
.L126:
	movl	done(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L127
	movq	-32(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	leaq	500(%rax), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movl	done(%rip), %eax
	testl	%eax, %eax
	jle	.L128
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC84, %edi
	movl	$0, %eax
	call	printf
	movq	tdstring(%rip), %rdi
	movq	tdstring(%rip), %rsi
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	movq	%rdi, %r9
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC85, %edi
	movl	$0, %eax
	call	printf
	movq	tdstring(%rip), %rsi
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-16(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, %r9
	movq	tdstring(%rip), %r8
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	subq	$8, %rsp
	movq	-32(%rbp), %rdi
	pushq	-48(%rbp)
	pushq	%rsi
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$.LC86, %edi
	movl	$0, %eax
	call	printf
	addq	$32, %rsp
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	movq	%rax, %rdi
	movq	tdstring(%rip), %rsi
	movl	done(%rip), %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movl	done(%rip), %eax
	movslq	%eax, %r11
	movq	-16(%rbp), %rax
	cqto
	idivq	%r11
	subq	%rax, %rcx
	movq	%rcx, %r10
	movq	tdstring(%rip), %r9
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	movq	%rax, %r8
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	subq	$8, %rsp
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%rax, %rsi
	movl	$.LC87, %edi
	movl	$0, %eax
	call	printf
	addq	$32, %rsp
	movq	tdstring(%rip), %rsi
	movl	done(%rip), %eax
	movslq	%eax, %rdi
	movq	-24(%rbp), %rax
	cqto
	idivq	%rdi
	movq	%rax, %r9
	movq	tdstring(%rip), %r8
	movq	tdstring(%rip), %rcx
	movq	tdstring(%rip), %rdx
	movq	trstring(%rip), %rax
	subq	$8, %rsp
	movq	-40(%rbp), %rdi
	pushq	-56(%rbp)
	pushq	%rsi
	pushq	%r9
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$.LC88, %edi
	movl	$0, %eax
	call	printf
	addq	$32, %rsp
.L128:
	movl	$.LC89, %edi
	call	puts
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	output_html_results, .-output_html_results
	.section	.rodata
.LC90:
	.string	"socket"
.LC91:
	.string	"socket nonblock"
.LC92:
	.string	"socket send buffer"
.LC93:
	.string	"socket receive buffer"
	.align 8
.LC94:
	.string	"\nTest aborted after 10 failures\n\n"
.LC95:
	.string	"apr_socket_connect()"
	.text
	.type	start_connect, @function
start_connect:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	started(%rip), %edx
	movl	requests(%rip), %eax
	cmpl	%eax, %edx
	jl	.L131
	jmp	.L130
.L131:
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 2116(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 2112(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 2120(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	jmp	.L134
.L133:
	movq	cntxt(%rip), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
.L134:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	destsa(%rip), %rax
	movl	28(%rax), %eax
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rdi
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$1, %edx
	movl	%eax, %esi
	call	apr_socket_create
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L135
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC90, %edi
	call	apr_err
.L135:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, %edx
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L136
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC91, %edi
	call	apr_err
.L136:
	movl	windowsize(%rip), %eax
	testl	%eax, %eax
	je	.L137
	movl	windowsize(%rip), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L138
	cmpl	$70023, -4(%rbp)
	je	.L138
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC92, %edi
	call	apr_err
.L138:
	movl	windowsize(%rip), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	apr_socket_opt_set
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L137
	cmpl	$70023, -4(%rbp)
	je	.L137
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC93, %edi
	call	apr_err
.L137:
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 2128(%rax)
	movq	destsa(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_connect
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L139
	cmpl	$115, -4(%rbp)
	jne	.L140
	movq	-56(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movl	$1, -40(%rbp)
	movw	$4, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	readbits(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
	nop
	jmp	.L130
.L140:
	movl	$1, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	readbits(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_remove
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	err_conn(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_conn(%rip)
	movl	bad(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bad(%rip)
	cmpl	$10, %eax
	jle	.L141
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC94, %edi
	call	fwrite
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC95, %edi
	call	apr_err
.L141:
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	start_connect
	nop
	jmp	.L130
.L139:
	movq	-56(%rbp), %rax
	movl	$2, 16(%rax)
	movl	started(%rip), %eax
	addl	$1, %eax
	movl	%eax, started(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_request
.L130:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	start_connect, .-start_connect
	.section	.rodata
.LC96:
	.string	"Completed %d requests\n"
	.text
	.type	close_connection, @function
close_connection:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L143
	movq	-56(%rbp), %rax
	movl	2116(%rax), %eax
	testl	%eax, %eax
	je	.L143
	movl	good(%rip), %eax
	testl	%eax, %eax
	je	.L144
	movl	good(%rip), %eax
	subl	$1, %eax
	movl	%eax, good(%rip)
	jmp	.L145
.L144:
	jmp	.L145
.L143:
	movl	good(%rip), %eax
	cmpl	$1, %eax
	jne	.L146
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, doclen(%rip)
	jmp	.L147
.L146:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdx
	movq	doclen(%rip), %rax
	cmpq	%rax, %rdx
	je	.L147
	movl	bad(%rip), %eax
	addl	$1, %eax
	movl	%eax, bad(%rip)
	movl	err_length(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_length(%rip)
.L147:
	movl	done(%rip), %edx
	movl	requests(%rip), %eax
	cmpl	%eax, %edx
	jge	.L145
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, done(%rip)
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 2160(%rax)
	movq	-56(%rbp), %rax
	movq	2128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	2136(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2128(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rax
	movq	2160(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2128(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	2152(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	2144(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	heartbeatres(%rip), %eax
	testl	%eax, %eax
	je	.L145
	movl	done(%rip), %eax
	movl	heartbeatres(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L145
	movl	done(%rip), %edx
	movq	stderr(%rip), %rax
	movl	$.LC96, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L145:
	movl	$1, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	readbits(%rip), %rax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_remove
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	start_connect
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	close_connection, .-close_connection
	.section	.rodata
.LC97:
	.string	"apr_socket_recv"
.LC98:
	.string	"LOG: header received:\n%s\n"
.LC99:
	.string	"\r\n\r\n"
.LC100:
	.string	"\n\n"
.LC101:
	.string	"Server:"
.LC102:
	.string	"HTTP"
	.align 8
.LC103:
	.string	"WARNING: Response code not 2xx (%s)\n"
.LC104:
	.string	"LOG: Response code = %s\n"
.LC105:
	.string	"Keep-Alive"
.LC106:
	.string	"keep-alive"
.LC107:
	.string	"Content-Length:"
.LC108:
	.string	"Content-length:"
	.text
	.type	read_connection, @function
read_connection:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	$8192, -88(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-88(%rbp), %rdx
	movl	$buffer, %esi
	movq	%rax, %rdi
	call	apr_socket_recv
	movl	%eax, -44(%rbp)
	cmpl	$11, -44(%rbp)
	jne	.L150
	jmp	.L149
.L150:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L152
	cmpl	$70014, -44(%rbp)
	jne	.L152
	movl	good(%rip), %eax
	addl	$1, %eax
	movl	%eax, good(%rip)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	close_connection
	jmp	.L149
.L152:
	cmpl	$0, -44(%rbp)
	je	.L153
	movl	err_recv(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_recv(%rip)
	movl	recverrok(%rip), %eax
	testl	%eax, %eax
	je	.L154
	movl	bad(%rip), %eax
	addl	$1, %eax
	movl	%eax, bad(%rip)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	close_connection
	movl	verbosity(%rip), %eax
	testl	%eax, %eax
	jle	.L155
	leaq	-224(%rbp), %rcx
	movl	-44(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movl	-44(%rbp), %edx
	movl	%edx, %r8d
	movl	$.LC97, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L149
.L155:
	jmp	.L149
.L154:
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC97, %edi
	call	apr_err
.L153:
	movq	totalread(%rip), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, totalread(%rip)
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L156
	call	apr_time_now
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 2152(%rax)
.L156:
	movq	-232(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-232(%rbp), %rax
	movl	2120(%rax), %eax
	testl	%eax, %eax
	jne	.L157
	movl	$4, -12(%rbp)
	movq	-232(%rbp), %rax
	movl	2112(%rax), %eax
	movl	$2047, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cltq
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	cmovbe	%rdx, %rax
	movl	%eax, -60(%rbp)
	movq	-232(%rbp), %rax
	movl	2112(%rax), %eax
	cltq
	leaq	64(%rax), %rdx
	movq	-232(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movl	$buffer, %esi
	movq	%rcx, %rdi
	call	memcpy
	movq	-232(%rbp), %rax
	movl	2112(%rax), %edx
	movl	-60(%rbp), %eax
	addl	%eax, %edx
	movq	-232(%rbp), %rax
	movl	%edx, 2112(%rax)
	movl	-60(%rbp), %eax
	cltq
	subq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movl	2112(%rax), %eax
	movq	-232(%rbp), %rdx
	cltq
	movb	$0, 64(%rdx,%rax)
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L158
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movq	%rax, %rsi
	movl	$.LC98, %edi
	movl	$0, %eax
	call	printf
.L158:
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC99, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L159
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -8(%rbp)
	movl	$2, -12(%rbp)
.L159:
	cmpq	$0, -8(%rbp)
	jne	.L160
	cmpq	$0, -56(%rbp)
	je	.L161
	jmp	.L149
.L161:
	movl	$1, -216(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	readbits(%rip), %rax
	leaq	-224(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_remove
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	err_response(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_response(%rip)
	movl	bad(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bad(%rip)
	cmpl	$10, %eax
	jle	.L162
	movl	$.LC94, %edi
	call	err
.L162:
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	start_connect
	jmp	.L179
.L160:
	movl	good(%rip), %eax
	testl	%eax, %eax
	jne	.L164
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC101, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -24(%rbp)
	movq	$servername, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L165
	addq	$8, -24(%rbp)
	jmp	.L166
.L167:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -24(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L166:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jg	.L167
.L165:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L164:
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC102, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L168
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$9, %rax
	jbe	.L168
	movq	-72(%rbp), %rax
	leaq	9(%rax), %rcx
	leaq	-96(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movb	$0, -93(%rbp)
	jmp	.L169
.L168:
	movl	$3158069, -96(%rbp)
.L169:
	movzbl	-96(%rbp), %eax
	cmpb	$50, %al
	je	.L170
	movl	err_response(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_response(%rip)
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L172
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC103, %edi
	movl	$0, %eax
	call	printf
	jmp	.L172
.L170:
	movl	verbosity(%rip), %eax
	cmpl	$2, %eax
	jle	.L172
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC104, %edi
	movl	$0, %eax
	call	printf
.L172:
	movq	-232(%rbp), %rax
	movl	$1, 2120(%rax)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movl	keepalive(%rip), %eax
	testl	%eax, %eax
	je	.L173
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC105, %esi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	jne	.L174
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC106, %esi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	je	.L173
.L174:
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC107, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L175
	movq	-232(%rbp), %rax
	addq	$64, %rax
	movl	$.LC108, %esi
	movq	%rax, %rdi
	call	strstr
	movq	%rax, -40(%rbp)
.L175:
	cmpq	$0, -40(%rbp)
	je	.L176
	movq	-232(%rbp), %rax
	movl	$1, 2116(%rax)
	movl	posting(%rip), %eax
	testl	%eax, %eax
	js	.L177
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	atoi
	cltq
	jmp	.L178
.L177:
	movl	$0, %eax
.L178:
	movq	-232(%rbp), %rdx
	movq	%rax, 56(%rdx)
.L176:
	cmpq	$0, -40(%rbp)
	jne	.L173
	movq	-232(%rbp), %rax
	movl	$1, 2116(%rax)
	movq	-232(%rbp), %rax
	movq	$0, 56(%rax)
.L173:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movl	2112(%rax), %eax
	cltq
	movq	-232(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, %rdi
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-8(%rbp), %rcx
	addq	%rsi, %rcx
	subq	%rcx, %rdi
	movq	%rdi, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movl	-60(%rbp), %eax
	cltq
	subq	%rax, %rcx
	movq	%rcx, %rax
	addq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	totalbread(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, totalbread(%rip)
	jmp	.L179
.L157:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	totalbread(%rip), %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, totalbread(%rip)
.L179:
	movq	-232(%rbp), %rax
	movl	2116(%rax), %eax
	testl	%eax, %eax
	je	.L149
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	jb	.L149
	movl	good(%rip), %eax
	addl	$1, %eax
	movl	%eax, good(%rip)
	movl	good(%rip), %eax
	cmpl	$1, %eax
	jne	.L181
	movq	-232(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, doclen(%rip)
	jmp	.L182
.L181:
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	doclen(%rip), %rax
	cmpq	%rax, %rdx
	je	.L182
	movl	bad(%rip), %eax
	addl	$1, %eax
	movl	%eax, bad(%rip)
	movl	err_length(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_length(%rip)
.L182:
	movl	done(%rip), %edx
	movl	requests(%rip), %eax
	cmpl	%eax, %edx
	jge	.L183
	movq	stats(%rip), %rcx
	movl	done(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, done(%rip)
	cltq
	salq	$5, %rax
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	doneka(%rip), %eax
	addl	$1, %eax
	movl	%eax, doneka(%rip)
	call	apr_time_now
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 2160(%rax)
	movq	-232(%rbp), %rax
	movq	2128(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-232(%rbp), %rax
	movq	2136(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	2128(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-232(%rbp), %rax
	movq	2160(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	2128(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-232(%rbp), %rax
	movq	2152(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	2144(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovns	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	heartbeatres(%rip), %eax
	testl	%eax, %eax
	je	.L183
	movl	done(%rip), %eax
	movl	heartbeatres(%rip), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L183
	movl	done(%rip), %edx
	movq	stderr(%rip), %rax
	movl	$.LC96, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L183:
	movq	-232(%rbp), %rax
	movl	$0, 2116(%rax)
	movq	-232(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-232(%rbp), %rax
	movl	$0, 2120(%rax)
	movq	-232(%rbp), %rax
	movl	$0, 2112(%rax)
	movq	-232(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-232(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 24(%rax)
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 2136(%rax)
	movq	-232(%rbp), %rax
	movq	2136(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 2128(%rax)
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	write_request
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	read_connection, .-read_connection
	.section	.rodata
.LC109:
	.string	"Benchmarking %s "
.LC110:
	.string	"[through %s:%d] "
.LC111:
	.string	"..."
.LC112:
	.string	"(be patient)%s"
.LC113:
	.string	"apr_pollset_create failed"
.LC114:
	.string	"\r\n"
.LC115:
	.string	"Host: "
.LC116:
	.string	"2.3"
.LC117:
	.string	"User-Agent: ApacheBench/"
.LC118:
	.string	"Accept: */*\r\n"
.LC119:
	.string	"Connection: Keep-Alive\r\n"
.LC120:
	.string	""
.LC121:
	.string	"GET"
.LC122:
	.string	"HEAD"
.LC123:
	.string	"%s %s HTTP/1.0\r\n%s%s%s%s\r\n"
.LC124:
	.string	"text/plain"
	.align 8
.LC125:
	.string	"POST %s HTTP/1.0\r\n%s%s%sContent-length: %lu\r\nContent-type: %s\r\n%s\r\n"
.LC126:
	.string	"Request too long\n"
	.align 8
.LC127:
	.string	"INFO: POST header == \n---\n%s\n---\n"
	.align 8
.LC128:
	.string	"error creating request buffer: out of memory\n"
	.align 8
.LC129:
	.string	"apr_sockaddr_info_get() for %s"
.LC130:
	.string	"apr_poll"
.LC131:
	.string	"\nServer timed out\n\n"
.LC132:
	.string	"Finished %d requests\n"
.LC133:
	.string	"..done"
	.text
	.type	test, @function
test:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movl	$0, -8(%rbp)
	movl	isproxy(%rip), %eax
	testl	%eax, %eax
	je	.L186
	movq	cntxt(%rip), %rax
	movl	$proxyhost, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, connecthost(%rip)
	movl	proxyport(%rip), %eax
	movw	%ax, connectport(%rip)
	jmp	.L187
.L186:
	movq	hostname(%rip), %rdx
	movq	cntxt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, connecthost(%rip)
	movzwl	port(%rip), %eax
	movw	%ax, connectport(%rip)
.L187:
	movl	use_html(%rip), %eax
	testl	%eax, %eax
	jne	.L188
	movq	hostname(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC109, %edi
	movl	$0, %eax
	call	printf
	movl	isproxy(%rip), %eax
	testl	%eax, %eax
	je	.L189
	movl	proxyport(%rip), %eax
	movl	%eax, %edx
	movl	$proxyhost, %esi
	movl	$.LC110, %edi
	movl	$0, %eax
	call	printf
.L189:
	movl	heartbeatres(%rip), %eax
	testl	%eax, %eax
	je	.L190
	movl	$.LC6, %eax
	jmp	.L191
.L190:
	movl	$.LC111, %eax
.L191:
	movq	%rax, %rsi
	movl	$.LC112, %edi
	movl	$0, %eax
	call	printf
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
.L188:
	movl	concurrency(%rip), %eax
	cltq
	movl	$2176, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, con(%rip)
	movl	requests(%rip), %eax
	cltq
	movl	$32, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, stats(%rip)
	movq	cntxt(%rip), %rax
	movl	concurrency(%rip), %edx
	movl	%edx, %esi
	movl	$0, %ecx
	movq	%rax, %rdx
	movl	$readbits, %edi
	call	apr_pollset_create
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L192
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC113, %edi
	call	apr_err
.L192:
	movl	opt_host(%rip), %eax
	testl	%eax, %eax
	jne	.L193
	movq	colonhost(%rip), %rcx
	movq	host_field(%rip), %rdx
	movq	hdrs(%rip), %rsi
	movq	cntxt(%rip), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$.LC114, %r9d
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$.LC115, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	movq	%rax, hdrs(%rip)
.L193:
	movl	opt_useragent(%rip), %eax
	testl	%eax, %eax
	jne	.L194
	movq	hdrs(%rip), %rsi
	movq	cntxt(%rip), %rax
	movl	$0, %r9d
	movl	$.LC114, %r8d
	movl	$.LC116, %ecx
	movl	$.LC117, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, hdrs(%rip)
.L194:
	movl	opt_accept(%rip), %eax
	testl	%eax, %eax
	jne	.L195
	movq	hdrs(%rip), %rsi
	movq	cntxt(%rip), %rax
	movl	$0, %ecx
	movl	$.LC118, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, hdrs(%rip)
.L195:
	movl	posting(%rip), %eax
	testl	%eax, %eax
	jg	.L196
	movq	hdrs(%rip), %rsi
	movq	auth(%rip), %rcx
	movq	cookie(%rip), %rdx
	movl	keepalive(%rip), %eax
	testl	%eax, %eax
	je	.L197
	movl	$.LC119, %r8d
	jmp	.L198
.L197:
	movl	$.LC120, %r8d
.L198:
	movl	isproxy(%rip), %eax
	testl	%eax, %eax
	je	.L199
	movq	fullurl(%rip), %rax
	jmp	.L200
.L199:
	movq	path(%rip), %rax
.L200:
	movl	posting(%rip), %edi
	testl	%edi, %edi
	jne	.L201
	movl	$.LC121, %r10d
	jmp	.L202
.L201:
	movl	$.LC122, %r10d
.L202:
	movq	request(%rip), %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movq	%r8, %r9
	movq	%rax, %r8
	movq	%r10, %rcx
	movl	$.LC123, %edx
	movl	$2048, %esi
	movl	$0, %eax
	call	apr_snprintf
	addq	$32, %rsp
	movl	%eax, -8(%rbp)
	jmp	.L203
.L196:
	movq	hdrs(%rip), %rsi
	movzbl	content_type(%rip), %eax
	testb	%al, %al
	je	.L204
	movl	$content_type, %r9d
	jmp	.L205
.L204:
	movl	$.LC124, %r9d
.L205:
	movq	postlen(%rip), %rcx
	movq	auth(%rip), %rdx
	movq	cookie(%rip), %r8
	movl	keepalive(%rip), %eax
	testl	%eax, %eax
	je	.L206
	movl	$.LC119, %r10d
	jmp	.L207
.L206:
	movl	$.LC120, %r10d
.L207:
	movl	isproxy(%rip), %eax
	testl	%eax, %eax
	je	.L208
	movq	fullurl(%rip), %rax
	jmp	.L209
.L208:
	movq	path(%rip), %rax
.L209:
	movq	request(%rip), %rdi
	pushq	%rsi
	pushq	%r9
	pushq	%rcx
	pushq	%rdx
	movq	%r8, %r9
	movq	%r10, %r8
	movq	%rax, %rcx
	movl	$.LC125, %edx
	movl	$2048, %esi
	movl	$0, %eax
	call	apr_snprintf
	addq	$32, %rsp
	movl	%eax, -8(%rbp)
.L203:
	movl	-8(%rbp), %eax
	cmpl	$2047, %eax
	jbe	.L210
	movl	$.LC126, %edi
	call	err
.L210:
	movl	verbosity(%rip), %eax
	cmpl	$1, %eax
	jle	.L211
	movq	request(%rip), %rax
	movq	%rax, %rsi
	movl	$.LC127, %edi
	movl	$0, %eax
	call	printf
.L211:
	movq	request(%rip), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, reqlen(%rip)
	movl	posting(%rip), %eax
	cmpl	$1, %eax
	jne	.L212
	movq	postlen(%rip), %rdx
	movq	reqlen(%rip), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L213
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$45, %edx
	movl	$1, %esi
	movl	$.LC128, %edi
	call	fwrite
	jmp	.L185
.L213:
	movq	request(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	postlen(%rip), %rdx
	movq	postdata(%rip), %rax
	movq	reqlen(%rip), %rsi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-24(%rbp), %rax
	movq	%rax, request(%rip)
.L212:
	movq	cntxt(%rip), %rcx
	movzwl	connectport(%rip), %eax
	movzwl	%ax, %edx
	movq	connecthost(%rip), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$destsa, %edi
	call	apr_sockaddr_info_get
	movw	%ax, -26(%rbp)
	cmpw	$0, -26(%rbp)
	je	.L215
	movq	connecthost(%rip), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rcx
	movl	$.LC129, %edx
	movl	$120, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movswl	-26(%rbp), %edx
	leaq	-192(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_err
.L215:
	call	apr_time_now
	movq	%rax, lasttime(%rip)
	movq	lasttime(%rip), %rax
	movq	%rax, start(%rip)
	movl	tlimit(%rip), %eax
	testl	%eax, %eax
	je	.L216
	movl	tlimit(%rip), %eax
	cltq
	imulq	$1000000, %rax, %rdx
	movq	start(%rip), %rax
	addq	%rdx, %rax
	jmp	.L217
.L216:
	movabsq	$9223372036854775807, %rax
.L217:
	movq	%rax, -40(%rbp)
	movl	$output_results, %esi
	movl	$2, %edi
	call	apr_signal
	movl	$0, -4(%rbp)
	jmp	.L218
.L219:
	movq	con(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	movl	%eax, 2168(%rdx)
	movq	con(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$7, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	start_connect
	addl	$1, -4(%rbp)
.L218:
	movl	concurrency(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L219
.L235:
	movl	concurrency(%rip), %eax
	movl	%eax, -60(%rbp)
	movq	aprtimeout(%rip), %rsi
	movq	readbits(%rip), %rax
	leaq	-72(%rbp), %rcx
	leaq	-60(%rbp), %rdx
	movq	%rax, %rdi
	call	apr_pollset_poll
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L220
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC130, %edi
	call	apr_err
.L220:
	movl	-60(%rbp), %eax
	testl	%eax, %eax
	jne	.L221
	movl	$.LC131, %edi
	call	err
.L221:
	movl	$0, -4(%rbp)
	jmp	.L222
.L233:
	movq	-72(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L223
	jmp	.L224
.L223:
	movq	-48(%rbp), %rax
	movzwl	14(%rax), %eax
	movw	%ax, -26(%rbp)
	movswl	-26(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L225
	movswl	-26(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L225
	movswl	-26(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L226
.L225:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	read_connection
.L226:
	movswl	-26(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L227
	movswl	-26(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L228
.L227:
	movl	bad(%rip), %eax
	addl	$1, %eax
	movl	%eax, bad(%rip)
	movl	err_except(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_except(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	start_connect
	jmp	.L224
.L228:
	movswl	-26(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L229
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L230
	movq	destsa(%rip), %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_connect
	movw	%ax, -26(%rbp)
	movl	$1, -184(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	readbits(%rip), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_remove
	cmpw	$0, -26(%rbp)
	je	.L231
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_socket_close
	movl	err_conn(%rip), %eax
	addl	$1, %eax
	movl	%eax, err_conn(%rip)
	movl	bad(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, bad(%rip)
	cmpl	$10, %eax
	jle	.L232
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$33, %edx
	movl	$1, %esi
	movl	$.LC94, %edi
	call	fwrite
	movswl	-26(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC95, %edi
	call	apr_err
.L232:
	movq	-56(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	start_connect
	jmp	.L224
.L231:
	movq	-56(%rbp), %rax
	movl	$2, 16(%rax)
	movl	started(%rip), %eax
	addl	$1, %eax
	movl	%eax, started(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_request
	jmp	.L229
.L230:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	write_request
.L229:
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$3, %eax
	jne	.L224
	movl	$1, -184(%rbp)
	movw	$1, -180(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	readbits(%rip), %rax
	leaq	-192(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pollset_add
.L224:
	addl	$1, -4(%rbp)
.L222:
	movl	-60(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L233
	movq	lasttime(%rip), %rax
	cmpq	-40(%rbp), %rax
	jge	.L234
	movl	done(%rip), %edx
	movl	requests(%rip), %eax
	cmpl	%eax, %edx
	jl	.L235
.L234:
	movl	heartbeatres(%rip), %eax
	testl	%eax, %eax
	je	.L236
	movl	done(%rip), %edx
	movq	stderr(%rip), %rax
	movl	$.LC132, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L237
.L236:
	movl	$.LC133, %edi
	call	puts
.L237:
	movl	use_html(%rip), %eax
	testl	%eax, %eax
	je	.L238
	call	output_html_results
	jmp	.L185
.L238:
	movl	$0, %edi
	call	output_results
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	test, .-test
	.section	.rodata
.LC134:
	.string	"2.3 <$Revision: 655654 $>"
	.align 8
.LC135:
	.string	"This is ApacheBench, Version %s\n"
	.align 8
.LC136:
	.string	"Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/"
	.align 8
.LC137:
	.string	"Licensed to The Apache Software Foundation, http://www.apache.org/"
.LC138:
	.string	"<p>"
.LC139:
	.string	"$Revision: 655654 $"
	.align 8
.LC140:
	.string	" This is ApacheBench, Version %s <i>&lt;%s&gt;</i><br>\n"
	.align 8
.LC141:
	.string	" Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/<br>"
	.align 8
.LC142:
	.string	" Licensed to The Apache Software Foundation, http://www.apache.org/<br>"
.LC143:
	.string	"</p>\n<p>"
	.text
	.type	copyright, @function
copyright:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	use_html(%rip), %eax
	testl	%eax, %eax
	jne	.L240
	movl	$.LC134, %esi
	movl	$.LC135, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC136, %edi
	call	puts
	movl	$.LC137, %edi
	call	puts
	movl	$10, %edi
	call	putchar
	jmp	.L239
.L240:
	movl	$.LC138, %edi
	call	puts
	movl	$.LC139, %edx
	movl	$.LC116, %esi
	movl	$.LC140, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC141, %edi
	call	puts
	movl	$.LC142, %edi
	call	puts
	movl	$.LC143, %edi
	call	puts
.L239:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	copyright, .-copyright
	.section	.rodata
	.align 8
.LC144:
	.string	"Usage: %s [options] [http://]hostname[:port]/path\n"
.LC145:
	.string	"Options are:\n"
	.align 8
.LC146:
	.string	"    -n requests     Number of requests to perform\n"
	.align 8
.LC147:
	.string	"    -c concurrency  Number of multiple requests to make\n"
	.align 8
.LC148:
	.string	"    -t timelimit    Seconds to max. wait for responses\n"
	.align 8
.LC149:
	.string	"    -b windowsize   Size of TCP send/receive buffer, in bytes\n"
	.align 8
.LC150:
	.string	"    -p postfile     File containing data to POST. Remember also to set -T\n"
	.align 8
.LC151:
	.string	"    -T content-type Content-type header for POSTing, eg.\n"
	.align 8
.LC152:
	.string	"                    'application/x-www-form-urlencoded'\n"
	.align 8
.LC153:
	.string	"                    Default is 'text/plain'\n"
	.align 8
.LC154:
	.string	"    -v verbosity    How much troubleshooting info to print\n"
	.align 8
.LC155:
	.string	"    -w              Print out results in HTML tables\n"
	.align 8
.LC156:
	.string	"    -i              Use HEAD instead of GET\n"
	.align 8
.LC157:
	.string	"    -x attributes   String to insert as table attributes\n"
	.align 8
.LC158:
	.string	"    -y attributes   String to insert as tr attributes\n"
	.align 8
.LC159:
	.string	"    -z attributes   String to insert as td or th attributes\n"
	.align 8
.LC160:
	.string	"    -C attribute    Add cookie, eg. 'Apache=1234. (repeatable)\n"
	.align 8
.LC161:
	.string	"    -H attribute    Add Arbitrary header line, eg. 'Accept-Encoding: gzip'\n"
	.align 8
.LC162:
	.string	"                    Inserted after all normal header lines. (repeatable)\n"
	.align 8
.LC163:
	.string	"    -A attribute    Add Basic WWW Authentication, the attributes\n"
	.align 8
.LC164:
	.string	"                    are a colon separated username and password.\n"
	.align 8
.LC165:
	.string	"    -P attribute    Add Basic Proxy Authentication, the attributes\n"
	.align 8
.LC166:
	.string	"    -X proxy:port   Proxyserver and port number to use\n"
	.align 8
.LC167:
	.string	"    -V              Print version number and exit\n"
	.align 8
.LC168:
	.string	"    -k              Use HTTP KeepAlive feature\n"
	.align 8
.LC169:
	.string	"    -d              Do not show percentiles served table.\n"
	.align 8
.LC170:
	.string	"    -S              Do not show confidence estimators and warnings.\n"
	.align 8
.LC171:
	.string	"    -g filename     Output collected data to gnuplot format file.\n"
	.align 8
.LC172:
	.string	"    -e filename     Output CSV file with percentages served\n"
	.align 8
.LC173:
	.string	"    -r              Don't exit on socket receive errors.\n"
	.align 8
.LC174:
	.string	"    -h              Display usage information (this message)\n"
	.text
	.type	usage, @function
usage:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC144, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$13, %edx
	movl	$1, %esi
	movl	$.LC145, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC146, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	movl	$.LC147, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	movl	$.LC148, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$62, %edx
	movl	$1, %esi
	movl	$.LC149, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$74, %edx
	movl	$1, %esi
	movl	$.LC150, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC151, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$56, %edx
	movl	$1, %esi
	movl	$.LC152, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC153, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$59, %edx
	movl	$1, %esi
	movl	$.LC154, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$53, %edx
	movl	$1, %esi
	movl	$.LC155, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$44, %edx
	movl	$1, %esi
	movl	$.LC156, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC157, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	movl	$.LC158, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	movl	$.LC159, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$63, %edx
	movl	$1, %esi
	movl	$.LC160, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$75, %edx
	movl	$1, %esi
	movl	$.LC161, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$73, %edx
	movl	$1, %esi
	movl	$.LC162, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC163, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC164, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$67, %edx
	movl	$1, %esi
	movl	$.LC165, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$65, %edx
	movl	$1, %esi
	movl	$.LC164, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$55, %edx
	movl	$1, %esi
	movl	$.LC166, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$50, %edx
	movl	$1, %esi
	movl	$.LC167, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$47, %edx
	movl	$1, %esi
	movl	$.LC168, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$58, %edx
	movl	$1, %esi
	movl	$.LC169, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$68, %edx
	movl	$1, %esi
	movl	$.LC170, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$66, %edx
	movl	$1, %esi
	movl	$.LC171, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$60, %edx
	movl	$1, %esi
	movl	$.LC172, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$57, %edx
	movl	$1, %esi
	movl	$.LC173, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$61, %edx
	movl	$1, %esi
	movl	$.LC174, %edi
	call	fwrite
	movl	$22, %edi
	call	exit
	.cfi_endproc
.LFE16:
	.size	usage, .-usage
	.section	.rodata
.LC175:
	.string	"http://"
.LC176:
	.string	"https://"
	.align 8
.LC177:
	.string	"SSL not compiled in; no https support\n"
.LC178:
	.string	"[%s]"
.LC179:
	.string	":%d"
	.text
	.type	parse_url, @function
parse_url:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	cntxt(%rip), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, fullurl(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$7, %rax
	jbe	.L244
	movq	-40(%rbp), %rax
	movl	$7, %edx
	movl	$.LC175, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L244
	addq	$7, -40(%rbp)
	jmp	.L245
.L244:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$8, %rax
	jbe	.L245
	movq	-40(%rbp), %rax
	movl	$8, %edx
	movl	$.LC176, %esi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L245
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$38, %edx
	movl	$1, %esi
	movl	$.LC177, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L245:
	movq	-40(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L246
	movl	$1, %eax
	jmp	.L255
.L246:
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, %rdx
	movq	cntxt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	cntxt(%rip), %rcx
	movq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$port, %edx
	movq	%rax, %rsi
	movl	$hostname, %edi
	call	apr_parse_addr_port
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L248
	movq	hostname(%rip), %rax
	testq	%rax, %rax
	je	.L248
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L249
.L248:
	movl	$1, %eax
	jmp	.L255
.L249:
	movq	cntxt(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, path(%rip)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	jne	.L250
	movq	hostname(%rip), %rdx
	movq	cntxt(%rip), %rax
	movl	$.LC178, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, host_field(%rip)
	jmp	.L251
.L250:
	movq	hostname(%rip), %rax
	movq	%rax, host_field(%rip)
.L251:
	movzwl	port(%rip), %eax
	testw	%ax, %ax
	jne	.L252
	movw	$80, port(%rip)
.L252:
	movzwl	port(%rip), %eax
	cmpw	$80, %ax
	je	.L253
	movzwl	port(%rip), %eax
	movzwl	%ax, %edx
	movq	cntxt(%rip), %rax
	movl	$.LC179, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, colonhost(%rip)
	jmp	.L254
.L253:
	movq	$.LC120, colonhost(%rip)
.L254:
	movl	$0, %eax
.L255:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	parse_url, .-parse_url
	.section	.rodata
	.align 8
.LC180:
	.string	"ab: Could not open POST data file (%s): %s\n"
	.align 8
.LC181:
	.string	"ab: Could not stat POST data file (%s): %s\n"
	.align 8
.LC182:
	.string	"ab: Could not allocate POST data buffer\n"
	.align 8
.LC183:
	.string	"ab: Could not read POST data file: %s\n"
	.text
	.type	open_postfile, @function
open_postfile:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -280(%rbp)
	movq	cntxt(%rip), %rdx
	movq	-280(%rbp), %rsi
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L257
	leaq	-272(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-280(%rbp), %rdx
	movl	$.LC180, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-4(%rbp), %eax
	jmp	.L262
.L257:
	movq	-16(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$7582064, %esi
	movq	%rax, %rdi
	call	apr_file_info_get
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L259
	leaq	-272(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-280(%rbp), %rdx
	movl	$.LC181, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-4(%rbp), %eax
	jmp	.L262
.L259:
	movq	-88(%rbp), %rax
	movq	%rax, postlen(%rip)
	movq	postlen(%rip), %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, postdata(%rip)
	movq	postdata(%rip), %rax
	testq	%rax, %rax
	jne	.L260
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$40, %edx
	movl	$1, %esi
	movl	$.LC182, %edi
	call	fwrite
	movl	$12, %eax
	jmp	.L262
.L260:
	movq	postlen(%rip), %rdx
	movq	postdata(%rip), %rsi
	movq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	apr_file_read_full
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L261
	leaq	-272(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$120, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	apr_strerror
	movq	%rax, %rdx
	movq	stderr(%rip), %rax
	movl	$.LC183, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	-4(%rbp), %eax
	jmp	.L262
.L261:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
.L262:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	open_postfile, .-open_postfile
	.section	.rodata
.LC184:
	.string	"bgcolor=white"
.LC185:
	.string	"Invalid number of requests\n"
.LC186:
	.string	"Cannot mix POST and HEAD\n"
.LC187:
	.string	"Cookie: "
	.align 8
.LC188:
	.string	"Authentication credentials too long\n"
.LC189:
	.string	"Authorization: Basic "
.LC190:
	.string	"Proxy credentials too long\n"
.LC191:
	.string	"Proxy-Authorization: Basic "
.LC192:
	.string	"Host:"
.LC193:
	.string	"Accept:"
.LC194:
	.string	"User-Agent:"
	.align 8
.LC195:
	.string	"n:c:t:b:T:p:v:rkVhwix:y:z:C:H:P:A:g:X:de:Sq"
	.align 8
.LC196:
	.string	"%s: wrong number of arguments\n"
.LC197:
	.string	"%s: invalid URL\n"
	.align 8
.LC198:
	.string	"%s: Invalid Concurrency [Range 0..%d]\n"
	.align 8
.LC199:
	.string	"%s: Cannot use concurrency level greater than total number of requests\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movl	%edi, -1092(%rbp)
	movq	%rsi, -1104(%rbp)
	movq	$.LC120, tablestring(%rip)
	movq	$.LC120, trstring(%rip)
	movq	$.LC184, tdstring(%rip)
	movq	$.LC120, cookie(%rip)
	movq	$.LC120, auth(%rip)
	movb	$0, proxyhost(%rip)
	movq	$.LC120, hdrs(%rip)
	leaq	-1104(%rbp), %rcx
	leaq	-1092(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	$apr_terminate, %edi
	call	atexit
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$cntxt, %edi
	call	apr_pool_create_ex
	movq	-1104(%rbp), %rcx
	movl	-1092(%rbp), %edx
	movq	cntxt(%rip), %rsi
	leaq	-1064(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
	jmp	.L264
.L308:
	movzbl	-1073(%rbp), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	cmpl	$57, %eax
	ja	.L264
	movl	%eax, %eax
	movq	.L266(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L266:
	.quad	.L297
	.quad	.L264
	.quad	.L267
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L268
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L300
	.quad	.L264
	.quad	.L264
	.quad	.L270
	.quad	.L271
	.quad	.L264
	.quad	.L272
	.quad	.L264
	.quad	.L273
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L264
	.quad	.L274
	.quad	.L275
	.quad	.L276
	.quad	.L277
	.quad	.L264
	.quad	.L278
	.quad	.L279
	.quad	.L280
	.quad	.L264
	.quad	.L281
	.quad	.L264
	.quad	.L264
	.quad	.L282
	.quad	.L264
	.quad	.L283
	.quad	.L284
	.quad	.L285
	.quad	.L264
	.quad	.L286
	.quad	.L264
	.quad	.L287
	.quad	.L288
	.quad	.L289
	.quad	.L290
	.quad	.L291
	.text
.L282:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, requests(%rip)
	movl	requests(%rip), %eax
	testl	%eax, %eax
	jg	.L292
	movl	$.LC185, %edi
	call	err
.L292:
	jmp	.L264
.L281:
	movl	$1, keepalive(%rip)
	jmp	.L264
.L284:
	movl	$0, heartbeatres(%rip)
	jmp	.L264
.L275:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, concurrency(%rip)
	jmp	.L264
.L274:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, windowsize(%rip)
	jmp	.L264
.L280:
	movl	posting(%rip), %eax
	cmpl	$1, %eax
	jne	.L293
	movl	$.LC186, %edi
	call	err
.L293:
	movl	$-1, posting(%rip)
	jmp	.L264
.L278:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strdup
	movq	%rax, gnuplot(%rip)
	jmp	.L264
.L276:
	movl	$0, percentile(%rip)
	jmp	.L264
.L277:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strdup
	movq	%rax, csvperc(%rip)
	jmp	.L264
.L270:
	movl	$0, confidence(%rip)
	jmp	.L264
.L283:
	movl	posting(%rip), %eax
	testl	%eax, %eax
	je	.L294
	movl	$.LC186, %edi
	call	err
.L294:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	open_postfile
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.L295
	movl	$1, posting(%rip)
	jmp	.L296
.L295:
	movq	postdata(%rip), %rax
	testq	%rax, %rax
	je	.L296
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	exit
.L296:
	jmp	.L264
.L285:
	movl	$1, recverrok(%rip)
	jmp	.L264
.L287:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, verbosity(%rip)
	jmp	.L264
.L286:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, tlimit(%rip)
	movl	$50000, requests(%rip)
	jmp	.L264
.L271:
	movq	-1072(%rbp), %rax
	movq	%rax, %rsi
	movl	$content_type, %edi
	call	strcpy
	jmp	.L264
.L267:
	movq	-1072(%rbp), %rdx
	movq	cntxt(%rip), %rax
	movl	$0, %r8d
	movl	$.LC114, %ecx
	movl	$.LC187, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, cookie(%rip)
	jmp	.L264
.L298:
	movq	-1072(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)
.L297:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-1072(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L298
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edi
	call	apr_base64_encode_len
	cmpl	$1024, %eax
	jbe	.L299
	movl	$.LC188, %edi
	call	err
.L299:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edx
	movq	-1072(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_base64_encode
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movb	$0, -1056(%rbp,%rax)
	movq	auth(%rip), %rsi
	movq	cntxt(%rip), %rax
	leaq	-1056(%rbp), %rdx
	movl	$0, %r9d
	movl	$.LC114, %r8d
	movq	%rdx, %rcx
	movl	$.LC189, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, auth(%rip)
	jmp	.L264
.L301:
	movq	-1072(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)
.L300:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-1072(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L301
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edi
	call	apr_base64_encode_len
	cmpl	$1024, %eax
	jbe	.L302
	movl	$.LC190, %edi
	call	err
.L302:
	movq	-1072(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, %edx
	movq	-1072(%rbp), %rcx
	leaq	-1056(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_base64_encode
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	movb	$0, -1056(%rbp,%rax)
	movq	auth(%rip), %rsi
	movq	cntxt(%rip), %rax
	leaq	-1056(%rbp), %rdx
	movl	$0, %r9d
	movl	$.LC114, %r8d
	movq	%rdx, %rcx
	movl	$.LC191, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, auth(%rip)
	jmp	.L264
.L268:
	movq	-1072(%rbp), %rdx
	movq	hdrs(%rip), %rsi
	movq	cntxt(%rip), %rax
	movl	$0, %r8d
	movl	$.LC114, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, hdrs(%rip)
	movq	-1072(%rbp), %rax
	movl	$5, %edx
	movl	$.LC192, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L303
	movl	$1, opt_host(%rip)
	jmp	.L304
.L303:
	movq	-1072(%rbp), %rax
	movl	$7, %edx
	movl	$.LC193, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L305
	movl	$1, opt_accept(%rip)
	jmp	.L304
.L305:
	movq	-1072(%rbp), %rax
	movl	$11, %edx
	movl	$.LC194, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L304
	movl	$1, opt_useragent(%rip)
.L304:
	jmp	.L264
.L288:
	movl	$1, use_html(%rip)
	jmp	.L264
.L289:
	movl	$1, use_html(%rip)
	movq	-1072(%rbp), %rax
	movq	%rax, tablestring(%rip)
	jmp	.L264
.L273:
	movq	-1072(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L306
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	addq	$1, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, proxyport(%rip)
.L306:
	movq	-1072(%rbp), %rax
	movq	%rax, %rsi
	movl	$proxyhost, %edi
	call	strcpy
	movl	$1, isproxy(%rip)
	jmp	.L264
.L290:
	movl	$1, use_html(%rip)
	movq	-1072(%rbp), %rax
	movq	%rax, trstring(%rip)
	jmp	.L264
.L291:
	movl	$1, use_html(%rip)
	movq	-1072(%rbp), %rax
	movq	%rax, tdstring(%rip)
	jmp	.L264
.L279:
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	usage
	jmp	.L264
.L272:
	call	copyright
	movl	$0, %eax
	jmp	.L317
.L264:
	movq	-1064(%rbp), %rax
	leaq	-1072(%rbp), %rcx
	leaq	-1073(%rbp), %rdx
	movl	$.LC195, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L308
	movq	-1064(%rbp), %rax
	movl	24(%rax), %eax
	movl	-1092(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.L309
	movq	-1104(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC196, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	usage
.L309:
	movq	-1064(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-1064(%rbp), %rax
	movl	24(%rax), %edx
	leal	1(%rdx), %ecx
	movl	%ecx, 24(%rax)
	movslq	%edx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	movq	(%rax), %rdx
	movq	cntxt(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdi
	call	parse_url
	testl	%eax, %eax
	je	.L310
	movq	-1104(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC197, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	usage
.L310:
	movl	concurrency(%rip), %eax
	testl	%eax, %eax
	js	.L311
	movl	concurrency(%rip), %eax
	cmpl	$20000, %eax
	jle	.L312
.L311:
	movq	-1104(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$20000, %ecx
	movl	$.LC198, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	usage
.L312:
	movl	concurrency(%rip), %edx
	movl	requests(%rip), %eax
	cmpl	%eax, %edx
	jle	.L313
	movq	-1104(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	movl	$.LC199, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-1104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	usage
.L313:
	movl	heartbeatres(%rip), %eax
	testl	%eax, %eax
	je	.L314
	movl	requests(%rip), %eax
	cmpl	$150, %eax
	jle	.L314
	movl	requests(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, heartbeatres(%rip)
	movl	heartbeatres(%rip), %eax
	cmpl	$99, %eax
	jg	.L315
	movl	$100, heartbeatres(%rip)
	jmp	.L316
.L315:
	jmp	.L316
.L314:
	movl	$0, heartbeatres(%rip)
.L316:
	movl	$1, %esi
	movl	$13, %edi
	call	apr_signal
	call	copyright
	call	test
	movq	cntxt(%rip), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movl	$0, %eax
.L317:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.align 8
.LC25:
	.long	0
	.long	1083129856
	.align 8
.LC28:
	.long	0
	.long	1083179008
	.align 16
.LC38:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC58:
	.long	0
	.long	1079574528
	.align 8
.LC59:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

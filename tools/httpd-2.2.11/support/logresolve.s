	.file	"logresolve.c"
	.comm	nscache,2048,64
	.local	cachehits
	.comm	cachehits,4,4
	.local	cachesize
	.comm	cachesize,4,4
	.local	entries
	.comm	entries,4,4
	.local	resolves
	.comm	resolves,4,4
	.local	withname
	.comm	withname,4,4
	.local	errors
	.comm	errors,28,16
	.section	.rodata
.LC0:
	.string	"malloc"
.LC1:
	.string	"Insufficient memory\n"
.LC2:
	.string	"strdup"
.LC3:
	.string	"Bad host: %s != %s\n"
	.text
	.type	cgethost, @function
cgethost:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -64(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	-64(%rbp), %eax
	movl	-64(%rbp), %edx
	shrl	$8, %edx
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	shrl	$16, %eax
	addl	%eax, %edx
	movl	-64(%rbp), %eax
	shrl	$24, %eax
	addl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	$nscache, %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
.L2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L3
	movl	-64(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L4
.L3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	movl	cachesize(%rip), %eax
	addl	$1, %eax
	movl	%eax, cachesize(%rip)
	movl	$32, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L6
	movl	$.LC0, %edi
	call	perror
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L6:
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movl	-64(%rbp), %edx
	movl	%edx, (%rax)
	leaq	-64(%rbp), %rax
	movl	$2, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	gethostbyaddr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L7
	call	__h_errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	jle	.L8
	movl	errors+20(%rip), %eax
	addl	$1, %eax
	movl	%eax, errors+20(%rip)
	jmp	.L9
.L8:
	call	__h_errno_location
	movl	(%rax), %eax
	movslq	%eax, %rdx
	movl	errors(,%rdx,4), %edx
	addl	$1, %edx
	cltq
	movl	%edx, errors(,%rax,4)
.L9:
	call	__h_errno_location
	movl	(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 16(%rax)
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rdi
	call	strdup
	movq	%rax, -24(%rbp)
	jmp	.L10
.L7:
	movq	-40(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strdup
	movq	%rax, -24(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L10
	cmpq	$0, -24(%rbp)
	jne	.L11
	movl	$.LC2, %edi
	call	perror
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L11:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	gethostbyname
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L12
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L13
.L16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-64(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L14
	jmp	.L15
.L14:
	addq	$8, -32(%rbp)
.L13:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L16
.L15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movq	$0, -16(%rbp)
.L12:
	cmpq	$0, -16(%rbp)
	jne	.L10
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rcx
	movq	stderr(%rip), %rax
	movq	-24(%rbp), %rdx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-40(%rbp), %rax
	movl	$6, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	-64(%rbp), %eax
	movl	%eax, %edi
	call	inet_ntoa
	movq	%rax, %rdi
	call	strdup
	movq	%rax, -24(%rbp)
	movl	errors+24(%rip), %eax
	addl	$1, %eax
	movl	%eax, errors+24(%rip)
.L10:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movl	$.LC2, %edi
	call	perror
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L5:
	movl	cachehits(%rip), %eax
	addl	$1, %eax
	movl	%eax, cachehits(%rip)
.L17:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy
	movq	-56(%rbp), %rax
	addq	$256, %rax
	movb	$0, (%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cgethost, .-cgethost
	.section	.rodata
.LC4:
	.string	"Unknown error"
.LC5:
	.string	"Host not found"
.LC6:
	.string	"Try again"
.LC7:
	.string	"Non recoverable error"
.LC8:
	.string	"No data record"
.LC9:
	.string	"No address"
.LC10:
	.string	"No reverse entry"
.LC11:
	.string	"logresolve Statistics:\n"
.LC12:
	.string	"Entries: %d\n"
.LC13:
	.string	"    With name   : %d\n"
.LC14:
	.string	"    Resolves    : %d\n"
.LC15:
	.string	"    - Not found : %d\n"
.LC16:
	.string	"    - Try again : %d\n"
.LC17:
	.string	"    - No data   : %d\n"
.LC18:
	.string	"    - No address: %d\n"
.LC19:
	.string	"    - No reverse: %d\n"
.LC20:
	.string	"Cache hits      : %d\n"
.LC21:
	.string	"Cache size      : %d\n"
	.align 8
.LC22:
	.string	"Cache buckets   :     IP number * hostname\n"
.LC23:
	.string	"  %3d  %15s - %s\n"
.LC24:
	.string	"  %3d  %15s : Unknown error\n"
.LC25:
	.string	"  %3d  %15s : %s\n"
	.text
	.type	stats, @function
stats:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L19
.L20:
	movl	-4(%rbp), %eax
	cltq
	movq	$.LC4, -80(%rbp,%rax,8)
	addl	$1, -4(%rbp)
.L19:
	cmpl	$6, -4(%rbp)
	jle	.L20
	movq	$.LC5, -72(%rbp)
	movq	$.LC6, -64(%rbp)
	movq	$.LC7, -56(%rbp)
	movq	$.LC8, -48(%rbp)
	movq	$.LC9, -48(%rbp)
	movq	$.LC10, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	movl	$.LC11, %edi
	call	fwrite
	movl	entries(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	withname(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	resolves(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	errors+4(%rip), %eax
	testl	%eax, %eax
	je	.L21
	movl	errors+4(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L21:
	movl	errors+8(%rip), %eax
	testl	%eax, %eax
	je	.L22
	movl	errors+8(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L22:
	movl	errors+16(%rip), %eax
	testl	%eax, %eax
	je	.L23
	movl	errors+16(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L23:
	movl	errors+16(%rip), %eax
	testl	%eax, %eax
	je	.L24
	movl	errors+16(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L24:
	movl	errors+24(%rip), %eax
	testl	%eax, %eax
	je	.L25
	movl	errors+24(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L25:
	movl	cachehits(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	cachesize(%rip), %edx
	movq	-88(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	movl	$43, %edx
	movl	$1, %esi
	movl	$.LC22, %edi
	call	fwrite
	movl	$0, -4(%rbp)
	jmp	.L26
.L32:
	movl	-4(%rbp), %eax
	cltq
	movq	nscache(,%rax,8), %rax
	movq	%rax, -16(%rbp)
	jmp	.L27
.L31:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	call	inet_ntoa
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC23, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L29
.L28:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$6, %eax
	jle	.L30
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	jmp	.L29
.L30:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cltq
	movq	-80(%rbp,%rax,8), %rsi
	movq	-24(%rbp), %rcx
	movl	-4(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rsi, %r8
	movl	$.LC25, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
.L29:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.L27:
	cmpq	$0, -16(%rbp)
	jne	.L31
	addl	$1, -4(%rbp)
.L26:
	cmpl	$255, -4(%rbp)
	jle	.L32
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	stats, .-stats
	.type	get_line, @function
get_line:
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
	movq	stdin(%rip), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L34
	movl	$0, %eax
	jmp	.L35
.L34:
	movq	-24(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L36
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
.L36:
	movl	$1, %eax
.L35:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	get_line, .-get_line
	.section	.rodata
.LC26:
	.string	"-c"
.LC27:
	.string	"-s"
	.align 8
.LC28:
	.string	"logresolve: missing filename to -s\n"
	.align 8
.LC29:
	.string	"Usage: logresolve [-s statfile] [-c] < input > output\n"
.LC30:
	.string	"%s %s\n"
.LC31:
	.string	"w"
	.align 8
.LC32:
	.string	"logresolve: could not open statistics file '%s'\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1360, %rsp
	movl	%edi, -1348(%rbp)
	movq	%rsi, -1360(%rbp)
	movl	$0, -16(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L38
.L43:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1360(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L39
	movl	$1, -16(%rbp)
	jmp	.L40
.L39:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1360(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L41
	movl	-1348(%rbp), %eax
	subl	$1, %eax
	cmpl	-12(%rbp), %eax
	jne	.L42
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$35, %edx
	movl	$1, %esi
	movl	$.LC28, %edi
	call	fwrite
	movl	$1, %edi
	call	exit
.L42:
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-1360(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L40
.L41:
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$54, %edx
	movl	$1, %esi
	movl	$.LC29, %edi
	call	fwrite
	movl	$0, %edi
	call	exit
.L40:
	addl	$1, -12(%rbp)
.L38:
	movl	-12(%rbp), %eax
	cmpl	-1348(%rbp), %eax
	jl	.L43
	movl	$0, -12(%rbp)
	jmp	.L44
.L45:
	movl	-12(%rbp), %eax
	cltq
	movq	$0, nscache(,%rax,8)
	addl	$1, -12(%rbp)
.L44:
	cmpl	$255, -12(%rbp)
	jle	.L45
	movl	$0, -12(%rbp)
	jmp	.L46
.L47:
	movl	-12(%rbp), %eax
	cltq
	movl	$0, errors(,%rax,4)
	addl	$1, -12(%rbp)
.L46:
	cmpl	$5, -12(%rbp)
	jle	.L47
	jmp	.L48
.L55:
	movzbl	-1344(%rbp), %eax
	testb	%al, %al
	jne	.L49
	jmp	.L48
.L49:
	movl	entries(%rip), %eax
	addl	$1, %eax
	movl	%eax, entries(%rip)
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	-1344(%rbp), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L50
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	withname(%rip), %eax
	addl	$1, %eax
	movl	%eax, withname(%rip)
	jmp	.L48
.L50:
	leaq	-1344(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L51
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
.L51:
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	inet_addr
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L52
	cmpq	$0, -24(%rbp)
	je	.L53
	movq	-24(%rbp), %rax
	movb	$32, (%rax)
.L53:
	leaq	-1344(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	withname(%rip), %eax
	addl	$1, %eax
	movl	%eax, withname(%rip)
	jmp	.L48
.L52:
	movl	resolves(%rip), %eax
	addl	$1, %eax
	movl	%eax, resolves(%rip)
	movl	-16(%rbp), %edx
	leaq	-320(%rbp), %rcx
	movl	-48(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	cgethost
	cmpq	$0, -24(%rbp)
	je	.L54
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC30, %edi
	movl	$0, %eax
	call	printf
	jmp	.L48
.L54:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	puts
.L48:
	leaq	-1344(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	get_line
	testl	%eax, %eax
	jne	.L55
	cmpq	$0, -8(%rbp)
	je	.L56
	movq	-8(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L57
	movq	stderr(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC32, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movl	$1, %edi
	call	exit
.L57:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	stats
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.L56:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

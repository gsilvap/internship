	.file	"protocol.c"
	.local	_hooks
	.comm	_hooks,32,32
	.globl	ap_old_write_func
	.bss
	.align 8
	.type	ap_old_write_func, @object
	.size	ap_old_write_func, 8
ap_old_write_func:
	.zero	8
	.section	.rodata
.LC0:
	.string	"text/plain"
.LC1:
	.string	"text/html"
	.data
	.align 16
	.type	needcset, @object
	.size	needcset, 24
needcset:
	.quad	.LC0
	.quad	.LC1
	.quad	0
	.local	needcset_patterns
	.comm	needcset_patterns,8,8
	.local	charset_pattern
	.comm	charset_pattern,8,8
	.section	.rodata
.LC2:
	.string	"charset="
	.text
	.globl	ap_setup_make_content_type
	.type	ap_setup_make_content_type, @function
ap_setup_make_content_type:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cltq
	movq	needcset(,%rax,8), %rax
	testq	%rax, %rax
	jne	.L3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, needcset_patterns(%rip)
	movl	$0, -20(%rbp)
	jmp	.L4
.L5:
	movq	needcset_patterns(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movl	-20(%rbp), %eax
	cltq
	movq	needcset(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_strmatch_precompile
	movq	%rax, (%rbx)
	addl	$1, -20(%rbp)
.L4:
	movl	-20(%rbp), %eax
	cltq
	movq	needcset(,%rax,8), %rax
	testq	%rax, %rax
	jne	.L5
	movq	needcset_patterns(%rip), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	apr_strmatch_precompile
	movq	%rax, charset_pattern(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_setup_make_content_type, .-ap_setup_make_content_type
	.section	.rodata
.LC3:
	.string	"; charset="
	.text
	.globl	ap_make_content_type
	.type	ap_make_content_type, @function
ap_make_content_type:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	608(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L7
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	ap_default_type
	movq	%rax, -96(%rbp)
.L7:
	movq	-16(%rbp), %rax
	movzbl	73(%rax), %eax
	andl	$6, %eax
	cmpb	$2, %al
	je	.L8
	movq	-96(%rbp), %rax
	jmp	.L9
.L8:
	movq	-88(%rbp), %rax
	movq	616(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	testl	%eax, %eax
	je	.L10
	movq	-96(%rbp), %rax
	jmp	.L9
.L10:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -32(%rbp)
	movq	charset_pattern(%rip), %rax
	movq	(%rax), %rax
	movq	charset_pattern(%rip), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rcx, %rdi
	call	*%rax
	testq	%rax, %rax
	jne	.L11
	movq	needcset_patterns(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L12
.L14:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rcx, %rdi
	call	*%rax
	testq	%rax, %rax
	je	.L13
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$.LC3, -64(%rbp)
	movq	$10, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rsi
	movl	$0, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	apr_pstrcatv
	movq	%rax, -96(%rbp)
	nop
	jmp	.L11
.L13:
	addq	$8, -8(%rbp)
.L12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L14
.L11:
	movq	-96(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	ap_make_content_type, .-ap_make_content_type
	.section	.rodata
.LC4:
	.string	"Content-Length"
	.text
	.globl	ap_set_content_length
	.type	ap_set_content_length, @function
ap_set_content_length:
.LFB4:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, 200(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_off_t_toa
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_set_content_length, .-ap_set_content_length
	.globl	ap_rationalize_mtime
	.type	ap_rationalize_mtime, @function
ap_rationalize_mtime:
.LFB5:
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
	movq	96(%rax), %rax
	cmpq	-32(%rbp), %rax
	jle	.L17
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	jmp	.L18
.L17:
	call	apr_time_now
.L18:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, -32(%rbp)
	cmovle	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_rationalize_mtime, .-ap_rationalize_mtime
	.globl	ap_rgetline_core
	.type	ap_rgetline_core, @function
ap_rgetline_core:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%rcx, -192(%rbp)
	movl	%r8d, -196(%rbp)
	movq	%r9, -208(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L21
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.L21:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-192(%rbp), %rax
	movq	640(%rax), %rax
	movq	-208(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L22
	movl	-56(%rbp), %eax
	jmp	.L23
.L22:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	-208(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.L24
	movl	$20014, %eax
	jmp	.L23
.L24:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L25
.L39:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L26
	movl	$1, -36(%rbp)
	jmp	.L27
.L26:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L28
	movl	-56(%rbp), %eax
	jmp	.L23
.L28:
	movq	-120(%rbp), %rax
	testq	%rax, %rax
	je	.L31
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-176(%rbp), %rax
	jbe	.L32
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L33
	cmpq	$0, -16(%rbp)
	je	.L34
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	jmp	.L33
.L34:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
.L33:
	movl	$28, %eax
	jmp	.L23
.L32:
	cmpl	$0, -52(%rbp)
	je	.L35
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L36
	movq	-120(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$79, -24(%rbp)
	ja	.L37
	movq	$80, -24(%rbp)
.L37:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L35
.L36:
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-24(%rbp), %rax
	jbe	.L35
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	cmpq	-48(%rbp), %rax
	jbe	.L38
	movq	-120(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, -48(%rbp)
.L38:
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-168(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
.L35:
	movq	-168(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-120(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-120(%rbp), %rax
	addq	%rax, -16(%rbp)
.L31:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L25:
	movq	-208(%rbp), %rax
	addq	$8, %rax
	cmpq	-8(%rbp), %rax
	jne	.L39
.L27:
	cmpq	$0, -32(%rbp)
	je	.L40
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$10, %al
	jne	.L40
	nop
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L42
	jmp	.L57
.L40:
	jmp	.L21
.L57:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$13, %al
	jne	.L42
	subq	$1, -32(%rbp)
.L42:
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -196(%rbp)
	je	.L43
	cmpq	$0, -16(%rbp)
	je	.L43
	cmpl	$0, -36(%rbp)
	jne	.L43
.L56:
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movq	-192(%rbp), %rax
	movq	640(%rax), %rax
	movq	-208(%rbp), %rsi
	movl	$1, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L44
	movl	-56(%rbp), %eax
	jmp	.L23
.L44:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	-208(%rbp), %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rax
	jne	.L46
	jmp	.L43
.L46:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L48
	jmp	.L43
.L48:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L49
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	movl	-56(%rbp), %eax
	jmp	.L23
.L49:
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -73(%rbp)
	cmpb	$32, -73(%rbp)
	je	.L50
	cmpb	$9, -73(%rbp)
	jne	.L43
.L50:
	movq	-16(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L51
	movq	-184(%rbp), %rax
	movq	-176(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-176(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$28, %eax
	jmp	.L23
.L51:
	cmpl	$0, -52(%rbp)
	je	.L52
	movq	$0, -152(%rbp)
	jmp	.L53
.L52:
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
.L53:
	movq	-176(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-208(%rbp), %rdi
	movq	-192(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ap_rgetline_core
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L54
	movl	-56(%rbp), %eax
	jmp	.L23
.L54:
	cmpl	$0, -52(%rbp)
	je	.L55
	movq	-144(%rbp), %rax
	testq	%rax, %rax
	je	.L55
	movq	-144(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	-16(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-168(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
.L55:
	movq	-144(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-144(%rbp), %rax
	addq	%rax, -16(%rbp)
	jmp	.L56
.L43:
	movq	-184(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_rgetline_core, .-ap_rgetline_core
	.globl	ap_getline
	.type	ap_getline, @function
ap_getline:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %r8
	movl	-48(%rbp), %edi
	movq	-56(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%r8, %r9
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	ap_rgetline_core
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	cmpl	$28, -12(%rbp)
	jne	.L59
	movl	-44(%rbp), %eax
	jmp	.L62
.L59:
	cmpl	$0, -12(%rbp)
	je	.L61
	movl	$-1, %eax
	jmp	.L62
.L61:
	movq	-32(%rbp), %rax
.L62:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	ap_getline, .-ap_getline
	.section	.rodata
.LC5:
	.string	"/"
	.text
	.globl	ap_parse_uri
	.type	ap_parse_uri, @function
ap_parse_uri:
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
	movl	$200, -4(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 344(%rax)
	jmp	.L64
.L66:
	addq	$1, -32(%rbp)
.L64:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L65
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L66
.L65:
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$4, %eax
	jne	.L67
	movq	-24(%rbp), %rax
	leaq	512(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_parse_hostinfo
	movl	%eax, -4(%rbp)
	jmp	.L68
.L67:
	movq	-24(%rbp), %rax
	leaq	512(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_parse
	movl	%eax, -4(%rbp)
.L68:
	cmpl	$0, -4(%rbp)
	jne	.L69
	movq	-24(%rbp), %rax
	movq	512(%rax), %rax
	testq	%rax, %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_http_scheme
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	512(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L70
	movq	-24(%rbp), %rax
	movq	544(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L71
.L70:
	movq	-24(%rbp), %rax
	movl	128(%rax), %eax
	cmpl	$4, %eax
	jne	.L71
	movq	-24(%rbp), %rax
	movq	544(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
.L71:
	movq	-24(%rbp), %rax
	movq	568(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 384(%rax)
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	testq	%rax, %rax
	je	.L72
	movq	-24(%rbp), %rax
	movq	560(%rax), %rax
	jmp	.L73
.L72:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
.L73:
	movq	-24(%rbp), %rdx
	movq	%rax, 352(%rdx)
	jmp	.L63
.L69:
	movq	-24(%rbp), %rax
	movq	$0, 384(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 352(%rax)
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	ap_parse_uri, .-ap_parse_uri
	.section	.rodata
.LC6:
	.string	"HTTP/1.0"
.LC7:
	.string	"HTTP/0.9"
.LC8:
	.string	"%4s/%u.%u"
.LC9:
	.string	"http"
	.text
	.type	read_request_line, @function
read_request_line:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -12(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	168(%rax), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jg	.L76
	movl	$100, -16(%rbp)
.L76:
	movq	-88(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	160(%rax), %eax
	addl	$2, %eax
	cltq
	movq	-88(%rbp), %rdx
	leaq	48(%rdx), %rdi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rcx
	leaq	-72(%rbp), %rdx
	movq	%rsi, %r9
	movl	$0, %r8d
	movq	%rax, %rsi
	call	ap_rgetline_core
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L77
	call	apr_time_now
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 96(%rax)
	cmpl	$28, -20(%rbp)
	jne	.L78
	movq	-88(%rbp), %rax
	movl	$414, 112(%rax)
	movq	-88(%rbp), %rax
	movl	$1000, 80(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 72(%rax)
.L78:
	movl	$0, %eax
	jmp	.L87
.L77:
	movq	-72(%rbp), %rax
	testq	%rax, %rax
	jne	.L80
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L76
.L80:
	call	apr_time_now
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_white
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_white
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	call	ap_method_number_of
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 128(%rax)
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	jne	.L81
	movq	-88(%rbp), %rax
	movq	120(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$72, %al
	jne	.L81
	movq	-88(%rbp), %rax
	movl	$1, 64(%rax)
.L81:
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_parse_uri
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L82
	movq	-88(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	jmp	.L83
.L82:
	movq	-88(%rbp), %rax
	movl	$1, 56(%rax)
	movq	$.LC7, -8(%rbp)
	movq	$8, -72(%rbp)
.L83:
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	cmpq	$8, %rax
	jne	.L84
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$72, %al
	jne	.L84
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L84
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$84, %al
	jne	.L84
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$80, %al
	jne	.L84
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L84
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L84
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L84
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	$7, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L84
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	imull	$1000, %eax, %eax
	movq	-8(%rbp), %rdx
	addq	$7, %rdx
	movzbl	(%rdx), %edx
	movsbl	%dl, %edx
	subl	$48, %edx
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 80(%rax)
	jmp	.L85
.L84:
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	leaq	-48(%rbp), %rsi
	leaq	-44(%rbp), %rcx
	leaq	-64(%rbp), %rdx
	movq	%rsi, %r8
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sscanf
	cmpl	$3, %eax
	jne	.L86
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L86
	movl	-48(%rbp), %eax
	cmpl	$999, %eax
	jg	.L86
	movl	-44(%rbp), %eax
	imull	$1000, %eax, %edx
	movl	-48(%rbp), %eax
	addl	%eax, %edx
	movq	-88(%rbp), %rax
	movl	%edx, 80(%rax)
	jmp	.L85
.L86:
	movq	-88(%rbp), %rax
	movl	$1000, 80(%rax)
.L85:
	movl	$1, %eax
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	read_request_line, .-read_request_line
	.section	.rodata
.LC10:
	.string	"</pre>\n"
	.align 8
.LC11:
	.string	"Size of a request header field exceeds server limit.<br />\n<pre>\n"
.LC12:
	.string	"error-notes"
	.align 8
.LC13:
	.string	"Size of a request header field after folding exceeds server limit.<br />\n<pre>\n"
	.align 8
.LC14:
	.string	"The number of request header fields exceeds this server's limit."
	.align 8
.LC15:
	.string	"Request header field is missing ':' separator.<br />\n<pre>\n"
	.text
	.globl	ap_get_mime_headers_core
	.type	ap_get_mime_headers_core, @function
ap_get_mime_headers_core:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -36(%rbp)
.L111:
	movl	$0, -52(%rbp)
	movq	$0, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	164(%rax), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdi, %r9
	movl	$0, %r8d
	movq	%rax, %rdi
	call	ap_rgetline_core
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L89
	movq	-104(%rbp), %rax
	movl	$400, 112(%rax)
	cmpl	$28, -56(%rbp)
	jne	.L90
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rdx
	subq	$1, %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC10, %ecx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L88
.L90:
	jmp	.L88
.L89:
	cmpq	$0, -8(%rbp)
	je	.L92
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L93
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L94
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L93
.L94:
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	164(%rax), %eax
	cltq
	cmpq	-64(%rbp), %rax
	ja	.L95
	movq	-104(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC10, %ecx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L88
.L95:
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L96
	movq	-24(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L97
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.L97:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.L96:
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy
	movq	-88(%rbp), %rax
	addq	%rax, -16(%rbp)
	movl	$1, -52(%rbp)
	jmp	.L92
.L93:
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	168(%rax), %eax
	testl	%eax, %eax
	je	.L98
	addl	$1, -36(%rbp)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movl	168(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jle	.L98
	movq	-104(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-104(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC14, %edx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L88
.L98:
	movq	-8(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L99
	movq	-104(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC10, %ecx
	movl	$.LC15, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L88
.L99:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movb	$0, (%rax)
	jmp	.L100
.L101:
	addq	$1, -32(%rbp)
.L100:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L101
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L101
	jmp	.L102
.L104:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
.L102:
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L103
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L104
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L104
.L103:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.L105
.L107:
	movq	-48(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movb	$0, (%rax)
.L105:
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jbe	.L106
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L107
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L107
.L106:
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_addn
	movq	$0, -24(%rbp)
.L92:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L108
	nop
	movq	-104(%rbp), %rax
	movq	240(%rax), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_table_compress
	jmp	.L88
.L108:
	cmpl	$0, -52(%rbp)
	jne	.L110
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -16(%rbp)
.L110:
	jmp	.L111
.L88:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	ap_get_mime_headers_core, .-ap_get_mime_headers_core
	.globl	ap_get_mime_headers
	.type	ap_get_mime_headers, @function
ap_get_mime_headers:
.LFB11:
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
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_mime_headers_core
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_get_mime_headers, .-ap_get_mime_headers
	.section	.rodata
.LC16:
	.string	"request"
	.align 8
.LC17:
	.string	"request failed: URI too long (longer than %d)"
.LC18:
	.string	"protocol.c"
	.align 8
.LC19:
	.string	"request failed: error reading the headers"
.LC20:
	.string	"Transfer-Encoding"
	.align 8
.LC21:
	.string	"client sent invalid HTTP/0.9 request: HEAD %s"
.LC22:
	.string	"Host"
	.align 8
.LC23:
	.string	"client sent HTTP/1.1 request without hostname (see RFC2616 section 14.23): %s"
.LC24:
	.string	"Expect"
.LC25:
	.string	"100-continue"
	.align 8
.LC26:
	.string	"client sent an unrecognized expectation value of Expect: %s"
	.text
	.globl	ap_read_request
	.type	ap_read_request, @function
ap_read_request:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-48(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-48(%rbp), %rax
	movl	$672, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$672, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 320(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 328(%rax)
	movq	-48(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	ap_make_method_list
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$25, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_create_request_config
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 616(%rax)
	movq	-72(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	movq	-8(%rbp), %rax
	movq	648(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	movq	-8(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_create_request
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-8(%rbp), %rax
	movl	$408, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 600(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	read_request_line
	testl	%eax, %eax
	jne	.L115
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$414, %eax
	jne	.L116
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	160(%rax), %eax
	subq	$8, %rsp
	movq	-8(%rbp), %rdx
	pushq	%rax
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$893, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-8(%rbp), %rax
	jmp	.L131
.L116:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	$0, %eax
	jmp	.L131
.L115:
	movq	-72(%rbp), %rax
	movq	104(%rax), %rax
	movl	core_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_timeout_get
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L118
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)
.L118:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L119
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_get_mime_headers_core
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$408, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movl	$.LC19, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$920, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-8(%rbp), %rax
	jmp	.L131
.L120:
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L122
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L122
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	jmp	.L122
.L119:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L122
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-8(%rbp), %rdx
	pushq	%rax
	movl	$.LC21, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$945, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-8(%rbp), %rax
	jmp	.L131
.L122:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-8(%rbp), %rax
	movl	$200, 112(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_update_vhost_from_headers
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-56(%rbp), %rax
	cmpq	%rax, %rdx
	je	.L123
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_socket_timeout_set
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -56(%rbp)
.L123:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	88(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 608(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jg	.L125
.L124:
	movq	-8(%rbp), %rax
	movl	80(%rax), %eax
	cmpl	$1001, %eax
	jne	.L126
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L126
.L125:
	movq	-8(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-8(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-8(%rbp), %rdx
	pushq	%rax
	movl	$.LC23, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$989, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L126:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	ap_http_input_filter_handle(%rip), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_add_input_filter_handle
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L127
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movq	-8(%rbp), %rax
	jmp	.L131
.L127:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_post_read_request
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L128
	movq	-8(%rbp), %rdx
	movl	-28(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	ap_die
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movl	$0, %eax
	jmp	.L131
.L128:
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L129
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L129
	movq	-40(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L130
	movq	-8(%rbp), %rax
	movl	$1, 232(%rax)
	jmp	.L129
.L130:
	movq	-8(%rbp), %rax
	movl	$417, 112(%rax)
	subq	$8, %rsp
	movq	-8(%rbp), %rax
	pushq	-40(%rbp)
	movl	$.LC26, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$6, %edx
	movl	$1031, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	ap_send_error_response
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	ap_update_child_status
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_log_transaction
	movq	-8(%rbp), %rax
	jmp	.L131
.L129:
	movq	-8(%rbp), %rax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_read_request, .-ap_read_request
	.section	.rodata
.LC27:
	.string	"Content-Encoding"
.LC28:
	.string	"Content-Language"
.LC29:
	.string	"Content-Location"
.LC30:
	.string	"Content-MD5"
.LC31:
	.string	"Content-Range"
.LC32:
	.string	"Content-Type"
.LC33:
	.string	"Expires"
.LC34:
	.string	"Last-Modified"
	.text
	.type	clone_headers_no_body, @function
clone_headers_no_body:
.LFB13:
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
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_copy
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	clone_headers_no_body, .-clone_headers_no_body
	.section	.rodata
.LC35:
	.string	"GET"
.LC36:
	.string	"INCLUDED"
	.text
	.globl	ap_set_sub_req_protocol
	.type	ap_set_sub_req_protocol, @function
ap_set_sub_req_protocol:
.LFB14:
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
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 340(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC35, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movq	$.LC36, 72(%rax)
	movq	-8(%rbp), %rax
	movl	$200, 112(%rax)
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L134
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L135
.L134:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	clone_headers_no_body
	jmp	.L136
.L135:
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 240(%rax)
.L136:
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_copy
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 264(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-16(%rbp), %rax
	movl	232(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 232(%rax)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 40(%rax)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	ap_set_sub_req_protocol, .-ap_set_sub_req_protocol
	.type	end_output_stream, @function
end_output_stream:
.LFB15:
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
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_eos_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	end_output_stream, .-end_output_stream
	.globl	ap_finalize_sub_req_protocol
	.type	ap_finalize_sub_req_protocol, @function
ap_finalize_sub_req_protocol:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	664(%rax), %eax
	testl	%eax, %eax
	jne	.L138
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_output_stream
.L138:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_finalize_sub_req_protocol, .-ap_finalize_sub_req_protocol
	.globl	ap_finalize_request_protocol
	.type	ap_finalize_request_protocol, @function
ap_finalize_request_protocol:
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
	movq	%rax, %rdi
	call	ap_discard_request_body
	movq	-8(%rbp), %rax
	movl	664(%rax), %eax
	testl	%eax, %eax
	jne	.L140
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	end_output_stream
.L140:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ap_finalize_request_protocol, .-ap_finalize_request_protocol
	.section	.rodata
.LC37:
	.string	"Basic"
.LC38:
	.string	"Digest"
	.align 8
.LC39:
	.string	"need AuthType to note auth failure: %s"
	.text
	.globl	ap_note_auth_failure
	.type	ap_note_auth_failure, @function
ap_note_auth_failure:
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
	movq	%rax, %rdi
	call	ap_auth_type
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L143
	movq	-8(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L144
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_basic_auth_failure
	jmp	.L142
.L144:
	movq	-8(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L142
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_digest_auth_failure
	jmp	.L142
.L143:
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC39, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1156, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	ap_note_auth_failure, .-ap_note_auth_failure
	.section	.rodata
.LC40:
	.string	"\""
.LC41:
	.string	"Basic realm=\""
.LC42:
	.string	"Proxy-Authenticate"
.LC43:
	.string	"WWW-Authenticate"
	.text
	.globl	ap_note_basic_auth_failure
	.type	ap_note_basic_auth_failure, @function
ap_note_basic_auth_failure:
.LFB19:
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
	call	ap_auth_type
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L148
	movq	-8(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L149
.L148:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_auth_failure
	jmp	.L147
.L149:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_name
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movl	$.LC40, %ecx
	movl	$.LC41, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L151
	movl	$.LC42, %ecx
	jmp	.L152
.L151:
	movl	$.LC43, %ecx
.L152:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_note_basic_auth_failure, .-ap_note_basic_auth_failure
	.section	.rodata
	.align 8
.LC44:
	.string	"Digest realm=\"%s\", nonce=\"%lx\""
	.text
	.globl	ap_note_digest_auth_failure
	.type	ap_note_digest_auth_failure, @function
ap_note_digest_auth_failure:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_name
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rbx, %rcx
	movl	$.LC44, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L154
	movl	$.LC42, %ecx
	jmp	.L155
.L154:
	movl	$.LC43, %ecx
.L155:
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	ap_note_digest_auth_failure, .-ap_note_digest_auth_failure
	.section	.rodata
.LC45:
	.string	"Proxy-Authorization"
.LC46:
	.string	"Authorization"
.LC47:
	.string	"need AuthName: %s"
	.align 8
.LC48:
	.string	"client used wrong authentication scheme: %s"
	.text
	.globl	ap_get_basic_auth_pw
	.type	ap_get_basic_auth_pw, @function
ap_get_basic_auth_pw:
.LFB21:
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
	movl	60(%rax), %eax
	cmpl	$1, %eax
	jne	.L157
	movl	$.LC45, %edx
	jmp	.L158
.L157:
	movl	$.LC46, %edx
.L158:
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_type
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L159
	movq	-16(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L160
.L159:
	movl	$-1, %eax
	jmp	.L167
.L160:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_auth_name
	testq	%rax, %rax
	jne	.L162
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC47, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1200, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L167
.L162:
	movq	-8(%rbp), %rax
	testq	%rax, %rax
	jne	.L163
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_basic_auth_failure
	movl	$401, %eax
	jmp	.L167
.L163:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L164
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rdx
	pushq	%rax
	movl	$.LC48, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$1212, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_basic_auth_failure
	movl	$401, %eax
	jmp	.L167
.L164:
	jmp	.L165
.L166:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
.L165:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L166
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$9, %al
	je	.L166
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pbase64decode
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword_nulls
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-24(%rbp), %rax
	movq	$.LC37, 328(%rax)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L167:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	ap_get_basic_auth_pw, .-ap_get_basic_auth_pw
	.section	.rodata
	.align 8
.LC49:
	.string	"ap_content_length_filter: apr_bucket_read() failed"
	.text
	.globl	ap_content_length_filter
	.type	ap_content_length_filter, @function
ap_content_length_filter:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	movl	$1, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L169
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
.L169:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L170
.L182:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L171
	movl	$1, -20(%rbp)
	jmp	.L172
.L171:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	$-1, %rax
	jne	.L173
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movl	-24(%rbp), %ecx
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rsi
	movq	-16(%rbp), %rdi
	call	*%rax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L174
	movl	$1, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 168(%rax)
	jmp	.L175
.L174:
	cmpl	$11, -36(%rbp)
	jne	.L176
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.L177
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_split
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	call	apr_bucket_flush_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.L178
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L179
.L178:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-36(%rbp), %eax
	jmp	.L181
.L179:
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
.L177:
	movl	$0, -24(%rbp)
	jmp	.L170
.L176:
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	$.LC49, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$1303, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	movl	-36(%rbp), %eax
	jmp	.L181
.L173:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 168(%rax)
.L175:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L170:
	movq	-96(%rbp), %rax
	addq	$8, %rax
	cmpq	-16(%rbp), %rax
	jne	.L182
.L172:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jne	.L183
	cmpl	$0, -20(%rbp)
	je	.L183
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L184
	movq	-32(%rbp), %rax
	movq	168(%rax), %rax
	testq	%rax, %rax
	jne	.L184
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L183
.L184:
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_length
.L183:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
.L181:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_content_length_filter, .-ap_content_length_filter
	.globl	ap_send_fd
	.type	ap_send_fd, @function
ap_send_fd:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_bucket_file_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-64(%rbp), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L186
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L187
.L186:
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
.L187:
	movl	-36(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_send_fd, .-ap_send_fd
	.globl	ap_send_mmap
	.type	ap_send_mmap, @function
ap_send_mmap:
.LFB24:
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
	movq	%rcx, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rcx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	apr_bucket_mmap_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-48(%rbp), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_send_mmap, .-ap_send_mmap
	.globl	ap_old_write_filter
	.type	ap_old_write_filter, @function
ap_old_write_filter:
.LFB25:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L192
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	cmpq	%rax, %rdx
	je	.L192
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rax)
.L192:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	ap_old_write_filter, .-ap_old_write_filter
	.section	.rodata
.LC50:
	.string	"OLD_WRITE"
	.text
	.type	buffer_output, @function
buffer_output:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.L195
	movl	$0, %eax
	jmp	.L196
.L195:
	movq	-56(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L197
.L200:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	ap_old_write_func(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L198
	jmp	.L199
.L198:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.L197:
	cmpq	$0, -8(%rbp)
	jne	.L200
.L199:
	cmpq	$0, -8(%rbp)
	jne	.L201
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC50, %edi
	call	ap_add_output_filter
	movq	-56(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
.L201:
	movq	-56(%rbp), %rax
	movq	632(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.L202
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_bucket_transient_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	632(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	jmp	.L196
.L202:
	movq	-56(%rbp), %rax
	movq	632(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L203
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L203:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movq	%rsi, %r8
	movl	$ap_filter_flush, %esi
	movq	%rax, %rdi
	call	apr_brigade_write
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	buffer_output, .-buffer_output
	.globl	ap_rputc
	.type	ap_rputc, @function
ap_rputc:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L205
	movl	$-1, %eax
	jmp	.L208
.L205:
	leaq	-1(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L207
	movl	$-1, %eax
	jmp	.L208
.L207:
	movl	-20(%rbp), %eax
.L208:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	ap_rputc, .-ap_rputc
	.globl	ap_rputs
	.type	ap_rputs, @function
ap_rputs:
.LFB28:
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
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L210
	movl	$-1, %eax
	jmp	.L211
.L210:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L212
	movl	$-1, %eax
	jmp	.L211
.L212:
	movq	-8(%rbp), %rax
.L211:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	ap_rputs, .-ap_rputs
	.globl	ap_rwrite
	.type	ap_rwrite, @function
ap_rwrite:
.LFB29:
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
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L214
	movl	$-1, %eax
	jmp	.L215
.L214:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L216
	movl	$-1, %eax
	jmp	.L215
.L216:
	movl	-12(%rbp), %eax
.L215:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	ap_rwrite, .-ap_rwrite
	.type	r_flush, @function
r_flush:
.LFB30:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L218
	movl	$-1, %eax
	jmp	.L219
.L218:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	$8192, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L220
	movl	$-1, %eax
	jmp	.L219
.L220:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	8192(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
.L219:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	r_flush, .-r_flush
	.globl	ap_vrprintf
	.type	ap_vrprintf, @function
ap_vrprintf:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8272, %rsp
	movq	%rdi, -8248(%rbp)
	movq	%rsi, -8256(%rbp)
	movq	%rdx, -8264(%rbp)
	leaq	-8240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-8240(%rbp), %rax
	addq	$8192, %rax
	movq	%rax, -40(%rbp)
	movq	-8248(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-8240(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8248(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L222
	movl	$-1, %eax
	jmp	.L226
.L222:
	movq	-8264(%rbp), %rcx
	movq	-8256(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$r_flush, %edi
	call	apr_vformatter
	cltq
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	je	.L224
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	leaq	-8240(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-8240(%rbp), %rcx
	movq	-8248(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L225
	movl	$-1, %eax
	jmp	.L226
.L225:
	movl	-12(%rbp), %eax
	cltq
	addq	%rax, -8(%rbp)
.L224:
	movq	-8(%rbp), %rax
.L226:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	ap_vrprintf, .-ap_vrprintf
	.globl	ap_rprintf
	.type	ap_rprintf, @function
ap_rprintf:
.LFB32:
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
	je	.L228
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L228:
	movq	%rsi, -224(%rbp)
	movq	-216(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L229
	movl	$-1, %eax
	jmp	.L231
.L229:
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_vrprintf
	movl	%eax, -180(%rbp)
	movl	-180(%rbp), %eax
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE32:
	.size	ap_rprintf, .-ap_rprintf
	.globl	ap_rvputs
	.type	ap_rvputs, @function
ap_rvputs:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L233
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L233:
	movq	%rdi, -232(%rbp)
	movq	$0, -184(%rbp)
	movq	-232(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	64(%rax), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L234
	movl	$-1, %eax
	jmp	.L242
.L234:
	movl	$8, -224(%rbp)
	movl	$48, -220(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -216(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
.L241:
	movl	-224(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L236
	movq	-208(%rbp), %rax
	movl	-224(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -224(%rbp)
	jmp	.L237
.L236:
	movq	-216(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -216(%rbp)
.L237:
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.L238
	nop
	movq	-184(%rbp), %rax
	jmp	.L242
.L238:
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	buffer_output
	testl	%eax, %eax
	je	.L240
	movl	$-1, %eax
	jmp	.L242
.L240:
	movq	-200(%rbp), %rax
	addq	%rax, -184(%rbp)
	jmp	.L241
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	ap_rvputs, .-ap_rvputs
	.globl	ap_rflush
	.type	ap_rflush, @function
ap_rflush:
.LFB34:
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
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_pass_brigade
	testl	%eax, %eax
	je	.L244
	movl	$-1, %eax
	jmp	.L245
.L244:
	movl	$0, %eax
.L245:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	ap_rflush, .-ap_rflush
	.globl	ap_set_last_modified
	.type	ap_set_last_modified, @function
ap_set_last_modified:
.LFB35:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	jne	.L246
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_rationalize_mtime
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$30, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_rfc822_date
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE35:
	.size	ap_set_last_modified, .-ap_set_last_modified
	.section	.rodata
.LC51:
	.string	"\r\n"
.LC52:
	.string	": "
	.text
	.type	send_header, @function
send_header:
.LFB36:
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
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	$8, %rsp
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	pushq	$0
	movl	$.LC51, %r9d
	movq	%rcx, %r8
	movl	$.LC52, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_fputstrs
	addq	$16, %rsp
	movl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	send_header, .-send_header
	.section	.rodata
	.align 8
.LC53:
	.string	"Status is %d - not sending interim response"
.LC54:
	.string	" "
.LC55:
	.string	"HTTP/1.1"
	.text
	.globl	ap_send_interim_response
	.type	ap_send_interim_response, @function
ap_send_interim_response:
.LFB37:
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
	movl	80(%rax), %eax
	cmpl	$1000, %eax
	jg	.L251
	jmp	.L250
.L251:
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$99, %eax
	jle	.L253
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$199, %eax
	jle	.L254
.L253:
	movq	-24(%rbp), %rax
	movl	112(%rax), %eax
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC53, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$7, %edx
	movl	$1652, %esi
	movl	$.LC18, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L250
.L254:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	subq	$8, %rsp
	pushq	$0
	movl	$.LC51, %r9d
	movq	%rdx, %r8
	movl	$.LC54, %ecx
	movl	$.LC55, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_fputstrs
	addq	$16, %rsp
	cmpl	$0, -28(%rbp)
	je	.L255
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdx
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rsi
	movl	$send_header, %edi
	movl	$0, %eax
	call	apr_table_do
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	call	apr_table_clear
.L255:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$.LC51, %ecx
	movl	$ap_filter_flush, %esi
	movq	%rax, %rdi
	call	apr_brigade_puts
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fflush
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
.L250:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	ap_send_interim_response, .-ap_send_interim_response
	.section	.rodata
.LC56:
	.string	"post_read_request"
	.text
	.globl	ap_hook_post_read_request
	.type	ap_hook_post_read_request, @function
ap_hook_post_read_request:
.LFB38:
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
	jne	.L258
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks(%rip)
	movl	$_hooks, %esi
	movl	$.LC56, %edi
	call	apr_hook_sort_register
.L258:
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
	je	.L257
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC56, %edi
	call	apr_hook_debug_show
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	ap_hook_post_read_request, .-ap_hook_post_read_request
	.globl	ap_hook_get_post_read_request
	.type	ap_hook_get_post_read_request, @function
ap_hook_get_post_read_request:
.LFB39:
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
.LFE39:
	.size	ap_hook_get_post_read_request, .-ap_hook_get_post_read_request
	.globl	ap_run_post_read_request
	.type	ap_run_post_read_request, @function
ap_run_post_read_request:
.LFB40:
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
	je	.L263
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L264
.L266:
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
	je	.L265
	cmpl	$-1, -8(%rbp)
	je	.L265
	jmp	.L263
.L265:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L264:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L266
.L263:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	ap_run_post_read_request, .-ap_run_post_read_request
	.section	.rodata
.LC57:
	.string	"log_transaction"
	.text
	.globl	ap_hook_log_transaction
	.type	ap_hook_log_transaction, @function
ap_hook_log_transaction:
.LFB41:
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
	movq	_hooks+8(%rip), %rax
	testq	%rax, %rax
	jne	.L269
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+8(%rip)
	movl	$_hooks+8, %esi
	movl	$.LC57, %edi
	call	apr_hook_sort_register
.L269:
	movq	_hooks+8(%rip), %rax
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
	je	.L268
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC57, %edi
	call	apr_hook_debug_show
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	ap_hook_log_transaction, .-ap_hook_log_transaction
	.globl	ap_hook_get_log_transaction
	.type	ap_hook_get_log_transaction, @function
ap_hook_get_log_transaction:
.LFB42:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+8(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	ap_hook_get_log_transaction, .-ap_hook_get_log_transaction
	.globl	ap_run_log_transaction
	.type	ap_run_log_transaction, @function
ap_run_log_transaction:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movq	_hooks+8(%rip), %rax
	testq	%rax, %rax
	je	.L274
	movq	_hooks+8(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L275
.L277:
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
	je	.L276
	cmpl	$-1, -8(%rbp)
	je	.L276
	jmp	.L274
.L276:
	movl	$0, -8(%rbp)
	addl	$1, -4(%rbp)
.L275:
	movq	_hooks+8(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L277
.L274:
	movl	-8(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	ap_run_log_transaction, .-ap_run_log_transaction
	.section	.rodata
.LC58:
	.string	"http_scheme"
	.text
	.globl	ap_hook_http_scheme
	.type	ap_hook_http_scheme, @function
ap_hook_http_scheme:
.LFB44:
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
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	jne	.L280
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+16(%rip)
	movl	$_hooks+16, %esi
	movl	$.LC58, %edi
	call	apr_hook_sort_register
.L280:
	movq	_hooks+16(%rip), %rax
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
	je	.L279
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC58, %edi
	call	apr_hook_debug_show
.L279:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	ap_hook_http_scheme, .-ap_hook_http_scheme
	.globl	ap_hook_get_http_scheme
	.type	ap_hook_get_http_scheme, @function
ap_hook_get_http_scheme:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+16(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	ap_hook_get_http_scheme, .-ap_hook_get_http_scheme
	.globl	ap_run_http_scheme
	.type	ap_run_http_scheme, @function
ap_run_http_scheme:
.LFB46:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	_hooks+16(%rip), %rax
	testq	%rax, %rax
	je	.L285
	movq	_hooks+16(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L286
.L288:
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
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	call	*%rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L287
	jmp	.L285
.L287:
	addl	$1, -4(%rbp)
.L286:
	movq	_hooks+16(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L288
.L285:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	ap_run_http_scheme, .-ap_run_http_scheme
	.section	.rodata
.LC59:
	.string	"default_port"
	.text
	.globl	ap_hook_default_port
	.type	ap_hook_default_port, @function
ap_hook_default_port:
.LFB47:
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
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	jne	.L291
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks+24(%rip)
	movl	$_hooks+24, %esi
	movl	$.LC59, %edi
	call	apr_hook_sort_register
.L291:
	movq	_hooks+24(%rip), %rax
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
	je	.L290
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC59, %edi
	call	apr_hook_debug_show
.L290:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	ap_hook_default_port, .-ap_hook_default_port
	.globl	ap_hook_get_default_port
	.type	ap_hook_get_default_port, @function
ap_hook_get_default_port:
.LFB48:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	_hooks+24(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	ap_hook_get_default_port, .-ap_hook_get_default_port
	.globl	ap_run_default_port
	.type	ap_run_default_port, @function
ap_run_default_port:
.LFB49:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movw	$0, -6(%rbp)
	movq	_hooks+24(%rip), %rax
	testq	%rax, %rax
	je	.L296
	movq	_hooks+24(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L297
.L299:
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
	movw	%ax, -6(%rbp)
	cmpw	$0, -6(%rbp)
	je	.L298
	jmp	.L296
.L298:
	addl	$1, -4(%rbp)
.L297:
	movq	_hooks+24(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L299
.L296:
	movzwl	-6(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	ap_run_default_port, .-ap_run_default_port
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

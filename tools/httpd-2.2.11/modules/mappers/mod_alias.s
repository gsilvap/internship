	.file	"mod_alias.c"
	.globl	alias_module
	.section	.rodata
.LC0:
	.string	"mod_alias.c"
	.data
	.align 64
	.type	alias_module, @object
	.size	alias_module, 104
alias_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_alias_dir_config
	.quad	merge_alias_dir_config
	.quad	create_alias_config
	.quad	merge_alias_config
	.quad	alias_cmds
	.quad	register_hooks
	.text
	.type	create_alias_config, @function
create_alias_config:
.LFB2:
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
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$40, %edx
	movl	$20, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	$40, %edx
	movl	$20, %esi
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
.LFE2:
	.size	create_alias_config, .-create_alias_config
	.type	create_alias_dir_config, @function
create_alias_dir_config:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$40, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	create_alias_dir_config, .-create_alias_dir_config
	.type	merge_alias_config, @function
merge_alias_config:
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
	movq	-40(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	merge_alias_config, .-merge_alias_config
	.type	merge_alias_dir_config, @function
merge_alias_dir_config:
.LFB5:
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
	movq	-40(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	merge_alias_dir_config, .-merge_alias_dir_config
	.section	.rodata
	.align 8
.LC1:
	.string	"Regular expression could not be compiled."
.LC2:
	.string	"Match"
.LC3:
	.string	""
.LC4:
	.string	"Script"
	.align 8
.LC5:
	.string	"The %s directive in %s at line %d will probably never match because it overlaps an earlier %sAlias%s."
	.text
	.type	add_alias_internal, @function
add_alias_internal:
.LFB6:
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
	movl	%r8d, -84(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movl	alias_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -84(%rbp)
	je	.L10
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L11
	movl	$.LC1, %eax
	jmp	.L12
.L11:
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L13
.L10:
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
.L13:
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpl	$0, -84(%rbp)
	jne	.L14
	movl	$0, -4(%rbp)
	jmp	.L15
.L23:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	alias_matches
	testl	%eax, %eax
	jg	.L17
.L16:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-72(%rbp), %rsi
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	jne	.L18
.L17:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L19
	movl	$.LC2, %r8d
	jmp	.L20
.L19:
	movl	$.LC3, %r8d
.L20:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movl	$.LC4, %edi
	jmp	.L22
.L21:
	movl	$.LC3, %edi
.L22:
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movl	56(%rax), %ecx
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rsi
	movq	72(%rsi), %rsi
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC5, %r9d
	movq	%rsi, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$140, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$48, %rsp
	jmp	.L14
.L18:
	addl	$1, -4(%rbp)
.L15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L23
.L14:
	movl	$0, %eax
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_alias_internal, .-add_alias_internal
	.type	add_alias, @function
add_alias:
.LFB7:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	add_alias_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	add_alias, .-add_alias
	.type	add_alias_regex, @function
add_alias_regex:
.LFB8:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	add_alias_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add_alias_regex, .-add_alias_regex
	.section	.rodata
.LC6:
	.string	"gone"
.LC7:
	.string	"permanent"
.LC8:
	.string	"temp"
.LC9:
	.string	"seeother"
.LC10:
	.string	"URL to redirect to is missing"
.LC11:
	.string	"Redirect to non-URL"
	.align 8
.LC12:
	.string	"Redirect URL not valid for this status"
	.text
	.type	add_redirect_internal, @function
add_redirect_internal:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movl	alias_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L29
	movl	$410, -12(%rbp)
	jmp	.L30
.L29:
	movq	-88(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L31
	movl	$301, -12(%rbp)
	jmp	.L30
.L31:
	movq	-88(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L32
	movl	$302, -12(%rbp)
	jmp	.L30
.L32:
	movq	-88(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L33
	movl	$303, -12(%rbp)
	jmp	.L30
.L33:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L34
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -12(%rbp)
	jmp	.L30
.L34:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
.L30:
	cmpl	$0, -108(%rbp)
	je	.L35
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pregcomp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L35
	movl	$.LC1, %eax
	jmp	.L36
.L35:
	cmpl	$299, -12(%rbp)
	jle	.L37
	cmpl	$399, -12(%rbp)
	jg	.L37
	cmpq	$0, -40(%rbp)
	jne	.L38
	movl	$.LC10, %eax
	jmp	.L36
.L38:
	cmpl	$0, -108(%rbp)
	jne	.L39
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	jne	.L39
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L39
	movl	$.LC11, %eax
	jmp	.L36
.L39:
	jmp	.L40
.L37:
	cmpq	$0, -40(%rbp)
	je	.L40
	movl	$.LC12, %eax
	jmp	.L36
.L40:
	movq	-72(%rbp), %rax
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	jmp	.L42
.L41:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
.L42:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 32(%rax)
	movl	$0, %eax
.L36:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	add_redirect_internal, .-add_redirect_internal
	.type	add_redirect, @function
add_redirect:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_redirect_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	add_redirect, .-add_redirect
	.type	add_redirect2, @function
add_redirect2:
.LFB11:
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
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rdi
	call	add_redirect_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	add_redirect2, .-add_redirect2
	.type	add_redirect_regex, @function
add_redirect_regex:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	$1, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_redirect_internal
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	add_redirect_regex, .-add_redirect_regex
	.section	.rodata
.LC13:
	.string	"Alias"
.LC14:
	.string	"a fakename and a realname"
.LC15:
	.string	"ScriptAlias"
.LC16:
	.string	"cgi-script"
.LC17:
	.string	"Redirect"
	.align 8
.LC18:
	.string	"an optional status, then document to be redirected and destination URL"
.LC19:
	.string	"AliasMatch"
	.align 8
.LC20:
	.string	"a regular expression and a filename"
.LC21:
	.string	"ScriptAliasMatch"
.LC22:
	.string	"RedirectMatch"
	.align 8
.LC23:
	.string	"an optional status, then a regular expression and destination URL"
.LC24:
	.string	"RedirectTemp"
	.align 8
.LC25:
	.string	"a document to be redirected, then the destination URL"
.LC26:
	.string	"RedirectPermanent"
	.align 64
	.type	alias_cmds, @object
	.size	alias_cmds, 360
alias_cmds:
	.quad	.LC13
	.quad	add_alias
	.quad	0
	.long	128
	.long	2
	.quad	.LC14
	.quad	.LC15
	.quad	add_alias
	.quad	.LC16
	.long	128
	.long	2
	.quad	.LC14
	.quad	.LC17
	.quad	add_redirect
	.quad	302
	.long	4
	.long	9
	.quad	.LC18
	.quad	.LC19
	.quad	add_alias_regex
	.quad	0
	.long	128
	.long	2
	.quad	.LC20
	.quad	.LC21
	.quad	add_alias_regex
	.quad	.LC16
	.long	128
	.long	2
	.quad	.LC20
	.quad	.LC22
	.quad	add_redirect_regex
	.quad	302
	.long	4
	.long	9
	.quad	.LC23
	.quad	.LC24
	.quad	add_redirect2
	.quad	302
	.long	4
	.long	2
	.quad	.LC25
	.quad	.LC26
	.quad	add_redirect2
	.quad	301
	.long	4
	.long	2
	.quad	.LC25
	.quad	0
	.zero	32
	.text
	.type	alias_matches, @function
alias_matches:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L50
.L55:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L51
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L52
	movl	$0, %eax
	jmp	.L53
.L52:
	addq	$1, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L52
.L54:
	addq	$1, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L54
	jmp	.L50
.L51:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	cmpb	%al, %cl
	je	.L50
	movl	$0, %eax
	jmp	.L53
.L50:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L55
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L56
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L56
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L56
	movl	$0, %eax
	jmp	.L53
.L56:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
.L53:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	alias_matches, .-alias_matches
	.section	.rodata
.LC27:
	.string	"?"
.LC28:
	.string	"#"
.LC29:
	.string	"alias-forced-type"
	.text
	.type	try_alias_list, @function
try_alias_list:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	%rcx, -256(%rbp)
	movq	-240(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L58
.L72:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-232(%rbp), %rax
	movq	352(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-128(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rax, %rdi
	call	ap_regexec
	testl	%eax, %eax
	jne	.L65
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-232(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-128(%rbp), %rcx
	movq	%rcx, %r8
	movl	$10, %ecx
	movq	%rax, %rdi
	call	ap_pregsub
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L65
	cmpl	$0, -244(%rbp)
	je	.L65
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_parse
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-224(%rbp), %rcx
	movl	$32, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uri_unparse
	movq	%rax, -8(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -8(%rbp)
	movq	-168(%rbp), %rax
	testq	%rax, %rax
	je	.L63
	movq	-168(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC27, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L63:
	movq	-160(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movq	-160(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC28, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	jmp	.L65
.L62:
	jmp	.L65
.L61:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	jmp	.L65
.L59:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	alias_matches
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.L65
	cmpl	$0, -244(%rbp)
	je	.L66
	movq	-232(%rbp), %rax
	movq	352(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	jmp	.L65
.L66:
	movq	-232(%rbp), %rax
	movq	352(%rax), %rdx
	movl	-36(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L65:
	cmpq	$0, -8(%rbp)
	je	.L67
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L68
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 288(%rax)
	movq	-232(%rbp), %rax
	movq	288(%rax), %rdx
	movq	-232(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L68:
	cmpl	$0, -244(%rbp)
	jne	.L69
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
.L69:
	cmpq	$0, -8(%rbp)
	je	.L70
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	movq	-256(%rbp), %rax
	movl	%edx, (%rax)
.L70:
	movq	-8(%rbp), %rax
	jmp	.L73
.L67:
	addl	$1, -12(%rbp)
.L58:
	movq	-240(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L72
	movl	$0, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	try_alias_list, .-try_alias_list
	.section	.rodata
.LC30:
	.string	"Location"
	.text
	.type	translate_alias_redir, @function
translate_alias_redir:
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
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	alias_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L75
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L75
	movl	$-1, %eax
	jmp	.L81
.L75:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	try_alias_list
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L77
	movl	-28(%rbp), %eax
	cmpl	$299, %eax
	jle	.L78
	movl	-28(%rbp), %eax
	cmpl	$399, %eax
	jg	.L78
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L79
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC27, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L79:
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L78:
	movl	-28(%rbp), %eax
	jmp	.L81
.L77:
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-28(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	try_alias_list
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L80
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 360(%rax)
	movl	$0, %eax
	jmp	.L81
.L80:
	movl	$-1, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	translate_alias_redir, .-translate_alias_redir
	.section	.rodata
	.align 8
.LC31:
	.string	"incomplete redirection target of '%s' for URI '%s' modified to '%s'"
	.align 8
.LC32:
	.string	"cannot redirect '%s' to '%s'; target is not a valid absoluteURI or abs_path"
	.text
	.type	fixup_redir, @function
fixup_redir:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	608(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	alias_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-36(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	try_alias_list
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L83
	movl	-36(%rbp), %eax
	cmpl	$299, %eax
	jle	.L84
	movl	-36(%rbp), %eax
	cmpl	$399, %eax
	jg	.L84
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L85
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_construct_url
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	-8(%rbp)
	pushq	%rax
	pushq	-32(%rbp)
	movl	$.LC31, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$441, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
.L85:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_url
	testl	%eax, %eax
	jne	.L86
	movl	$500, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	352(%rax), %rax
	movq	-56(%rbp), %rdx
	pushq	-8(%rbp)
	pushq	%rax
	movl	$.LC32, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$448, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L84
.L86:
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L87
	movq	-8(%rbp), %rax
	movl	$63, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	jne	.L87
	movq	-56(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC27, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L87:
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L84:
	movl	-36(%rbp), %eax
	jmp	.L89
.L83:
	movl	$-1, %eax
.L89:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	fixup_redir, .-fixup_redir
	.type	register_hooks, @function
register_hooks:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %ecx
	movl	$aszSucc.7684, %edx
	movl	$0, %esi
	movl	$translate_alias_redir, %edi
	call	ap_hook_translate_name
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$fixup_redir, %edi
	call	ap_hook_fixups
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC33:
	.string	"mod_userdir.c"
.LC34:
	.string	"mod_vhost_alias.c"
	.align 16
	.type	aszSucc.7684, @object
	.size	aszSucc.7684, 24
aszSucc.7684:
	.quad	.LC33
	.quad	.LC34
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

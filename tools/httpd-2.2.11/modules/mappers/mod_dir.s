	.file	"mod_dir.c"
	.globl	dir_module
	.section	.rodata
.LC0:
	.string	"mod_dir.c"
	.data
	.align 64
	.type	dir_module, @object
	.size	dir_module, 104
dir_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_dir_config
	.quad	merge_dir_configs
	.quad	0
	.quad	0
	.quad	dir_cmds
	.quad	register_hooks
	.text
	.type	add_index, @function
add_index:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movl	$8, %edx
	movl	$2, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	add_index, .-add_index
	.type	configure_slash, @function
configure_slash:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -36(%rbp)
	setne	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	configure_slash, .-configure_slash
	.section	.rodata
.LC1:
	.string	"DirectoryIndex"
.LC2:
	.string	"a list of file names"
.LC3:
	.string	"DirectorySlash"
.LC4:
	.string	"On or Off"
	.align 64
	.type	dir_cmds, @object
	.size	dir_cmds, 120
dir_cmds:
	.quad	.LC1
	.quad	add_index
	.quad	0
	.long	16
	.long	3
	.quad	.LC2
	.quad	.LC3
	.quad	configure_slash
	.quad	0
	.long	16
	.long	5
	.quad	.LC4
	.quad	0
	.zero	32
	.text
	.type	create_dir_config, @function
create_dir_config:
.LFB4:
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
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$2, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	create_dir_config, .-create_dir_config
	.type	merge_dir_configs, @function
merge_dir_configs:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L10
.L9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.L10:
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.L11
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	jmp	.L12
.L11:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
.L12:
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	merge_dir_configs, .-merge_dir_configs
	.section	.rodata
.LC5:
	.string	"httpd/unix-directory"
.LC6:
	.string	"redirect-carefully"
.LC7:
	.string	"?"
.LC8:
	.string	"/"
.LC9:
	.string	"Location"
.LC10:
	.string	"index.html"
.LC11:
	.string	"proxy-server"
	.text
	.type	fixup_dir, @function
fixup_dir:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movl	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	je	.L15
	movl	$-1, %eax
	jmp	.L40
.L15:
	movq	-88(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	jne	.L17
	movq	-88(%rbp), %rax
	movq	$.LC5, 288(%rax)
.L17:
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L18
	movl	$-1, %eax
	jmp	.L40
.L18:
	movq	-88(%rbp), %rax
	movq	608(%rax), %rax
	movl	dir_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	352(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L19
	movq	-88(%rbp), %rax
	movq	352(%rax), %rbx
	movq	-88(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L20
.L19:
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L21
	movl	$-1, %eax
	jmp	.L40
.L21:
	movq	-88(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L22
	movq	-88(%rbp), %rax
	movq	264(%rax), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L22
	movl	$-1, %eax
	jmp	.L40
.L22:
	movq	-88(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L23
	movq	-88(%rbp), %rax
	movq	384(%rax), %rbx
	movq	-88(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r9d
	movq	%rbx, %r8
	movl	$.LC7, %ecx
	movl	$.LC8, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -40(%rbp)
	jmp	.L24
.L23:
	movq	-88(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rsi
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC8, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -40(%rbp)
.L24:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_construct_url
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	248(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$301, %eax
	jmp	.L40
.L20:
	movq	-88(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L25
	movl	$-1, %eax
	jmp	.L40
.L25:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -28(%rbp)
	jmp	.L27
.L26:
	movq	$.LC10, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
.L27:
	jmp	.L28
.L38:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L29
	movq	-88(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC7, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -48(%rbp)
.L29:
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L30
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-64(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L32
.L31:
	movq	-64(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	jne	.L30
.L32:
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_internal_fast_redirect
	movl	$0, %eax
	jmp	.L40
.L30:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jle	.L33
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$399, %eax
	jle	.L34
.L33:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$406, %eax
	jne	.L35
	cmpl	$1, -28(%rbp)
	je	.L34
.L35:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$401, %eax
	jne	.L36
	cmpl	$1, -28(%rbp)
	jne	.L36
.L34:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	272(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	272(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 272(%rax)
	movq	-64(%rbp), %rax
	movq	248(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	248(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-64(%rbp), %rax
	movq	256(%rax), %rdx
	movq	-88(%rbp), %rax
	movq	256(%rax), %rcx
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_overlay
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 256(%rax)
	movl	-32(%rbp), %eax
	jmp	.L40
.L36:
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L37
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$404, %eax
	je	.L37
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L37
	movq	-64(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -32(%rbp)
.L37:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	addq	$8, -24(%rbp)
	subl	$1, -28(%rbp)
.L28:
	cmpl	$0, -28(%rbp)
	jne	.L38
	cmpl	$0, -32(%rbp)
	je	.L39
	movl	-32(%rbp), %eax
	jmp	.L40
.L39:
	movl	$-1, %eax
.L40:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fixup_dir, .-fixup_dir
	.type	register_hooks, @function
register_hooks:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$20, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$fixup_dir, %edi
	call	ap_hook_fixups
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

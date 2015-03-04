	.file	"mod_userdir.c"
	.globl	userdir_module
	.section	.rodata
.LC0:
	.string	"mod_userdir.c"
	.data
	.align 64
	.type	userdir_module, @object
	.size	userdir_module, 104
userdir_module:
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
	.quad	create_userdir_config
	.quad	0
	.quad	userdir_cmds
	.quad	register_hooks
	.text
	.type	create_userdir_config, @function
create_userdir_config:
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
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_userdir_config, .-create_userdir_config
	.section	.rodata
.LC1:
	.string	"UserDir requires an argument."
.LC2:
	.string	"disable"
.LC3:
	.string	"disabled"
.LC4:
	.string	"enable"
.LC5:
	.string	"enabled"
	.align 8
.LC6:
	.string	"UserDir \"enable\" keyword requires a list of usernames"
	.text
	.type	set_user_dir, @function
set_user_dir:
.LFB3:
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
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	userdir_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	$.LC1, %eax
	jmp	.L15
.L4:
	movq	-24(%rbp), %rax
	movl	$.LC2, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L6
	movq	-24(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L7
.L6:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, %eax
	jmp	.L15
.L8:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L7:
	movq	-24(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L10
	movq	-24(%rbp), %rax
	movl	$.LC5, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L11
.L10:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L12
	movl	$.LC6, %eax
	jmp	.L15
.L12:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L9
.L11:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	jmp	.L15
.L9:
	jmp	.L13
.L14:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
.L13:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L14
	movl	$0, %eax
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_user_dir, .-set_user_dir
	.section	.rodata
.LC7:
	.string	"UserDir"
	.align 8
.LC8:
	.string	"the public subdirectory in users' home directories, or 'disabled', or 'disabled username username...', or 'enabled username username...'"
	.align 64
	.type	userdir_cmds, @object
	.size	userdir_cmds, 80
userdir_cmds:
	.quad	.LC7
	.quad	set_user_dir
	.quad	0
	.long	128
	.long	0
	.quad	.LC8
	.quad	0
	.zero	32
.LC9:
	.string	"Location"
.LC10:
	.string	"/"
.LC11:
	.string	"mod_userdir_user"
	.text
	.type	translate_userdir, @function
translate_userdir:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L17
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	je	.L18
.L17:
	movl	$-1, %eax
	jmp	.L41
.L18:
	movq	-232(%rbp), %rax
	movq	16(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	userdir_module+8(%rip), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$-1, %eax
	jmp	.L41
.L20:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-88(%rbp), %rcx
	movl	$47, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L21
	movq	-88(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
.L21:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L23
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L22
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L23
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L23
.L22:
	movl	$-1, %eax
	jmp	.L41
.L23:
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L24
	movl	$-1, %eax
	jmp	.L41
.L24:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	je	.L25
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	jne	.L25
	movl	$-1, %eax
	jmp	.L41
.L25:
	jmp	.L26
.L40:
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -216(%rbp)
	movq	$0, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-216(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_os_is_path_absolute
	movl	%eax, -52(%rbp)
	movq	-216(%rbp), %rax
	movl	$42, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L27
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	leaq	-216(%rbp), %rcx
	movl	$42, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -16(%rbp)
.L27:
	movq	-216(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L28
	cmpl	$0, -52(%rbp)
	je	.L29
.L28:
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L31
	cmpl	$0, -52(%rbp)
	jne	.L31
	movq	-88(%rbp), %rdi
	movq	-216(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	248(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$302, %eax
	jmp	.L41
.L31:
	movq	-216(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	jmp	.L34
.L30:
	movq	-216(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC10, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
	jmp	.L34
.L29:
	cmpq	$0, -16(%rbp)
	je	.L35
	movq	-16(%rbp), %rax
	movl	$58, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	je	.L35
	movq	-88(%rbp), %rcx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	248(%rax), %rax
	movq	-64(%rbp), %rdx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$302, %eax
	jmp	.L41
.L35:
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_uid_homepath_get
	testl	%eax, %eax
	jne	.L34
	movq	-216(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC10, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -8(%rbp)
.L34:
	cmpq	$0, -8(%rbp)
	je	.L26
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L38
	movq	-232(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rsi
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	movl	$33136, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.L38
	cmpl	$70008, -68(%rbp)
	jne	.L26
.L38:
	movq	-88(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rsi
	movl	$0, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-232(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L39
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L39
	movq	-232(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 392(%rax)
	movq	-200(%rbp), %rdx
	movq	%rdx, 400(%rax)
	movq	-192(%rbp), %rdx
	movq	%rdx, 408(%rax)
	movq	-184(%rbp), %rdx
	movq	%rdx, 416(%rax)
	movq	-176(%rbp), %rdx
	movq	%rdx, 424(%rax)
	movq	-168(%rbp), %rdx
	movq	%rdx, 432(%rax)
	movq	-160(%rbp), %rdx
	movq	%rdx, 440(%rax)
	movq	-152(%rbp), %rdx
	movq	%rdx, 448(%rax)
	movq	-144(%rbp), %rdx
	movq	%rdx, 456(%rax)
	movq	-136(%rbp), %rdx
	movq	%rdx, 464(%rax)
	movq	-128(%rbp), %rdx
	movq	%rdx, 472(%rax)
	movq	-120(%rbp), %rdx
	movq	%rdx, 480(%rax)
	movq	-112(%rbp), %rdx
	movq	%rdx, 488(%rax)
	movq	-104(%rbp), %rdx
	movq	%rdx, 496(%rax)
	movq	-96(%rbp), %rdx
	movq	%rdx, 504(%rax)
.L39:
	movq	-232(%rbp), %rax
	movq	272(%rax), %rax
	movq	-48(%rbp), %rdx
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movl	$0, %eax
	jmp	.L41
.L26:
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L40
	movl	$-1, %eax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	translate_userdir, .-translate_userdir
	.type	get_suexec_id_doer, @function
get_suexec_id_doer:
.LFB5:
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
	movq	272(%rax), %rax
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L43
	movl	$0, %eax
	jmp	.L44
.L43:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L45
	movl	$0, %eax
	jmp	.L44
.L45:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	call	apr_uid_get
	testl	%eax, %eax
	je	.L46
	movl	$0, %eax
	jmp	.L44
.L46:
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	get_suexec_id_doer, .-get_suexec_id_doer
	.type	register_hooks, @function
register_hooks:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$10, %ecx
	movl	$aszSucc.8119, %edx
	movl	$aszPre.8118, %esi
	movl	$translate_userdir, %edi
	call	ap_hook_translate_name
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$get_suexec_id_doer, %edi
	call	ap_hook_get_suexec_identity
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC12:
	.string	"mod_alias.c"
	.align 16
	.type	aszPre.8118, @object
	.size	aszPre.8118, 16
aszPre.8118:
	.quad	.LC12
	.quad	0
.LC13:
	.string	"mod_vhost_alias.c"
	.align 16
	.type	aszSucc.8119, @object
	.size	aszSucc.8119, 16
aszSucc.8119:
	.quad	.LC13
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

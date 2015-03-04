	.file	"mod_authz_groupfile.c"
	.text
	.type	create_authz_groupfile_dir_config, @function
create_authz_groupfile_dir_config:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	create_authz_groupfile_dir_config, .-create_authz_groupfile_dir_config
	.section	.rodata
.LC0:
	.string	"standard"
.LC1:
	.string	"Invalid auth file type: "
	.text
	.type	set_authz_groupfile_slot, @function
set_authz_groupfile_slot:
.LFB3:
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
	cmpq	$0, -32(%rbp)
	je	.L4
	movq	-32(%rbp), %rax
	movl	$.LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L5
.L4:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_set_file_slot
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	set_authz_groupfile_slot, .-set_authz_groupfile_slot
	.section	.rodata
.LC2:
	.string	"AuthGroupFile"
	.align 8
.LC3:
	.string	"text file containing group names and member user IDs"
.LC4:
	.string	"AuthzGroupFileAuthoritative"
	.align 8
.LC5:
	.string	"Set to 'Off' to allow access control to be passed along to lower modules if the 'require group' fails. (default is On)."
	.align 64
	.type	authz_groupfile_cmds, @object
	.size	authz_groupfile_cmds, 120
authz_groupfile_cmds:
	.quad	.LC2
	.quad	set_authz_groupfile_slot
	.quad	0
	.long	8
	.long	7
	.quad	.LC3
	.quad	.LC4
	.quad	ap_set_flag_slot
	.quad	8
	.long	8
	.long	5
	.quad	.LC5
	.quad	0
	.zero	32
	.globl	authz_groupfile_module
.LC6:
	.string	"mod_authz_groupfile.c"
	.data
	.align 64
	.type	authz_groupfile_module, @object
	.size	authz_groupfile_module, 104
authz_groupfile_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC6
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_authz_groupfile_dir_config
	.quad	0
	.quad	0
	.quad	0
	.quad	authz_groupfile_cmds
	.quad	register_hooks
	.section	.rodata
.LC7:
	.string	"in"
	.text
	.type	groups_for_user, @function
groups_for_user:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8304, %rsp
	movq	%rdi, -8280(%rbp)
	movq	%rsi, -8288(%rbp)
	movq	%rdx, -8296(%rbp)
	movq	%rcx, -8304(%rbp)
	movq	-8280(%rbp), %rax
	movl	$15, %esi
	movq	%rax, %rdi
	call	apr_table_make
	movq	%rax, -16(%rbp)
	movq	-8296(%rbp), %rdx
	movq	-8280(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_pcfg_openfile
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L7
	movl	-20(%rbp), %eax
	jmp	.L18
.L7:
	movq	-8280(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	jmp	.L9
.L17:
	movzbl	-8256(%rbp), %eax
	cmpb	$35, %al
	je	.L10
	movzbl	-8256(%rbp), %eax
	testb	%al, %al
	jne	.L11
.L10:
	jmp	.L9
.L11:
	leaq	-8256(%rbp), %rax
	movq	%rax, -8264(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movq	-56(%rbp), %rax
	leaq	-8264(%rbp), %rcx
	movl	$58, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -8(%rbp)
	jmp	.L12
.L14:
	subq	$1, -8(%rbp)
.L12:
	cmpq	$0, -8(%rbp)
	je	.L13
	call	__ctype_b_loc
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	-1(%rdx), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$8192, %eax
	testl	%eax, %eax
	jne	.L14
.L13:
	jmp	.L15
.L16:
	movq	-56(%rbp), %rax
	leaq	-8264(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -40(%rbp)
	movq	-8288(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8280(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrmemdup
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movl	$.LC7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L9
.L15:
	movq	-8264(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L16
.L9:
	movq	-48(%rbp), %rdx
	leaq	-8256(%rbp), %rax
	movl	$8192, %esi
	movq	%rax, %rdi
	call	ap_cfg_getline
	testl	%eax, %eax
	je	.L17
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_cfg_closefile
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	movq	-8304(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	groups_for_user, .-groups_for_user
	.section	.rodata
.LC8:
	.string	"file-group"
.LC9:
	.string	"authz_group_note"
.LC10:
	.string	"group"
.LC11:
	.string	"Could not open group file: %s"
	.align 8
.LC12:
	.string	"user doesn't appear in group file (%s)."
	.align 8
.LC13:
	.string	"file group '%s' does not match."
	.align 8
.LC14:
	.string	"user is not part of the 'require'ed group(s)."
	.align 8
.LC15:
	.string	"Authorization of user %s to access %s failed, reason: %s"
	.text
	.type	check_user_access, @function
check_user_access:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	608(%rax), %rax
	movl	authz_groupfile_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	320(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movl	128(%rax), %eax
	movl	%eax, -60(%rbp)
	movl	$0, -20(%rbp)
	movq	$0, -112(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_requires
	movq	%rax, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L20
	movl	$-1, %eax
	jmp	.L42
.L20:
	cmpq	$0, -72(%rbp)
	jne	.L22
	movl	$-1, %eax
	jmp	.L42
.L22:
	cmpq	$0, -56(%rbp)
	jne	.L23
	movl	$500, %eax
	jmp	.L42
.L23:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	$0, %ebx
	jmp	.L24
.L37:
	movslq	%ebx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	sarq	%cl, %rdx
	movq	%rdx, %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L25
	jmp	.L26
.L25:
	movslq	%ebx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_white
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L27
	movq	-120(%rbp), %rax
	movq	272(%rax), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L27
	jmp	.L26
.L27:
	movq	-88(%rbp), %rax
	movl	$.LC10, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L28
	cmpq	$0, -32(%rbp)
	je	.L26
.L28:
	movl	$1, -20(%rbp)
	movq	-112(%rbp), %rax
	testq	%rax, %rax
	jne	.L29
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-112(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	call	groups_for_user
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	.L30
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	subq	$8, %rsp
	movq	-120(%rbp), %rcx
	movl	-92(%rbp), %eax
	pushq	%rdx
	movl	$.LC11, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$216, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$500, %eax
	jmp	.L42
.L30:
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	apr_table_elts
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L29
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -40(%rbp)
	jmp	.L31
.L29:
	cmpq	$0, -32(%rbp)
	je	.L32
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L33
	movl	$0, %eax
	jmp	.L42
.L33:
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L34
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -40(%rbp)
	jmp	.L31
.L34:
	movq	$0, -32(%rbp)
	jmp	.L26
.L32:
	jmp	.L35
.L36:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	leaq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_table_get
	testq	%rax, %rax
	je	.L35
	movl	$0, %eax
	jmp	.L42
.L35:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L36
.L26:
	addl	$1, %ebx
.L24:
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	%ebx, %eax
	jg	.L37
.L31:
	cmpl	$0, -20(%rbp)
	je	.L38
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jne	.L39
.L38:
	movl	$-1, %eax
	jmp	.L42
.L39:
	cmpq	$0, -40(%rbp)
	je	.L40
	movq	-40(%rbp), %rax
	jmp	.L41
.L40:
	movl	$.LC14, %eax
.L41:
	movq	-120(%rbp), %rdx
	movq	352(%rdx), %rcx
	movq	-120(%rbp), %rdx
	movq	320(%rdx), %rdx
	subq	$8, %rsp
	movq	-120(%rbp), %rsi
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	$.LC15, %r9d
	movq	%rsi, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$263, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$32, %rsp
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	ap_note_auth_failure
	movl	$401, %eax
.L42:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	check_user_access, .-check_user_access
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
	movl	$0, %edx
	movl	$aszPre.9005, %esi
	movl	$check_user_access, %edi
	call	ap_hook_auth_checker
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC16:
	.string	"mod_authz_owner.c"
	.align 16
	.type	aszPre.9005, @object
	.size	aszPre.9005, 16
aszPre.9005:
	.quad	.LC16
	.quad	0
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

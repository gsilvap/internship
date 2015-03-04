	.file	"unixd.c"
	.comm	unixd_config,32,32
	.section	.rodata
	.align 8
.LC0:
	.string	"getpwuid: couldn't determine user name from uid %u, you probably need to modify the User directive"
.LC1:
	.string	"unixd.c"
	.align 8
.LC2:
	.string	"setgid: unable to set group id to Group %u"
	.align 8
.LC3:
	.string	"initgroups: unable to set groups for User %s and Group %u"
	.text
	.type	set_group_privs, @function
set_group_privs:
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
	call	geteuid
	testl	%eax, %eax
	jne	.L2
	movq	unixd_config(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L3
	movq	unixd_config(%rip), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	call	getpwuid
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L4
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	movl	-28(%rbp), %edx
	pushq	%rdx
	movl	$.LC0, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$75, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L5
.L4:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L6
.L3:
	movq	unixd_config(%rip), %rax
	movq	%rax, -24(%rbp)
.L6:
	movl	unixd_config+12(%rip), %eax
	movl	%eax, %edi
	call	setgid
	cmpl	$-1, %eax
	jne	.L7
	movl	unixd_config+12(%rip), %ebx
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$.LC2, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$95, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L5
.L7:
	movl	unixd_config+12(%rip), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	initgroups
	cmpl	$-1, %eax
	jne	.L2
	movl	unixd_config+12(%rip), %ebx
	call	__errno_location
	movl	(%rax), %eax
	pushq	%rbx
	pushq	-24(%rbp)
	movl	$.LC3, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$104, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L5
.L2:
	movl	$0, %eax
.L5:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	set_group_privs, .-set_group_privs
	.section	.rodata
	.align 8
.LC4:
	.string	"Cannot chroot when not started as root"
.LC5:
	.string	"Can't chdir to %s"
.LC6:
	.string	"Can't chroot to %s"
.LC7:
	.string	"/"
.LC8:
	.string	"Can't chdir to new root"
	.align 8
.LC9:
	.string	"setuid: unable to change to uid: %ld"
	.align 8
.LC10:
	.string	"set dumpable failed - this child will not coredump after software errors"
	.text
	.globl	unixd_setup_child
	.type	unixd_setup_child, @function
unixd_setup_child:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	call	set_group_privs
	testl	%eax, %eax
	je	.L9
	movl	$-1, %eax
	jmp	.L10
.L9:
	movq	unixd_config+24(%rip), %rax
	testq	%rax, %rax
	je	.L11
	call	geteuid
	testl	%eax, %eax
	je	.L12
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC4, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$123, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$-1, %eax
	jmp	.L10
.L12:
	movq	unixd_config+24(%rip), %rax
	movq	%rax, %rdi
	call	chdir
	testl	%eax, %eax
	je	.L13
	movq	unixd_config+24(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$.LC5, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$128, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L10
.L13:
	movq	unixd_config+24(%rip), %rax
	movq	%rax, %rdi
	call	chroot
	testl	%eax, %eax
	je	.L14
	movq	unixd_config+24(%rip), %rbx
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$.LC6, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$133, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L10
.L14:
	movl	$.LC7, %edi
	call	chdir
	testl	%eax, %eax
	je	.L11
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC8, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$138, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$-1, %eax
	jmp	.L10
.L11:
	call	geteuid
	testl	%eax, %eax
	jne	.L15
	movl	unixd_config+8(%rip), %eax
	movl	%eax, %edi
	call	setuid
	cmpl	$-1, %eax
	jne	.L15
	movl	unixd_config+8(%rip), %eax
	movl	%eax, %ebx
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$.LC9, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$164, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$-1, %eax
	jmp	.L10
.L15:
	movl	ap_coredumpdir_configured(%rip), %eax
	testl	%eax, %eax
	je	.L16
	movl	$1, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	prctl
	testl	%eax, %eax
	je	.L16
	call	__errno_location
	movl	(%rax), %eax
	movl	$.LC10, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$1, %edx
	movl	$174, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
.L16:
	movl	$0, %eax
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	unixd_setup_child, .-unixd_setup_child
	.section	.rodata
	.align 8
.LC11:
	.ascii	"Error:\tApache has not been designed to serve pages while\n\t"
	.ascii	"running as root.  There are known race conditions that\n\twi"
	.ascii	"ll allow any local user to read any file on the sys"
	.string	"tem.\n\tIf you still desire to serve pages as root then\n\tadd -DBIG_SECURITY_HOLE to the CFLAGS env variable\n\tand then rebuild the server.\n\tIt is strongly suggested that you instead modify the User\n\tdirective in your httpd.conf file to list a non-root\n\tuser.\n"
	.text
	.globl	unixd_set_user
	.type	unixd_set_user, @function
unixd_set_user:
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
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L18
	movq	-8(%rbp), %rax
	jmp	.L19
.L18:
	movq	-40(%rbp), %rax
	movq	%rax, unixd_config(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_uname2id
	movl	%eax, unixd_config+8(%rip)
	movl	unixd_config+8(%rip), %eax
	testl	%eax, %eax
	jne	.L20
	movl	$.LC11, %eax
	jmp	.L19
.L20:
	movl	$0, %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	unixd_set_user, .-unixd_set_user
	.globl	unixd_set_group
	.type	unixd_set_group, @function
unixd_set_group:
.LFB5:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L22
	movq	-8(%rbp), %rax
	jmp	.L23
.L22:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_gname2id
	movl	%eax, unixd_config+12(%rip)
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	unixd_set_group, .-unixd_set_group
	.section	.rodata
	.align 8
.LC12:
	.string	"ChrootDir must be a valid directory"
	.text
	.globl	unixd_set_chroot_dir
	.type	unixd_set_chroot_dir, @function
unixd_set_chroot_dir:
.LFB6:
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
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L25
	movq	-8(%rbp), %rax
	jmp	.L26
.L25:
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_is_directory
	testl	%eax, %eax
	jne	.L27
	movl	$.LC12, %eax
	jmp	.L26
.L27:
	movq	-40(%rbp), %rax
	movq	%rax, unixd_config+24(%rip)
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	unixd_set_chroot_dir, .-unixd_set_chroot_dir
	.section	.rodata
.LC13:
	.string	"#-1"
	.align 8
.LC14:
	.string	"/home/user/Desktop/demo/installdir//bin/suexec"
	.text
	.globl	unixd_pre_config
	.type	unixd_pre_config, @function
unixd_pre_config:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	$.LC13, unixd_config(%rip)
	movl	$.LC13, %edi
	call	ap_uname2id
	movl	%eax, unixd_config+8(%rip)
	movl	$.LC13, %edi
	call	ap_gname2id
	movl	%eax, unixd_config+12(%rip)
	movq	$0, unixd_config+24(%rip)
	movl	$0, unixd_config+16(%rip)
	movq	-136(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rcx
	movl	$7582064, %edx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	call	apr_stat
	testl	%eax, %eax
	jne	.L28
	movl	-116(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L28
	movl	-108(%rbp), %eax
	testl	%eax, %eax
	jne	.L28
	movl	$1, unixd_config+16(%rip)
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	unixd_pre_config, .-unixd_pre_config
	.section	.rodata
.LC15:
	.string	"%s: getrlimit failed"
.LC16:
	.string	"max"
.LC17:
	.string	"Invalid parameters for %s"
	.align 8
.LC18:
	.string	"Must be uid 0 to raise maximum %s"
	.text
	.globl	unixd_set_rlimit
	.type	unixd_set_rlimit, @function
unixd_set_rlimit:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	getrlimit
	testl	%eax, %eax
	je	.L33
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	72(%rax), %r12
	call	__errno_location
	movl	(%rax), %eax
	subq	$8, %rsp
	pushq	%rbx
	movl	$.LC15, %r9d
	movq	%r12, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$277, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L32
.L33:
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L35
	movq	-48(%rbp), %rax
	movl	$.LC16, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L36
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L38
.L36:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -24(%rbp)
	jmp	.L38
.L35:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	72(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC17, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$291, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L32
.L38:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	je	.L39
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L39
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	atol
	movq	%rax, -32(%rbp)
.L39:
	call	geteuid
	testl	%eax, %eax
	je	.L40
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -32(%rbp)
	je	.L32
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	72(%rdx), %rdx
	subq	$8, %rsp
	pushq	%rax
	movl	$.LC18, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$304, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	jmp	.L32
.L40:
	cmpq	$0, -24(%rbp)
	je	.L42
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
.L42:
	cmpq	$0, -32(%rbp)
	je	.L32
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L32:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	unixd_set_rlimit, .-unixd_set_rlimit
	.local	_hooks
	.comm	_hooks,8,8
	.section	.rodata
.LC19:
	.string	"get_suexec_identity"
	.text
	.globl	ap_hook_get_suexec_identity
	.type	ap_hook_get_suexec_identity, @function
ap_hook_get_suexec_identity:
.LFB9:
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
	jne	.L44
	movq	apr_hook_global_pool(%rip), %rax
	movl	$40, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, _hooks(%rip)
	movl	$_hooks, %esi
	movl	$.LC19, %edi
	call	apr_hook_sort_register
.L44:
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
	je	.L43
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC19, %edi
	call	apr_hook_debug_show
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	ap_hook_get_suexec_identity, .-ap_hook_get_suexec_identity
	.globl	ap_hook_get_get_suexec_identity
	.type	ap_hook_get_get_suexec_identity, @function
ap_hook_get_get_suexec_identity:
.LFB10:
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
.LFE10:
	.size	ap_hook_get_get_suexec_identity, .-ap_hook_get_get_suexec_identity
	.globl	ap_run_get_suexec_identity
	.type	ap_run_get_suexec_identity, @function
ap_run_get_suexec_identity:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	$0, -16(%rbp)
	movq	_hooks(%rip), %rax
	testq	%rax, %rax
	je	.L49
	movq	_hooks(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L50
.L52:
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
	je	.L51
	jmp	.L49
.L51:
	addl	$1, -4(%rbp)
.L50:
	movq	_hooks(%rip), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L52
.L49:
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	ap_run_get_suexec_identity, .-ap_run_get_suexec_identity
	.section	.rodata
.LC20:
	.string	"~%ld"
.LC21:
	.string	"%ld"
	.text
	.type	ap_unix_create_privileged_process, @function
ap_unix_create_privileged_process:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movq	%r9, -112(%rbp)
	movl	$0, -20(%rbp)
	movl	unixd_config+16(%rip), %eax
	testl	%eax, %eax
	jne	.L55
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_proc_create
	jmp	.L56
.L55:
	movq	-80(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L57
	addq	$1, -40(%rbp)
	jmp	.L58
.L57:
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
.L58:
	movq	-112(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	.L59
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	movl	$.LC20, %esi
	movq	16(%rbp), %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -32(%rbp)
	jmp	.L60
.L59:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	movl	$.LC21, %esi
	movq	16(%rbp), %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -32(%rbp)
.L60:
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	movq	%rax, %rdx
	movl	$.LC21, %esi
	movq	16(%rbp), %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L61
	cmpq	$0, -48(%rbp)
	jne	.L62
.L61:
	movl	$12, %eax
	jmp	.L56
.L62:
	movl	$0, -20(%rbp)
	cmpq	$0, -88(%rbp)
	je	.L63
	jmp	.L64
.L65:
	addl	$1, -20(%rbp)
.L64:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L65
.L63:
	movl	-20(%rbp), %eax
	addl	$4, %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	apr_palloc
	movq	%rax, -56(%rbp)
	movq	$.LC14, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	$.LC14, (%rax)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	leaq	24(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	apr_pstrdup
	movq	%rax, (%rbx)
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_procattr_cmdtype_set
	testl	%eax, %eax
	je	.L66
	movl	$20014, %eax
	jmp	.L56
.L66:
	movl	$1, -20(%rbp)
.L67:
	movl	-20(%rbp), %eax
	cltq
	addq	$3, %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-88(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_proc_create
.L56:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	ap_unix_create_privileged_process, .-ap_unix_create_privileged_process
	.globl	ap_os_create_privileged_process
	.type	ap_os_create_privileged_process, @function
ap_os_create_privileged_process:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_get_suexec_identity
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L69
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rbp), %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_proc_create
	jmp	.L70
.L69:
	subq	$8, %rsp
	movq	-8(%rbp), %r8
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	pushq	16(%rbp)
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	ap_unix_create_privileged_process
	addq	$16, %rsp
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	ap_os_create_privileged_process, .-ap_os_create_privileged_process
	.section	.rodata
.LC22:
	.string	"sysvsem"
.LC23:
	.string	"flock"
	.text
	.type	proc_mutex_mech, @function
proc_mutex_mech:
.LFB14:
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
	call	apr_proc_mutex_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L72
	movl	$2, %eax
	jmp	.L73
.L72:
	movq	-8(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L74
	movl	$1, %eax
	jmp	.L73
.L74:
	movl	$5, %eax
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	proc_mutex_mech, .-proc_mutex_mech
	.globl	unixd_set_proc_mutex_perms
	.type	unixd_set_proc_mutex_perms, @function
unixd_set_proc_mutex_perms:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -184(%rbp)
	call	geteuid
	testl	%eax, %eax
	jne	.L76
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	proc_mutex_mech
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	je	.L78
	cmpl	$2, %eax
	je	.L79
	jmp	.L76
.L79:
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_os_proc_mutex_get
	movl	unixd_config+8(%rip), %eax
	movl	%eax, -172(%rbp)
	movl	unixd_config+12(%rip), %eax
	movl	%eax, -168(%rbp)
	movw	$384, -156(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-48(%rbp), %eax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$0, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	semctl
	testl	%eax, %eax
	jns	.L80
	call	__errno_location
	movl	(%rax), %eax
	jmp	.L81
.L80:
	jmp	.L76
.L78:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	apr_proc_mutex_lockfile
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L82
	movl	unixd_config+8(%rip), %ecx
	movq	-16(%rbp), %rax
	movl	$-1, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	chown
	testl	%eax, %eax
	jns	.L82
	call	__errno_location
	movl	(%rax), %eax
	jmp	.L81
.L82:
	nop
.L76:
	movl	$0, %eax
.L81:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	unixd_set_proc_mutex_perms, .-unixd_set_proc_mutex_perms
	.globl	unixd_set_global_mutex_perms
	.type	unixd_set_global_mutex_perms, @function
unixd_set_global_mutex_perms:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_os_global_mutex_get
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	unixd_set_proc_mutex_perms
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	unixd_set_global_mutex_perms, .-unixd_set_global_mutex_perms
	.section	.rodata
.LC24:
	.string	"apr_socket_accept: giving up."
	.align 8
.LC25:
	.string	"apr_socket_accept: (client socket)"
	.text
	.globl	unixd_accept
	.type	unixd_accept, @function
unixd_accept:
.LFB17:
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
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_socket_accept
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L86
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	.L95
.L86:
	cmpl	$4, -4(%rbp)
	jne	.L88
	movl	-4(%rbp), %eax
	jmp	.L95
.L88:
	movl	-4(%rbp), %eax
	cmpl	$101, %eax
	je	.L96
	cmpl	$101, %eax
	jg	.L91
	cmpl	$71, %eax
	je	.L96
	cmpl	$100, %eax
	je	.L92
	cmpl	$11, %eax
	je	.L96
	jmp	.L89
.L91:
	cmpl	$110, %eax
	je	.L96
	cmpl	$110, %eax
	jg	.L93
	subl	$103, %eax
	cmpl	$1, %eax
	ja	.L89
	jmp	.L96
.L93:
	cmpl	$113, %eax
	je	.L96
	jmp	.L89
.L92:
	movq	ap_server_conf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC24, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$0, %edx
	movl	$619, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$20014, %eax
	jmp	.L95
.L89:
	movq	ap_server_conf(%rip), %rdx
	movl	-4(%rbp), %eax
	movl	$.LC25, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$636, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$20014, %eax
	jmp	.L95
.L96:
	nop
	movl	-4(%rbp), %eax
.L95:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	unixd_accept, .-unixd_accept
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

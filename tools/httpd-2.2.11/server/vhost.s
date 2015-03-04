	.file	"vhost.c"
	.local	iphash_table
	.comm	iphash_table,2048,64
	.local	default_list
	.comm	default_list,8,8
	.local	name_vhost_list
	.comm	name_vhost_list,8,8
	.local	name_vhost_list_tail
	.comm	name_vhost_list_tail,8,8
	.text
	.globl	ap_init_vhost_config
	.type	ap_init_vhost_config, @function
ap_init_vhost_config:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2048, %edx
	movl	$0, %esi
	movl	$iphash_table, %edi
	call	memset
	movq	$0, default_list(%rip)
	movq	$0, name_vhost_list(%rip)
	movq	$name_vhost_list, name_vhost_list_tail(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_init_vhost_config, .-ap_init_vhost_config
	.section	.rodata
	.align 8
.LC0:
	.string	"The address or port is invalid"
	.align 8
.LC1:
	.string	"Missing address for VirtualHost"
.LC2:
	.string	"Scope ids are not supported"
.LC3:
	.string	"*"
.LC4:
	.string	"0.0.0.0"
	.align 8
.LC5:
	.string	"Could not resolve address '0.0.0.0' -- check resolver configuration."
.LC6:
	.string	"_default_"
.LC7:
	.string	"255.255.255.255"
	.align 8
.LC8:
	.string	"Could not resolve address '255.255.255.255' -- check resolver configuration."
	.align 8
.LC9:
	.string	"Could not resolve host name %s -- ignoring!"
.LC10:
	.string	"vhost.c"
	.text
	.type	get_addresses, @function
get_addresses:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, %eax
	movw	%ax, -108(%rbp)
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L16
.L3:
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L5
	cmpq	$1, -24(%rbp)
	ja	.L6
	movl	$1, -4(%rbp)
	jmp	.L5
.L6:
	movq	-24(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$58, %al
	jne	.L5
	movq	-24(%rbp), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$1, -4(%rbp)
.L5:
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rcx
	leaq	-66(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_parse_addr_port
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L7
	movl	$.LC0, %eax
	jmp	.L16
.L7:
	movq	-56(%rbp), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$.LC1, %eax
	jmp	.L16
.L8:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.L9
	movl	$.LC2, %eax
	jmp	.L16
.L9:
	movzwl	-66(%rbp), %eax
	testw	%ax, %ax
	jne	.L10
	cmpl	$0, -4(%rbp)
	jne	.L10
	movzwl	-108(%rbp), %eax
	movw	%ax, -66(%rbp)
.L10:
	movq	-56(%rbp), %rax
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L11
	movzwl	-66(%rbp), %eax
	movzwl	%ax, %edx
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L12
	movl	$.LC5, %eax
	jmp	.L16
.L11:
	movq	-56(%rbp), %rax
	movl	$.LC6, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L13
	movq	-56(%rbp), %rax
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L14
.L13:
	movzwl	-66(%rbp), %eax
	movzwl	%ax, %edx
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$2, %edx
	movl	$.LC7, %esi
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L15
	movl	$.LC8, %eax
	jmp	.L16
.L15:
	jmp	.L12
.L14:
	movzwl	-66(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %r9
	movl	$0, %r8d
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_sockaddr_info_get
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L12
	movq	-56(%rbp), %rdx
	subq	$8, %rsp
	movl	-28(%rbp), %eax
	pushq	%rdx
	movl	$.LC9, %r9d
	movl	$0, %r8d
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$202, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L16
.L12:
	movq	-88(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$32, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movzwl	-66(%rbp), %edx
	movq	-40(%rbp), %rax
	movw	%dx, 16(%rax)
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L12
	movl	$0, %eax
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	get_addresses, .-get_addresses
	.globl	ap_parse_vhost_addrs
	.type	ap_parse_vhost_addrs, @function
ap_parse_vhost_addrs:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$96, %rax
	movq	%rax, -32(%rbp)
	jmp	.L18
.L20:
	movq	-56(%rbp), %rax
	movzwl	48(%rax), %eax
	movzwl	%ax, %ebx
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_getword_conf
	movq	%rax, %rsi
	leaq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	get_addresses
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L18
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-24(%rbp), %rax
	jmp	.L22
.L18:
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L20
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	je	.L21
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L21
	movq	-56(%rbp), %rax
	movq	96(%rax), %rax
	movzwl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 48(%rax)
.L21:
	movl	$0, %eax
.L22:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	ap_parse_vhost_addrs, .-ap_parse_vhost_addrs
	.globl	ap_set_name_virtual_host
	.type	ap_set_name_virtual_host, @function
ap_set_name_virtual_host:
.LFB5:
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
	movq	72(%rax), %rax
	movzwl	48(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rsi
	movl	%edx, %ecx
	movl	$name_vhost_list_tail, %edx
	movq	%rax, %rdi
	call	get_addresses
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	ap_set_name_virtual_host, .-ap_set_name_virtual_host
	.type	hash_inaddr, @function
hash_inaddr:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	xorl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	xorl	-4(%rbp), %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	hash_inaddr, .-hash_inaddr
	.type	hash_addr, @function
hash_addr:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	subq	$4, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	hash_inaddr
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	hash_addr, .-hash_addr
	.type	new_ipaddr_chain, @function
new_ipaddr_chain:
.LFB8:
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
	movl	$32, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	new_ipaddr_chain, .-new_ipaddr_chain
	.type	new_name_chain, @function
new_name_chain:
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
	movq	-24(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	new_name_chain, .-new_name_chain
	.type	find_ipaddr, @function
find_ipaddr:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	hash_addr
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	iphash_table(,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.L34
.L38:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzwl	24(%rax), %eax
	testw	%ax, %ax
	je	.L35
	movq	-40(%rbp), %rax
	movzwl	24(%rax), %eax
	testw	%ax, %ax
	je	.L35
	movq	-32(%rbp), %rax
	movzwl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movzwl	24(%rax), %eax
	cmpw	%ax, %dx
	jne	.L36
.L35:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_equal
	testl	%eax, %eax
	je	.L36
	movq	-8(%rbp), %rax
	jmp	.L37
.L36:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L34:
	cmpq	$0, -8(%rbp)
	jne	.L38
	movl	$0, %eax
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	find_ipaddr, .-find_ipaddr
	.type	find_default_server, @function
find_default_server:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movw	%ax, -20(%rbp)
	movq	default_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L40
.L44:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L41
	movq	-16(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	-20(%rbp), %ax
	jne	.L42
.L41:
	movq	-8(%rbp), %rax
	jmp	.L43
.L42:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L40:
	cmpq	$0, -8(%rbp)
	jne	.L44
	movl	$0, %eax
.L43:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	find_default_server, .-find_default_server
	.section	.rodata
.LC11:
	.string	"_default_:%u"
.LC12:
	.string	"*:%u"
.LC13:
	.string	"%pI"
.LC14:
	.string	"%-22s %s (%s:%u)\n"
.LC15:
	.string	""
	.align 8
.LC16:
	.string	"%-22s is a NameVirtualHost\n%8s default server %s (%s:%u)\n"
.LC17:
	.string	"%8s port %u "
.LC18:
	.string	"%8s port * "
.LC19:
	.string	"namevhost %s (%s:%u)\n"
	.text
	.type	dump_a_vhost, @function
dump_a_vhost:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8240, %rsp
	movq	%rdi, -8232(%rbp)
	movq	%rsi, -8240(%rbp)
	movq	-8240(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L46
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	$-1, %eax
	jne	.L46
	movq	-8240(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	leaq	-8224(%rbp), %rax
	movl	%edx, %ecx
	movl	$.LC11, %edx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movl	%eax, -12(%rbp)
	jmp	.L47
.L46:
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L48
	movq	-24(%rbp), %rax
	movl	68(%rax), %eax
	testl	%eax, %eax
	jne	.L48
	movq	-8240(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	leaq	-8224(%rbp), %rax
	movl	%edx, %ecx
	movl	$.LC12, %edx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movl	%eax, -12(%rbp)
	jmp	.L47
.L48:
	movq	-24(%rbp), %rdx
	leaq	-8224(%rbp), %rax
	movq	%rdx, %rcx
	movl	$.LC13, %edx
	movl	$8192, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_snprintf
	movl	%eax, -12(%rbp)
.L47:
	movq	-8240(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	jne	.L49
	movl	-12(%rbp), %eax
	subl	$1, %eax
	cltq
	movb	$42, -8224(%rbp,%rax)
.L49:
	movq	-8240(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %edi
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rsi
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rcx
	leaq	-8224(%rbp), %rdx
	movq	-8232(%rbp), %rax
	movl	%edi, %r9d
	movq	%rsi, %r8
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	jmp	.L45
.L50:
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %ecx
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8240(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rsi
	subq	$8, %rsp
	leaq	-8224(%rbp), %rdx
	movq	-8232(%rbp), %rax
	pushq	%rcx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$.LC15, %ecx
	movl	$.LC16, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	addq	$16, %rsp
	movq	-8240(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L52
.L55:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L53
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-8232(%rbp), %rax
	movl	%edx, %ecx
	movl	$.LC15, %edx
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	jmp	.L54
.L53:
	movq	-8232(%rbp), %rax
	movl	$.LC15, %edx
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L54:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	24(%rax), %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	40(%rax), %rdx
	movq	-8232(%rbp), %rax
	movl	%esi, %r8d
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L52:
	cmpq	$0, -8(%rbp)
	jne	.L55
.L45:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	dump_a_vhost, .-dump_a_vhost
	.section	.rodata
.LC20:
	.string	"VirtualHost configuration:\n"
	.align 8
.LC21:
	.string	"wildcard NameVirtualHosts and _default_ servers:\n"
	.text
	.type	dump_vhost_config, @function
dump_vhost_config:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movl	$0, -12(%rbp)
	jmp	.L57
.L60:
	movl	-12(%rbp), %eax
	cltq
	movq	iphash_table(,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.L58
.L59:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dump_a_vhost
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L58:
	cmpq	$0, -8(%rbp)
	jne	.L59
	addl	$1, -12(%rbp)
.L57:
	cmpl	$255, -12(%rbp)
	jle	.L60
	movq	default_list(%rip), %rax
	testq	%rax, %rax
	je	.L56
	movq	-24(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	default_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L62
.L63:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	dump_a_vhost
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L62:
	cmpq	$0, -8(%rbp)
	jne	.L63
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dump_vhost_config, .-dump_vhost_config
	.section	.rodata
	.align 8
.LC22:
	.string	"VirtualHost %s:%u -- mixing * ports and non-* ports with a NameVirtualHost address is not supported, proceeding with undefined results"
	.text
	.type	add_name_vhost_config, @function
add_name_vhost_config:
.LFB14:
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
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L65
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L66
.L65:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new_name_chain
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-48(%rbp), %rax
	movzwl	16(%rax), %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	cmpw	%ax, %dx
	je	.L67
	movq	-48(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC22, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$488, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L67:
	movl	$1, %eax
	jmp	.L68
.L66:
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	add_name_vhost_config, .-add_name_vhost_config
	.section	.rodata
	.align 8
.LC23:
	.string	"NameVirtualHost %s:%u has no VirtualHosts"
	.text
	.type	remove_unused_name_vhosts, @function
remove_unused_name_vhosts:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	jmp	.L70
.L72:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L71
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC23, %r9d
	movq	%rcx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$509, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L70
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L70:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L72
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	remove_unused_name_vhosts, .-remove_unused_name_vhosts
	.section	.rodata
	.align 8
.LC24:
	.string	"_default_ VirtualHost overlap on port %u, the first has precedence"
	.align 8
.LC25:
	.string	"VirtualHost %s:%u overlaps with VirtualHost %s:%u, the first has precedence, perhaps you need a NameVirtualHost directive"
	.align 8
.LC26:
	.string	"bogus_host_without_forward_dns"
	.align 8
.LC27:
	.string	"Failed to resolve server name for %s (check DNS) -- or specify an explicit ServerName"
	.align 8
.LC28:
	.string	"bogus_host_without_reverse_dns"
.LC29:
	.string	"DUMP_VHOSTS"
	.text
	.globl	ap_fini_vhost_config
	.type	ap_fini_vhost_config, @function
ap_fini_vhost_config:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$2192, %rsp
	movq	%rdi, -2184(%rbp)
	movq	%rsi, -2192(%rbp)
	movq	name_vhost_list_tail(%rip), %rax
	movq	$0, (%rax)
	movq	-2192(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L74
	movq	-2184(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_local_host
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
.L74:
	movl	$0, -28(%rbp)
	jmp	.L75
.L76:
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	iphash_table(%rax), %rdx
	movl	-28(%rbp), %eax
	cltq
	movq	%rdx, -2112(%rbp,%rax,8)
	addl	$1, -28(%rbp)
.L75:
	cmpl	$255, -28(%rbp)
	jle	.L76
	movq	name_vhost_list(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.L77
.L80:
	movq	$0, -2128(%rbp)
	movq	$0, -2120(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	hash_addr
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	-2184(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	new_ipaddr_chain
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	36(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	leaq	-2128(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L78
	movl	-32(%rbp), %eax
	movq	-2112(%rbp,%rax,8), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rdx
	movl	-32(%rbp), %eax
	movq	%rdx, -2112(%rbp,%rax,8)
	jmp	.L79
.L78:
	movq	default_list(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, default_list(%rip)
.L79:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L77:
	cmpq	$0, -8(%rbp)
	jne	.L80
	movq	-2192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L81
.L97:
	movl	$0, -12(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L82
.L91:
	movq	$0, -2144(%rbp)
	movq	$0, -2136(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	28(%rax), %eax
	cmpl	$2, %eax
	jne	.L83
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	68(%rax), %eax
	cmpl	$-1, %eax
	je	.L84
.L83:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	36(%rax), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	48(%rax), %rax
	leaq	-2144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L85
.L84:
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %edi
	call	find_default_server
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L86
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-2192(%rbp), %rsi
	movq	-2184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_name_vhost_config
	testl	%eax, %eax
	jne	.L87
.L86:
	cmpq	$0, -48(%rbp)
	je	.L88
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L88
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %eax
	subq	$8, %rsp
	movq	-2192(%rbp), %rdx
	pushq	%rax
	movl	$.LC24, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$589, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
.L88:
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-2184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new_ipaddr_chain
	movq	%rax, -48(%rbp)
	movq	default_list(%rip), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, default_list(%rip)
.L87:
	movl	$1, -12(%rbp)
	jmp	.L89
.L85:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	find_ipaddr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L90
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	hash_addr
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-2184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	new_ipaddr_chain
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %eax
	movq	-2112(%rbp,%rax,8), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-52(%rbp), %eax
	movq	-2112(%rbp,%rax,8), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L89
.L90:
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-2192(%rbp), %rsi
	movq	-2184(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	add_name_vhost_config
	testl	%eax, %eax
	jne	.L89
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %esi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	movzwl	%ax, %edx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-2192(%rbp), %rdi
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	pushq	%rax
	movl	$.LC25, %r9d
	movq	%rdi, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$612, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$32, %rsp
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L89:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L82:
	cmpq	$0, -8(%rbp)
	jne	.L91
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L92
	cmpl	$0, -12(%rbp)
	je	.L93
	movq	-2192(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L92
.L93:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	jne	.L94
	movq	-2184(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L92
.L94:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rcx
	leaq	-2152(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_getnameinfo
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.L95
	movq	-2152(%rbp), %rdx
	movq	-2184(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
	jmp	.L92
.L95:
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rdx
	leaq	-2160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_sockaddr_ip_get
	movq	-2160(%rbp), %rdx
	subq	$8, %rsp
	movq	-2192(%rbp), %rcx
	movl	-56(%rbp), %eax
	pushq	%rdx
	movl	$.LC27, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$655, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	-2184(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 40(%rax)
.L92:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L81:
	cmpq	$0, -24(%rbp)
	jne	.L97
	movl	$0, -28(%rbp)
	jmp	.L98
.L99:
	movl	-28(%rbp), %eax
	cltq
	salq	$3, %rax
	leaq	iphash_table(%rax), %rdx
	movq	-2192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	remove_unused_name_vhosts
	addl	$1, -28(%rbp)
.L98:
	cmpl	$255, -28(%rbp)
	jle	.L99
	movq	-2192(%rbp), %rax
	movl	$default_list, %esi
	movq	%rax, %rdi
	call	remove_unused_name_vhosts
	movl	$.LC29, %edi
	call	ap_exists_config_define
	testl	%eax, %eax
	je	.L73
	movq	$0, -2168(%rbp)
	movq	-2184(%rbp), %rdx
	leaq	-2168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movq	-2168(%rbp), %rax
	movq	%rax, %rdi
	call	dump_vhost_config
.L73:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	ap_fini_vhost_config, .-ap_fini_vhost_config
	.section	.rodata
	.align 8
.LC30:
	.string	"Client sent malformed Host header"
	.text
	.type	fix_hostname, @function
fix_hostname:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L102
	jmp	.L101
.L102:
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	88(%rax), %rcx
	leaq	-34(%rbp), %rdx
	leaq	-32(%rbp), %rsi
	leaq	-24(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	apr_parse_addr_port
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L104
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	jne	.L104
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	jne	.L105
	movzwl	-34(%rbp), %eax
	testw	%ax, %ax
	je	.L105
	movzwl	-34(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	movq	%rax, -24(%rbp)
	jmp	.L106
.L105:
	movzwl	-34(%rbp), %eax
	testw	%ax, %ax
	je	.L106
	movzwl	-34(%rbp), %edx
	movq	-56(%rbp), %rax
	movw	%dx, 592(%rax)
	movzwl	-34(%rbp), %eax
	movzwl	%ax, %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	apr_itoa
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 552(%rax)
.L106:
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$91, %al
	je	.L107
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L108
.L112:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L109
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L110
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L109
	jmp	.L104
.L110:
	call	__ctype_b_loc
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addq	%rax, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L111
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	jmp	.L109
.L111:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L104
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	je	.L104
.L109:
	addq	$1, -8(%rbp)
.L108:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L112
	movq	-24(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jbe	.L107
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L107
	movq	-8(%rbp), %rax
	subq	$1, %rax
	movb	$0, (%rax)
.L107:
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 88(%rax)
	jmp	.L101
.L104:
	movq	-56(%rbp), %rax
	movl	$400, 112(%rax)
	movq	-56(%rbp), %rax
	movl	$.LC30, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$767, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	ap_log_rerror
	nop
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	fix_hostname, .-fix_hostname
	.type	matches_aliases, @function
matches_aliases:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L115
	movl	$1, %eax
	jmp	.L116
.L115:
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L117
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L118
.L121:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L119
	jmp	.L120
.L119:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L120
	movl	$1, %eax
	jmp	.L116
.L120:
	addl	$1, -4(%rbp)
.L118:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L121
.L117:
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L122
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L123
.L126:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L124
	jmp	.L125
.L124:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcasecmp_match
	testl	%eax, %eax
	jne	.L125
	movl	$1, %eax
	jmp	.L116
.L125:
	addl	$1, -4(%rbp)
.L123:
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L126
.L122:
	movl	$0, %eax
.L116:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	matches_aliases, .-matches_aliases
	.globl	ap_matches_request_vhost
	.type	ap_matches_request_vhost, @function
ap_matches_request_vhost:
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
	movl	%edx, %eax
	movw	%ax, -36(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L128
.L132:
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L129
	movq	-8(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	-36(%rbp), %ax
	jne	.L130
.L129:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L130
	movl	$1, %eax
	jmp	.L131
.L130:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.L128:
	cmpq	$0, -8(%rbp)
	jne	.L132
	movq	-16(%rbp), %rax
	movzwl	48(%rax), %eax
	cmpw	-36(%rbp), %ax
	je	.L133
	movl	$0, %eax
	jmp	.L131
.L133:
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	matches_aliases
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	ap_matches_request_vhost, .-ap_matches_request_vhost
	.type	check_hostalias, @function
check_hostalias:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -26(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L135
.L141:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L136
	movq	-40(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	-26(%rbp), %ax
	je	.L136
	jmp	.L137
.L136:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L138
	jmp	.L139
.L138:
	movq	-48(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L140
	jmp	.L137
.L140:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	matches_aliases
	testl	%eax, %eax
	je	.L137
	jmp	.L139
.L137:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L135:
	cmpq	$0, -16(%rbp)
	jne	.L141
	jmp	.L134
.L139:
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	check_hostalias, .-check_hostalias
	.type	check_serverpath, @function
check_serverpath:
.LFB21:
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
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -18(%rbp)
	movq	$0, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L144
.L150:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L145
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movzwl	16(%rax), %eax
	cmpw	-18(%rbp), %ax
	je	.L145
	jmp	.L146
.L145:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L147
	jmp	.L146
.L147:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	je	.L146
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	movq	128(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp
	testl	%eax, %eax
	jne	.L146
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	subq	$1, %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L148
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L148
	movq	-40(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	136(%rax), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L146
.L148:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L143
.L146:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L144:
	cmpq	$0, -16(%rbp)
	jne	.L150
.L143:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	check_serverpath, .-check_serverpath
	.section	.rodata
.LC31:
	.string	"Host"
	.text
	.globl	ap_update_vhost_from_headers
	.type	ap_update_vhost_from_headers, @function
ap_update_vhost_from_headers:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	jne	.L152
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L153
.L152:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fix_hostname
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L153
	jmp	.L151
.L153:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L151
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L155
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_hostalias
	jmp	.L151
.L155:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	check_serverpath
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	ap_update_vhost_from_headers, .-ap_update_vhost_from_headers
	.globl	ap_vhost_iterate_given_conn
	.type	ap_vhost_iterate_given_conn, @function
ap_vhost_iterate_given_conn:
.LFB23:
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
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L157
	movq	$0, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -22(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L158
.L163:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	testw	%ax, %ax
	je	.L159
	movq	-32(%rbp), %rax
	movzwl	16(%rax), %eax
	cmpw	-22(%rbp), %ax
	je	.L159
	jmp	.L160
.L159:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.L161
	jmp	.L160
.L161:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L160
	nop
	jmp	.L164
.L160:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L158:
	cmpq	$0, -16(%rbp)
	jne	.L163
	jmp	.L164
.L157:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
	movl	%eax, -20(%rbp)
.L164:
	movl	-20(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	ap_vhost_iterate_given_conn, .-ap_vhost_iterate_given_conn
	.globl	ap_update_vhost_given_ip
	.type	ap_update_vhost_given_ip, @function
ap_update_vhost_given_ip:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	find_ipaddr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L167
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L166
.L167:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movzwl	24(%rax), %eax
	movw	%ax, -10(%rbp)
	movzwl	-10(%rbp), %eax
	movl	%eax, %edi
	call	find_default_server
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L169
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L166
.L169:
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.L166:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	ap_update_vhost_given_ip, .-ap_update_vhost_given_ip
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

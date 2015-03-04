	.file	"mod_autoindex.c"
	.globl	autoindex_module
	.section	.rodata
.LC0:
	.string	"mod_autoindex.c"
	.data
	.align 64
	.type	autoindex_module, @object
	.size	autoindex_module, 104
autoindex_module:
	.long	20051115
	.long	21
	.long	-1
	.zero	4
	.quad	.LC0
	.quad	0
	.quad	0
	.quad	1095774770
	.quad	0
	.quad	create_autoindex_config
	.quad	merge_autoindex_configs
	.quad	0
	.quad	0
	.quad	autoindex_cmds
	.quad	register_hooks
	.local	c_by_encoding
	.comm	c_by_encoding,1,1
	.local	c_by_type
	.comm	c_by_type,1,1
	.local	c_by_path
	.comm	c_by_path,1,1
	.section	.rodata
.LC1:
	.string	"</title>\n"
	.align 8
.LC2:
	.string	"<html xmlns=\"http://www.w3.org/1999/xhtml\">\n <head>\n  <title>Index of "
	.align 8
.LC3:
	.string	"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n"
	.align 8
.LC4:
	.string	"<html>\n <head>\n  <title>Index of "
	.align 8
.LC5:
	.string	"<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">\n"
.LC6:
	.string	" />\n"
.LC7:
	.string	">\n"
.LC8:
	.string	"\" type=\"text/css\""
	.align 8
.LC9:
	.string	"  <link rel=\"stylesheet\" href=\""
.LC10:
	.string	" </head>\n <body>\n"
	.text
	.type	emit_preamble, @function
emit_preamble:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	608(%rax), %rax
	movl	autoindex_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, -28(%rbp)
	je	.L2
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$.LC1, %r8d
	movq	%rdx, %rcx
	movl	$.LC2, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	jmp	.L3
.L2:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$.LC1, %r8d
	movq	%rdx, %rcx
	movl	$.LC4, %edx
	movl	$.LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L4
	cmpl	$0, -28(%rbp)
	je	.L5
	movl	$.LC6, %ecx
	jmp	.L6
.L5:
	movl	$.LC7, %ecx
.L6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$.LC8, %ecx
	movl	$.LC9, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L4:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L7
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_rputs
.L7:
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	$.LC10, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	emit_preamble, .-emit_preamble
	.section	.rodata
.LC11:
	.string	""
.LC12:
	.string	"*"
	.text
	.type	push_item, @function
push_item:
.LFB3:
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
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -8(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L9
	movq	$.LC11, -40(%rbp)
.L9:
	cmpq	$0, -48(%rbp)
	jne	.L10
	movq	$.LC11, -48(%rbp)
.L10:
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	cmpq	$0, -56(%rbp)
	je	.L11
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	jmp	.L12
.L11:
	movl	$0, %edx
.L12:
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rsi
	movl	$0, %ecx
	movl	$.LC12, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	cmpq	$c_by_path, -32(%rbp)
	jne	.L13
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	ap_is_matchexp
	testl	%eax, %eax
	jne	.L13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L8
.L13:
	cmpq	$0, -40(%rbp)
	je	.L15
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L8
.L15:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	push_item, .-push_item
	.section	.rodata
.LC13:
	.string	"**DIRECTORY**"
.LC14:
	.string	"^^DIRECTORY^^"
	.text
	.type	add_alt, @function
add_alt:
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
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_path, %rax
	jne	.L17
	movq	-48(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L17
	movq	$.LC14, -48(%rbp)
.L17:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_encoding, %rax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
.L18:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	push_item
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	add_alt, .-add_alt
	.section	.rodata
.LC15:
	.string	"missing closing paren"
	.text
	.type	add_icon, @function
add_icon:
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$40, %al
	jne	.L21
	movq	-32(%rbp), %rax
	movl	$41, %esi
	movq	%rax, %rdi
	call	strchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L22
	movl	$.LC15, %eax
	jmp	.L26
.L22:
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	leaq	-32(%rbp), %rcx
	movl	$44, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_getword_nc
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdi
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	add_alt
.L21:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_path, %rax
	jne	.L24
	movq	-64(%rbp), %rax
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	movq	$.LC14, -64(%rbp)
.L24:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_encoding, %rax
	jne	.L25
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	ap_str_tolower
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
.L25:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	push_item
	movl	$0, %eax
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	add_icon, .-add_icon
	.section	.rodata
.LC16:
	.string	"*/"
	.text
	.type	add_desc, @function
add_desc:
.LFB6:
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
	movq	%rax, -8(%rbp)
	movq	$.LC11, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strchr
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	jne	.L28
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_fnmatch_test
	testl	%eax, %eax
	je	.L29
.L28:
	movl	$1, %edx
	jmp	.L30
.L29:
	movl	$0, %edx
.L30:
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L31
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L32
	movl	$.LC16, %eax
	jmp	.L33
.L32:
	movl	$.LC12, %eax
.L33:
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	$0, %r8d
	movl	$.LC12, %ecx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L34
.L31:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
.L34:
	movq	-8(%rbp), %rax
	movq	80(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	add_desc, .-add_desc
	.type	add_ignore, @function
add_ignore:
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
	movq	-8(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	$0, %r8d
	movl	$0, %esi
	movq	%rax, %rdi
	call	push_item
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	add_ignore, .-add_ignore
	.type	add_header, @function
add_header:
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
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	push_item
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add_header, .-add_header
	.type	add_readme, @function
add_readme:
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
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	push_item
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	add_readme, .-add_readme
	.section	.rodata
.LC17:
	.string	"FancyIndexing"
.LC18:
	.string	"FoldersFirst"
.LC19:
	.string	"HTMLTable"
.LC20:
	.string	"IconsAreLinks"
.LC21:
	.string	"IgnoreCase"
.LC22:
	.string	"IgnoreClient"
.LC23:
	.string	"ScanHTMLTitles"
.LC24:
	.string	"SuppressColumnSorting"
.LC25:
	.string	"SuppressDescription"
.LC26:
	.string	"SuppressHTMLPreamble"
.LC27:
	.string	"SuppressIcon"
.LC28:
	.string	"SuppressLastModified"
.LC29:
	.string	"SuppressSize"
.LC30:
	.string	"SuppressRules"
.LC31:
	.string	"TrackModified"
.LC32:
	.string	"VersionSort"
.LC33:
	.string	"XHTML"
.LC34:
	.string	"ShowForbidden"
.LC35:
	.string	"None"
	.align 8
.LC36:
	.string	"Cannot combine '+' or '-' with 'None' keyword"
.LC37:
	.string	"IconWidth"
.LC38:
	.string	"IconWidth="
	.align 8
.LC39:
	.string	"Cannot combine '-' with IconWidth=n"
.LC40:
	.string	"IconHeight"
.LC41:
	.string	"IconHeight="
	.align 8
.LC42:
	.string	"Cannot combine '-' with IconHeight=n"
.LC43:
	.string	"NameWidth"
	.align 8
.LC44:
	.string	"NameWidth with no value may only appear as '-NameWidth'"
.LC45:
	.string	"NameWidth="
	.align 8
.LC46:
	.string	"Cannot combine '-' with NameWidth=n"
	.align 8
.LC47:
	.string	"NameWidth value must be greater than 5"
.LC48:
	.string	"DescriptionWidth"
	.align 8
.LC49:
	.string	"DescriptionWidth with no value may only appear as '-DescriptionWidth'"
.LC50:
	.string	"DescriptionWidth="
	.align 8
.LC51:
	.string	"Cannot combine '-' with DescriptionWidth=n"
	.align 8
.LC52:
	.string	"DescriptionWidth value must be greater than 12"
.LC53:
	.string	"Type="
.LC54:
	.string	"Charset="
	.align 8
.LC55:
	.string	"Invalid directory indexing option"
	.align 8
.LC56:
	.string	"Cannot combine other IndexOptions keywords with 'None'"
	.text
	.type	add_opts, @function
add_opts:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L43
.L98:
	movl	$0, -36(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$43, %al
	je	.L44
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L45
.L44:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rax), %eax
	movb	%al, -29(%rbp)
	jmp	.L46
.L45:
	movb	$0, -29(%rbp)
.L46:
	movq	-16(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L47
	movl	$8192, -36(%rbp)
	jmp	.L48
.L47:
	movq	-16(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L49
	movl	$1024, -36(%rbp)
	jmp	.L48
.L49:
	movq	-16(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L50
	movl	$16384, -36(%rbp)
	jmp	.L48
.L50:
	movq	-16(%rbp), %rax
	movl	$.LC20, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L51
	movl	$2, -36(%rbp)
	jmp	.L48
.L51:
	movq	-16(%rbp), %rax
	movl	$.LC21, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L52
	movl	$65536, -36(%rbp)
	jmp	.L48
.L52:
	movq	-16(%rbp), %rax
	movl	$.LC22, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L53
	movl	$32768, -36(%rbp)
	jmp	.L48
.L53:
	movq	-16(%rbp), %rax
	movl	$.LC23, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L54
	movl	$4, -36(%rbp)
	jmp	.L48
.L54:
	movq	-16(%rbp), %rax
	movl	$.LC24, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L55
	movl	$256, -36(%rbp)
	jmp	.L48
.L55:
	movq	-16(%rbp), %rax
	movl	$.LC25, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L56
	movl	$64, -36(%rbp)
	jmp	.L48
.L56:
	movq	-16(%rbp), %rax
	movl	$.LC26, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L57
	movl	$128, -36(%rbp)
	jmp	.L48
.L57:
	movq	-16(%rbp), %rax
	movl	$.LC27, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L58
	movl	$8, -36(%rbp)
	jmp	.L48
.L58:
	movq	-16(%rbp), %rax
	movl	$.LC28, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L59
	movl	$16, -36(%rbp)
	jmp	.L48
.L59:
	movq	-16(%rbp), %rax
	movl	$.LC29, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L60
	movl	$32, -36(%rbp)
	jmp	.L48
.L60:
	movq	-16(%rbp), %rax
	movl	$.LC30, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L61
	movl	$512, -36(%rbp)
	jmp	.L48
.L61:
	movq	-16(%rbp), %rax
	movl	$.LC31, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L62
	movl	$4096, -36(%rbp)
	jmp	.L48
.L62:
	movq	-16(%rbp), %rax
	movl	$.LC32, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L63
	movl	$2048, -36(%rbp)
	jmp	.L48
.L63:
	movq	-16(%rbp), %rax
	movl	$.LC33, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L64
	movl	$131072, -36(%rbp)
	jmp	.L48
.L64:
	movq	-16(%rbp), %rax
	movl	$.LC34, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L65
	movl	$262144, -36(%rbp)
	jmp	.L48
.L65:
	movq	-16(%rbp), %rax
	movl	$.LC35, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L66
	cmpb	$0, -29(%rbp)
	je	.L67
	movl	$.LC36, %eax
	jmp	.L68
.L67:
	movl	$1, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L48
.L66:
	movq	-16(%rbp), %rax
	movl	$.LC37, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L69
	cmpb	$45, -29(%rbp)
	je	.L70
	movq	-48(%rbp), %rax
	movl	$20, 52(%rax)
	jmp	.L48
.L70:
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.L48
.L69:
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L72
	cmpb	$45, -29(%rbp)
	jne	.L73
	movl	$.LC39, %eax
	jmp	.L68
.L73:
	movq	-16(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 52(%rax)
	jmp	.L48
.L72:
	movq	-16(%rbp), %rax
	movl	$.LC40, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L74
	cmpb	$45, -29(%rbp)
	je	.L75
	movq	-48(%rbp), %rax
	movl	$22, 56(%rax)
	jmp	.L48
.L75:
	movq	-48(%rbp), %rax
	movl	$0, 56(%rax)
	jmp	.L48
.L74:
	movq	-16(%rbp), %rax
	movl	$11, %edx
	movl	$.LC41, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L77
	cmpb	$45, -29(%rbp)
	jne	.L78
	movl	$.LC42, %eax
	jmp	.L68
.L78:
	movq	-16(%rbp), %rax
	addq	$11, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, 56(%rax)
	jmp	.L48
.L77:
	movq	-16(%rbp), %rax
	movl	$.LC43, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L79
	cmpb	$45, -29(%rbp)
	je	.L80
	movl	$.LC44, %eax
	jmp	.L68
.L80:
	movq	-48(%rbp), %rax
	movl	$23, 36(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 40(%rax)
	jmp	.L48
.L79:
	movq	-16(%rbp), %rax
	movl	$10, %edx
	movl	$.LC45, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L81
	cmpb	$45, -29(%rbp)
	jne	.L82
	movl	$.LC46, %eax
	jmp	.L68
.L82:
	movq	-16(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L83
	movq	-48(%rbp), %rax
	movl	$1, 40(%rax)
	jmp	.L48
.L83:
	movq	-16(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.L85
	cmpl	$4, -52(%rbp)
	jg	.L85
	movl	$.LC47, %eax
	jmp	.L68
.L85:
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, 36(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 40(%rax)
	jmp	.L48
.L81:
	movq	-16(%rbp), %rax
	movl	$.LC48, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L86
	cmpb	$45, -29(%rbp)
	je	.L87
	movl	$.LC49, %eax
	jmp	.L68
.L87:
	movq	-48(%rbp), %rax
	movl	$23, 44(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L48
.L86:
	movq	-16(%rbp), %rax
	movl	$17, %edx
	movl	$.LC50, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L88
	cmpb	$45, -29(%rbp)
	jne	.L89
	movl	$.LC51, %eax
	jmp	.L68
.L89:
	movq	-16(%rbp), %rax
	addq	$17, %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L90
	movq	-48(%rbp), %rax
	movl	$1, 48(%rax)
	jmp	.L48
.L90:
	movq	-16(%rbp), %rax
	addq	$17, %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.L92
	cmpl	$11, -56(%rbp)
	jg	.L92
	movl	$.LC52, %eax
	jmp	.L68
.L92:
	movq	-48(%rbp), %rax
	movl	-56(%rbp), %edx
	movl	%edx, 44(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 48(%rax)
	jmp	.L48
.L88:
	movq	-16(%rbp), %rax
	movl	$5, %edx
	movl	$.LC53, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L93
	movq	-16(%rbp), %rax
	leaq	5(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 112(%rax)
	jmp	.L48
.L93:
	movq	-16(%rbp), %rax
	movl	$8, %edx
	movl	$.LC54, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L94
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 120(%rax)
	jmp	.L48
.L94:
	movl	$.LC55, %eax
	jmp	.L68
.L48:
	cmpb	$0, -29(%rbp)
	jne	.L95
	movl	-36(%rbp), %eax
	orl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L96
.L95:
	cmpb	$43, -29(%rbp)
	jne	.L97
	movl	-36(%rbp), %eax
	orl	%eax, -24(%rbp)
	movl	-36(%rbp), %eax
	notl	%eax
	andl	%eax, -28(%rbp)
	jmp	.L96
.L97:
	movl	-36(%rbp), %eax
	orl	%eax, -28(%rbp)
	movl	-36(%rbp), %eax
	notl	%eax
	andl	%eax, -24(%rbp)
.L96:
	addl	$1, -4(%rbp)
.L43:
	movl	-4(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	.L98
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L99
	movl	-20(%rbp), %eax
	andl	$-2, %eax
	testl	%eax, %eax
	je	.L99
	movl	$.LC56, %eax
	jmp	.L68
.L99:
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-48(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	$0, %eax
.L68:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	add_opts, .-add_opts
	.section	.rodata
.LC57:
	.string	"Ascending"
.LC58:
	.string	"Descending"
	.align 8
.LC59:
	.string	"First keyword must be 'Ascending' or 'Descending'"
.LC60:
	.string	"Name"
.LC61:
	.string	"Date"
.LC62:
	.string	"Size"
.LC63:
	.string	"Description"
	.align 8
.LC64:
	.string	"Second keyword must be 'Name', 'Date', 'Size', or 'Description'"
	.text
	.type	set_default_order, @function
set_default_order:
.LFB11:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movl	$.LC57, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L101
	movq	-8(%rbp), %rax
	movb	$65, 61(%rax)
	jmp	.L102
.L101:
	movq	-40(%rbp), %rax
	movl	$.LC58, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L103
	movq	-8(%rbp), %rax
	movb	$68, 61(%rax)
	jmp	.L102
.L103:
	movl	$.LC59, %eax
	jmp	.L104
.L102:
	movq	-48(%rbp), %rax
	movl	$.LC60, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L105
	movq	-8(%rbp), %rax
	movb	$78, 60(%rax)
	jmp	.L106
.L105:
	movq	-48(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L107
	movq	-8(%rbp), %rax
	movb	$77, 60(%rax)
	jmp	.L106
.L107:
	movq	-48(%rbp), %rax
	movl	$.LC62, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L108
	movq	-8(%rbp), %rax
	movb	$83, 60(%rax)
	jmp	.L106
.L108:
	movq	-48(%rbp), %rax
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L109
	movq	-8(%rbp), %rax
	movb	$68, 60(%rax)
	jmp	.L106
.L109:
	movl	$.LC64, %eax
	jmp	.L104
.L106:
	movl	$0, %eax
.L104:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_default_order, .-set_default_order
	.section	.rodata
.LC65:
	.string	"AddIcon"
	.align 8
.LC66:
	.string	"an icon URL followed by one or more filenames"
.LC67:
	.string	"AddIconByType"
	.align 8
.LC68:
	.string	"an icon URL followed by one or more MIME types"
.LC69:
	.string	"AddIconByEncoding"
	.align 8
.LC70:
	.string	"an icon URL followed by one or more content encodings"
.LC71:
	.string	"AddAlt"
	.align 8
.LC72:
	.string	"alternate descriptive text followed by one or more filenames"
.LC73:
	.string	"AddAltByType"
	.align 8
.LC74:
	.string	"alternate descriptive text followed by one or more MIME types"
.LC75:
	.string	"AddAltByEncoding"
	.align 8
.LC76:
	.string	"alternate descriptive text followed by one or more content encodings"
.LC77:
	.string	"IndexOptions"
	.align 8
.LC78:
	.string	"one or more index options [+|-][]"
.LC79:
	.string	"IndexOrderDefault"
	.align 8
.LC80:
	.string	"{Ascending,Descending} {Name,Size,Description,Date}"
.LC81:
	.string	"IndexIgnore"
.LC82:
	.string	"one or more file extensions"
.LC83:
	.string	"AddDescription"
	.align 8
.LC84:
	.string	"Descriptive text followed by one or more filenames"
.LC85:
	.string	"HeaderName"
.LC86:
	.string	"a filename"
.LC87:
	.string	"ReadmeName"
	.align 8
.LC88:
	.string	"The FancyIndexing directive is no longer supported. Use IndexOptions FancyIndexing."
.LC89:
	.string	"DefaultIcon"
.LC90:
	.string	"an icon URL"
.LC91:
	.string	"IndexStyleSheet"
.LC92:
	.string	"URL to style sheet"
.LC93:
	.string	"IndexHeadInsert"
	.align 8
.LC94:
	.string	"String to insert in HTML HEAD section"
	.align 64
	.type	autoindex_cmds, @object
	.size	autoindex_cmds, 680
autoindex_cmds:
	.quad	.LC65
	.quad	add_icon
	.quad	c_by_path
	.long	16
	.long	4
	.quad	.LC66
	.quad	.LC67
	.quad	add_icon
	.quad	c_by_type
	.long	16
	.long	4
	.quad	.LC68
	.quad	.LC69
	.quad	add_icon
	.quad	c_by_encoding
	.long	16
	.long	4
	.quad	.LC70
	.quad	.LC71
	.quad	add_alt
	.quad	c_by_path
	.long	16
	.long	4
	.quad	.LC72
	.quad	.LC73
	.quad	add_alt
	.quad	c_by_type
	.long	16
	.long	4
	.quad	.LC74
	.quad	.LC75
	.quad	add_alt
	.quad	c_by_encoding
	.long	16
	.long	4
	.quad	.LC76
	.quad	.LC77
	.quad	add_opts
	.quad	0
	.long	16
	.long	12
	.quad	.LC78
	.quad	.LC79
	.quad	set_default_order
	.quad	0
	.long	16
	.long	2
	.quad	.LC80
	.quad	.LC81
	.quad	add_ignore
	.quad	0
	.long	16
	.long	3
	.quad	.LC82
	.quad	.LC83
	.quad	add_desc
	.quad	c_by_path
	.long	16
	.long	4
	.quad	.LC84
	.quad	.LC85
	.quad	add_header
	.quad	0
	.long	16
	.long	1
	.quad	.LC86
	.quad	.LC87
	.quad	add_readme
	.quad	0
	.long	16
	.long	1
	.quad	.LC86
	.quad	.LC17
	.quad	ap_set_deprecated
	.quad	0
	.long	31
	.long	0
	.quad	.LC88
	.quad	.LC89
	.quad	ap_set_string_slot
	.quad	0
	.long	16
	.long	1
	.quad	.LC90
	.quad	.LC91
	.quad	ap_set_string_slot
	.quad	8
	.long	16
	.long	1
	.quad	.LC92
	.quad	.LC93
	.quad	ap_set_string_slot
	.quad	16
	.long	16
	.long	1
	.quad	.LC94
	.quad	0
	.zero	32
	.text
	.type	create_autoindex_config, @function
create_autoindex_config:
.LFB12:
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
	movl	$128, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$23, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 40(%rax)
	movq	-8(%rbp), %rax
	movl	$23, 44(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 48(%rax)
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-24(%rbp), %rax
	movl	$24, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-24(%rbp), %rax
	movl	$32, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 60(%rax)
	movq	-8(%rbp), %rax
	movb	$0, 61(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	create_autoindex_config, .-create_autoindex_config
	.type	merge_autoindex_configs, @function
merge_autoindex_configs:
.LFB13:
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
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movl	$128, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$128, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L113
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L114
.L113:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
.L114:
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L115
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
.L116:
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.L118
.L117:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
.L118:
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L119
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	jmp	.L120
.L119:
	movq	-8(%rbp), %rax
	movl	56(%rax), %eax
.L120:
	movq	-24(%rbp), %rdx
	movl	%eax, 56(%rdx)
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L121
	movq	-16(%rbp), %rax
	movl	52(%rax), %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movl	52(%rax), %eax
.L122:
	movq	-24(%rbp), %rdx
	movl	%eax, 52(%rdx)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L123
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	jmp	.L124
.L123:
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
.L124:
	movq	-24(%rbp), %rdx
	movq	%rax, 112(%rdx)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	jmp	.L126
.L125:
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
.L126:
	movq	-24(%rbp), %rdx
	movq	%rax, 120(%rdx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 88(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	80(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 80(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_array_append
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 104(%rax)
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L127
	movq	-24(%rbp), %rax
	movl	$1, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 32(%rax)
	jmp	.L128
.L127:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	testl	%eax, %eax
	jne	.L129
	movq	-8(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %eax
	orl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$-2, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	jmp	.L130
.L129:
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
.L130:
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	28(%rax), %eax
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-24(%rbp), %rax
	movl	32(%rax), %eax
	notl	%eax
	andl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
.L128:
	movq	-16(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$2, %eax
	jne	.L131
	movq	-8(%rbp), %rax
	movl	36(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L132
.L131:
	movq	-16(%rbp), %rax
	movl	36(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
.L132:
	movq	-16(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L133
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
	jmp	.L134
.L133:
	movq	-16(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 48(%rax)
.L134:
	movq	-16(%rbp), %rax
	movzbl	60(%rax), %eax
	testb	%al, %al
	je	.L135
	movq	-16(%rbp), %rax
	movzbl	60(%rax), %eax
	jmp	.L136
.L135:
	movq	-8(%rbp), %rax
	movzbl	60(%rax), %eax
.L136:
	movq	-24(%rbp), %rdx
	movb	%al, 60(%rdx)
	movq	-16(%rbp), %rax
	movzbl	61(%rax), %eax
	testb	%al, %al
	je	.L137
	movq	-16(%rbp), %rax
	movzbl	61(%rax), %eax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
	movzbl	61(%rax), %eax
.L138:
	movq	-24(%rbp), %rdx
	movb	%al, 61(%rdx)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	merge_autoindex_configs, .-merge_autoindex_configs
	.type	find_item, @function
find_item:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	296(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L141
.L150:
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	je	.L142
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcmp_match
	testl	%eax, %eax
	jne	.L143
.L142:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L144
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L145
.L144:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_path, %rax
	je	.L146
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$94, %al
	jne	.L147
.L146:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcmp_match
	testl	%eax, %eax
	jne	.L148
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L145
.L148:
	jmp	.L143
.L147:
	cmpl	$0, -68(%rbp)
	jne	.L143
	cmpq	$0, -24(%rbp)
	jne	.L149
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_type, %rax
	jne	.L143
	cmpq	$0, -16(%rbp)
	je	.L143
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcasecmp_match
	testl	%eax, %eax
	jne	.L143
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L145
.L149:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$c_by_encoding, %rax
	jne	.L143
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcasecmp_match
	testl	%eax, %eax
	jne	.L143
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L145
.L143:
	addl	$1, -4(%rbp)
.L141:
	movq	-64(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L150
	movl	$0, %eax
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	find_item, .-find_item
	.type	find_default_item, @function
find_default_item:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$688, %rsp
	movq	%rdi, -680(%rbp)
	movq	%rsi, -688(%rbp)
	movq	-680(%rbp), %rax
	movq	%rax, -312(%rbp)
	movq	$0, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-688(%rbp), %rcx
	leaq	-672(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	find_default_item, .-find_default_item
	.type	find_desc, @function
find_desc:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L154
	movq	-64(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L155
.L154:
	addq	$1, -16(%rbp)
.L155:
	movl	$0, -4(%rbp)
	jmp	.L156
.L163:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.L157
	movq	-64(%rbp), %rax
	jmp	.L158
.L157:
	movq	-16(%rbp), %rax
.L158:
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	20(%rax), %eax
	testl	%eax, %eax
	je	.L159
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	jmp	.L160
.L159:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
.L160:
	cmpl	$0, -20(%rbp)
	je	.L161
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L162
.L161:
	addl	$1, -4(%rbp)
.L156:
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L163
	movl	$0, %eax
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	find_desc, .-find_desc
	.type	ignore_entry, @function
ignore_entry:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L165
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L166
.L165:
	addq	$1, -8(%rbp)
.L166:
	movl	$0, -12(%rbp)
	jmp	.L167
.L172:
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	$47, %esi
	movq	%rax, %rdi
	call	strrchr
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L168
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L169
.L168:
	addq	$1, -24(%rbp)
.L169:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcmp_match
	testl	%eax, %eax
	jne	.L170
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_strcmp_match
	testl	%eax, %eax
	jne	.L170
	movl	$1, %eax
	jmp	.L171
.L170:
	addl	$1, -12(%rbp)
.L167:
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L172
	movl	$0, %eax
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	ignore_entry, .-ignore_entry
	.section	.rodata
.LC95:
	.string	"<pre>\n"
.LC96:
	.string	"&lt;"
.LC97:
	.string	"&gt;"
.LC98:
	.string	"&amp;"
.LC99:
	.string	"</pre>\n"
	.text
	.type	do_emit_plain, @function
do_emit_plain:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movq	%rdi, -8248(%rbp)
	movq	%rsi, -8256(%rbp)
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC95, %edi
	call	ap_rputs
	jmp	.L174
.L175:
	movq	$8192, -8232(%rbp)
	leaq	-8232(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movq	-8256(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	movl	%eax, -20(%rbp)
	cmpl	$4, -20(%rbp)
	je	.L175
	movq	-8232(%rbp), %rax
	testq	%rax, %rax
	je	.L176
	cmpl	$0, -20(%rbp)
	jne	.L176
	movq	-8232(%rbp), %rax
	movb	$0, -8224(%rbp,%rax)
	movq	$0, -16(%rbp)
	jmp	.L177
.L184:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L178
.L180:
	leaq	-8224(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	je	.L179
	leaq	-8224(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	je	.L179
	leaq	-8224(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L179
	addq	$1, -8(%rbp)
.L178:
	movq	-8232(%rbp), %rax
	cmpq	%rax, -8(%rbp)
	jb	.L180
.L179:
	leaq	-8224(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, -24(%rbp)
	leaq	-8224(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-8224(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
	cmpl	$60, -24(%rbp)
	jne	.L181
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC96, %edi
	call	ap_rputs
	jmp	.L182
.L181:
	cmpl	$62, -24(%rbp)
	jne	.L183
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC97, %edi
	call	ap_rputs
	jmp	.L182
.L183:
	cmpl	$38, -24(%rbp)
	jne	.L182
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC98, %edi
	call	ap_rputs
.L182:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.L177:
	movq	-8232(%rbp), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L184
.L174:
	movq	-8256(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_eof
	testl	%eax, %eax
	je	.L175
.L176:
	movq	-8248(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC99, %edi
	call	ap_rputs
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	do_emit_plain, .-do_emit_plain
	.section	.rodata
.LC100:
	.string	"Accept"
.LC101:
	.string	"Accept-Encoding"
.LC102:
	.string	"text/html, text/plain"
.LC103:
	.string	"?"
.LC104:
	.string	"text/html"
.LC105:
	.string	"text/"
.LC106:
	.string	"</h1>\n"
.LC107:
	.string	"<h1>Index of "
	.text
	.type	emit_head, @function
emit_head:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movl	%ecx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$1, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$.LC101, %esi
	movq	%rax, %rdi
	call	apr_table_get
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	$.LC102, %edx
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	movq	-32(%rbp), %rax
	movl	$.LC101, %esi
	movq	%rax, %rdi
	call	apr_table_unset
	cmpq	$0, -80(%rbp)
	je	.L186
	movq	-72(%rbp), %rax
	movq	384(%rax), %rax
	testq	%rax, %rax
	je	.L186
	movq	-72(%rbp), %rax
	movq	384(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC103, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -80(%rbp)
.L186:
	cmpq	$0, -80(%rbp)
	je	.L187
	movq	-72(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L187
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L187
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L187
	movq	-8(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	jne	.L187
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L187
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movl	$.LC104, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L188
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.L189
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	emit_preamble
.L189:
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L190
.L191:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L190:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L191
	movq	-72(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_sub_req
	testl	%eax, %eax
	je	.L192
	movl	-84(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L187
.L192:
	jmp	.L187
.L188:
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$.LC105, %edi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L187
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-56(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	jne	.L187
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	emit_preamble
	movl	$0, -12(%rbp)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_emit_plain
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, -16(%rbp)
.L187:
	cmpq	$0, -40(%rbp)
	je	.L193
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	apr_table_setn
	jmp	.L194
.L193:
	movq	-32(%rbp), %rax
	movl	$.LC100, %esi
	movq	%rax, %rdi
	call	apr_table_unset
.L194:
	cmpq	$0, -48(%rbp)
	je	.L195
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	$.LC101, %esi
	movq	%rax, %rdi
	call	apr_table_setn
.L195:
	cmpl	$0, -12(%rbp)
	je	.L196
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	emit_preamble
.L196:
	cmpl	$0, -16(%rbp)
	je	.L197
	movq	-96(%rbp), %rdx
	movq	-72(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC106, %ecx
	movl	$.LC107, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L197:
	cmpq	$0, -8(%rbp)
	je	.L185
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L185:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	emit_head, .-emit_head
	.section	.rodata
.LC108:
	.string	"</body></html>\n"
	.text
	.type	emit_tail, @function
emit_tail:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L200
	movq	-40(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_sub_req_lookup_uri
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L200
	movq	-8(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	jne	.L200
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-8(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	jne	.L200
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L200
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movl	$.LC104, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L201
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L202
.L203:
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L202:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	ap_subreq_core_filter_handle(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L203
	movq	-40(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_sub_req
	testl	%eax, %eax
	jne	.L204
	movl	$1, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L200
.L204:
	jmp	.L200
.L201:
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movl	$.LC105, %edi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L200
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	jne	.L200
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	do_emit_plain
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$1, -16(%rbp)
.L200:
	cmpl	$0, -16(%rbp)
	jne	.L205
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	call	ap_psignature
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
.L205:
	cmpl	$0, -12(%rbp)
	jne	.L206
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC108, %edi
	call	ap_rputs
.L206:
	cmpq	$0, -8(%rbp)
	je	.L199
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	emit_tail, .-emit_tail
	.section	.rodata
.LC109:
	.string	"<title>"
.LC110:
	.string	"text/x-server-parsed-html"
	.text
	.type	find_title, @function
find_title:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8256, %rsp
	movq	%rdi, -8248(%rbp)
	movq	$.LC109, -24(%rbp)
	movq	$0, -8232(%rbp)
	movq	-8248(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$200, %eax
	je	.L209
	movl	$0, %eax
	jmp	.L225
.L209:
	movq	-8248(%rbp), %rax
	movq	280(%rax), %rax
	testq	%rax, %rax
	je	.L211
	movq	-8248(%rbp), %rax
	movq	280(%rax), %rdx
	movq	-8248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_field_noparam
	movl	$.LC104, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	je	.L212
	movq	-8248(%rbp), %rax
	movq	280(%rax), %rax
	movl	$.LC110, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L211
.L212:
	movq	-8248(%rbp), %rax
	movq	296(%rax), %rax
	testq	%rax, %rax
	jne	.L211
	movq	-8248(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8248(%rbp), %rax
	movq	360(%rax), %rsi
	leaq	-8232(%rbp), %rax
	movq	%rdx, %r8
	movl	$4095, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	apr_file_open
	testl	%eax, %eax
	je	.L213
	movl	$0, %eax
	jmp	.L225
.L213:
	movq	$8191, -8240(%rbp)
	movq	-8232(%rbp), %rax
	leaq	-8240(%rbp), %rdx
	leaq	-8224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_file_read
	movq	-8240(%rbp), %rax
	testq	%rax, %rax
	jne	.L214
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	movl	$0, %eax
	jmp	.L225
.L214:
	movq	-8240(%rbp), %rax
	movb	$0, -8224(%rbp,%rax)
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L215
.L224:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-8224(%rbp,%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	tolower
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	%eax, %ecx
	jne	.L216
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L217
	addl	$1, -4(%rbp)
	leaq	-8224(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	$60, %esi
	movq	%rax, %rdi
	call	ap_ind
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	je	.L218
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%edx, %eax
	cltq
	movb	$0, -8224(%rbp,%rax)
.L218:
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L219
.L223:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-8224(%rbp,%rax), %eax
	cmpb	$13, %al
	je	.L220
	movl	-8(%rbp), %eax
	cltq
	movzbl	-8224(%rbp,%rax), %eax
	cmpb	$10, %al
	jne	.L221
.L220:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jne	.L222
	addl	$1, -4(%rbp)
	jmp	.L221
.L222:
	movl	-8(%rbp), %eax
	cltq
	movb	$32, -8224(%rbp,%rax)
.L221:
	addl	$1, -8(%rbp)
.L219:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-8224(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L223
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
	leaq	-8224(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-8248(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	jmp	.L225
.L216:
	movl	$0, -12(%rbp)
.L217:
	addl	$1, -4(%rbp)
.L215:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-8224(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L224
	movq	-8232(%rbp), %rax
	movq	%rax, %rdi
	call	apr_file_close
.L211:
	movl	$0, %eax
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	find_title, .-find_title
	.section	.rodata
.LC111:
	.string	"../"
.LC112:
	.string	".."
.LC113:
	.string	"DIR"
	.text
	.type	make_parent_entry, @function
make_parent_entry:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %edx
	movb	%al, -24(%rbp)
	movb	%dl, -44(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	352(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC111, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L227
	movl	$0, %eax
	jmp	.L228
.L227:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	ap_getparents
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L229
	movl	$0, %eax
	jmp	.L228
.L229:
	movq	-40(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	$.LC112, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ignore_entry
	testl	%eax, %eax
	je	.L230
	movl	$0, %eax
	jmp	.L228
.L230:
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 40(%rax)
	movzbl	-24(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movb	%dl, 68(%rax)
	movzbl	-44(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	cmpl	$65, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 56(%rax)
	movl	-20(%rbp), %eax
	andl	$2048, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movl	-20(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L231
	movq	-32(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_default_item
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L232
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	call	find_default_item
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L232:
	movq	-32(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_default_item
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L233
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	call	find_default_item
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L233
	movq	-8(%rbp), %rax
	movq	$.LC113, 16(%rax)
.L233:
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_desc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
.L231:
	movq	-8(%rbp), %rax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	make_parent_entry, .-make_parent_entry
	.section	.rodata
.LC114:
	.string	"/"
	.text
	.type	make_autoindex_entry, @function
make_autoindex_entry:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, %edx
	movl	%r9d, %eax
	movb	%dl, -64(%rbp)
	movb	%al, -84(%rbp)
	movl	$0, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L235
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L236
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L235
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L235
.L236:
	movl	$0, %eax
	jmp	.L237
.L235:
	cmpq	$0, 16(%rbp)
	je	.L238
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movl	$5, %edx
	movq	%rax, %rsi
	movq	16(%rbp), %rdi
	call	apr_fnmatch
	testl	%eax, %eax
	je	.L238
	movl	$0, %eax
	jmp	.L237
.L238:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	360(%rax), %rcx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_make_full_path
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ignore_entry
	testl	%eax, %eax
	je	.L239
	movl	$0, %eax
	jmp	.L237
.L239:
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_sub_req_lookup_dirent
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L240
	movl	$0, %eax
	jmp	.L237
.L240:
	movl	-60(%rbp), %eax
	andl	$262144, %eax
	testl	%eax, %eax
	je	.L241
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$401, %eax
	je	.L242
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$403, %eax
	jne	.L241
.L242:
	movl	$1, -20(%rbp)
.L241:
	movq	-32(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$2, %eax
	je	.L243
	movq	-32(%rbp), %rax
	movl	408(%rax), %eax
	cmpl	$1, %eax
	jne	.L244
.L243:
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	testl	%eax, %eax
	je	.L245
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$199, %eax
	jle	.L246
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jle	.L245
.L246:
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$299, %eax
	jle	.L247
	movq	-32(%rbp), %rax
	movl	112(%rax), %eax
	cmpl	$399, %eax
	jle	.L245
.L247:
	cmpl	$1, -20(%rbp)
	je	.L245
.L244:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	movl	$0, %eax
	jmp	.L237
.L245:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$80, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L248
	movq	-56(%rbp), %rax
	movq	104(%rax), %rsi
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC114, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L249
.L248:
	movq	-56(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L249:
	movq	-40(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-40(%rbp), %rax
	movq	$-1, 40(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 72(%rax)
	movzbl	-64(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movb	%dl, 68(%rax)
	movzbl	-84(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	toupper
	cmpl	$65, %eax
	sete	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 56(%rax)
	movl	-60(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 64(%rax)
	movl	-60(%rbp), %eax
	andl	$65536, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 60(%rax)
	movl	-60(%rbp), %eax
	andl	$24576, %eax
	testl	%eax, %eax
	je	.L250
	movq	-32(%rbp), %rax
	movq	472(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-56(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	jne	.L251
	movl	-60(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L252
	movq	-40(%rbp), %rax
	movl	$1, 72(%rax)
.L252:
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_make_dirstr_parent
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 360(%rax)
	movq	-32(%rbp), %rax
	movq	360(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L253
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	call	find_default_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
.L253:
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L255
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	call	find_default_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L255
	movq	-40(%rbp), %rax
	movq	$.LC113, 16(%rax)
	jmp	.L255
.L251:
	movq	-72(%rbp), %rax
	movq	64(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-32(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-32(%rbp), %rax
	movq	448(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 32(%rax)
.L255:
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	find_desc
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	jne	.L250
	movl	-60(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L250
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	find_title
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 24(%rax)
.L250:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_destroy_sub_req
	cmpb	$77, -64(%rbp)
	jne	.L256
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jns	.L256
	movq	-40(%rbp), %rax
	movq	$0, 40(%rax)
.L256:
	movq	-40(%rbp), %rax
.L237:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	make_autoindex_entry, .-make_autoindex_entry
	.type	terminate_description, @function
terminate_description:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$2, %eax
	jne	.L258
	movl	-44(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L259
	addl	$6, -12(%rbp)
.L259:
	movl	-44(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L260
	addl	$19, -12(%rbp)
.L260:
	movl	-44(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L258
	addl	$7, -12(%rbp)
.L258:
	movl	$0, %ebx
	jmp	.L261
.L274:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	jne	.L262
	jmp	.L263
.L266:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L264
	movl	$0, -12(%rbp)
	nop
	jmp	.L267
.L264:
	addl	$1, %ebx
.L263:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$62, %al
	jne	.L266
	jmp	.L267
.L262:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	jne	.L268
	subl	$1, -12(%rbp)
	jmp	.L269
.L272:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L270
	movl	$0, -12(%rbp)
	nop
	jmp	.L267
.L270:
	addl	$1, %ebx
.L269:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L272
	jmp	.L267
.L268:
	subl	$1, -12(%rbp)
.L267:
	addl	$1, %ebx
.L261:
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L273
	cmpl	$0, -12(%rbp)
	jg	.L274
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$60, %al
	je	.L274
.L273:
	cmpl	$0, -12(%rbp)
	jne	.L275
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L275
	movslq	%ebx, %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$62, (%rax)
	movslq	%ebx, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L275:
	movq	-40(%rbp), %rax
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	terminate_description, .-terminate_description
	.section	.rodata
.LC115:
	.string	"\">"
.LC116:
	.string	"<a href=\""
.LC117:
	.string	"</a>"
	.text
	.type	emit_link, @function
emit_link:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%ecx, %eax
	movl	%r8d, %ecx
	movq	%r9, -56(%rbp)
	movb	%dl, -36(%rbp)
	movb	%al, -40(%rbp)
	movb	%cl, -44(%rbp)
	cmpl	$0, 16(%rbp)
	jne	.L278
	movb	$63, -16(%rbp)
	movb	$67, -15(%rbp)
	movb	$61, -14(%rbp)
	movzbl	-36(%rbp), %eax
	movb	%al, -13(%rbp)
	movb	$59, -12(%rbp)
	movb	$79, -11(%rbp)
	movb	$61, -10(%rbp)
	movzbl	-40(%rbp), %eax
	cmpb	-36(%rbp), %al
	jne	.L279
	cmpb	$65, -44(%rbp)
	jne	.L279
	movl	$68, %eax
	jmp	.L280
.L279:
	movl	$65, %eax
.L280:
	movb	%al, -9(%rbp)
	movb	$0, -8(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L281
	movq	-56(%rbp), %rax
	jmp	.L282
.L281:
	movl	$.LC11, %eax
.L282:
	movq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	pushq	$0
	pushq	$.LC117
	movq	%rcx, %r9
	movl	$.LC115, %r8d
	movq	%rax, %rcx
	movl	$.LC116, %esi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	jmp	.L277
.L278:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_rputs
.L277:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	emit_link, .-emit_link
	.section	.rodata
.LC118:
	.string	"<table><tr>"
.LC119:
	.string	"<th>"
.LC120:
	.string	"^^BLANKICON^^"
.LC121:
	.string	"\" alt=\"[ICO]\""
.LC122:
	.string	"<img src=\""
.LC123:
	.string	" width=\"%d\""
.LC124:
	.string	" height=\"%d\""
.LC125:
	.string	" /"
.LC126:
	.string	"></th>"
.LC127:
	.string	"&nbsp;</th>"
.LC128:
	.string	"</th><th>"
.LC129:
	.string	"Last modified"
	.align 8
.LC130:
	.string	"<tr><th colspan=\"%d\"><hr%s></th></tr>\n"
.LC131:
	.string	"</th></tr>"
.LC132:
	.string	"<pre>"
.LC133:
	.string	"\" alt=\"Icon \""
.LC134:
	.string	"> "
.LC135:
	.string	"      "
.LC136:
	.string	" "
.LC137:
	.string	"  "
.LC138:
	.string	"<hr"
.LC139:
	.string	">"
.LC140:
	.string	"<ul>"
.LC141:
	.string	"Parent Directory"
.LC142:
	.string	"<tr>"
.LC143:
	.string	"<td valign=\"top\">"
.LC144:
	.string	"   "
.LC145:
	.string	"]\""
.LC146:
	.string	"\" alt=\"["
.LC147:
	.string	"&nbsp;"
.LC148:
	.string	"</a></td>"
.LC149:
	.string	"</td>"
.LC150:
	.string	"<td><a href=\""
	.align 8
.LC151:
	.string	"</td><td align=\"right\">%d-%b-%Y %H:%M  "
.LC152:
	.string	"</td><td>&nbsp;"
.LC153:
	.string	"</td><td align=\"right\">"
.LC154:
	.string	"</td><td>"
.LC155:
	.string	"</td></tr>\n"
.LC156:
	.string	"     "
.LC157:
	.string	"</a> "
.LC158:
	.string	"%d-%b-%Y %H:%M  "
.LC159:
	.string	"                   "
.LC160:
	.string	"</a></li>\n"
.LC161:
	.string	"\"> "
.LC162:
	.string	"<li><a href=\""
.LC163:
	.string	"</table>\n"
.LC164:
	.string	"></pre>\n"
.LC165:
	.string	"</ul>\n"
	.text
	.type	output_directories, @function
output_directories:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8456, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -8424(%rbp)
	movl	%esi, -8428(%rbp)
	movq	%rdx, -8440(%rbp)
	movq	%rcx, -8448(%rbp)
	movl	%r8d, -8432(%rbp)
	movl	%r9d, %edx
	movl	16(%rbp), %eax
	movb	%dl, -8452(%rbp)
	movb	%al, -8456(%rbp)
	movq	-8448(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	-8432(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -76(%rbp)
	movq	$.LC11, -40(%rbp)
	movq	-8448(%rbp), %rax
	movq	(%rax), %rsi
	leaq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L285
	movq	$.LC114, -72(%rbp)
.L285:
	movq	-8440(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -24(%rbp)
	movq	-8440(%rbp), %rax
	movl	44(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-8432(%rbp), %eax
	andl	$24576, %eax
	cmpl	$8192, %eax
	jne	.L286
	movq	-8440(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$1, %eax
	jne	.L287
	movl	$0, -20(%rbp)
	jmp	.L288
.L290:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L289
	movl	-80(%rbp), %eax
	movl	%eax, -24(%rbp)
.L289:
	addl	$1, -20(%rbp)
.L288:
	movl	-20(%rbp), %eax
	cmpl	-8428(%rbp), %eax
	jl	.L290
.L287:
	movq	-8440(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L286
	movl	$0, -20(%rbp)
	jmp	.L291
.L293:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L292
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L292
	movl	-84(%rbp), %eax
	movl	%eax, -28(%rbp)
.L292:
	addl	$1, -20(%rbp)
.L291:
	movl	-20(%rbp), %eax
	cmpl	-8428(%rbp), %eax
	jl	.L293
.L286:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -96(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8448(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -104(%rbp)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	movl	$32, %esi
	movq	%rax, %rdi
	call	memset
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-8432(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L294
	movl	$1, -44(%rbp)
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC118, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L295
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC119, %edi
	call	ap_rputs
	movq	-8440(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC120, %edi
	call	find_default_item
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L296
	movq	-144(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC121, %ecx
	movl	$.LC122, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	-8440(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L297
	movq	-8440(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L297:
	movq	-8440(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L298
	movq	-8440(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC124, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L298:
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L299
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L299:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC126, %edi
	call	ap_rputs
	jmp	.L300
.L296:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC127, %edi
	call	ap_rputs
.L300:
	addl	$1, -44(%rbp)
.L295:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC119, %edi
	call	ap_rputs
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$78, %edx
	movl	$.LC60, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	movl	-8432(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L301
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC128, %edi
	call	ap_rputs
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$77, %edx
	movl	$.LC129, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	addl	$1, -44(%rbp)
.L301:
	movl	-8432(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L302
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC128, %edi
	call	ap_rputs
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$83, %edx
	movl	$.LC62, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	addl	$1, -44(%rbp)
.L302:
	movl	-8432(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L303
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC128, %edi
	call	ap_rputs
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$68, %edx
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	addl	$1, -44(%rbp)
.L303:
	movl	-8432(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L304
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L305
	movl	$.LC125, %ecx
	jmp	.L306
.L305:
	movl	$.LC11, %ecx
.L306:
	movq	-8448(%rbp), %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movl	$.LC130, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	movq	%rax, -40(%rbp)
.L304:
	movq	-40(%rbp), %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC131, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	jmp	.L307
.L294:
	movl	-8432(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L308
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC132, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L309
	movq	-8440(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC120, %edi
	call	find_default_item
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L310
	movq	-144(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC133, %ecx
	movl	$.LC122, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	movq	-8440(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L311
	movq	-8440(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L311:
	movq	-8440(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L312
	movq	-8440(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC124, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L312:
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L313
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L313:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC134, %edi
	call	ap_rputs
	jmp	.L309
.L310:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC135, %edi
	call	ap_rputs
.L309:
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$78, %edx
	movl	$.LC60, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	movq	-104(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC136, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L314
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$77, %edx
	movl	$.LC129, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC135, %edi
	call	ap_rputs
.L314:
	movl	-8432(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L315
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$83, %edx
	movl	$.LC62, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC137, %edi
	call	ap_rputs
.L315:
	movl	-8432(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L316
	movsbl	-8456(%rbp), %esi
	movsbl	-8452(%rbp), %edx
	subq	$8, %rsp
	movq	24(%rbp), %rdi
	movq	-8448(%rbp), %rax
	movl	-76(%rbp), %ecx
	pushq	%rcx
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%edx, %ecx
	movl	$68, %edx
	movl	$.LC63, %esi
	movq	%rax, %rdi
	call	emit_link
	addq	$16, %rsp
.L316:
	movl	-8432(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L317
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC138, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L318
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L318:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC139, %edi
	call	ap_rputs
	jmp	.L307
.L317:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	ap_rputc
	jmp	.L307
.L308:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC140, %edi
	call	ap_rputs
.L307:
	movl	$0, -20(%rbp)
	jmp	.L320
.L367:
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-144(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -128(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L321
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L321
	movq	$.LC141, -56(%rbp)
	jmp	.L322
.L321:
	movq	-120(%rbp), %rax
	movq	%rax, -56(%rbp)
.L322:
	movl	-8432(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L323
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC142, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L324
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC143, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L325
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC115, %ecx
	movl	$.LC116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L325:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L326
	movq	-8440(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L327
.L326:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L328
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	jmp	.L329
.L328:
	movl	$.LC144, %ebx
.L329:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L330
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L331
.L330:
	movq	-8440(%rbp), %rax
	movq	(%rax), %rax
.L331:
	movq	-144(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-8448(%rbp), %rax
	pushq	$0
	movl	$.LC145, %r9d
	movq	%rbx, %r8
	movl	$.LC146, %ecx
	movl	$.LC122, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	movq	-8440(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L332
	movq	-8440(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L332:
	movq	-8440(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L333
	movq	-8440(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC124, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L333:
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L334
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L334:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC139, %edi
	call	ap_rputs
	jmp	.L335
.L327:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC147, %edi
	call	ap_rputs
.L335:
	movl	-8432(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L336
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC148, %edi
	call	ap_rputs
	jmp	.L324
.L336:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC149, %edi
	call	ap_rputs
.L324:
	movq	-8440(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$1, %eax
	jne	.L337
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rcx
	subq	$8, %rsp
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	pushq	$0
	movl	$.LC117, %r9d
	movq	%rcx, %r8
	movl	$.LC115, %ecx
	movl	$.LC150, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	jmp	.L338
.L337:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L339
	movl	-24(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-24(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$62, (%rax)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
.L339:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	pushq	$0
	pushq	%rbx
	movl	$.LC117, %r9d
	movq	%rcx, %r8
	movl	$.LC115, %ecx
	movl	$.LC150, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
.L338:
	movl	-8432(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L340
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	je	.L341
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
	leaq	-8416(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-8368(%rbp), %rax
	movq	%rdx, %r8
	movl	$.LC151, %ecx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	apr_strftime
	movq	-8448(%rbp), %rdx
	leaq	-8368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_rputs
	jmp	.L340
.L341:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC152, %edi
	call	ap_rputs
.L340:
	movl	-8432(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L342
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	leaq	-160(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strfsize
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC153, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L342:
	movl	-8432(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L343
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L346
	movq	-8440(%rbp), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jne	.L345
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC154, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	jmp	.L346
.L345:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rsi
	movl	-28(%rbp), %ecx
	movl	-8432(%rbp), %edx
	movq	-8440(%rbp), %rax
	movq	%rax, %rdi
	call	terminate_description
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC154, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	jmp	.L346
.L343:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC152, %edi
	call	ap_rputs
.L346:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC155, %edi
	call	ap_rputs
	jmp	.L347
.L323:
	movl	-8432(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L348
	movl	-8432(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	jne	.L349
	movl	-8432(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L350
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	movl	$0, %r8d
	movl	$.LC115, %ecx
	movl	$.LC116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
.L350:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L351
	movq	-8440(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L352
.L351:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L353
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	16(%rax), %rbx
	jmp	.L354
.L353:
	movl	$.LC144, %ebx
.L354:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L355
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L356
.L355:
	movq	-8440(%rbp), %rax
	movq	(%rax), %rax
.L356:
	movq	-144(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_escape_html
	movq	%rax, %rdx
	subq	$8, %rsp
	movq	-8448(%rbp), %rax
	pushq	$0
	movl	$.LC145, %r9d
	movq	%rbx, %r8
	movl	$.LC146, %ecx
	movl	$.LC122, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	movq	-8440(%rbp), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	je	.L357
	movq	-8440(%rbp), %rax
	movl	52(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC123, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L357:
	movq	-8440(%rbp), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L358
	movq	-8440(%rbp), %rax
	movl	56(%rax), %edx
	movq	-8448(%rbp), %rax
	movl	$.LC124, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rprintf
.L358:
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L359
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L359:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC139, %edi
	call	ap_rputs
	jmp	.L360
.L352:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC156, %edi
	call	ap_rputs
.L360:
	movl	-8432(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L361
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC157, %edi
	call	ap_rputs
	jmp	.L349
.L361:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	ap_rputc
.L349:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.L362
	movl	-24(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
	movl	-24(%rbp), %eax
	cltq
	leaq	-3(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	-2(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$46, (%rax)
	movl	-24(%rbp), %eax
	cltq
	leaq	-1(%rax), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$62, (%rax)
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
.L362:
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rcx
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	pushq	$0
	pushq	%rbx
	movl	$.LC117, %r9d
	movq	%rcx, %r8
	movl	$.LC115, %ecx
	movl	$.LC116, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC136, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	jne	.L363
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	cmpq	$-1, %rax
	je	.L364
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	40(%rax), %rdx
	leaq	-8416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_time_exp_lt
	leaq	-8416(%rbp), %rdx
	leaq	-136(%rbp), %rsi
	leaq	-8368(%rbp), %rax
	movq	%rdx, %r8
	movl	$.LC158, %ecx
	movl	$8192, %edx
	movq	%rax, %rdi
	call	apr_strftime
	movq	-8448(%rbp), %rdx
	leaq	-8368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_rputs
	jmp	.L363
.L364:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC159, %edi
	call	ap_rputs
.L363:
	movl	-8432(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	jne	.L365
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	leaq	-176(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strfsize
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC137, %edi
	call	ap_rputs
.L365:
	movl	-8432(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L366
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L366
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-8424(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	24(%rax), %rsi
	movl	-28(%rbp), %ecx
	movl	-8432(%rbp), %edx
	movq	-8440(%rbp), %rax
	movq	%rax, %rdi
	call	terminate_description
	movq	%rax, %rdx
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	ap_rputs
.L366:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	ap_rputc
	jmp	.L347
.L348:
	movq	-144(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, %rcx
	subq	$8, %rsp
	movq	-128(%rbp), %rdx
	movq	-8448(%rbp), %rax
	pushq	$0
	movl	$.LC160, %r9d
	movq	%rcx, %r8
	movl	$.LC161, %ecx
	movl	$.LC162, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	addq	$16, %rsp
.L347:
	addl	$1, -20(%rbp)
.L320:
	movl	-20(%rbp), %eax
	cmpl	-8428(%rbp), %eax
	jl	.L367
	movl	-8432(%rbp), %eax
	andl	$16384, %eax
	testl	%eax, %eax
	je	.L368
	movq	-40(%rbp), %rsi
	movq	-8448(%rbp), %rax
	movl	$0, %ecx
	movl	$.LC163, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	ap_rvputs
	jmp	.L284
.L368:
	movl	-8432(%rbp), %eax
	andl	$8192, %eax
	testl	%eax, %eax
	je	.L370
	movl	-8432(%rbp), %eax
	andl	$512, %eax
	testl	%eax, %eax
	jne	.L371
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC138, %edi
	call	ap_rputs
	movl	-8432(%rbp), %eax
	andl	$131072, %eax
	testl	%eax, %eax
	je	.L372
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC125, %edi
	call	ap_rputs
.L372:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC164, %edi
	call	ap_rputs
	jmp	.L284
.L371:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC99, %edi
	call	ap_rputs
	jmp	.L284
.L370:
	movq	-8448(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC165, %edi
	call	ap_rputs
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	output_directories, .-output_directories
	.type	dsortf, @function
dsortf:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L375
	movl	$-1, %eax
	jmp	.L376
.L375:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L377
	movl	$1, %eax
	jmp	.L376
.L377:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	72(%rax), %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	72(%rax), %eax
	cmpl	%eax, %edx
	je	.L378
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	72(%rax), %eax
	testl	%eax, %eax
	je	.L379
	movl	$-1, %eax
	jmp	.L376
.L379:
	movl	$1, %eax
	jmp	.L376
.L378:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	56(%rax), %eax
	testl	%eax, %eax
	je	.L381
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L382
.L381:
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.L382:
	movq	-8(%rbp), %rax
	movzbl	68(%rax), %eax
	movsbl	%al, %eax
	cmpl	$77, %eax
	je	.L384
	cmpl	$83, %eax
	je	.L385
	cmpl	$68, %eax
	je	.L386
	jmp	.L383
.L384:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L387
	movl	$1, %eax
	jmp	.L376
.L387:
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L388
	movl	$-1, %eax
	jmp	.L376
.L388:
	jmp	.L383
.L385:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jle	.L389
	movl	$1, %eax
	jmp	.L376
.L389:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	%rax, %rdx
	jge	.L390
	movl	$-1, %eax
	jmp	.L376
.L390:
	jmp	.L383
.L386:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L391
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L392
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	jmp	.L393
.L392:
	movl	$.LC11, %edx
.L393:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L394
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L395
.L394:
	movl	$.LC11, %eax
.L395:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strnatcmp
	movl	%eax, -20(%rbp)
	jmp	.L396
.L391:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L397
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	jmp	.L398
.L397:
	movl	$.LC11, %edx
.L398:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L399
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.L400
.L399:
	movl	$.LC11, %eax
.L400:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	movl	%eax, -20(%rbp)
.L396:
	cmpl	$0, -20(%rbp)
	je	.L401
	movl	-20(%rbp), %eax
	jmp	.L376
.L401:
	nop
.L383:
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L402
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L403
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strnatcasecmp
	movl	%eax, -20(%rbp)
.L403:
	cmpl	$0, -20(%rbp)
	jne	.L402
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_strnatcmp
	movl	%eax, -20(%rbp)
.L402:
	cmpl	$0, -20(%rbp)
	jne	.L404
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	testl	%eax, %eax
	je	.L404
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcasecmp
	movl	%eax, -20(%rbp)
.L404:
	cmpl	$0, -20(%rbp)
	jne	.L405
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	movl	%eax, -20(%rbp)
.L405:
	movl	-20(%rbp), %eax
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	dsortf, .-dsortf
	.section	.rodata
	.align 8
.LC166:
	.string	"Can't open directory for index: %s"
.LC167:
	.string	"ISO-8859-1"
.LC168:
	.string	";charset="
.LC169:
	.string	"NMSD"
.LC170:
	.string	"012"
.LC171:
	.string	";P="
	.text
	.type	index_directory, @function
index_directory:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$464, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -472(%rbp)
	movq	%rsi, -480(%rbp)
	movq	-472(%rbp), %rax
	movq	352(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_escape_html
	movq	%rax, -136(%rbp)
	movq	-472(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	$0, -64(%rbp)
	movq	-480(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -76(%rbp)
	movq	$.LC104, -96(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rdx
	movq	-144(%rbp), %rcx
	leaq	-312(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dir_open
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	.L407
	movq	-472(%rbp), %rax
	movq	360(%rax), %rdx
	subq	$8, %rsp
	movq	-472(%rbp), %rcx
	movl	-148(%rbp), %eax
	pushq	%rdx
	movl	$.LC166, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$2007, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
	jmp	.L471
.L407:
	movq	-480(%rbp), %rax
	movq	112(%rax), %rax
	testq	%rax, %rax
	je	.L409
	movq	-480(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -96(%rbp)
.L409:
	movq	-480(%rbp), %rax
	movq	120(%rax), %rax
	testq	%rax, %rax
	je	.L410
	movq	-480(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.L411
.L410:
	movq	$.LC167, -104(%rbp)
.L411:
	movq	-104(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L412
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movl	$0, %r8d
	movq	%rdx, %rcx
	movl	$.LC168, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
	jmp	.L413
.L412:
	movq	-96(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_set_content_type
.L413:
	movl	-76(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	je	.L414
	movq	-472(%rbp), %rax
	movq	472(%rax), %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_update_mtime
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_last_modified
	movq	-472(%rbp), %rax
	movq	%rax, %rdi
	call	ap_set_etag
.L414:
	movq	-472(%rbp), %rax
	movl	64(%rax), %eax
	testl	%eax, %eax
	je	.L415
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movl	$0, %eax
	jmp	.L471
.L415:
	movq	-480(%rbp), %rax
	movzbl	60(%rax), %eax
	testb	%al, %al
	je	.L416
	movq	-480(%rbp), %rax
	movzbl	60(%rax), %eax
	jmp	.L417
.L416:
	movl	$78, %eax
.L417:
	movb	%al, -77(%rbp)
	movq	-480(%rbp), %rax
	movzbl	61(%rax), %eax
	testb	%al, %al
	je	.L418
	movq	-480(%rbp), %rax
	movzbl	61(%rax), %eax
	jmp	.L419
.L418:
	movl	$65, %eax
.L419:
	movb	%al, -78(%rbp)
	movl	-76(%rbp), %eax
	andl	$32768, %eax
	testl	%eax, %eax
	je	.L420
	movq	$0, -72(%rbp)
	orl	$256, -76(%rbp)
	movq	$.LC11, -88(%rbp)
	jmp	.L421
.L420:
	movq	$.LC11, -112(%rbp)
	movq	$.LC11, -120(%rbp)
	movb	$0, -320(%rbp)
	movb	$0, -336(%rbp)
	movq	-472(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.L422
.L456:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$67, %al
	jne	.L423
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L423
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L423
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC169, %edi
	call	strchr
	testq	%rax, %rax
	je	.L423
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L424
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L424
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L423
.L424:
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -77(%rbp)
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L425
	movl	$4, %eax
	jmp	.L426
.L425:
	movl	$3, %eax
.L426:
	addq	%rax, -72(%rbp)
	jmp	.L422
.L423:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$79, %al
	jne	.L427
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L427
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L428
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$68, %al
	jne	.L427
.L428:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L429
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L429
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L427
.L429:
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -78(%rbp)
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L430
	movl	$4, %eax
	jmp	.L431
.L430:
	movl	$3, %eax
.L431:
	addq	%rax, -72(%rbp)
	jmp	.L422
.L427:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jne	.L432
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L432
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L432
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC170, %edi
	call	strchr
	testq	%rax, %rax
	je	.L432
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L433
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L433
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L432
.L433:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L434
	andl	$-24577, -76(%rbp)
	jmp	.L435
.L434:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$49, %al
	jne	.L436
	movl	-76(%rbp), %eax
	andb	$159, %ah
	orb	$32, %ah
	movl	%eax, -76(%rbp)
	jmp	.L435
.L436:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$50, %al
	jne	.L435
	orl	$24576, -76(%rbp)
.L435:
	movl	$540886587, -320(%rbp)
	movb	$0, -316(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -317(%rbp)
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L437
	movl	$4, %eax
	jmp	.L438
.L437:
	movl	$3, %eax
.L438:
	addq	%rax, -72(%rbp)
	jmp	.L422
.L432:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$86, %al
	jne	.L439
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L439
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	je	.L440
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$49, %al
	jne	.L439
.L440:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L441
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	je	.L441
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L439
.L441:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L442
	andl	$-2049, -76(%rbp)
	jmp	.L443
.L442:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$49, %al
	jne	.L443
	orl	$2048, -76(%rbp)
.L443:
	movl	$540890683, -336(%rbp)
	movb	$0, -332(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	movb	%al, -333(%rbp)
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L444
	movl	$4, %eax
	jmp	.L445
.L444:
	movl	$3, %eax
.L445:
	addq	%rax, -72(%rbp)
	jmp	.L422
.L439:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$80, %al
	jne	.L446
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$61, %al
	jne	.L446
	addq	$2, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L447
.L449:
	addq	$1, -128(%rbp)
.L447:
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L448
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$38, %al
	je	.L448
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$59, %al
	jne	.L449
.L448:
	movq	-128(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.L450
	movq	$0, -32(%rbp)
	jmp	.L451
.L450:
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_pstrndup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_unescape_url
	testl	%eax, %eax
	je	.L452
	movq	$0, -32(%rbp)
	jmp	.L451
.L452:
	movq	$.LC171, -112(%rbp)
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_os_escape_path
	movq	%rax, -120(%rbp)
.L451:
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L453
	addq	$1, -128(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L453
	movq	-128(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.L454
.L453:
	movq	$0, -72(%rbp)
.L454:
	jmp	.L422
.L446:
	movq	$0, -72(%rbp)
.L422:
	cmpq	$0, -72(%rbp)
	je	.L455
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L456
.L455:
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rcx
	leaq	-336(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, -88(%rbp)
.L421:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	leaq	-1(%rax), %rdx
	movq	-136(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	jmp	.L457
.L459:
	movq	-24(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movb	$0, (%rax)
.L457:
	movq	-24(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jbe	.L458
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L459
.L458:
	movl	-76(%rbp), %eax
	andl	$131072, %eax
	movl	%eax, %r12d
	movl	-76(%rbp), %eax
	andl	$128, %eax
	movl	%eax, %ebx
	movq	-480(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-472(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rsi
	movq	-136(%rbp), %rdx
	movq	-472(%rbp), %rax
	movq	%rdx, %r8
	movl	%r12d, %ecx
	movl	%ebx, %edx
	movq	%rax, %rdi
	call	emit_head
	movq	$0, -48(%rbp)
	movsbl	-78(%rbp), %edi
	movsbl	-77(%rbp), %ecx
	movq	-472(%rbp), %rdx
	movq	-480(%rbp), %rsi
	movl	-76(%rbp), %eax
	movl	%edi, %r8d
	movl	%eax, %edi
	call	make_parent_entry
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L460
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	addl	$1, -36(%rbp)
.L460:
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movl	$4096, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -160(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy
.L467:
	movq	-312(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movl	$33587568, %esi
	movq	%rax, %rdi
	call	apr_dir_read
	movl	%eax, -148(%rbp)
	cmpl	$70008, -148(%rbp)
	jne	.L461
	jmp	.L462
.L461:
	cmpl	$0, -148(%rbp)
	je	.L463
	nop
	cmpl	$0, -36(%rbp)
	jle	.L468
	jmp	.L472
.L463:
	movl	-288(%rbp), %eax
	cmpl	$6, %eax
	jne	.L465
	movq	-200(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	$4096, %eax
	subq	-168(%rbp), %rax
	movq	%rax, %rdx
	movq	-200(%rbp), %rax
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rcx
	addq	%rsi, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	apr_cpystrn
	movq	-472(%rbp), %rax
	movq	(%rax), %rdx
	movl	-296(%rbp), %eax
	andl	$-33554433, %eax
	movl	%eax, %edi
	movq	-160(%rbp), %rsi
	leaq	-464(%rbp), %rax
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
	call	apr_stat
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.L462
	movq	-464(%rbp), %rax
	movq	%rax, -304(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-448(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-424(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-416(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-408(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-400(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-296(%rbp), %eax
	orl	$33554432, %eax
	movl	%eax, -296(%rbp)
.L465:
	movsbl	-78(%rbp), %r8d
	movsbl	-77(%rbp), %edi
	subq	$8, %rsp
	movq	-472(%rbp), %rcx
	movq	-480(%rbp), %rdx
	movl	-76(%rbp), %esi
	leaq	-304(%rbp), %rax
	pushq	-32(%rbp)
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	make_autoindex_entry
	addq	$16, %rsp
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L462
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	addl	$1, -36(%rbp)
.L462:
	jmp	.L467
.L472:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L469
.L470:
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)
.L469:
	cmpq	$0, -56(%rbp)
	jne	.L470
	movl	-36(%rbp), %eax
	movslq	%eax, %rsi
	movq	-64(%rbp), %rax
	movl	$dsortf, %ecx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort
.L468:
	movsbl	-78(%rbp), %edi
	movsbl	-77(%rbp), %r9d
	movl	-76(%rbp), %r8d
	movq	-472(%rbp), %rcx
	movq	-480(%rbp), %rdx
	movl	-36(%rbp), %esi
	movq	-64(%rbp), %rax
	pushq	-88(%rbp)
	pushq	%rdi
	movq	%rax, %rdi
	call	output_directories
	addq	$16, %rsp
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	call	apr_dir_close
	movl	-76(%rbp), %eax
	andl	$128, %eax
	movl	%eax, %ebx
	movq	-480(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-472(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	find_item
	movq	%rax, %rcx
	movq	-472(%rbp), %rax
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	emit_tail
	movl	$0, %eax
.L471:
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	index_directory, .-index_directory
	.section	.rodata
.LC172:
	.string	"httpd/unix-directory"
	.align 8
.LC173:
	.string	"Directory index forbidden by Options directive: %s"
	.text
	.type	handle_autoindex, @function
handle_autoindex:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	movl	$.LC172, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L474
	movl	$-1, %eax
	jmp	.L475
.L474:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_allow_options
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	608(%rax), %rax
	movl	autoindex_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	orq	$1, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-56(%rbp), %rax
	movl	128(%rax), %eax
	testl	%eax, %eax
	je	.L476
	movl	$-1, %eax
	jmp	.L475
.L476:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L477
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	ap_discard_request_body
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.L478
	movl	-36(%rbp), %eax
	jmp	.L475
.L478:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$1, %rax
	addq	%rbx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	je	.L479
	movq	-56(%rbp), %rax
	movq	360(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, %ecx
	movl	$.LC114, %edx
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 360(%rax)
.L479:
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	index_directory
	jmp	.L475
.L477:
	movq	-56(%rbp), %rax
	movq	360(%rax), %rax
	subq	$8, %rsp
	movq	-56(%rbp), %rdx
	pushq	%rax
	movl	$.LC173, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$2292, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$403, %eax
.L475:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	handle_autoindex, .-handle_autoindex
	.type	register_hooks, @function
register_hooks:
.LFB30:
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
	movl	$handle_autoindex, %edi
	call	ap_hook_handler
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE30:
	.size	register_hooks, .-register_hooks
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

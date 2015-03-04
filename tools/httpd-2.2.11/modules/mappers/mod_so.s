	.file	"mod_so.c"
	.globl	so_module
	.section	.rodata
.LC0:
	.string	"mod_so.c"
	.data
	.align 64
	.type	so_module, @object
	.size	so_module, 104
so_module:
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
	.quad	so_sconf_create
	.quad	0
	.quad	so_cmds
	.quad	register_hooks
	.text
	.type	so_sconf_create, @function
so_sconf_create:
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
	movl	$8, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movl	$8, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movl	$16, %edx
	movl	$128, %esi
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
.LFE2:
	.size	so_sconf_create, .-so_sconf_create
	.type	unload_module, @function
unload_module:
.LFB3:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	movl	$0, %eax
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	ap_remove_loaded_module
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	unload_module, .-unload_module
	.section	.rodata
.LC1:
	.string	"Invalid LoadModule path "
	.align 8
.LC2:
	.string	"module %s is already loaded, skipping"
.LC3:
	.string	"mod_"
.LC4:
	.string	"_module"
	.align 8
.LC5:
	.string	" is built-in and can't be loaded"
.LC6:
	.string	"module "
.LC7:
	.string	" into server: "
.LC8:
	.string	"Cannot load "
.LC9:
	.string	"loaded module %s"
.LC10:
	.string	": "
.LC11:
	.string	"' in file "
	.align 8
.LC12:
	.string	"Can't locate API module structure `"
	.align 8
.LC13:
	.string	"API module structure '%s' in file %s is garbled - expected signature %08lx but saw %08lx - perhaps this is not an Apache module DSO, or was compiled for a different Apache version?"
	.text
	.type	load_module, @function
load_module:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$384, %rsp
	movq	%rdi, -360(%rbp)
	movq	%rsi, -368(%rbp)
	movq	%rdx, -376(%rbp)
	movq	%rcx, -384(%rbp)
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-384(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -16(%rbp)
	movq	-368(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	jne	.L7
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-384(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L23
.L7:
	movq	-360(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movl	so_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L9
.L11:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-376(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L10
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	pushq	-376(%rbp)
	movl	$.LC2, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$4, %edx
	movl	$187, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movl	$0, %eax
	jmp	.L23
.L10:
	addl	$1, -4(%rbp)
.L9:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L11
	movl	$0, -4(%rbp)
	jmp	.L12
.L18:
	movl	-4(%rbp), %eax
	cltq
	movq	ap_preloaded_modules(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movl	$4, %edx
	movl	$.LC3, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	.L13
	jmp	.L14
.L13:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	addq	$4, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	$7, %rax
	ja	.L15
	jmp	.L14
.L15:
	movq	-376(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	subq	$7, %rax
	movq	%rax, -72(%rbp)
	movq	-376(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	.L16
	jmp	.L14
.L16:
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.L17
	jmp	.L14
.L17:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-376(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	jne	.L14
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-376(%rbp), %rdx
	movl	$0, %r8d
	movl	$.LC5, %ecx
	movl	$.LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L23
.L14:
	addl	$1, -4(%rbp)
.L12:
	movl	-4(%rbp), %eax
	cltq
	movq	ap_preloaded_modules(,%rax,8), %rax
	testq	%rax, %rax
	jne	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-376(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-360(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-16(%rbp), %rcx
	leaq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_load
	testl	%eax, %eax
	je	.L19
	movq	-88(%rbp), %rax
	leaq	-352(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_error
	movq	%rax, %rcx
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$.LC7, %ecx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L23
.L19:
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	subq	$8, %rsp
	pushq	-376(%rbp)
	movl	$.LC9, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$7, %edx
	movl	$246, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_perror
	addq	$16, %rsp
	movq	-88(%rbp), %rcx
	movq	-376(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_sym
	testl	%eax, %eax
	je	.L20
	movq	-88(%rbp), %rax
	leaq	-352(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_error
	movq	%rax, %rsi
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-376(%rbp), %rdx
	pushq	$0
	pushq	%rsi
	movl	$.LC10, %r9d
	movq	%rcx, %r8
	movl	$.LC11, %ecx
	movl	$.LC12, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	addq	$16, %rsp
	jmp	.L23
.L20:
	movq	-96(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$1095774770, %rax
	je	.L21
	movq	-48(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-376(%rbp), %rdx
	movq	%rsi, %r9
	movl	$1095774770, %r8d
	movl	$.LC13, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_psprintf
	jmp	.L23
.L21:
	movq	-360(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_add_loaded_module
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.L22
	movq	-80(%rbp), %rax
	jmp	.L23
.L22:
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rsi
	movl	$apr_pool_cleanup_null, %ecx
	movl	$unload_module, %edx
	movq	%rax, %rdi
	call	apr_pool_cleanup_register
	movq	-360(%rbp), %rax
	movq	72(%rax), %rcx
	movq	-360(%rbp), %rax
	movq	56(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_single_module_configure
	movl	$0, %eax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	load_module, .-load_module
	.section	.rodata
.LC14:
	.string	"Invalid LoadFile path "
.LC15:
	.string	"loaded file %s"
	.text
	.type	load_file, @function
load_file:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	56(%rax), %rax
	movq	-296(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_server_root_relative
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L25
	movq	-280(%rbp), %rax
	movq	56(%rax), %rax
	movq	-296(%rbp), %rdx
	movl	$0, %ecx
	movl	$.LC14, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L28
.L25:
	movq	-280(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-8(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_load
	testl	%eax, %eax
	je	.L27
	movq	-16(%rbp), %rax
	leaq	-272(%rbp), %rcx
	movl	$256, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_dso_error
	movq	%rax, %rcx
	movq	-280(%rbp), %rax
	movq	56(%rax), %rax
	movq	-296(%rbp), %rdx
	movl	$0, %r9d
	movq	%rcx, %r8
	movl	$.LC7, %ecx
	movl	$.LC8, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_pstrcat
	jmp	.L28
.L27:
	subq	$8, %rsp
	pushq	-296(%rbp)
	movl	$.LC15, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$7, %edx
	movl	$328, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$0, %eax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	load_file, .-load_file
	.type	ap_find_loaded_module_symbol, @function
ap_find_loaded_module_symbol:
.LFB6:
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
	movq	80(%rax), %rax
	movl	so_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L30
.L33:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L31
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.L32
.L31:
	addl	$1, -4(%rbp)
.L30:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L33
	movl	$0, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	ap_find_loaded_module_symbol, .-ap_find_loaded_module_symbol
	.section	.rodata
.LC16:
	.string	"DUMP_MODULES"
.LC17:
	.string	"Loaded Modules:\n"
.LC18:
	.string	" %s (static)\n"
.LC19:
	.string	" %s (shared)\n"
	.text
	.type	dump_loaded_modules, @function
dump_loaded_modules:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	$0, -40(%rbp)
	movl	$.LC16, %edi
	call	ap_exists_config_define
	testl	%eax, %eax
	je	.L34
	movq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_file_open_stderr
	movq	-40(%rbp), %rax
	movl	$.LC17, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movl	so_module+8(%rip), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.L40:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$ap_prelinked_module_symbols, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L37
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$.LC18, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
	jmp	.L44
.L37:
	nop
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L41
.L44:
	addl	$1, -4(%rbp)
	jmp	.L40
.L43:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movl	$.LC19, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	apr_file_printf
.L42:
	addl	$1, -4(%rbp)
.L41:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L43
.L34:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dump_loaded_modules, .-dump_loaded_modules
	.section	.rodata
.LC20:
	.string	"ap_find_loaded_module_symbol"
	.text
	.type	register_hooks, @function
register_hooks:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$ap_find_loaded_module_symbol, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC20, %edi
	call	apr_dynamic_fn_register
	movl	$10, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$dump_loaded_modules, %edi
	call	ap_hook_test_config
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	register_hooks, .-register_hooks
	.section	.rodata
.LC21:
	.string	"LoadModule"
	.align 8
.LC22:
	.string	"a module name and the name of a shared object file to load it from"
.LC23:
	.string	"LoadFile"
	.align 8
.LC24:
	.string	"shared object file or library to load into the server at runtime"
	.align 64
	.type	so_cmds, @object
	.size	so_cmds, 120
so_cmds:
	.quad	.LC21
	.quad	load_module
	.quad	0
	.long	384
	.long	2
	.quad	.LC22
	.quad	.LC23
	.quad	load_file
	.quad	0
	.long	384
	.long	3
	.quad	.LC24
	.quad	0
	.zero	32
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

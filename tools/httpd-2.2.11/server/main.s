	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Server MPM:     %s\n"
.LC1:
	.string	"  threaded:     "
.LC2:
	.string	"yes (variable thread count)"
.LC3:
	.string	"yes (fixed thread count)"
.LC4:
	.string	"no"
.LC5:
	.string	"    forked:     "
.LC6:
	.string	"yes (variable process count)"
.LC7:
	.string	"yes (fixed process count)"
	.text
	.type	show_mpm_settings, @function
show_mpm_settings:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	call	ap_show_mpm
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	ap_mpm_query
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L2
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %eax
	cmpl	$2, %eax
	jne	.L3
	movl	$.LC2, %edi
	call	puts
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	jne	.L4
	movl	$.LC3, %edi
	call	puts
	jmp	.L2
.L4:
	movl	$.LC4, %edi
	call	puts
.L2:
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$3, %edi
	call	ap_mpm_query
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L1
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %eax
	cmpl	$2, %eax
	jne	.L6
	movl	$.LC6, %edi
	call	puts
	jmp	.L1
.L6:
	movl	-8(%rbp), %eax
	cmpl	$1, %eax
	jne	.L7
	movl	$.LC7, %edi
	call	puts
	jmp	.L1
.L7:
	movl	$.LC4, %edi
	call	puts
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	show_mpm_settings, .-show_mpm_settings
	.section	.rodata
.LC8:
	.string	"Server version: %s\n"
.LC9:
	.string	"Server built:   %s\n"
	.align 8
.LC10:
	.string	"Server's Module Magic Number: %u:%u\n"
	.align 8
.LC11:
	.string	"Server loaded:  APR %s, APR-Util %s\n"
.LC12:
	.string	"1.5.4"
.LC13:
	.string	"1.5.1"
	.align 8
.LC14:
	.string	"Compiled using: APR %s, APR-Util %s\n"
.LC15:
	.string	"Architecture:   %ld-bit\n"
.LC16:
	.string	"Server compiled with...."
	.align 8
.LC17:
	.string	" -D APACHE_MPM_DIR=\"server/mpm/prefork\""
.LC18:
	.string	" -D APR_HAS_SENDFILE"
.LC19:
	.string	" -D APR_HAS_MMAP"
	.align 8
.LC20:
	.string	" -D APR_HAVE_IPV6 (IPv4-mapped addresses "
.LC21:
	.string	"enabled)"
.LC22:
	.string	" -D APR_USE_SYSVSEM_SERIALIZE"
.LC23:
	.string	" -D APR_USE_PTHREAD_SERIALIZE"
.LC24:
	.string	" -D APR_HAS_OTHER_CHILD"
	.align 8
.LC25:
	.string	" -D AP_HAVE_RELIABLE_PIPED_LOGS"
.LC26:
	.string	" -D DYNAMIC_MODULE_LIMIT=%ld\n"
	.align 8
.LC27:
	.string	" -D HTTPD_ROOT=\"/home/user/Desktop/demo/installdir/\""
	.align 8
.LC28:
	.string	" -D SUEXEC_BIN=\"/home/user/Desktop/demo/installdir//bin/suexec\""
	.align 8
.LC29:
	.string	" -D DEFAULT_PIDLOG=\"logs/httpd.pid\""
	.align 8
.LC30:
	.string	" -D DEFAULT_SCOREBOARD=\"logs/apache_runtime_status\""
	.align 8
.LC31:
	.string	" -D DEFAULT_LOCKFILE=\"logs/accept.lock\""
	.align 8
.LC32:
	.string	" -D DEFAULT_ERRORLOG=\"logs/error_log\""
	.align 8
.LC33:
	.string	" -D AP_TYPES_CONFIG_FILE=\"conf/mime.types\""
	.align 8
.LC34:
	.string	" -D SERVER_CONFIG_FILE=\"conf/httpd.conf\""
	.text
	.type	show_compile_settings, @function
show_compile_settings:
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
	call	ap_get_server_description
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	call	ap_get_server_built
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$21, %edx
	movl	$20051115, %esi
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	call	apu_version_string
	movq	%rax, %rbx
	call	apr_version_string
	movq	%rbx, %rdx
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC12, %edx
	movl	$.LC13, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$64, %esi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	call	show_mpm_settings
	movl	$.LC16, %edi
	call	puts
	movl	$.LC17, %edi
	call	puts
	movl	$.LC18, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	$.LC20, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC21, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	$.LC23, %edi
	call	puts
	movl	$.LC24, %edi
	call	puts
	movl	$.LC25, %edi
	call	puts
	movl	$128, %esi
	movl	$.LC26, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC27, %edi
	call	puts
	movl	$.LC28, %edi
	call	puts
	movl	$.LC29, %edi
	call	puts
	movl	$.LC30, %edi
	call	puts
	movl	$.LC31, %edi
	call	puts
	movl	$.LC32, %edi
	call	puts
	movl	$.LC33, %edi
	call	puts
	movl	$.LC34, %edi
	call	puts
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	show_compile_settings, .-show_compile_settings
	.type	destroy_and_exit_process, @function
destroy_and_exit_process:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$10000, %edi
	call	apr_sleep
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	call	apr_terminate
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	exit
	.cfi_endproc
.LFE4:
	.size	destroy_and_exit_process, .-destroy_and_exit_process
	.section	.rodata
.LC35:
	.string	"apr_app_initialize()"
.LC36:
	.string	"apr_pool_create()"
	.align 8
.LC37:
	.string	"[%s] [crit] (%d) %s: %s failed to initial context, exiting\n"
.LC38:
	.string	"process"
.LC39:
	.string	"pconf"
	.text
	.type	init_process, @function
init_process:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	$.LC35, -16(%rbp)
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_app_initialize
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L11
	movq	$.LC36, -16(%rbp)
	leaq	-32(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movl	%eax, -4(%rbp)
.L11:
	cmpl	$0, -4(%rbp)
	je	.L12
	call	apr_time_now
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_ctime
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	movq	stderr(%rip), %rax
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %ecx
	leaq	-64(%rbp), %rdx
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	$.LC37, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	call	apr_terminate
	movl	$1, %edi
	call	exit
.L12:
	movq	-32(%rbp), %rax
	movl	$.LC38, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	ap_open_stderr_log
	movq	-32(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	apr_palloc
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	leaq	8(%rdx), %rdi
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	apr_pool_create_ex
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	$.LC39, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_filepath_name_get
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	init_process, .-init_process
	.section	.rodata
	.align 8
.LC40:
	.string	"Usage: %s [-D name] [-d directory] [-f file]"
.LC41:
	.string	"main.c"
	.align 8
.LC42:
	.string	"       %s [-C \"directive\"] [-c \"directive\"]"
	.align 8
.LC43:
	.string	"       %s [-k start|restart|graceful|graceful-stop|stop]"
	.align 8
.LC44:
	.string	"       %s [-v] [-V] [-h] [-l] [-L] [-t] [-S]"
.LC45:
	.string	"Options:"
	.align 8
.LC46:
	.string	"  -D name            : define a name for use in <IfDefine name> directives"
	.align 8
.LC47:
	.string	"  -d directory       : specify an alternate initial ServerRoot"
	.align 8
.LC48:
	.string	"  -f file            : specify an alternate ServerConfigFile"
	.align 8
.LC49:
	.string	"  -C \"directive\"     : process directive before reading config files"
	.align 8
.LC50:
	.string	"  -c \"directive\"     : process directive after reading config files"
	.align 8
.LC51:
	.string	"  -e level           : show startup errors of level (see LogLevel)"
	.align 8
.LC52:
	.string	"  -E file            : log startup errors to file"
	.align 8
.LC53:
	.string	"  -v                 : show version number"
	.align 8
.LC54:
	.string	"  -V                 : show compile settings"
	.align 8
.LC55:
	.string	"  -h                 : list available command line options (this page)"
	.align 8
.LC56:
	.string	"  -l                 : list compiled in modules"
	.align 8
.LC57:
	.string	"  -L                 : list available configuration directives"
	.align 8
.LC58:
	.string	"  -t -D DUMP_VHOSTS  : show parsed settings (currently only vhost settings)"
	.align 8
.LC59:
	.string	"  -S                 : a synonym for -t -D DUMP_VHOSTS"
	.align 8
.LC60:
	.string	"  -t -D DUMP_MODULES : show all loaded modules "
	.align 8
.LC61:
	.string	"  -M                 : a synonym for -t -D DUMP_MODULES"
	.align 8
.LC62:
	.string	"  -t                 : run syntax check for config files"
	.text
	.type	usage, @function
usage:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -8232(%rbp)
	movq	-8232(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L15
.L16:
	movl	-20(%rbp), %eax
	movb	$32, -8224(%rbp,%rax)
	addl	$1, -20(%rbp)
.L15:
	movl	-20(%rbp), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L16
	movl	-20(%rbp), %eax
	movb	$0, -8224(%rbp,%rax)
	subq	$8, %rsp
	pushq	-32(%rbp)
	movl	$.LC40, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$338, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	subq	$8, %rsp
	leaq	-8224(%rbp), %rax
	pushq	%rax
	movl	$.LC42, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$342, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	subq	$8, %rsp
	leaq	-8224(%rbp), %rax
	pushq	%rax
	movl	$.LC43, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$354, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	subq	$8, %rsp
	leaq	-8224(%rbp), %rax
	pushq	%rax
	movl	$.LC44, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$363, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movl	$.LC45, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$365, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC46, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$374, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC47, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$377, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC48, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$380, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC49, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$382, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC50, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$385, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC51, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$415, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC52, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$418, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC53, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$420, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC54, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$422, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC55, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$424, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC56, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$427, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC57, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$429, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC58, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$432, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC59, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$435, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC60, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$437, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC61, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$439, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movl	$.LC62, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$441, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-8232(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	usage, .-usage
	.section	.rodata
.LC63:
	.string	"conf/httpd.conf"
	.align 8
.LC64:
	.string	"/home/user/Desktop/demo/installdir/"
.LC65:
	.string	"pcommands"
.LC66:
	.string	"%s: %s"
.LC67:
	.string	"DUMP_VHOSTS"
.LC68:
	.string	"DUMP_MODULES"
.LC69:
	.string	"emerg"
.LC70:
	.string	"alert"
.LC71:
	.string	"crit"
.LC72:
	.string	"err"
.LC73:
	.string	"warn"
.LC74:
	.string	"notice"
.LC75:
	.string	"info"
.LC76:
	.string	"debug"
.LC77:
	.string	"DEBUG"
.LC78:
	.string	"C:c:D:d:E:e:f:vVlLtSMh?X"
.LC79:
	.string	"plog"
.LC80:
	.string	"ptemp"
.LC81:
	.string	"Pre-configuration failed"
.LC82:
	.string	"Syntax OK"
.LC83:
	.string	"ap_signal_server"
.LC84:
	.string	"Unable to open logs"
.LC85:
	.string	"Configuration Failed"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	movl	$0, -4(%rbp)
	movq	$.LC63, -16(%rbp)
	movq	$.LC64, -24(%rbp)
	movq	$0, -32(%rbp)
	leaq	-176(%rbp), %rdx
	leaq	-164(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	init_process
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, ap_server_argv0(%rip)
	movq	-56(%rbp), %rsi
	leaq	-136(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-136(%rbp), %rax
	movl	$.LC65, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-136(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, ap_server_pre_read_config(%rip)
	movq	-136(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, ap_server_post_read_config(%rip)
	movq	-136(%rbp), %rax
	movl	$8, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	call	apr_array_make
	movq	%rax, ap_server_config_defines(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_setup_prelinked_modules
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.L18
	movq	ap_server_argv0(%rip), %rax
	pushq	-72(%rbp)
	pushq	%rax
	movl	$.LC66, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$489, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	addq	$16, %rsp
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L18:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_rewrite_args
	movq	-48(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	16(%rax), %edx
	movq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	apr_getopt_init
	jmp	.L19
.L48:
	movzbl	-105(%rbp), %eax
	movsbl	%al, %eax
	subl	$63, %eax
	cmpl	$55, %eax
	ja	.L19
	movl	%eax, %eax
	movq	.L21(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L21:
	.quad	.L20
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L22
	.quad	.L23
	.quad	.L24
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L25
	.quad	.L26
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L27
	.quad	.L19
	.quad	.L19
	.quad	.L28
	.quad	.L19
	.quad	.L29
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L30
	.quad	.L31
	.quad	.L32
	.quad	.L33
	.quad	.L19
	.quad	.L20
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L34
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L19
	.quad	.L35
	.quad	.L19
	.quad	.L36
	.text
.L30:
	movq	ap_server_post_read_config(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L19
.L22:
	movq	ap_server_pre_read_config(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L19
.L31:
	movq	-152(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L19
.L23:
	movq	ap_server_config_defines(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-152(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-152(%rbp), %rax
	movl	$.LC67, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L37
	movl	$1, -4(%rbp)
.L37:
	movq	-152(%rbp), %rax
	movl	$.LC68, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L38
	movl	$1, -4(%rbp)
.L38:
	jmp	.L19
.L32:
	movq	-152(%rbp), %rax
	movl	$.LC69, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L39
	movl	$0, ap_default_loglevel(%rip)
	jmp	.L40
.L39:
	movq	-152(%rbp), %rax
	movl	$.LC70, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L41
	movl	$1, ap_default_loglevel(%rip)
	jmp	.L40
.L41:
	movq	-152(%rbp), %rax
	movl	$.LC71, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L42
	movl	$2, ap_default_loglevel(%rip)
	jmp	.L40
.L42:
	movq	-152(%rbp), %rax
	movl	$3, %edx
	movl	$.LC72, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L43
	movl	$3, ap_default_loglevel(%rip)
	jmp	.L40
.L43:
	movq	-152(%rbp), %rax
	movl	$4, %edx
	movl	$.LC73, %esi
	movq	%rax, %rdi
	call	strncasecmp
	testl	%eax, %eax
	jne	.L44
	movl	$4, ap_default_loglevel(%rip)
	jmp	.L40
.L44:
	movq	-152(%rbp), %rax
	movl	$.LC74, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L45
	movl	$5, ap_default_loglevel(%rip)
	jmp	.L40
.L45:
	movq	-152(%rbp), %rax
	movl	$.LC75, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L46
	movl	$6, ap_default_loglevel(%rip)
	jmp	.L40
.L46:
	movq	-152(%rbp), %rax
	movl	$.LC76, %esi
	movq	%rax, %rdi
	call	strcasecmp
	testl	%eax, %eax
	jne	.L47
	movl	$7, ap_default_loglevel(%rip)
	jmp	.L40
.L47:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	usage
.L40:
	jmp	.L19
.L24:
	movq	-152(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_pstrdup
	movq	%rax, -32(%rbp)
	jmp	.L19
.L29:
	movq	ap_server_config_defines(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$.LC77, (%rax)
	jmp	.L19
.L33:
	movq	-152(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L19
.L36:
	call	ap_get_server_description
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	call	ap_get_server_built
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L28:
	call	show_compile_settings
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L34:
	call	ap_show_modules
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L25:
	call	ap_show_directives
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L35:
	movl	$1, -4(%rbp)
	jmp	.L19
.L27:
	movl	$1, -4(%rbp)
	movq	ap_server_config_defines(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$.LC67, (%rax)
	jmp	.L19
.L26:
	movl	$1, -4(%rbp)
	movq	ap_server_config_defines(%rip), %rax
	movq	%rax, %rdi
	call	apr_array_push
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	$.LC68, (%rax)
	jmp	.L19
.L20:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	usage
.L19:
	movq	-144(%rbp), %rax
	leaq	-152(%rbp), %rcx
	leaq	-105(%rbp), %rdx
	movl	$.LC78, %esi
	movq	%rax, %rdi
	call	apr_getopt
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L48
	cmpl	$70014, -76(%rbp)
	jne	.L49
	movq	-144(%rbp), %rax
	movl	24(%rax), %edx
	movq	-144(%rbp), %rax
	movl	36(%rax), %eax
	cmpl	%eax, %edx
	jge	.L50
.L49:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	usage
.L50:
	movq	-56(%rbp), %rsi
	leaq	-120(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-120(%rbp), %rax
	movl	$.LC79, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-128(%rbp), %rax
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-24(%rbp), %rax
	movq	%rax, ap_server_root(%rip)
	cmpq	$0, -32(%rbp)
	je	.L51
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_replace_stderr_log
.L51:
	movq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$ap_conftree, %ecx
	movq	%rax, %rdi
	call	ap_read_config
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L52
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L52:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_run_pre_config
	testl	%eax, %eax
	je	.L53
	movl	$.LC81, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$639, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L53:
	movq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	ap_conftree(%rip), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_config_tree
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.L54
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fixup_virtual_hosts
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fini_vhost_config
	call	apr_hook_sort_all
	cmpl	$0, -4(%rbp)
	je	.L54
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_run_test_config
	movl	$.LC82, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$32, %edx
	movl	$653, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L54:
	movl	$.LC83, %edi
	call	apr_dynamic_fn_retrieve
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.L55
	movq	-64(%rbp), %rcx
	leaq	-156(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	testl	%eax, %eax
	je	.L55
	movl	-156(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L55:
	cmpl	$0, -76(%rbp)
	je	.L57
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L57:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_open_logs
	testl	%eax, %eax
	je	.L58
	movl	$.LC84, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$675, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L58:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_post_config
	testl	%eax, %eax
	je	.L59
	movl	$.LC85, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$681, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L59:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
.L69:
	call	apr_hook_deregister_all
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movq	$ap_prelinked_modules, -40(%rbp)
	jmp	.L60
.L61:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_register_hooks
	addq	$8, -40(%rbp)
.L60:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L61
	movq	$0, ap_conftree(%rip)
	movq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	apr_pool_create_ex
	movq	-128(%rbp), %rax
	movl	$.LC80, %esi
	movq	%rax, %rdi
	call	apr_pool_tag
	movq	-24(%rbp), %rax
	movq	%rax, ap_server_root(%rip)
	movq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$ap_conftree, %ecx
	movq	%rax, %rdi
	call	ap_read_config
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.L62
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L62:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_run_pre_config
	testl	%eax, %eax
	je	.L63
	movl	$.LC81, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$710, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L63:
	movq	-128(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdx
	movq	ap_conftree(%rip), %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	ap_process_config_tree
	testl	%eax, %eax
	je	.L64
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L64:
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fixup_virtual_hosts
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ap_fini_vhost_config
	call	apr_hook_sort_all
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_clear
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_open_logs
	testl	%eax, %eax
	je	.L65
	movl	$.LC84, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$724, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L65:
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	ap_run_post_config
	testl	%eax, %eax
	je	.L66
	movl	$.LC85, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$35, %edx
	movl	$730, %esi
	movl	$.LC41, %edi
	movl	$0, %eax
	call	ap_log_error
	movq	-48(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
.L66:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	apr_pool_destroy
	call	ap_run_optional_fn_retrieve
	movq	-120(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	ap_mpm_run
	testl	%eax, %eax
	je	.L67
	jmp	.L71
.L67:
	jmp	.L69
.L71:
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	destroy_and_exit_process
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.globl	suck_in_APR
	.type	suck_in_APR, @function
suck_in_APR:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	ap_ugly_hack(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	suck_in_APR, .-suck_in_APR
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

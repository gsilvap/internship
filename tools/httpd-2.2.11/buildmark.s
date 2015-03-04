	.file	"buildmark.c"
	.section	.rodata
	.align 16
	.type	server_built, @object
	.size	server_built, 21
server_built:
	.string	"Feb 26 2015 15:30:48"
	.text
	.globl	ap_get_server_built
	.type	ap_get_server_built, @function
ap_get_server_built:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$server_built, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_get_server_built, .-ap_get_server_built
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

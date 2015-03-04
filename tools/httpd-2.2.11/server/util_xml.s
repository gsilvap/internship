	.file	"util_xml.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"XML request body is larger than the configured limit of %lu"
.LC1:
	.string	"util_xml.c"
	.align 8
.LC2:
	.string	"XML parser error (at end). status=%d"
.LC3:
	.string	"XML Parser Error: %s"
	.text
	.globl	ap_xml_parse_input
	.type	ap_xml_parse_input, @function
ap_xml_parse_input:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	$0, -16(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	ap_get_limit_xml_body
	movq	%rax, -40(%rbp)
	movl	$400, -20(%rbp)
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	apr_xml_parser_create
	movq	%rax, -48(%rbp)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rax
	movq	144(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_brigade_create
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	movq	$0, -16(%rbp)
.L15:
	movq	-296(%rbp), %rax
	movq	640(%rax), %rax
	movq	-56(%rbp), %rsi
	movl	$2048, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	ap_get_brigade
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L2
	jmp	.L3
.L2:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.L4
.L14:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$apr_bucket_type_eos, %rax
	jne	.L5
	movl	$1, -4(%rbp)
	jmp	.L6
.L5:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	testl	%eax, %eax
	jne	.L8
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	leaq	-288(%rbp), %rdx
	leaq	-280(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	$0, %ecx
	call	*%rax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L9
	jmp	.L3
.L9:
	movq	-288(%rbp), %rax
	addq	%rax, -16(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L11
	movq	-16(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jbe	.L11
	subq	$8, %rsp
	movq	-296(%rbp), %rax
	pushq	-40(%rbp)
	movl	$.LC0, %r9d
	movq	%rax, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$84, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$413, -20(%rbp)
	nop
	jmp	.L3
.L11:
	movq	-288(%rbp), %rdx
	movq	-280(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_xml_parser_feed
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L8
.L13:
	leaq	-272(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	$200, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	apr_xml_parser_geterror
	subq	$8, %rsp
	movq	-296(%rbp), %rdx
	leaq	-272(%rbp), %rax
	pushq	%rax
	movl	$.LC3, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$122, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	jmp	.L3
.L8:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.L4:
	movq	-56(%rbp), %rax
	addq	$8, %rax
	cmpq	-32(%rbp), %rax
	jne	.L14
.L6:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_cleanup
	cmpl	$0, -4(%rbp)
	je	.L15
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movq	-304(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	apr_xml_parser_done
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.L16
	cmpq	$0, -16(%rbp)
	jne	.L17
	movq	-304(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, %eax
	jmp	.L19
.L17:
	subq	$8, %rsp
	movq	-296(%rbp), %rdx
	movl	-60(%rbp), %eax
	pushq	%rax
	movl	$.LC2, %r9d
	movq	%rdx, %r8
	movl	$0, %ecx
	movl	$3, %edx
	movl	$110, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	ap_log_rerror
	addq	$16, %rsp
	movl	$400, %eax
	jmp	.L19
.L16:
	movl	$0, %eax
	jmp	.L19
.L3:
	movq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	apr_xml_parser_done
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	apr_brigade_destroy
	movl	-20(%rbp), %eax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	ap_xml_parse_input, .-ap_xml_parse_input
	.ident	"GCC: (GNU) 4.9.2 20150204 (prerelease)"
	.section	.note.GNU-stack,"",@progbits

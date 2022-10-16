	.file	"challenge2.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Wow! Here's the secret flag byu22ind{ThisIsntEvenMyFinalForm}"
	.align 8
.LC1:
	.string	"I guess you're not cool enough to see my secret"
	.align 8
.LC2:
	.string	"Heres a tip to help you, your secret was: %x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$-559038737, -4(%rbp)
	movq	$0, -12(%rbp)
	leaq	-12(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	read@PLT
	cmpl	$1094861636, -4(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L3:
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

	.file	"challenge3.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Dang! This function isn't even callable! I don't know how you pulled this off... but for your work, here's a flag! byu22ind{ICommendYourWork}"
	.text
	.globl	printFlag
	.type	printFlag, @function
printFlag:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	printFlag, .-printFlag
	.section	.rodata
	.align 8
.LC1:
	.string	"I'm just as functional as ever!"
	.text
	.globl	failure
	.type	failure, @function
failure:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	failure, .-failure
	.section	.rodata
	.align 8
.LC2:
	.string	"Heres a tip to help you, your secret was: %x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$-17834259, -4(%rbp)
	movl	$1380533067, -8(%rbp)
	movq	$0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movl	$256, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	read@PLT
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L4
	movl	$0, %eax
	call	printFlag
	jmp	.L5
.L4:
	movl	$0, %eax
	call	failure
.L5:
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
.LFE2:
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

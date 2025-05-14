	.file	"SSE.c"
	.text
	.globl	sse
	.type	sse, @function
sse:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
#APP
# 6 "SSE.c" 1
	movups (%rax), %xmm0
movups (%rdx), %xmm1
mulps %xmm1, %xmm0
movups %xmm0, (%rcx)

# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	sse, .-sse
	.section	.rodata
	.align 8
.LC10:
	.string	"\320\270\321\202\320\265\321\200\320\260\321\206\320\270\320\271: %d, \320\262\321\200\320\265\320\274\321\217: %.4f \320\274\321\201 \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	clock@PLT
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -92(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -64(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -56(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -52(%rbp)
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -48(%rbp)
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -44(%rbp)
	movss	.LC5(%rip), %xmm0
	movss	%xmm0, -40(%rbp)
	movss	.LC6(%rip), %xmm0
	movss	%xmm0, -36(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L3
.L4:
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sse
	addl	$1, -96(%rbp)
.L3:
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.L4
	call	clock@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	subq	-88(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC8(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC9(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-72(%rbp), %rdx
	movl	-92(%rbp), %eax
	movq	%rdx, %xmm0
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1133903872
	.align 4
.LC1:
	.long	1082130432
	.align 4
.LC2:
	.long	1094713344
	.align 4
.LC3:
	.long	1069547520
	.align 4
.LC4:
	.long	1075838976
	.align 4
.LC5:
	.long	1080033280
	.align 4
.LC6:
	.long	1083179008
	.align 8
.LC8:
	.long	0
	.long	1093567616
	.align 8
.LC9:
	.long	0
	.long	1083129856
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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

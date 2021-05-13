	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test1.c"
	.text
	.data
	.align	2
	.type	j, %object
	.size	j, 4
j:
	.word	25
	.align	2
	.type	i, %object
	.size	i, 4
i:
	.word	10
	.global	sum
	.bss
	.align	2
	.type	sum, %object
	.size	sum, 4
sum:
	.space	4
	.text
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, [r3]
	ldr	r3, .L2+4
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, .L2+8
	str	r3, [r2]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	i
	.word	j
	.word	sum
	.size	main, .-main
	.ident	"GCC: (15:9-2019-q4-0ubuntu1) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"

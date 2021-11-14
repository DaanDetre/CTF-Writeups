	.arch armv8-a
	.file	"chall.c"
	.text
	.align	2
	.global	func1
	.type	func1, %function
func1:

    # Memory Stuff
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]

	# Loads both Values
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]

	# Compares
	cmp	w1, w0		# w1 (1169092527) == w0 (5112417911) false
	bls	.L2			# SKIPUUUU

	# Some Memory Stuff again
	ldr	w0, [sp, 12]
	b	.L3			# moves to L3

.L2:
	ldr	w0, [sp, 8]

.L3:
	add	sp, sp, 16
	ret				# done??
	.size	func1, .-func1
	.section	.rodata
	.align	3
.LC0:
	.string	"Result: %ld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	# Memory Setup
	stp	x29, x30, [sp, -48]! # Idc
	add	x29, sp, 0

    # Declaration of Variables
	str	x19, [sp, 16]
	str	w0, [x29, 44]		# Idc
	str	x1, [x29, 32]

    # Loads First Number
	ldr	x0, [x29, 32]		# x0 = 4112417903 
	add	x0, x0, 8			# x0 += 8 (5112417911)
	ldr	x0, [x0]			# idc
	bl	atoi				# idc
	mov	w19, w0				# w19 = 5112417911

    # Loads Second Number
	ldr	x0, [x29, 32]		# x0 = 1169092511
	add	x0, x0, 16			# x0 += 16 (1169092527)
	ldr	x0, [x0]			# idc
	bl	atoi				# idc

    # Move Numbers & Run Function
	mov	w1, w0				# w1 = w0 (1169092527)
	mov	w0, w19				# w0 = w19 (5112417911)
	bl	func1				# Moves to func1

	# Prints w0 Value
	mov	w1, w0				# move w1, w0 
	adrp	x0, .LC0		# prints
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

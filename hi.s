	.text
	.file	"hi.c"
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	stp	x29, x30, [sp, #-16]!   // 16-byte Folded Spill
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	x29, sp
	bl	printf
	mov	w0, wzr
	ldp	x29, x30, [sp], #16     // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hi!"
	.size	.L.str, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig

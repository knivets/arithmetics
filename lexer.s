	.file	"lexer.c"
	.text
	.globl	k_tokenize
	.type	k_tokenize, @function
k_tokenize:
.LFB2:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$176, %rsp	#,
	movq	%rdi, -152(%rbp)	# f, f
	movq	%rsi, -160(%rbp)	# size, size
	movq	%rdx, -168(%rbp)	# tokens, tokens
	movq	%fs:40, %rax	#, tmp247
	movq	%rax, -8(%rbp)	# tmp247, D.3067
	xorl	%eax, %eax	# tmp247
	movl	$0, -140(%rbp)	#, tokens_length
	movl	$0, -136(%rbp)	#, position
	jmp	.L2	#
.L15:
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_12, D.3059
	movl	-136(%rbp), %edx	# position, tmp165
	movslq	%edx, %rcx	# tmp165, D.3060
	movq	-152(%rbp), %rdx	# f, tmp166
	addq	%rcx, %rdx	# D.3060, D.3061
	movzbl	(%rdx), %edx	# *_16, D.3062
	movsbq	%dl, %rdx	# D.3062, D.3057
	addq	%rdx, %rdx	# D.3057
	addq	%rdx, %rax	# D.3057, D.3059
	movzwl	(%rax), %eax	# *_20, D.3063
	movzwl	%ax, %eax	# D.3063, D.3064
	andl	$2048, %eax	#, D.3064
	testl	%eax, %eax	# D.3064
	je	.L3	#,
	movl	$0, -132(%rbp)	#, j
	jmp	.L4	#
.L6:
	movl	-136(%rbp), %edx	# position, tmp167
	movl	-132(%rbp), %eax	# j, tmp168
	addl	%edx, %eax	# tmp167, D.3064
	movslq	%eax, %rdx	# D.3064, D.3060
	movq	-152(%rbp), %rax	# f, tmp169
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %edx	# *_41, D.3062
	movl	-132(%rbp), %eax	# j, tmp171
	cltq
	movb	%dl, -128(%rbp,%rax)	# D.3062, t.value
	addl	$1, -132(%rbp)	#, j
.L4:
	movl	-136(%rbp), %edx	# position, tmp172
	movl	-132(%rbp), %eax	# j, tmp173
	addl	%edx, %eax	# tmp172, D.3064
	cltq
	cmpq	-160(%rbp), %rax	# size, D.3057
	jnb	.L5	#,
	cmpl	$99, -132(%rbp)	#, j
	jg	.L5	#,
	call	__ctype_b_loc	#
	movq	(%rax), %rax	# *_27, D.3059
	movl	-136(%rbp), %ecx	# position, tmp174
	movl	-132(%rbp), %edx	# j, tmp175
	addl	%ecx, %edx	# tmp174, D.3064
	movslq	%edx, %rcx	# D.3064, D.3060
	movq	-152(%rbp), %rdx	# f, tmp176
	addq	%rcx, %rdx	# D.3060, D.3061
	movzbl	(%rdx), %edx	# *_31, D.3062
	movsbq	%dl, %rdx	# D.3062, D.3057
	addq	%rdx, %rdx	# D.3057
	addq	%rdx, %rax	# D.3057, D.3059
	movzwl	(%rax), %eax	# *_35, D.3063
	movzwl	%ax, %eax	# D.3063, D.3064
	andl	$2048, %eax	#, D.3064
	testl	%eax, %eax	# D.3064
	jne	.L6	#,
.L5:
	movl	-132(%rbp), %eax	# j, tmp178
	cltq
	movb	$0, -128(%rbp,%rax)	#, t.value
	movl	-132(%rbp), %eax	# j, tmp179
	addl	$1, %eax	#, D.3064
	movl	%eax, -28(%rbp)	# D.3064, t.size
	movl	$1, -24(%rbp)	#, t.type
	movl	-140(%rbp), %eax	# tokens_length, tmp180
	movslq	%eax, %rdx	# tmp180, D.3057
	movq	%rdx, %rax	# D.3057, tmp181
	addq	%rax, %rax	# tmp181
	addq	%rdx, %rax	# D.3057, tmp181
	leaq	0(,%rax,8), %rdx	#, tmp182
	addq	%rdx, %rax	# tmp182, tmp181
	salq	$2, %rax	#, tmp183
	movq	%rax, %rdx	# tmp181, D.3057
	movq	-168(%rbp), %rax	# tokens, tmp184
	addq	%rdx, %rax	# D.3057, D.3065
	movq	-128(%rbp), %rdx	# t, tmp185
	movq	%rdx, (%rax)	# tmp185, *_52
	movq	-120(%rbp), %rdx	# t, tmp186
	movq	%rdx, 8(%rax)	# tmp186, *_52
	movq	-112(%rbp), %rdx	# t, tmp187
	movq	%rdx, 16(%rax)	# tmp187, *_52
	movq	-104(%rbp), %rdx	# t, tmp188
	movq	%rdx, 24(%rax)	# tmp188, *_52
	movq	-96(%rbp), %rdx	# t, tmp189
	movq	%rdx, 32(%rax)	# tmp189, *_52
	movq	-88(%rbp), %rdx	# t, tmp190
	movq	%rdx, 40(%rax)	# tmp190, *_52
	movq	-80(%rbp), %rdx	# t, tmp191
	movq	%rdx, 48(%rax)	# tmp191, *_52
	movq	-72(%rbp), %rdx	# t, tmp192
	movq	%rdx, 56(%rax)	# tmp192, *_52
	movq	-64(%rbp), %rdx	# t, tmp193
	movq	%rdx, 64(%rax)	# tmp193, *_52
	movq	-56(%rbp), %rdx	# t, tmp194
	movq	%rdx, 72(%rax)	# tmp194, *_52
	movq	-48(%rbp), %rdx	# t, tmp195
	movq	%rdx, 80(%rax)	# tmp195, *_52
	movq	-40(%rbp), %rdx	# t, tmp196
	movq	%rdx, 88(%rax)	# tmp196, *_52
	movq	-32(%rbp), %rdx	# t, tmp197
	movq	%rdx, 96(%rax)	# tmp197, *_52
	movl	-24(%rbp), %edx	# t, tmp198
	movl	%edx, 104(%rax)	# tmp198, *_52
	addl	$1, -140(%rbp)	#, tokens_length
	movl	-132(%rbp), %eax	# j, tmp199
	addl	%eax, -136(%rbp)	# tmp199, position
	jmp	.L2	#
.L3:
	movl	-136(%rbp), %eax	# position, tmp200
	movslq	%eax, %rdx	# tmp200, D.3060
	movq	-152(%rbp), %rax	# f, tmp201
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_58, D.3062
	cmpb	$43, %al	#, D.3062
	je	.L7	#,
	movl	-136(%rbp), %eax	# position, tmp202
	movslq	%eax, %rdx	# tmp202, D.3060
	movq	-152(%rbp), %rax	# f, tmp203
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_61, D.3062
	cmpb	$45, %al	#, D.3062
	je	.L7	#,
	movl	-136(%rbp), %eax	# position, tmp204
	movslq	%eax, %rdx	# tmp204, D.3060
	movq	-152(%rbp), %rax	# f, tmp205
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_64, D.3062
	cmpb	$42, %al	#, D.3062
	je	.L7	#,
	movl	-136(%rbp), %eax	# position, tmp206
	movslq	%eax, %rdx	# tmp206, D.3060
	movq	-152(%rbp), %rax	# f, tmp207
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_67, D.3062
	cmpb	$47, %al	#, D.3062
	je	.L7	#,
	movl	-136(%rbp), %eax	# position, tmp208
	movslq	%eax, %rdx	# tmp208, D.3060
	movq	-152(%rbp), %rax	# f, tmp209
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_70, D.3062
	cmpb	$40, %al	#, D.3062
	je	.L7	#,
	movl	-136(%rbp), %eax	# position, tmp210
	movslq	%eax, %rdx	# tmp210, D.3060
	movq	-152(%rbp), %rax	# f, tmp211
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_73, D.3062
	cmpb	$41, %al	#, D.3062
	jne	.L8	#,
.L7:
	movl	-136(%rbp), %eax	# position, tmp212
	movslq	%eax, %rdx	# tmp212, D.3060
	movq	-152(%rbp), %rax	# f, tmp213
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_77, D.3062
	movb	%al, -128(%rbp)	# D.3062, t.value
	movb	$0, -127(%rbp)	#, t.value
	movl	$2, -28(%rbp)	#, t.size
	movl	-136(%rbp), %eax	# position, tmp214
	movslq	%eax, %rdx	# tmp214, D.3060
	movq	-152(%rbp), %rax	# f, tmp215
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_83, D.3062
	cmpb	$43, %al	#, D.3062
	jne	.L9	#,
	movl	$4, -24(%rbp)	#, t.type
	jmp	.L10	#
.L9:
	movl	-136(%rbp), %eax	# position, tmp216
	movslq	%eax, %rdx	# tmp216, D.3060
	movq	-152(%rbp), %rax	# f, tmp217
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_87, D.3062
	cmpb	$45, %al	#, D.3062
	jne	.L11	#,
	movl	$5, -24(%rbp)	#, t.type
	jmp	.L10	#
.L11:
	movl	-136(%rbp), %eax	# position, tmp218
	movslq	%eax, %rdx	# tmp218, D.3060
	movq	-152(%rbp), %rax	# f, tmp219
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_91, D.3062
	cmpb	$42, %al	#, D.3062
	jne	.L12	#,
	movl	$6, -24(%rbp)	#, t.type
	jmp	.L10	#
.L12:
	movl	-136(%rbp), %eax	# position, tmp220
	movslq	%eax, %rdx	# tmp220, D.3060
	movq	-152(%rbp), %rax	# f, tmp221
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_95, D.3062
	cmpb	$47, %al	#, D.3062
	jne	.L13	#,
	movl	$7, -24(%rbp)	#, t.type
	jmp	.L10	#
.L13:
	movl	-136(%rbp), %eax	# position, tmp222
	movslq	%eax, %rdx	# tmp222, D.3060
	movq	-152(%rbp), %rax	# f, tmp223
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_99, D.3062
	cmpb	$40, %al	#, D.3062
	jne	.L14	#,
	movl	$2, -24(%rbp)	#, t.type
	jmp	.L10	#
.L14:
	movl	-136(%rbp), %eax	# position, tmp224
	movslq	%eax, %rdx	# tmp224, D.3060
	movq	-152(%rbp), %rax	# f, tmp225
	addq	%rdx, %rax	# D.3060, D.3061
	movzbl	(%rax), %eax	# *_103, D.3062
	cmpb	$41, %al	#, D.3062
	jne	.L10	#,
	movl	$3, -24(%rbp)	#, t.type
.L10:
	movl	-140(%rbp), %eax	# tokens_length, tmp226
	movslq	%eax, %rdx	# tmp226, D.3057
	movq	%rdx, %rax	# D.3057, tmp227
	addq	%rax, %rax	# tmp227
	addq	%rdx, %rax	# D.3057, tmp227
	leaq	0(,%rax,8), %rdx	#, tmp228
	addq	%rdx, %rax	# tmp228, tmp227
	salq	$2, %rax	#, tmp229
	movq	%rax, %rdx	# tmp227, D.3057
	movq	-168(%rbp), %rax	# tokens, tmp230
	addq	%rdx, %rax	# D.3057, D.3065
	movq	-128(%rbp), %rdx	# t, tmp231
	movq	%rdx, (%rax)	# tmp231, *_108
	movq	-120(%rbp), %rdx	# t, tmp232
	movq	%rdx, 8(%rax)	# tmp232, *_108
	movq	-112(%rbp), %rdx	# t, tmp233
	movq	%rdx, 16(%rax)	# tmp233, *_108
	movq	-104(%rbp), %rdx	# t, tmp234
	movq	%rdx, 24(%rax)	# tmp234, *_108
	movq	-96(%rbp), %rdx	# t, tmp235
	movq	%rdx, 32(%rax)	# tmp235, *_108
	movq	-88(%rbp), %rdx	# t, tmp236
	movq	%rdx, 40(%rax)	# tmp236, *_108
	movq	-80(%rbp), %rdx	# t, tmp237
	movq	%rdx, 48(%rax)	# tmp237, *_108
	movq	-72(%rbp), %rdx	# t, tmp238
	movq	%rdx, 56(%rax)	# tmp238, *_108
	movq	-64(%rbp), %rdx	# t, tmp239
	movq	%rdx, 64(%rax)	# tmp239, *_108
	movq	-56(%rbp), %rdx	# t, tmp240
	movq	%rdx, 72(%rax)	# tmp240, *_108
	movq	-48(%rbp), %rdx	# t, tmp241
	movq	%rdx, 80(%rax)	# tmp241, *_108
	movq	-40(%rbp), %rdx	# t, tmp242
	movq	%rdx, 88(%rax)	# tmp242, *_108
	movq	-32(%rbp), %rdx	# t, tmp243
	movq	%rdx, 96(%rax)	# tmp243, *_108
	movl	-24(%rbp), %edx	# t, tmp244
	movl	%edx, 104(%rax)	# tmp244, *_108
	addl	$1, -140(%rbp)	#, tokens_length
	addl	$1, -136(%rbp)	#, position
	jmp	.L2	#
.L8:
	addl	$1, -136(%rbp)	#, position
.L2:
	movl	-136(%rbp), %eax	# position, tmp245
	cltq
	cmpq	-160(%rbp), %rax	# size, D.3057
	jb	.L15	#,
	movl	-140(%rbp), %eax	# tokens_length, D.3064
	movq	-8(%rbp), %rsi	# D.3067, tmp248
	xorq	%fs:40, %rsi	#, tmp248
	je	.L17	#,
	call	__stack_chk_fail	#
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	k_tokenize, .-k_tokenize
	.ident	"GCC: (Ubuntu 5.2.1-22ubuntu2) 5.2.1 20151010"
	.section	.note.GNU-stack,"",@progbits

	.file	"PreprocTest.cpp"
	.text
.Ltext0:
	.section	.rodata
	.align 4
	.type	_ZL3TAU, @object
	.size	_ZL3TAU, 4
_ZL3TAU:
	.long	1086918619
	.text
	.globl	_Z20abm_AllocateOsMemoryPvm
	.type	_Z20abm_AllocateOsMemoryPvm, @function
_Z20abm_AllocateOsMemoryPvm:
.LFB12:
	.file 1 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/ab_memory_linux.h"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 16 0
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$34, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	mmap@PLT
	movq	%rax, -8(%rbp)
	.loc 1 18 0
	movq	-8(%rbp), %rax
	.loc 1 20 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	_Z20abm_AllocateOsMemoryPvm, .-_Z20abm_AllocateOsMemoryPvm
	.globl	_Z22abm_DeallocateOsMemoryPvm
	.type	_Z22abm_DeallocateOsMemoryPvm, @function
_Z22abm_DeallocateOsMemoryPvm:
.LFB13:
	.loc 1 24 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 1 25 0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	munmap@PLT
	.loc 1 26 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_Z22abm_DeallocateOsMemoryPvm, .-_Z22abm_DeallocateOsMemoryPvm
	.globl	_Z14abm_InitMemoryPvm
	.type	_Z14abm_InitMemoryPvm, @function
_Z14abm_InitMemoryPvm:
.LFB14:
	.file 2 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/ab_memory.h"
	.loc 2 55 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 55 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 56 0
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	.loc 2 57 0
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 58 0
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 59 0
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 61 0
	nop
	.loc 2 62 0
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	_Z14abm_InitMemoryPvm, .-_Z14abm_InitMemoryPvm
	.globl	_Z18abm_CreateSubArenaP12memory_arenam
	.type	_Z18abm_CreateSubArenaP12memory_arenam, @function
_Z18abm_CreateSubArenaP12memory_arenam:
.LFB15:
	.loc 2 66 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 2 66 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 67 0
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	.loc 2 68 0
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 2 69 0
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 70 0
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 72 0
	nop
	.loc 2 73 0
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	_Z18abm_CreateSubArenaP12memory_arenam, .-_Z18abm_CreateSubArenaP12memory_arenam
	.globl	_Z13abm_PushSize_P12memory_arenama
	.type	_Z13abm_PushSize_P12memory_arenama, @function
_Z13abm_PushSize_P12memory_arenama:
.LFB16:
	.loc 2 77 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movb	%al, -36(%rbp)
	.loc 2 78 0
	movq	$0, -8(%rbp)
	.loc 2 81 0
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 82 0
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
.LBB2:
	.loc 2 84 0
	cmpb	$0, -36(%rbp)
	je	.L11
.LBB3:
.LBB4:
	.loc 2 86 0
	movq	$0, -16(%rbp)
.L13:
	.loc 2 86 0 is_stmt 0 discriminator 3
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L11
	.loc 2 88 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 2 86 0 discriminator 2
	addq	$1, -16(%rbp)
	jmp	.L13
.L11:
.LBE4:
.LBE3:
.LBE2:
	.loc 2 92 0
	movq	-8(%rbp), %rax
	.loc 2 93 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_Z13abm_PushSize_P12memory_arenama, .-_Z13abm_PushSize_P12memory_arenama
	.globl	_Z24abm_BeginTemporaryMemoryP12memory_arena
	.type	_Z24abm_BeginTemporaryMemoryP12memory_arena, @function
_Z24abm_BeginTemporaryMemoryP12memory_arena:
.LFB17:
	.loc 2 97 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	.loc 2 97 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 2 98 0
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 2 99 0
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 100 0
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 2 102 0
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc 2 103 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	_Z24abm_BeginTemporaryMemoryP12memory_arena, .-_Z24abm_BeginTemporaryMemoryP12memory_arena
	.globl	_Z22abm_EndTemporaryMemory16temporary_memory
	.type	_Z22abm_EndTemporaryMemory16temporary_memory, @function
_Z22abm_EndTemporaryMemory16temporary_memory:
.LFB18:
	.loc 2 107 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 108 0
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 109 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	_Z22abm_EndTemporaryMemory16temporary_memory, .-_Z22abm_EndTemporaryMemory16temporary_memory
	.globl	_Z15abm_ResetMemoryP12memory_arena
	.type	_Z15abm_ResetMemoryP12memory_arena, @function
_Z15abm_ResetMemoryP12memory_arena:
.LFB19:
	.loc 2 114 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 2 115 0
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 116 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_Z15abm_ResetMemoryP12memory_arena, .-_Z15abm_ResetMemoryP12memory_arena
	.section	.text._Z17abm_GetMemoryLeftP12memory_arena,"axG",@progbits,_Z17abm_GetMemoryLeftP12memory_arena,comdat
	.weak	_Z17abm_GetMemoryLeftP12memory_arena
	.type	_Z17abm_GetMemoryLeftP12memory_arena, @function
_Z17abm_GetMemoryLeftP12memory_arena:
.LFB20:
	.loc 2 120 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 2 121 0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 2 123 0
	movq	-8(%rbp), %rax
	.loc 2 124 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	_Z17abm_GetMemoryLeftP12memory_arena, .-_Z17abm_GetMemoryLeftP12memory_arena
	.section	.text._ZN13abs_stringptrC2EPKcj,"axG",@progbits,_ZN13abs_stringptrC5EPKcj,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPKcj
	.type	_ZN13abs_stringptrC2EPKcj, @function
_ZN13abs_stringptrC2EPKcj:
.LFB22:
	.file 3 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/ab_string.h"
	.loc 3 15 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB5:
	.loc 3 15 0
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
.LBE5:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN13abs_stringptrC2EPKcj, .-_ZN13abs_stringptrC2EPKcj
	.weak	_ZN13abs_stringptrC1EPKcj
	.set	_ZN13abs_stringptrC1EPKcj,_ZN13abs_stringptrC2EPKcj
	.section	.text._ZN13abs_stringptrC2EPKci,"axG",@progbits,_ZN13abs_stringptrC5EPKci,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPKci
	.type	_ZN13abs_stringptrC2EPKci, @function
_ZN13abs_stringptrC2EPKci:
.LFB25:
	.loc 3 16 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.LBB6:
	.loc 3 16 0
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
.LBE6:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN13abs_stringptrC2EPKci, .-_ZN13abs_stringptrC2EPKci
	.weak	_ZN13abs_stringptrC1EPKci
	.set	_ZN13abs_stringptrC1EPKci,_ZN13abs_stringptrC2EPKci
	.section	.text._ZN13abs_stringptrC2EPKc,"axG",@progbits,_ZN13abs_stringptrC5EPKc,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPKc
	.type	_ZN13abs_stringptrC2EPKc, @function
_ZN13abs_stringptrC2EPKc:
.LFB28:
	.loc 3 17 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB7:
	.loc 3 17 0
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movl	$1024, %esi
	movq	%rax, %rdi
	call	_Z16abs_StringLengthPKcj
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
.LBE7:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN13abs_stringptrC2EPKc, .-_ZN13abs_stringptrC2EPKc
	.weak	_ZN13abs_stringptrC1EPKc
	.set	_ZN13abs_stringptrC1EPKc,_ZN13abs_stringptrC2EPKc
	.section	.text._ZNK13abs_stringptrcvPKcEv,"axG",@progbits,_ZNK13abs_stringptrcvPKcEv,comdat
	.align 2
	.weak	_ZNK13abs_stringptrcvPKcEv
	.type	_ZNK13abs_stringptrcvPKcEv, @function
_ZNK13abs_stringptrcvPKcEv:
.LFB36:
	.loc 3 20 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 3 20 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	_ZNK13abs_stringptrcvPKcEv, .-_ZNK13abs_stringptrcvPKcEv
	.text
	.globl	_Z27abs_AreStringFragmentsEqualPKcS0_ja
	.type	_Z27abs_AreStringFragmentsEqualPKcS0_ja, @function
_Z27abs_AreStringFragmentsEqualPKcS0_ja:
.LFB37:
	.loc 3 48 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, %eax
	movb	%al, -56(%rbp)
	.loc 3 49 0
	movb	$0, -23(%rbp)
	.loc 3 50 0
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 3 51 0
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 52 0
	movl	$0, -20(%rbp)
.L33:
	.loc 3 54 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L28
	.loc 3 54 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L28
	.loc 3 54 0 discriminator 2
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jnb	.L28
.LBB8:
	.loc 3 57 0 is_stmt 1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -22(%rbp)
	.loc 3 58 0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -21(%rbp)
	.loc 3 59 0
	cmpb	$0, -56(%rbp)
	je	.L29
	.loc 3 61 0
	cmpb	$96, -22(%rbp)
	jle	.L30
	.loc 3 61 0 is_stmt 0 discriminator 1
	cmpb	$122, -22(%rbp)
	jg	.L30
	.loc 3 64 0 is_stmt 1
	movzbl	-22(%rbp), %eax
	subl	$32, %eax
	movb	%al, -22(%rbp)
.L30:
	.loc 3 66 0
	cmpb	$96, -21(%rbp)
	jle	.L29
	.loc 3 66 0 is_stmt 0 discriminator 1
	cmpb	$122, -21(%rbp)
	jg	.L29
	.loc 3 69 0 is_stmt 1
	movzbl	-21(%rbp), %eax
	subl	$32, %eax
	movb	%al, -21(%rbp)
.L29:
	.loc 3 72 0
	movzbl	-22(%rbp), %eax
	cmpb	-21(%rbp), %al
	jne	.L31
	.loc 3 74 0
	movb	$1, -23(%rbp)
	.loc 3 75 0
	addq	$1, -16(%rbp)
	.loc 3 76 0
	addq	$1, -8(%rbp)
	jmp	.L37
.L31:
	.loc 3 80 0
	movb	$0, -23(%rbp)
	.loc 3 81 0
	jmp	.L28
.L37:
	.loc 3 84 0
	addl	$1, -20(%rbp)
.LBE8:
	.loc 3 54 0
	jmp	.L33
.L28:
	.loc 3 87 0
	cmpb	$0, -23(%rbp)
	je	.L34
	.loc 3 87 0 is_stmt 0 discriminator 1
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.L34
	.loc 3 87 0 discriminator 3
	movl	$1, %eax
	jmp	.L35
.L34:
	.loc 3 87 0 discriminator 4
	movl	$0, %eax
.L35:
	.loc 3 89 0 is_stmt 1 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	_Z27abs_AreStringFragmentsEqualPKcS0_ja, .-_Z27abs_AreStringFragmentsEqualPKcS0_ja
	.globl	_Z19abs_AreStringsEqualPKcjS0_ja
	.type	_Z19abs_AreStringsEqualPKcjS0_ja, @function
_Z19abs_AreStringsEqualPKcjS0_ja:
.LFB38:
	.loc 3 93 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, %eax
	movb	%al, -44(%rbp)
	.loc 3 94 0
	movb	$0, -1(%rbp)
	.loc 3 95 0
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.L39
	.loc 3 97 0
	movsbl	-44(%rbp), %ecx
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z27abs_AreStringFragmentsEqualPKcS0_ja
	movb	%al, -1(%rbp)
.L39:
	.loc 3 101 0
	movzbl	-1(%rbp), %eax
	.loc 3 102 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_Z19abs_AreStringsEqualPKcjS0_ja, .-_Z19abs_AreStringsEqualPKcjS0_ja
	.globl	_Z19abs_AreStringsEqualPKcjS0_j
	.type	_Z19abs_AreStringsEqualPKcjS0_j, @function
_Z19abs_AreStringsEqualPKcjS0_j:
.LFB39:
	.loc 3 106 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -16(%rbp)
	.loc 3 107 0
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	.loc 3 108 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.size	_Z19abs_AreStringsEqualPKcjS0_j, .-_Z19abs_AreStringsEqualPKcjS0_j
	.globl	_Z19abs_AreStringsEqual13abs_stringptrS_a
	.type	_Z19abs_AreStringsEqual13abs_stringptrS_a, @function
_Z19abs_AreStringsEqual13abs_stringptrS_a:
.LFB40:
	.loc 3 112 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, %eax
	movb	%al, -36(%rbp)
	.loc 3 113 0
	movsbl	-36(%rbp), %edi
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	.loc 3 114 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_Z19abs_AreStringsEqual13abs_stringptrS_a, .-_Z19abs_AreStringsEqual13abs_stringptrS_a
	.globl	_Z19abs_AreStringsEqual13abs_stringptrS_
	.type	_Z19abs_AreStringsEqual13abs_stringptrS_, @function
_Z19abs_AreStringsEqual13abs_stringptrS_:
.LFB41:
	.loc 3 118 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 3 119 0
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	.loc 3 120 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.size	_Z19abs_AreStringsEqual13abs_stringptrS_, .-_Z19abs_AreStringsEqual13abs_stringptrS_
	.globl	_Z19abs_AreStringsEqualPKcj13abs_stringptr
	.type	_Z19abs_AreStringsEqualPKcj13abs_stringptr, @function
_Z19abs_AreStringsEqualPKcj13abs_stringptr:
.LFB42:
	.loc 3 124 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 3 125 0
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	.loc 3 126 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	_Z19abs_AreStringsEqualPKcj13abs_stringptr, .-_Z19abs_AreStringsEqualPKcj13abs_stringptr
	.globl	_Z16abs_StringLengthPKcj
	.type	_Z16abs_StringLengthPKcj, @function
_Z16abs_StringLengthPKcj:
.LFB43:
	.loc 3 130 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 3 131 0
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 3 132 0
	movl	$0, -12(%rbp)
.L53:
	.loc 3 133 0
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jnb	.L50
	.loc 3 135 0
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L55
	.loc 3 135 0 is_stmt 0 discriminator 1
	addl	$1, -12(%rbp)
	.loc 3 133 0 is_stmt 1 discriminator 1
	jmp	.L53
.L55:
	.loc 3 136 0
	nop
.L50:
	.loc 3 139 0
	movl	-12(%rbp), %eax
	.loc 3 140 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	_Z16abs_StringLengthPKcj, .-_Z16abs_StringLengthPKcj
	.globl	_Z14abs_FindInList13abs_stringptrjPKS_a
	.type	_Z14abs_FindInList13abs_stringptrjPKS_a, @function
_Z14abs_FindInList13abs_stringptrjPKS_a:
.LFB44:
	.loc 3 144 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, %rax
	movq	%rsi, %r9
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r9, %rdi
	movq	%rsi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, %eax
	movb	%al, -40(%rbp)
	.loc 3 145 0
	movl	-36(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB9:
	.loc 3 147 0
	movl	$0, -4(%rbp)
.L59:
	.loc 3 148 0
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jnb	.L57
	.loc 3 151 0
	movsbl	-40(%rbp), %edi
	movl	-4(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %ecx
	movl	-4(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movl	-24(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L58
	.loc 3 153 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	.loc 3 154 0
	jmp	.L57
.L58:
	.loc 3 147 0
	addl	$1, -4(%rbp)
	jmp	.L59
.L57:
.LBE9:
	.loc 3 158 0
	movl	-8(%rbp), %eax
	.loc 3 159 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	_Z14abs_FindInList13abs_stringptrjPKS_a, .-_Z14abs_FindInList13abs_stringptrjPKS_a
	.globl	_Z14abs_FindInListPKcjPK13abs_stringptra
	.type	_Z14abs_FindInListPKcjPK13abs_stringptra, @function
_Z14abs_FindInListPKcjPK13abs_stringptra:
.LFB45:
	.loc 3 163 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, %eax
	movb	%al, -48(%rbp)
	.loc 3 164 0
	movl	-44(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 3 165 0
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -20(%rbp)
.LBB10:
	.loc 3 167 0
	movl	$0, -24(%rbp)
.L64:
	.loc 3 168 0
	movl	-24(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jnb	.L62
	.loc 3 171 0
	movsbl	-48(%rbp), %ebx
	movl	-24(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNK13abs_stringptrcvPKcEv
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, %r12d
	movl	-24(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNK13abs_stringptrcvPKcEv
	movq	%rax, %rdx
	movl	-20(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	%ebx, %r8d
	movl	%r12d, %ecx
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L63
	.loc 3 173 0
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	.loc 3 174 0
	jmp	.L62
.L63:
	.loc 3 167 0
	addl	$1, -24(%rbp)
	jmp	.L64
.L62:
.LBE10:
	.loc 3 178 0
	movl	-28(%rbp), %eax
	.loc 3 179 0
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	_Z14abs_FindInListPKcjPK13abs_stringptra, .-_Z14abs_FindInListPKcjPK13abs_stringptra
	.globl	_Z14abs_StringCopyPcPKcm
	.type	_Z14abs_StringCopyPcPKcm, @function
_Z14abs_StringCopyPcPKcm:
.LFB46:
	.loc 3 182 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 3 183 0
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	.loc 3 184 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.size	_Z14abs_StringCopyPcPKcm, .-_Z14abs_StringCopyPcPKcm
	.globl	_Z19abs_CreateStringPtrP12memory_arenaPKc
	.type	_Z19abs_CreateStringPtrP12memory_arenaPKc, @function
_Z19abs_CreateStringPtrP12memory_arenaPKc:
.LFB47:
	.loc 3 188 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 3 188 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 3 189 0
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z17abm_GetMemoryLeftP12memory_arena
	leal	-1(%rax), %edx
	movq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z16abs_StringLengthPKcj
	movl	%eax, -44(%rbp)
	.loc 3 190 0
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -40(%rbp)
	.loc 3 192 0
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z14abs_StringCopyPcPKcm
	.loc 3 193 0
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKcj
	.loc 3 195 0
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	.loc 3 196 0
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE47:
	.size	_Z19abs_CreateStringPtrP12memory_arenaPKc, .-_Z19abs_CreateStringPtrP12memory_arenaPKc
	.globl	_Z14abs_Capitalize13abs_stringptrP12memory_arena
	.type	_Z14abs_Capitalize13abs_stringptrP12memory_arena, @function
_Z14abs_Capitalize13abs_stringptrP12memory_arena:
.LFB48:
	.loc 3 200 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 3 200 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 201 0
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -56(%rbp)
.LBB11:
	.loc 3 202 0
	movl	$0, -60(%rbp)
.L75:
	.loc 3 202 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jnb	.L72
	.loc 3 204 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L73
	.loc 3 204 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$122, %al
	jg	.L73
	.loc 3 206 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leal	-32(%rax), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L74
.L73:
	.loc 3 210 0
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L74:
	.loc 3 202 0 discriminator 2
	addl	$1, -60(%rbp)
	jmp	.L75
.L72:
.LBE11:
	.loc 3 213 0
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKcj
	.loc 3 215 0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	.loc 3 217 0
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L77
	call	__stack_chk_fail@PLT
.L77:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.size	_Z14abs_Capitalize13abs_stringptrP12memory_arena, .-_Z14abs_Capitalize13abs_stringptrP12memory_arena
	.globl	_Z13abs_Lowercase13abs_stringptrP12memory_arena
	.type	_Z13abs_Lowercase13abs_stringptrP12memory_arena, @function
_Z13abs_Lowercase13abs_stringptrP12memory_arena:
.LFB49:
	.loc 3 221 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 3 221 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 3 222 0
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -56(%rbp)
.LBB12:
	.loc 3 223 0
	movl	$0, -60(%rbp)
.L82:
	.loc 3 223 0 is_stmt 0 discriminator 1
	movl	-72(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jnb	.L79
	.loc 3 225 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L80
	.loc 3 225 0 is_stmt 0 discriminator 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$90, %al
	jg	.L80
	.loc 3 227 0 is_stmt 1
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	leal	32(%rax), %ecx
	movl	-60(%rbp), %edx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	jmp	.L81
.L80:
	.loc 3 231 0
	movq	-80(%rbp), %rdx
	movl	-60(%rbp), %eax
	addq	%rdx, %rax
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
.L81:
	.loc 3 223 0 discriminator 2
	addl	$1, -60(%rbp)
	jmp	.L82
.L79:
.LBE12:
	.loc 3 234 0
	movl	-72(%rbp), %edx
	movq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKcj
	.loc 3 236 0
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	.loc 3 238 0
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L84
	call	__stack_chk_fail@PLT
.L84:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE49:
	.size	_Z13abs_Lowercase13abs_stringptrP12memory_arena, .-_Z13abs_Lowercase13abs_stringptrP12memory_arena
	.section	.rodata
	.align 4
	.type	_ZL14test_cmd_Count, @object
	.size	_ZL14test_cmd_Count, 4
_ZL14test_cmd_Count:
	.long	6
.LC0:
	.string	"NOP"
.LC1:
	.string	"Command1"
.LC2:
	.string	"Command2"
.LC3:
	.string	"Command3"
.LC4:
	.string	"Command4"
.LC5:
	.string	"Last"
	.section	.data.rel.ro.local,"aw",@progbits
	.align 32
	.type	_ZL16test_cmd_Strings, @object
	.size	_ZL16test_cmd_Strings, 96
_ZL16test_cmd_Strings:
	.quad	.LC0
	.long	3
	.zero	4
	.quad	.LC1
	.long	8
	.zero	4
	.quad	.LC2
	.long	8
	.zero	4
	.quad	.LC3
	.long	8
	.zero	4
	.quad	.LC4
	.long	8
	.zero	4
	.quad	.LC5
	.long	4
	.zero	4
	.section	.rodata
	.align 4
	.type	_ZL13Colours_Count, @object
	.size	_ZL13Colours_Count, 4
_ZL13Colours_Count:
	.long	3
.LC6:
	.string	"Red"
.LC7:
	.string	"Green"
.LC8:
	.string	"Blue"
	.section	.data.rel.ro.local
	.align 32
	.type	_ZL15Colours_Strings, @object
	.size	_ZL15Colours_Strings, 48
_ZL15Colours_Strings:
	.quad	.LC6
	.long	3
	.zero	4
	.quad	.LC7
	.long	5
	.zero	4
	.quad	.LC8
	.long	4
	.zero	4
	.globl	Colours_LabelObject
	.section	.rodata
.LC9:
	.string	"Apple"
.LC10:
	.string	"Brocoli"
.LC11:
	.string	"Blueberry"
	.section	.data.rel.local,"aw",@progbits
	.align 16
	.type	Colours_LabelObject, @object
	.size	Colours_LabelObject, 24
Colours_LabelObject:
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.data
	.type	_ZL13stbsp__period, @object
	.size	_ZL13stbsp__period, 1
_ZL13stbsp__period:
	.byte	46
	.type	_ZL12stbsp__comma, @object
	.size	_ZL12stbsp__comma, 1
_ZL12stbsp__comma:
	.byte	44
	.align 32
	.type	_ZL16stbsp__digitpair, @object
	.size	_ZL16stbsp__digitpair, 204
_ZL16stbsp__digitpair:
	.value	0
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.zero	1
	.text
	.globl	stbsp_set_separators
	.type	stbsp_set_separators, @function
stbsp_set_separators:
.LFB50:
	.file 4 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/stb_sprintf.h"
	.loc 4 260 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %edx
	movl	%esi, %eax
	movb	%dl, -4(%rbp)
	movb	%al, -8(%rbp)
	.loc 4 261 0
	movzbl	-8(%rbp), %eax
	movb	%al, _ZL13stbsp__period(%rip)
	.loc 4 262 0
	movzbl	-4(%rbp), %eax
	movb	%al, _ZL12stbsp__comma(%rip)
	.loc 4 263 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE50:
	.size	stbsp_set_separators, .-stbsp_set_separators
	.type	_ZL16stbsp__lead_signjPc, @function
_ZL16stbsp__lead_signjPc:
.LFB51:
	.loc 4 280 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 4 281 0
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 4 282 0
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L87
	.loc 4 283 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 4 284 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$45, (%rax)
	.loc 4 292 0
	jmp	.L90
.L87:
	.loc 4 285 0
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L89
	.loc 4 286 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 4 287 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$32, (%rax)
	.loc 4 292 0
	jmp	.L90
.L89:
	.loc 4 288 0
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L90
	.loc 4 289 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 4 290 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$43, (%rax)
.L90:
	.loc 4 292 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.size	_ZL16stbsp__lead_signjPc, .-_ZL16stbsp__lead_signjPc
	.data
	.align 16
	.type	_ZZ16stbsp_vsprintfcbE3hex, @object
	.size	_ZZ16stbsp_vsprintfcbE3hex, 19
_ZZ16stbsp_vsprintfcbE3hex:
	.string	"0123456789abcdefxp"
	.align 16
	.type	_ZZ16stbsp_vsprintfcbE4hexu, @object
	.size	_ZZ16stbsp_vsprintfcbE4hexu, 19
_ZZ16stbsp_vsprintfcbE4hexu:
	.string	"0123456789ABCDEFXP"
	.section	.rodata
.LC12:
	.string	"null"
.LC16:
	.string	"_KMGT"
.LC17:
	.string	"_kMGT"
	.text
	.globl	stbsp_vsprintfcb
	.type	stbsp_vsprintfcb, @function
stbsp_vsprintfcb:
.LFB52:
	.loc 4 295 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$848, %rsp
	movq	%rdi, -808(%rbp)
	movq	%rsi, -816(%rbp)
	movq	%rdx, -824(%rbp)
	movq	%rcx, -832(%rbp)
	movq	%r8, -840(%rbp)
	.loc 4 295 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 300 0
	movl	$0, -776(%rbp)
	.loc 4 302 0
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	.loc 4 303 0
	movq	-832(%rbp), %rax
	movq	%rax, -608(%rbp)
.L101:
.LBB13:
.LBB14:
.LBB15:
.LBB16:
	.loc 4 338 0
	movq	-608(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L92
.LBB17:
	.loc 4 339 0
	nop
	jmp	.L93
.L470:
.LBE17:
.LBB26:
.LBB27:
	.loc 4 357 0
	nop
	jmp	.L93
.L472:
	.loc 4 362 0
	nop
.L93:
.LBE27:
.LBE26:
.LBB30:
	.loc 4 340 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L467
	.loc 4 342 0
	nop
	jmp	.L94
.L471:
.LBE30:
.LBB31:
.LBB28:
	.loc 4 359 0
	nop
.L94:
.LBE28:
.LBE31:
.LBB32:
	.loc 4 343 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L468
.LBB18:
.LBB19:
	.loc 4 345 0
	cmpq	$0, -808(%rbp)
	je	.L98
.LBB20:
.LBB21:
	.loc 4 345 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -640(%rbp)
	movl	-640(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L98
	.loc 4 345 0 discriminator 2
	movl	-640(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-640(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL0:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L469
.L98:
.LBE21:
.LBE20:
.LBE19:
.LBE18:
	.loc 4 346 0 is_stmt 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 4 347 0
	addq	$1, -608(%rbp)
.LBE32:
	.loc 4 338 0
	jmp	.L101
.L92:
.LBB33:
.LBB29:
	.loc 4 354 0
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -724(%rbp)
	.loc 4 355 0
	movl	-724(%rbp), %eax
	notl	%eax
	andl	$-2139062144, %eax
	movl	%eax, -720(%rbp)
	.loc 4 356 0
	movl	-724(%rbp), %eax
	xorl	$623191333, %eax
	subl	$16843009, %eax
	andl	-720(%rbp), %eax
	testl	%eax, %eax
	jne	.L470
	.loc 4 358 0
	movl	-724(%rbp), %eax
	subl	$16843009, %eax
	andl	-720(%rbp), %eax
	testl	%eax, %eax
	jne	.L471
	.loc 4 360 0
	cmpq	$0, -808(%rbp)
	je	.L104
	.loc 4 361 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$3, %eax
	jle	.L472
.L104:
	.loc 4 372 0
	movq	-616(%rbp), %rax
	movl	-724(%rbp), %edx
	movl	%edx, (%rax)
	.loc 4 374 0
	addq	$4, -616(%rbp)
	.loc 4 375 0
	addq	$4, -608(%rbp)
.LBE29:
	.loc 4 376 0
	jmp	.L92
.L467:
.LBE33:
.LBB34:
	.loc 4 341 0
	nop
.L95:
.LBE34:
.LBE16:
.LBE15:
	.loc 4 380 0
	addq	$1, -608(%rbp)
	.loc 4 383 0
	movl	$0, -772(%rbp)
	.loc 4 384 0
	movl	$-1, -788(%rbp)
	.loc 4 385 0
	movl	$0, -764(%rbp)
	.loc 4 386 0
	movl	$0, -768(%rbp)
.L121:
	.loc 4 390 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$32, %eax
	cmpl	$63, %eax
	ja	.L473
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L107(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L107(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L107:
	.long	.L106-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L108-.L107
	.long	.L109-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L110-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L111-.L107
	.long	.L473-.L107
	.long	.L112-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L113-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L473-.L107
	.long	.L114-.L107
	.text
.L112:
	.loc 4 393 0 discriminator 5
	orl	$1, -764(%rbp)
	.loc 4 394 0 discriminator 5
	addq	$1, -608(%rbp)
	.loc 4 395 0 discriminator 5
	jmp	.L115
.L111:
	.loc 4 398 0 discriminator 4
	orl	$2, -764(%rbp)
	.loc 4 399 0 discriminator 4
	addq	$1, -608(%rbp)
	.loc 4 400 0 discriminator 4
	jmp	.L115
.L106:
	.loc 4 403 0 discriminator 1
	orl	$4, -764(%rbp)
	.loc 4 404 0 discriminator 1
	addq	$1, -608(%rbp)
	.loc 4 405 0 discriminator 1
	jmp	.L115
.L108:
	.loc 4 408 0 discriminator 2
	orl	$8, -764(%rbp)
	.loc 4 409 0 discriminator 2
	addq	$1, -608(%rbp)
	.loc 4 410 0 discriminator 2
	jmp	.L115
.L110:
	.loc 4 413 0 discriminator 3
	orl	$64, -764(%rbp)
	.loc 4 414 0 discriminator 3
	addq	$1, -608(%rbp)
	.loc 4 415 0 discriminator 3
	jmp	.L115
.L109:
	.loc 4 418 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L116
	.loc 4 419 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L117
	.loc 4 420 0
	orl	$4096, -764(%rbp)
	jmp	.L119
.L117:
	.loc 4 422 0
	orl	$2048, -764(%rbp)
	jmp	.L119
.L116:
	.loc 4 425 0
	orl	$256, -764(%rbp)
.L119:
	.loc 4 427 0
	addq	$1, -608(%rbp)
	.loc 4 428 0
	jmp	.L115
.L114:
	.loc 4 431 0 discriminator 6
	orl	$1024, -764(%rbp)
	.loc 4 432 0 discriminator 6
	addq	$1, -608(%rbp)
	.loc 4 433 0 discriminator 6
	jmp	.L115
.L113:
	.loc 4 436 0
	orl	$16, -764(%rbp)
	.loc 4 437 0
	addq	$1, -608(%rbp)
	.loc 4 438 0
	jmp	.L120
.L115:
	.loc 4 390 0
	jmp	.L121
.L473:
	.loc 4 439 0
	nop
.L120:
	.loc 4 445 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L122
	.loc 4 446 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L123
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L124
.L123:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L124:
	movl	(%rax), %eax
	.loc 4 446 0
	movl	%eax, -772(%rbp)
	.loc 4 447 0
	addq	$1, -608(%rbp)
	jmp	.L125
.L122:
	.loc 4 449 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L125
	.loc 4 449 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L125
	.loc 4 450 0 is_stmt 1
	movl	-772(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -772(%rbp)
	.loc 4 451 0
	addq	$1, -608(%rbp)
	.loc 4 449 0
	jmp	.L122
.L125:
	.loc 4 455 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L126
	.loc 4 456 0
	addq	$1, -608(%rbp)
	.loc 4 457 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L127
	.loc 4 458 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L128
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L129
.L128:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L129:
	movl	(%rax), %eax
	.loc 4 458 0
	movl	%eax, -788(%rbp)
	.loc 4 459 0
	addq	$1, -608(%rbp)
	jmp	.L126
.L127:
	.loc 4 461 0
	movl	$0, -788(%rbp)
.L130:
	.loc 4 462 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L126
	.loc 4 462 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L126
	.loc 4 463 0 is_stmt 1
	movl	-788(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -788(%rbp)
	.loc 4 464 0
	addq	$1, -608(%rbp)
	.loc 4 462 0
	jmp	.L130
.L126:
	.loc 4 470 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$73, %eax
	cmpl	$49, %eax
	ja	.L474
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L133(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L133(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L133:
	.long	.L132-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L134-.L133
	.long	.L474-.L133
	.long	.L135-.L133
	.long	.L474-.L133
	.long	.L136-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L137-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L474-.L133
	.long	.L138-.L133
	.text
.L134:
	.loc 4 473 0
	orl	$512, -764(%rbp)
	.loc 4 474 0
	addq	$1, -608(%rbp)
	.loc 4 475 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$104, %al
	jne	.L475
	.loc 4 476 0
	addq	$1, -608(%rbp)
	.loc 4 477 0
	jmp	.L475
.L136:
	.loc 4 480 0
	orl	$32, -764(%rbp)
	.loc 4 481 0
	addq	$1, -608(%rbp)
	.loc 4 482 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$108, %al
	jne	.L476
	.loc 4 483 0
	orl	$32, -764(%rbp)
	.loc 4 484 0
	addq	$1, -608(%rbp)
	.loc 4 486 0
	jmp	.L476
.L135:
	.loc 4 489 0
	orl	$32, -764(%rbp)
	.loc 4 490 0
	addq	$1, -608(%rbp)
	.loc 4 491 0
	jmp	.L140
.L138:
	.loc 4 494 0
	orl	$32, -764(%rbp)
	.loc 4 495 0
	addq	$1, -608(%rbp)
	.loc 4 496 0
	jmp	.L140
.L137:
	.loc 4 498 0
	orl	$32, -764(%rbp)
	.loc 4 499 0
	addq	$1, -608(%rbp)
	.loc 4 500 0
	jmp	.L140
.L132:
	.loc 4 503 0
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$54, %al
	jne	.L142
	.loc 4 503 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$52, %al
	jne	.L142
	.loc 4 504 0 is_stmt 1
	orl	$32, -764(%rbp)
	.loc 4 505 0
	addq	$3, -608(%rbp)
	jmp	.L143
.L142:
	.loc 4 506 0
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$51, %al
	jne	.L144
	.loc 4 506 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$50, %al
	jne	.L144
	.loc 4 507 0 is_stmt 1
	addq	$3, -608(%rbp)
	jmp	.L143
.L144:
	.loc 4 509 0
	orl	$32, -764(%rbp)
	.loc 4 510 0
	addq	$1, -608(%rbp)
	.loc 4 512 0
	jmp	.L140
.L143:
	jmp	.L140
.L474:
	.loc 4 513 0
	nop
	jmp	.L140
.L475:
	.loc 4 477 0
	nop
	jmp	.L140
.L476:
	.loc 4 486 0
	nop
.L140:
.LBB39:
	.loc 4 517 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	cmpl	$55, %eax
	ja	.L145
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L147(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L147(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L147:
	.long	.L146-.L147
	.long	.L148-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L149-.L147
	.long	.L145-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L151-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L146-.L147
	.long	.L148-.L147
	.long	.L152-.L147
	.long	.L153-.L147
	.long	.L149-.L147
	.long	.L154-.L147
	.long	.L150-.L147
	.long	.L145-.L147
	.long	.L153-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L155-.L147
	.long	.L156-.L147
	.long	.L157-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L158-.L147
	.long	.L145-.L147
	.long	.L153-.L147
	.long	.L145-.L147
	.long	.L145-.L147
	.long	.L151-.L147
	.text
.L158:
.LBB40:
	.loc 4 534 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L159
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L160
.L159:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L160:
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	.loc 4 535 0
	cmpq	$0, -600(%rbp)
	jne	.L161
	.loc 4 536 0
	leaq	.LC12(%rip), %rax
	movq	%rax, -600(%rbp)
.L161:
	.loc 4 538 0
	movq	-600(%rbp), %rax
	movq	%rax, -624(%rbp)
.L166:
	.loc 4 540 0
	movq	-624(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L477
	.loc 4 542 0
	nop
	jmp	.L162
.L480:
	.loc 4 561 0
	nop
	jmp	.L162
.L481:
.LBB41:
	.loc 4 557 0
	nop
.L162:
.LBE41:
	.loc 4 543 0
	movq	-624(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L478
	.loc 4 545 0
	movq	-624(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
	.loc 4 540 0
	jmp	.L166
.L477:
	.loc 4 541 0
	nop
	.loc 4 547 0
	movl	$-1, -760(%rbp)
	.loc 4 548 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	js	.L171
	.loc 4 549 0
	movq	-624(%rbp), %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -760(%rbp)
	.loc 4 550 0
	movl	-788(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L479
	.loc 4 552 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -760(%rbp)
.L171:
	.loc 4 554 0
	cmpl	$0, -760(%rbp)
	je	.L480
.LBB42:
	.loc 4 555 0
	movq	-624(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -716(%rbp)
	.loc 4 556 0
	movl	-716(%rbp), %eax
	leal	-16843009(%rax), %edx
	movl	-716(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	andl	$-2139062144, %eax
	testl	%eax, %eax
	jne	.L481
	.loc 4 558 0
	movq	-624(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -624(%rbp)
	.loc 4 559 0
	subl	$1, -760(%rbp)
.LBE42:
	.loc 4 554 0
	jmp	.L171
.L478:
	.loc 4 544 0
	nop
	jmp	.L165
.L479:
	.loc 4 551 0
	nop
.L165:
	.loc 4 564 0
	movq	-624(%rbp), %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 4 566 0
	movl	-784(%rbp), %eax
	movl	-788(%rbp), %edx
	cmpl	%edx, %eax
	jbe	.L172
	.loc 4 567 0
	movl	-788(%rbp), %eax
	movl	%eax, -784(%rbp)
.L172:
	.loc 4 568 0
	movb	$0, -544(%rbp)
	.loc 4 569 0
	movb	$0, -536(%rbp)
	.loc 4 570 0
	movl	$0, -788(%rbp)
	.loc 4 571 0
	movl	$0, -780(%rbp)
	.loc 4 572 0
	movl	$0, -756(%rbp)
	.loc 4 574 0
	jmp	.L173
.L152:
	.loc 4 578 0
	leaq	-528(%rbp), %rax
	addq	$511, %rax
	movq	%rax, -600(%rbp)
	.loc 4 579 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L174
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L175
.L174:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L175:
	movl	(%rax), %eax
	.loc 4 579 0
	movl	%eax, %edx
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 580 0
	movl	$1, -784(%rbp)
	.loc 4 581 0
	movb	$0, -544(%rbp)
	.loc 4 582 0
	movb	$0, -536(%rbp)
	.loc 4 583 0
	movl	$0, -788(%rbp)
	.loc 4 584 0
	movl	$0, -780(%rbp)
	.loc 4 585 0
	movl	$0, -756(%rbp)
	.loc 4 586 0
	jmp	.L173
.L155:
.LBB43:
	.loc 4 590 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L176
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L177
.L176:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L177:
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	.loc 4 591 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-776(%rbp), %eax
	addl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, (%rax)
.LBE43:
	.loc 4 592 0
	jmp	.L178
.L146:
	.loc 4 614 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L179
	.loc 4 614 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L180
.L179:
	.loc 4 614 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L180:
	.loc 4 614 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 4 615 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L181
	.loc 4 615 0 is_stmt 0
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L182
.L181:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L182:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 4 616 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L183
	.loc 4 617 0
	movl	$6, -788(%rbp)
.L183:
	.loc 4 619 0
	movq	-584(%rbp), %rcx
	leaq	-780(%rbp), %rdx
	leaq	-632(%rbp), %rax
	movq	%rcx, -848(%rbp)
	movsd	-848(%rbp), %xmm0
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZL20stbsp__real_to_partsPxPid
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L184
	.loc 4 620 0
	orl	$128, -764(%rbp)
.L184:
	.loc 4 622 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 4 624 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 4 626 0
	movl	-780(%rbp), %eax
	cmpl	$-1023, %eax
	jne	.L185
	.loc 4 627 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	je	.L186
	.loc 4 627 0 is_stmt 0 discriminator 1
	movl	$-1022, %eax
	jmp	.L187
.L186:
	.loc 4 627 0 discriminator 2
	movl	$0, %eax
.L187:
	.loc 4 627 0 discriminator 4
	movl	%eax, -780(%rbp)
	jmp	.L188
.L185:
	.loc 4 629 0 is_stmt 1
	movq	-632(%rbp), %rdx
	movabsq	$4503599627370496, %rax
	orq	%rdx, %rax
	movq	%rax, -632(%rbp)
.L188:
	.loc 4 630 0
	movq	-632(%rbp), %rax
	salq	$8, %rax
	movq	%rax, -632(%rbp)
	.loc 4 631 0
	movl	-788(%rbp), %eax
	cmpl	$14, %eax
	jg	.L189
	.loc 4 632 0
	movl	-788(%rbp), %eax
	sall	$2, %eax
	movabsq	$576460752303423488, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-632(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -632(%rbp)
.L189:
	.loc 4 639 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	addl	$1, %eax
	cltq
	movb	$48, -544(%rbp,%rax)
	.loc 4 640 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	addl	$2, %eax
	cltq
	movb	$120, -544(%rbp,%rax)
	.loc 4 641 0
	movzbl	-544(%rbp), %eax
	addl	$2, %eax
	movb	%al, -544(%rbp)
	.loc 4 643 0
	movq	-632(%rbp), %rax
	shrq	$60, %rax
	movq	%rax, %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 644 0
	movq	-632(%rbp), %rax
	salq	$4, %rax
	movq	%rax, -632(%rbp)
	.loc 4 645 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L190
	.loc 4 646 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L190:
	.loc 4 647 0
	movq	-600(%rbp), %rax
	movq	%rax, -624(%rbp)
	.loc 4 650 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 4 651 0
	cmpl	$13, -760(%rbp)
	jbe	.L191
	.loc 4 652 0
	movl	$13, -760(%rbp)
.L191:
	.loc 4 653 0
	movl	-788(%rbp), %edx
	movl	-760(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L192
	.loc 4 654 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -768(%rbp)
.L192:
	.loc 4 655 0
	movl	$0, -788(%rbp)
.L194:
	.loc 4 656 0
	movl	-760(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -760(%rbp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L193
	.loc 4 657 0
	movq	-632(%rbp), %rax
	shrq	$60, %rax
	movq	%rax, %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 658 0
	movq	-632(%rbp), %rax
	salq	$4, %rax
	movq	%rax, -632(%rbp)
	.loc 4 656 0
	jmp	.L194
.L193:
	.loc 4 662 0
	movq	-592(%rbp), %rax
	addq	$17, %rax
	movzbl	(%rax), %eax
	movb	%al, -535(%rbp)
	.loc 4 663 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jns	.L195
	.loc 4 664 0
	movb	$45, -534(%rbp)
	.loc 4 665 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -780(%rbp)
	jmp	.L196
.L195:
	.loc 4 667 0
	movb	$43, -534(%rbp)
.L196:
	.loc 4 668 0
	movl	-780(%rbp), %eax
	cmpl	$999, %eax
	jg	.L197
	.loc 4 668 0 is_stmt 0 discriminator 1
	movl	-780(%rbp), %eax
	cmpl	$99, %eax
	jg	.L198
	.loc 4 668 0 discriminator 3
	movl	-780(%rbp), %eax
	cmpl	$9, %eax
	jle	.L199
	.loc 4 668 0 discriminator 5
	movl	$4, %eax
	jmp	.L202
.L199:
	.loc 4 668 0 discriminator 6
	movl	$3, %eax
	jmp	.L202
.L198:
	.loc 4 668 0 discriminator 4
	movl	$5, %eax
	jmp	.L202
.L197:
	.loc 4 668 0 discriminator 2
	movl	$6, %eax
.L202:
	.loc 4 668 0 discriminator 12
	movl	%eax, -760(%rbp)
	.loc 4 669 0 is_stmt 1 discriminator 12
	movl	-760(%rbp), %eax
	movb	%al, -536(%rbp)
.L205:
	.loc 4 671 0
	movl	-780(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movl	%eax, %edx
	movl	-760(%rbp), %eax
	movb	%dl, -536(%rbp,%rax)
	.loc 4 672 0
	cmpl	$3, -760(%rbp)
	jbe	.L482
	.loc 4 674 0
	subl	$1, -760(%rbp)
	.loc 4 675 0
	movl	-780(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -780(%rbp)
	.loc 4 671 0
	jmp	.L205
.L482:
	.loc 4 673 0
	nop
	.loc 4 678 0
	movq	-600(%rbp), %rax
	movq	-624(%rbp), %rdx
	subq	%rdx, %rax
	movl	%eax, -780(%rbp)
	.loc 4 679 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 4 680 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 4 681 0
	movl	$50331649, -756(%rbp)
	.loc 4 682 0
	jmp	.L173
.L150:
	.loc 4 686 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	jne	.L206
	.loc 4 686 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L207
.L206:
	.loc 4 686 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L207:
	.loc 4 686 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 4 687 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L208
	.loc 4 687 0 is_stmt 0
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L209
.L208:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L209:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 4 688 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L210
	.loc 4 689 0
	movl	$6, -788(%rbp)
	jmp	.L211
.L210:
	.loc 4 690 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jne	.L211
	.loc 4 691 0
	movl	$1, -788(%rbp)
.L211:
	.loc 4 693 0
	movl	-788(%rbp), %eax
	subl	$1, %eax
	orl	$-2147483648, %eax
	movl	%eax, %r8d
	movq	-584(%rbp), %rdi
	leaq	-780(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	leaq	-784(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movq	%rdi, -848(%rbp)
	movsd	-848(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZL18stbsp__real_to_strPPKcPjPcPidj
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L212
	.loc 4 694 0
	orl	$128, -764(%rbp)
.L212:
	.loc 4 697 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 4 698 0
	movl	-784(%rbp), %eax
	movl	-788(%rbp), %edx
	cmpl	%edx, %eax
	jbe	.L215
	.loc 4 699 0
	movl	-788(%rbp), %eax
	movl	%eax, -784(%rbp)
.L215:
	.loc 4 700 0
	movl	-784(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L214
	.loc 4 700 0 is_stmt 0 discriminator 1
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L214
	.loc 4 700 0 discriminator 2
	movq	-624(%rbp), %rax
	movl	-784(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L214
	.loc 4 701 0 is_stmt 1
	movl	-788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 4 702 0
	movl	-784(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -784(%rbp)
	.loc 4 700 0
	jmp	.L215
.L214:
	.loc 4 706 0
	movl	-780(%rbp), %eax
	cmpl	$-3, %eax
	jl	.L216
	.loc 4 706 0 is_stmt 0 discriminator 1
	movl	-780(%rbp), %edx
	movl	-760(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L217
.L216:
	.loc 4 707 0 is_stmt 1
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jle	.L218
	.loc 4 708 0
	movl	-784(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 4 711 0
	jmp	.L483
.L218:
	.loc 4 709 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L483
	.loc 4 710 0
	movl	-788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 4 711 0
	jmp	.L483
.L217:
	.loc 4 714 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jle	.L221
	.loc 4 715 0
	movl	-780(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jge	.L222
	.loc 4 715 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	jmp	.L223
.L222:
	.loc 4 715 0 discriminator 2
	movl	$0, %eax
.L223:
	.loc 4 715 0 discriminator 4
	movl	%eax, -788(%rbp)
	.loc 4 719 0 is_stmt 1 discriminator 4
	jmp	.L227
.L221:
	.loc 4 717 0
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jle	.L225
	.loc 4 717 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	jmp	.L226
.L225:
	.loc 4 717 0 discriminator 2
	movl	-788(%rbp), %eax
.L226:
	.loc 4 717 0 discriminator 4
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -788(%rbp)
	.loc 4 719 0 is_stmt 1 discriminator 4
	jmp	.L227
.L149:
	.loc 4 723 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L228
	.loc 4 723 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L229
.L228:
	.loc 4 723 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L229:
	.loc 4 723 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 4 724 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L230
	.loc 4 724 0 is_stmt 0
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L231
.L230:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L231:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 4 725 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L232
	.loc 4 726 0
	movl	$6, -788(%rbp)
.L232:
	.loc 4 728 0
	movl	-788(%rbp), %eax
	orl	$-2147483648, %eax
	movl	%eax, %r8d
	movq	-584(%rbp), %rdi
	leaq	-780(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	leaq	-784(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movq	%rdi, -848(%rbp)
	movsd	-848(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZL18stbsp__real_to_strPPKcPjPcPidj
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L484
	.loc 4 729 0
	orl	$128, -764(%rbp)
	jmp	.L220
.L483:
	.loc 4 711 0
	nop
	jmp	.L220
.L484:
	.loc 4 730 0
	nop
.L220:
	.loc 4 731 0
	movb	$0, -536(%rbp)
	.loc 4 732 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 4 733 0
	movl	-780(%rbp), %eax
	cmpl	$28672, %eax
	jne	.L233
	.loc 4 734 0
	movq	-624(%rbp), %rax
	movq	%rax, -600(%rbp)
	.loc 4 735 0
	movl	$0, -756(%rbp)
	.loc 4 736 0
	movl	$0, -788(%rbp)
	.loc 4 737 0
	jmp	.L173
.L233:
	.loc 4 739 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 4 741 0
	movq	-624(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 743 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L234
	.loc 4 744 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L234:
	.loc 4 747 0
	movl	-784(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L235
	.loc 4 748 0
	movl	-788(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -784(%rbp)
.L235:
	.loc 4 749 0
	movl	$1, -760(%rbp)
.L237:
	.loc 4 749 0 is_stmt 0 discriminator 3
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L236
	.loc 4 750 0 is_stmt 1 discriminator 2
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 749 0 discriminator 2
	addl	$1, -760(%rbp)
	jmp	.L237
.L236:
	.loc 4 752 0
	movl	-788(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -768(%rbp)
	.loc 4 753 0
	movl	$0, -788(%rbp)
	.loc 4 755 0
	movq	-592(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	movb	%al, -535(%rbp)
	.loc 4 756 0
	movl	-780(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -780(%rbp)
	.loc 4 757 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jns	.L238
	.loc 4 758 0
	movb	$45, -534(%rbp)
	.loc 4 759 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -780(%rbp)
	jmp	.L239
.L238:
	.loc 4 761 0
	movb	$43, -534(%rbp)
.L239:
	.loc 4 765 0
	movl	-780(%rbp), %eax
	cmpl	$99, %eax
	jle	.L240
	.loc 4 765 0 is_stmt 0 discriminator 1
	movl	$5, %eax
	jmp	.L241
.L240:
	.loc 4 765 0 discriminator 2
	movl	$4, %eax
.L241:
	.loc 4 765 0 discriminator 4
	movl	%eax, -760(%rbp)
	.loc 4 767 0 is_stmt 1 discriminator 4
	movl	-760(%rbp), %eax
	movb	%al, -536(%rbp)
.L244:
	.loc 4 769 0
	movl	-780(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movl	%eax, %edx
	movl	-760(%rbp), %eax
	movb	%dl, -536(%rbp,%rax)
	.loc 4 770 0
	cmpl	$3, -760(%rbp)
	jbe	.L485
	.loc 4 772 0
	subl	$1, -760(%rbp)
	.loc 4 773 0
	movl	-780(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -780(%rbp)
	.loc 4 769 0
	jmp	.L244
.L485:
	.loc 4 771 0
	nop
	.loc 4 775 0
	movl	$50331649, -756(%rbp)
	.loc 4 776 0
	jmp	.L245
.L154:
	.loc 4 779 0
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L246
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	4(%rdx), %edx
	leal	16(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	jmp	.L247
.L246:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L247:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
.L248:
.LBB44:
	.loc 4 782 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L249
.LBB45:
	.loc 4 784 0
	movsd	.LC13(%rip), %xmm0
	movsd	%xmm0, -576(%rbp)
	.loc 4 785 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L255
	.loc 4 786 0
	movsd	.LC14(%rip), %xmm0
	movsd	%xmm0, -576(%rbp)
.L255:
	.loc 4 787 0
	cmpl	$67108863, -764(%rbp)
	ja	.L249
	.loc 4 788 0
	movsd	-576(%rbp), %xmm0
	ucomisd	-584(%rbp), %xmm0
	jbe	.L252
	.loc 4 788 0 is_stmt 0 discriminator 1
	movsd	-576(%rbp), %xmm1
	movq	.LC15(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L486
.L252:
	.loc 4 790 0 is_stmt 1
	movsd	-584(%rbp), %xmm0
	divsd	-576(%rbp), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 4 791 0
	addl	$16777216, -764(%rbp)
	.loc 4 787 0
	jmp	.L255
.L486:
	.loc 4 789 0
	nop
.L249:
.LBE45:
.LBE44:
	.loc 4 794 0
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L256
	.loc 4 795 0
	movl	$6, -788(%rbp)
.L256:
	.loc 4 797 0
	movl	-788(%rbp), %eax
	movl	%eax, %r8d
	movq	-584(%rbp), %rdi
	leaq	-780(%rbp), %rcx
	leaq	-528(%rbp), %rdx
	leaq	-784(%rbp), %rsi
	leaq	-624(%rbp), %rax
	movq	%rdi, -848(%rbp)
	movsd	-848(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZL18stbsp__real_to_strPPKcPjPcPidj
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L487
	.loc 4 798 0
	orl	$128, -764(%rbp)
	jmp	.L227
.L487:
	.loc 4 799 0
	nop
.L227:
	.loc 4 800 0
	movb	$0, -536(%rbp)
	.loc 4 801 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 4 802 0
	movl	-780(%rbp), %eax
	cmpl	$28672, %eax
	jne	.L257
	.loc 4 803 0
	movq	-624(%rbp), %rax
	movq	%rax, -600(%rbp)
	.loc 4 804 0
	movl	$0, -756(%rbp)
	.loc 4 805 0
	movl	$0, -788(%rbp)
	.loc 4 806 0
	jmp	.L173
.L257:
	.loc 4 808 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
.LBB46:
	.loc 4 811 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jg	.L258
.LBB47:
	.loc 4 814 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 4 815 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L259
	.loc 4 816 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L259:
	.loc 4 817 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -760(%rbp)
	.loc 4 818 0
	movl	-760(%rbp), %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L260
	.loc 4 819 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
.L260:
	.loc 4 820 0
	movl	-760(%rbp), %eax
	movl	%eax, -752(%rbp)
.L263:
	.loc 4 821 0
	cmpl	$0, -752(%rbp)
	je	.L265
	.loc 4 822 0
	movq	-600(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L488
	.loc 4 824 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 4 825 0
	subl	$1, -752(%rbp)
	.loc 4 821 0
	jmp	.L263
.L488:
	.loc 4 823 0
	nop
.L265:
	.loc 4 827 0
	cmpl	$3, -752(%rbp)
	jle	.L264
	.loc 4 828 0
	movq	-600(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 4 829 0
	addq	$4, -600(%rbp)
	.loc 4 830 0
	subl	$4, -752(%rbp)
	.loc 4 827 0
	jmp	.L265
.L264:
	.loc 4 832 0
	cmpl	$0, -752(%rbp)
	je	.L266
	.loc 4 833 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 4 834 0
	subl	$1, -752(%rbp)
	.loc 4 832 0
	jmp	.L264
.L266:
	.loc 4 836 0
	movl	-784(%rbp), %edx
	movl	-760(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L267
	.loc 4 837 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -784(%rbp)
.L267:
	.loc 4 838 0
	movl	-784(%rbp), %eax
	movl	%eax, -752(%rbp)
.L269:
	.loc 4 839 0
	cmpl	$0, -752(%rbp)
	je	.L268
	.loc 4 840 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 841 0
	subl	$1, -752(%rbp)
	.loc 4 839 0
	jmp	.L269
.L268:
	.loc 4 843 0
	movl	-788(%rbp), %eax
	movl	%eax, %ecx
	movl	-784(%rbp), %edx
	movl	-760(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -768(%rbp)
	.loc 4 844 0
	movl	$50331649, -756(%rbp)
.LBE47:
	jmp	.L270
.L258:
	.loc 4 846 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L271
	.loc 4 846 0 is_stmt 0 discriminator 1
	movl	-780(%rbp), %eax
	movl	$600, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	movl	%eax, %edx
	addl	%edx, %edx
	addl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	jmp	.L272
.L271:
	.loc 4 846 0 discriminator 2
	movl	$0, %eax
.L272:
	.loc 4 846 0 discriminator 4
	movl	%eax, -756(%rbp)
	.loc 4 847 0 is_stmt 1 discriminator 4
	movl	-780(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L273
	.loc 4 849 0
	movl	$0, -760(%rbp)
.L279:
	.loc 4 851 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L274
	.loc 4 851 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L274
	.loc 4 851 0 discriminator 3
	movl	$1, %eax
	jmp	.L275
.L274:
	.loc 4 851 0 discriminator 4
	movl	$0, %eax
.L275:
	.loc 4 851 0 discriminator 6
	testb	%al, %al
	je	.L276
	.loc 4 852 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 4 853 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L279
.L276:
	.loc 4 855 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 856 0
	addl	$1, -760(%rbp)
	.loc 4 857 0
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L489
	.loc 4 851 0
	jmp	.L279
.L489:
	.loc 4 858 0
	nop
	.loc 4 861 0
	movl	-780(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L280
	.loc 4 862 0
	movl	-780(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 4 863 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L290
.L284:
	.loc 4 864 0
	cmpl	$0, -760(%rbp)
	je	.L285
	.loc 4 865 0
	movq	-600(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L490
	.loc 4 867 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 4 868 0
	subl	$1, -760(%rbp)
	.loc 4 864 0
	jmp	.L284
.L490:
	.loc 4 866 0
	nop
.L285:
	.loc 4 870 0
	cmpl	$3, -760(%rbp)
	jbe	.L290
	.loc 4 871 0
	movq	-600(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 4 872 0
	addq	$4, -600(%rbp)
	.loc 4 873 0
	subl	$4, -760(%rbp)
	.loc 4 870 0
	jmp	.L285
.L290:
	.loc 4 876 0
	cmpl	$0, -760(%rbp)
	je	.L280
	.loc 4 877 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L286
	.loc 4 877 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L286
	.loc 4 877 0 discriminator 3
	movl	$1, %eax
	jmp	.L287
.L286:
	.loc 4 877 0 discriminator 4
	movl	$0, %eax
.L287:
	.loc 4 877 0 discriminator 6
	testb	%al, %al
	je	.L288
	.loc 4 878 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 4 879 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L290
.L288:
	.loc 4 881 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 4 882 0
	subl	$1, -760(%rbp)
	.loc 4 876 0
	jmp	.L290
.L280:
	.loc 4 886 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 4 887 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L270
	.loc 4 888 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 889 0
	movl	-788(%rbp), %eax
	movl	%eax, -768(%rbp)
	jmp	.L270
.L273:
	.loc 4 893 0
	movl	$0, -760(%rbp)
.L296:
	.loc 4 895 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L291
	.loc 4 895 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L291
	.loc 4 895 0 discriminator 3
	movl	$1, %eax
	jmp	.L292
.L291:
	.loc 4 895 0 discriminator 4
	movl	$0, %eax
.L292:
	.loc 4 895 0 discriminator 6
	testb	%al, %al
	je	.L293
	.loc 4 896 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 4 897 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L296
.L293:
	.loc 4 899 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 900 0
	addl	$1, -760(%rbp)
	.loc 4 901 0
	movl	-780(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L491
	.loc 4 895 0
	jmp	.L296
.L491:
	.loc 4 902 0
	nop
	.loc 4 905 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 4 906 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L297
	.loc 4 907 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L297:
	.loc 4 908 0
	movl	-784(%rbp), %eax
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L300
	.loc 4 909 0
	movl	-788(%rbp), %edx
	movl	-780(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -784(%rbp)
.L300:
	.loc 4 910 0
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L299
	.loc 4 911 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 4 912 0
	addl	$1, -760(%rbp)
	.loc 4 910 0
	jmp	.L300
.L299:
	.loc 4 914 0
	movl	-780(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	-788(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -768(%rbp)
.L270:
.LBE46:
	.loc 4 917 0
	movl	$0, -788(%rbp)
.LBB48:
	.loc 4 920 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L492
.LBB49:
	.loc 4 922 0
	movb	$1, -789(%rbp)
	.loc 4 923 0
	movl	-764(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L301
	.loc 4 924 0
	movb	$0, -789(%rbp)
.L301:
	.loc 4 925 0
	movzbl	-789(%rbp), %eax
	movb	%al, -536(%rbp)
	.loc 4 926 0
	movb	$32, -535(%rbp)
	.loc 4 928 0
	movl	-764(%rbp), %eax
	shrl	$24, %eax
	testl	%eax, %eax
	je	.L245
	.loc 4 929 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L303
	.loc 4 930 0
	movl	-764(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movsbl	-789(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%edx, %edx
	leaq	.LC16(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -536(%rbp,%rax)
	jmp	.L304
.L303:
	.loc 4 932 0
	movl	-764(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movsbl	-789(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%edx, %edx
	leaq	.LC17(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -536(%rbp,%rax)
.L304:
	.loc 4 933 0
	movzbl	-789(%rbp), %eax
	addl	$1, %eax
	movb	%al, -789(%rbp)
	.loc 4 935 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L305
	.loc 4 935 0 is_stmt 0 discriminator 1
	movl	-764(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L305
	.loc 4 936 0 is_stmt 1
	movsbl	-789(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$105, -536(%rbp,%rax)
	.loc 4 937 0
	movzbl	-789(%rbp), %eax
	addl	$1, %eax
	movb	%al, -789(%rbp)
.L305:
	.loc 4 939 0
	movzbl	-789(%rbp), %eax
	movb	%al, -536(%rbp)
	jmp	.L245
.L492:
.LBE49:
.LBE48:
	.loc 4 944 0
	nop
.L245:
	.loc 4 946 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 4 947 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 4 948 0
	jmp	.L173
.L148:
	.loc 4 953 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	jne	.L306
	.loc 4 953 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L307
.L306:
	.loc 4 953 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L307:
	.loc 4 953 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 4 954 0 is_stmt 1 discriminator 4
	movb	$0, -544(%rbp)
	.loc 4 955 0 discriminator 4
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L308
	.loc 4 956 0
	movb	$2, -544(%rbp)
	.loc 4 957 0
	movb	$48, -543(%rbp)
	.loc 4 958 0
	movq	-592(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movb	%al, -542(%rbp)
.L308:
	.loc 4 960 0
	movl	$384, -784(%rbp)
	.loc 4 961 0
	jmp	.L309
.L156:
	.loc 4 964 0
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	movq	%rax, -592(%rbp)
	.loc 4 965 0
	movb	$0, -544(%rbp)
	.loc 4 966 0
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L310
	.loc 4 967 0
	movb	$1, -544(%rbp)
	.loc 4 968 0
	movb	$48, -543(%rbp)
.L310:
	.loc 4 970 0
	movl	$816, -784(%rbp)
	.loc 4 971 0
	jmp	.L309
.L157:
	.loc 4 974 0
	orl	$32, -764(%rbp)
	.loc 4 975 0
	movl	$16, -788(%rbp)
	.loc 4 976 0
	andl	$-17, -764(%rbp)
.L151:
	.loc 4 981 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L311
	.loc 4 981 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L312
.L311:
	.loc 4 981 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L312:
	.loc 4 981 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 4 982 0 is_stmt 1 discriminator 4
	movl	$1088, -784(%rbp)
	.loc 4 983 0 discriminator 4
	movb	$0, -544(%rbp)
	.loc 4 984 0 discriminator 4
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L493
	.loc 4 985 0
	movb	$2, -544(%rbp)
	.loc 4 986 0
	movb	$48, -543(%rbp)
	.loc 4 987 0
	movq	-592(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	movb	%al, -542(%rbp)
	jmp	.L309
.L493:
	.loc 4 989 0
	nop
.L309:
	.loc 4 991 0
	movl	-764(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L313
	.loc 4 992 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L314
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L315
.L314:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L315:
	movq	(%rax), %rax
	.loc 4 992 0
	movq	%rax, -632(%rbp)
	jmp	.L316
.L313:
	.loc 4 994 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L317
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L318
.L317:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L318:
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 4 994 0
	movq	%rax, -632(%rbp)
.L316:
	.loc 4 996 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -600(%rbp)
	.loc 4 997 0
	movl	$0, -780(%rbp)
	.loc 4 999 0
	movb	$0, -536(%rbp)
	.loc 4 1000 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L323
	.loc 4 1001 0
	movb	$0, -544(%rbp)
	.loc 4 1002 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jne	.L323
	.loc 4 1003 0
	movl	$0, -784(%rbp)
	.loc 4 1004 0
	movl	-784(%rbp), %eax
	shrl	$4, %eax
	sall	$24, %eax
	andl	$251658240, %eax
	movl	%eax, -756(%rbp)
	.loc 4 1005 0
	jmp	.L173
.L323:
	.loc 4 1010 0
	movl	-784(%rbp), %eax
	shrl	$8, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-632(%rbp), %rax
	andq	%rax, %rdx
	movq	-592(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1011 0
	movq	-632(%rbp), %rdx
	movl	-784(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -632(%rbp)
	.loc 4 1012 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L320
	.loc 4 1012 0 is_stmt 0 discriminator 1
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L494
.L320:
	.loc 4 1014 0 is_stmt 1
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L323
	.loc 4 1015 0
	movl	-784(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -784(%rbp)
	.loc 4 1016 0
	movl	-784(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	xorl	%edx, %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L323
	.loc 4 1017 0
	movl	-784(%rbp), %eax
	andl	$-16, %eax
	movl	%eax, -784(%rbp)
	.loc 4 1018 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1010 0
	jmp	.L323
.L494:
	.loc 4 1013 0
	nop
	.loc 4 1023 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	shrl	$4, %eax
	sall	$24, %eax
	andl	$251658240, %eax
	addl	%edx, %eax
	movl	%eax, -756(%rbp)
	.loc 4 1025 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 4 1027 0
	jmp	.L173
.L153:
.LBB50:
	.loc 4 1033 0
	movl	-764(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L324
.LBB51:
	.loc 4 1034 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L325
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L326
.L325:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L326:
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	.loc 4 1035 0
	movq	-552(%rbp), %rax
	movq	%rax, -632(%rbp)
	.loc 4 1036 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	je	.L328
	.loc 4 1036 0 is_stmt 0 discriminator 1
	cmpq	$0, -552(%rbp)
	jns	.L328
	.loc 4 1037 0 is_stmt 1
	movq	-552(%rbp), %rax
	negq	%rax
	movq	%rax, -632(%rbp)
	.loc 4 1038 0
	orl	$128, -764(%rbp)
	jmp	.L328
.L324:
.LBE51:
.LBB52:
	.loc 4 1041 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L329
	movq	-840(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	-840(%rbp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	-840(%rbp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L330
.L329:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L330:
	movl	(%rax), %eax
	movl	%eax, -712(%rbp)
	.loc 4 1042 0
	movl	-712(%rbp), %eax
	movl	%eax, %eax
	movq	%rax, -632(%rbp)
	.loc 4 1043 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	je	.L328
	.loc 4 1043 0 is_stmt 0 discriminator 1
	cmpl	$0, -712(%rbp)
	jns	.L328
	.loc 4 1044 0 is_stmt 1
	movl	-712(%rbp), %eax
	negl	%eax
	movl	%eax, %eax
	movq	%rax, -632(%rbp)
	.loc 4 1045 0
	orl	$128, -764(%rbp)
.L328:
.LBE52:
.LBE50:
	.loc 4 1050 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L331
	.loc 4 1051 0
	movq	-632(%rbp), %rax
	cmpq	$1023, %rax
	ja	.L332
	.loc 4 1052 0
	movl	$0, -788(%rbp)
	jmp	.L333
.L332:
	.loc 4 1053 0
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L333
	.loc 4 1054 0
	movl	$1, -788(%rbp)
.L333:
	.loc 4 1055 0
	movq	-632(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 4 1056 0
	jmp	.L248
.L331:
	.loc 4 1061 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -600(%rbp)
	.loc 4 1062 0
	movl	$0, -784(%rbp)
.L352:
.LBB53:
.LBB54:
	.loc 4 1066 0
	movq	-600(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -568(%rbp)
	.loc 4 1067 0
	movq	-632(%rbp), %rax
	cmpq	$99999999, %rax
	jbe	.L334
	.loc 4 1068 0
	movq	-632(%rbp), %rcx
	movabsq	$-6067343680855748867, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$26, %rax
	imulq	$100000000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -760(%rbp)
	.loc 4 1069 0
	movq	-632(%rbp), %rax
	movabsq	$-6067343680855748867, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$26, %rax
	movq	%rax, -632(%rbp)
	jmp	.L335
.L334:
	.loc 4 1071 0
	movq	-632(%rbp), %rax
	movl	%eax, -760(%rbp)
	.loc 4 1072 0
	movq	$0, -632(%rbp)
.L335:
	.loc 4 1074 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L343
.L337:
	.loc 4 1076 0
	subq	$2, -600(%rbp)
	.loc 4 1077 0
	movl	-760(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	leaq	_ZL16stbsp__digitpair(%rip), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movzwl	(%rax), %edx
	movq	-600(%rbp), %rax
	movw	%dx, (%rax)
	.loc 4 1078 0
	movl	-760(%rbp), %eax
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	%eax, -760(%rbp)
	.loc 4 1079 0
	cmpl	$0, -760(%rbp)
	je	.L343
	.loc 4 1075 0
	jmp	.L337
.L343:
	.loc 4 1081 0
	cmpl	$0, -760(%rbp)
	je	.L338
	.loc 4 1082 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L339
	.loc 4 1082 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -784(%rbp)
	cmpl	$3, %eax
	jne	.L339
	.loc 4 1082 0 discriminator 3
	movl	$1, %eax
	jmp	.L340
.L339:
	.loc 4 1082 0 discriminator 4
	movl	$0, %eax
.L340:
	.loc 4 1082 0 discriminator 6
	testb	%al, %al
	je	.L341
	.loc 4 1083 0 is_stmt 1
	movl	$0, -784(%rbp)
	.loc 4 1084 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1085 0
	subq	$1, -568(%rbp)
	jmp	.L343
.L341:
	.loc 4 1087 0
	movl	-760(%rbp), %ecx
	movl	$-858993459, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$3, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	addl	$48, %eax
	movl	%eax, %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1088 0
	movl	-760(%rbp), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, -760(%rbp)
	.loc 4 1081 0
	jmp	.L343
.L338:
	.loc 4 1091 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L344
	.loc 4 1092 0
	movq	-600(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L495
	.loc 4 1092 0 is_stmt 0 discriminator 1
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	cmpq	%rax, -600(%rbp)
	je	.L495
	.loc 4 1093 0 is_stmt 1
	addq	$1, -600(%rbp)
	.loc 4 1094 0
	jmp	.L495
.L344:
	.loc 4 1096 0
	movq	-600(%rbp), %rax
	cmpq	-568(%rbp), %rax
	je	.L352
	.loc 4 1097 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L348
	.loc 4 1097 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -784(%rbp)
	cmpl	$3, %eax
	jne	.L348
	.loc 4 1097 0 discriminator 3
	movl	$1, %eax
	jmp	.L349
.L348:
	.loc 4 1097 0 discriminator 4
	movl	$0, %eax
.L349:
	.loc 4 1097 0 discriminator 6
	testb	%al, %al
	je	.L350
	.loc 4 1098 0 is_stmt 1
	movl	$0, -784(%rbp)
	.loc 4 1099 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1100 0
	subq	$1, -568(%rbp)
	jmp	.L344
.L350:
	.loc 4 1102 0
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	$48, (%rax)
	.loc 4 1096 0
	jmp	.L344
.L495:
	.loc 4 1094 0
	nop
.LBE54:
.LBE53:
	.loc 4 1106 0
	movb	$0, -536(%rbp)
	.loc 4 1107 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 4 1110 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 4 1111 0
	movl	-784(%rbp), %eax
	testl	%eax, %eax
	jne	.L353
	.loc 4 1112 0
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	$48, (%rax)
	.loc 4 1113 0
	movl	$1, -784(%rbp)
.L353:
	.loc 4 1115 0
	movl	-784(%rbp), %eax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 4 1116 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jns	.L496
	.loc 4 1117 0
	movl	$0, -788(%rbp)
	jmp	.L173
.L496:
	.loc 4 1119 0
	nop
.L173:
	.loc 4 1121 0
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jge	.L354
	.loc 4 1122 0
	movl	-784(%rbp), %eax
	movl	%eax, -788(%rbp)
.L354:
	.loc 4 1123 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %edx
	movl	-788(%rbp), %eax
	addl	%eax, %edx
	movzbl	-536(%rbp), %eax
	movsbl	%al, %eax
	addl	%eax, %edx
	movl	-768(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -760(%rbp)
	.loc 4 1124 0
	movl	-760(%rbp), %eax
	cmpl	%eax, -772(%rbp)
	jge	.L355
	.loc 4 1125 0
	movl	-760(%rbp), %eax
	movl	%eax, -772(%rbp)
.L355:
	.loc 4 1126 0
	movl	-772(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -772(%rbp)
	.loc 4 1127 0
	movl	-788(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -788(%rbp)
	.loc 4 1130 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L356
	.loc 4 1131 0
	movl	-764(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L357
	.loc 4 1133 0
	movl	-788(%rbp), %eax
	cmpl	%eax, -772(%rbp)
	jle	.L358
	.loc 4 1133 0 is_stmt 0 discriminator 1
	movl	-772(%rbp), %eax
	jmp	.L359
.L358:
	.loc 4 1133 0 discriminator 2
	movl	-788(%rbp), %eax
.L359:
	.loc 4 1133 0 discriminator 4
	movl	%eax, -788(%rbp)
	.loc 4 1134 0 is_stmt 1 discriminator 4
	movl	$0, -772(%rbp)
	jmp	.L356
.L357:
	.loc 4 1136 0
	andl	$-65, -764(%rbp)
.L356:
.LBB55:
	.loc 4 1141 0
	movl	-788(%rbp), %edx
	movl	-772(%rbp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	.L361
.LBB56:
.LBB57:
	.loc 4 1146 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L362
.L375:
.LBB58:
	.loc 4 1147 0
	cmpl	$0, -772(%rbp)
	jle	.L362
.LBB59:
	.loc 4 1148 0
	movl	-772(%rbp), %eax
	movl	%eax, -748(%rbp)
.LBB60:
	cmpq	$0, -808(%rbp)
	je	.L364
.LBB61:
	.loc 4 1148 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -708(%rbp)
	movl	-748(%rbp), %eax
	cmpl	-708(%rbp), %eax
	jle	.L364
	.loc 4 1148 0 discriminator 2
	movl	-708(%rbp), %eax
	movl	%eax, -748(%rbp)
.L364:
.LBE61:
.LBE60:
	.loc 4 1149 0 is_stmt 1
	movl	-748(%rbp), %eax
	subl	%eax, -772(%rbp)
.L368:
	.loc 4 1150 0
	cmpl	$0, -748(%rbp)
	je	.L370
	.loc 4 1151 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L497
	.loc 4 1153 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 4 1154 0
	subl	$1, -748(%rbp)
	.loc 4 1150 0
	jmp	.L368
.L497:
	.loc 4 1152 0
	nop
.L370:
	.loc 4 1156 0
	cmpl	$3, -748(%rbp)
	jle	.L369
	.loc 4 1157 0
	movq	-616(%rbp), %rax
	movl	$538976288, (%rax)
	.loc 4 1158 0
	addq	$4, -616(%rbp)
	.loc 4 1159 0
	subl	$4, -748(%rbp)
	.loc 4 1156 0
	jmp	.L370
.L369:
	.loc 4 1161 0
	cmpl	$0, -748(%rbp)
	je	.L371
	.loc 4 1162 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 4 1163 0
	subl	$1, -748(%rbp)
	.loc 4 1161 0
	jmp	.L369
.L371:
.LBB62:
.LBB63:
	.loc 4 1165 0
	cmpq	$0, -808(%rbp)
	je	.L375
.LBB64:
.LBB65:
	.loc 4 1165 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -704(%rbp)
	movl	-704(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L375
	.loc 4 1165 0 discriminator 2
	movl	-704(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-704(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL1:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L498
.LBE65:
.LBE64:
.LBE63:
.LBE62:
.LBE59:
	.loc 4 1147 0 is_stmt 1 discriminator 5
	jmp	.L375
.L362:
.LBE58:
.LBE57:
	.loc 4 1169 0
	leaq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L383:
	.loc 4 1170 0
	movzbl	-544(%rbp), %eax
	testb	%al, %al
	je	.L376
.LBB72:
	.loc 4 1171 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -748(%rbp)
.LBB73:
	cmpq	$0, -808(%rbp)
	je	.L377
.LBB74:
	.loc 4 1171 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -700(%rbp)
	movl	-748(%rbp), %eax
	cmpl	-700(%rbp), %eax
	jle	.L377
	.loc 4 1171 0 discriminator 2
	movl	-700(%rbp), %eax
	movl	%eax, -748(%rbp)
.L377:
.LBE74:
.LBE73:
	.loc 4 1172 0 is_stmt 1
	movzbl	-544(%rbp), %eax
	movl	%eax, %edx
	movl	-748(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -544(%rbp)
.L380:
	.loc 4 1173 0
	cmpl	$0, -748(%rbp)
	je	.L379
	.loc 4 1174 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 4 1175 0
	subl	$1, -748(%rbp)
	.loc 4 1173 0
	jmp	.L380
.L379:
.LBB75:
.LBB76:
	.loc 4 1177 0
	cmpq	$0, -808(%rbp)
	je	.L383
.LBB77:
.LBB78:
	.loc 4 1177 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -696(%rbp)
	movl	-696(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L383
	.loc 4 1177 0 discriminator 2
	movl	-696(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-696(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL2:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L499
.LBE78:
.LBE77:
.LBE76:
.LBE75:
.LBE72:
	.loc 4 1170 0 is_stmt 1 discriminator 7
	jmp	.L383
.L376:
	.loc 4 1181 0
	movl	-756(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, -692(%rbp)
	.loc 4 1182 0
	andl	$16777215, -756(%rbp)
	.loc 4 1183 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L384
	.loc 4 1183 0 is_stmt 0 discriminator 1
	movl	-788(%rbp), %eax
	movl	%eax, %edx
	movl	-756(%rbp), %eax
	addl	%edx, %eax
	movl	-692(%rbp), %edx
	leal	1(%rdx), %ecx
	movl	$0, %edx
	divl	%ecx
	movl	-692(%rbp), %eax
	subl	%edx, %eax
	jmp	.L385
.L384:
	.loc 4 1183 0 discriminator 2
	movl	$0, %eax
.L385:
	.loc 4 1183 0 discriminator 4
	movl	%eax, -756(%rbp)
.L402:
	.loc 4 1184 0 is_stmt 1
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jle	.L361
.LBB83:
	.loc 4 1185 0
	movl	-788(%rbp), %eax
	movl	%eax, -748(%rbp)
.LBB84:
	cmpq	$0, -808(%rbp)
	je	.L387
.LBB85:
	.loc 4 1185 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -688(%rbp)
	movl	-748(%rbp), %eax
	cmpl	-688(%rbp), %eax
	jle	.L387
	.loc 4 1185 0 discriminator 2
	movl	-688(%rbp), %eax
	movl	%eax, -748(%rbp)
.L387:
.LBE85:
.LBE84:
	.loc 4 1186 0 is_stmt 1
	movl	-788(%rbp), %eax
	subl	-748(%rbp), %eax
	movl	%eax, -788(%rbp)
	.loc 4 1187 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L399
.L392:
	.loc 4 1188 0
	cmpl	$0, -748(%rbp)
	je	.L393
	.loc 4 1189 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L500
	.loc 4 1191 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 4 1192 0
	subl	$1, -748(%rbp)
	.loc 4 1188 0
	jmp	.L392
.L500:
	.loc 4 1190 0
	nop
.L393:
	.loc 4 1194 0
	cmpl	$3, -748(%rbp)
	jle	.L399
	.loc 4 1195 0
	movq	-616(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 4 1196 0
	addq	$4, -616(%rbp)
	.loc 4 1197 0
	subl	$4, -748(%rbp)
	.loc 4 1194 0
	jmp	.L393
.L399:
	.loc 4 1200 0
	cmpl	$0, -748(%rbp)
	je	.L394
	.loc 4 1201 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L395
	.loc 4 1201 0 is_stmt 0 discriminator 1
	movl	-756(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -756(%rbp)
	cmpl	%eax, -692(%rbp)
	jne	.L395
	.loc 4 1201 0 discriminator 3
	movl	$1, %eax
	jmp	.L396
.L395:
	.loc 4 1201 0 discriminator 4
	movl	$0, %eax
.L396:
	.loc 4 1201 0 discriminator 6
	testb	%al, %al
	je	.L397
	.loc 4 1202 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 4 1203 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	jmp	.L398
.L397:
	.loc 4 1205 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
.L398:
	.loc 4 1206 0
	subl	$1, -748(%rbp)
	.loc 4 1200 0
	jmp	.L399
.L394:
.LBB86:
.LBB87:
	.loc 4 1208 0
	cmpq	$0, -808(%rbp)
	je	.L402
.LBB88:
.LBB89:
	.loc 4 1208 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -684(%rbp)
	movl	-684(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L402
	.loc 4 1208 0 discriminator 2
	movl	-684(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-684(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL3:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L501
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBE83:
	.loc 4 1184 0 is_stmt 1 discriminator 9
	jmp	.L402
.L361:
.LBE56:
.LBE55:
	.loc 4 1213 0
	leaq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L410:
	.loc 4 1214 0
	movzbl	-544(%rbp), %eax
	testb	%al, %al
	je	.L403
.LBB98:
	.loc 4 1216 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -744(%rbp)
.LBB99:
	cmpq	$0, -808(%rbp)
	je	.L404
.LBB100:
	.loc 4 1216 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -680(%rbp)
	movl	-744(%rbp), %eax
	cmpl	-680(%rbp), %eax
	jle	.L404
	.loc 4 1216 0 discriminator 2
	movl	-680(%rbp), %eax
	movl	%eax, -744(%rbp)
.L404:
.LBE100:
.LBE99:
	.loc 4 1217 0 is_stmt 1
	movzbl	-544(%rbp), %eax
	movl	%eax, %edx
	movl	-744(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -544(%rbp)
.L407:
	.loc 4 1218 0
	cmpl	$0, -744(%rbp)
	je	.L406
	.loc 4 1219 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 4 1220 0
	subl	$1, -744(%rbp)
	.loc 4 1218 0
	jmp	.L407
.L406:
.LBB101:
.LBB102:
	.loc 4 1222 0
	cmpq	$0, -808(%rbp)
	je	.L410
.LBB103:
.LBB104:
	.loc 4 1222 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -676(%rbp)
	movl	-676(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L410
	.loc 4 1222 0 discriminator 2
	movl	-676(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-676(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL4:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L502
.LBE104:
.LBE103:
.LBE102:
.LBE101:
.LBE98:
	.loc 4 1214 0 is_stmt 1 discriminator 11
	jmp	.L410
.L403:
	.loc 4 1226 0
	movl	-784(%rbp), %eax
	movl	%eax, -760(%rbp)
.L419:
	.loc 4 1227 0
	cmpl	$0, -760(%rbp)
	je	.L411
.LBB109:
	.loc 4 1229 0
	movl	-760(%rbp), %eax
	movl	%eax, -740(%rbp)
.LBB110:
	cmpq	$0, -808(%rbp)
	je	.L412
.LBB111:
	.loc 4 1229 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -672(%rbp)
	movl	-740(%rbp), %eax
	cmpl	-672(%rbp), %eax
	jle	.L412
	.loc 4 1229 0 discriminator 2
	movl	-672(%rbp), %eax
	movl	%eax, -740(%rbp)
.L412:
.LBE111:
.LBE110:
	.loc 4 1230 0 is_stmt 1
	movl	-740(%rbp), %eax
	subl	%eax, -760(%rbp)
.L415:
	.loc 4 1231 0 discriminator 2
	cmpl	$3, -740(%rbp)
	jle	.L414
	.loc 4 1231 0 is_stmt 0 discriminator 1
	movq	-600(%rbp), %rax
	movl	(%rax), %edx
	movq	-616(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -616(%rbp)
	addq	$4, -600(%rbp)
	subl	$4, -740(%rbp)
	jmp	.L415
.L414:
	.loc 4 1237 0 is_stmt 1
	cmpl	$0, -740(%rbp)
	je	.L416
	.loc 4 1238 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 4 1239 0
	subl	$1, -740(%rbp)
	.loc 4 1237 0
	jmp	.L414
.L416:
.LBB112:
.LBB113:
	.loc 4 1241 0
	cmpq	$0, -808(%rbp)
	je	.L419
.LBB114:
.LBB115:
	.loc 4 1241 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -668(%rbp)
	movl	-668(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L419
	.loc 4 1241 0 discriminator 2
	movl	-668(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-668(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL5:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L503
.LBE115:
.LBE114:
.LBE113:
.LBE112:
.LBE109:
	.loc 4 1227 0 is_stmt 1 discriminator 13
	jmp	.L419
.L411:
	.loc 4 1245 0
	cmpl	$0, -768(%rbp)
	je	.L420
.LBB120:
	.loc 4 1247 0
	movl	-768(%rbp), %eax
	movl	%eax, -736(%rbp)
.LBB121:
	cmpq	$0, -808(%rbp)
	je	.L421
.LBB122:
	.loc 4 1247 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -664(%rbp)
	movl	-736(%rbp), %eax
	cmpl	-664(%rbp), %eax
	jle	.L421
	.loc 4 1247 0 discriminator 2
	movl	-664(%rbp), %eax
	movl	%eax, -736(%rbp)
.L421:
.LBE122:
.LBE121:
	.loc 4 1248 0 is_stmt 1
	movl	-736(%rbp), %eax
	subl	%eax, -768(%rbp)
.L425:
	.loc 4 1249 0
	cmpl	$0, -736(%rbp)
	je	.L427
	.loc 4 1250 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L504
	.loc 4 1252 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 4 1253 0
	subl	$1, -736(%rbp)
	.loc 4 1249 0
	jmp	.L425
.L504:
	.loc 4 1251 0
	nop
.L427:
	.loc 4 1255 0
	cmpl	$3, -736(%rbp)
	jle	.L426
	.loc 4 1256 0
	movq	-616(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 4 1257 0
	addq	$4, -616(%rbp)
	.loc 4 1258 0
	subl	$4, -736(%rbp)
	.loc 4 1255 0
	jmp	.L427
.L426:
	.loc 4 1260 0
	cmpl	$0, -736(%rbp)
	je	.L428
	.loc 4 1261 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 4 1262 0
	subl	$1, -736(%rbp)
	.loc 4 1260 0
	jmp	.L426
.L428:
.LBB123:
.LBB124:
	.loc 4 1264 0
	cmpq	$0, -808(%rbp)
	je	.L411
.LBB125:
.LBB126:
	.loc 4 1264 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -660(%rbp)
	movl	-660(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L411
	.loc 4 1264 0 discriminator 2
	movl	-660(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-660(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL6:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L505
.LBE126:
.LBE125:
.LBE124:
.LBE123:
.LBE120:
	.loc 4 1245 0 is_stmt 1 discriminator 15
	jmp	.L411
.L420:
	.loc 4 1268 0
	leaq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L438:
	.loc 4 1269 0
	movzbl	-536(%rbp), %eax
	testb	%al, %al
	je	.L431
.LBB131:
	.loc 4 1271 0
	movzbl	-536(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -732(%rbp)
.LBB132:
	cmpq	$0, -808(%rbp)
	je	.L432
.LBB133:
	.loc 4 1271 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -656(%rbp)
	movl	-732(%rbp), %eax
	cmpl	-656(%rbp), %eax
	jle	.L432
	.loc 4 1271 0 discriminator 2
	movl	-656(%rbp), %eax
	movl	%eax, -732(%rbp)
.L432:
.LBE133:
.LBE132:
	.loc 4 1272 0 is_stmt 1
	movzbl	-536(%rbp), %eax
	movl	%eax, %edx
	movl	-732(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -536(%rbp)
.L435:
	.loc 4 1273 0
	cmpl	$0, -732(%rbp)
	je	.L434
	.loc 4 1274 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 4 1275 0
	subl	$1, -732(%rbp)
	.loc 4 1273 0
	jmp	.L435
.L434:
.LBB134:
.LBB135:
	.loc 4 1277 0
	cmpq	$0, -808(%rbp)
	je	.L438
.LBB136:
.LBB137:
	.loc 4 1277 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -652(%rbp)
	movl	-652(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L438
	.loc 4 1277 0 discriminator 2
	movl	-652(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-652(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL7:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L506
.LBE137:
.LBE136:
.LBE135:
.LBE134:
.LBE131:
	.loc 4 1269 0 is_stmt 1 discriminator 17
	jmp	.L438
.L431:
.LBB142:
	.loc 4 1281 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L507
.LBB143:
.LBB144:
	.loc 4 1282 0
	cmpl	$0, -772(%rbp)
	jle	.L507
.L452:
.LBB145:
	.loc 4 1283 0
	cmpl	$0, -772(%rbp)
	je	.L507
.LBB146:
	.loc 4 1285 0
	movl	-772(%rbp), %eax
	movl	%eax, -728(%rbp)
.LBB147:
	cmpq	$0, -808(%rbp)
	je	.L442
.LBB148:
	.loc 4 1285 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -648(%rbp)
	movl	-728(%rbp), %eax
	cmpl	-648(%rbp), %eax
	jle	.L442
	.loc 4 1285 0 discriminator 2
	movl	-648(%rbp), %eax
	movl	%eax, -728(%rbp)
.L442:
.LBE148:
.LBE147:
	.loc 4 1286 0 is_stmt 1
	movl	-728(%rbp), %eax
	subl	%eax, -772(%rbp)
.L446:
	.loc 4 1287 0
	cmpl	$0, -728(%rbp)
	je	.L448
	.loc 4 1288 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L508
	.loc 4 1290 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 4 1291 0
	subl	$1, -728(%rbp)
	.loc 4 1287 0
	jmp	.L446
.L508:
	.loc 4 1289 0
	nop
.L448:
	.loc 4 1293 0
	cmpl	$3, -728(%rbp)
	jle	.L447
	.loc 4 1294 0
	movq	-616(%rbp), %rax
	movl	$538976288, (%rax)
	.loc 4 1295 0
	addq	$4, -616(%rbp)
	.loc 4 1296 0
	subl	$4, -728(%rbp)
	.loc 4 1293 0
	jmp	.L448
.L447:
	.loc 4 1298 0
	movl	-728(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -728(%rbp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L449
	.loc 4 1299 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 4 1298 0
	jmp	.L447
.L449:
.LBB149:
.LBB150:
	.loc 4 1300 0
	cmpq	$0, -808(%rbp)
	je	.L452
.LBB151:
.LBB152:
	.loc 4 1300 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -644(%rbp)
	movl	-644(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L452
	.loc 4 1300 0 discriminator 2
	movl	-644(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-644(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL8:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jne	.L509
.LBE152:
.LBE151:
.LBE150:
.LBE149:
.LBE146:
	.loc 4 1283 0 is_stmt 1 discriminator 19
	jmp	.L452
.L145:
.LBE145:
.LBE144:
.LBE143:
.LBE142:
	.loc 4 1306 0
	leaq	-528(%rbp), %rax
	addq	$511, %rax
	movq	%rax, -600(%rbp)
	.loc 4 1307 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 4 1308 0
	movl	$1, -784(%rbp)
	.loc 4 1309 0
	movl	$0, -764(%rbp)
	movl	$0, -772(%rbp)
	.loc 4 1310 0
	movb	$0, -544(%rbp)
	.loc 4 1311 0
	movb	$0, -536(%rbp)
	.loc 4 1312 0
	movl	$0, -788(%rbp)
	.loc 4 1313 0
	movl	$0, -780(%rbp)
	.loc 4 1314 0
	movl	$0, -756(%rbp)
	.loc 4 1315 0
	jmp	.L173
.L507:
	.loc 4 1303 0
	nop
.L178:
.LBE40:
.LBE39:
	.loc 4 1317 0
	addq	$1, -608(%rbp)
.LBE14:
	.loc 4 1318 0
	jmp	.L101
.L498:
.LBB171:
.LBB168:
.LBB167:
.LBB161:
.LBB97:
.LBB94:
.LBB71:
.LBB70:
.LBB69:
.LBB68:
.LBB67:
.LBB66:
	.loc 4 1165 0
	nop
	jmp	.L454
.L499:
.LBE66:
.LBE67:
.LBE68:
.LBE69:
.LBE70:
.LBE71:
.LBE94:
.LBB95:
.LBB82:
.LBB81:
.LBB80:
.LBB79:
	.loc 4 1177 0
	nop
	jmp	.L454
.L501:
.LBE79:
.LBE80:
.LBE81:
.LBE82:
.LBE95:
.LBB96:
.LBB93:
.LBB92:
.LBB91:
.LBB90:
	.loc 4 1208 0
	nop
	jmp	.L454
.L502:
.LBE90:
.LBE91:
.LBE92:
.LBE93:
.LBE96:
.LBE97:
.LBE161:
.LBB162:
.LBB108:
.LBB107:
.LBB106:
.LBB105:
	.loc 4 1222 0
	nop
	jmp	.L454
.L503:
.LBE105:
.LBE106:
.LBE107:
.LBE108:
.LBE162:
.LBB163:
.LBB119:
.LBB118:
.LBB117:
.LBB116:
	.loc 4 1241 0
	nop
	jmp	.L454
.L505:
.LBE116:
.LBE117:
.LBE118:
.LBE119:
.LBE163:
.LBB164:
.LBB130:
.LBB129:
.LBB128:
.LBB127:
	.loc 4 1264 0
	nop
	jmp	.L454
.L506:
.LBE127:
.LBE128:
.LBE129:
.LBE130:
.LBE164:
.LBB165:
.LBB141:
.LBB140:
.LBB139:
.LBB138:
	.loc 4 1277 0
	nop
	jmp	.L454
.L509:
.LBE138:
.LBE139:
.LBE140:
.LBE141:
.LBE165:
.LBB166:
.LBB160:
.LBB159:
.LBB158:
.LBB157:
.LBB156:
.LBB155:
.LBB154:
.LBB153:
	.loc 4 1300 0
	nop
.LBE153:
.LBE154:
.LBE155:
.LBE156:
.LBE157:
.LBE158:
.LBE159:
.LBE160:
.LBE166:
.LBE167:
.LBE168:
	.loc 4 345 0
	jmp	.L454
.L468:
.LBB169:
.LBB37:
.LBB35:
	.loc 4 344 0
	nop
.L453:
.LBE35:
.LBE37:
.LBE169:
.LBE171:
.LBE13:
.LBB173:
	.loc 4 1321 0
	cmpq	$0, -808(%rbp)
	jne	.L455
	.loc 4 1322 0
	movq	-616(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L454
.L455:
.LBB174:
.LBB175:
	.loc 4 1324 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -636(%rbp)
	movl	-636(%rbp), %eax
	addl	$511, %eax
	cmpl	$511, %eax
	jle	.L510
	.loc 4 1324 0 is_stmt 0 discriminator 1
	movl	-636(%rbp), %eax
	addl	%eax, -776(%rbp)
	movl	-636(%rbp), %edx
	movq	-816(%rbp), %rsi
	movq	-824(%rbp), %rcx
	movq	-808(%rbp), %rax
	movq	%rcx, %rdi
	call	*%rax
.LVL9:
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	sete	%al
	testb	%al, %al
	jmp	.L454
.L469:
.LBE175:
.LBE174:
.LBE173:
.LBB176:
.LBB172:
.LBB170:
.LBB38:
.LBB36:
.LBB25:
.LBB24:
.LBB23:
.LBB22:
	.loc 4 345 0 is_stmt 1
	nop
	jmp	.L454
.L510:
.LBE22:
.LBE23:
.LBE24:
.LBE25:
.LBE36:
.LBE38:
.LBE170:
.LBE172:
.LBE176:
	.loc 4 1326 0
	nop
.L454:
	.loc 4 1327 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-776(%rbp), %eax
	addl	%edx, %eax
	.loc 4 1328 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L457
	call	__stack_chk_fail@PLT
.L457:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE52:
	.size	stbsp_vsprintfcb, .-stbsp_vsprintfcb
	.globl	stbsp_sprintf
	.type	stbsp_sprintf, @function
stbsp_sprintf:
.LFB53:
	.loc 4 1350 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L512
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L512:
	.loc 4 1350 0
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 4 1353 0
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 4 1354 0
	leaq	-208(%rbp), %rcx
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	stbsp_vsprintfcb
	movl	%eax, -212(%rbp)
	.loc 4 1356 0
	movl	-212(%rbp), %eax
	.loc 4 1357 0
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L514
	call	__stack_chk_fail@PLT
.L514:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	stbsp_sprintf, .-stbsp_sprintf
	.type	_ZL21stbsp__clamp_callbackPKcPvi, @function
_ZL21stbsp__clamp_callbackPKcPvi:
.LFB54:
	.loc 4 1367 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 4 1368 0
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 4 1369 0
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movl	-52(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 4 1371 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L516
	.loc 4 1372 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -52(%rbp)
.L516:
.LBB177:
	.loc 4 1374 0
	cmpl	$0, -52(%rbp)
	je	.L517
.LBB178:
.LBB179:
	.loc 4 1375 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L518
.LBB180:
	.loc 4 1378 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 1379 0
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 4 1380 0
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L520:
	.loc 4 1382 0
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	.loc 4 1383 0
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L518
	.loc 4 1381 0
	jmp	.L520
.L518:
.LBE180:
.LBE179:
	.loc 4 1385 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 1386 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
.L517:
.LBE178:
.LBE177:
	.loc 4 1389 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.L521
	.loc 4 1390 0
	movq	-16(%rbp), %rax
	addq	$16, %rax
	jmp	.L522
.L521:
	.loc 4 1391 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$511, %eax
	jle	.L523
	.loc 4 1391 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L525
.L523:
	.loc 4 1391 0 discriminator 2
	movq	-16(%rbp), %rax
	addq	$16, %rax
.L525:
	.loc 4 1391 0
	nop
.L522:
	.loc 4 1392 0 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	_ZL21stbsp__clamp_callbackPKcPvi, .-_ZL21stbsp__clamp_callbackPKcPvi
	.type	_ZL27stbsp__count_clamp_callbackPKcPvi, @function
_ZL27stbsp__count_clamp_callbackPKcPvi:
.LFB55:
	.loc 4 1395 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 4 1396 0
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 4 1399 0
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 4 1400 0
	movq	-8(%rbp), %rax
	addq	$16, %rax
	.loc 4 1401 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	_ZL27stbsp__count_clamp_callbackPKcPvi, .-_ZL27stbsp__count_clamp_callbackPKcPvi
	.globl	stbsp_vsnprintf
	.type	stbsp_vsnprintf, @function
stbsp_vsnprintf:
.LFB56:
	.loc 4 1404 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$592, %rsp
	movq	%rdi, -568(%rbp)
	movl	%esi, -572(%rbp)
	movq	%rdx, -584(%rbp)
	movq	%rcx, -592(%rbp)
	.loc 4 1404 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB181:
	.loc 4 1407 0
	cmpl	$0, -572(%rbp)
	jne	.L529
	.loc 4 1407 0 is_stmt 0 discriminator 1
	cmpq	$0, -568(%rbp)
	jne	.L529
	.loc 4 1409 0 is_stmt 1
	movl	$0, -532(%rbp)
	.loc 4 1411 0
	movq	-592(%rbp), %rcx
	movq	-584(%rbp), %rdx
	leaq	-544(%rbp), %rax
	leaq	16(%rax), %rsi
	leaq	-544(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	_ZL27stbsp__count_clamp_callbackPKcPvi(%rip), %rdi
	call	stbsp_vsprintfcb
	jmp	.L530
.L529:
.LBB182:
	.loc 4 1417 0
	movq	-568(%rbp), %rax
	movq	%rax, -544(%rbp)
	.loc 4 1418 0
	movl	-572(%rbp), %eax
	movl	%eax, -536(%rbp)
	.loc 4 1419 0
	movl	$0, -532(%rbp)
	.loc 4 1421 0
	leaq	-544(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	_ZL21stbsp__clamp_callbackPKcPvi
	movq	%rax, %rsi
	movq	-592(%rbp), %rcx
	movq	-584(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	_ZL21stbsp__clamp_callbackPKcPvi(%rip), %rdi
	call	stbsp_vsprintfcb
	.loc 4 1424 0
	movq	-544(%rbp), %rax
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -548(%rbp)
	.loc 4 1425 0
	movl	-548(%rbp), %eax
	cmpl	-572(%rbp), %eax
	jl	.L531
	.loc 4 1426 0
	movl	-572(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -548(%rbp)
.L531:
	.loc 4 1427 0
	movl	-548(%rbp), %eax
	movslq	%eax, %rdx
	movq	-568(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L530:
.LBE182:
.LBE181:
	.loc 4 1430 0
	movl	-532(%rbp), %eax
	.loc 4 1431 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L533
	call	__stack_chk_fail@PLT
.L533:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	stbsp_vsnprintf, .-stbsp_vsnprintf
	.globl	stbsp_snprintf
	.type	stbsp_snprintf, @function
stbsp_snprintf:
.LFB57:
	.loc 4 1434 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%rdi, -232(%rbp)
	movl	%esi, -236(%rbp)
	movq	%rdx, -248(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L535
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L535:
	.loc 4 1434 0
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 4 1437 0
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 4 1439 0
	leaq	-208(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-236(%rbp), %esi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	stbsp_vsnprintf
	movl	%eax, -212(%rbp)
	.loc 4 1442 0
	movl	-212(%rbp), %eax
	.loc 4 1443 0
	movq	-184(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L537
	call	__stack_chk_fail@PLT
.L537:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	stbsp_snprintf, .-stbsp_snprintf
	.globl	stbsp_vsprintf
	.type	stbsp_vsprintf, @function
stbsp_vsprintf:
.LFB58:
	.loc 4 1446 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 4 1447 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	stbsp_vsprintfcb
	.loc 4 1448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	stbsp_vsprintf, .-stbsp_vsprintf
	.type	_ZL20stbsp__real_to_partsPxPid, @function
_ZL20stbsp__real_to_partsPxPid:
.LFB59:
	.loc 4 1465 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	.loc 4 1465 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1467 0
	movq	$0, -16(%rbp)
	.loc 4 1470 0
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB183:
	.loc 4 1472 0
	movl	$0, -28(%rbp)
.L542:
	.loc 4 1472 0 is_stmt 0 discriminator 3
	cmpl	$7, -28(%rbp)
	jg	.L541
	.loc 4 1472 0 discriminator 2
	movl	-28(%rbp), %eax
	cltq
	leaq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-16(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -28(%rbp)
	jmp	.L542
.L541:
.LBE183:
	.loc 4 1474 0 is_stmt 1
	movq	-16(%rbp), %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 1475 0
	movq	-16(%rbp), %rax
	sarq	$52, %rax
	andl	$2047, %eax
	subl	$1023, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	.loc 4 1477 0
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	.loc 4 1478 0
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L544
	call	__stack_chk_fail@PLT
.L544:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	_ZL20stbsp__real_to_partsPxPid, .-_ZL20stbsp__real_to_partsPxPid
	.section	.rodata
	.align 32
	.type	_ZL10stbsp__bot, @object
	.size	_ZL10stbsp__bot, 184
_ZL10stbsp__bot:
	.long	0
	.long	1072693248
	.long	0
	.long	1076101120
	.long	0
	.long	1079574528
	.long	0
	.long	1083129856
	.long	0
	.long	1086556160
	.long	0
	.long	1090021888
	.long	0
	.long	1093567616
	.long	0
	.long	1097011920
	.long	0
	.long	1100470148
	.long	0
	.long	1104006501
	.long	536870912
	.long	1107468383
	.long	3892314112
	.long	1110919286
	.long	2717908992
	.long	1114446484
	.long	3846176768
	.long	1117925532
	.long	512753664
	.long	1121369284
	.long	640942080
	.long	1124887541
	.long	937459712
	.long	1128383353
	.long	2245566464
	.long	1131820119
	.long	1733216256
	.long	1135329645
	.long	1620131072
	.long	1138841828
	.long	2025163840
	.long	1142271773
	.long	3605196624
	.long	1145772772
	.long	105764242
	.long	1149300943
	.align 32
	.type	_ZL13stbsp__negbot, @object
	.size	_ZL13stbsp__negbot, 176
_ZL13stbsp__negbot:
	.long	2576980378
	.long	1069128089
	.long	1202590843
	.long	1065646817
	.long	3539053052
	.long	1062232653
	.long	3944497965
	.long	1058682594
	.long	2296604913
	.long	1055193269
	.long	2696277389
	.long	1051772663
	.long	2596056904
	.long	1048238066
	.long	3794832442
	.long	1044740494
	.long	3894859413
	.long	1041313291
	.long	3654794683
	.long	1037794527
	.long	3782829205
	.long	1034288511
	.long	2167269905
	.long	1030854553
	.long	1749644930
	.long	1027352002
	.long	2258709403
	.long	1023837339
	.long	2665960982
	.long	1020396463
	.long	2547550652
	.long	1016910514
	.long	1179047063
	.long	1013386997
	.long	3520218028
	.long	1009939037
	.long	1337381548
	.long	1006470089
	.long	210911779
	.long	1002937505
	.long	168729423
	.long	999482292
	.long	269967078
	.long	996030752
	.align 32
	.type	_ZL16stbsp__negboterr, @object
	.size	_ZL16stbsp__negboterr, 176
_ZL16stbsp__negboterr:
	.long	2576980378
	.long	-1134978663
	.long	3951369912
	.long	-1139885999
	.long	3161095930
	.long	-1143434380
	.long	3841418750
	.long	-1145659039
	.long	2214141540
	.long	-1148262527
	.long	4188314668
	.long	994794083
	.long	2491658275
	.long	991289833
	.long	3744287892
	.long	-1160761309
	.long	3215702075
	.long	-1162656140
	.long	1709149484
	.long	-1166931372
	.long	2068654250
	.long	977795004
	.long	4042713222
	.long	972652327
	.long	2778783637
	.long	-1177629319
	.long	159596007
	.long	961455881
	.long	373814688
	.long	-1183238269
	.long	3957753753
	.long	958772418
	.long	134885417
	.long	-1190283342
	.long	107908334
	.long	-1193818584
	.long	513686791
	.long	948589235
	.long	2782455094
	.long	946295879
	.long	3084957534
	.long	943683231
	.long	3654002537
	.long	-1208322714
	.align 32
	.type	_ZL10stbsp__top, @object
	.size	_ZL10stbsp__top, 104
_ZL10stbsp__top:
	.long	3353430774
	.long	1152724226
	.long	3964941254
	.long	1232864933
	.long	2883886948
	.long	1312984008
	.long	3207089700
	.long	1393068963
	.long	4123177356
	.long	1473265193
	.long	3141655420
	.long	1553301320
	.long	785120244
	.long	1633448841
	.long	4170124093
	.long	1713558486
	.long	948276490
	.long	1793649409
	.long	1898189373
	.long	1873837381
	.long	1433696792
	.long	1953878734
	.long	2138321794
	.long	2034033171
	.long	966391728
	.long	2114133245
	.align 32
	.type	_ZL13stbsp__negtop, @object
	.size	_ZL13stbsp__negtop, 104
_ZL13stbsp__negtop:
	.long	1074967121
	.long	992488883
	.long	606885217
	.long	912409806
	.long	1693647620
	.long	832281443
	.long	3019316407
	.long	752147447
	.long	3876077104
	.long	672105863
	.long	1181794595
	.long	591909162
	.long	1107056733
	.long	511835875
	.long	1573069010
	.long	431698363
	.long	3396444605
	.long	351570978
	.long	2207357147
	.long	271518948
	.long	1917871272
	.long	191329795
	.long	4122087424
	.long	111262211
	.long	3015127087
	.long	31115687
	.align 32
	.type	_ZL13stbsp__toperr, @object
	.size	_ZL13stbsp__toperr, 104
_ZL13stbsp__toperr:
	.long	0
	.long	1096810496
	.long	3356355392
	.long	1173075266
	.long	3114972682
	.long	-890750080
	.long	3514439276
	.long	-811389406
	.long	2418939918
	.long	-732809722
	.long	2185637511
	.long	-651595849
	.long	738971665
	.long	-571254635
	.long	1990413164
	.long	-492336109
	.long	4230232799
	.long	-410946199
	.long	2828511910
	.long	-329411739
	.long	627123104
	.long	1897465100
	.long	3614230438
	.long	-170190951
	.long	962009656
	.long	-90041346
	.align 32
	.type	_ZL16stbsp__negtoperr, @object
	.size	_ZL16stbsp__negtoperr, 104
_ZL16stbsp__negtoperr:
	.long	3089752185
	.long	935410605
	.long	2369625956
	.long	-1293007191
	.long	562703205
	.long	775038919
	.long	2578055657
	.long	693229929
	.long	2667329890
	.long	-1532181982
	.long	576929914
	.long	-1611870134
	.long	4052197719
	.long	-1693303936
	.long	2437863698
	.long	-1772335582
	.long	3455332226
	.long	295420566
	.long	4108414945
	.long	-1932920345
	.long	1923649578
	.long	-2012550390
	.long	314651656
	.long	-2092031346
	.long	16388697
	.long	0
	.align 32
	.type	_ZL13stbsp__powten, @object
	.size	_ZL13stbsp__powten, 160
_ZL13stbsp__powten:
	.quad	1
	.quad	10
	.quad	100
	.quad	1000
	.quad	10000
	.quad	100000
	.quad	1000000
	.quad	10000000
	.quad	100000000
	.quad	1000000000
	.quad	10000000000
	.quad	100000000000
	.quad	1000000000000
	.quad	10000000000000
	.quad	100000000000000
	.quad	1000000000000000
	.quad	10000000000000000
	.quad	100000000000000000
	.quad	1000000000000000000
	.quad	-8446744073709551616
	.text
	.type	_ZL23stbsp__raise_to_power10PdS_di, @function
_ZL23stbsp__raise_to_power10PdS_di:
.LFB60:
	.loc 4 1612 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movsd	%xmm0, -328(%rbp)
	movl	%edx, -332(%rbp)
	.loc 4 1612 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB184:
	.loc 4 1614 0
	cmpl	$0, -332(%rbp)
	js	.L546
	.loc 4 1614 0 is_stmt 0 discriminator 1
	cmpl	$22, -332(%rbp)
	jg	.L546
.LBB185:
.LBB186:
	.loc 4 1615 0 is_stmt 1
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-328(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB187:
	movl	$0, -300(%rbp)
.L548:
	.loc 4 1615 0 is_stmt 0 discriminator 4
	cmpl	$7, -300(%rbp)
	jg	.L547
	.loc 4 1615 0 discriminator 3
	movl	-300(%rbp), %eax
	cltq
	leaq	-328(%rbp), %rdx
	addq	%rdx, %rax
	movl	-300(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -300(%rbp)
	jmp	.L548
.L547:
.LBE187:
	.loc 4 1615 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB188:
	movl	$0, -296(%rbp)
.L550:
	.loc 4 1615 0 discriminator 8
	cmpl	$7, -296(%rbp)
	jg	.L549
	.loc 4 1615 0 discriminator 7
	movl	-296(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-296(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -296(%rbp)
	jmp	.L550
.L549:
.LBE188:
	.loc 4 1615 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB189:
	movl	$0, -292(%rbp)
.L552:
	.loc 4 1615 0 discriminator 12
	cmpl	$7, -292(%rbp)
	jg	.L551
	.loc 4 1615 0 discriminator 11
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	addq	%rax, %rdx
	movl	-292(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-292(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -292(%rbp)
	jmp	.L552
.L551:
.LBE189:
	.loc 4 1615 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB190:
	movl	$0, -288(%rbp)
.L554:
	.loc 4 1615 0 discriminator 16
	cmpl	$7, -288(%rbp)
	jg	.L553
	.loc 4 1615 0 discriminator 15
	movl	-288(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-288(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -288(%rbp)
	jmp	.L554
.L553:
.LBE190:
	.loc 4 1615 0 discriminator 14
	movl	-332(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-192(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-144(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-152(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0
	mulsd	-144(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBE186:
.LBE185:
	jmp	.L555
.L546:
.LBB191:
	.loc 4 1620 0 is_stmt 1
	movl	-332(%rbp), %eax
	movl	%eax, -284(%rbp)
	.loc 4 1621 0
	cmpl	$0, -332(%rbp)
	jns	.L556
	.loc 4 1622 0
	negl	-284(%rbp)
.L556:
	.loc 4 1623 0
	movl	-284(%rbp), %eax
	imull	$713, %eax, %eax
	sarl	$14, %eax
	movl	%eax, -280(%rbp)
	.loc 4 1624 0
	cmpl	$13, -280(%rbp)
	jle	.L557
	.loc 4 1625 0
	movl	$13, -280(%rbp)
.L557:
	.loc 4 1626 0
	movl	-280(%rbp), %eax
	imull	$-23, %eax, %edx
	movl	-284(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	.loc 4 1628 0
	movsd	-328(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 4 1629 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB192:
	.loc 4 1630 0
	cmpl	$0, -332(%rbp)
	jns	.L558
.LBB193:
.LBB194:
	.loc 4 1631 0
	cmpl	$0, -276(%rbp)
	je	.L559
.LBB195:
	.loc 4 1632 0
	subl	$1, -276(%rbp)
.LBB196:
	.loc 4 1633 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negbot(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-328(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB197:
	movl	$0, -272(%rbp)
.L561:
	.loc 4 1633 0 is_stmt 0 discriminator 4
	cmpl	$7, -272(%rbp)
	jg	.L560
	.loc 4 1633 0 discriminator 3
	movl	-272(%rbp), %eax
	cltq
	leaq	-328(%rbp), %rdx
	addq	%rdx, %rax
	movl	-272(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -272(%rbp)
	jmp	.L561
.L560:
.LBE197:
	.loc 4 1633 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB198:
	movl	$0, -268(%rbp)
.L563:
	.loc 4 1633 0 discriminator 8
	cmpl	$7, -268(%rbp)
	jg	.L562
	.loc 4 1633 0 discriminator 7
	movl	-268(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-268(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -268(%rbp)
	jmp	.L563
.L562:
.LBE198:
	.loc 4 1633 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB199:
	movl	$0, -264(%rbp)
.L565:
	.loc 4 1633 0 discriminator 12
	cmpl	$7, -264(%rbp)
	jg	.L564
	.loc 4 1633 0 discriminator 11
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negbot(%rip), %rax
	addq	%rax, %rdx
	movl	-264(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-264(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -264(%rbp)
	jmp	.L565
.L564:
.LBE199:
	.loc 4 1633 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB200:
	movl	$0, -260(%rbp)
.L567:
	.loc 4 1633 0 discriminator 16
	cmpl	$7, -260(%rbp)
	jg	.L566
	.loc 4 1633 0 discriminator 15
	movl	-260(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-260(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -260(%rbp)
	jmp	.L567
.L566:
.LBE200:
	.loc 4 1633 0 discriminator 14
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negbot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-192(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-56(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBE196:
	.loc 4 1634 0 is_stmt 1 discriminator 14
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL16stbsp__negboterr(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-328(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
.L559:
.LBE195:
.LBE194:
.LBB201:
	.loc 4 1636 0
	cmpl	$0, -280(%rbp)
	je	.L555
.LBB202:
.LBB203:
	.loc 4 1637 0
	movsd	-192(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-192(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBE203:
	.loc 4 1638 0
	subl	$1, -280(%rbp)
.LBB204:
	.loc 4 1639 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negtop(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-192(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB205:
	movl	$0, -256(%rbp)
.L570:
	.loc 4 1639 0 is_stmt 0 discriminator 4
	cmpl	$7, -256(%rbp)
	jg	.L569
	.loc 4 1639 0 discriminator 3
	movl	-256(%rbp), %eax
	cltq
	leaq	-192(%rbp), %rdx
	addq	%rdx, %rax
	movl	-256(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -256(%rbp)
	jmp	.L570
.L569:
.LBE205:
	.loc 4 1639 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB206:
	movl	$0, -252(%rbp)
.L572:
	.loc 4 1639 0 discriminator 8
	cmpl	$7, -252(%rbp)
	jg	.L571
	.loc 4 1639 0 discriminator 7
	movl	-252(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-252(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -252(%rbp)
	jmp	.L572
.L571:
.LBE206:
	.loc 4 1639 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB207:
	movl	$0, -248(%rbp)
.L574:
	.loc 4 1639 0 discriminator 12
	cmpl	$7, -248(%rbp)
	jg	.L573
	.loc 4 1639 0 discriminator 11
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negtop(%rip), %rax
	addq	%rax, %rdx
	movl	-248(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-248(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -248(%rbp)
	jmp	.L574
.L573:
.LBE207:
	.loc 4 1639 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB208:
	movl	$0, -244(%rbp)
.L576:
	.loc 4 1639 0 discriminator 16
	cmpl	$7, -244(%rbp)
	jg	.L575
	.loc 4 1639 0 discriminator 15
	movl	-244(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-244(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -244(%rbp)
	jmp	.L576
.L575:
.LBE208:
	.loc 4 1639 0 discriminator 14
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negtop(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-112(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-32(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0
	mulsd	-24(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
.LBE204:
	.loc 4 1640 0 is_stmt 1 discriminator 14
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL16stbsp__negtoperr(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-192(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__negtop(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	mulsd	-160(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	.loc 4 1641 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 4 1642 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.LBE202:
	jmp	.L555
.L558:
.LBE201:
.LBE193:
.LBB209:
.LBB210:
	.loc 4 1645 0
	cmpl	$0, -276(%rbp)
	je	.L577
.LBB211:
	.loc 4 1646 0
	movl	-276(%rbp), %eax
	movl	%eax, -284(%rbp)
	.loc 4 1647 0
	cmpl	$22, -276(%rbp)
	jle	.L578
	.loc 4 1648 0
	movl	$22, -276(%rbp)
.L578:
	.loc 4 1649 0
	movl	-276(%rbp), %eax
	subl	%eax, -284(%rbp)
.LBB212:
	.loc 4 1650 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-328(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB213:
	movl	$0, -240(%rbp)
.L580:
	.loc 4 1650 0 is_stmt 0 discriminator 4
	cmpl	$7, -240(%rbp)
	jg	.L579
	.loc 4 1650 0 discriminator 3
	movl	-240(%rbp), %eax
	cltq
	leaq	-328(%rbp), %rdx
	addq	%rdx, %rax
	movl	-240(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -240(%rbp)
	jmp	.L580
.L579:
.LBE213:
	.loc 4 1650 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB214:
	movl	$0, -236(%rbp)
.L582:
	.loc 4 1650 0 discriminator 8
	cmpl	$7, -236(%rbp)
	jg	.L581
	.loc 4 1650 0 discriminator 7
	movl	-236(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-236(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -236(%rbp)
	jmp	.L582
.L581:
.LBE214:
	.loc 4 1650 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB215:
	movl	$0, -232(%rbp)
.L584:
	.loc 4 1650 0 discriminator 12
	cmpl	$7, -232(%rbp)
	jg	.L583
	.loc 4 1650 0 discriminator 11
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	addq	%rax, %rdx
	movl	-232(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-232(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -232(%rbp)
	jmp	.L584
.L583:
.LBE215:
	.loc 4 1650 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB216:
	movl	$0, -228(%rbp)
.L586:
	.loc 4 1650 0 discriminator 16
	cmpl	$7, -228(%rbp)
	jg	.L585
	.loc 4 1650 0 discriminator 15
	movl	-228(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-228(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -228(%rbp)
	jmp	.L586
.L585:
.LBE216:
	.loc 4 1650 0 discriminator 14
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-192(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-128(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-136(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0
	mulsd	-128(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBE212:
.LBB217:
	.loc 4 1651 0 is_stmt 1 discriminator 14
	cmpl	$0, -284(%rbp)
	je	.L577
.LBB218:
.LBB219:
	.loc 4 1652 0
	movsd	-192(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	-192(%rbp), %xmm1
	movsd	-120(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-120(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBE219:
.LBB220:
	.loc 4 1653 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-192(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB221:
	movl	$0, -224(%rbp)
.L589:
	.loc 4 1653 0 is_stmt 0 discriminator 4
	cmpl	$7, -224(%rbp)
	jg	.L588
	.loc 4 1653 0 discriminator 3
	movl	-224(%rbp), %eax
	cltq
	leaq	-192(%rbp), %rdx
	addq	%rdx, %rax
	movl	-224(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -224(%rbp)
	jmp	.L589
.L588:
.LBE221:
	.loc 4 1653 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB222:
	movl	$0, -220(%rbp)
.L591:
	.loc 4 1653 0 discriminator 8
	cmpl	$7, -220(%rbp)
	jg	.L590
	.loc 4 1653 0 discriminator 7
	movl	-220(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-220(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -220(%rbp)
	jmp	.L591
.L590:
.LBE222:
	.loc 4 1653 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB223:
	movl	$0, -216(%rbp)
.L593:
	.loc 4 1653 0 discriminator 12
	cmpl	$7, -216(%rbp)
	jg	.L592
	.loc 4 1653 0 discriminator 11
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	addq	%rax, %rdx
	movl	-216(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-216(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -216(%rbp)
	jmp	.L593
.L592:
.LBE223:
	.loc 4 1653 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB224:
	movl	$0, -212(%rbp)
.L595:
	.loc 4 1653 0 discriminator 16
	cmpl	$7, -212(%rbp)
	jg	.L594
	.loc 4 1653 0 discriminator 15
	movl	-212(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -212(%rbp)
	jmp	.L595
.L594:
.LBE224:
	.loc 4 1653 0 discriminator 14
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-112(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0
	mulsd	-96(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
.LBE220:
	.loc 4 1654 0 is_stmt 1 discriminator 14
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	mulsd	-160(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	.loc 4 1655 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 4 1656 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.L577:
.LBE218:
.LBE217:
.LBE211:
.LBE210:
.LBB225:
	.loc 4 1659 0
	cmpl	$0, -280(%rbp)
	je	.L555
.LBB226:
.LBB227:
	.loc 4 1660 0
	movsd	-192(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-192(%rbp), %xmm1
	movsd	-80(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-80(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBE227:
	.loc 4 1661 0
	subl	$1, -280(%rbp)
.LBB228:
	.loc 4 1662 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__top(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-192(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB229:
	movl	$0, -208(%rbp)
.L597:
	.loc 4 1662 0 is_stmt 0 discriminator 4
	cmpl	$7, -208(%rbp)
	jg	.L596
	.loc 4 1662 0 discriminator 3
	movl	-208(%rbp), %eax
	cltq
	leaq	-192(%rbp), %rdx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -208(%rbp)
	jmp	.L597
.L596:
.LBE229:
	.loc 4 1662 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB230:
	movl	$0, -204(%rbp)
.L599:
	.loc 4 1662 0 discriminator 8
	cmpl	$7, -204(%rbp)
	jg	.L598
	.loc 4 1662 0 discriminator 7
	movl	-204(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-204(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-184(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -204(%rbp)
	jmp	.L599
.L598:
.LBE230:
	.loc 4 1662 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB231:
	movl	$0, -200(%rbp)
.L601:
	.loc 4 1662 0 discriminator 12
	cmpl	$7, -200(%rbp)
	jg	.L600
	.loc 4 1662 0 discriminator 11
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__top(%rip), %rax
	addq	%rax, %rdx
	movl	-200(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-168(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -200(%rbp)
	jmp	.L601
.L600:
.LBE231:
	.loc 4 1662 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB232:
	movl	$0, -196(%rbp)
.L603:
	.loc 4 1662 0 discriminator 16
	cmpl	$7, -196(%rbp)
	jg	.L602
	.loc 4 1662 0 discriminator 15
	movl	-196(%rbp), %eax
	cltq
	leaq	-168(%rbp), %rdx
	addq	%rdx, %rax
	movl	-196(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-176(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -196(%rbp)
	jmp	.L603
.L602:
.LBE232:
	.loc 4 1662 0 discriminator 14
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__top(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movsd	-176(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-184(%rbp), %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	subsd	-112(%rbp), %xmm1
	movsd	-184(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-176(%rbp), %xmm0
	mulsd	-72(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
.LBE228:
	.loc 4 1663 0 is_stmt 1 discriminator 14
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__toperr(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movsd	-192(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__top(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	mulsd	-160(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	.loc 4 1664 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 4 1665 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.L555:
.LBE226:
.LBE225:
.LBE209:
.LBE192:
.LBE191:
.LBE184:
.LBB233:
	.loc 4 1669 0
	movsd	-192(%rbp), %xmm0
	movsd	-160(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-192(%rbp), %xmm1
	movsd	-16(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBE233:
	.loc 4 1670 0
	movsd	-192(%rbp), %xmm0
	movq	-312(%rbp), %rax
	movsd	%xmm0, (%rax)
	.loc 4 1671 0
	movq	-320(%rbp), %rax
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	.loc 4 1672 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L604
	call	__stack_chk_fail@PLT
.L604:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	_ZL23stbsp__raise_to_power10PdS_di, .-_ZL23stbsp__raise_to_power10PdS_di
	.section	.rodata
.LC19:
	.string	"NaN"
.LC20:
	.string	"Inf"
	.text
	.type	_ZL18stbsp__real_to_strPPKcPjPcPidj, @function
_ZL18stbsp__real_to_strPPKcPjPcPidj:
.LFB61:
	.loc 4 1679 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movsd	%xmm0, -168(%rbp)
	movl	%r8d, -172(%rbp)
	.loc 4 1679 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 1681 0
	movq	$0, -88(%rbp)
	.loc 4 1684 0
	movsd	-168(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
.LBB234:
	.loc 4 1685 0
	movl	$0, -116(%rbp)
.L607:
	.loc 4 1685 0 is_stmt 0 discriminator 3
	cmpl	$7, -116(%rbp)
	jg	.L606
	.loc 4 1685 0 discriminator 2
	movl	-116(%rbp), %eax
	cltq
	leaq	-96(%rbp), %rdx
	addq	%rdx, %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	leaq	-88(%rbp), %rcx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -116(%rbp)
	jmp	.L607
.L606:
.LBE234:
	.loc 4 1686 0 is_stmt 1
	movq	-88(%rbp), %rax
	sarq	$52, %rax
	andl	$2047, %eax
	movl	%eax, -124(%rbp)
	.loc 4 1687 0
	movq	-88(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -100(%rbp)
	.loc 4 1688 0
	cmpl	$0, -100(%rbp)
	je	.L608
	.loc 4 1689 0
	movsd	-96(%rbp), %xmm1
	movq	.LC15(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
.L608:
	.loc 4 1691 0
	cmpl	$2047, -124(%rbp)
	jne	.L609
	.loc 4 1693 0
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$4503599627370495, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L610
	.loc 4 1693 0 is_stmt 0 discriminator 1
	leaq	.LC19(%rip), %rax
	jmp	.L611
.L610:
	.loc 4 1693 0 discriminator 2
	leaq	.LC20(%rip), %rax
.L611:
	.loc 4 1693 0 discriminator 4
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 4 1694 0 is_stmt 1 discriminator 4
	movq	-160(%rbp), %rax
	movl	$28672, (%rax)
	.loc 4 1695 0 discriminator 4
	movq	-144(%rbp), %rax
	movl	$3, (%rax)
	.loc 4 1696 0 discriminator 4
	movl	-100(%rbp), %eax
	jmp	.L647
.L609:
.LBB235:
	.loc 4 1699 0
	cmpl	$0, -124(%rbp)
	jne	.L613
.LBB236:
	.loc 4 1701 0
	movq	-88(%rbp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	jne	.L614
	.loc 4 1703 0
	movq	-160(%rbp), %rax
	movl	$1, (%rax)
	.loc 4 1704 0
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 1705 0
	movq	-152(%rbp), %rax
	movb	$48, (%rax)
	.loc 4 1706 0
	movq	-144(%rbp), %rax
	movl	$1, (%rax)
	.loc 4 1707 0
	movl	-100(%rbp), %eax
	jmp	.L647
.L614:
.LBB237:
	.loc 4 1711 0
	movabsq	$2251799813685248, %rax
	movq	%rax, -64(%rbp)
.L616:
	.loc 4 1712 0
	movq	-88(%rbp), %rax
	andq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L613
	.loc 4 1713 0
	subl	$1, -124(%rbp)
	.loc 4 1714 0
	sarq	-64(%rbp)
	.loc 4 1712 0
	jmp	.L616
.L613:
.LBE237:
.LBE236:
.LBE235:
.LBB238:
	.loc 4 1724 0
	movl	-124(%rbp), %eax
	subl	$1023, %eax
	movl	%eax, -120(%rbp)
	.loc 4 1725 0
	cmpl	$0, -120(%rbp)
	jns	.L617
	.loc 4 1725 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax
	imull	$617, %eax, %eax
	leal	2047(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$11, %eax
	jmp	.L618
.L617:
	.loc 4 1725 0 discriminator 2
	movl	-120(%rbp), %eax
	imull	$1233, %eax, %eax
	leal	4095(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$12, %eax
	addl	$1, %eax
.L618:
	.loc 4 1725 0 discriminator 4
	movl	%eax, -120(%rbp)
	.loc 4 1728 0 is_stmt 1 discriminator 4
	movl	$18, %eax
	subl	-120(%rbp), %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rsi
	leaq	-72(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	%rsi, -184(%rbp)
	movsd	-184(%rbp), %xmm0
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL23stbsp__raise_to_power10PdS_di
.LBB239:
	.loc 4 1731 0 discriminator 4
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-80(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-80(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-80(%rbp), %xmm1
	movsd	-56(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1
	addsd	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-56(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
.LBE239:
	.loc 4 1734 0 discriminator 4
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$999999999999999999, %rax
	cmpq	%rax, %rdx
	jbe	.L619
	.loc 4 1735 0
	addl	$1, -120(%rbp)
.L619:
.LBE238:
	.loc 4 1739 0
	movl	-172(%rbp), %eax
	testl	%eax, %eax
	jns	.L620
	.loc 4 1739 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax
	andl	$134217727, %eax
	addl	$1, %eax
	jmp	.L621
.L620:
	.loc 4 1739 0 discriminator 2
	movl	-120(%rbp), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
.L621:
	.loc 4 1739 0 discriminator 4
	movl	%eax, -172(%rbp)
.LBB240:
	.loc 4 1740 0 is_stmt 1 discriminator 4
	cmpl	$23, -172(%rbp)
	ja	.L622
.LBB241:
	.loc 4 1741 0
	movl	$1, -112(%rbp)
	.loc 4 1742 0
	movl	$1000000000, %edx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L627
	.loc 4 1743 0
	movl	$10, -112(%rbp)
.L627:
	.loc 4 1744 0
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.L624
	.loc 4 1745 0
	addl	$1, -112(%rbp)
	.loc 4 1746 0
	cmpl	$20, -112(%rbp)
	je	.L650
	.loc 4 1744 0
	jmp	.L627
.L624:
.LBB242:
	.loc 4 1749 0
	movl	-172(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jnb	.L651
.LBB243:
	.loc 4 1752 0
	movl	-112(%rbp), %eax
	subl	-172(%rbp), %eax
	movl	%eax, -72(%rbp)
	.loc 4 1753 0
	movl	-72(%rbp), %eax
	cmpl	$23, %eax
	ja	.L652
	.loc 4 1755 0
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 4 1756 0
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 4 1757 0
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.L629
	.loc 4 1758 0
	addl	$1, -120(%rbp)
.L629:
	.loc 4 1759 0
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, -88(%rbp)
.LBE243:
	jmp	.L622
.L626:
.L650:
.LBE242:
	.loc 4 1747 0
	nop
	jmp	.L622
.L651:
	.loc 4 1761 0
	nop
	jmp	.L622
.L652:
.LBB245:
.LBB244:
	.loc 4 1754 0
	nop
.L622:
.LBE244:
.LBE245:
.LBE241:
.LBE240:
.LBB246:
	.loc 4 1765 0
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L630
.L635:
.LBB247:
	.loc 4 1768 0
	movq	-88(%rbp), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	jle	.L653
	.loc 4 1770 0
	movq	-88(%rbp), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$1000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	testq	%rax, %rax
	jne	.L654
	.loc 4 1772 0
	movq	-88(%rbp), %rcx
	movabsq	$2361183241434822607, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$7, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 4 1768 0
	jmp	.L635
.L653:
	.loc 4 1769 0
	nop
	.loc 4 1774 0
	movq	-88(%rbp), %rax
	movl	%eax, -108(%rbp)
.L637:
	.loc 4 1775 0
	movl	-108(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %eax
	imull	$1000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jne	.L636
	.loc 4 1776 0
	movl	-108(%rbp), %eax
	movl	$274877907, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %eax
	movl	%eax, -108(%rbp)
	.loc 4 1775 0
	jmp	.L637
.L636:
	.loc 4 1777 0
	movl	-108(%rbp), %eax
	movq	%rax, -88(%rbp)
	jmp	.L630
.L634:
.L654:
	.loc 4 1771 0
	nop
.L630:
.LBE247:
.LBE246:
	.loc 4 1782 0
	addq	$64, -152(%rbp)
	.loc 4 1783 0
	movl	$0, -72(%rbp)
.L646:
.LBB248:
.LBB249:
	.loc 4 1786 0
	movq	-152(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -16(%rbp)
	.loc 4 1788 0
	movq	-88(%rbp), %rax
	cmpq	$99999999, %rax
	jle	.L638
	.loc 4 1789 0
	movq	-88(%rbp), %rcx
	movabsq	$6189700196426901375, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$25, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	imulq	$100000000, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -104(%rbp)
	.loc 4 1790 0
	movq	-88(%rbp), %rcx
	movabsq	$6189700196426901375, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$25, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -88(%rbp)
	jmp	.L641
.L638:
	.loc 4 1792 0
	movq	-88(%rbp), %rax
	movl	%eax, -104(%rbp)
	.loc 4 1793 0
	movq	$0, -88(%rbp)
.L641:
	.loc 4 1795 0
	cmpl	$0, -104(%rbp)
	je	.L640
	.loc 4 1796 0
	subq	$2, -152(%rbp)
	.loc 4 1797 0
	movl	-104(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	leaq	_ZL16stbsp__digitpair(%rip), %rax
	addq	%rdx, %rax
	addq	$2, %rax
	movzwl	(%rax), %edx
	movq	-152(%rbp), %rax
	movw	%dx, (%rax)
	.loc 4 1798 0
	movl	-104(%rbp), %eax
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	%eax, -104(%rbp)
	.loc 4 1799 0
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -72(%rbp)
	.loc 4 1795 0
	jmp	.L641
.L640:
	.loc 4 1801 0
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L642
	.loc 4 1802 0
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	je	.L655
	.loc 4 1802 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L655
	.loc 4 1803 0 is_stmt 1
	addq	$1, -152(%rbp)
	.loc 4 1804 0
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc 4 1806 0
	jmp	.L655
.L642:
	.loc 4 1808 0
	movq	-152(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L646
	.loc 4 1809 0
	subq	$1, -152(%rbp)
	movq	-152(%rbp), %rax
	movb	$48, (%rax)
	.loc 4 1810 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc 4 1808 0
	jmp	.L642
.L655:
	.loc 4 1806 0
	nop
.LBE249:
.LBE248:
	.loc 4 1814 0
	movq	-160(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, (%rax)
	.loc 4 1815 0
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 1816 0
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	.loc 4 1817 0
	movl	-100(%rbp), %eax
.L647:
	.loc 4 1818 0 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L648
	.loc 4 1818 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L648:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	_ZL18stbsp__real_to_strPPKcPjPcPidj, .-_ZL18stbsp__real_to_strPPKcPjPcPidj
	.section	.text._Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t,"axG",@progbits,_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t,comdat
	.weak	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t
	.type	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t, @function
_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t:
.LFB62:
	.file 5 "/home/amos/prog/c/amos_libraries/preprocessor/test/Generated_Test.h"
	.loc 5 176 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	.loc 5 176 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 177 0
	movl	$0, -28(%rbp)
.LBB250:
	.loc 5 178 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L657
.LBB251:
	.loc 5 181 0
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	jsmn_init
	.loc 5 182 0
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	-20(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movq	%rax, %rdi
	call	jsmn_parse
	movl	%eax, -24(%rbp)
	.loc 5 183 0
	cmpl	$0, -24(%rbp)
	jle	.L659
	.loc 5 187 0
	movl	-24(%rbp), %eax
	addl	$1, %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 188 0
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	jsmn_init
	.loc 5 189 0
	movl	-24(%rbp), %edi
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rsi
	leaq	-20(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
	call	jsmn_parse
	movl	%eax, -28(%rbp)
	jmp	.L659
.L657:
.LBE251:
	.loc 5 194 0
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, -28(%rbp)
.L659:
.LBE250:
	.loc 5 197 0
	movl	-28(%rbp), %eax
	.loc 5 198 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L661
	call	__stack_chk_fail@PLT
.L661:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t, .-_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t
	.section	.text._Z10StartGroupPcj,"axG",@progbits,_Z10StartGroupPcj,comdat
	.weak	_Z10StartGroupPcj
	.type	_Z10StartGroupPcj, @function
_Z10StartGroupPcj:
.LFB63:
	.loc 5 202 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 5 203 0
	movl	$0, -4(%rbp)
	.loc 5 204 0
	cmpl	$0, -28(%rbp)
	je	.L663
	.loc 5 206 0
	movq	-24(%rbp), %rax
	movb	$123, (%rax)
	.loc 5 207 0
	addl	$1, -4(%rbp)
.L663:
	.loc 5 210 0
	movl	-4(%rbp), %eax
	.loc 5 211 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	_Z10StartGroupPcj, .-_Z10StartGroupPcj
	.section	.text._Z8EndGroupPcja,"axG",@progbits,_Z8EndGroupPcja,comdat
	.weak	_Z8EndGroupPcja
	.type	_Z8EndGroupPcja, @function
_Z8EndGroupPcja:
.LFB64:
	.loc 5 215 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, %eax
	movb	%al, -32(%rbp)
	.loc 5 216 0
	movl	$0, -4(%rbp)
	.loc 5 217 0
	cmpb	$0, -32(%rbp)
	je	.L666
	.loc 5 217 0 is_stmt 0 discriminator 1
	cmpl	$0, -28(%rbp)
	je	.L666
	.loc 5 219 0 is_stmt 1
	movq	-24(%rbp), %rax
	movb	$125, (%rax)
	.loc 5 220 0
	addl	$1, -4(%rbp)
	jmp	.L667
.L666:
	.loc 5 222 0
	cmpb	$0, -32(%rbp)
	jne	.L667
	.loc 5 222 0 is_stmt 0 discriminator 1
	cmpl	$1, -28(%rbp)
	jbe	.L667
	.loc 5 224 0 is_stmt 1
	movq	-24(%rbp), %rax
	movb	$125, (%rax)
	.loc 5 225 0
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movb	$44, (%rax)
	.loc 5 226 0
	addl	$2, -4(%rbp)
.L667:
	.loc 5 229 0
	movl	-4(%rbp), %eax
	.loc 5 230 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	_Z8EndGroupPcja, .-_Z8EndGroupPcja
	.text
	.globl	_Z12StringToEnumI8test_cmdET_PKc
	.type	_Z12StringToEnumI8test_cmdET_PKc, @function
_Z12StringToEnumI8test_cmdET_PKc:
.LFB67:
	.loc 5 258 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 259 0
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	leaq	_ZL16test_cmd_Strings(%rip), %rdx
	movl	$6, %esi
	movq	%rax, %rdi
	call	_Z14abs_FindInListPKcjPK13abs_stringptra
	movl	%eax, -4(%rbp)
	.loc 5 260 0
	movl	$0, -8(%rbp)
	.loc 5 261 0
	cmpl	$5, -4(%rbp)
	ja	.L670
	.loc 5 263 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L670:
	.loc 5 265 0
	movl	-8(%rbp), %eax
	.loc 5 266 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	_Z12StringToEnumI8test_cmdET_PKc, .-_Z12StringToEnumI8test_cmdET_PKc
	.globl	_Z12StringToEnumI8test_cmdET_13abs_stringptr
	.type	_Z12StringToEnumI8test_cmdET_13abs_stringptr, @function
_Z12StringToEnumI8test_cmdET_13abs_stringptr:
.LFB68:
	.loc 5 269 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 5 270 0
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	leaq	_ZL16test_cmd_Strings(%rip), %rcx
	movl	$6, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_Z14abs_FindInList13abs_stringptrjPKS_a
	movl	%eax, -4(%rbp)
	.loc 5 271 0
	movl	$0, -8(%rbp)
	.loc 5 272 0
	cmpl	$5, -4(%rbp)
	ja	.L673
	.loc 5 274 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L673:
	.loc 5 276 0
	movl	-8(%rbp), %eax
	.loc 5 277 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	_Z12StringToEnumI8test_cmdET_13abs_stringptr, .-_Z12StringToEnumI8test_cmdET_13abs_stringptr
	.section	.text._Z13EnumToCString8test_cmd,"axG",@progbits,_Z13EnumToCString8test_cmd,comdat
	.weak	_Z13EnumToCString8test_cmd
	.type	_Z13EnumToCString8test_cmd, @function
_Z13EnumToCString8test_cmd:
.LFB69:
	.loc 5 280 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 5 281 0
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_ZL16test_cmd_Strings(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 5 282 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	_Z13EnumToCString8test_cmd, .-_Z13EnumToCString8test_cmd
	.section	.rodata
.LC21:
	.string	"\"%s\":\"%s\""
	.text
	.globl	_Z8PushJsonPcjPKc7Coloursj
	.type	_Z8PushJsonPcjPKc7Coloursj, @function
_Z8PushJsonPcjPKc7Coloursj:
.LFB71:
	.loc 5 294 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -44(%rbp)
	.loc 5 295 0
	movl	$0, -4(%rbp)
	.loc 5 296 0
	movl	-44(%rbp), %eax
	andl	$1, %eax
	movb	%al, -5(%rbp)
	.loc 5 297 0
	movl	-32(%rbp), %eax
	movl	%eax, %edi
	call	_Z13EnumToCString7Colours
	movq	%rax, %rcx
	movl	-28(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC21(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -4(%rbp)
	.loc 5 298 0
	cmpb	$0, -5(%rbp)
	jne	.L678
	.loc 5 298 0 is_stmt 0 discriminator 1
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$44, (%rax)
.L678:
	.loc 5 299 0 is_stmt 1
	movl	-4(%rbp), %eax
	.loc 5 300 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	_Z8PushJsonPcjPKc7Coloursj, .-_Z8PushJsonPcjPKc7Coloursj
	.globl	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj
	.type	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj, @function
_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj:
.LFB72:
	.loc 5 303 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%r8, -104(%rbp)
	movl	%r9d, -108(%rbp)
	.loc 5 303 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 304 0
	movl	$0, -52(%rbp)
	.loc 5 305 0
	movl	$0, -48(%rbp)
	.loc 5 307 0
	leaq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t
	movl	%eax, -40(%rbp)
.LBB252:
	.loc 5 308 0
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	je	.L681
.LBB253:
	.loc 5 310 0
	movl	$0, -44(%rbp)
	.loc 5 311 0
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L682
	.loc 5 311 0 is_stmt 0 discriminator 1
	cmpl	$1, -40(%rbp)
	jle	.L682
	.loc 5 314 0 is_stmt 1
	addl	$1, -44(%rbp)
.L682:
.LBB254:
	.loc 5 316 0
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.L683
.LBB255:
	.loc 5 318 0
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	8(%rax), %edx
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -36(%rbp)
	.loc 5 319 0
	movq	-96(%rbp), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-80(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKci
	.loc 5 320 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z12StringToEnumI7ColoursET_13abs_stringptr
	movl	%eax, -52(%rbp)
	.loc 5 321 0
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBE255:
	jmp	.L681
.L683:
	.loc 5 325 0
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
.L681:
.LBE254:
.LBE253:
.LBE252:
	.loc 5 328 0
	movq	-104(%rbp), %rax
	movl	-52(%rbp), %edx
	movl	%edx, (%rax)
	.loc 5 329 0
	movq	-96(%rbp), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	.loc 5 330 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L686
	call	__stack_chk_fail@PLT
.L686:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj, .-_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj
	.globl	_Z12StringToEnumI7ColoursET_PKc
	.type	_Z12StringToEnumI7ColoursET_PKc, @function
_Z12StringToEnumI7ColoursET_PKc:
.LFB73:
	.loc 5 334 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 335 0
	movq	-24(%rbp), %rax
	movl	$1, %ecx
	leaq	_ZL15Colours_Strings(%rip), %rdx
	movl	$3, %esi
	movq	%rax, %rdi
	call	_Z14abs_FindInListPKcjPK13abs_stringptra
	movl	%eax, -4(%rbp)
	.loc 5 336 0
	movl	$0, -8(%rbp)
	.loc 5 337 0
	cmpl	$2, -4(%rbp)
	ja	.L688
	.loc 5 339 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L688:
	.loc 5 341 0
	movl	-8(%rbp), %eax
	.loc 5 342 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	_Z12StringToEnumI7ColoursET_PKc, .-_Z12StringToEnumI7ColoursET_PKc
	.globl	_Z12StringToEnumI7ColoursET_13abs_stringptr
	.type	_Z12StringToEnumI7ColoursET_13abs_stringptr, @function
_Z12StringToEnumI7ColoursET_13abs_stringptr:
.LFB74:
	.loc 5 345 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 5 346 0
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$1, %r8d
	leaq	_ZL15Colours_Strings(%rip), %rcx
	movl	$3, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_Z14abs_FindInList13abs_stringptrjPKS_a
	movl	%eax, -4(%rbp)
	.loc 5 347 0
	movl	$0, -8(%rbp)
	.loc 5 348 0
	cmpl	$2, -4(%rbp)
	ja	.L691
	.loc 5 350 0
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L691:
	.loc 5 352 0
	movl	-8(%rbp), %eax
	.loc 5 353 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	_Z12StringToEnumI7ColoursET_13abs_stringptr, .-_Z12StringToEnumI7ColoursET_13abs_stringptr
	.section	.text._Z13EnumToCString7Colours,"axG",@progbits,_Z13EnumToCString7Colours,comdat
	.weak	_Z13EnumToCString7Colours
	.type	_Z13EnumToCString7Colours, @function
_Z13EnumToCString7Colours:
.LFB75:
	.loc 5 356 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 5 357 0
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_ZL15Colours_Strings(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 5 358 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	_Z13EnumToCString7Colours, .-_Z13EnumToCString7Colours
	.section	.text._Z12EnumToString7Colours,"axG",@progbits,_Z12EnumToString7Colours,comdat
	.weak	_Z12EnumToString7Colours
	.type	_Z12EnumToString7Colours, @function
_Z12EnumToString7Colours:
.LFB76:
	.loc 5 362 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 5 363 0
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	leaq	_ZL15Colours_Strings(%rip), %rax
	leaq	(%rdx,%rax), %rdx
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	.loc 5 364 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	_Z12EnumToString7Colours, .-_Z12EnumToString7Colours
	.text
	.globl	_Z18EnumToLabel_Object7Colours
	.type	_Z18EnumToLabel_Object7Colours, @function
_Z18EnumToLabel_Object7Colours:
.LFB77:
	.loc 5 368 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	.loc 5 369 0
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	Colours_LabelObject(%rip), %rax
	movq	(%rdx,%rax), %rax
	.loc 5 370 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	_Z18EnumToLabel_Object7Colours, .-_Z18EnumToLabel_Object7Colours
	.section	.text._Z15InitializeQueueP14test_cmd_queue,"axG",@progbits,_Z15InitializeQueueP14test_cmd_queue,comdat
	.weak	_Z15InitializeQueueP14test_cmd_queue
	.type	_Z15InitializeQueueP14test_cmd_queue, @function
_Z15InitializeQueueP14test_cmd_queue:
.LFB78:
	.loc 5 376 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 5 377 0
	movq	-8(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-8(%rbp), %rax
	movl	44(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	.loc 5 378 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	_Z15InitializeQueueP14test_cmd_queue, .-_Z15InitializeQueueP14test_cmd_queue
	.section	.text._Z12isQueueEmptyP14test_cmd_queue,"axG",@progbits,_Z12isQueueEmptyP14test_cmd_queue,comdat
	.weak	_Z12isQueueEmptyP14test_cmd_queue
	.type	_Z12isQueueEmptyP14test_cmd_queue, @function
_Z12isQueueEmptyP14test_cmd_queue:
.LFB79:
	.loc 5 382 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 5 383 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$-1, %eax
	sete	%al
	movb	%al, -1(%rbp)
	.loc 5 384 0
	movzbl	-1(%rbp), %eax
	.loc 5 385 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	_Z12isQueueEmptyP14test_cmd_queue, .-_Z12isQueueEmptyP14test_cmd_queue
	.section	.text._Z11isQueueFullP14test_cmd_queue,"axG",@progbits,_Z11isQueueFullP14test_cmd_queue,comdat
	.weak	_Z11isQueueFullP14test_cmd_queue
	.type	_Z11isQueueFullP14test_cmd_queue, @function
_Z11isQueueFullP14test_cmd_queue:
.LFB80:
	.loc 5 389 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	.loc 5 390 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	addl	$1, %eax
	cmpl	%eax, %edx
	je	.L703
	.loc 5 391 0 discriminator 2
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	.loc 5 390 0 discriminator 2
	testl	%eax, %eax
	jne	.L704
	.loc 5 391 0
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	$9, %eax
	jne	.L704
.L703:
	.loc 5 390 0 discriminator 1
	movl	$1, %eax
	jmp	.L705
.L704:
	.loc 5 390 0 is_stmt 0 discriminator 3
	movl	$0, %eax
.L705:
	.loc 5 390 0 discriminator 5
	movb	%al, -1(%rbp)
	.loc 5 393 0 is_stmt 1 discriminator 5
	movzbl	-1(%rbp), %eax
	.loc 5 394 0 discriminator 5
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	_Z11isQueueFullP14test_cmd_queue, .-_Z11isQueueFullP14test_cmd_queue
	.text
	.globl	_Z7EnqueueP14test_cmd_queue8test_cmd
	.type	_Z7EnqueueP14test_cmd_queue8test_cmd, @function
_Z7EnqueueP14test_cmd_queue8test_cmd:
.LFB81:
	.loc 5 398 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	.loc 5 399 0
	movb	$0, -1(%rbp)
	.loc 5 400 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11isQueueFullP14test_cmd_queue
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L708
	.loc 5 402 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$-1, %eax
	jne	.L709
	.loc 5 404 0
	movq	-24(%rbp), %rax
	movl	$0, 40(%rax)
.L709:
	.loc 5 406 0
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	leal	1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 44(%rax)
	.loc 5 407 0
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	movl	-28(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
	.loc 5 409 0
	movb	$1, -1(%rbp)
.L708:
	.loc 5 411 0
	movzbl	-1(%rbp), %eax
	.loc 5 412 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	_Z7EnqueueP14test_cmd_queue8test_cmd, .-_Z7EnqueueP14test_cmd_queue8test_cmd
	.globl	_Z7DequeueP14test_cmd_queue
	.type	_Z7DequeueP14test_cmd_queue, @function
_Z7DequeueP14test_cmd_queue:
.LFB82:
	.loc 5 416 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 5 417 0
	movl	$0, -4(%rbp)
	.loc 5 418 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12isQueueEmptyP14test_cmd_queue
	testb	%al, %al
	sete	%al
	testb	%al, %al
	je	.L712
	.loc 5 420 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, -4(%rbp)
	.loc 5 421 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movl	44(%rax), %eax
	cmpl	%eax, %edx
	jne	.L713
	.loc 5 423 0
	movq	-24(%rbp), %rax
	movl	$-1, 44(%rax)
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
	jmp	.L712
.L713:
	.loc 5 427 0
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	leal	1(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 40(%rax)
.L712:
	.loc 5 431 0
	movl	-4(%rbp), %eax
	.loc 5 432 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
	.size	_Z7DequeueP14test_cmd_queue, .-_Z7DequeueP14test_cmd_queue
	.section	.text._Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE,"axG",@progbits,_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE,comdat
	.weak	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE
	.type	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE, @function
_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE:
.LFB83:
	.loc 5 440 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 441 0
	movb	$0, -1(%rbp)
	.loc 5 442 0
	cmpq	$0, -32(%rbp)
	je	.L717
	.loc 5 442 0 is_stmt 0 discriminator 1
	cmpq	$0, -24(%rbp)
	je	.L717
	.loc 5 444 0 is_stmt 1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 5 445 0
	movq	-24(%rbp), %rax
	movb	$1, 8(%rax)
.L717:
	.loc 5 448 0
	movzbl	-1(%rbp), %eax
	.loc 5 449 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE, .-_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE
	.section	.rodata
.LC22:
	.string	"Idle"
.LC23:
	.string	"Running"
.LC24:
	.string	"Unknown"
	.text
	.globl	_Z12GetStateNamePFvP9test_type8test_cmdiPKcE
	.type	_Z12GetStateNamePFvP9test_type8test_cmdiPKcE, @function
_Z12GetStateNamePFvP9test_type8test_cmdiPKcE:
.LFB84:
	.loc 5 453 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 5 454 0
	leaq	_Z4IdleP9test_type8test_cmdiPKc(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L720
	.loc 5 454 0 is_stmt 0 discriminator 1
	leaq	.LC22(%rip), %rax
	jmp	.L721
.L720:
	.loc 5 455 0 is_stmt 1
	leaq	_Z7RunningP9test_type8test_cmdiPKc(%rip), %rax
	cmpq	%rax, -8(%rbp)
	jne	.L722
	.loc 5 455 0 is_stmt 0 discriminator 1
	leaq	.LC23(%rip), %rax
	jmp	.L721
.L722:
	.loc 5 456 0 is_stmt 1
	leaq	.LC24(%rip), %rax
.L721:
	.loc 5 457 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	_Z12GetStateNamePFvP9test_type8test_cmdiPKcE, .-_Z12GetStateNamePFvP9test_type8test_cmdiPKcE
	.globl	_Z14EnqueueCommandP9test_type8test_cmd
	.type	_Z14EnqueueCommandP9test_type8test_cmd, @function
_Z14EnqueueCommandP9test_type8test_cmd:
.LFB85:
	.loc 5 461 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 5 462 0
	movq	-8(%rbp), %rax
	leaq	12(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_Z7EnqueueP14test_cmd_queue8test_cmd
	.loc 5 463 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	_Z14EnqueueCommandP9test_type8test_cmd, .-_Z14EnqueueCommandP9test_type8test_cmd
	.globl	_Z14DequeueCommandP9test_type
	.type	_Z14DequeueCommandP9test_type, @function
_Z14DequeueCommandP9test_type:
.LFB86:
	.loc 5 467 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 5 468 0
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z7DequeueP14test_cmd_queue
	.loc 5 469 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	_Z14DequeueCommandP9test_type, .-_Z14DequeueCommandP9test_type
	.section	.rodata
.LC25:
	.string	"\"%s\":"
.LC26:
	.string	"\"TestUnsigned\":%u,"
.LC27:
	.string	"\"TestString\":\"%.*s\","
.LC28:
	.string	"MyColour"
.LC29:
	.string	"true"
.LC30:
	.string	"false"
.LC31:
	.string	"\"isValue\":%s "
	.text
	.globl	_Z8PushJsonPcjPKcRK12my_json_testj
	.type	_Z8PushJsonPcjPKcRK12my_json_testj, @function
_Z8PushJsonPcjPKcRK12my_json_testj:
.LFB87:
	.loc 5 476 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -32(%rbp)
	.loc 5 477 0
	movl	$0, -12(%rbp)
	.loc 5 478 0
	movl	-32(%rbp), %eax
	andl	$1, %eax
	movb	%al, -13(%rbp)
	.loc 5 479 0
	movl	-32(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L728
	.loc 5 481 0
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$123, (%rax)
.L728:
	.loc 5 483 0
	movl	-32(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L729
	.loc 5 485 0
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rcx
	leaq	.LC25(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -12(%rbp)
.L729:
	.loc 5 487 0
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_Z10StartGroupPcj
	addl	%eax, -12(%rbp)
	.loc 5 488 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	-28(%rbp), %edx
	subl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movl	%eax, %ecx
	leaq	.LC26(%rip), %rdx
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -12(%rbp)
.LBB256:
	.loc 5 490 0
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	_Z16abs_StringLengthPKcj
	movl	%eax, %eax
	movq	%rax, -8(%rbp)
	.loc 5 491 0
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rcx, %r8
	movl	%edi, %ecx
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -12(%rbp)
.LBE256:
	.loc 5 493 0
	movq	-48(%rbp), %rax
	movl	52(%rax), %edx
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movl	$0, %r8d
	movl	%edx, %ecx
	leaq	.LC28(%rip), %rdx
	movl	%eax, %esi
	call	_Z8PushJsonPcjPKc7Coloursj
	addl	%eax, -12(%rbp)
	.loc 5 494 0
	movq	-48(%rbp), %rax
	movzbl	56(%rax), %eax
	testb	%al, %al
	je	.L730
	.loc 5 494 0 is_stmt 0 discriminator 1
	leaq	.LC29(%rip), %rax
	jmp	.L731
.L730:
	.loc 5 494 0 discriminator 2
	leaq	.LC30(%rip), %rax
.L731:
	.loc 5 494 0 discriminator 4
	movl	-28(%rbp), %edx
	subl	-12(%rbp), %edx
	movl	%edx, %esi
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rdx
	leaq	(%rcx,%rdx), %rdi
	movq	%rax, %rcx
	leaq	.LC31(%rip), %rdx
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -12(%rbp)
	.loc 5 495 0 is_stmt 1 discriminator 4
	movsbl	-13(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rcx
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	_Z8EndGroupPcja
	addl	%eax, -12(%rbp)
	.loc 5 496 0 discriminator 4
	movl	-32(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L732
	.loc 5 498 0
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movb	$125, (%rax)
.L732:
	.loc 5 500 0
	movl	-12(%rbp), %eax
	.loc 5 501 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	_Z8PushJsonPcjPKcRK12my_json_testj, .-_Z8PushJsonPcjPKcRK12my_json_testj
	.section	.rodata
.LC32:
	.string	"TestUnsigned"
.LC33:
	.string	"TestString"
.LC34:
	.string	"isValue"
	.text
	.globl	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist
	.type	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist, @function
_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist:
.LFB88:
	.loc 5 504 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	.loc 5 504 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 505 0
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -16(%rbp)
	.loc 5 506 0
	leaq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t
	movl	%eax, -40(%rbp)
	.loc 5 507 0
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB257:
	.loc 5 508 0
	cmpq	$0, -24(%rbp)
	je	.L735
.LBB258:
	.loc 5 510 0
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -36(%rbp)
	.loc 5 511 0
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -32(%rbp)
.LBB259:
	.loc 5 512 0
	movl	$0, -44(%rbp)
.L750:
	.loc 5 512 0 is_stmt 0 discriminator 1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.L735
.LBB260:
	.loc 5 514 0 is_stmt 1
	addq	$16, -24(%rbp)
	.loc 5 515 0
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%rbp)
	.loc 5 517 0
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %r8d
	movl	$12, %ecx
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	je	.L737
	.loc 5 518 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	.loc 5 517 0 discriminator 1
	cmpl	$4, %eax
	jne	.L737
	.loc 5 517 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L738
.L737:
	.loc 5 517 0 discriminator 4
	movl	$0, %eax
.L738:
	.loc 5 517 0 discriminator 6
	testb	%al, %al
	je	.L739
	.loc 5 520 0 is_stmt 1
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 5 521 0
	addq	$16, -24(%rbp)
	.loc 5 522 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
.L739:
.LBB261:
	.loc 5 525 0
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %r8d
	movl	$10, %ecx
	leaq	.LC33(%rip), %rdx
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	je	.L740
	.loc 5 526 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	.loc 5 525 0 discriminator 1
	cmpl	$3, %eax
	jne	.L740
	.loc 5 525 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L741
.L740:
	.loc 5 525 0 discriminator 4
	movl	$0, %eax
.L741:
	.loc 5 525 0 discriminator 6
	testb	%al, %al
	je	.L742
.LBB262:
	.loc 5 528 0 is_stmt 1
	movq	-16(%rbp), %rax
	movb	$1, 1(%rax)
	.loc 5 529 0
	addq	$16, -24(%rbp)
	.loc 5 530 0
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -48(%rbp)
	.loc 5 531 0
	movl	-48(%rbp), %eax
	movl	$49, %edx
	cmpl	$49, %eax
	cmovg	%edx, %eax
	movl	%eax, -28(%rbp)
	.loc 5 532 0
	movl	-28(%rbp), %eax
	cltq
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %edx
	movslq	%edx, %rcx
	movq	-64(%rbp), %rdx
	leaq	(%rcx,%rdx), %rsi
	movq	-88(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	strncpy@PLT
	.loc 5 533 0
	movq	-88(%rbp), %rdx
	movl	-28(%rbp), %eax
	cltq
	movb	$0, 1(%rdx,%rax)
.L742:
.LBE262:
.LBE261:
	.loc 5 536 0
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %r8d
	movl	$8, %ecx
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	je	.L743
	.loc 5 537 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	.loc 5 536 0 discriminator 1
	cmpl	$3, %eax
	je	.L744
	.loc 5 537 0
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L743
.L744:
	.loc 5 536 0 discriminator 3
	movl	$1, %eax
	jmp	.L745
.L743:
	.loc 5 536 0 is_stmt 0 discriminator 2
	movl	$0, %eax
.L745:
	.loc 5 536 0 discriminator 5
	testb	%al, %al
	je	.L746
	.loc 5 539 0 is_stmt 1
	movq	-16(%rbp), %rax
	movb	$1, 2(%rax)
	.loc 5 540 0
	movq	-88(%rbp), %rax
	leaq	52(%rax), %rdi
	addq	$16, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$0, %r9d
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj
	movq	%rax, -24(%rbp)
.L746:
	.loc 5 543 0
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %r8d
	movl	$7, %ecx
	leaq	.LC34(%rip), %rdx
	movq	%rax, %rdi
	call	_Z19abs_AreStringsEqualPKcjS0_ja
	testb	%al, %al
	je	.L747
	.loc 5 544 0 discriminator 1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movl	(%rax), %eax
	.loc 5 543 0 discriminator 1
	cmpl	$4, %eax
	jne	.L747
	.loc 5 543 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L748
.L747:
	.loc 5 543 0 discriminator 4
	movl	$0, %eax
.L748:
	.loc 5 543 0 discriminator 6
	testb	%al, %al
	je	.L749
	.loc 5 546 0 is_stmt 1
	movq	-16(%rbp), %rax
	movb	$1, 3(%rax)
	.loc 5 547 0
	addq	$16, -24(%rbp)
	.loc 5 548 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movslq	%eax, %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	leaq	.LC29(%rip), %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	sete	%al
	movl	%eax, %edx
	movq	-88(%rbp), %rax
	movb	%dl, 56(%rax)
.L749:
.LBE260:
	.loc 5 512 0 discriminator 2
	addl	$1, -44(%rbp)
	jmp	.L750
.L735:
.LBE259:
.LBE258:
.LBE257:
	.loc 5 554 0
	cmpq	$0, -96(%rbp)
	je	.L751
	.loc 5 556 0
	movq	-96(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L751:
	.loc 5 558 0
	movq	-24(%rbp), %rax
	.loc 5 559 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L753
	call	__stack_chk_fail@PLT
.L753:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist, .-_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist
	.globl	_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist
	.type	_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist, @function
_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist:
.LFB89:
	.loc 5 563 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	.loc 5 563 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 564 0
	movl	$0, -40(%rbp)
	.loc 5 566 0
	movq	$0, -24(%rbp)
	.loc 5 567 0
	leaq	-24(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t
	movl	%eax, -32(%rbp)
.LBB263:
	.loc 5 569 0
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L755
.LBB264:
	.loc 5 571 0
	movl	$0, -28(%rbp)
	.loc 5 572 0
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movl	%eax, %eax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	.loc 5 573 0
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L756
	.loc 5 576 0
	addl	$1, -28(%rbp)
	.loc 5 577 0
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -28(%rbp)
	movl	%eax, %eax
	salq	$4, %rax
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
.L756:
	.loc 5 580 0
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L757
	.loc 5 582 0
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -40(%rbp)
	.loc 5 583 0
	addq	$16, -16(%rbp)
	jmp	.L758
.L757:
	.loc 5 585 0
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L758
	.loc 5 587 0
	movl	$1, -40(%rbp)
.L758:
	.loc 5 590 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L759
	.loc 5 592 0
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
.L759:
	.loc 5 594 0
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L760
	.loc 5 596 0
	movl	-40(%rbp), %eax
	movl	%eax, %eax
	leaq	0(,%rax,4), %rcx
	movq	-56(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, (%rax)
.L760:
.LBB265:
	.loc 5 599 0
	movl	$0, -36(%rbp)
.L762:
	.loc 5 599 0 is_stmt 0 discriminator 2
	movl	-40(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jnb	.L755
	.loc 5 601 0 is_stmt 1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %r8
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movl	-36(%rbp), %edx
	movq	%rdx, %rax
	salq	$4, %rax
	subq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdi
	movq	-16(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist
	movq	%rax, -16(%rbp)
	.loc 5 602 0
	addq	$16, -16(%rbp)
	.loc 5 599 0
	addl	$1, -36(%rbp)
	jmp	.L762
.L755:
.LBE265:
.LBE264:
.LBE263:
	.loc 5 605 0
	movl	-40(%rbp), %eax
	.loc 5 606 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L764
	call	__stack_chk_fail@PLT
.L764:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist, .-_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist
	.type	_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm, @function
_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm:
.LFB90:
	.file 6 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/jsmn.h"
	.loc 6 115 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	.loc 6 117 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -40(%rbp)
	ja	.L766
	.loc 6 118 0
	movl	$0, %eax
	jmp	.L767
.L766:
	.loc 6 120 0
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movl	%eax, %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 6 121 0
	movq	-8(%rbp), %rax
	movl	$-1, 8(%rax)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 6 122 0
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 6 126 0
	movq	-8(%rbp), %rax
.L767:
	.loc 6 127 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
	.size	_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm, .-_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm
	.type	_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii, @function
_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii:
.LFB91:
	.loc 6 133 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	.loc 6 134 0
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 6 135 0
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	.loc 6 136 0
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 6 137 0
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 6 138 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii, .-_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii
	.type	_ZL20jsmn_parse_primitiveP11jsmn_parserPKcmP9jsmntok_tm, @function
_ZL20jsmn_parse_primitiveP11jsmn_parserPKcmP9jsmntok_tm:
.LFB92:
	.loc 6 145 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	.loc 6 149 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L778:
	.loc 6 151 0 discriminator 2
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -40(%rbp)
	jbe	.L782
	.loc 6 151 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L782
	.loc 6 152 0 is_stmt 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$32, %eax
	je	.L783
	cmpl	$32, %eax
	jg	.L773
	cmpl	$9, %eax
	jl	.L784
	cmpl	$10, %eax
	jle	.L783
	cmpl	$13, %eax
	je	.L783
	.loc 6 167 0
	jmp	.L784
.L773:
	.loc 6 152 0
	cmpl	$58, %eax
	je	.L783
	cmpl	$58, %eax
	jg	.L774
	cmpl	$44, %eax
	je	.L783
	.loc 6 167 0
	jmp	.L784
.L774:
	.loc 6 152 0
	cmpl	$93, %eax
	je	.L783
	cmpl	$125, %eax
	je	.L783
.L784:
	.loc 6 167 0
	nop
	.loc 6 169 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jle	.L775
	.loc 6 169 0 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$127, %al
	jne	.L776
.L775:
	.loc 6 170 0 is_stmt 1
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 171 0
	movl	$-2, %eax
	jmp	.L777
.L776:
	.loc 6 151 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L778
.L782:
	.loc 6 180 0
	nop
	jmp	.L770
.L783:
	.loc 6 164 0
	nop
.L770:
	.loc 6 181 0
	cmpq	$0, -48(%rbp)
	jne	.L779
	.loc 6 182 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 183 0
	movl	$0, %eax
	jmp	.L777
.L779:
	.loc 6 185 0
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm
	movq	%rax, -8(%rbp)
	.loc 6 186 0
	cmpq	$0, -8(%rbp)
	jne	.L780
	.loc 6 187 0
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 188 0
	movl	$-1, %eax
	jmp	.L777
.L780:
	.loc 6 190 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii
	.loc 6 194 0
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 195 0
	movl	$0, %eax
.L777:
	.loc 6 196 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	_ZL20jsmn_parse_primitiveP11jsmn_parserPKcmP9jsmntok_tm, .-_ZL20jsmn_parse_primitiveP11jsmn_parserPKcmP9jsmntok_tm
	.type	_ZL17jsmn_parse_stringP11jsmn_parserPKcmP9jsmntok_tm, @function
_ZL17jsmn_parse_stringP11jsmn_parserPKcmP9jsmntok_tm:
.LFB93:
	.loc 6 203 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	.loc 6 206 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc 6 208 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L803:
.LBB266:
	.loc 6 211 0 discriminator 2
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -56(%rbp)
	jbe	.L786
	.loc 6 211 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L786
.LBB267:
	.loc 6 212 0 is_stmt 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -17(%rbp)
	.loc 6 215 0
	cmpb	$34, -17(%rbp)
	jne	.L787
	.loc 6 216 0
	cmpq	$0, -64(%rbp)
	jne	.L788
	.loc 6 217 0
	movl	$0, %eax
	jmp	.L789
.L788:
	.loc 6 219 0
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm
	movq	%rax, -8(%rbp)
	.loc 6 220 0
	cmpq	$0, -8(%rbp)
	jne	.L790
	.loc 6 221 0
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 222 0
	movl	$-1, %eax
	jmp	.L789
.L790:
	.loc 6 224 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %ecx
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZL15jsmn_fill_tokenP9jsmntok_t10jsmntype_tii
	.loc 6 228 0
	movl	$0, %eax
	jmp	.L789
.L787:
.LBB268:
	.loc 6 232 0
	cmpb	$92, -17(%rbp)
	jne	.L791
	.loc 6 232 0 is_stmt 0 discriminator 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, %eax
	cmpq	%rax, -56(%rbp)
	jbe	.L791
.LBB269:
	.loc 6 234 0 is_stmt 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 235 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$34, %eax
	cmpl	$83, %eax
	ja	.L792
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L794(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L794(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L794:
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L792-.L794
	.long	.L804-.L794
	.long	.L795-.L794
	.text
.L795:
	.loc 6 248 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 249 0
	movl	$0, -16(%rbp)
.L802:
	.loc 6 249 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%rbp)
	jg	.L797
	.loc 6 249 0 discriminator 2
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -56(%rbp)
	jbe	.L797
	.loc 6 249 0 discriminator 3
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L797
	.loc 6 252 0 is_stmt 1
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L798
	.loc 6 252 0 is_stmt 0 discriminator 2
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jle	.L799
.L798:
	.loc 6 253 0 is_stmt 1 discriminator 3
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 6 252 0 discriminator 3
	cmpb	$64, %al
	jle	.L800
	.loc 6 253 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$70, %al
	jle	.L799
.L800:
	.loc 6 254 0 discriminator 4
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.loc 6 252 0 discriminator 4
	cmpb	$96, %al
	jle	.L801
	.loc 6 254 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$102, %al
	jle	.L799
.L801:
	.loc 6 255 0
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 256 0
	movl	$-2, %eax
	jmp	.L789
.L799:
	.loc 6 258 0 discriminator 4
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 249 0 discriminator 4
	addl	$1, -16(%rbp)
	jmp	.L802
.L797:
	.loc 6 260 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 261 0
	jmp	.L791
.L792:
	.loc 6 264 0
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 265 0
	movl	$-2, %eax
	jmp	.L789
.L804:
	.loc 6 245 0
	nop
.L791:
.LBE269:
.LBE268:
.LBE267:
	.loc 6 211 0
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L803
.L786:
.LBE266:
	.loc 6 269 0
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 270 0
	movl	$-3, %eax
.L789:
	.loc 6 271 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	_ZL17jsmn_parse_stringP11jsmn_parserPKcmP9jsmntok_tm, .-_ZL17jsmn_parse_stringP11jsmn_parserPKcmP9jsmntok_tm
	.globl	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LFB94:
	.loc 6 277 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$88, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movl	%r8d, -84(%rbp)
	.loc 6 281 0
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -28(%rbp)
.L843:
.LBB270:
	.loc 6 283 0 discriminator 2
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	jbe	.L806
	.loc 6 283 0 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L806
.LBB271:
	.loc 6 287 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -33(%rbp)
.LBB272:
	.loc 6 288 0
	movsbl	-33(%rbp), %eax
	cmpl	$44, %eax
	je	.L808
	cmpl	$44, %eax
	jg	.L809
	cmpl	$13, %eax
	je	.L847
	cmpl	$13, %eax
	jg	.L811
	subl	$9, %eax
	cmpl	$1, %eax
	ja	.L807
.LBB273:
	.loc 6 383 0
	jmp	.L847
.L811:
.LBE273:
	.loc 6 288 0
	cmpl	$32, %eax
	je	.L847
	cmpl	$34, %eax
	je	.L812
	jmp	.L807
.L809:
	cmpl	$93, %eax
	je	.L813
	cmpl	$93, %eax
	jg	.L814
	cmpl	$58, %eax
	je	.L815
	cmpl	$91, %eax
	je	.L816
	jmp	.L807
.L814:
	cmpl	$123, %eax
	je	.L816
	cmpl	$125, %eax
	je	.L813
	jmp	.L807
.L816:
.LBB276:
	.loc 6 291 0
	addl	$1, -28(%rbp)
	.loc 6 292 0
	cmpq	$0, -80(%rbp)
	je	.L848
	.loc 6 295 0
	movl	-84(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZL16jsmn_alloc_tokenP11jsmn_parserP9jsmntok_tm
	movq	%rax, -16(%rbp)
	.loc 6 296 0
	cmpq	$0, -16(%rbp)
	jne	.L819
	.loc 6 297 0
	movl	$-1, %eax
	jmp	.L820
.L819:
.LBB274:
	.loc 6 299 0
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	je	.L821
.LBB275:
	.loc 6 300 0
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	.loc 6 307 0
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
.L821:
.LBE275:
.LBE274:
	.loc 6 312 0
	cmpb	$123, -33(%rbp)
	jne	.L822
	.loc 6 312 0 is_stmt 0 discriminator 1
	movl	$1, %edx
	jmp	.L823
.L822:
	.loc 6 312 0 discriminator 2
	movl	$2, %edx
.L823:
	.loc 6 312 0 discriminator 4
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	.loc 6 313 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	.loc 6 314 0 discriminator 4
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 6 315 0 discriminator 4
	jmp	.L818
.L813:
	.loc 6 318 0
	cmpq	$0, -80(%rbp)
	je	.L849
	.loc 6 321 0
	cmpb	$125, -33(%rbp)
	jne	.L825
	.loc 6 321 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L826
.L825:
	.loc 6 321 0 discriminator 2
	movl	$2, %eax
.L826:
	.loc 6 321 0 discriminator 4
	movl	%eax, -24(%rbp)
	.loc 6 345 0 is_stmt 1 discriminator 4
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.L830:
	.loc 6 345 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)
	js	.L827
	.loc 6 346 0 is_stmt 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 6 347 0
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	je	.L828
	.loc 6 347 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L828
	.loc 6 348 0 is_stmt 1
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -24(%rbp)
	je	.L829
	.loc 6 349 0
	movl	$-2, %eax
	jmp	.L820
.L829:
	.loc 6 351 0
	movq	-56(%rbp), %rax
	movl	$-1, 8(%rax)
	.loc 6 352 0
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 6 353 0
	jmp	.L827
.L828:
	.loc 6 345 0 discriminator 2
	subl	$1, -32(%rbp)
	jmp	.L830
.L827:
	.loc 6 357 0
	cmpl	$-1, -32(%rbp)
	jne	.L831
	.loc 6 358 0
	movl	$-2, %eax
	jmp	.L820
.L831:
	.loc 6 360 0 discriminator 1
	cmpl	$0, -32(%rbp)
	js	.L850
	.loc 6 361 0
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 6 362 0
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	je	.L833
	.loc 6 362 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L833
	.loc 6 363 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 6 364 0
	nop
	.loc 6 368 0
	jmp	.L850
.L833:
	.loc 6 360 0
	subl	$1, -32(%rbp)
	jmp	.L831
.L812:
	.loc 6 370 0
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZL17jsmn_parse_stringP11jsmn_parserPKcmP9jsmntok_tm
	movl	%eax, -20(%rbp)
	.loc 6 371 0
	cmpl	$0, -20(%rbp)
	jns	.L834
	.loc 6 372 0
	movl	-20(%rbp), %eax
	jmp	.L820
.L834:
	.loc 6 374 0
	addl	$1, -28(%rbp)
	.loc 6 375 0
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	je	.L851
	.loc 6 375 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L851
	.loc 6 376 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	.loc 6 378 0
	jmp	.L851
.L815:
	.loc 6 385 0
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 8(%rax)
	.loc 6 386 0
	jmp	.L818
.L808:
	.loc 6 388 0
	cmpq	$0, -80(%rbp)
	je	.L852
	.loc 6 388 0 discriminator 1
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	je	.L852
	.loc 6 389 0 discriminator 2
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 6 388 0 discriminator 2
	cmpl	$2, %eax
	je	.L852
	.loc 6 390 0
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	.loc 6 389 0
	cmpl	$1, %eax
	je	.L852
	.loc 6 394 0
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.L840:
	.loc 6 394 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)
	js	.L852
	.loc 6 395 0 is_stmt 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	je	.L838
	.loc 6 395 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	jne	.L839
.L838:
	.loc 6 396 0 is_stmt 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	je	.L839
	.loc 6 396 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L839
	.loc 6 397 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 6 398 0
	nop
	.loc 6 404 0
	jmp	.L852
.L839:
	.loc 6 394 0 discriminator 2
	subl	$1, -32(%rbp)
	jmp	.L840
.L807:
	.loc 6 433 0
	movl	-84(%rbp), %edi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZL20jsmn_parse_primitiveP11jsmn_parserPKcmP9jsmntok_tm
	movl	%eax, -20(%rbp)
	.loc 6 434 0
	cmpl	$0, -20(%rbp)
	jns	.L841
	.loc 6 435 0
	movl	-20(%rbp), %eax
	jmp	.L820
.L841:
	.loc 6 437 0
	addl	$1, -28(%rbp)
	.loc 6 438 0
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	je	.L853
	.loc 6 438 0 is_stmt 0 discriminator 1
	cmpq	$0, -80(%rbp)
	je	.L853
	.loc 6 439 0 is_stmt 1
	movq	-56(%rbp), %rax
	movl	8(%rax), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	.loc 6 441 0
	jmp	.L853
.L847:
	.loc 6 383 0
	nop
	jmp	.L818
.L848:
	.loc 6 293 0
	nop
	jmp	.L818
.L849:
	.loc 6 319 0
	nop
	jmp	.L818
.L850:
	.loc 6 368 0
	nop
	jmp	.L818
.L851:
	.loc 6 378 0
	nop
	jmp	.L818
.L852:
	.loc 6 404 0
	nop
	jmp	.L818
.L853:
	.loc 6 441 0
	nop
.L818:
.LBE276:
.LBE272:
.LBE271:
	.loc 6 283 0
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L843
.L806:
.LBE270:
	.loc 6 451 0
	cmpq	$0, -80(%rbp)
	je	.L844
	.loc 6 452 0
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.L846:
	.loc 6 452 0 is_stmt 0 discriminator 1
	cmpl	$0, -32(%rbp)
	js	.L844
	.loc 6 454 0 is_stmt 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	4(%rax), %eax
	cmpl	$-1, %eax
	je	.L845
	.loc 6 454 0 is_stmt 0 discriminator 1
	movl	-32(%rbp), %eax
	cltq
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movl	8(%rax), %eax
	cmpl	$-1, %eax
	jne	.L845
	.loc 6 455 0 is_stmt 1
	movl	$-3, %eax
	jmp	.L820
.L845:
	.loc 6 452 0 discriminator 2
	subl	$1, -32(%rbp)
	jmp	.L846
.L844:
	.loc 6 460 0
	movl	-28(%rbp), %eax
.L820:
	.loc 6 461 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	jsmn_parse, .-jsmn_parse
	.globl	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LFB95:
	.loc 6 467 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	.loc 6 468 0
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	.loc 6 469 0
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	.loc 6 470 0
	movq	-8(%rbp), %rax
	movl	$-1, 8(%rax)
	.loc 6 471 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	jsmn_init, .-jsmn_init
	.section	.rodata
.LC35:
	.string	"%s "
.LC36:
	.string	"i"
	.text
	.globl	_Z4IdleP9test_type8test_cmdiPKc
	.type	_Z4IdleP9test_type8test_cmdiPKc, @function
_Z4IdleP9test_type8test_cmdiPKc:
.LFB96:
	.file 7 "/home/amos/prog/c/amos_libraries/preprocessor/test/PreprocTest.cpp"
	.loc 7 61 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 7 62 0
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L856
	.loc 7 64 0
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	.loc 7 65 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z12GetStateNamePFvP9test_type8test_cmdiPKcE
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 72 0
	jmp	.L858
.L856:
	.loc 7 69 0
	movq	-8(%rbp), %rax
	leaq	_Z7RunningP9test_type8test_cmdiPKc(%rip), %rsi
	movq	%rax, %rdi
	call	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE
	.loc 7 70 0
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
.L858:
	.loc 7 72 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	_Z4IdleP9test_type8test_cmdiPKc, .-_Z4IdleP9test_type8test_cmdiPKc
	.section	.rodata
.LC37:
	.string	"r"
	.text
	.globl	_Z7RunningP9test_type8test_cmdiPKc
	.type	_Z7RunningP9test_type8test_cmdiPKc, @function
_Z7RunningP9test_type8test_cmdiPKc:
.LFB97:
	.loc 7 75 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	.loc 7 76 0
	movq	-8(%rbp), %rax
	movzbl	8(%rax), %eax
	testb	%al, %al
	je	.L860
	.loc 7 78 0
	movq	-8(%rbp), %rax
	movb	$0, 8(%rax)
	.loc 7 79 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z12GetStateNamePFvP9test_type8test_cmdiPKcE
	movq	%rax, %rsi
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 86 0
	jmp	.L862
.L860:
	.loc 7 83 0
	movq	-8(%rbp), %rax
	leaq	_Z4IdleP9test_type8test_cmdiPKc(%rip), %rsi
	movq	%rax, %rdi
	call	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE
	.loc 7 84 0
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
.L862:
	.loc 7 86 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	_Z7RunningP9test_type8test_cmdiPKc, .-_Z7RunningP9test_type8test_cmdiPKc
	.section	.rodata
.LC38:
	.string	"Current Queue: "
.LC39:
	.string	"Empty"
.LC40:
	.string	"%s"
	.text
	.globl	_Z10PrintQueueP14test_cmd_queue
	.type	_Z10PrintQueueP14test_cmd_queue, @function
_Z10PrintQueueP14test_cmd_queue:
.LFB98:
	.loc 7 90 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	.loc 7 91 0
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBB277:
	.loc 7 92 0
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z12isQueueEmptyP14test_cmd_queue
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L864
	.loc 7 94 0
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L865
.L864:
.LBB278:
.LBB279:
	.loc 7 98 0
	movl	$0, -4(%rbp)
.L868:
	.loc 7 98 0 is_stmt 0 discriminator 1
	cmpl	$9, -4(%rbp)
	ja	.L865
	.loc 7 100 0 is_stmt 1
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L866
	.loc 7 102 0
	movl	$60, %edi
	call	putchar@PLT
.L866:
	.loc 7 104 0
	movq	-24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %edi
	call	_Z13EnumToCString8test_cmd
	movq	%rax, %rsi
	leaq	.LC40(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 105 0
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L867
	.loc 7 107 0
	movl	$62, %edi
	call	putchar@PLT
.L867:
	.loc 7 109 0 discriminator 2
	movl	$32, %edi
	call	putchar@PLT
	.loc 7 98 0 discriminator 2
	addl	$1, -4(%rbp)
	jmp	.L868
.L865:
.LBE279:
.LBE278:
.LBE277:
	.loc 7 114 0
	movl	$10, %edi
	call	putchar@PLT
	.loc 7 115 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	_Z10PrintQueueP14test_cmd_queue, .-_Z10PrintQueueP14test_cmd_queue
	.section	.rodata
.LC41:
	.string	"Dequeued: %s\n"
	.text
	.align 2
	.type	_ZZ4mainENKUlvE_clEv, @function
_ZZ4mainENKUlvE_clEv:
.LFB100:
	.loc 7 145 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 7 146 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 147 0
	movq	%rax, %rdi
	call	_Z14DequeueCommandP9test_type
	movl	%eax, %edi
	call	_Z13EnumToCString8test_cmd
	movq	%rax, %rsi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 148 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	_ZZ4mainENKUlvE_clEv, .-_ZZ4mainENKUlvE_clEv
	.section	.rodata
.LC42:
	.string	"Enqueued: %s\n"
.LC43:
	.string	"Couldn't queue: %s.\n"
	.text
	.align 2
	.type	_ZZ4mainENKUl8test_cmdE0_clES_, @function
_ZZ4mainENKUl8test_cmdE0_clES_:
.LFB101:
	.loc 7 150 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	.loc 7 151 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 7 152 0
	movl	-12(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z14EnqueueCommandP9test_type8test_cmd
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L871
	.loc 7 153 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_Z13EnumToCString8test_cmd
	movq	%rax, %rsi
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 156 0
	jmp	.L873
.L871:
	.loc 7 155 0
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_Z13EnumToCString8test_cmd
	movq	%rax, %rsi
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L873:
	.loc 7 156 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	_ZZ4mainENKUl8test_cmdE0_clES_, .-_ZZ4mainENKUl8test_cmdE0_clES_
	.section	.rodata
.LC44:
	.string	"Print Strings:"
.LC45:
	.string	"  - %.*s\n"
.LC46:
	.string	"Print Labels: "
.LC47:
	.string	"Some String"
.LC48:
	.string	"\n--- JSON: %d \n%s\n---\n"
	.align 8
.LC49:
	.string	"Test: \n - %u\n - %s\n - %s\n - %s\n\n"
.LC50:
	.string	"\n\nDone"
	.text
	.globl	main
	.type	main, @function
main:
.LFB99:
	.loc 7 119 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movl	%edi, -340(%rbp)
	movq	%rsi, -352(%rbp)
	.loc 7 119 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 7 121 0
	leaq	.LC44(%rip), %rdi
	call	puts@PLT
.LBB280:
	.loc 7 122 0
	movl	$0, -320(%rbp)
.L876:
	.loc 7 122 0 is_stmt 0 discriminator 1
	cmpl	$2, -320(%rbp)
	ja	.L875
.LBB281:
	.loc 7 124 0 is_stmt 1
	movl	-320(%rbp), %eax
	movl	%eax, -308(%rbp)
	.loc 7 125 0
	movl	-308(%rbp), %eax
	movl	%eax, %edi
	call	_Z12EnumToString7Colours
	movq	%rax, -256(%rbp)
	movq	%rdx, -248(%rbp)
	.loc 7 126 0
	movq	-256(%rbp), %rdx
	movl	-248(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBE281:
	.loc 7 122 0
	addl	$1, -320(%rbp)
	jmp	.L876
.L875:
.LBE280:
	.loc 7 128 0
	movl	$10, %edi
	call	putchar@PLT
	.loc 7 130 0
	leaq	.LC46(%rip), %rdi
	call	puts@PLT
.LBB282:
	.loc 7 131 0
	movl	$0, -316(%rbp)
.L878:
	.loc 7 131 0 is_stmt 0 discriminator 1
	cmpl	$2, -316(%rbp)
	ja	.L877
.LBB283:
	.loc 7 133 0 is_stmt 1
	movl	-316(%rbp), %eax
	movl	%eax, %edi
	call	_Z18EnumToLabel_Object7Colours
	movq	%rax, %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	.loc 7 134 0
	movq	-256(%rbp), %rdx
	movl	-248(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.LBE283:
	.loc 7 131 0
	addl	$1, -316(%rbp)
	jmp	.L878
.L877:
.LBE282:
	.loc 7 137 0
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	.loc 7 138 0
	leaq	-96(%rbp), %rax
	leaq	_Z4IdleP9test_type8test_cmdiPKc(%rip), %rsi
	movq	%rax, %rdi
	call	_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE
	.loc 7 139 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z15InitializeQueueP14test_cmd_queue
.LBB284:
	.loc 7 140 0
	movl	$0, -312(%rbp)
.L880:
	.loc 7 140 0 is_stmt 0 discriminator 1
	cmpl	$19, -312(%rbp)
	ja	.L879
	.loc 7 142 0 is_stmt 1
	movq	-96(%rbp), %rax
	movl	-312(%rbp), %edx
	leaq	-96(%rbp), %rdi
	leaq	.LC47(%rip), %rcx
	movl	$1, %esi
	call	*%rax
.LVL10:
	.loc 7 140 0
	addl	$1, -312(%rbp)
	jmp	.L880
.L879:
.LBE284:
	.loc 7 148 0
	leaq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)
	.loc 7 156 0
	leaq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)
	.loc 7 158 0
	leaq	-288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 159 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 160 0
	leaq	-288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 161 0
	leaq	-288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 162 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 163 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_Z14DequeueCommandP9test_type
	.loc 7 164 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 165 0
	leaq	-288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 166 0
	leaq	-288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 167 0
	leaq	-288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 168 0
	leaq	-288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 169 0
	leaq	-288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 170 0
	leaq	-288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 171 0
	leaq	-288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 172 0
	leaq	-288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 173 0
	leaq	-288(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 174 0
	leaq	-288(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 175 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 176 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 177 0
	leaq	-288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZZ4mainENKUl8test_cmdE0_clES_
	.loc 7 178 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 179 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 180 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 181 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 182 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 183 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 184 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 185 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 186 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 187 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 188 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 189 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 190 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 191 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 192 0
	leaq	-296(%rbp), %rax
	movq	%rax, %rdi
	call	_ZZ4mainENKUlvE_clEv
	.loc 7 193 0
	leaq	-96(%rbp), %rax
	addq	$12, %rax
	movq	%rax, %rdi
	call	_Z10PrintQueueP14test_cmd_queue
	.loc 7 195 0
	movq	$1073741824, -280(%rbp)
	.loc 7 196 0
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	_Z20abm_AllocateOsMemoryPvm
	movq	%rax, -272(%rbp)
	.loc 7 197 0
	leaq	-256(%rbp), %rax
	movq	-280(%rbp), %rdx
	movq	-272(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z14abm_InitMemoryPvm
	.loc 7 199 0
	movl	$5120, -324(%rbp)
	.loc 7 200 0
	movl	-324(%rbp), %eax
	movl	%eax, %ecx
	leaq	-256(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -264(%rbp)
	.loc 7 201 0
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movl	$0, -168(%rbp)
	.loc 7 202 0
	movb	$10, -224(%rbp)
	.loc 7 203 0
	leaq	-224(%rbp), %rax
	addq	$1, %rax
	movl	$1819043144, (%rax)
	movw	$111, 4(%rax)
	.loc 7 204 0
	movl	$0, -172(%rbp)
	.loc 7 205 0
	movb	$1, -168(%rbp)
	.loc 7 207 0
	movl	-324(%rbp), %esi
	leaq	-224(%rbp), %rdx
	movq	-264(%rbp), %rax
	movl	$3, %r8d
	movq	%rdx, %rcx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_Z8PushJsonPcjPKcRK12my_json_testj
	movl	%eax, -304(%rbp)
	.loc 7 209 0
	movq	-264(%rbp), %rdx
	movl	-304(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 211 0
	movq	$0, -160(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -112(%rbp)
	movl	$0, -104(%rbp)
	.loc 7 213 0
	movl	-304(%rbp), %edx
	leaq	-300(%rbp), %rdi
	leaq	-160(%rbp), %rcx
	movq	-264(%rbp), %rsi
	leaq	-256(%rbp), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist
	.loc 7 220 0
	movzbl	-104(%rbp), %eax
	.loc 7 214 0
	testb	%al, %al
	je	.L881
	.loc 7 214 0 is_stmt 0 discriminator 1
	leaq	.LC29(%rip), %rbx
	jmp	.L882
.L881:
	.loc 7 214 0 discriminator 2
	leaq	.LC30(%rip), %rbx
.L882:
	.loc 7 214 0 discriminator 4
	movl	-108(%rbp), %eax
	movl	%eax, %edi
	call	_Z13EnumToCString7Colours
	movq	%rax, %rcx
	.loc 7 219 0 is_stmt 1 discriminator 4
	movzbl	-160(%rbp), %eax
	.loc 7 214 0 discriminator 4
	movzbl	%al, %eax
	leaq	-160(%rbp), %rdx
	addq	$1, %rdx
	movq	%rbx, %r8
	movl	%eax, %esi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 7 222 0 discriminator 4
	leaq	.LC50(%rip), %rdi
	call	puts@PLT
	.loc 7 224 0 discriminator 4
	movl	$0, %eax
	.loc 7 225 0 discriminator 4
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L884
	.loc 7 225 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L884:
	addq	$344, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC13:
	.long	0
	.long	1083129856
	.align 8
.LC14:
	.long	0
	.long	1083179008
	.align 16
.LC15:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 8 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 11 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 12 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stdarg.h"
	.file 13 "<built-in>"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 15 "/home/amos/prog/c/amos_libraries/preprocessor/test/../../include/ab_common.h"
	.file 16 "/usr/include/c++/7/cstdlib"
	.file 17 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 18 "/usr/include/stdlib.h"
	.file 19 "/usr/include/c++/7/stdlib.h"
	.file 20 "/usr/include/stdio.h"
	.file 21 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x409d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF421
	.byte	0x4
	.long	.LASF422
	.long	.LASF423
	.long	.Ldebug_ranges0+0x3e0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.long	0x37
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x8
	.byte	0x24
	.long	0x55
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x8
	.byte	0x25
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x8
	.byte	0x28
	.long	0x79
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	0x79
	.uleb128 0x4
	.long	.LASF9
	.byte	0x8
	.byte	0x29
	.long	0x37
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x8
	.byte	0x8c
	.long	0x90
	.uleb128 0x4
	.long	.LASF12
	.byte	0x8
	.byte	0x8d
	.long	0x90
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	0xb5
	.uleb128 0x4
	.long	.LASF14
	.byte	0x9
	.byte	0x18
	.long	0x4a
	.uleb128 0x4
	.long	.LASF15
	.byte	0x9
	.byte	0x1a
	.long	0x6e
	.uleb128 0x4
	.long	.LASF16
	.byte	0xa
	.byte	0x18
	.long	0x5c
	.uleb128 0x4
	.long	.LASF17
	.byte	0xa
	.byte	0x1a
	.long	0x85
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.long	.LASF18
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF19
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF20
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF21
	.uleb128 0x3
	.long	0x102
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF22
	.uleb128 0x4
	.long	.LASF23
	.byte	0xb
	.byte	0xd8
	.long	0x43
	.uleb128 0x3
	.long	0x115
	.uleb128 0x4
	.long	.LASF24
	.byte	0xc
	.byte	0x28
	.long	0x130
	.uleb128 0x8
	.long	.LASF424
	.long	0x139
	.uleb128 0x9
	.long	0x149
	.long	0x149
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x18
	.byte	0xd
	.byte	0
	.long	0x186
	.uleb128 0xc
	.long	.LASF25
	.byte	0xd
	.byte	0
	.long	0x37
	.byte	0
	.uleb128 0xc
	.long	.LASF26
	.byte	0xd
	.byte	0
	.long	0x37
	.byte	0x4
	.uleb128 0xc
	.long	.LASF27
	.byte	0xd
	.byte	0
	.long	0xad
	.byte	0x8
	.uleb128 0xc
	.long	.LASF28
	.byte	0xd
	.byte	0
	.long	0xad
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0xd8
	.byte	0xe
	.byte	0xf5
	.long	0x306
	.uleb128 0xc
	.long	.LASF31
	.byte	0xe
	.byte	0xf6
	.long	0x79
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0xe
	.byte	0xfb
	.long	0xaf
	.byte	0x8
	.uleb128 0xc
	.long	.LASF33
	.byte	0xe
	.byte	0xfc
	.long	0xaf
	.byte	0x10
	.uleb128 0xc
	.long	.LASF34
	.byte	0xe
	.byte	0xfd
	.long	0xaf
	.byte	0x18
	.uleb128 0xc
	.long	.LASF35
	.byte	0xe
	.byte	0xfe
	.long	0xaf
	.byte	0x20
	.uleb128 0xc
	.long	.LASF36
	.byte	0xe
	.byte	0xff
	.long	0xaf
	.byte	0x28
	.uleb128 0xd
	.long	.LASF37
	.byte	0xe
	.value	0x100
	.long	0xaf
	.byte	0x30
	.uleb128 0xd
	.long	.LASF38
	.byte	0xe
	.value	0x101
	.long	0xaf
	.byte	0x38
	.uleb128 0xd
	.long	.LASF39
	.byte	0xe
	.value	0x102
	.long	0xaf
	.byte	0x40
	.uleb128 0xd
	.long	.LASF40
	.byte	0xe
	.value	0x104
	.long	0xaf
	.byte	0x48
	.uleb128 0xd
	.long	.LASF41
	.byte	0xe
	.value	0x105
	.long	0xaf
	.byte	0x50
	.uleb128 0xd
	.long	.LASF42
	.byte	0xe
	.value	0x106
	.long	0xaf
	.byte	0x58
	.uleb128 0xd
	.long	.LASF43
	.byte	0xe
	.value	0x108
	.long	0xde9
	.byte	0x60
	.uleb128 0xd
	.long	.LASF44
	.byte	0xe
	.value	0x10a
	.long	0xdef
	.byte	0x68
	.uleb128 0xd
	.long	.LASF45
	.byte	0xe
	.value	0x10c
	.long	0x79
	.byte	0x70
	.uleb128 0xd
	.long	.LASF46
	.byte	0xe
	.value	0x110
	.long	0x79
	.byte	0x74
	.uleb128 0xd
	.long	.LASF47
	.byte	0xe
	.value	0x112
	.long	0x97
	.byte	0x78
	.uleb128 0xd
	.long	.LASF48
	.byte	0xe
	.value	0x116
	.long	0x30
	.byte	0x80
	.uleb128 0xd
	.long	.LASF49
	.byte	0xe
	.value	0x117
	.long	0x55
	.byte	0x82
	.uleb128 0xd
	.long	.LASF50
	.byte	0xe
	.value	0x118
	.long	0xdf5
	.byte	0x83
	.uleb128 0xd
	.long	.LASF51
	.byte	0xe
	.value	0x11c
	.long	0xe05
	.byte	0x88
	.uleb128 0xd
	.long	.LASF52
	.byte	0xe
	.value	0x125
	.long	0xa2
	.byte	0x90
	.uleb128 0xd
	.long	.LASF53
	.byte	0xe
	.value	0x12d
	.long	0xad
	.byte	0x98
	.uleb128 0xd
	.long	.LASF54
	.byte	0xe
	.value	0x12e
	.long	0xad
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF55
	.byte	0xe
	.value	0x12f
	.long	0xad
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF56
	.byte	0xe
	.value	0x130
	.long	0xad
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF57
	.byte	0xe
	.value	0x132
	.long	0x115
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF58
	.byte	0xe
	.value	0x133
	.long	0x79
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF59
	.byte	0xe
	.value	0x135
	.long	0xe0b
	.byte	0xc4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbc
	.uleb128 0x3
	.long	0x306
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF60
	.uleb128 0x3
	.long	0x311
	.uleb128 0xe
	.string	"b8"
	.byte	0xf
	.byte	0x25
	.long	0xc1
	.uleb128 0xe
	.string	"u8"
	.byte	0xf
	.byte	0x28
	.long	0xd7
	.uleb128 0xe
	.string	"s32"
	.byte	0xf
	.byte	0x2d
	.long	0xcc
	.uleb128 0xe
	.string	"u32"
	.byte	0xf
	.byte	0x2e
	.long	0xe2
	.uleb128 0x3
	.long	0x33c
	.uleb128 0xe
	.string	"r32"
	.byte	0xf
	.byte	0x33
	.long	0xfb
	.uleb128 0x3
	.long	0x34c
	.uleb128 0xf
	.string	"TAU"
	.byte	0xf
	.byte	0x36
	.long	0x357
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3TAU
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF61
	.uleb128 0x10
	.long	.LASF425
	.uleb128 0x11
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x6
	.byte	0x2e
	.long	.LASF426
	.long	0x3ad
	.uleb128 0x12
	.long	.LASF62
	.byte	0
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.uleb128 0x12
	.long	.LASF64
	.byte	0x2
	.uleb128 0x12
	.long	.LASF65
	.byte	0x3
	.uleb128 0x12
	.long	.LASF66
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF67
	.byte	0x6
	.byte	0x34
	.long	0x37d
	.uleb128 0x3
	.long	0x3ad
	.uleb128 0x13
	.long	.LASF135
	.byte	0x5
	.byte	0x4
	.long	0x79
	.byte	0x6
	.byte	0x36
	.long	0x3e1
	.uleb128 0x14
	.long	.LASF68
	.sleb128 -1
	.uleb128 0x14
	.long	.LASF69
	.sleb128 -2
	.uleb128 0x14
	.long	.LASF70
	.sleb128 -3
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0x6
	.byte	0x45
	.long	.LASF75
	.long	0x41e
	.uleb128 0xc
	.long	.LASF71
	.byte	0x6
	.byte	0x46
	.long	0x3ad
	.byte	0
	.uleb128 0xc
	.long	.LASF72
	.byte	0x6
	.byte	0x47
	.long	0x79
	.byte	0x4
	.uleb128 0x16
	.string	"end"
	.byte	0x6
	.byte	0x48
	.long	0x79
	.byte	0x8
	.uleb128 0xc
	.long	.LASF73
	.byte	0x6
	.byte	0x49
	.long	0x79
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF74
	.byte	0x6
	.byte	0x4d
	.long	0x3e1
	.uleb128 0x15
	.byte	0xc
	.byte	0x6
	.byte	0x53
	.long	.LASF76
	.long	0x45a
	.uleb128 0x16
	.string	"pos"
	.byte	0x6
	.byte	0x54
	.long	0x37
	.byte	0
	.uleb128 0xc
	.long	.LASF77
	.byte	0x6
	.byte	0x55
	.long	0x37
	.byte	0x4
	.uleb128 0xc
	.long	.LASF78
	.byte	0x6
	.byte	0x56
	.long	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF79
	.byte	0x6
	.byte	0x57
	.long	0x429
	.uleb128 0x17
	.string	"std"
	.byte	0xd
	.byte	0
	.long	0x55f
	.uleb128 0x18
	.long	.LASF81
	.byte	0x11
	.byte	0xfd
	.uleb128 0x19
	.byte	0x11
	.byte	0xfd
	.long	0x470
	.uleb128 0x1a
	.byte	0x10
	.byte	0x7f
	.long	0x5eb
	.uleb128 0x1a
	.byte	0x10
	.byte	0x80
	.long	0x61b
	.uleb128 0x1a
	.byte	0x10
	.byte	0x86
	.long	0x69f
	.uleb128 0x1a
	.byte	0x10
	.byte	0x89
	.long	0x6bc
	.uleb128 0x1a
	.byte	0x10
	.byte	0x8c
	.long	0x6d6
	.uleb128 0x1a
	.byte	0x10
	.byte	0x8d
	.long	0x6eb
	.uleb128 0x1a
	.byte	0x10
	.byte	0x8e
	.long	0x700
	.uleb128 0x1a
	.byte	0x10
	.byte	0x8f
	.long	0x715
	.uleb128 0x1a
	.byte	0x10
	.byte	0x91
	.long	0x73f
	.uleb128 0x1a
	.byte	0x10
	.byte	0x94
	.long	0x75a
	.uleb128 0x1a
	.byte	0x10
	.byte	0x96
	.long	0x770
	.uleb128 0x1a
	.byte	0x10
	.byte	0x99
	.long	0x78b
	.uleb128 0x1a
	.byte	0x10
	.byte	0x9a
	.long	0x7a6
	.uleb128 0x1a
	.byte	0x10
	.byte	0x9b
	.long	0x7cc
	.uleb128 0x1a
	.byte	0x10
	.byte	0x9d
	.long	0x7ec
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa0
	.long	0x80d
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa3
	.long	0x81f
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa5
	.long	0x82b
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa6
	.long	0x83d
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa7
	.long	0x85d
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa8
	.long	0x87c
	.uleb128 0x1a
	.byte	0x10
	.byte	0xa9
	.long	0x89b
	.uleb128 0x1a
	.byte	0x10
	.byte	0xab
	.long	0x8b1
	.uleb128 0x1a
	.byte	0x10
	.byte	0xac
	.long	0x8d7
	.uleb128 0x1a
	.byte	0x10
	.byte	0xf0
	.long	0x64b
	.uleb128 0x1a
	.byte	0x10
	.byte	0xf5
	.long	0x5ab
	.uleb128 0x1a
	.byte	0x10
	.byte	0xf6
	.long	0x8f2
	.uleb128 0x1a
	.byte	0x10
	.byte	0xf8
	.long	0x90d
	.uleb128 0x1a
	.byte	0x10
	.byte	0xf9
	.long	0x960
	.uleb128 0x1a
	.byte	0x10
	.byte	0xfa
	.long	0x922
	.uleb128 0x1a
	.byte	0x10
	.byte	0xfb
	.long	0x941
	.uleb128 0x1a
	.byte	0x10
	.byte	0xfc
	.long	0x97a
	.byte	0
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x11
	.byte	0xff
	.long	0x5c6
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x11
	.value	0x101
	.uleb128 0x1d
	.byte	0x11
	.value	0x101
	.long	0x56a
	.uleb128 0x1a
	.byte	0x10
	.byte	0xc8
	.long	0x64b
	.uleb128 0x1a
	.byte	0x10
	.byte	0xd8
	.long	0x8f2
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe3
	.long	0x90d
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe4
	.long	0x922
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe5
	.long	0x941
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe7
	.long	0x960
	.uleb128 0x1a
	.byte	0x10
	.byte	0xe8
	.long	0x97a
	.uleb128 0x1e
	.string	"div"
	.byte	0x10
	.byte	0xd5
	.long	.LASF427
	.long	0x64b
	.uleb128 0x1f
	.long	0x371
	.uleb128 0x1f
	.long	0x371
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.byte	0x12
	.byte	0x3b
	.long	.LASF82
	.long	0x5eb
	.uleb128 0xc
	.long	.LASF83
	.byte	0x12
	.byte	0x3c
	.long	0x79
	.byte	0
	.uleb128 0x16
	.string	"rem"
	.byte	0x12
	.byte	0x3d
	.long	0x79
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF84
	.byte	0x12
	.byte	0x3e
	.long	0x5c6
	.uleb128 0x15
	.byte	0x10
	.byte	0x12
	.byte	0x43
	.long	.LASF85
	.long	0x61b
	.uleb128 0xc
	.long	.LASF83
	.byte	0x12
	.byte	0x44
	.long	0x90
	.byte	0
	.uleb128 0x16
	.string	"rem"
	.byte	0x12
	.byte	0x45
	.long	0x90
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF86
	.byte	0x12
	.byte	0x46
	.long	0x5f6
	.uleb128 0x15
	.byte	0x10
	.byte	0x12
	.byte	0x4d
	.long	.LASF87
	.long	0x64b
	.uleb128 0xc
	.long	.LASF83
	.byte	0x12
	.byte	0x4e
	.long	0x371
	.byte	0
	.uleb128 0x16
	.string	"rem"
	.byte	0x12
	.byte	0x4f
	.long	0x371
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF88
	.byte	0x12
	.byte	0x50
	.long	0x626
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF89
	.uleb128 0x3
	.long	0x656
	.uleb128 0x9
	.long	0xb5
	.long	0x672
	.uleb128 0xa
	.long	0x43
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.long	.LASF90
	.byte	0x12
	.value	0x325
	.long	0x67e
	.uleb128 0x7
	.byte	0x8
	.long	0x684
	.uleb128 0x21
	.long	0x79
	.long	0x698
	.uleb128 0x1f
	.long	0x698
	.uleb128 0x1f
	.long	0x698
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x69e
	.uleb128 0x22
	.uleb128 0x23
	.long	.LASF91
	.byte	0x12
	.value	0x250
	.long	0x79
	.long	0x6b5
	.uleb128 0x1f
	.long	0x6b5
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x6bb
	.uleb128 0x24
	.uleb128 0x25
	.long	.LASF125
	.byte	0x12
	.value	0x255
	.long	.LASF125
	.long	0x79
	.long	0x6d6
	.uleb128 0x1f
	.long	0x6b5
	.byte	0
	.uleb128 0x26
	.long	.LASF92
	.byte	0x12
	.byte	0x65
	.long	0x102
	.long	0x6eb
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x26
	.long	.LASF93
	.byte	0x12
	.byte	0x68
	.long	0x79
	.long	0x700
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x26
	.long	.LASF94
	.byte	0x12
	.byte	0x6b
	.long	0x90
	.long	0x715
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x23
	.long	.LASF95
	.byte	0x12
	.value	0x331
	.long	0xad
	.long	0x73f
	.uleb128 0x1f
	.long	0x698
	.uleb128 0x1f
	.long	0x698
	.uleb128 0x1f
	.long	0x115
	.uleb128 0x1f
	.long	0x115
	.uleb128 0x1f
	.long	0x672
	.byte	0
	.uleb128 0x27
	.string	"div"
	.byte	0x12
	.value	0x351
	.long	0x5eb
	.long	0x75a
	.uleb128 0x1f
	.long	0x79
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x23
	.long	.LASF96
	.byte	0x12
	.value	0x277
	.long	0xaf
	.long	0x770
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x23
	.long	.LASF97
	.byte	0x12
	.value	0x353
	.long	0x61b
	.long	0x78b
	.uleb128 0x1f
	.long	0x90
	.uleb128 0x1f
	.long	0x90
	.byte	0
	.uleb128 0x23
	.long	.LASF98
	.byte	0x12
	.value	0x397
	.long	0x79
	.long	0x7a6
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x115
	.byte	0
	.uleb128 0x23
	.long	.LASF99
	.byte	0x12
	.value	0x3a2
	.long	0x115
	.long	0x7c6
	.uleb128 0x1f
	.long	0x7c6
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x115
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x311
	.uleb128 0x23
	.long	.LASF100
	.byte	0x12
	.value	0x39a
	.long	0x79
	.long	0x7ec
	.uleb128 0x1f
	.long	0x7c6
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x115
	.byte	0
	.uleb128 0x28
	.long	.LASF102
	.byte	0x12
	.value	0x33b
	.long	0x80d
	.uleb128 0x1f
	.long	0xad
	.uleb128 0x1f
	.long	0x115
	.uleb128 0x1f
	.long	0x115
	.uleb128 0x1f
	.long	0x672
	.byte	0
	.uleb128 0x29
	.long	.LASF101
	.byte	0x12
	.value	0x26c
	.long	0x81f
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x2a
	.long	.LASF428
	.byte	0x12
	.value	0x1c5
	.long	0x79
	.uleb128 0x28
	.long	.LASF103
	.byte	0x12
	.value	0x1c7
	.long	0x83d
	.uleb128 0x1f
	.long	0x37
	.byte	0
	.uleb128 0x26
	.long	.LASF104
	.byte	0x12
	.byte	0x75
	.long	0x102
	.long	0x857
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xaf
	.uleb128 0x26
	.long	.LASF105
	.byte	0x12
	.byte	0xb0
	.long	0x90
	.long	0x87c
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x26
	.long	.LASF106
	.byte	0x12
	.byte	0xb4
	.long	0x43
	.long	0x89b
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x23
	.long	.LASF107
	.byte	0x12
	.value	0x30d
	.long	0x79
	.long	0x8b1
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x23
	.long	.LASF108
	.byte	0x12
	.value	0x3a5
	.long	0x115
	.long	0x8d1
	.uleb128 0x1f
	.long	0xaf
	.uleb128 0x1f
	.long	0x8d1
	.uleb128 0x1f
	.long	0x115
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x318
	.uleb128 0x23
	.long	.LASF109
	.byte	0x12
	.value	0x39e
	.long	0x79
	.long	0x8f2
	.uleb128 0x1f
	.long	0xaf
	.uleb128 0x1f
	.long	0x311
	.byte	0
	.uleb128 0x23
	.long	.LASF110
	.byte	0x12
	.value	0x357
	.long	0x64b
	.long	0x90d
	.uleb128 0x1f
	.long	0x371
	.uleb128 0x1f
	.long	0x371
	.byte	0
	.uleb128 0x26
	.long	.LASF111
	.byte	0x12
	.byte	0x70
	.long	0x371
	.long	0x922
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x26
	.long	.LASF112
	.byte	0x12
	.byte	0xc8
	.long	0x371
	.long	0x941
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x26
	.long	.LASF113
	.byte	0x12
	.byte	0xcd
	.long	0x656
	.long	0x960
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x26
	.long	.LASF114
	.byte	0x12
	.byte	0x7b
	.long	0xfb
	.long	0x97a
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.byte	0
	.uleb128 0x26
	.long	.LASF115
	.byte	0x12
	.byte	0x7e
	.long	0x10e
	.long	0x994
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x857
	.byte	0
	.uleb128 0x1a
	.byte	0x13
	.byte	0x27
	.long	0x69f
	.uleb128 0x1a
	.byte	0x13
	.byte	0x2b
	.long	0x6bc
	.uleb128 0x1a
	.byte	0x13
	.byte	0x2e
	.long	0x80d
	.uleb128 0x1a
	.byte	0x13
	.byte	0x33
	.long	0x5eb
	.uleb128 0x1a
	.byte	0x13
	.byte	0x34
	.long	0x61b
	.uleb128 0x27
	.string	"abs"
	.byte	0x12
	.value	0x345
	.long	0x79
	.long	0x9cd
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x1a
	.byte	0x13
	.byte	0x36
	.long	0x9b7
	.uleb128 0x1a
	.byte	0x13
	.byte	0x37
	.long	0x6d6
	.uleb128 0x1a
	.byte	0x13
	.byte	0x38
	.long	0x6eb
	.uleb128 0x1a
	.byte	0x13
	.byte	0x39
	.long	0x700
	.uleb128 0x1a
	.byte	0x13
	.byte	0x3a
	.long	0x715
	.uleb128 0x1a
	.byte	0x13
	.byte	0x3c
	.long	0x5ab
	.uleb128 0x1a
	.byte	0x13
	.byte	0x3e
	.long	0x75a
	.uleb128 0x1a
	.byte	0x13
	.byte	0x40
	.long	0x770
	.uleb128 0x1a
	.byte	0x13
	.byte	0x43
	.long	0x78b
	.uleb128 0x1a
	.byte	0x13
	.byte	0x44
	.long	0x7a6
	.uleb128 0x1a
	.byte	0x13
	.byte	0x45
	.long	0x7cc
	.uleb128 0x1a
	.byte	0x13
	.byte	0x47
	.long	0x7ec
	.uleb128 0x1a
	.byte	0x13
	.byte	0x48
	.long	0x81f
	.uleb128 0x1a
	.byte	0x13
	.byte	0x4a
	.long	0x82b
	.uleb128 0x1a
	.byte	0x13
	.byte	0x4b
	.long	0x83d
	.uleb128 0x1a
	.byte	0x13
	.byte	0x4c
	.long	0x85d
	.uleb128 0x1a
	.byte	0x13
	.byte	0x4d
	.long	0x87c
	.uleb128 0x1a
	.byte	0x13
	.byte	0x4e
	.long	0x89b
	.uleb128 0x1a
	.byte	0x13
	.byte	0x50
	.long	0x8b1
	.uleb128 0x1a
	.byte	0x13
	.byte	0x51
	.long	0x8d7
	.uleb128 0xb
	.long	.LASF116
	.byte	0x18
	.byte	0x2
	.byte	0xf
	.long	0xa8a
	.uleb128 0xc
	.long	.LASF117
	.byte	0x2
	.byte	0x11
	.long	0xad
	.byte	0
	.uleb128 0xc
	.long	.LASF118
	.byte	0x2
	.byte	0x12
	.long	0x115
	.byte	0x8
	.uleb128 0xc
	.long	.LASF119
	.byte	0x2
	.byte	0x13
	.long	0x115
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF120
	.byte	0x10
	.byte	0x2
	.byte	0x16
	.long	0xaaf
	.uleb128 0xc
	.long	.LASF121
	.byte	0x2
	.byte	0x18
	.long	0xaaf
	.byte	0
	.uleb128 0xc
	.long	.LASF119
	.byte	0x2
	.byte	0x19
	.long	0x115
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xa59
	.uleb128 0xb
	.long	.LASF122
	.byte	0x10
	.byte	0x3
	.byte	0x9
	.long	0xbad
	.uleb128 0xc
	.long	.LASF123
	.byte	0x3
	.byte	0xb
	.long	0x306
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x3
	.byte	0xc
	.long	0x33c
	.byte	0x8
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x3
	.byte	0xe
	.long	.LASF429
	.byte	0x1
	.long	0xaed
	.long	0xaf3
	.uleb128 0x2c
	.long	0xbb2
	.byte	0
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0xf
	.long	.LASF126
	.long	0xb06
	.long	0xb16
	.uleb128 0x2c
	.long	0xbb2
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x33c
	.byte	0
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0x10
	.long	.LASF127
	.long	0xb29
	.long	0xb39
	.uleb128 0x2c
	.long	0xbb2
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0x331
	.byte	0
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0x11
	.long	.LASF128
	.long	0xb4c
	.long	0xb57
	.uleb128 0x2c
	.long	0xbb2
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0x12
	.long	.LASF129
	.long	0xb6a
	.long	0xb75
	.uleb128 0x2c
	.long	0xbb2
	.uleb128 0x1f
	.long	0xaf
	.byte	0
	.uleb128 0x2d
	.long	.LASF122
	.byte	0x3
	.byte	0x13
	.long	.LASF130
	.long	0xb88
	.long	0xb93
	.uleb128 0x2c
	.long	0xbb2
	.uleb128 0x1f
	.long	0xbbd
	.byte	0
	.uleb128 0x2e
	.long	.LASF131
	.byte	0x3
	.byte	0x14
	.long	.LASF132
	.long	0x306
	.long	0xba6
	.uleb128 0x2c
	.long	0xbc3
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xab5
	.uleb128 0x7
	.byte	0x8
	.long	0xab5
	.uleb128 0x3
	.long	0xbb2
	.uleb128 0x2f
	.byte	0x8
	.long	0xbc
	.uleb128 0x7
	.byte	0x8
	.long	0xbad
	.uleb128 0x3
	.long	0xbc3
	.uleb128 0x4
	.long	.LASF133
	.byte	0xc
	.byte	0x63
	.long	0x125
	.uleb128 0x4
	.long	.LASF134
	.byte	0x4
	.byte	0xb9
	.long	0xbe4
	.uleb128 0x21
	.long	0xaf
	.long	0xbfd
	.uleb128 0x1f
	.long	0x306
	.uleb128 0x1f
	.long	0xad
	.uleb128 0x1f
	.long	0x79
	.byte	0
	.uleb128 0x13
	.long	.LASF136
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x5
	.byte	0x26
	.long	0xc27
	.uleb128 0x12
	.long	.LASF137
	.byte	0
	.uleb128 0x12
	.long	.LASF138
	.byte	0x1
	.uleb128 0x12
	.long	.LASF139
	.byte	0x2
	.uleb128 0x12
	.long	.LASF140
	.byte	0x4
	.byte	0
	.uleb128 0x30
	.long	.LASF141
	.byte	0x5
	.byte	0x42
	.long	0x347
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL14test_cmd_Count
	.uleb128 0x9
	.long	0xbad
	.long	0xc4c
	.uleb128 0xa
	.long	0x43
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	0xc3c
	.uleb128 0x31
	.long	.LASF143
	.byte	0x5
	.byte	0x49
	.long	0xc4c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16test_cmd_Strings
	.uleb128 0x30
	.long	.LASF142
	.byte	0x5
	.byte	0x56
	.long	0x347
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13Colours_Count
	.uleb128 0x9
	.long	0xbad
	.long	0xc8b
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	0xc7b
	.uleb128 0x31
	.long	.LASF144
	.byte	0x5
	.byte	0x60
	.long	0xc8b
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL15Colours_Strings
	.uleb128 0x9
	.long	0x306
	.long	0xcb5
	.uleb128 0xa
	.long	0x43
	.byte	0x2
	.byte	0
	.uleb128 0x32
	.long	.LASF145
	.byte	0x5
	.byte	0x69
	.long	0xca5
	.uleb128 0x9
	.byte	0x3
	.quad	Colours_LabelObject
	.uleb128 0xb
	.long	.LASF146
	.byte	0x30
	.byte	0x5
	.byte	0x76
	.long	0xcfb
	.uleb128 0xc
	.long	.LASF147
	.byte	0x5
	.byte	0x78
	.long	0xcfb
	.byte	0
	.uleb128 0xc
	.long	.LASF148
	.byte	0x5
	.byte	0x79
	.long	0x331
	.byte	0x28
	.uleb128 0xc
	.long	.LASF149
	.byte	0x5
	.byte	0x7a
	.long	0x331
	.byte	0x2c
	.byte	0
	.uleb128 0x9
	.long	0xd0b
	.long	0xd0b
	.uleb128 0xa
	.long	0x43
	.byte	0x9
	.byte	0
	.uleb128 0x33
	.long	.LASF430
	.byte	0x5
	.byte	0x4
	.long	0x79
	.byte	0x5
	.byte	0x41
	.uleb128 0x4
	.long	.LASF150
	.byte	0x5
	.byte	0x85
	.long	0xd23
	.uleb128 0x34
	.long	0xd3d
	.uleb128 0x1f
	.long	0xd3d
	.uleb128 0x1f
	.long	0xd0b
	.uleb128 0x1f
	.long	0x79
	.uleb128 0x1f
	.long	0x306
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xd43
	.uleb128 0xb
	.long	.LASF151
	.byte	0x40
	.byte	0x7
	.byte	0xd
	.long	0xd74
	.uleb128 0xc
	.long	.LASF152
	.byte	0x7
	.byte	0xf
	.long	0xe9c
	.byte	0
	.uleb128 0xc
	.long	.LASF153
	.byte	0x7
	.byte	0x10
	.long	0x31d
	.byte	0x8
	.uleb128 0xc
	.long	.LASF154
	.byte	0x7
	.byte	0x11
	.long	0xcca
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	.LASF155
	.byte	0x4
	.byte	0x5
	.byte	0x98
	.long	0xdb1
	.uleb128 0xc
	.long	.LASF156
	.byte	0x5
	.byte	0x9a
	.long	0x31d
	.byte	0
	.uleb128 0xc
	.long	.LASF157
	.byte	0x5
	.byte	0x9b
	.long	0x31d
	.byte	0x1
	.uleb128 0xc
	.long	.LASF158
	.byte	0x5
	.byte	0x9c
	.long	0x31d
	.byte	0x2
	.uleb128 0xc
	.long	.LASF159
	.byte	0x5
	.byte	0x9d
	.long	0x31d
	.byte	0x3
	.byte	0
	.uleb128 0x35
	.long	.LASF431
	.byte	0xe
	.byte	0x9a
	.uleb128 0xb
	.long	.LASF160
	.byte	0x18
	.byte	0xe
	.byte	0xa0
	.long	0xde9
	.uleb128 0xc
	.long	.LASF161
	.byte	0xe
	.byte	0xa1
	.long	0xde9
	.byte	0
	.uleb128 0xc
	.long	.LASF162
	.byte	0xe
	.byte	0xa2
	.long	0xdef
	.byte	0x8
	.uleb128 0xc
	.long	.LASF163
	.byte	0xe
	.byte	0xa6
	.long	0x79
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xdb8
	.uleb128 0x7
	.byte	0x8
	.long	0x186
	.uleb128 0x9
	.long	0xb5
	.long	0xe05
	.uleb128 0xa
	.long	0x43
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xdb1
	.uleb128 0x9
	.long	0xb5
	.long	0xe1b
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x36
	.long	.LASF432
	.uleb128 0x37
	.long	.LASF164
	.byte	0xe
	.value	0x13f
	.long	0xe1b
	.uleb128 0x37
	.long	.LASF165
	.byte	0xe
	.value	0x140
	.long	0xe1b
	.uleb128 0x37
	.long	.LASF166
	.byte	0xe
	.value	0x141
	.long	0xe1b
	.uleb128 0x38
	.long	.LASF167
	.byte	0x14
	.byte	0x87
	.long	0xdef
	.uleb128 0x38
	.long	.LASF168
	.byte	0x14
	.byte	0x88
	.long	0xdef
	.uleb128 0x38
	.long	.LASF169
	.byte	0x14
	.byte	0x89
	.long	0xdef
	.uleb128 0x38
	.long	.LASF170
	.byte	0x15
	.byte	0x1a
	.long	0x79
	.uleb128 0x9
	.long	0x30c
	.long	0xe7b
	.uleb128 0x39
	.byte	0
	.uleb128 0x38
	.long	.LASF171
	.byte	0x15
	.byte	0x1b
	.long	0xe70
	.uleb128 0x38
	.long	.LASF172
	.byte	0x15
	.byte	0x1e
	.long	0x79
	.uleb128 0x38
	.long	.LASF173
	.byte	0x15
	.byte	0x1f
	.long	0xe70
	.uleb128 0x7
	.byte	0x8
	.long	0xd18
	.uleb128 0x3a
	.long	.LASF433
	.byte	0x5
	.byte	0x4
	.long	0x79
	.byte	0x7
	.byte	0x20
	.long	0xec6
	.uleb128 0x3b
	.string	"Red"
	.byte	0
	.uleb128 0x12
	.long	.LASF174
	.byte	0x1
	.uleb128 0x12
	.long	.LASF175
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF176
	.byte	0x3c
	.byte	0x7
	.byte	0x2d
	.long	0xf03
	.uleb128 0xc
	.long	.LASF156
	.byte	0x7
	.byte	0x2f
	.long	0x327
	.byte	0
	.uleb128 0xc
	.long	.LASF157
	.byte	0x7
	.byte	0x30
	.long	0xf08
	.byte	0x1
	.uleb128 0xc
	.long	.LASF158
	.byte	0x7
	.byte	0x31
	.long	0xea2
	.byte	0x34
	.uleb128 0xc
	.long	.LASF159
	.byte	0x7
	.byte	0x32
	.long	0x31d
	.byte	0x38
	.byte	0
	.uleb128 0x3
	.long	0xec6
	.uleb128 0x9
	.long	0xb5
	.long	0xf18
	.uleb128 0xa
	.long	0x43
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.long	.LASF177
	.byte	0x4
	.byte	0xf4
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__period
	.uleb128 0x30
	.long	.LASF178
	.byte	0x4
	.byte	0xf5
	.long	0xb5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12stbsp__comma
	.uleb128 0x3c
	.byte	0xcc
	.byte	0x4
	.byte	0xf7
	.long	0xf63
	.uleb128 0xc
	.long	.LASF179
	.byte	0x4
	.byte	0xf8
	.long	0x67
	.byte	0
	.uleb128 0xc
	.long	.LASF180
	.byte	0x4
	.byte	0xf9
	.long	0xf63
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xb5
	.long	0xf73
	.uleb128 0xa
	.long	0x43
	.byte	0xc8
	.byte	0
	.uleb128 0x30
	.long	.LASF181
	.byte	0x4
	.byte	0xfa
	.long	0xf42
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__digitpair
	.uleb128 0x3d
	.long	.LASF182
	.value	0x210
	.byte	0x4
	.value	0x54f
	.long	0xfcb
	.uleb128 0x3e
	.string	"buf"
	.byte	0x4
	.value	0x550
	.long	0xaf
	.byte	0
	.uleb128 0xd
	.long	.LASF183
	.byte	0x4
	.value	0x551
	.long	0x79
	.byte	0x8
	.uleb128 0xd
	.long	.LASF184
	.byte	0x4
	.value	0x552
	.long	0x79
	.byte	0xc
	.uleb128 0x3e
	.string	"tmp"
	.byte	0x4
	.value	0x553
	.long	0xfcb
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0xb5
	.long	0xfdc
	.uleb128 0x3f
	.long	0x43
	.value	0x1ff
	.byte	0
	.uleb128 0x20
	.long	.LASF182
	.byte	0x4
	.value	0x554
	.long	0xf88
	.uleb128 0x9
	.long	0x109
	.long	0xff8
	.uleb128 0xa
	.long	0x43
	.byte	0x16
	.byte	0
	.uleb128 0x3
	.long	0xfe8
	.uleb128 0x40
	.long	.LASF185
	.byte	0x4
	.value	0x5c8
	.long	0xff8
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10stbsp__bot
	.uleb128 0x9
	.long	0x109
	.long	0x1023
	.uleb128 0xa
	.long	0x43
	.byte	0x15
	.byte	0
	.uleb128 0x3
	.long	0x1013
	.uleb128 0x40
	.long	.LASF186
	.byte	0x4
	.value	0x5cc
	.long	0x1023
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__negbot
	.uleb128 0x40
	.long	.LASF187
	.byte	0x4
	.value	0x5d0
	.long	0x1023
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__negboterr
	.uleb128 0x9
	.long	0x109
	.long	0x1064
	.uleb128 0xa
	.long	0x43
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	0x1054
	.uleb128 0x40
	.long	.LASF188
	.byte	0x4
	.value	0x5d6
	.long	0x1064
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10stbsp__top
	.uleb128 0x40
	.long	.LASF189
	.byte	0x4
	.value	0x5d9
	.long	0x1064
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__negtop
	.uleb128 0x40
	.long	.LASF190
	.byte	0x4
	.value	0x5dc
	.long	0x1064
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__toperr
	.uleb128 0x40
	.long	.LASF191
	.byte	0x4
	.value	0x5eb
	.long	0x1064
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__negtoperr
	.uleb128 0x9
	.long	0x65d
	.long	0x10d1
	.uleb128 0xa
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x10c1
	.uleb128 0x40
	.long	.LASF192
	.byte	0x4
	.value	0x60b
	.long	0x10d1
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__powten
	.uleb128 0x41
	.long	.LASF211
	.byte	0x7
	.byte	0x76
	.long	0x79
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x143c
	.uleb128 0x42
	.long	.LASF193
	.byte	0x7
	.byte	0x76
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x42
	.long	.LASF194
	.byte	0x7
	.byte	0x76
	.long	0x857
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x30
	.long	.LASF195
	.byte	0x7
	.byte	0x89
	.long	0xd43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0xb
	.long	.LASF196
	.byte	0x8
	.byte	0x7
	.byte	0x91
	.long	0x1209
	.uleb128 0xc
	.long	.LASF197
	.byte	0x7
	.byte	0x91
	.long	0x143c
	.byte	0
	.uleb128 0x43
	.long	.LASF198
	.long	0x115f
	.long	0x1176
	.uleb128 0x2c
	.long	0x1164
	.uleb128 0x7
	.byte	0x8
	.long	0x113a
	.uleb128 0x1f
	.long	0x116f
	.uleb128 0x44
	.byte	0x8
	.long	0x113a
	.byte	0
	.uleb128 0x43
	.long	.LASF198
	.long	0x1183
	.long	0x1199
	.uleb128 0x2c
	.long	0x1164
	.uleb128 0x1f
	.long	0x118d
	.uleb128 0x2f
	.byte	0x8
	.long	0x1193
	.uleb128 0x3
	.long	0x113a
	.byte	0
	.uleb128 0x45
	.long	.LASF198
	.long	0x11a6
	.long	0x11ac
	.uleb128 0x2c
	.long	0x1164
	.byte	0
	.uleb128 0x43
	.long	.LASF199
	.long	0x11b9
	.long	0x11c4
	.uleb128 0x2c
	.long	0x1164
	.uleb128 0x2c
	.long	0x79
	.byte	0
	.uleb128 0x46
	.long	.LASF201
	.long	0x11ee
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ee
	.uleb128 0x7
	.byte	0x8
	.long	0x1193
	.uleb128 0x3
	.long	0x11e3
	.uleb128 0x47
	.long	.LASF202
	.long	0x11e9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x48
	.long	.LASF195
	.long	0x143c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Deq"
	.byte	0x7
	.byte	0x91
	.long	0x113a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0xb
	.long	.LASF200
	.byte	0x8
	.byte	0x7
	.byte	0x96
	.long	0x12f5
	.uleb128 0xc
	.long	.LASF197
	.byte	0x7
	.byte	0x96
	.long	0x143c
	.byte	0
	.uleb128 0x43
	.long	.LASF198
	.long	0x123d
	.long	0x1254
	.uleb128 0x2c
	.long	0x1242
	.uleb128 0x7
	.byte	0x8
	.long	0x1218
	.uleb128 0x1f
	.long	0x124d
	.uleb128 0x44
	.byte	0x8
	.long	0x1218
	.byte	0
	.uleb128 0x43
	.long	.LASF198
	.long	0x1261
	.long	0x1277
	.uleb128 0x2c
	.long	0x1242
	.uleb128 0x1f
	.long	0x126b
	.uleb128 0x2f
	.byte	0x8
	.long	0x1271
	.uleb128 0x3
	.long	0x1218
	.byte	0
	.uleb128 0x45
	.long	.LASF198
	.long	0x1284
	.long	0x128a
	.uleb128 0x2c
	.long	0x1242
	.byte	0
	.uleb128 0x43
	.long	.LASF199
	.long	0x1297
	.long	0x12a2
	.uleb128 0x2c
	.long	0x1242
	.uleb128 0x2c
	.long	0x79
	.byte	0
	.uleb128 0x46
	.long	.LASF201
	.long	0x12cc
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x12cc
	.uleb128 0x7
	.byte	0x8
	.long	0x1271
	.uleb128 0x3
	.long	0x12c1
	.uleb128 0x47
	.long	.LASF202
	.long	0x12c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.string	"Cmd"
	.byte	0x7
	.byte	0x96
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x48
	.long	.LASF195
	.long	0x143c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.string	"Enq"
	.byte	0x7
	.byte	0x96
	.long	0x1218
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x30
	.long	.LASF118
	.byte	0x7
	.byte	0xc3
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x30
	.long	.LASF203
	.byte	0x7
	.byte	0xc4
	.long	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x30
	.long	.LASF204
	.byte	0x7
	.byte	0xc5
	.long	0xa59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x30
	.long	.LASF205
	.byte	0x7
	.byte	0xc7
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -340
	.uleb128 0x30
	.long	.LASF206
	.byte	0x7
	.byte	0xc8
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x30
	.long	.LASF207
	.byte	0x7
	.byte	0xc9
	.long	0xec6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x30
	.long	.LASF208
	.byte	0x7
	.byte	0xcf
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x30
	.long	.LASF209
	.byte	0x7
	.byte	0xd3
	.long	0xec6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x30
	.long	.LASF210
	.byte	0x7
	.byte	0xd4
	.long	0xd74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.uleb128 0x4a
	.quad	.LBB280
	.quad	.LBE280-.LBB280
	.long	0x13da
	.uleb128 0xf
	.string	"i"
	.byte	0x7
	.byte	0x7a
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x4b
	.quad	.LBB281
	.quad	.LBE281-.LBB281
	.uleb128 0xf
	.string	"C"
	.byte	0x7
	.byte	0x7c
	.long	0xea2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0xf
	.string	"S"
	.byte	0x7
	.byte	0x7d
	.long	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB282
	.quad	.LBE282-.LBB282
	.long	0x141c
	.uleb128 0xf
	.string	"i"
	.byte	0x7
	.byte	0x83
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x4b
	.quad	.LBB283
	.quad	.LBE283-.LBB283
	.uleb128 0xf
	.string	"S"
	.byte	0x7
	.byte	0x85
	.long	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.byte	0
	.uleb128 0x4b
	.quad	.LBB284
	.quad	.LBE284-.LBB284
	.uleb128 0xf
	.string	"i"
	.byte	0x7
	.byte	0x8c
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x8
	.long	0xd43
	.uleb128 0x4c
	.long	.LASF212
	.byte	0x7
	.byte	0x59
	.long	.LASF215
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x1490
	.uleb128 0x42
	.long	.LASF213
	.byte	0x7
	.byte	0x59
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4b
	.quad	.LBB279
	.quad	.LBE279-.LBB279
	.uleb128 0xf
	.string	"i"
	.byte	0x7
	.byte	0x62
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xcca
	.uleb128 0x4c
	.long	.LASF214
	.byte	0x7
	.byte	0x4a
	.long	.LASF216
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f0
	.uleb128 0x42
	.long	.LASF217
	.byte	0x7
	.byte	0x4a
	.long	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.string	"Cmd"
	.byte	0x7
	.byte	0x4a
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x49
	.string	"Int"
	.byte	0x7
	.byte	0x4a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF123
	.byte	0x7
	.byte	0x4a
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4c
	.long	.LASF218
	.byte	0x7
	.byte	0x3c
	.long	.LASF219
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x154a
	.uleb128 0x42
	.long	.LASF217
	.byte	0x7
	.byte	0x3c
	.long	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.string	"Cmd"
	.byte	0x7
	.byte	0x3c
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x49
	.string	"Int"
	.byte	0x7
	.byte	0x3c
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF123
	.byte	0x7
	.byte	0x3c
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x4d
	.long	.LASF220
	.byte	0x6
	.value	0x1d3
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x1578
	.uleb128 0x4e
	.long	.LASF221
	.byte	0x6
	.value	0x1d3
	.long	0x1578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x45a
	.uleb128 0x4f
	.long	.LASF222
	.byte	0x6
	.value	0x114
	.long	0x79
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x1675
	.uleb128 0x4e
	.long	.LASF221
	.byte	0x6
	.value	0x114
	.long	0x1578
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x50
	.string	"js"
	.byte	0x6
	.value	0x114
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x50
	.string	"len"
	.byte	0x6
	.value	0x114
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4e
	.long	.LASF223
	.byte	0x6
	.value	0x115
	.long	0x1675
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4e
	.long	.LASF224
	.byte	0x6
	.value	0x115
	.long	0x3e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x51
	.string	"r"
	.byte	0x6
	.value	0x116
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x51
	.string	"i"
	.byte	0x6
	.value	0x117
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	.LASF225
	.byte	0x6
	.value	0x118
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x40
	.long	.LASF183
	.byte	0x6
	.value	0x119
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4b
	.quad	.LBB271
	.quad	.LBE271-.LBB271
	.uleb128 0x51
	.string	"c"
	.byte	0x6
	.value	0x11c
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x40
	.long	.LASF71
	.byte	0x6
	.value	0x11d
	.long	0x3ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4b
	.quad	.LBB275
	.quad	.LBE275-.LBB275
	.uleb128 0x51
	.string	"t"
	.byte	0x6
	.value	0x12c
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x41e
	.uleb128 0x52
	.long	.LASF226
	.byte	0x6
	.byte	0xc9
	.long	0x79
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x173d
	.uleb128 0x42
	.long	.LASF221
	.byte	0x6
	.byte	0xc9
	.long	0x1578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x49
	.string	"js"
	.byte	0x6
	.byte	0xc9
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x49
	.string	"len"
	.byte	0x6
	.byte	0xca
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x42
	.long	.LASF223
	.byte	0x6
	.byte	0xca
	.long	0x1675
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x42
	.long	.LASF224
	.byte	0x6
	.byte	0xcb
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x30
	.long	.LASF225
	.byte	0x6
	.byte	0xcc
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF72
	.byte	0x6
	.byte	0xce
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4b
	.quad	.LBB267
	.quad	.LBE267-.LBB267
	.uleb128 0xf
	.string	"c"
	.byte	0x6
	.byte	0xd4
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x4b
	.quad	.LBB269
	.quad	.LBE269-.LBB269
	.uleb128 0xf
	.string	"i"
	.byte	0x6
	.byte	0xe9
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	.LASF227
	.byte	0x6
	.byte	0x8f
	.long	0x79
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d0
	.uleb128 0x42
	.long	.LASF221
	.byte	0x6
	.byte	0x8f
	.long	0x1578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.string	"js"
	.byte	0x6
	.byte	0x8f
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.string	"len"
	.byte	0x6
	.byte	0x90
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF223
	.byte	0x6
	.byte	0x90
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.long	.LASF224
	.byte	0x6
	.byte	0x91
	.long	0x120
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x53
	.long	.LASF312
	.byte	0x6
	.byte	0xb4
	.quad	.L770
	.uleb128 0x30
	.long	.LASF225
	.byte	0x6
	.byte	0x92
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF72
	.byte	0x6
	.byte	0x93
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x54
	.long	.LASF228
	.byte	0x6
	.byte	0x84
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x1826
	.uleb128 0x42
	.long	.LASF225
	.byte	0x6
	.byte	0x84
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.long	.LASF71
	.byte	0x6
	.byte	0x84
	.long	0x3b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x42
	.long	.LASF72
	.byte	0x6
	.byte	0x85
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.string	"end"
	.byte	0x6
	.byte	0x85
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x55
	.long	.LASF229
	.byte	0x6
	.byte	0x72
	.long	0x1675
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1880
	.uleb128 0x42
	.long	.LASF221
	.byte	0x6
	.byte	0x72
	.long	0x1578
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF223
	.byte	0x6
	.byte	0x72
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF224
	.byte	0x6
	.byte	0x73
	.long	0x120
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xf
	.string	"tok"
	.byte	0x6
	.byte	0x74
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x56
	.long	.LASF239
	.byte	0x5
	.value	0x232
	.long	.LASF241
	.long	0x33c
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1975
	.uleb128 0x4e
	.long	.LASF230
	.byte	0x5
	.value	0x232
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4e
	.long	.LASF206
	.byte	0x5
	.value	0x232
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4e
	.long	.LASF208
	.byte	0x5
	.value	0x232
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4e
	.long	.LASF231
	.byte	0x5
	.value	0x232
	.long	0x1975
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4e
	.long	.LASF232
	.byte	0x5
	.value	0x232
	.long	0x1981
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x40
	.long	.LASF233
	.byte	0x5
	.value	0x234
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x40
	.long	.LASF234
	.byte	0x5
	.value	0x236
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF235
	.byte	0x5
	.value	0x237
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4b
	.quad	.LBB264
	.quad	.LBE264-.LBB264
	.uleb128 0x40
	.long	.LASF236
	.byte	0x5
	.value	0x23b
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x40
	.long	.LASF237
	.byte	0x5
	.value	0x23c
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4b
	.quad	.LBB265
	.quad	.LBE265-.LBB265
	.uleb128 0x40
	.long	.LASF238
	.byte	0x5
	.value	0x257
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x197b
	.uleb128 0x7
	.byte	0x8
	.long	0xec6
	.uleb128 0x7
	.byte	0x8
	.long	0x1987
	.uleb128 0x7
	.byte	0x8
	.long	0xd74
	.uleb128 0x56
	.long	.LASF240
	.byte	0x5
	.value	0x1f7
	.long	.LASF242
	.long	0x1675
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ad4
	.uleb128 0x4e
	.long	.LASF230
	.byte	0x5
	.value	0x1f7
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4e
	.long	.LASF206
	.byte	0x5
	.value	0x1f7
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4e
	.long	.LASF208
	.byte	0x5
	.value	0x1f7
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4e
	.long	.LASF234
	.byte	0x5
	.value	0x1f7
	.long	0x1675
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4e
	.long	.LASF243
	.byte	0x5
	.value	0x1f7
	.long	0x197b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4e
	.long	.LASF244
	.byte	0x5
	.value	0x1f7
	.long	0x1987
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x40
	.long	.LASF245
	.byte	0x5
	.value	0x1f9
	.long	0x1987
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x40
	.long	.LASF246
	.byte	0x5
	.value	0x1fa
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x40
	.long	.LASF237
	.byte	0x5
	.value	0x1fb
	.long	0x1675
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4b
	.quad	.LBB258
	.quad	.LBE258-.LBB258
	.uleb128 0x40
	.long	.LASF247
	.byte	0x5
	.value	0x1fe
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x40
	.long	.LASF248
	.byte	0x5
	.value	0x1ff
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4b
	.quad	.LBB259
	.quad	.LBE259-.LBB259
	.uleb128 0x40
	.long	.LASF238
	.byte	0x5
	.value	0x200
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4b
	.quad	.LBB260
	.quad	.LBE260-.LBB260
	.uleb128 0x40
	.long	.LASF249
	.byte	0x5
	.value	0x203
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4b
	.quad	.LBB262
	.quad	.LBE262-.LBB262
	.uleb128 0x40
	.long	.LASF124
	.byte	0x5
	.value	0x213
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x56
	.long	.LASF250
	.byte	0x5
	.value	0x1db
	.long	.LASF251
	.long	0x33c
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b85
	.uleb128 0x4e
	.long	.LASF206
	.byte	0x5
	.value	0x1db
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4e
	.long	.LASF252
	.byte	0x5
	.value	0x1db
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x50
	.string	"Tag"
	.byte	0x5
	.value	0x1db
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4e
	.long	.LASF253
	.byte	0x5
	.value	0x1db
	.long	0x1b85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.long	.LASF254
	.byte	0x5
	.value	0x1db
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	.LASF124
	.byte	0x5
	.value	0x1dd
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x40
	.long	.LASF255
	.byte	0x5
	.value	0x1de
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x4b
	.quad	.LBB256
	.quad	.LBE256-.LBB256
	.uleb128 0x40
	.long	.LASF256
	.byte	0x5
	.value	0x1ea
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.byte	0x8
	.long	0xf03
	.uleb128 0x56
	.long	.LASF257
	.byte	0x5
	.value	0x1d2
	.long	.LASF258
	.long	0xd0b
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc1
	.uleb128 0x4e
	.long	.LASF217
	.byte	0x5
	.value	0x1d2
	.long	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x56
	.long	.LASF259
	.byte	0x5
	.value	0x1cc
	.long	.LASF260
	.long	0x31d
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c06
	.uleb128 0x4e
	.long	.LASF217
	.byte	0x5
	.value	0x1cc
	.long	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x50
	.string	"Cmd"
	.byte	0x5
	.value	0x1cc
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x57
	.long	.LASF261
	.byte	0x5
	.value	0x1c4
	.long	.LASF262
	.long	0x306
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3c
	.uleb128 0x4e
	.long	.LASF263
	.byte	0x5
	.value	0x1c4
	.long	0xe9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x57
	.long	.LASF264
	.byte	0x5
	.value	0x1b7
	.long	.LASF265
	.long	0x31d
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c90
	.uleb128 0x4e
	.long	.LASF217
	.byte	0x5
	.value	0x1b7
	.long	0xd3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4e
	.long	.LASF266
	.byte	0x5
	.value	0x1b7
	.long	0xe9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	.LASF267
	.byte	0x5
	.value	0x1b9
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x56
	.long	.LASF268
	.byte	0x5
	.value	0x19f
	.long	.LASF269
	.long	0xd0b
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cd5
	.uleb128 0x4e
	.long	.LASF213
	.byte	0x5
	.value	0x19f
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x1a1
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x56
	.long	.LASF271
	.byte	0x5
	.value	0x18d
	.long	.LASF272
	.long	0x31d
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d29
	.uleb128 0x4e
	.long	.LASF213
	.byte	0x5
	.value	0x18d
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x50
	.string	"Cmd"
	.byte	0x5
	.value	0x18d
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x18f
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x57
	.long	.LASF273
	.byte	0x5
	.value	0x184
	.long	.LASF274
	.long	0x31d
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d6e
	.uleb128 0x4e
	.long	.LASF213
	.byte	0x5
	.value	0x184
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x186
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x57
	.long	.LASF275
	.byte	0x5
	.value	0x17d
	.long	.LASF276
	.long	0x31d
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db3
	.uleb128 0x4e
	.long	.LASF213
	.byte	0x5
	.value	0x17d
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x17f
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x58
	.long	.LASF277
	.byte	0x5
	.value	0x177
	.long	.LASF434
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de5
	.uleb128 0x4e
	.long	.LASF213
	.byte	0x5
	.value	0x177
	.long	0x1490
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x57
	.long	.LASF278
	.byte	0x5
	.value	0x16f
	.long	.LASF279
	.long	0x306
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1b
	.uleb128 0x4e
	.long	.LASF280
	.byte	0x5
	.value	0x16f
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x57
	.long	.LASF281
	.byte	0x5
	.value	0x169
	.long	.LASF282
	.long	0xab5
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e51
	.uleb128 0x4e
	.long	.LASF280
	.byte	0x5
	.value	0x169
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x57
	.long	.LASF283
	.byte	0x5
	.value	0x163
	.long	.LASF284
	.long	0x306
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e87
	.uleb128 0x4e
	.long	.LASF280
	.byte	0x5
	.value	0x163
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x56
	.long	.LASF285
	.byte	0x5
	.value	0x158
	.long	.LASF286
	.long	0xea2
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1edb
	.uleb128 0x4e
	.long	.LASF123
	.byte	0x5
	.value	0x158
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	.LASF287
	.byte	0x5
	.value	0x15a
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x15b
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x56
	.long	.LASF285
	.byte	0x5
	.value	0x14d
	.long	.LASF288
	.long	0xea2
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2f
	.uleb128 0x4e
	.long	.LASF123
	.byte	0x5
	.value	0x14d
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF287
	.byte	0x5
	.value	0x14f
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x150
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x56
	.long	.LASF240
	.byte	0x5
	.value	0x12e
	.long	.LASF289
	.long	0x1675
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x2035
	.uleb128 0x4e
	.long	.LASF230
	.byte	0x5
	.value	0x12e
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4e
	.long	.LASF206
	.byte	0x5
	.value	0x12e
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4e
	.long	.LASF208
	.byte	0x5
	.value	0x12e
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4e
	.long	.LASF234
	.byte	0x5
	.value	0x12e
	.long	0x1675
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4e
	.long	.LASF243
	.byte	0x5
	.value	0x12e
	.long	0x2035
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4e
	.long	.LASF290
	.byte	0x5
	.value	0x12e
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x130
	.long	0xea2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x40
	.long	.LASF291
	.byte	0x5
	.value	0x131
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x40
	.long	.LASF292
	.byte	0x5
	.value	0x133
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4b
	.quad	.LBB253
	.quad	.LBE253-.LBB253
	.uleb128 0x40
	.long	.LASF238
	.byte	0x5
	.value	0x136
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4b
	.quad	.LBB255
	.quad	.LBE255-.LBB255
	.uleb128 0x40
	.long	.LASF249
	.byte	0x5
	.value	0x13e
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x40
	.long	.LASF293
	.byte	0x5
	.value	0x13f
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xea2
	.uleb128 0x56
	.long	.LASF250
	.byte	0x5
	.value	0x125
	.long	.LASF294
	.long	0x33c
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x20cb
	.uleb128 0x4e
	.long	.LASF206
	.byte	0x5
	.value	0x125
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4e
	.long	.LASF252
	.byte	0x5
	.value	0x125
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x50
	.string	"Tag"
	.byte	0x5
	.value	0x125
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4e
	.long	.LASF295
	.byte	0x5
	.value	0x125
	.long	0xea2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4e
	.long	.LASF254
	.byte	0x5
	.value	0x125
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x40
	.long	.LASF124
	.byte	0x5
	.value	0x127
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	.LASF255
	.byte	0x5
	.value	0x128
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.byte	0
	.uleb128 0x57
	.long	.LASF283
	.byte	0x5
	.value	0x117
	.long	.LASF296
	.long	0x306
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2101
	.uleb128 0x4e
	.long	.LASF280
	.byte	0x5
	.value	0x117
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x56
	.long	.LASF297
	.byte	0x5
	.value	0x10c
	.long	.LASF298
	.long	0xd0b
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x2155
	.uleb128 0x4e
	.long	.LASF123
	.byte	0x5
	.value	0x10c
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x40
	.long	.LASF287
	.byte	0x5
	.value	0x10e
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x10f
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x56
	.long	.LASF297
	.byte	0x5
	.value	0x101
	.long	.LASF299
	.long	0xd0b
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x21a9
	.uleb128 0x4e
	.long	.LASF123
	.byte	0x5
	.value	0x101
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	.LASF287
	.byte	0x5
	.value	0x103
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x40
	.long	.LASF270
	.byte	0x5
	.value	0x104
	.long	0xd0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x59
	.long	.LASF300
	.byte	0x5
	.byte	0xd6
	.long	.LASF302
	.long	0x33c
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x2207
	.uleb128 0x42
	.long	.LASF206
	.byte	0x5
	.byte	0xd6
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF252
	.byte	0x5
	.byte	0xd6
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x42
	.long	.LASF255
	.byte	0x5
	.byte	0xd6
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF124
	.byte	0x5
	.byte	0xd8
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x59
	.long	.LASF301
	.byte	0x5
	.byte	0xc9
	.long	.LASF303
	.long	0x33c
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x2257
	.uleb128 0x42
	.long	.LASF206
	.byte	0x5
	.byte	0xc9
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF252
	.byte	0x5
	.byte	0xc9
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF124
	.byte	0x5
	.byte	0xcb
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x5a
	.long	.LASF304
	.byte	0x5
	.byte	0xaf
	.long	.LASF305
	.long	0x331
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f3
	.uleb128 0x42
	.long	.LASF230
	.byte	0x5
	.byte	0xaf
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF206
	.byte	0x5
	.byte	0xaf
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.long	.LASF208
	.byte	0x5
	.byte	0xaf
	.long	0x115
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x42
	.long	.LASF234
	.byte	0x5
	.byte	0xaf
	.long	0x22f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF246
	.byte	0x5
	.byte	0xb1
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4b
	.quad	.LBB251
	.quad	.LBE251-.LBB251
	.uleb128 0x30
	.long	.LASF306
	.byte	0x5
	.byte	0xb4
	.long	0x45a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x30
	.long	.LASF307
	.byte	0x5
	.byte	0xb6
	.long	0x331
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x1675
	.uleb128 0x5b
	.long	.LASF308
	.byte	0x4
	.value	0x68e
	.long	0x79
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x2549
	.uleb128 0x4e
	.long	.LASF72
	.byte	0x4
	.value	0x68e
	.long	0x2549
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x50
	.string	"len"
	.byte	0x4
	.value	0x68e
	.long	0x254f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x50
	.string	"out"
	.byte	0x4
	.value	0x68e
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4e
	.long	.LASF309
	.byte	0x4
	.value	0x68e
	.long	0x2555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x4e
	.long	.LASF310
	.byte	0x4
	.value	0x68e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4e
	.long	.LASF311
	.byte	0x4
	.value	0x68e
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x5c
	.long	.LASF313
	.byte	0x4
	.value	0x6f2
	.quad	.L634
	.uleb128 0x5c
	.long	.LASF314
	.byte	0x4
	.value	0x6e1
	.quad	.L626
	.uleb128 0x51
	.string	"d"
	.byte	0x4
	.value	0x690
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x40
	.long	.LASF315
	.byte	0x4
	.value	0x691
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x40
	.long	.LASF316
	.byte	0x4
	.value	0x692
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x51
	.string	"e"
	.byte	0x4
	.value	0x692
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x51
	.string	"ng"
	.byte	0x4
	.value	0x692
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x40
	.long	.LASF317
	.byte	0x4
	.value	0x692
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4a
	.quad	.LBB234
	.quad	.LBE234-.LBB234
	.long	0x241b
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x695
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x4a
	.quad	.LBB237
	.quad	.LBE237-.LBB237
	.long	0x243f
	.uleb128 0x51
	.string	"v"
	.byte	0x4
	.value	0x6af
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x4a
	.quad	.LBB238
	.quad	.LBE238-.LBB238
	.long	0x24bf
	.uleb128 0x51
	.string	"ph"
	.byte	0x4
	.value	0x6b9
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x51
	.string	"pl"
	.byte	0x4
	.value	0x6b9
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4b
	.quad	.LBB239
	.quad	.LBE239-.LBB239
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x6c3
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x6c3
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x51
	.string	"vh"
	.byte	0x4
	.value	0x6c3
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x51
	.string	"t"
	.byte	0x4
	.value	0x6c3
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB241
	.quad	.LBE241-.LBB241
	.long	0x24f7
	.uleb128 0x51
	.string	"dg"
	.byte	0x4
	.value	0x6cd
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x3b0
	.uleb128 0x51
	.string	"r"
	.byte	0x4
	.value	0x6d6
	.long	0x656
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB247
	.quad	.LBE247-.LBB247
	.long	0x251b
	.uleb128 0x51
	.string	"n"
	.byte	0x4
	.value	0x6e6
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x4b
	.quad	.LBB249
	.quad	.LBE249-.LBB249
	.uleb128 0x51
	.string	"n"
	.byte	0x4
	.value	0x6f9
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x51
	.string	"o"
	.byte	0x4
	.value	0x6fa
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x306
	.uleb128 0x7
	.byte	0x8
	.long	0x37
	.uleb128 0x7
	.byte	0x8
	.long	0x79
	.uleb128 0x5e
	.long	.LASF318
	.byte	0x4
	.value	0x64b
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c79
	.uleb128 0x50
	.string	"ohi"
	.byte	0x4
	.value	0x64b
	.long	0x2c79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x50
	.string	"olo"
	.byte	0x4
	.value	0x64b
	.long	0x2c79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x50
	.string	"d"
	.byte	0x4
	.value	0x64b
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x4e
	.long	.LASF319
	.byte	0x4
	.value	0x64b
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x51
	.string	"ph"
	.byte	0x4
	.value	0x64d
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x51
	.string	"pl"
	.byte	0x4
	.value	0x64d
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x4a
	.quad	.LBB186
	.quad	.LBE186-.LBB186
	.long	0x26ca
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x64f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x64f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x64f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x64f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x64f
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB187
	.quad	.LBE187-.LBB187
	.long	0x265e
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x64f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.uleb128 0x4a
	.quad	.LBB188
	.quad	.LBE188-.LBB188
	.long	0x2683
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x64f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x4a
	.quad	.LBB189
	.quad	.LBE189-.LBB189
	.long	0x26a8
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x64f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.uleb128 0x4b
	.quad	.LBB190
	.quad	.LBE190-.LBB190
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x64f
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB191
	.quad	.LBE191-.LBB191
	.long	0x2c59
	.uleb128 0x51
	.string	"e"
	.byte	0x4
	.value	0x651
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x51
	.string	"et"
	.byte	0x4
	.value	0x651
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x51
	.string	"eb"
	.byte	0x4
	.value	0x651
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x51
	.string	"p2h"
	.byte	0x4
	.value	0x652
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x51
	.string	"p2l"
	.byte	0x4
	.value	0x652
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x4a
	.quad	.LBB196
	.quad	.LBE196-.LBB196
	.long	0x281f
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x661
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x661
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x661
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x661
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x661
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB197
	.quad	.LBE197-.LBB197
	.long	0x27b3
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x661
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x4a
	.quad	.LBB198
	.quad	.LBE198-.LBB198
	.long	0x27d8
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x661
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x4a
	.quad	.LBB199
	.quad	.LBE199-.LBB199
	.long	0x27fd
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x661
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x4b
	.quad	.LBB200
	.quad	.LBE200-.LBB200
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x661
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB203
	.quad	.LBE203-.LBB203
	.long	0x2842
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x665
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x4a
	.quad	.LBB204
	.quad	.LBE204-.LBB204
	.long	0x2935
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x667
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x667
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x667
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x667
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x667
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB205
	.quad	.LBE205-.LBB205
	.long	0x28c9
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x667
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x4a
	.quad	.LBB206
	.quad	.LBE206-.LBB206
	.long	0x28ee
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x667
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x4a
	.quad	.LBB207
	.quad	.LBE207-.LBB207
	.long	0x2913
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x667
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x4b
	.quad	.LBB208
	.quad	.LBE208-.LBB208
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x667
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB212
	.quad	.LBE212-.LBB212
	.long	0x2a2a
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x672
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x672
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x672
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x672
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x672
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB213
	.quad	.LBE213-.LBB213
	.long	0x29be
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x672
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x4a
	.quad	.LBB214
	.quad	.LBE214-.LBB214
	.long	0x29e3
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x672
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x4a
	.quad	.LBB215
	.quad	.LBE215-.LBB215
	.long	0x2a08
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x672
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x4b
	.quad	.LBB216
	.quad	.LBE216-.LBB216
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x672
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB219
	.quad	.LBE219-.LBB219
	.long	0x2a4e
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x674
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x4a
	.quad	.LBB220
	.quad	.LBE220-.LBB220
	.long	0x2b43
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x675
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x675
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x675
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x675
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x675
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB221
	.quad	.LBE221-.LBB221
	.long	0x2ad7
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x675
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x4a
	.quad	.LBB222
	.quad	.LBE222-.LBB222
	.long	0x2afc
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x675
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x4a
	.quad	.LBB223
	.quad	.LBE223-.LBB223
	.long	0x2b21
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x675
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x4b
	.quad	.LBB224
	.quad	.LBE224-.LBB224
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x675
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.byte	0
	.uleb128 0x4a
	.quad	.LBB227
	.quad	.LBE227-.LBB227
	.long	0x2b67
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x67c
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x4b
	.quad	.LBB228
	.quad	.LBE228-.LBB228
	.uleb128 0x51
	.string	"ahi"
	.byte	0x4
	.value	0x67e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x51
	.string	"alo"
	.byte	0x4
	.value	0x67e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x51
	.string	"bhi"
	.byte	0x4
	.value	0x67e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x51
	.string	"blo"
	.byte	0x4
	.value	0x67e
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x51
	.string	"bt"
	.byte	0x4
	.value	0x67e
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x4a
	.quad	.LBB229
	.quad	.LBE229-.LBB229
	.long	0x2bec
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x67e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x4a
	.quad	.LBB230
	.quad	.LBE230-.LBB230
	.long	0x2c11
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x67e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x4a
	.quad	.LBB231
	.quad	.LBE231-.LBB231
	.long	0x2c36
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x67e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x4b
	.quad	.LBB232
	.quad	.LBE232-.LBB232
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x67e
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.quad	.LBB233
	.quad	.LBE233-.LBB233
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x685
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x102
	.uleb128 0x5b
	.long	.LASF320
	.byte	0x4
	.value	0x5b8
	.long	0x79
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d0a
	.uleb128 0x4e
	.long	.LASF315
	.byte	0x4
	.value	0x5b8
	.long	0x2d0a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4e
	.long	.LASF316
	.byte	0x4
	.value	0x5b8
	.long	0x2555
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.long	.LASF310
	.byte	0x4
	.value	0x5b8
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x51
	.string	"d"
	.byte	0x4
	.value	0x5ba
	.long	0x102
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x51
	.string	"b"
	.byte	0x4
	.value	0x5bb
	.long	0x371
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4b
	.quad	.LBB183
	.quad	.LBE183-.LBB183
	.uleb128 0x51
	.string	"cn"
	.byte	0x4
	.value	0x5c0
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x371
	.uleb128 0x4f
	.long	.LASF321
	.byte	0x4
	.value	0x5a5
	.long	0x79
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d5f
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x5a5
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x50
	.string	"fmt"
	.byte	0x4
	.value	0x5a5
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x50
	.string	"va"
	.byte	0x4
	.value	0x5a5
	.long	0x2d5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x149
	.uleb128 0x4f
	.long	.LASF322
	.byte	0x4
	.value	0x599
	.long	0x79
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd8
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x599
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x4e
	.long	.LASF183
	.byte	0x4
	.value	0x599
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x50
	.string	"fmt"
	.byte	0x4
	.value	0x599
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x5f
	.uleb128 0x40
	.long	.LASF323
	.byte	0x4
	.value	0x59b
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x51
	.string	"va"
	.byte	0x4
	.value	0x59c
	.long	0xbce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x4f
	.long	.LASF324
	.byte	0x4
	.value	0x57b
	.long	0x79
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e68
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x57b
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x4e
	.long	.LASF183
	.byte	0x4
	.value	0x57b
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x50
	.string	"fmt"
	.byte	0x4
	.value	0x57b
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x50
	.string	"va"
	.byte	0x4
	.value	0x57b
	.long	0x2d5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x51
	.string	"c"
	.byte	0x4
	.value	0x57d
	.long	0xfdc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x4b
	.quad	.LBB182
	.quad	.LBE182-.LBB182
	.uleb128 0x51
	.string	"l"
	.byte	0x4
	.value	0x587
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.byte	0
	.uleb128 0x60
	.long	.LASF325
	.byte	0x4
	.value	0x572
	.long	0xaf
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ec5
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x572
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4e
	.long	.LASF326
	.byte	0x4
	.value	0x572
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x50
	.string	"len"
	.byte	0x4
	.value	0x572
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x51
	.string	"c"
	.byte	0x4
	.value	0x574
	.long	0x2ec5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xfdc
	.uleb128 0x60
	.long	.LASF327
	.byte	0x4
	.value	0x556
	.long	0xaf
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f63
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x556
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4e
	.long	.LASF326
	.byte	0x4
	.value	0x556
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x50
	.string	"len"
	.byte	0x4
	.value	0x556
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x51
	.string	"c"
	.byte	0x4
	.value	0x558
	.long	0x2ec5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x4b
	.quad	.LBB180
	.quad	.LBE180-.LBB180
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x560
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x51
	.string	"se"
	.byte	0x4
	.value	0x560
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x51
	.string	"d"
	.byte	0x4
	.value	0x561
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x4f
	.long	.LASF328
	.byte	0x4
	.value	0x545
	.long	0x79
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fc6
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x545
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x50
	.string	"fmt"
	.byte	0x4
	.value	0x545
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x5f
	.uleb128 0x40
	.long	.LASF323
	.byte	0x4
	.value	0x547
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x51
	.string	"va"
	.byte	0x4
	.value	0x548
	.long	0xbce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x4f
	.long	.LASF329
	.byte	0x4
	.value	0x126
	.long	0x79
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x3666
	.uleb128 0x4e
	.long	.LASF330
	.byte	0x4
	.value	0x126
	.long	0x3666
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x4e
	.long	.LASF326
	.byte	0x4
	.value	0x126
	.long	0xad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x50
	.string	"buf"
	.byte	0x4
	.value	0x126
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x50
	.string	"fmt"
	.byte	0x4
	.value	0x126
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x50
	.string	"va"
	.byte	0x4
	.value	0x126
	.long	0x2d5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x5c
	.long	.LASF331
	.byte	0x4
	.value	0x3dd
	.quad	.L309
	.uleb128 0x5c
	.long	.LASF332
	.byte	0x4
	.value	0x30c
	.quad	.L248
	.uleb128 0x5c
	.long	.LASF333
	.byte	0x4
	.value	0x3b0
	.quad	.L245
	.uleb128 0x5c
	.long	.LASF334
	.byte	0x4
	.value	0x31f
	.quad	.L227
	.uleb128 0x5c
	.long	.LASF335
	.byte	0x4
	.value	0x2da
	.quad	.L220
	.uleb128 0x5c
	.long	.LASF336
	.byte	0x4
	.value	0x45f
	.quad	.L173
	.uleb128 0x61
	.string	"ld"
	.byte	0x4
	.value	0x232
	.quad	.L165
	.uleb128 0x5c
	.long	.LASF337
	.byte	0x4
	.value	0x21e
	.quad	.L162
	.uleb128 0x5c
	.long	.LASF338
	.byte	0x4
	.value	0x1ba
	.quad	.L120
	.uleb128 0x5c
	.long	.LASF339
	.byte	0x4
	.value	0x52e
	.quad	.L454
	.uleb128 0x5c
	.long	.LASF340
	.byte	0x4
	.value	0x527
	.quad	.L453
	.uleb128 0x5c
	.long	.LASF341
	.byte	0x4
	.value	0x156
	.quad	.L94
	.uleb128 0x5c
	.long	.LASF342
	.byte	0x4
	.value	0x17a
	.quad	.L95
	.uleb128 0x5c
	.long	.LASF343
	.byte	0x4
	.value	0x153
	.quad	.L93
	.uleb128 0x51
	.string	"hex"
	.byte	0x4
	.value	0x128
	.long	0x366c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZ16stbsp_vsprintfcbE3hex
	.uleb128 0x40
	.long	.LASF344
	.byte	0x4
	.value	0x129
	.long	0x366c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZ16stbsp_vsprintfcbE4hexu
	.uleb128 0x51
	.string	"bf"
	.byte	0x4
	.value	0x12a
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x51
	.string	"f"
	.byte	0x4
	.value	0x12b
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x40
	.long	.LASF345
	.byte	0x4
	.value	0x12c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x62
	.long	.Ldebug_ranges0+0
	.long	0x3643
	.uleb128 0x51
	.string	"fw"
	.byte	0x4
	.value	0x131
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x51
	.string	"pr"
	.byte	0x4
	.value	0x131
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x51
	.string	"tz"
	.byte	0x4
	.value	0x131
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x51
	.string	"fl"
	.byte	0x4
	.value	0x132
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x40
	.long	0x31ce
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x159
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x70
	.long	0x31f4
	.uleb128 0x51
	.string	"v"
	.byte	0x4
	.value	0x161
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x51
	.string	"c"
	.byte	0x4
	.value	0x161
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x51
	.string	"num"
	.byte	0x4
	.value	0x207
	.long	0xfcb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x40
	.long	.LASF346
	.byte	0x4
	.value	0x208
	.long	0x662
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x40
	.long	.LASF347
	.byte	0x4
	.value	0x209
	.long	0x662
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x51
	.string	"s"
	.byte	0x4
	.value	0x20a
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x51
	.string	"h"
	.byte	0x4
	.value	0x20b
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x51
	.string	"l"
	.byte	0x4
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x51
	.string	"n"
	.byte	0x4
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x51
	.string	"cs"
	.byte	0x4
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x51
	.string	"n64"
	.byte	0x4
	.value	0x20d
	.long	0x656
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x51
	.string	"fv"
	.byte	0x4
	.value	0x20f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x51
	.string	"dp"
	.byte	0x4
	.value	0x211
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x51
	.string	"sn"
	.byte	0x4
	.value	0x212
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x62
	.long	.Ldebug_ranges0+0xe0
	.long	0x32c5
	.uleb128 0x51
	.string	"v"
	.byte	0x4
	.value	0x22b
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.byte	0
	.uleb128 0x4a
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x32e9
	.uleb128 0x51
	.string	"d"
	.byte	0x4
	.value	0x24e
	.long	0x2555
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.byte	0
	.uleb128 0x4a
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0x330f
	.uleb128 0x40
	.long	.LASF348
	.byte	0x4
	.value	0x30f
	.long	0x102
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x4a
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.long	0x3333
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x32c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.byte	0
	.uleb128 0x4a
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.long	0x3359
	.uleb128 0x51
	.string	"idx"
	.byte	0x4
	.value	0x399
	.long	0xb5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -805
	.byte	0
	.uleb128 0x4a
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.long	0x337f
	.uleb128 0x51
	.string	"i64"
	.byte	0x4
	.value	0x40a
	.long	0x371
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.uleb128 0x4a
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.long	0x33a3
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x411
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.byte	0
	.uleb128 0x4a
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.long	0x33c7
	.uleb128 0x51
	.string	"o"
	.byte	0x4
	.value	0x42a
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x110
	.long	0x34a6
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x476
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x51
	.string	"c"
	.byte	0x4
	.value	0x477
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x4a
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0x3411
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x47c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x140
	.long	0x342b
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x48d
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x4a
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0x3450
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x493
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x170
	.long	0x346a
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x499
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.uleb128 0x4a
	.quad	.LBB85
	.quad	.LBE85-.LBB85
	.long	0x348f
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x4a1
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x4b8
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x1d0
	.long	0x34f9
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x4bf
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x4a
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x34e2
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x4c0
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x4c6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x230
	.long	0x354c
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x4cc
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x4a
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.long	0x3535
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x4cd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x4d9
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x290
	.long	0x359f
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x4de
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x4a
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x3588
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x4df
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x2c0
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x4f0
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.byte	0
	.byte	0
	.uleb128 0x62
	.long	.Ldebug_ranges0+0x2f0
	.long	0x35f2
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x4f6
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x4a
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x35db
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x4f7
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x4fd
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.byte	0
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x51
	.string	"i"
	.byte	0x4
	.value	0x504
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x4a
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.long	0x362a
	.uleb128 0x51
	.string	"lg"
	.byte	0x4
	.value	0x505
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.byte	0
	.uleb128 0x5d
	.long	.Ldebug_ranges0+0x380
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x514
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -660
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.quad	.LBB175
	.quad	.LBE175-.LBB175
	.uleb128 0x51
	.string	"len"
	.byte	0x4
	.value	0x52c
	.long	0x79
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0xbd9
	.uleb128 0x9
	.long	0xb5
	.long	0x367c
	.uleb128 0xa
	.long	0x43
	.byte	0x12
	.byte	0
	.uleb128 0x63
	.long	.LASF349
	.byte	0x4
	.value	0x117
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x36b8
	.uleb128 0x50
	.string	"fl"
	.byte	0x4
	.value	0x117
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4e
	.long	.LASF350
	.byte	0x4
	.value	0x117
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4d
	.long	.LASF351
	.byte	0x4
	.value	0x103
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f5
	.uleb128 0x4e
	.long	.LASF352
	.byte	0x4
	.value	0x103
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x4e
	.long	.LASF353
	.byte	0x4
	.value	0x103
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5a
	.long	.LASF354
	.byte	0x3
	.byte	0xdc
	.long	.LASF355
	.long	0xab5
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3775
	.uleb128 0x42
	.long	.LASF123
	.byte	0x3
	.byte	0xdc
	.long	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF204
	.byte	0x3
	.byte	0xdc
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF356
	.byte	0x3
	.byte	0xde
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF270
	.byte	0x3
	.byte	0xea
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4b
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xf
	.string	"i"
	.byte	0x3
	.byte	0xdf
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	.LASF357
	.byte	0x3
	.byte	0xc7
	.long	.LASF358
	.long	0xab5
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x37f5
	.uleb128 0x42
	.long	.LASF123
	.byte	0x3
	.byte	0xc7
	.long	0xab5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF204
	.byte	0x3
	.byte	0xc7
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x30
	.long	.LASF356
	.byte	0x3
	.byte	0xc9
	.long	0xaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF270
	.byte	0x3
	.byte	0xd5
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4b
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xf
	.string	"i"
	.byte	0x3
	.byte	0xca
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	.LASF359
	.byte	0x3
	.byte	0xbb
	.long	.LASF360
	.long	0xab5
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3863
	.uleb128 0x42
	.long	.LASF204
	.byte	0x3
	.byte	0xbb
	.long	0xaaf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x42
	.long	.LASF123
	.byte	0x3
	.byte	0xbb
	.long	0x306
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x30
	.long	.LASF124
	.byte	0x3
	.byte	0xbd
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF361
	.byte	0x3
	.byte	0xbe
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF270
	.byte	0x3
	.byte	0xc1
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5a
	.long	.LASF362
	.byte	0x3
	.byte	0xb5
	.long	.LASF363
	.long	0xaf
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b3
	.uleb128 0x42
	.long	.LASF364
	.byte	0x3
	.byte	0xb5
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.string	"src"
	.byte	0x3
	.byte	0xb5
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF183
	.byte	0x3
	.byte	0xb5
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x5a
	.long	.LASF365
	.byte	0x3
	.byte	0xa2
	.long	.LASF366
	.long	0x33c
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x394e
	.uleb128 0x42
	.long	.LASF367
	.byte	0x3
	.byte	0xa2
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF368
	.byte	0x3
	.byte	0xa2
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x42
	.long	.LASF369
	.byte	0x3
	.byte	0xa2
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x42
	.long	.LASF370
	.byte	0x3
	.byte	0xa2
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x30
	.long	.LASF371
	.byte	0x3
	.byte	0xa4
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x30
	.long	.LASF372
	.byte	0x3
	.byte	0xa5
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4b
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x30
	.long	.LASF238
	.byte	0x3
	.byte	0xa7
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	.LASF365
	.byte	0x3
	.byte	0x8f
	.long	.LASF373
	.long	0x33c
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x39da
	.uleb128 0x42
	.long	.LASF123
	.byte	0x3
	.byte	0x8f
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF368
	.byte	0x3
	.byte	0x8f
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x42
	.long	.LASF369
	.byte	0x3
	.byte	0x8f
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.long	.LASF370
	.byte	0x3
	.byte	0x8f
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF371
	.byte	0x3
	.byte	0x91
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4b
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x30
	.long	.LASF238
	.byte	0x3
	.byte	0x93
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x59
	.long	.LASF374
	.byte	0x3
	.byte	0x81
	.long	.LASF375
	.long	0x33c
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a35
	.uleb128 0x49
	.string	"x"
	.byte	0x3
	.byte	0x81
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF252
	.byte	0x3
	.byte	0x81
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"At"
	.byte	0x3
	.byte	0x83
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF124
	.byte	0x3
	.byte	0x84
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x5a
	.long	.LASF376
	.byte	0x3
	.byte	0x7b
	.long	.LASF377
	.long	0x31d
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a85
	.uleb128 0x42
	.long	.LASF123
	.byte	0x3
	.byte	0x7b
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.long	.LASF256
	.byte	0x3
	.byte	0x7b
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x42
	.long	.LASF361
	.byte	0x3
	.byte	0x7b
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5a
	.long	.LASF376
	.byte	0x3
	.byte	0x75
	.long	.LASF378
	.long	0x31d
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac7
	.uleb128 0x42
	.long	.LASF379
	.byte	0x3
	.byte	0x75
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF380
	.byte	0x3
	.byte	0x75
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x5a
	.long	.LASF376
	.byte	0x3
	.byte	0x6f
	.long	.LASF381
	.long	0x31d
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b17
	.uleb128 0x42
	.long	.LASF379
	.byte	0x3
	.byte	0x6f
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF380
	.byte	0x3
	.byte	0x6f
	.long	0xab5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF370
	.byte	0x3
	.byte	0x6f
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x5a
	.long	.LASF376
	.byte	0x3
	.byte	0x69
	.long	.LASF382
	.long	0x31d
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b75
	.uleb128 0x42
	.long	.LASF379
	.byte	0x3
	.byte	0x69
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.long	.LASF383
	.byte	0x3
	.byte	0x69
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x42
	.long	.LASF380
	.byte	0x3
	.byte	0x69
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF384
	.byte	0x3
	.byte	0x69
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5a
	.long	.LASF376
	.byte	0x3
	.byte	0x5c
	.long	.LASF385
	.long	0x31d
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bef
	.uleb128 0x42
	.long	.LASF379
	.byte	0x3
	.byte	0x5c
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF383
	.byte	0x3
	.byte	0x5c
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x42
	.long	.LASF380
	.byte	0x3
	.byte	0x5c
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF384
	.byte	0x3
	.byte	0x5c
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF370
	.byte	0x3
	.byte	0x5c
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x30
	.long	.LASF386
	.byte	0x3
	.byte	0x5e
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x59
	.long	.LASF387
	.byte	0x3
	.byte	0x2f
	.long	.LASF388
	.long	0x31d
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cb5
	.uleb128 0x42
	.long	.LASF379
	.byte	0x3
	.byte	0x2f
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF380
	.byte	0x3
	.byte	0x2f
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x42
	.long	.LASF252
	.byte	0x3
	.byte	0x2f
	.long	0x33c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x42
	.long	.LASF370
	.byte	0x3
	.byte	0x2f
	.long	0x31d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.long	.LASF386
	.byte	0x3
	.byte	0x31
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x30
	.long	.LASF389
	.byte	0x3
	.byte	0x32
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.long	.LASF390
	.byte	0x3
	.byte	0x33
	.long	0x306
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.long	.LASF391
	.byte	0x3
	.byte	0x34
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4b
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x30
	.long	.LASF392
	.byte	0x3
	.byte	0x39
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x30
	.long	.LASF393
	.byte	0x3
	.byte	0x3a
	.long	0xb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.uleb128 0x64
	.long	0xb93
	.long	0x3cd8
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cd8
	.long	0x3ce5
	.uleb128 0x47
	.long	.LASF394
	.long	0xbc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x65
	.long	0xb39
	.byte	0x2
	.long	0x3cf3
	.long	0x3d06
	.uleb128 0x66
	.long	.LASF394
	.long	0xbb8
	.uleb128 0x67
	.string	"x"
	.byte	0x3
	.byte	0x11
	.long	0x306
	.byte	0
	.uleb128 0x68
	.long	0x3ce5
	.long	.LASF395
	.long	0x3d2d
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d2d
	.long	0x3d3e
	.uleb128 0x69
	.long	0x3cf3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x69
	.long	0x3cfc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x65
	.long	0xb16
	.byte	0x2
	.long	0x3d4c
	.long	0x3d68
	.uleb128 0x66
	.long	.LASF394
	.long	0xbb8
	.uleb128 0x67
	.string	"S"
	.byte	0x3
	.byte	0x10
	.long	0x306
	.uleb128 0x67
	.string	"L"
	.byte	0x3
	.byte	0x10
	.long	0x331
	.byte	0
	.uleb128 0x6a
	.long	0x3d3e
	.long	.LASF396
	.long	0x3d8f
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d8f
	.long	0x3da8
	.uleb128 0x69
	.long	0x3d4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x69
	.long	0x3d55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x69
	.long	0x3d5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x65
	.long	0xaf3
	.byte	0x2
	.long	0x3db6
	.long	0x3dd2
	.uleb128 0x66
	.long	.LASF394
	.long	0xbb8
	.uleb128 0x67
	.string	"S"
	.byte	0x3
	.byte	0xf
	.long	0x306
	.uleb128 0x67
	.string	"L"
	.byte	0x3
	.byte	0xf
	.long	0x33c
	.byte	0
	.uleb128 0x6a
	.long	0x3da8
	.long	.LASF397
	.long	0x3df9
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3df9
	.long	0x3e12
	.uleb128 0x69
	.long	0x3db6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x69
	.long	0x3dbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x69
	.long	0x3dc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x59
	.long	.LASF398
	.byte	0x2
	.byte	0x77
	.long	.LASF399
	.long	0x115
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e54
	.uleb128 0x42
	.long	.LASF204
	.byte	0x2
	.byte	0x77
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF270
	.byte	0x2
	.byte	0x79
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6b
	.long	.LASF400
	.byte	0x2
	.byte	0x71
	.long	.LASF401
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e84
	.uleb128 0x42
	.long	.LASF204
	.byte	0x2
	.byte	0x71
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6b
	.long	.LASF402
	.byte	0x2
	.byte	0x6a
	.long	.LASF403
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eb4
	.uleb128 0x42
	.long	.LASF404
	.byte	0x2
	.byte	0x6a
	.long	0xa8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5a
	.long	.LASF405
	.byte	0x2
	.byte	0x60
	.long	.LASF406
	.long	0xa8a
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ef6
	.uleb128 0x42
	.long	.LASF204
	.byte	0x2
	.byte	0x60
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF270
	.byte	0x2
	.byte	0x62
	.long	0xa8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x59
	.long	.LASF407
	.byte	0x2
	.byte	0x4c
	.long	.LASF408
	.long	0xad
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f74
	.uleb128 0x42
	.long	.LASF204
	.byte	0x2
	.byte	0x4c
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF118
	.byte	0x2
	.byte	0x4c
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF409
	.byte	0x2
	.byte	0x4c
	.long	0x31d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x30
	.long	.LASF270
	.byte	0x2
	.byte	0x4e
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4b
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x30
	.long	.LASF238
	.byte	0x2
	.byte	0x56
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	.LASF410
	.byte	0x2
	.byte	0x41
	.long	.LASF411
	.long	0xa59
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fc5
	.uleb128 0x42
	.long	.LASF204
	.byte	0x2
	.byte	0x41
	.long	0xaaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF118
	.byte	0x2
	.byte	0x41
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF412
	.byte	0x2
	.byte	0x43
	.long	0xa59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x5a
	.long	.LASF413
	.byte	0x2
	.byte	0x36
	.long	.LASF414
	.long	0xa59
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4016
	.uleb128 0x42
	.long	.LASF117
	.byte	0x2
	.byte	0x36
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF118
	.byte	0x2
	.byte	0x36
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.long	.LASF204
	.byte	0x2
	.byte	0x38
	.long	0xa59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x4c
	.long	.LASF415
	.byte	0x1
	.byte	0x17
	.long	.LASF416
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4054
	.uleb128 0x42
	.long	.LASF417
	.byte	0x1
	.byte	0x17
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.long	.LASF118
	.byte	0x1
	.byte	0x17
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6c
	.long	.LASF418
	.byte	0x1
	.byte	0xb
	.long	.LASF419
	.long	0xad
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x42
	.long	.LASF417
	.byte	0x1
	.byte	0xb
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF118
	.byte	0x1
	.byte	0xb
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.long	.LASF420
	.byte	0x1
	.byte	0xd
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6d
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x6d
	.uleb128 0x19
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x5d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x61
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x62
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x63
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x64
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x65
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x66
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x67
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x68
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x69
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x11c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB14
	.quad	.LBE14
	.quad	.LBB171
	.quad	.LBE171
	.quad	.LBB172
	.quad	.LBE172
	.quad	0
	.quad	0
	.quad	.LBB21
	.quad	.LBE21
	.quad	.LBB22
	.quad	.LBE22
	.quad	0
	.quad	0
	.quad	.LBB27
	.quad	.LBE27
	.quad	.LBB28
	.quad	.LBE28
	.quad	.LBB29
	.quad	.LBE29
	.quad	0
	.quad	0
	.quad	.LBB40
	.quad	.LBE40
	.quad	.LBB167
	.quad	.LBE167
	.quad	0
	.quad	0
	.quad	.LBB41
	.quad	.LBE41
	.quad	.LBB42
	.quad	.LBE42
	.quad	0
	.quad	0
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB97
	.quad	.LBE97
	.quad	0
	.quad	0
	.quad	.LBB65
	.quad	.LBE65
	.quad	.LBB66
	.quad	.LBE66
	.quad	0
	.quad	0
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB79
	.quad	.LBE79
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB90
	.quad	.LBE90
	.quad	0
	.quad	0
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB162
	.quad	.LBE162
	.quad	0
	.quad	0
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB105
	.quad	.LBE105
	.quad	0
	.quad	0
	.quad	.LBB109
	.quad	.LBE109
	.quad	.LBB163
	.quad	.LBE163
	.quad	0
	.quad	0
	.quad	.LBB115
	.quad	.LBE115
	.quad	.LBB116
	.quad	.LBE116
	.quad	0
	.quad	0
	.quad	.LBB120
	.quad	.LBE120
	.quad	.LBB164
	.quad	.LBE164
	.quad	0
	.quad	0
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB127
	.quad	.LBE127
	.quad	0
	.quad	0
	.quad	.LBB131
	.quad	.LBE131
	.quad	.LBB165
	.quad	.LBE165
	.quad	0
	.quad	0
	.quad	.LBB137
	.quad	.LBE137
	.quad	.LBB138
	.quad	.LBE138
	.quad	0
	.quad	0
	.quad	.LBB146
	.quad	.LBE146
	.quad	.LBB157
	.quad	.LBE157
	.quad	0
	.quad	0
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB153
	.quad	.LBE153
	.quad	0
	.quad	0
	.quad	.LBB243
	.quad	.LBE243
	.quad	.LBB244
	.quad	.LBE244
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB20
	.quad	.LFE20
	.quad	.LFB22
	.quad	.LFE22
	.quad	.LFB25
	.quad	.LFE25
	.quad	.LFB28
	.quad	.LFE28
	.quad	.LFB36
	.quad	.LFE36
	.quad	.LFB62
	.quad	.LFE62
	.quad	.LFB63
	.quad	.LFE63
	.quad	.LFB64
	.quad	.LFE64
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB75
	.quad	.LFE75
	.quad	.LFB76
	.quad	.LFE76
	.quad	.LFB78
	.quad	.LFE78
	.quad	.LFB79
	.quad	.LFE79
	.quad	.LFB80
	.quad	.LFE80
	.quad	.LFB83
	.quad	.LFE83
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF139:
	.string	"JSON_DontUseTag"
.LASF154:
	.string	"CommandQueue"
.LASF14:
	.string	"int8_t"
.LASF155:
	.string	"my_json_test_existlist"
.LASF150:
	.string	"test_statemachine"
.LASF219:
	.string	"_Z4IdleP9test_type8test_cmdiPKc"
.LASF23:
	.string	"size_t"
.LASF72:
	.string	"start"
.LASF140:
	.string	"JSON_BaseObject"
.LASF145:
	.string	"Colours_LabelObject"
.LASF430:
	.string	"test_cmd"
.LASF326:
	.string	"user"
.LASF181:
	.string	"stbsp__digitpair"
.LASF166:
	.string	"_IO_2_1_stderr_"
.LASF15:
	.string	"int32_t"
.LASF144:
	.string	"Colours_Strings"
.LASF249:
	.string	"TokenLength"
.LASF199:
	.string	"~<lambda>"
.LASF42:
	.string	"_IO_save_end"
.LASF406:
	.string	"_Z24abm_BeginTemporaryMemoryP12memory_arena"
.LASF110:
	.string	"lldiv"
.LASF278:
	.string	"EnumToLabel_Object"
.LASF159:
	.string	"isValue"
.LASF175:
	.string	"Blue"
.LASF221:
	.string	"parser"
.LASF115:
	.string	"strtold"
.LASF176:
	.string	"my_json_test"
.LASF228:
	.string	"jsmn_fill_token"
.LASF112:
	.string	"strtoll"
.LASF382:
	.string	"_Z19abs_AreStringsEqualPKcjS0_j"
.LASF296:
	.string	"_Z13EnumToCString8test_cmd"
.LASF35:
	.string	"_IO_write_base"
.LASF350:
	.string	"sign"
.LASF246:
	.string	"NumTokensProcessed"
.LASF84:
	.string	"div_t"
.LASF312:
	.string	"found"
.LASF149:
	.string	"Rear"
.LASF51:
	.string	"_lock"
.LASF125:
	.string	"at_quick_exit"
.LASF74:
	.string	"jsmntok_t"
.LASF377:
	.string	"_Z19abs_AreStringsEqualPKcj13abs_stringptr"
.LASF71:
	.string	"type"
.LASF90:
	.string	"__compar_fn_t"
.LASF189:
	.string	"stbsp__negtop"
.LASF152:
	.string	"CurrentState"
.LASF40:
	.string	"_IO_save_base"
.LASF121:
	.string	"Arena"
.LASF420:
	.string	"MemoryStart"
.LASF205:
	.string	"JsonSize"
.LASF111:
	.string	"atoll"
.LASF67:
	.string	"jsmntype_t"
.LASF330:
	.string	"callback"
.LASF44:
	.string	"_chain"
.LASF414:
	.string	"_Z14abm_InitMemoryPvm"
.LASF65:
	.string	"JSMN_STRING"
.LASF212:
	.string	"PrintQueue"
.LASF48:
	.string	"_cur_column"
.LASF170:
	.string	"sys_nerr"
.LASF306:
	.string	"Parser"
.LASF245:
	.string	"ItemExists"
.LASF362:
	.string	"abs_StringCopy"
.LASF6:
	.string	"__uint8_t"
.LASF92:
	.string	"atof"
.LASF93:
	.string	"atoi"
.LASF94:
	.string	"atol"
.LASF172:
	.string	"_sys_nerr"
.LASF215:
	.string	"_Z10PrintQueueP14test_cmd_queue"
.LASF263:
	.string	"StateName"
.LASF398:
	.string	"abm_GetMemoryLeft"
.LASF156:
	.string	"TestUnsigned"
.LASF297:
	.string	"StringToEnum<test_cmd>"
.LASF10:
	.string	"long int"
.LASF265:
	.string	"_Z9GoToStateP9test_typePFvS0_8test_cmdiPKcE"
.LASF241:
	.string	"_Z22JsonArrayToObjectArrayP12memory_arenaPKcmPP12my_json_testPP22my_json_test_existlist"
.LASF383:
	.string	"String1Len"
.LASF109:
	.string	"wctomb"
.LASF198:
	.string	"<lambda>"
.LASF160:
	.string	"_IO_marker"
.LASF211:
	.string	"main"
.LASF294:
	.string	"_Z8PushJsonPcjPKc7Coloursj"
.LASF250:
	.string	"PushJson"
.LASF428:
	.string	"rand"
.LASF368:
	.string	"ListCount"
.LASF417:
	.string	"Address"
.LASF190:
	.string	"stbsp__toperr"
.LASF336:
	.string	"scopy"
.LASF146:
	.string	"test_cmd_queue"
.LASF270:
	.string	"Result"
.LASF404:
	.string	"TempMem"
.LASF376:
	.string	"abs_AreStringsEqual"
.LASF118:
	.string	"Size"
.LASF346:
	.string	"lead"
.LASF227:
	.string	"jsmn_parse_primitive"
.LASF4:
	.string	"signed char"
.LASF16:
	.string	"uint8_t"
.LASF195:
	.string	"TestMachine"
.LASF30:
	.string	"_IO_FILE"
.LASF107:
	.string	"system"
.LASF302:
	.string	"_Z8EndGroupPcja"
.LASF408:
	.string	"_Z13abm_PushSize_P12memory_arenama"
.LASF308:
	.string	"stbsp__real_to_str"
.LASF389:
	.string	"CompAt"
.LASF0:
	.string	"unsigned char"
.LASF415:
	.string	"abm_DeallocateOsMemory"
.LASF307:
	.string	"NumTokensExisting"
.LASF197:
	.string	"__TestMachine"
.LASF323:
	.string	"result"
.LASF128:
	.string	"_ZN13abs_stringptrC4EPKc"
.LASF87:
	.string	"7lldiv_t"
.LASF252:
	.string	"MaxLength"
.LASF424:
	.string	"__builtin_va_list"
.LASF395:
	.string	"_ZN13abs_stringptrC2EPKc"
.LASF24:
	.string	"__gnuc_va_list"
.LASF432:
	.string	"_IO_FILE_plus"
.LASF310:
	.string	"value"
.LASF359:
	.string	"abs_CreateStringPtr"
.LASF226:
	.string	"jsmn_parse_string"
.LASF273:
	.string	"isQueueFull"
.LASF13:
	.string	"char"
.LASF224:
	.string	"num_tokens"
.LASF97:
	.string	"ldiv"
.LASF320:
	.string	"stbsp__real_to_parts"
.LASF427:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF267:
	.string	"isChanged"
.LASF352:
	.string	"pcomma"
.LASF374:
	.string	"abs_StringLength"
.LASF342:
	.string	"scandd"
.LASF431:
	.string	"_IO_lock_t"
.LASF137:
	.string	"JSON_Null"
.LASF240:
	.string	"JsonToObject"
.LASF361:
	.string	"StringPtr"
.LASF373:
	.string	"_Z14abs_FindInList13abs_stringptrjPKS_a"
.LASF142:
	.string	"Colours_Count"
.LASF367:
	.string	"SearchString"
.LASF292:
	.string	"TotalTokens"
.LASF82:
	.string	"5div_t"
.LASF409:
	.string	"ClearMemory"
.LASF256:
	.string	"StringLen"
.LASF425:
	.string	"decltype(nullptr)"
.LASF32:
	.string	"_IO_read_ptr"
.LASF305:
	.string	"_Z9ParseJsonP12memory_arenaPKcmPP9jsmntok_t"
.LASF26:
	.string	"fp_offset"
.LASF206:
	.string	"Json"
.LASF98:
	.string	"mblen"
.LASF191:
	.string	"stbsp__negtoperr"
.LASF222:
	.string	"jsmn_parse"
.LASF163:
	.string	"_pos"
.LASF167:
	.string	"stdin"
.LASF202:
	.string	"__closure"
.LASF171:
	.string	"sys_errlist"
.LASF280:
	.string	"EnumToken"
.LASF378:
	.string	"_Z19abs_AreStringsEqual13abs_stringptrS_"
.LASF290:
	.string	"Unused"
.LASF43:
	.string	"_markers"
.LASF286:
	.string	"_Z12StringToEnumI7ColoursET_13abs_stringptr"
.LASF148:
	.string	"Front"
.LASF238:
	.string	"Index"
.LASF300:
	.string	"EndGroup"
.LASF106:
	.string	"strtoul"
.LASF407:
	.string	"abm_PushSize_"
.LASF213:
	.string	"Queue"
.LASF232:
	.string	"ObjectArrayExists"
.LASF309:
	.string	"decimal_pos"
.LASF284:
	.string	"_Z13EnumToCString7Colours"
.LASF52:
	.string	"_offset"
.LASF412:
	.string	"SubArena"
.LASF271:
	.string	"Enqueue"
.LASF334:
	.string	"dofloatfromg"
.LASF291:
	.string	"NumTokensUsed"
.LASF272:
	.string	"_Z7EnqueueP14test_cmd_queue8test_cmd"
.LASF257:
	.string	"DequeueCommand"
.LASF283:
	.string	"EnumToCString"
.LASF96:
	.string	"getenv"
.LASF164:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"long unsigned int"
.LASF88:
	.string	"lldiv_t"
.LASF416:
	.string	"_Z22abm_DeallocateOsMemoryPvm"
.LASF46:
	.string	"_flags2"
.LASF204:
	.string	"Memory"
.LASF231:
	.string	"ObjectArray"
.LASF85:
	.string	"6ldiv_t"
.LASF34:
	.string	"_IO_read_base"
.LASF356:
	.string	"NewString"
.LASF394:
	.string	"this"
.LASF59:
	.string	"_unused2"
.LASF369:
	.string	"List"
.LASF108:
	.string	"wcstombs"
.LASF134:
	.string	"STBSP_SPRINTFCB"
.LASF405:
	.string	"abm_BeginTemporaryMemory"
.LASF258:
	.string	"_Z14DequeueCommandP9test_type"
.LASF19:
	.string	"__float128"
.LASF337:
	.string	"lchk"
.LASF419:
	.string	"_Z20abm_AllocateOsMemoryPvm"
.LASF193:
	.string	"argc"
.LASF429:
	.string	"_ZN13abs_stringptrC4Ev"
.LASF186:
	.string	"stbsp__negbot"
.LASF47:
	.string	"_old_offset"
.LASF235:
	.string	"NumTokensParsed"
.LASF75:
	.string	"9jsmntok_t"
.LASF194:
	.string	"argv"
.LASF229:
	.string	"jsmn_alloc_token"
.LASF259:
	.string	"EnqueueCommand"
.LASF62:
	.string	"JSMN_UNDEFINED"
.LASF354:
	.string	"abs_Lowercase"
.LASF244:
	.string	"ItemsExistOut"
.LASF365:
	.string	"abs_FindInList"
.LASF9:
	.string	"__uint32_t"
.LASF61:
	.string	"long long int"
.LASF375:
	.string	"_Z16abs_StringLengthPKcj"
.LASF230:
	.string	"VolatileMemory"
.LASF133:
	.string	"va_list"
.LASF338:
	.string	"flags_done"
.LASF288:
	.string	"_Z12StringToEnumI7ColoursET_PKc"
.LASF422:
	.string	"/home/amos/prog/c/amos_libraries/preprocessor/test/PreprocTest.cpp"
.LASF188:
	.string	"stbsp__top"
.LASF343:
	.string	"schk1"
.LASF426:
	.string	"10jsmntype_t"
.LASF357:
	.string	"abs_Capitalize"
.LASF318:
	.string	"stbsp__raise_to_power10"
.LASF21:
	.string	"double"
.LASF314:
	.string	"noround"
.LASF100:
	.string	"mbtowc"
.LASF37:
	.string	"_IO_write_end"
.LASF381:
	.string	"_Z19abs_AreStringsEqual13abs_stringptrS_a"
.LASF293:
	.string	"EnumString"
.LASF333:
	.string	"flt_lead"
.LASF192:
	.string	"stbsp__powten"
.LASF151:
	.string	"test_type"
.LASF25:
	.string	"gp_offset"
.LASF158:
	.string	"MyColour"
.LASF76:
	.string	"11jsmn_parser"
.LASF119:
	.string	"Used"
.LASF127:
	.string	"_ZN13abs_stringptrC4EPKci"
.LASF126:
	.string	"_ZN13abs_stringptrC4EPKcj"
.LASF20:
	.string	"float"
.LASF349:
	.string	"stbsp__lead_sign"
.LASF411:
	.string	"_Z18abm_CreateSubArenaP12memory_arenam"
.LASF183:
	.string	"count"
.LASF372:
	.string	"SearchStringLen"
.LASF391:
	.string	"StringLength"
.LASF203:
	.string	"MemoryPtr"
.LASF196:
	.string	"<lambda()>"
.LASF38:
	.string	"_IO_buf_base"
.LASF401:
	.string	"_Z15abm_ResetMemoryP12memory_arena"
.LASF237:
	.string	"Token"
.LASF400:
	.string	"abm_ResetMemory"
.LASF2:
	.string	"unsigned int"
.LASF388:
	.string	"_Z27abs_AreStringFragmentsEqualPKcS0_ja"
.LASF410:
	.string	"abm_CreateSubArena"
.LASF266:
	.string	"NewState"
.LASF141:
	.string	"test_cmd_Count"
.LASF322:
	.string	"stbsp_snprintf"
.LASF131:
	.string	"operator char const*"
.LASF277:
	.string	"InitializeQueue"
.LASF341:
	.string	"schk2"
.LASF53:
	.string	"__pad1"
.LASF54:
	.string	"__pad2"
.LASF55:
	.string	"__pad3"
.LASF56:
	.string	"__pad4"
.LASF57:
	.string	"__pad5"
.LASF162:
	.string	"_sbuf"
.LASF209:
	.string	"Test2"
.LASF78:
	.string	"toksuper"
.LASF157:
	.string	"TestString"
.LASF260:
	.string	"_Z14EnqueueCommandP9test_type8test_cmd"
.LASF315:
	.string	"bits"
.LASF370:
	.string	"isCaseInsensitive"
.LASF328:
	.string	"stbsp_sprintf"
.LASF269:
	.string	"_Z7DequeueP14test_cmd_queue"
.LASF27:
	.string	"overflow_arg_area"
.LASF135:
	.string	"jsmnerr"
.LASF31:
	.string	"_flags"
.LASF295:
	.string	"Type"
.LASF339:
	.string	"done"
.LASF178:
	.string	"stbsp__comma"
.LASF390:
	.string	"SearchAt"
.LASF58:
	.string	"_mode"
.LASF223:
	.string	"tokens"
.LASF123:
	.string	"String"
.LASF116:
	.string	"memory_arena"
.LASF80:
	.string	"__gnu_cxx"
.LASF360:
	.string	"_Z19abs_CreateStringPtrP12memory_arenaPKc"
.LASF18:
	.string	"__unknown__"
.LASF187:
	.string	"stbsp__negboterr"
.LASF113:
	.string	"strtoull"
.LASF319:
	.string	"power"
.LASF102:
	.string	"qsort"
.LASF298:
	.string	"_Z12StringToEnumI8test_cmdET_13abs_stringptr"
.LASF22:
	.string	"long double"
.LASF130:
	.string	"_ZN13abs_stringptrC4ERKc"
.LASF345:
	.string	"tlen"
.LASF129:
	.string	"_ZN13abs_stringptrC4EPc"
.LASF143:
	.string	"test_cmd_Strings"
.LASF304:
	.string	"ParseJson"
.LASF117:
	.string	"Start"
.LASF387:
	.string	"abs_AreStringFragmentsEqual"
.LASF348:
	.string	"divisor"
.LASF384:
	.string	"String2Len"
.LASF177:
	.string	"stbsp__period"
.LASF327:
	.string	"stbsp__clamp_callback"
.LASF403:
	.string	"_Z22abm_EndTemporaryMemory16temporary_memory"
.LASF239:
	.string	"JsonArrayToObjectArray"
.LASF423:
	.string	"/home/amos/prog/c/amos_libraries/preprocessor/test"
.LASF86:
	.string	"ldiv_t"
.LASF95:
	.string	"bsearch"
.LASF207:
	.string	"Test"
.LASF299:
	.string	"_Z12StringToEnumI8test_cmdET_PKc"
.LASF218:
	.string	"Idle"
.LASF5:
	.string	"__int8_t"
.LASF248:
	.string	"ObjectEndPosition"
.LASF180:
	.string	"pair"
.LASF73:
	.string	"size"
.LASF313:
	.string	"donez"
.LASF64:
	.string	"JSMN_ARRAY"
.LASF89:
	.string	"long long unsigned int"
.LASF353:
	.string	"pperiod"
.LASF28:
	.string	"reg_save_area"
.LASF184:
	.string	"length"
.LASF303:
	.string	"_Z10StartGroupPcj"
.LASF11:
	.string	"__off_t"
.LASF66:
	.string	"JSMN_PRIMITIVE"
.LASF275:
	.string	"isQueueEmpty"
.LASF421:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -ggdb -Og -O0 -std=c++1z -fstack-protector-strong"
.LASF325:
	.string	"stbsp__count_clamp_callback"
.LASF287:
	.string	"StringIndex"
.LASF200:
	.string	"<lambda(test_cmd)>"
.LASF247:
	.string	"NumTokensToProcess"
.LASF69:
	.string	"JSMN_ERROR_INVAL"
.LASF321:
	.string	"stbsp_vsprintf"
.LASF201:
	.string	"operator()"
.LASF289:
	.string	"_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP7Coloursj"
.LASF81:
	.string	"__cxx11"
.LASF83:
	.string	"quot"
.LASF41:
	.string	"_IO_backup_base"
.LASF50:
	.string	"_shortbuf"
.LASF285:
	.string	"StringToEnum<Colours>"
.LASF413:
	.string	"abm_InitMemory"
.LASF165:
	.string	"_IO_2_1_stdout_"
.LASF335:
	.string	"doexpfromg"
.LASF124:
	.string	"Length"
.LASF364:
	.string	"dest"
.LASF332:
	.string	"doafloat"
.LASF161:
	.string	"_next"
.LASF12:
	.string	"__off64_t"
.LASF153:
	.string	"isNewState"
.LASF68:
	.string	"JSMN_ERROR_NOMEM"
.LASF392:
	.string	"CompAtChar"
.LASF274:
	.string	"_Z11isQueueFullP14test_cmd_queue"
.LASF208:
	.string	"JsonLength"
.LASF363:
	.string	"_Z14abs_StringCopyPcPKcm"
.LASF399:
	.string	"_Z17abm_GetMemoryLeftP12memory_arena"
.LASF433:
	.string	"Colours"
.LASF39:
	.string	"_IO_buf_end"
.LASF355:
	.string	"_Z13abs_Lowercase13abs_stringptrP12memory_arena"
.LASF281:
	.string	"EnumToString"
.LASF366:
	.string	"_Z14abs_FindInListPKcjPK13abs_stringptra"
.LASF104:
	.string	"strtod"
.LASF114:
	.string	"strtof"
.LASF386:
	.string	"isMatch"
.LASF233:
	.string	"NumberOfObjects"
.LASF105:
	.string	"strtol"
.LASF311:
	.string	"frac_digits"
.LASF132:
	.string	"_ZNK13abs_stringptrcvPKcEv"
.LASF169:
	.string	"stderr"
.LASF7:
	.string	"short int"
.LASF282:
	.string	"_Z12EnumToString7Colours"
.LASF434:
	.string	"_Z15InitializeQueueP14test_cmd_queue"
.LASF264:
	.string	"GoToState"
.LASF77:
	.string	"toknext"
.LASF234:
	.string	"TokenArray"
.LASF214:
	.string	"Running"
.LASF268:
	.string	"Dequeue"
.LASF91:
	.string	"atexit"
.LASF210:
	.string	"Test2Exists"
.LASF358:
	.string	"_Z14abs_Capitalize13abs_stringptrP12memory_arena"
.LASF49:
	.string	"_vtable_offset"
.LASF385:
	.string	"_Z19abs_AreStringsEqualPKcjS0_ja"
.LASF324:
	.string	"stbsp_vsnprintf"
.LASF173:
	.string	"_sys_errlist"
.LASF147:
	.string	"Items"
.LASF122:
	.string	"abs_stringptr"
.LASF79:
	.string	"jsmn_parser"
.LASF301:
	.string	"StartGroup"
.LASF251:
	.string	"_Z8PushJsonPcjPKcRK12my_json_testj"
.LASF103:
	.string	"srand"
.LASF379:
	.string	"String1"
.LASF380:
	.string	"String2"
.LASF340:
	.string	"endfmt"
.LASF217:
	.string	"State"
.LASF236:
	.string	"TokenIndex"
.LASF347:
	.string	"tail"
.LASF174:
	.string	"Green"
.LASF185:
	.string	"stbsp__bot"
.LASF136:
	.string	"json_flags"
.LASF254:
	.string	"JsonFlags"
.LASF182:
	.string	"stbsp__context"
.LASF33:
	.string	"_IO_read_end"
.LASF99:
	.string	"mbstowcs"
.LASF279:
	.string	"_Z18EnumToLabel_Object7Colours"
.LASF216:
	.string	"_Z7RunningP9test_type8test_cmdiPKc"
.LASF253:
	.string	"Value"
.LASF243:
	.string	"ObjectOut"
.LASF276:
	.string	"_Z12isQueueEmptyP14test_cmd_queue"
.LASF17:
	.string	"uint32_t"
.LASF393:
	.string	"SearchAtChar"
.LASF45:
	.string	"_fileno"
.LASF63:
	.string	"JSMN_OBJECT"
.LASF220:
	.string	"jsmn_init"
.LASF225:
	.string	"token"
.LASF138:
	.string	"JSON_IsLastInList"
.LASF1:
	.string	"short unsigned int"
.LASF168:
	.string	"stdout"
.LASF242:
	.string	"_Z12JsonToObjectP12memory_arenaPKcmP9jsmntok_tP12my_json_testP22my_json_test_existlist"
.LASF120:
	.string	"temporary_memory"
.LASF36:
	.string	"_IO_write_ptr"
.LASF344:
	.string	"hexu"
.LASF255:
	.string	"isLast"
.LASF331:
	.string	"radixnum"
.LASF8:
	.string	"__int32_t"
.LASF402:
	.string	"abm_EndTemporaryMemory"
.LASF70:
	.string	"JSMN_ERROR_PART"
.LASF329:
	.string	"stbsp_vsprintfcb"
.LASF179:
	.string	"temp"
.LASF371:
	.string	"MatchIndex"
.LASF351:
	.string	"stbsp_set_separators"
.LASF396:
	.string	"_ZN13abs_stringptrC2EPKci"
.LASF397:
	.string	"_ZN13abs_stringptrC2EPKcj"
.LASF101:
	.string	"quick_exit"
.LASF60:
	.string	"wchar_t"
.LASF29:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF261:
	.string	"GetStateName"
.LASF262:
	.string	"_Z12GetStateNamePFvP9test_type8test_cmdiPKcE"
.LASF316:
	.string	"expo"
.LASF418:
	.string	"abm_AllocateOsMemory"
.LASF317:
	.string	"tens"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

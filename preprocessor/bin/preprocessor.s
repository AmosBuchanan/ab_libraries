	.file	"ab_preprocessor2.cpp"
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
.LFB0:
	.file 1 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_memory_linux.h"
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
.LFE0:
	.size	_Z20abm_AllocateOsMemoryPvm, .-_Z20abm_AllocateOsMemoryPvm
	.globl	_Z22abm_DeallocateOsMemoryPvm
	.type	_Z22abm_DeallocateOsMemoryPvm, @function
_Z22abm_DeallocateOsMemoryPvm:
.LFB1:
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
.LFE1:
	.size	_Z22abm_DeallocateOsMemoryPvm, .-_Z22abm_DeallocateOsMemoryPvm
	.globl	_Z14abm_InitMemoryPvm
	.type	_Z14abm_InitMemoryPvm, @function
_Z14abm_InitMemoryPvm:
.LFB2:
	.file 2 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_memory.h"
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
.LFE2:
	.size	_Z14abm_InitMemoryPvm, .-_Z14abm_InitMemoryPvm
	.globl	_Z18abm_CreateSubArenaP12memory_arenam
	.type	_Z18abm_CreateSubArenaP12memory_arenam, @function
_Z18abm_CreateSubArenaP12memory_arenam:
.LFB3:
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
.LFE3:
	.size	_Z18abm_CreateSubArenaP12memory_arenam, .-_Z18abm_CreateSubArenaP12memory_arenam
	.globl	_Z13abm_PushSize_P12memory_arenama
	.type	_Z13abm_PushSize_P12memory_arenama, @function
_Z13abm_PushSize_P12memory_arenama:
.LFB4:
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
.LFE4:
	.size	_Z13abm_PushSize_P12memory_arenama, .-_Z13abm_PushSize_P12memory_arenama
	.globl	_Z24abm_BeginTemporaryMemoryP12memory_arena
	.type	_Z24abm_BeginTemporaryMemoryP12memory_arena, @function
_Z24abm_BeginTemporaryMemoryP12memory_arena:
.LFB5:
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
.LFE5:
	.size	_Z24abm_BeginTemporaryMemoryP12memory_arena, .-_Z24abm_BeginTemporaryMemoryP12memory_arena
	.globl	_Z22abm_EndTemporaryMemory16temporary_memory
	.type	_Z22abm_EndTemporaryMemory16temporary_memory, @function
_Z22abm_EndTemporaryMemory16temporary_memory:
.LFB6:
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
.LFE6:
	.size	_Z22abm_EndTemporaryMemory16temporary_memory, .-_Z22abm_EndTemporaryMemory16temporary_memory
	.globl	_Z15abm_ResetMemoryP12memory_arena
	.type	_Z15abm_ResetMemoryP12memory_arena, @function
_Z15abm_ResetMemoryP12memory_arena:
.LFB7:
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
.LFE7:
	.size	_Z15abm_ResetMemoryP12memory_arena, .-_Z15abm_ResetMemoryP12memory_arena
	.section	.text._Z17abm_GetMemoryLeftP12memory_arena,"axG",@progbits,_Z17abm_GetMemoryLeftP12memory_arena,comdat
	.weak	_Z17abm_GetMemoryLeftP12memory_arena
	.type	_Z17abm_GetMemoryLeftP12memory_arena, @function
_Z17abm_GetMemoryLeftP12memory_arena:
.LFB8:
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
.LFE8:
	.size	_Z17abm_GetMemoryLeftP12memory_arena, .-_Z17abm_GetMemoryLeftP12memory_arena
	.section	.text._ZN13abs_stringptrC2EPKcj,"axG",@progbits,_ZN13abs_stringptrC5EPKcj,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPKcj
	.type	_ZN13abs_stringptrC2EPKcj, @function
_ZN13abs_stringptrC2EPKcj:
.LFB10:
	.file 3 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_string.h"
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
.LFE10:
	.size	_ZN13abs_stringptrC2EPKcj, .-_ZN13abs_stringptrC2EPKcj
	.weak	_ZN13abs_stringptrC1EPKcj
	.set	_ZN13abs_stringptrC1EPKcj,_ZN13abs_stringptrC2EPKcj
	.section	.text._ZN13abs_stringptrC2EPKc,"axG",@progbits,_ZN13abs_stringptrC5EPKc,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPKc
	.type	_ZN13abs_stringptrC2EPKc, @function
_ZN13abs_stringptrC2EPKc:
.LFB16:
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
.LBB6:
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
.LBE6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN13abs_stringptrC2EPKc, .-_ZN13abs_stringptrC2EPKc
	.weak	_ZN13abs_stringptrC1EPKc
	.set	_ZN13abs_stringptrC1EPKc,_ZN13abs_stringptrC2EPKc
	.section	.text._ZN13abs_stringptrC2EPc,"axG",@progbits,_ZN13abs_stringptrC5EPc,comdat
	.align 2
	.weak	_ZN13abs_stringptrC2EPc
	.type	_ZN13abs_stringptrC2EPc, @function
_ZN13abs_stringptrC2EPc:
.LFB19:
	.loc 3 18 0
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
	.loc 3 18 0
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
.LFE19:
	.size	_ZN13abs_stringptrC2EPc, .-_ZN13abs_stringptrC2EPc
	.weak	_ZN13abs_stringptrC1EPc
	.set	_ZN13abs_stringptrC1EPc,_ZN13abs_stringptrC2EPc
	.section	.text._ZNK13abs_stringptrcvPKcEv,"axG",@progbits,_ZNK13abs_stringptrcvPKcEv,comdat
	.align 2
	.weak	_ZNK13abs_stringptrcvPKcEv
	.type	_ZNK13abs_stringptrcvPKcEv, @function
_ZNK13abs_stringptrcvPKcEv:
.LFB24:
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
.LFE24:
	.size	_ZNK13abs_stringptrcvPKcEv, .-_ZNK13abs_stringptrcvPKcEv
	.text
	.globl	_Z27abs_AreStringFragmentsEqualPKcS0_ja
	.type	_Z27abs_AreStringFragmentsEqualPKcS0_ja, @function
_Z27abs_AreStringFragmentsEqualPKcS0_ja:
.LFB25:
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
.LFE25:
	.size	_Z27abs_AreStringFragmentsEqualPKcS0_ja, .-_Z27abs_AreStringFragmentsEqualPKcS0_ja
	.globl	_Z19abs_AreStringsEqualPKcjS0_ja
	.type	_Z19abs_AreStringsEqualPKcjS0_ja, @function
_Z19abs_AreStringsEqualPKcjS0_ja:
.LFB26:
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
.LFE26:
	.size	_Z19abs_AreStringsEqualPKcjS0_ja, .-_Z19abs_AreStringsEqualPKcjS0_ja
	.globl	_Z19abs_AreStringsEqualPKcjS0_j
	.type	_Z19abs_AreStringsEqualPKcjS0_j, @function
_Z19abs_AreStringsEqualPKcjS0_j:
.LFB27:
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
.LFE27:
	.size	_Z19abs_AreStringsEqualPKcjS0_j, .-_Z19abs_AreStringsEqualPKcjS0_j
	.globl	_Z19abs_AreStringsEqual13abs_stringptrS_a
	.type	_Z19abs_AreStringsEqual13abs_stringptrS_a, @function
_Z19abs_AreStringsEqual13abs_stringptrS_a:
.LFB28:
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
.LFE28:
	.size	_Z19abs_AreStringsEqual13abs_stringptrS_a, .-_Z19abs_AreStringsEqual13abs_stringptrS_a
	.globl	_Z19abs_AreStringsEqual13abs_stringptrS_
	.type	_Z19abs_AreStringsEqual13abs_stringptrS_, @function
_Z19abs_AreStringsEqual13abs_stringptrS_:
.LFB29:
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
.LFE29:
	.size	_Z19abs_AreStringsEqual13abs_stringptrS_, .-_Z19abs_AreStringsEqual13abs_stringptrS_
	.globl	_Z19abs_AreStringsEqualPKcj13abs_stringptr
	.type	_Z19abs_AreStringsEqualPKcj13abs_stringptr, @function
_Z19abs_AreStringsEqualPKcj13abs_stringptr:
.LFB30:
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
.LFE30:
	.size	_Z19abs_AreStringsEqualPKcj13abs_stringptr, .-_Z19abs_AreStringsEqualPKcj13abs_stringptr
	.globl	_Z16abs_StringLengthPKcj
	.type	_Z16abs_StringLengthPKcj, @function
_Z16abs_StringLengthPKcj:
.LFB31:
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
.LFE31:
	.size	_Z16abs_StringLengthPKcj, .-_Z16abs_StringLengthPKcj
	.globl	_Z14abs_FindInList13abs_stringptrjPKS_a
	.type	_Z14abs_FindInList13abs_stringptrjPKS_a, @function
_Z14abs_FindInList13abs_stringptrjPKS_a:
.LFB32:
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
.LFE32:
	.size	_Z14abs_FindInList13abs_stringptrjPKS_a, .-_Z14abs_FindInList13abs_stringptrjPKS_a
	.globl	_Z14abs_FindInListPKcjPK13abs_stringptra
	.type	_Z14abs_FindInListPKcjPK13abs_stringptra, @function
_Z14abs_FindInListPKcjPK13abs_stringptra:
.LFB33:
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
.LFE33:
	.size	_Z14abs_FindInListPKcjPK13abs_stringptra, .-_Z14abs_FindInListPKcjPK13abs_stringptra
	.globl	_Z14abs_StringCopyPcPKcm
	.type	_Z14abs_StringCopyPcPKcm, @function
_Z14abs_StringCopyPcPKcm:
.LFB34:
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
.LFE34:
	.size	_Z14abs_StringCopyPcPKcm, .-_Z14abs_StringCopyPcPKcm
	.globl	_Z19abs_CreateStringPtrP12memory_arenaPKc
	.type	_Z19abs_CreateStringPtrP12memory_arenaPKc, @function
_Z19abs_CreateStringPtrP12memory_arenaPKc:
.LFB35:
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
.LFE35:
	.size	_Z19abs_CreateStringPtrP12memory_arenaPKc, .-_Z19abs_CreateStringPtrP12memory_arenaPKc
	.globl	_Z14abs_Capitalize13abs_stringptrP12memory_arena
	.type	_Z14abs_Capitalize13abs_stringptrP12memory_arena, @function
_Z14abs_Capitalize13abs_stringptrP12memory_arena:
.LFB36:
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
.LFE36:
	.size	_Z14abs_Capitalize13abs_stringptrP12memory_arena, .-_Z14abs_Capitalize13abs_stringptrP12memory_arena
	.globl	_Z13abs_Lowercase13abs_stringptrP12memory_arena
	.type	_Z13abs_Lowercase13abs_stringptrP12memory_arena, @function
_Z13abs_Lowercase13abs_stringptrP12memory_arena:
.LFB37:
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
.LFE37:
	.size	_Z13abs_Lowercase13abs_stringptrP12memory_arena, .-_Z13abs_Lowercase13abs_stringptrP12memory_arena
	.section	.rodata
.LC0:
	.string	"%s/*.c*"
.LC1:
	.string	"%s/*.h*"
	.text
	.globl	_Z22abf_InitializeFileListP12memory_arenaPKc
	.type	_Z22abf_InitializeFileListP12memory_arenaPKc, @function
_Z22abf_InitializeFileListP12memory_arenaPKc:
.LFB43:
	.file 4 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_file_linux.h"
	.loc 4 28 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$336, %rsp
	movq	%rdi, -328(%rbp)
	movq	%rsi, -336(%rbp)
	.loc 4 28 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 29 0
	movq	-328(%rbp), %rax
	movl	$1, %edx
	movl	$352, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -296(%rbp)
	.loc 4 31 0
	movl	$265, -308(%rbp)
	.loc 4 33 0
	movq	-336(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC0(%rip), %rdx
	movl	$265, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	.loc 4 34 0
	movq	-296(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	glob@PLT
	movl	%eax, -304(%rbp)
	.loc 4 36 0
	movq	-336(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC1(%rip), %rdx
	movl	$265, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	.loc 4 37 0
	movq	-296(%rbp), %rdx
	.loc 4 37 0
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movl	$0, %edx
	movl	$32, %esi
	movq	%rax, %rdi
	call	glob@PLT
	movl	%eax, -300(%rbp)
	.loc 4 40 0
	cmpl	$0, -304(%rbp)
	je	.L86
	.loc 4 40 0 is_stmt 0 discriminator 1
	cmpl	$0, -300(%rbp)
	jne	.L87
.L86:
	.loc 4 42 0 is_stmt 1
	movq	-296(%rbp), %rax
	movq	(%rax), %rdx
	movq	-296(%rbp), %rax
	movq	%rdx, 72(%rax)
	jmp	.L88
.L87:
	.loc 4 46 0
	movq	-296(%rbp), %rax
	movq	$0, 72(%rax)
.L88:
	.loc 4 49 0
	movq	-296(%rbp), %rax
	movl	$0, 80(%rax)
	.loc 4 50 0
	movq	-296(%rbp), %rax
	.loc 4 51 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L90
	call	__stack_chk_fail@PLT
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.size	_Z22abf_InitializeFileListP12memory_arenaPKc, .-_Z22abf_InitializeFileListP12memory_arenaPKc
	.globl	_Z15abf_GetNextFileP9file_listP9file_data
	.type	_Z15abf_GetNextFileP9file_listP9file_data, @function
_Z15abf_GetNextFileP9file_listP9file_data:
.LFB44:
	.loc 4 55 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$208, %rsp
	movq	%rdi, -200(%rbp)
	movq	%rsi, -208(%rbp)
	.loc 4 55 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 4 56 0
	movb	$0, -189(%rbp)
	.loc 4 58 0
	movq	-200(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L92
	.loc 4 60 0
	movq	-200(%rbp), %rax
	movq	88(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L92
	.loc 4 62 0
	movq	-200(%rbp), %rax
	movq	88(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 63 0
	movq	-200(%rbp), %rax
	movq	88(%rax), %rax
	movq	$0, 64(%rax)
.L92:
.LBB13:
	.loc 4 67 0
	movq	-200(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %edx
	movq	-200(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L93
.LBB14:
	.loc 4 70 0
	movq	-200(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-200(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, %eax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	.loc 4 71 0
	movq	-200(%rbp), %rax
	movl	80(%rax), %eax
	leal	1(%rax), %edx
	movq	-200(%rbp), %rax
	movl	%edx, 80(%rax)
	.loc 4 73 0
	movq	-168(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	open@PLT
	movl	%eax, -184(%rbp)
.LBB15:
	.loc 4 74 0
	cmpl	$-1, -184(%rbp)
	je	.L101
.LBB16:
.LBB17:
	.loc 4 77 0
	leaq	-160(%rbp), %rdx
	movl	-184(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fstat@PLT
	cmpl	$-1, %eax
	setne	%al
	testb	%al, %al
	je	.L95
.LBB18:
	.loc 4 79 0
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 4 81 0
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rdx, 64(%rax)
	.loc 4 82 0
	movq	-208(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.LBB19:
	.loc 4 83 0
	movq	-208(%rbp), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L96
.LBB20:
	.loc 4 85 0
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, -188(%rbp)
	.loc 4 86 0
	movq	-208(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -176(%rbp)
.L99:
	.loc 4 87 0
	cmpl	$0, -188(%rbp)
	je	.L97
.LBB21:
	.loc 4 89 0
	movl	-188(%rbp), %edx
	movq	-176(%rbp), %rcx
	movl	-184(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	read@PLT
	movl	%eax, -180(%rbp)
	.loc 4 90 0
	cmpl	$-1, -180(%rbp)
	jne	.L98
	.loc 4 92 0
	movq	-208(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	.loc 4 93 0
	movq	-208(%rbp), %rax
	movq	$0, 64(%rax)
	.loc 4 94 0
	movq	-208(%rbp), %rax
	movq	$0, (%rax)
	.loc 4 95 0
	movb	$0, -189(%rbp)
	.loc 4 96 0
	jmp	.L97
.L98:
	.loc 4 100 0
	movl	-180(%rbp), %eax
	subl	%eax, -188(%rbp)
	.loc 4 101 0
	movl	-180(%rbp), %eax
	cltq
	addq	%rax, -176(%rbp)
	.loc 4 102 0
	movb	$1, -189(%rbp)
.LBE21:
	.loc 4 87 0
	jmp	.L99
.L97:
	.loc 4 105 0
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rdx
	movq	%rdx, 88(%rax)
.LBE20:
	jmp	.L95
.L96:
	.loc 4 109 0
	movq	-208(%rbp), %rax
	movq	$0, (%rax)
	.loc 4 110 0
	movq	-200(%rbp), %rax
	movq	$0, 88(%rax)
.L95:
.LBE19:
.LBE18:
.LBE17:
	.loc 4 114 0
	movl	-184(%rbp), %eax
	movl	%eax, %edi
	call	close@PLT
.LBE16:
	jmp	.L101
.L93:
.LBE15:
.LBE14:
	.loc 4 119 0
	movq	-200(%rbp), %rax
	movq	$0, 88(%rax)
.L101:
.LBE13:
	.loc 4 123 0
	movzbl	-189(%rbp), %eax
	.loc 4 125 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE44:
	.size	_Z15abf_GetNextFileP9file_listP9file_data, .-_Z15abf_GetNextFileP9file_listP9file_data
	.globl	_Z19abf_ReleaseFileListP9file_list
	.type	_Z19abf_ReleaseFileListP9file_list, @function
_Z19abf_ReleaseFileListP9file_list:
.LFB45:
	.loc 4 129 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 4 130 0
	cmpq	$0, -8(%rbp)
	je	.L107
	.loc 4 132 0
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	testq	%rax, %rax
	je	.L106
	.loc 4 134 0
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	64(%rax), %rax
	testq	%rax, %rax
	je	.L106
	.loc 4 136 0
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L106:
	.loc 4 140 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	globfree@PLT
.L107:
	.loc 4 143 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE45:
	.size	_Z19abf_ReleaseFileListP9file_list, .-_Z19abf_ReleaseFileListP9file_list
	.globl	_Z13abl_InitLexerP5lexerP9file_data
	.type	_Z13abl_InitLexerP5lexerP9file_data, @function
_Z13abl_InitLexerP5lexerP9file_data:
.LFB53:
	.file 5 "/home/amos/prog/c/amos_libraries/preprocessor/ab_lexer.h"
	.loc 5 77 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 5 78 0
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 79 0
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	.loc 5 80 0
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	.loc 5 81 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE53:
	.size	_Z13abl_InitLexerP5lexerP9file_data, .-_Z13abl_InitLexerP5lexerP9file_data
	.globl	_Z14abl_TokenToS325token
	.type	_Z14abl_TokenToS325token, @function
_Z14abl_TokenToS325token:
.LFB54:
	.loc 5 85 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 5 86 0
	movl	$0, -4(%rbp)
	.loc 5 87 0
	movl	16(%rbp), %eax
	cmpl	$18, %eax
	jne	.L110
	.loc 5 89 0
	movq	24(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
.L110:
	.loc 5 100 0
	movl	-4(%rbp), %eax
	.loc 5 101 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.size	_Z14abl_TokenToS325token, .-_Z14abl_TokenToS325token
	.globl	_Z15abl_TokenEquals5token13abs_stringptr
	.type	_Z15abl_TokenEquals5token13abs_stringptr, @function
_Z15abl_TokenEquals5token13abs_stringptr:
.LFB55:
	.loc 5 105 0
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
	.loc 5 106 0
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	24(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	movb	%al, -1(%rbp)
	.loc 5 108 0
	movzbl	-1(%rbp), %eax
	.loc 5 109 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.size	_Z15abl_TokenEquals5token13abs_stringptr, .-_Z15abl_TokenEquals5token13abs_stringptr
	.globl	_Z16abl_TokensEquals5tokenS_
	.type	_Z16abl_TokensEquals5tokenS_, @function
_Z16abl_TokensEquals5tokenS_:
.LFB56:
	.loc 5 113 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.loc 5 114 0
	movq	48(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	24(%rbp), %rdi
	movq	32(%rbp), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	movb	%al, -1(%rbp)
	.loc 5 116 0
	movzbl	-1(%rbp), %eax
	.loc 5 117 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE56:
	.size	_Z16abl_TokensEquals5tokenS_, .-_Z16abl_TokensEquals5tokenS_
	.section	.text._Z15abl_IsEndOfLinec,"axG",@progbits,_Z15abl_IsEndOfLinec,comdat
	.weak	_Z15abl_IsEndOfLinec
	.type	_Z15abl_IsEndOfLinec, @function
_Z15abl_IsEndOfLinec:
.LFB57:
	.loc 5 121 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 5 122 0
	cmpb	$10, -20(%rbp)
	je	.L117
	.loc 5 122 0 is_stmt 0 discriminator 2
	cmpb	$13, -20(%rbp)
	jne	.L118
.L117:
	.loc 5 122 0 discriminator 3
	movl	$1, %eax
	jmp	.L119
.L118:
	.loc 5 122 0 discriminator 4
	movl	$0, %eax
.L119:
	.loc 5 122 0 discriminator 6
	movb	%al, -1(%rbp)
	.loc 5 124 0 is_stmt 1 discriminator 6
	movzbl	-1(%rbp), %eax
	.loc 5 125 0 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.size	_Z15abl_IsEndOfLinec, .-_Z15abl_IsEndOfLinec
	.section	.text._Z16abl_IsWhitespacec,"axG",@progbits,_Z16abl_IsWhitespacec,comdat
	.weak	_Z16abl_IsWhitespacec
	.type	_Z16abl_IsWhitespacec, @function
_Z16abl_IsWhitespacec:
.LFB58:
	.loc 5 129 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 5 132 0
	cmpb	$32, -20(%rbp)
	je	.L122
	.loc 5 130 0
	cmpb	$12, -20(%rbp)
	je	.L122
	.loc 5 131 0
	cmpb	$9, -20(%rbp)
	je	.L122
	.loc 5 132 0 discriminator 2
	cmpb	$11, -20(%rbp)
	jne	.L123
.L122:
	.loc 5 132 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L124
.L123:
	.loc 5 132 0 discriminator 3
	movl	$0, %eax
.L124:
	.loc 5 130 0 is_stmt 1
	movb	%al, -1(%rbp)
	.loc 5 136 0
	movzbl	-1(%rbp), %eax
	.loc 5 137 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.size	_Z16abl_IsWhitespacec, .-_Z16abl_IsWhitespacec
	.section	.text._Z11abl_IsAlphac,"axG",@progbits,_Z11abl_IsAlphac,comdat
	.weak	_Z11abl_IsAlphac
	.type	_Z11abl_IsAlphac, @function
_Z11abl_IsAlphac:
.LFB59:
	.loc 5 141 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 5 143 0
	cmpb	$96, -20(%rbp)
	jle	.L127
	.loc 5 142 0
	cmpb	$122, -20(%rbp)
	jle	.L128
.L127:
	.loc 5 142 0 is_stmt 0 discriminator 1
	cmpb	$64, -20(%rbp)
	jle	.L129
	.loc 5 143 0 is_stmt 1
	cmpb	$90, -20(%rbp)
	jle	.L128
.L129:
	.loc 5 143 0 is_stmt 0 discriminator 2
	cmpb	$95, -20(%rbp)
	jne	.L130
.L128:
	.loc 5 143 0 discriminator 3
	movl	$1, %eax
	jmp	.L131
.L130:
	.loc 5 143 0 discriminator 4
	movl	$0, %eax
.L131:
	.loc 5 142 0 is_stmt 1
	movb	%al, -1(%rbp)
	.loc 5 146 0
	movzbl	-1(%rbp), %eax
	.loc 5 147 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.size	_Z11abl_IsAlphac, .-_Z11abl_IsAlphac
	.section	.text._Z13abl_IsNumericc,"axG",@progbits,_Z13abl_IsNumericc,comdat
	.weak	_Z13abl_IsNumericc
	.type	_Z13abl_IsNumericc, @function
_Z13abl_IsNumericc:
.LFB60:
	.loc 5 151 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -20(%rbp)
	.loc 5 152 0
	cmpb	$47, -20(%rbp)
	jle	.L134
	.loc 5 152 0 is_stmt 0 discriminator 1
	cmpb	$57, -20(%rbp)
	jg	.L134
	.loc 5 152 0 discriminator 3
	movl	$1, %eax
	jmp	.L135
.L134:
	.loc 5 152 0 discriminator 4
	movl	$0, %eax
.L135:
	.loc 5 152 0 discriminator 6
	movb	%al, -1(%rbp)
	.loc 5 154 0 is_stmt 1 discriminator 6
	movzbl	-1(%rbp), %eax
	.loc 5 155 0 discriminator 6
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.size	_Z13abl_IsNumericc, .-_Z13abl_IsNumericc
	.text
	.globl	_Z20abl_RemoveIgnorablesP5lexer
	.type	_Z20abl_RemoveIgnorablesP5lexer, @function
_Z20abl_RemoveIgnorablesP5lexer:
.LFB61:
	.loc 5 159 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.L150:
	.loc 5 162 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z16abl_IsWhitespacec
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L138
	.loc 5 164 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L150
.L138:
	.loc 5 166 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z15abl_IsEndOfLinec
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L140
	.loc 5 168 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 169 0
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	jmp	.L150
.L140:
	.loc 5 171 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L141
	.loc 5 172 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 5 171 0 discriminator 1
	cmpb	$47, %al
	jne	.L141
	.loc 5 174 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L145:
	.loc 5 175 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L142
	.loc 5 176 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z15abl_IsEndOfLinec
	.loc 5 175 0 discriminator 1
	testb	%al, %al
	jne	.L142
	.loc 5 175 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L143
.L142:
	.loc 5 175 0 discriminator 4
	movl	$0, %eax
.L143:
	.loc 5 175 0 discriminator 6
	testb	%al, %al
	je	.L151
	.loc 5 178 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 175 0
	jmp	.L145
.L141:
	.loc 5 181 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jne	.L152
	.loc 5 182 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 5 181 0 discriminator 1
	cmpb	$42, %al
	jne	.L152
	.loc 5 184 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L149:
	.loc 5 185 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	.loc 5 186 0
	testb	%al, %al
	je	.L147
	.loc 5 186 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	.loc 5 185 0 is_stmt 1 discriminator 1
	cmpb	$42, %al
	jne	.L147
	.loc 5 187 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 5 186 0
	cmpb	$47, %al
	jne	.L147
	.loc 5 190 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 191 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z15abl_IsEndOfLinec
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L149
	.loc 5 193 0
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 5 185 0
	jmp	.L149
.L147:
	.loc 5 198 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L150
	.loc 5 200 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L150
.L151:
	.loc 5 171 0
	nop
	.loc 5 162 0
	jmp	.L150
.L152:
	.loc 5 208 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE61:
	.size	_Z20abl_RemoveIgnorablesP5lexer, .-_Z20abl_RemoveIgnorablesP5lexer
	.globl	_Z12abl_GetTokenP5lexer
	.type	_Z12abl_GetTokenP5lexer, @function
_Z12abl_GetTokenP5lexer:
.LFB62:
	.loc 5 212 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 5 212 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 5 213 0
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_Z20abl_RemoveIgnorablesP5lexer
	.loc 5 215 0
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	.loc 5 216 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPc
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	-40(%rbp), %edx
	movl	%edx, 16(%rax)
	.loc 5 217 0
	movq	-72(%rbp), %rax
	movl	$1, 16(%rax)
	.loc 5 218 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movb	%al, -49(%rbp)
	.loc 5 219 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 220 0
	movsbl	-49(%rbp), %eax
	cmpl	$125, %eax
	ja	.L154
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L156(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L156(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L156:
	.long	.L155-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L157-.L156
	.long	.L158-.L156
	.long	.L159-.L156
	.long	.L154-.L156
	.long	.L160-.L156
	.long	.L154-.L156
	.long	.L161-.L156
	.long	.L162-.L156
	.long	.L163-.L156
	.long	.L154-.L156
	.long	.L164-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L165-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L166-.L156
	.long	.L167-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L168-.L156
	.long	.L169-.L156
	.long	.L170-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L154-.L156
	.long	.L171-.L156
	.long	.L154-.L156
	.long	.L172-.L156
	.text
.L155:
	.loc 5 223 0
	movq	-72(%rbp), %rax
	movl	$19, (%rax)
	jmp	.L173
.L161:
	.loc 5 226 0
	movq	-72(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L173
.L162:
	.loc 5 229 0
	movq	-72(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L173
.L168:
	.loc 5 232 0
	movq	-72(%rbp), %rax
	movl	$7, (%rax)
	jmp	.L173
.L170:
	.loc 5 235 0
	movq	-72(%rbp), %rax
	movl	$8, (%rax)
	jmp	.L173
.L171:
	.loc 5 238 0
	movq	-72(%rbp), %rax
	movl	$9, (%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L173
.L172:
	.loc 5 241 0
	movq	-72(%rbp), %rax
	movl	$10, (%rax)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 8(%rax)
	jmp	.L173
.L166:
	.loc 5 244 0
	movq	-72(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L173
.L167:
	.loc 5 247 0
	movq	-72(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L173
.L164:
	.loc 5 250 0
	movq	-72(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L173
.L159:
	.loc 5 253 0
	movq	-72(%rbp), %rax
	movl	$11, (%rax)
	jmp	.L173
.L163:
	.loc 5 256 0
	movq	-72(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L173
.L169:
	.loc 5 259 0
	movq	-72(%rbp), %rax
	movl	$12, (%rax)
	jmp	.L173
.L165:
	.loc 5 262 0
	movq	-72(%rbp), %rax
	movl	$13, (%rax)
	jmp	.L173
.L160:
	.loc 5 265 0
	movq	-72(%rbp), %rax
	movl	$14, (%rax)
	jmp	.L173
.L158:
	.loc 5 268 0
	movq	-72(%rbp), %rax
	movl	$15, (%rax)
	jmp	.L173
.L157:
	.loc 5 272 0
	movq	-72(%rbp), %rax
	movl	$16, (%rax)
	.loc 5 273 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
.L176:
	.loc 5 274 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L174
	.loc 5 275 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	.loc 5 274 0 discriminator 1
	cmpb	$34, %al
	je	.L174
	.loc 5 277 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L175
	.loc 5 278 0 discriminator 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	.loc 5 277 0 discriminator 1
	testb	%al, %al
	je	.L175
	.loc 5 280 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
.L175:
	.loc 5 282 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 274 0
	jmp	.L176
.L174:
	.loc 5 285 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNK13abs_stringptrcvPKcEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 5 286 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$34, %al
	jne	.L193
	.loc 5 288 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 290 0
	jmp	.L193
.L154:
	.loc 5 294 0
	movsbl	-49(%rbp), %eax
	movl	%eax, %edi
	call	_Z11abl_IsAlphac
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L178
	.loc 5 296 0
	movq	-72(%rbp), %rax
	movl	$17, (%rax)
.L183:
	.loc 5 297 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z11abl_IsAlphac
	testb	%al, %al
	jne	.L179
	.loc 5 298 0 discriminator 2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z13abl_IsNumericc
	.loc 5 297 0 discriminator 2
	testb	%al, %al
	je	.L180
.L179:
	.loc 5 297 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L181
.L180:
	.loc 5 297 0 discriminator 4
	movl	$0, %eax
.L181:
	.loc 5 297 0 discriminator 6
	testb	%al, %al
	je	.L182
	.loc 5 300 0 is_stmt 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 297 0
	jmp	.L183
.L182:
	.loc 5 303 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNK13abs_stringptrcvPKcEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 5 324 0
	jmp	.L173
.L178:
	.loc 5 305 0
	movsbl	-49(%rbp), %eax
	movl	%eax, %edi
	call	_Z13abl_IsNumericc
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L185
	.loc 5 310 0
	movq	-72(%rbp), %rax
	movl	$18, (%rax)
.L190:
	.loc 5 311 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z11abl_IsAlphac
	.loc 5 312 0
	testb	%al, %al
	jne	.L186
	.loc 5 312 0 is_stmt 0 discriminator 2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	_Z13abl_IsNumericc
	.loc 5 311 0 is_stmt 1 discriminator 2
	testb	%al, %al
	jne	.L186
	.loc 5 313 0 discriminator 3
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	.loc 5 312 0 discriminator 3
	cmpb	$46, %al
	jne	.L187
.L186:
	.loc 5 312 0 is_stmt 0 discriminator 1
	movl	$1, %eax
	jmp	.L188
.L187:
	.loc 5 312 0 discriminator 4
	movl	$0, %eax
.L188:
	.loc 5 312 0 discriminator 6
	testb	%al, %al
	je	.L189
	.loc 5 315 0 is_stmt 1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 5 311 0
	jmp	.L190
.L189:
	.loc 5 318 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNK13abs_stringptrcvPKcEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	.loc 5 324 0
	jmp	.L173
.L185:
	.loc 5 322 0
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	.loc 5 324 0
	jmp	.L173
.L193:
	.loc 5 290 0
	nop
.L173:
	.loc 5 327 0 discriminator 1
	nop
	.loc 5 328 0 discriminator 1
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L192
	.loc 5 328 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L192:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.size	_Z12abl_GetTokenP5lexer, .-_Z12abl_GetTokenP5lexer
	.globl	_Z13abl_PeekTokenP5lexer
	.type	_Z13abl_PeekTokenP5lexer, @function
_Z13abl_PeekTokenP5lexer:
.LFB63:
	.loc 5 333 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 5 333 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 5 334 0
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 5 335 0
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 5 336 0
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 5 338 0
	nop
	.loc 5 339 0
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L196
	call	__stack_chk_fail@PLT
.L196:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.size	_Z13abl_PeekTokenP5lexer, .-_Z13abl_PeekTokenP5lexer
	.globl	_Z12RequireTokenP5lexer10token_type
	.type	_Z12RequireTokenP5lexer10token_type, @function
_Z12RequireTokenP5lexer10token_type:
.LFB64:
	.file 6 "/home/amos/prog/c/amos_libraries/preprocessor/ab_parser.h"
	.loc 6 170 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	.loc 6 170 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 171 0
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 172 0
	movl	-32(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	sete	%al
	movb	%al, -33(%rbp)
	.loc 6 174 0
	movzbl	-33(%rbp), %eax
	.loc 6 175 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L199
	call	__stack_chk_fail@PLT
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.size	_Z12RequireTokenP5lexer10token_type, .-_Z12RequireTokenP5lexer10token_type
	.globl	_Z13OptionalTokenP5lexer10token_type
	.type	_Z13OptionalTokenP5lexer10token_type, @function
_Z13OptionalTokenP5lexer10token_type:
.LFB65:
	.loc 6 179 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	.loc 6 179 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 180 0
	leaq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_PeekTokenP5lexer
	.loc 6 181 0
	movl	-64(%rbp), %eax
	cmpl	%eax, -92(%rbp)
	sete	%al
	movb	%al, -65(%rbp)
	.loc 6 183 0
	cmpb	$0, -65(%rbp)
	je	.L201
	.loc 6 185 0
	leaq	-32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
.L201:
	.loc 6 187 0
	movzbl	-65(%rbp), %eax
	.loc 6 188 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.size	_Z13OptionalTokenP5lexer10token_type, .-_Z13OptionalTokenP5lexer10token_type
	.globl	_Z15NextTokenEqualsP5lexer13abs_stringptr
	.type	_Z15NextTokenEqualsP5lexer13abs_stringptr, @function
_Z15NextTokenEqualsP5lexer13abs_stringptr:
.LFB66:
	.loc 6 192 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 6 192 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 193 0
	movb	$0, -65(%rbp)
	.loc 6 195 0
	leaq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_PeekTokenP5lexer
	.loc 6 196 0
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z15abl_TokenEquals5token13abs_stringptr
	addq	$32, %rsp
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L205
	.loc 6 198 0
	leaq	-32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 199 0
	movb	$1, -65(%rbp)
.L205:
	.loc 6 202 0
	movzbl	-65(%rbp), %eax
	.loc 6 203 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.size	_Z15NextTokenEqualsP5lexer13abs_stringptr, .-_Z15NextTokenEqualsP5lexer13abs_stringptr
	.section	.rodata
.LC2:
	.string	"TAG"
	.text
	.globl	_Z13ParseEnumitemP5lexerP6parser
	.type	_Z13ParseEnumitemP5lexerP6parser, @function
_Z13ParseEnumitemP5lexerP6parser:
.LFB67:
	.loc 6 207 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 6 207 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 208 0
	movq	$0, -120(%rbp)
	.loc 6 209 0
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 6 210 0
	leaq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 6 211 0
	leaq	-96(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 212 0
	leaq	-112(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z15abl_TokenEquals5token13abs_stringptr
	addq	$32, %rsp
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L209
	.loc 6 214 0
	leaq	-192(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8ParseTagP5lexerP6parser
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-176(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 6 215 0
	leaq	-192(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-192(%rbp), %rax
	movq	-184(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
.L209:
	.loc 6 218 0
	movl	-96(%rbp), %eax
	cmpl	$17, %eax
	jne	.L210
	.loc 6 220 0
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$80, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -120(%rbp)
	.loc 6 221 0
	movq	-120(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-120(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 222 0
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 223 0
	movq	-120(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-80(%rbp), %edx
	movl	%edx, 8(%rax)
.L210:
	.loc 6 226 0
	movq	-120(%rbp), %rax
	.loc 6 227 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L212
	call	__stack_chk_fail@PLT
.L212:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.size	_Z13ParseEnumitemP5lexerP6parser, .-_Z13ParseEnumitemP5lexerP6parser
	.section	.rodata
.LC3:
	.string	"const"
	.text
	.globl	_Z9ParseTypeP5lexerP6parser
	.type	_Z9ParseTypeP5lexerP6parser, @function
_Z9ParseTypeP5lexerP6parser:
.LFB68:
	.loc 6 231 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 6 231 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 232 0
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$64, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -56(%rbp)
	.loc 6 235 0
	leaq	-32(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L214
	.loc 6 237 0
	movq	-56(%rbp), %rax
	movb	$1, 34(%rax)
.L214:
	.loc 6 240 0
	leaq	-112(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 6 241 0
	movl	-32(%rbp), %eax
	cmpl	$17, %eax
	jne	.L215
	.loc 6 243 0
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 8(%rax)
.L215:
	.loc 6 250 0
	leaq	-48(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L216
	.loc 6 252 0
	movq	-56(%rbp), %rax
	movb	$1, 34(%rax)
.L216:
	.loc 6 255 0
	movq	-72(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L217
	.loc 6 257 0
	movq	-56(%rbp), %rax
	movb	$1, 32(%rax)
	jmp	.L218
.L217:
	.loc 6 259 0
	movq	-72(%rbp), %rax
	movl	$14, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L218
	.loc 6 261 0
	movq	-56(%rbp), %rax
	movb	$1, 33(%rax)
.L218:
	.loc 6 264 0
	movq	-56(%rbp), %rax
	.loc 6 265 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L220
	call	__stack_chk_fail@PLT
.L220:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.size	_Z9ParseTypeP5lexerP6parser, .-_Z9ParseTypeP5lexerP6parser
	.globl	_Z13ParseTypeExprP5lexerP6parser
	.type	_Z13ParseTypeExprP5lexerP6parser, @function
_Z13ParseTypeExprP5lexerP6parser:
.LFB69:
	.loc 6 269 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	.loc 6 269 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 270 0
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z9ParseTypeP5lexerP6parser
	movq	%rax, -40(%rbp)
	.loc 6 271 0
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 273 0
	cmpq	$0, -40(%rbp)
	je	.L222
	.loc 6 275 0
	movl	-32(%rbp), %eax
	cmpl	$17, %eax
	jne	.L223
	.loc 6 277 0
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 24(%rax)
.L223:
	.loc 6 284 0
	movq	-56(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L222
	.loc 6 286 0
	leaq	-96(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 6 287 0
	movq	-40(%rbp), %rax
	movb	$1, 35(%rax)
	.loc 6 288 0
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	call	_Z14abl_TokenToS325token
	addq	$32, %rsp
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%edx, 36(%rax)
	.loc 6 289 0
	movq	-56(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
.L222:
	.loc 6 296 0
	movq	-40(%rbp), %rax
	.loc 6 297 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L225
	call	__stack_chk_fail@PLT
.L225:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.size	_Z13ParseTypeExprP5lexerP6parser, .-_Z13ParseTypeExprP5lexerP6parser
	.globl	_Z15ParseStructItemP5lexerP6parser
	.type	_Z15ParseStructItemP5lexerP6parser, @function
_Z15ParseStructItemP5lexerP6parser:
.LFB70:
	.loc 6 301 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 6 301 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 302 0
	movq	$0, -96(%rbp)
	.loc 6 303 0
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 6 304 0
	leaq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 6 305 0
	leaq	-80(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L227
	.loc 6 307 0
	leaq	-160(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8ParseTagP5lexerP6parser
	movq	-160(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
.L227:
	.loc 6 310 0
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13ParseTypeExprP5lexerP6parser
	movq	%rax, -88(%rbp)
	.loc 6 311 0
	cmpq	$0, -88(%rbp)
	je	.L228
	.loc 6 313 0
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$72, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -96(%rbp)
	.loc 6 314 0
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-96(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 6 315 0
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-96(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 48(%rax)
	.loc 6 316 0
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 6 317 0
	movq	-104(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
.L228:
	.loc 6 323 0
	movq	-96(%rbp), %rax
	.loc 6 324 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L230
	call	__stack_chk_fail@PLT
.L230:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.size	_Z15ParseStructItemP5lexerP6parser, .-_Z15ParseStructItemP5lexerP6parser
	.globl	_Z14ParseEnumClassP5lexerP6parser
	.type	_Z14ParseEnumClassP5lexerP6parser, @function
_Z14ParseEnumClassP5lexerP6parser:
.LFB71:
	.loc 6 328 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 6 328 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 329 0
	movq	$0, -80(%rbp)
	.loc 6 330 0
	leaq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
.LBB22:
	.loc 6 332 0
	movl	-64(%rbp), %eax
	cmpl	$17, %eax
	jne	.L232
.LBB23:
	.loc 6 334 0
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$168, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -80(%rbp)
	.loc 6 335 0
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 336 0
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 136(%rax)
	.loc 6 338 0
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
.LBB24:
	.loc 6 340 0
	movq	-88(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L232
.L236:
.LBB25:
	.loc 6 342 0
	leaq	-32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_PeekTokenP5lexer
	movl	-32(%rbp), %eax
	cmpl	$10, %eax
	setne	%al
	testb	%al, %al
	je	.L234
.LBB26:
	.loc 6 344 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13ParseEnumitemP5lexerP6parser
	movq	%rax, -72(%rbp)
	.loc 6 345 0
	cmpq	$0, -72(%rbp)
	je	.L235
	.loc 6 347 0
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-80(%rbp), %rax
	movq	136(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-80(%rbp), %rax
	movq	136(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 64(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 136(%rax)
	.loc 6 348 0
	movq	-80(%rbp), %rax
	movl	144(%rax), %eax
	leal	1(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 144(%rax)
.L235:
	.loc 6 350 0
	movq	-88(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
.LBE26:
	.loc 6 342 0
	jmp	.L236
.L234:
	.loc 6 352 0
	movq	-88(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
.L232:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 6 359 0
	movq	-80(%rbp), %rax
	.loc 6 360 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L238
	call	__stack_chk_fail@PLT
.L238:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.size	_Z14ParseEnumClassP5lexerP6parser, .-_Z14ParseEnumClassP5lexerP6parser
	.globl	_Z11ParseStructP5lexerP6parser
	.type	_Z11ParseStructP5lexerP6parser, @function
_Z11ParseStructP5lexerP6parser:
.LFB72:
	.loc 6 364 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	.loc 6 364 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 365 0
	movq	$0, -80(%rbp)
	.loc 6 366 0
	leaq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
.LBB27:
	.loc 6 368 0
	movl	-64(%rbp), %eax
	cmpl	$17, %eax
	jne	.L240
.LBB28:
	.loc 6 370 0
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$160, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -80(%rbp)
	.loc 6 371 0
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 372 0
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 128(%rax)
	.loc 6 373 0
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
.LBB29:
	.loc 6 375 0
	movq	-88(%rbp), %rax
	movl	$9, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L240
.L244:
.LBB30:
	.loc 6 377 0
	leaq	-32(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_PeekTokenP5lexer
	movl	-32(%rbp), %eax
	cmpl	$10, %eax
	setne	%al
	testb	%al, %al
	je	.L242
.LBB31:
	.loc 6 379 0
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z15ParseStructItemP5lexerP6parser
	movq	%rax, -72(%rbp)
	.loc 6 380 0
	cmpq	$0, -72(%rbp)
	je	.L244
	.loc 6 382 0
	movq	-80(%rbp), %rax
	leaq	64(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-80(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-80(%rbp), %rax
	movq	128(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 56(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 128(%rax)
.LBE31:
	.loc 6 377 0
	jmp	.L244
.L242:
	.loc 6 385 0
	movq	-88(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
.L240:
.LBE30:
.LBE29:
.LBE28:
.LBE27:
	.loc 6 392 0
	movq	-80(%rbp), %rax
	.loc 6 393 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L246
	call	__stack_chk_fail@PLT
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.size	_Z11ParseStructP5lexerP6parser, .-_Z11ParseStructP5lexerP6parser
	.globl	_Z13ParseFunctionP5lexerP6parser
	.type	_Z13ParseFunctionP5lexerP6parser, @function
_Z13ParseFunctionP5lexerP6parser:
.LFB73:
	.loc 6 397 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 6 398 0
	movl	$0, %eax
	.loc 6 399 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.size	_Z13ParseFunctionP5lexerP6parser, .-_Z13ParseFunctionP5lexerP6parser
	.globl	_Z8ParseTagP5lexerP6parser
	.type	_Z8ParseTagP5lexerP6parser, @function
_Z8ParseTagP5lexerP6parser:
.LFB74:
	.loc 6 403 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	.loc 6 403 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 404 0
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movq	$0, 40(%rax)
	.loc 6 405 0
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 40(%rax)
.LBB32:
	.loc 6 407 0
	movq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L259
.LBB33:
	.loc 6 409 0
	leaq	-64(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
.L256:
	.loc 6 410 0
	movl	-64(%rbp), %eax
	cmpl	$2, %eax
	je	.L251
.LBB34:
.LBB35:
	.loc 6 412 0
	movl	-64(%rbp), %eax
	cmpl	$17, %eax
	jne	.L252
.LBB36:
	.loc 6 414 0
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$48, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -72(%rbp)
	.loc 6 415 0
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
.LBB37:
	.loc 6 417 0
	movq	-96(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L253
.LBB38:
	.loc 6 419 0
	leaq	-32(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 420 0
	movl	-32(%rbp), %eax
	cmpl	$16, %eax
	je	.L254
	.loc 6 421 0 discriminator 1
	movl	-32(%rbp), %eax
	.loc 6 420 0 discriminator 1
	cmpl	$17, %eax
	jne	.L253
.L254:
	.loc 6 423 0
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-16(%rbp), %edx
	movl	%edx, 24(%rax)
.L253:
.LBE38:
.LBE37:
	.loc 6 427 0
	movq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	.loc 6 428 0
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 40(%rax)
.L252:
.LBE36:
.LBE35:
	.loc 6 431 0
	leaq	-144(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBE34:
	.loc 6 410 0
	jmp	.L256
.L251:
	.loc 6 434 0
	movq	-96(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	.loc 6 435 0
	movq	-96(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
.L259:
.LBE33:
.LBE32:
	.loc 6 438 0
	nop
	.loc 6 439 0
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L258
	call	__stack_chk_fail@PLT
.L258:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.size	_Z8ParseTagP5lexerP6parser, .-_Z8ParseTagP5lexerP6parser
	.section	.rodata
.LC4:
	.string	"struct"
.LC5:
	.string	"union"
.LC6:
	.string	"enum"
.LC7:
	.string	"class"
	.text
	.globl	_Z15ParseTaggedExprP5lexerP6parser5token
	.type	_Z15ParseTaggedExprP5lexerP6parser5token, @function
_Z15ParseTaggedExprP5lexerP6parser5token:
.LFB75:
	.loc 6 443 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	.loc 6 443 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 444 0
	leaq	-64(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z8ParseTagP5lexerP6parser
.LBB39:
	.loc 6 446 0
	leaq	-96(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	jne	.L261
	.loc 6 446 0 is_stmt 0 discriminator 6
	leaq	-80(%rbp), %rax
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	je	.L262
.L261:
	.loc 6 446 0 discriminator 11
	movl	$1, %eax
	jmp	.L263
.L262:
	.loc 6 446 0 discriminator 12
	movl	$0, %eax
.L263:
	.loc 6 446 0 discriminator 14
	testb	%al, %al
	je	.L264
.LBB40:
	.loc 6 448 0 is_stmt 1
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z11ParseStructP5lexerP6parser
	movq	%rax, -104(%rbp)
	.loc 6 449 0
	cmpq	$0, -104(%rbp)
	je	.L272
	.loc 6 451 0
	movq	-24(%rbp), %rax
	movq	-104(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-104(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 452 0
	movq	-144(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-144(%rbp), %rax
	movq	160(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-144(%rbp), %rax
	movq	160(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 144(%rax)
	movq	-144(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 160(%rax)
.LBE40:
.LBE39:
	.loc 6 476 0
	jmp	.L272
.L264:
.LBB47:
.LBB41:
.LBB42:
	.loc 6 455 0
	leaq	-96(%rbp), %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	je	.L267
	.loc 6 455 0 is_stmt 0 discriminator 5
	leaq	-80(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	je	.L267
	.loc 6 455 0 discriminator 11
	movl	$1, %eax
	jmp	.L268
.L267:
	.loc 6 455 0 discriminator 12
	movl	$0, %eax
.L268:
	.loc 6 455 0 discriminator 14
	testb	%al, %al
	je	.L269
.LBB43:
	.loc 6 457 0 is_stmt 1
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z14ParseEnumClassP5lexerP6parser
	movq	%rax, -112(%rbp)
	.loc 6 458 0
	cmpq	$0, -112(%rbp)
	je	.L272
	.loc 6 460 0
	movq	-24(%rbp), %rax
	movq	-112(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-112(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 461 0
	movq	-144(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-144(%rbp), %rax
	movq	328(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 160(%rax)
	movq	-144(%rbp), %rax
	movq	328(%rax), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 152(%rax)
	movq	-144(%rbp), %rax
	movq	-112(%rbp), %rdx
	movq	%rdx, 328(%rax)
.LBE43:
.LBE42:
.LBE41:
.LBE47:
	.loc 6 476 0
	jmp	.L272
.L269:
.LBB48:
.LBB46:
.LBB45:
.LBB44:
	.loc 6 467 0
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13ParseFunctionP5lexerP6parser
	movq	%rax, -120(%rbp)
	.loc 6 468 0
	cmpq	$0, -120(%rbp)
	je	.L272
	.loc 6 470 0
	movq	-24(%rbp), %rax
	movq	-120(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 32(%rax)
	movq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-120(%rbp), %rax
	movq	56(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 56(%rax)
	.loc 6 471 0
	movq	-144(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 136(%rax)
	movq	-144(%rbp), %rax
	movq	480(%rax), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, 144(%rax)
	movq	-144(%rbp), %rax
	movq	480(%rax), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 136(%rax)
	movq	-144(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, 480(%rax)
.L272:
.LBE44:
.LBE45:
.LBE46:
.LBE48:
	.loc 6 476 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L271
	call	__stack_chk_fail@PLT
.L271:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.size	_Z15ParseTaggedExprP5lexerP6parser5token, .-_Z15ParseTaggedExprP5lexerP6parser5token
	.section	.rodata
.LC8:
	.string	"STRUCT"
.LC9:
	.string	"ENUM"
.LC10:
	.string	"UNION"
.LC11:
	.string	"CLASS"
	.text
	.globl	_Z20ParseStateMachineDefP5lexerP6parser5token
	.type	_Z20ParseStateMachineDefP5lexerP6parser5token, @function
_Z20ParseStateMachineDefP5lexerP6parser5token:
.LFB76:
	.loc 6 480 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	.loc 6 480 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB49:
	.loc 6 481 0
	movq	-104(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L284
.LBB50:
	.loc 6 483 0
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
.LBB51:
	.loc 6 484 0
	movl	-64(%rbp), %eax
	cmpl	$17, %eax
	jne	.L284
.LBB52:
	.loc 6 486 0
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$128, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -80(%rbp)
	.loc 6 487 0
	movq	-80(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 96(%rax)
	movq	-80(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 104(%rax)
	.loc 6 488 0
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 8(%rax)
	.loc 6 489 0
	movq	-104(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	.loc 6 490 0
	leaq	-144(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 6 491 0
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 24(%rax)
	.loc 6 493 0
	movq	-104(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	.loc 6 494 0
	leaq	-144(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)
	.loc 6 495 0
	movq	-80(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movl	-48(%rbp), %edx
	movl	%edx, 40(%rax)
.L282:
	.loc 6 497 0
	movq	-104(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L276
.LBB53:
.LBB54:
	.loc 6 499 0
	leaq	-32(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_PeekTokenP5lexer
	movl	-32(%rbp), %eax
	cmpl	$17, %eax
	sete	%al
	testb	%al, %al
	je	.L282
.LBB55:
	.loc 6 501 0
	movl	$0, -84(%rbp)
	.loc 6 503 0
	leaq	-32(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L278
	.loc 6 505 0
	movl	$1, -84(%rbp)
	jmp	.L279
.L278:
	.loc 6 507 0
	leaq	-32(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L280
	.loc 6 509 0
	movl	$4, -84(%rbp)
	jmp	.L279
.L280:
	.loc 6 511 0
	leaq	-32(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L281
	.loc 6 513 0
	movl	$2, -84(%rbp)
	jmp	.L279
.L281:
	.loc 6 515 0
	leaq	-32(%rbp), %rax
	leaq	.LC11(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z15NextTokenEqualsP5lexer13abs_stringptr
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L279
	.loc 6 517 0
	movl	$3, -84(%rbp)
.L279:
	.loc 6 520 0
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13ParseTypeExprP5lexerP6parser
	movq	%rax, -72(%rbp)
	.loc 6 521 0
	movq	-72(%rbp), %rax
	movl	-84(%rbp), %edx
	movl	%edx, 40(%rax)
	.loc 6 523 0
	movq	-80(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	104(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 104(%rax)
.LBE55:
.LBE54:
.LBE53:
	.loc 6 497 0
	jmp	.L282
.L276:
	.loc 6 527 0
	movq	-104(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	.loc 6 532 0
	movq	-104(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_Z13OptionalTokenP5lexer10token_type
	.loc 6 533 0
	movq	-112(%rbp), %rax
	leaq	488(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 112(%rax)
	movq	-112(%rbp), %rax
	movq	608(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 120(%rax)
	movq	-112(%rbp), %rax
	movq	608(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 112(%rax)
	movq	-112(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 608(%rax)
.L284:
.LBE52:
.LBE51:
.LBE50:
.LBE49:
	.loc 6 536 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L283
	call	__stack_chk_fail@PLT
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.size	_Z20ParseStateMachineDefP5lexerP6parser5token, .-_Z20ParseStateMachineDefP5lexerP6parser5token
	.globl	_Z20ParseDefinedFunctionP5lexerP6parser5token
	.type	_Z20ParseDefinedFunctionP5lexerP6parser5token, @function
_Z20ParseDefinedFunctionP5lexerP6parser5token:
.LFB77:
	.loc 6 540 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	.loc 6 540 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 541 0
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	.loc 6 542 0
	movb	$0, -105(%rbp)
	.loc 6 544 0
	movq	24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB56:
	.loc 6 545 0
	movq	-120(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L286
.LBB57:
	.loc 6 547 0
	leaq	-96(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 548 0
	movl	-96(%rbp), %eax
	cmpl	$17, %eax
	jne	.L287
	.loc 6 549 0
	movq	-120(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_Z12RequireTokenP5lexer10token_type
	.loc 6 548 0
	testb	%al, %al
	je	.L287
	.loc 6 548 0 is_stmt 0 discriminator 2
	movl	$1, %eax
	jmp	.L288
.L287:
	.loc 6 548 0 discriminator 3
	movl	$0, %eax
.L288:
	.loc 6 548 0 discriminator 5
	testb	%al, %al
	je	.L286
	.loc 6 551 0 is_stmt 1
	movq	-88(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -40(%rbp)
	.loc 6 552 0
	movb	$1, -105(%rbp)
.L286:
.LBE57:
.LBE56:
.LBB58:
	.loc 6 561 0
	cmpb	$0, -105(%rbp)
	je	.L292
.LBB59:
	.loc 6 563 0
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, %edx
	movl	$48, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -104(%rbp)
	.loc 6 564 0
	movq	-104(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rcx)
	movq	%rdx, 40(%rcx)
	.loc 6 565 0
	movq	-128(%rbp), %rax
	leaq	616(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-128(%rbp), %rax
	movq	656(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-128(%rbp), %rax
	movq	656(%rax), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, 656(%rax)
.L292:
.LBE59:
.LBE58:
	.loc 6 567 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L291
	call	__stack_chk_fail@PLT
.L291:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.size	_Z20ParseDefinedFunctionP5lexerP6parser5token, .-_Z20ParseDefinedFunctionP5lexerP6parser5token
	.section	.text._Z16isDefineFunctionP5lexer5token,"axG",@progbits,_Z16isDefineFunctionP5lexer5token,comdat
	.weak	_Z16isDefineFunctionP5lexer5token
	.type	_Z16isDefineFunctionP5lexer5token, @function
_Z16isDefineFunctionP5lexer5token:
.LFB78:
	.loc 6 571 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	.loc 6 571 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 572 0
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc 6 575 0
	movl	16(%rbp), %eax
	.loc 6 577 0
	cmpl	$17, %eax
	jne	.L294
	.loc 6 576 0
	leaq	-96(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movl	-96(%rbp), %eax
	.loc 6 575 0
	cmpl	$1, %eax
	jne	.L294
	.loc 6 577 0
	leaq	-64(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movl	-64(%rbp), %eax
	.loc 6 576 0
	cmpl	$17, %eax
	jne	.L294
	.loc 6 578 0
	leaq	-32(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	movl	-32(%rbp), %eax
	.loc 6 577 0
	cmpl	$2, %eax
	jne	.L294
	.loc 6 577 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L295
.L294:
	.loc 6 577 0 discriminator 4
	movl	$0, %eax
.L295:
	.loc 6 578 0 is_stmt 1
	movb	%al, -105(%rbp)
	.loc 6 580 0
	movq	-120(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 6 582 0
	movzbl	-105(%rbp), %eax
	.loc 6 583 0
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L297
	call	__stack_chk_fail@PLT
.L297:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.size	_Z16isDefineFunctionP5lexer5token, .-_Z16isDefineFunctionP5lexer5token
	.section	.rodata
.LC12:
	.string	"STATEMACHINE"
	.text
	.globl	_Z9ParseExprP5lexerP6parser
	.type	_Z9ParseExprP5lexerP6parser, @function
_Z9ParseExprP5lexerP6parser:
.LFB79:
	.loc 6 587 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	.loc 6 587 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 6 588 0
	movb	$0, -49(%rbp)
.L307:
	.loc 6 589 0
	cmpb	$0, -49(%rbp)
	jne	.L309
.LBB60:
	.loc 6 591 0
	leaq	-32(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z12abl_GetTokenP5lexer
	.loc 6 592 0
	movl	-32(%rbp), %eax
	cmpl	$17, %eax
	je	.L301
	cmpl	$19, %eax
	je	.L302
	.loc 6 618 0
	jmp	.L306
.L301:
	.loc 6 596 0
	leaq	-48(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z15abl_TokenEquals5token13abs_stringptr
	addq	$32, %rsp
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L303
	.loc 6 598 0
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z15ParseTaggedExprP5lexerP6parser5token
	addq	$32, %rsp
	.loc 6 609 0
	jmp	.L310
.L303:
	.loc 6 600 0
	leaq	-48(%rbp), %rax
	leaq	.LC12(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z15abl_TokenEquals5token13abs_stringptr
	addq	$32, %rsp
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L305
	.loc 6 602 0
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z20ParseStateMachineDefP5lexerP6parser5token
	addq	$32, %rsp
	.loc 6 609 0
	jmp	.L310
.L305:
	.loc 6 604 0
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rax, %rdi
	call	_Z16isDefineFunctionP5lexer5token
	addq	$32, %rsp
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L310
	.loc 6 606 0
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z20ParseDefinedFunctionP5lexerP6parser5token
	addq	$32, %rsp
	.loc 6 609 0
	jmp	.L310
.L302:
	.loc 6 613 0
	movb	$1, -49(%rbp)
	.loc 6 614 0
	jmp	.L306
.L310:
	.loc 6 609 0
	nop
.L306:
.LBE60:
	.loc 6 589 0 discriminator 1
	jmp	.L307
.L309:
	.loc 6 621 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L308
	call	__stack_chk_fail@PLT
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.size	_Z9ParseExprP5lexerP6parser, .-_Z9ParseExprP5lexerP6parser
	.globl	_Z9ParseInitP12memory_arena
	.type	_Z9ParseInitP12memory_arena, @function
_Z9ParseInitP12memory_arena:
.LFB80:
	.loc 6 625 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	.loc 6 626 0
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movl	$664, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -8(%rbp)
	.loc 6 627 0
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 6 628 0
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 152(%rax)
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 160(%rax)
	.loc 6 629 0
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 320(%rax)
	movq	-8(%rbp), %rax
	leaq	168(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 328(%rax)
	.loc 6 630 0
	movq	-8(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 472(%rax)
	movq	-8(%rbp), %rax
	leaq	336(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 480(%rax)
	.loc 6 631 0
	movq	-8(%rbp), %rax
	leaq	488(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 600(%rax)
	movq	-8(%rbp), %rax
	leaq	488(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 608(%rax)
	.loc 6 632 0
	movq	-8(%rbp), %rax
	leaq	616(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 648(%rax)
	movq	-8(%rbp), %rax
	leaq	616(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 656(%rax)
	.loc 6 634 0
	movq	-8(%rbp), %rax
	.loc 6 635 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE80:
	.size	_Z9ParseInitP12memory_arena, .-_Z9ParseInitP12memory_arena
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
.LFB81:
	.file 7 "/home/amos/prog/c/amos_libraries/preprocessor/../include/stb_sprintf.h"
	.loc 7 260 0
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
	.loc 7 261 0
	movzbl	-8(%rbp), %eax
	movb	%al, _ZL13stbsp__period(%rip)
	.loc 7 262 0
	movzbl	-4(%rbp), %eax
	movb	%al, _ZL12stbsp__comma(%rip)
	.loc 7 263 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.size	stbsp_set_separators, .-stbsp_set_separators
	.type	_ZL16stbsp__lead_signjPc, @function
_ZL16stbsp__lead_signjPc:
.LFB82:
	.loc 7 280 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	.loc 7 281 0
	movq	-16(%rbp), %rax
	movb	$0, (%rax)
	.loc 7 282 0
	movl	-4(%rbp), %eax
	andl	$128, %eax
	testl	%eax, %eax
	je	.L315
	.loc 7 283 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 7 284 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$45, (%rax)
	.loc 7 292 0
	jmp	.L318
.L315:
	.loc 7 285 0
	movl	-4(%rbp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	.L317
	.loc 7 286 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 7 287 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$32, (%rax)
	.loc 7 292 0
	jmp	.L318
.L317:
	.loc 7 288 0
	movl	-4(%rbp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L318
	.loc 7 289 0
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	.loc 7 290 0
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movb	$43, (%rax)
.L318:
	.loc 7 292 0
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE82:
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
.LC13:
	.string	"null"
.LC17:
	.string	"_KMGT"
.LC18:
	.string	"_kMGT"
	.text
	.globl	stbsp_vsprintfcb
	.type	stbsp_vsprintfcb, @function
stbsp_vsprintfcb:
.LFB83:
	.loc 7 295 0
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
	.loc 7 295 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 7 300 0
	movl	$0, -776(%rbp)
	.loc 7 302 0
	movq	-824(%rbp), %rax
	movq	%rax, -616(%rbp)
	.loc 7 303 0
	movq	-832(%rbp), %rax
	movq	%rax, -608(%rbp)
.L329:
.LBB61:
.LBB62:
.LBB63:
.LBB64:
	.loc 7 338 0
	movq	-608(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L320
.LBB65:
	.loc 7 339 0
	nop
	jmp	.L321
.L698:
.LBE65:
.LBB74:
.LBB75:
	.loc 7 357 0
	nop
	jmp	.L321
.L700:
	.loc 7 362 0
	nop
.L321:
.LBE75:
.LBE74:
.LBB78:
	.loc 7 340 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$37, %al
	je	.L695
	.loc 7 342 0
	nop
	jmp	.L322
.L699:
.LBE78:
.LBB79:
.LBB76:
	.loc 7 359 0
	nop
.L322:
.LBE76:
.LBE79:
.LBB80:
	.loc 7 343 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L696
.LBB66:
.LBB67:
	.loc 7 345 0
	cmpq	$0, -808(%rbp)
	je	.L326
.LBB68:
.LBB69:
	.loc 7 345 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -640(%rbp)
	movl	-640(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L326
	.loc 7 345 0 discriminator 2
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
	jne	.L697
.L326:
.LBE69:
.LBE68:
.LBE67:
.LBE66:
	.loc 7 346 0 is_stmt 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 7 347 0
	addq	$1, -608(%rbp)
.LBE80:
	.loc 7 338 0
	jmp	.L329
.L320:
.LBB81:
.LBB77:
	.loc 7 354 0
	movq	-608(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -724(%rbp)
	.loc 7 355 0
	movl	-724(%rbp), %eax
	notl	%eax
	andl	$-2139062144, %eax
	movl	%eax, -720(%rbp)
	.loc 7 356 0
	movl	-724(%rbp), %eax
	xorl	$623191333, %eax
	subl	$16843009, %eax
	andl	-720(%rbp), %eax
	testl	%eax, %eax
	jne	.L698
	.loc 7 358 0
	movl	-724(%rbp), %eax
	subl	$16843009, %eax
	andl	-720(%rbp), %eax
	testl	%eax, %eax
	jne	.L699
	.loc 7 360 0
	cmpq	$0, -808(%rbp)
	je	.L332
	.loc 7 361 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	$512, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	$3, %eax
	jle	.L700
.L332:
	.loc 7 372 0
	movq	-616(%rbp), %rax
	movl	-724(%rbp), %edx
	movl	%edx, (%rax)
	.loc 7 374 0
	addq	$4, -616(%rbp)
	.loc 7 375 0
	addq	$4, -608(%rbp)
.LBE77:
	.loc 7 376 0
	jmp	.L320
.L695:
.LBE81:
.LBB82:
	.loc 7 341 0
	nop
.L323:
.LBE82:
.LBE64:
.LBE63:
	.loc 7 380 0
	addq	$1, -608(%rbp)
	.loc 7 383 0
	movl	$0, -772(%rbp)
	.loc 7 384 0
	movl	$-1, -788(%rbp)
	.loc 7 385 0
	movl	$0, -764(%rbp)
	.loc 7 386 0
	movl	$0, -768(%rbp)
.L349:
	.loc 7 390 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$32, %eax
	cmpl	$63, %eax
	ja	.L701
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L335(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L335(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L335:
	.long	.L334-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L336-.L335
	.long	.L337-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L338-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L339-.L335
	.long	.L701-.L335
	.long	.L340-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L341-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L701-.L335
	.long	.L342-.L335
	.text
.L340:
	.loc 7 393 0 discriminator 5
	orl	$1, -764(%rbp)
	.loc 7 394 0 discriminator 5
	addq	$1, -608(%rbp)
	.loc 7 395 0 discriminator 5
	jmp	.L343
.L339:
	.loc 7 398 0 discriminator 4
	orl	$2, -764(%rbp)
	.loc 7 399 0 discriminator 4
	addq	$1, -608(%rbp)
	.loc 7 400 0 discriminator 4
	jmp	.L343
.L334:
	.loc 7 403 0 discriminator 1
	orl	$4, -764(%rbp)
	.loc 7 404 0 discriminator 1
	addq	$1, -608(%rbp)
	.loc 7 405 0 discriminator 1
	jmp	.L343
.L336:
	.loc 7 408 0 discriminator 2
	orl	$8, -764(%rbp)
	.loc 7 409 0 discriminator 2
	addq	$1, -608(%rbp)
	.loc 7 410 0 discriminator 2
	jmp	.L343
.L338:
	.loc 7 413 0 discriminator 3
	orl	$64, -764(%rbp)
	.loc 7 414 0 discriminator 3
	addq	$1, -608(%rbp)
	.loc 7 415 0 discriminator 3
	jmp	.L343
.L337:
	.loc 7 418 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L344
	.loc 7 419 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L345
	.loc 7 420 0
	orl	$4096, -764(%rbp)
	jmp	.L347
.L345:
	.loc 7 422 0
	orl	$2048, -764(%rbp)
	jmp	.L347
.L344:
	.loc 7 425 0
	orl	$256, -764(%rbp)
.L347:
	.loc 7 427 0
	addq	$1, -608(%rbp)
	.loc 7 428 0
	jmp	.L343
.L342:
	.loc 7 431 0 discriminator 6
	orl	$1024, -764(%rbp)
	.loc 7 432 0 discriminator 6
	addq	$1, -608(%rbp)
	.loc 7 433 0 discriminator 6
	jmp	.L343
.L341:
	.loc 7 436 0
	orl	$16, -764(%rbp)
	.loc 7 437 0
	addq	$1, -608(%rbp)
	.loc 7 438 0
	jmp	.L348
.L343:
	.loc 7 390 0
	jmp	.L349
.L701:
	.loc 7 439 0
	nop
.L348:
	.loc 7 445 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L350
	.loc 7 446 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L351
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
	jmp	.L352
.L351:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L352:
	movl	(%rax), %eax
	.loc 7 446 0
	movl	%eax, -772(%rbp)
	.loc 7 447 0
	addq	$1, -608(%rbp)
	jmp	.L353
.L350:
	.loc 7 449 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L353
	.loc 7 449 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L353
	.loc 7 450 0 is_stmt 1
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
	.loc 7 451 0
	addq	$1, -608(%rbp)
	.loc 7 449 0
	jmp	.L350
.L353:
	.loc 7 455 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$46, %al
	jne	.L354
	.loc 7 456 0
	addq	$1, -608(%rbp)
	.loc 7 457 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$42, %al
	jne	.L355
	.loc 7 458 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L356
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
	jmp	.L357
.L356:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L357:
	movl	(%rax), %eax
	.loc 7 458 0
	movl	%eax, -788(%rbp)
	.loc 7 459 0
	addq	$1, -608(%rbp)
	jmp	.L354
.L355:
	.loc 7 461 0
	movl	$0, -788(%rbp)
.L358:
	.loc 7 462 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L354
	.loc 7 462 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$57, %al
	jg	.L354
	.loc 7 463 0 is_stmt 1
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
	.loc 7 464 0
	addq	$1, -608(%rbp)
	.loc 7 462 0
	jmp	.L358
.L354:
	.loc 7 470 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$73, %eax
	cmpl	$49, %eax
	ja	.L702
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L361(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L361(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L361:
	.long	.L360-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L362-.L361
	.long	.L702-.L361
	.long	.L363-.L361
	.long	.L702-.L361
	.long	.L364-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L365-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L702-.L361
	.long	.L366-.L361
	.text
.L362:
	.loc 7 473 0
	orl	$512, -764(%rbp)
	.loc 7 474 0
	addq	$1, -608(%rbp)
	.loc 7 475 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$104, %al
	jne	.L703
	.loc 7 476 0
	addq	$1, -608(%rbp)
	.loc 7 477 0
	jmp	.L703
.L364:
	.loc 7 480 0
	orl	$32, -764(%rbp)
	.loc 7 481 0
	addq	$1, -608(%rbp)
	.loc 7 482 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$108, %al
	jne	.L704
	.loc 7 483 0
	orl	$32, -764(%rbp)
	.loc 7 484 0
	addq	$1, -608(%rbp)
	.loc 7 486 0
	jmp	.L704
.L363:
	.loc 7 489 0
	orl	$32, -764(%rbp)
	.loc 7 490 0
	addq	$1, -608(%rbp)
	.loc 7 491 0
	jmp	.L368
.L366:
	.loc 7 494 0
	orl	$32, -764(%rbp)
	.loc 7 495 0
	addq	$1, -608(%rbp)
	.loc 7 496 0
	jmp	.L368
.L365:
	.loc 7 498 0
	orl	$32, -764(%rbp)
	.loc 7 499 0
	addq	$1, -608(%rbp)
	.loc 7 500 0
	jmp	.L368
.L360:
	.loc 7 503 0
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$54, %al
	jne	.L370
	.loc 7 503 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$52, %al
	jne	.L370
	.loc 7 504 0 is_stmt 1
	orl	$32, -764(%rbp)
	.loc 7 505 0
	addq	$3, -608(%rbp)
	jmp	.L371
.L370:
	.loc 7 506 0
	movq	-608(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$51, %al
	jne	.L372
	.loc 7 506 0 is_stmt 0 discriminator 1
	movq	-608(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	cmpb	$50, %al
	jne	.L372
	.loc 7 507 0 is_stmt 1
	addq	$3, -608(%rbp)
	jmp	.L371
.L372:
	.loc 7 509 0
	orl	$32, -764(%rbp)
	.loc 7 510 0
	addq	$1, -608(%rbp)
	.loc 7 512 0
	jmp	.L368
.L371:
	jmp	.L368
.L702:
	.loc 7 513 0
	nop
	jmp	.L368
.L703:
	.loc 7 477 0
	nop
	jmp	.L368
.L704:
	.loc 7 486 0
	nop
.L368:
.LBB87:
	.loc 7 517 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	cmpl	$55, %eax
	ja	.L373
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L375(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L375(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L375:
	.long	.L374-.L375
	.long	.L376-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L377-.L375
	.long	.L373-.L375
	.long	.L378-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L379-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L374-.L375
	.long	.L376-.L375
	.long	.L380-.L375
	.long	.L381-.L375
	.long	.L377-.L375
	.long	.L382-.L375
	.long	.L378-.L375
	.long	.L373-.L375
	.long	.L381-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L383-.L375
	.long	.L384-.L375
	.long	.L385-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L386-.L375
	.long	.L373-.L375
	.long	.L381-.L375
	.long	.L373-.L375
	.long	.L373-.L375
	.long	.L379-.L375
	.text
.L386:
.LBB88:
	.loc 7 534 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L387
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
	jmp	.L388
.L387:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L388:
	movq	(%rax), %rax
	movq	%rax, -600(%rbp)
	.loc 7 535 0
	cmpq	$0, -600(%rbp)
	jne	.L389
	.loc 7 536 0
	leaq	.LC13(%rip), %rax
	movq	%rax, -600(%rbp)
.L389:
	.loc 7 538 0
	movq	-600(%rbp), %rax
	movq	%rax, -624(%rbp)
.L394:
	.loc 7 540 0
	movq	-624(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L705
	.loc 7 542 0
	nop
	jmp	.L390
.L708:
	.loc 7 561 0
	nop
	jmp	.L390
.L709:
.LBB89:
	.loc 7 557 0
	nop
.L390:
.LBE89:
	.loc 7 543 0
	movq	-624(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L706
	.loc 7 545 0
	movq	-624(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
	.loc 7 540 0
	jmp	.L394
.L705:
	.loc 7 541 0
	nop
	.loc 7 547 0
	movl	$-1, -760(%rbp)
	.loc 7 548 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	js	.L399
	.loc 7 549 0
	movq	-624(%rbp), %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -760(%rbp)
	.loc 7 550 0
	movl	-788(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L707
	.loc 7 552 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	shrl	$2, %eax
	movl	%eax, -760(%rbp)
.L399:
	.loc 7 554 0
	cmpl	$0, -760(%rbp)
	je	.L708
.LBB90:
	.loc 7 555 0
	movq	-624(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -716(%rbp)
	.loc 7 556 0
	movl	-716(%rbp), %eax
	leal	-16843009(%rax), %edx
	movl	-716(%rbp), %eax
	notl	%eax
	andl	%edx, %eax
	andl	$-2139062144, %eax
	testl	%eax, %eax
	jne	.L709
	.loc 7 558 0
	movq	-624(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -624(%rbp)
	.loc 7 559 0
	subl	$1, -760(%rbp)
.LBE90:
	.loc 7 554 0
	jmp	.L399
.L706:
	.loc 7 544 0
	nop
	jmp	.L393
.L707:
	.loc 7 551 0
	nop
.L393:
	.loc 7 564 0
	movq	-624(%rbp), %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 7 566 0
	movl	-784(%rbp), %eax
	movl	-788(%rbp), %edx
	cmpl	%edx, %eax
	jbe	.L400
	.loc 7 567 0
	movl	-788(%rbp), %eax
	movl	%eax, -784(%rbp)
.L400:
	.loc 7 568 0
	movb	$0, -544(%rbp)
	.loc 7 569 0
	movb	$0, -536(%rbp)
	.loc 7 570 0
	movl	$0, -788(%rbp)
	.loc 7 571 0
	movl	$0, -780(%rbp)
	.loc 7 572 0
	movl	$0, -756(%rbp)
	.loc 7 574 0
	jmp	.L401
.L380:
	.loc 7 578 0
	leaq	-528(%rbp), %rax
	addq	$511, %rax
	movq	%rax, -600(%rbp)
	.loc 7 579 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L402
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
	jmp	.L403
.L402:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L403:
	movl	(%rax), %eax
	.loc 7 579 0
	movl	%eax, %edx
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 7 580 0
	movl	$1, -784(%rbp)
	.loc 7 581 0
	movb	$0, -544(%rbp)
	.loc 7 582 0
	movb	$0, -536(%rbp)
	.loc 7 583 0
	movl	$0, -788(%rbp)
	.loc 7 584 0
	movl	$0, -780(%rbp)
	.loc 7 585 0
	movl	$0, -756(%rbp)
	.loc 7 586 0
	jmp	.L401
.L383:
.LBB91:
	.loc 7 590 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L404
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
	jmp	.L405
.L404:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L405:
	movq	(%rax), %rax
	movq	%rax, -560(%rbp)
	.loc 7 591 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-776(%rbp), %eax
	addl	%eax, %edx
	movq	-560(%rbp), %rax
	movl	%edx, (%rax)
.LBE91:
	.loc 7 592 0
	jmp	.L406
.L374:
	.loc 7 614 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	jne	.L407
	.loc 7 614 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L408
.L407:
	.loc 7 614 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L408:
	.loc 7 614 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 7 615 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L409
	.loc 7 615 0 is_stmt 0
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
	jmp	.L410
.L409:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L410:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 7 616 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L411
	.loc 7 617 0
	movl	$6, -788(%rbp)
.L411:
	.loc 7 619 0
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
	je	.L412
	.loc 7 620 0
	orl	$128, -764(%rbp)
.L412:
	.loc 7 622 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 7 624 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 7 626 0
	movl	-780(%rbp), %eax
	cmpl	$-1023, %eax
	jne	.L413
	.loc 7 627 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	je	.L414
	.loc 7 627 0 is_stmt 0 discriminator 1
	movl	$-1022, %eax
	jmp	.L415
.L414:
	.loc 7 627 0 discriminator 2
	movl	$0, %eax
.L415:
	.loc 7 627 0 discriminator 4
	movl	%eax, -780(%rbp)
	jmp	.L416
.L413:
	.loc 7 629 0 is_stmt 1
	movq	-632(%rbp), %rdx
	movabsq	$4503599627370496, %rax
	orq	%rdx, %rax
	movq	%rax, -632(%rbp)
.L416:
	.loc 7 630 0
	movq	-632(%rbp), %rax
	salq	$8, %rax
	movq	%rax, -632(%rbp)
	.loc 7 631 0
	movl	-788(%rbp), %eax
	cmpl	$14, %eax
	jg	.L417
	.loc 7 632 0
	movl	-788(%rbp), %eax
	sall	$2, %eax
	movabsq	$576460752303423488, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-632(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -632(%rbp)
.L417:
	.loc 7 639 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	addl	$1, %eax
	cltq
	movb	$48, -544(%rbp,%rax)
	.loc 7 640 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	addl	$2, %eax
	cltq
	movb	$120, -544(%rbp,%rax)
	.loc 7 641 0
	movzbl	-544(%rbp), %eax
	addl	$2, %eax
	movb	%al, -544(%rbp)
	.loc 7 643 0
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
	.loc 7 644 0
	movq	-632(%rbp), %rax
	salq	$4, %rax
	movq	%rax, -632(%rbp)
	.loc 7 645 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L418
	.loc 7 646 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L418:
	.loc 7 647 0
	movq	-600(%rbp), %rax
	movq	%rax, -624(%rbp)
	.loc 7 650 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 7 651 0
	cmpl	$13, -760(%rbp)
	jbe	.L419
	.loc 7 652 0
	movl	$13, -760(%rbp)
.L419:
	.loc 7 653 0
	movl	-788(%rbp), %edx
	movl	-760(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L420
	.loc 7 654 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -768(%rbp)
.L420:
	.loc 7 655 0
	movl	$0, -788(%rbp)
.L422:
	.loc 7 656 0
	movl	-760(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -760(%rbp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L421
	.loc 7 657 0
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
	.loc 7 658 0
	movq	-632(%rbp), %rax
	salq	$4, %rax
	movq	%rax, -632(%rbp)
	.loc 7 656 0
	jmp	.L422
.L421:
	.loc 7 662 0
	movq	-592(%rbp), %rax
	addq	$17, %rax
	movzbl	(%rax), %eax
	movb	%al, -535(%rbp)
	.loc 7 663 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jns	.L423
	.loc 7 664 0
	movb	$45, -534(%rbp)
	.loc 7 665 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -780(%rbp)
	jmp	.L424
.L423:
	.loc 7 667 0
	movb	$43, -534(%rbp)
.L424:
	.loc 7 668 0
	movl	-780(%rbp), %eax
	cmpl	$999, %eax
	jg	.L425
	.loc 7 668 0 is_stmt 0 discriminator 1
	movl	-780(%rbp), %eax
	cmpl	$99, %eax
	jg	.L426
	.loc 7 668 0 discriminator 3
	movl	-780(%rbp), %eax
	cmpl	$9, %eax
	jle	.L427
	.loc 7 668 0 discriminator 5
	movl	$4, %eax
	jmp	.L430
.L427:
	.loc 7 668 0 discriminator 6
	movl	$3, %eax
	jmp	.L430
.L426:
	.loc 7 668 0 discriminator 4
	movl	$5, %eax
	jmp	.L430
.L425:
	.loc 7 668 0 discriminator 2
	movl	$6, %eax
.L430:
	.loc 7 668 0 discriminator 12
	movl	%eax, -760(%rbp)
	.loc 7 669 0 is_stmt 1 discriminator 12
	movl	-760(%rbp), %eax
	movb	%al, -536(%rbp)
.L433:
	.loc 7 671 0
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
	.loc 7 672 0
	cmpl	$3, -760(%rbp)
	jbe	.L710
	.loc 7 674 0
	subl	$1, -760(%rbp)
	.loc 7 675 0
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
	.loc 7 671 0
	jmp	.L433
.L710:
	.loc 7 673 0
	nop
	.loc 7 678 0
	movq	-600(%rbp), %rax
	movq	-624(%rbp), %rdx
	subq	%rdx, %rax
	movl	%eax, -780(%rbp)
	.loc 7 679 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 7 680 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 7 681 0
	movl	$50331649, -756(%rbp)
	.loc 7 682 0
	jmp	.L401
.L378:
	.loc 7 686 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$71, %al
	jne	.L434
	.loc 7 686 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L435
.L434:
	.loc 7 686 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L435:
	.loc 7 686 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 7 687 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L436
	.loc 7 687 0 is_stmt 0
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
	jmp	.L437
.L436:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L437:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 7 688 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L438
	.loc 7 689 0
	movl	$6, -788(%rbp)
	jmp	.L439
.L438:
	.loc 7 690 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jne	.L439
	.loc 7 691 0
	movl	$1, -788(%rbp)
.L439:
	.loc 7 693 0
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
	je	.L440
	.loc 7 694 0
	orl	$128, -764(%rbp)
.L440:
	.loc 7 697 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 7 698 0
	movl	-784(%rbp), %eax
	movl	-788(%rbp), %edx
	cmpl	%edx, %eax
	jbe	.L443
	.loc 7 699 0
	movl	-788(%rbp), %eax
	movl	%eax, -784(%rbp)
.L443:
	.loc 7 700 0
	movl	-784(%rbp), %eax
	cmpl	$1, %eax
	jbe	.L442
	.loc 7 700 0 is_stmt 0 discriminator 1
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L442
	.loc 7 700 0 discriminator 2
	movq	-624(%rbp), %rax
	movl	-784(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L442
	.loc 7 701 0 is_stmt 1
	movl	-788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 7 702 0
	movl	-784(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -784(%rbp)
	.loc 7 700 0
	jmp	.L443
.L442:
	.loc 7 706 0
	movl	-780(%rbp), %eax
	cmpl	$-3, %eax
	jl	.L444
	.loc 7 706 0 is_stmt 0 discriminator 1
	movl	-780(%rbp), %edx
	movl	-760(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L445
.L444:
	.loc 7 707 0 is_stmt 1
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jle	.L446
	.loc 7 708 0
	movl	-784(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 7 711 0
	jmp	.L711
.L446:
	.loc 7 709 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L711
	.loc 7 710 0
	movl	-788(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -788(%rbp)
	.loc 7 711 0
	jmp	.L711
.L445:
	.loc 7 714 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jle	.L449
	.loc 7 715 0
	movl	-780(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jge	.L450
	.loc 7 715 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	jmp	.L451
.L450:
	.loc 7 715 0 discriminator 2
	movl	$0, %eax
.L451:
	.loc 7 715 0 discriminator 4
	movl	%eax, -788(%rbp)
	.loc 7 719 0 is_stmt 1 discriminator 4
	jmp	.L455
.L449:
	.loc 7 717 0
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jle	.L453
	.loc 7 717 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	jmp	.L454
.L453:
	.loc 7 717 0 discriminator 2
	movl	-788(%rbp), %eax
.L454:
	.loc 7 717 0 discriminator 4
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, -788(%rbp)
	.loc 7 719 0 is_stmt 1 discriminator 4
	jmp	.L455
.L377:
	.loc 7 723 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$69, %al
	jne	.L456
	.loc 7 723 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L457
.L456:
	.loc 7 723 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L457:
	.loc 7 723 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 7 724 0 is_stmt 1 discriminator 4
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L458
	.loc 7 724 0 is_stmt 0
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
	jmp	.L459
.L458:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L459:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 7 725 0 is_stmt 1
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L460
	.loc 7 726 0
	movl	$6, -788(%rbp)
.L460:
	.loc 7 728 0
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
	je	.L712
	.loc 7 729 0
	orl	$128, -764(%rbp)
	jmp	.L448
.L711:
	.loc 7 711 0
	nop
	jmp	.L448
.L712:
	.loc 7 730 0
	nop
.L448:
	.loc 7 731 0
	movb	$0, -536(%rbp)
	.loc 7 732 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 7 733 0
	movl	-780(%rbp), %eax
	cmpl	$28672, %eax
	jne	.L461
	.loc 7 734 0
	movq	-624(%rbp), %rax
	movq	%rax, -600(%rbp)
	.loc 7 735 0
	movl	$0, -756(%rbp)
	.loc 7 736 0
	movl	$0, -788(%rbp)
	.loc 7 737 0
	jmp	.L401
.L461:
	.loc 7 739 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 7 741 0
	movq	-624(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 743 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L462
	.loc 7 744 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L462:
	.loc 7 747 0
	movl	-784(%rbp), %eax
	leal	-1(%rax), %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L463
	.loc 7 748 0
	movl	-788(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -784(%rbp)
.L463:
	.loc 7 749 0
	movl	$1, -760(%rbp)
.L465:
	.loc 7 749 0 is_stmt 0 discriminator 3
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L464
	.loc 7 750 0 is_stmt 1 discriminator 2
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 749 0 discriminator 2
	addl	$1, -760(%rbp)
	jmp	.L465
.L464:
	.loc 7 752 0
	movl	-788(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movl	%eax, -768(%rbp)
	.loc 7 753 0
	movl	$0, -788(%rbp)
	.loc 7 755 0
	movq	-592(%rbp), %rax
	addq	$14, %rax
	movzbl	(%rax), %eax
	movb	%al, -535(%rbp)
	.loc 7 756 0
	movl	-780(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -780(%rbp)
	.loc 7 757 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jns	.L466
	.loc 7 758 0
	movb	$45, -534(%rbp)
	.loc 7 759 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -780(%rbp)
	jmp	.L467
.L466:
	.loc 7 761 0
	movb	$43, -534(%rbp)
.L467:
	.loc 7 765 0
	movl	-780(%rbp), %eax
	cmpl	$99, %eax
	jle	.L468
	.loc 7 765 0 is_stmt 0 discriminator 1
	movl	$5, %eax
	jmp	.L469
.L468:
	.loc 7 765 0 discriminator 2
	movl	$4, %eax
.L469:
	.loc 7 765 0 discriminator 4
	movl	%eax, -760(%rbp)
	.loc 7 767 0 is_stmt 1 discriminator 4
	movl	-760(%rbp), %eax
	movb	%al, -536(%rbp)
.L472:
	.loc 7 769 0
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
	.loc 7 770 0
	cmpl	$3, -760(%rbp)
	jbe	.L713
	.loc 7 772 0
	subl	$1, -760(%rbp)
	.loc 7 773 0
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
	.loc 7 769 0
	jmp	.L472
.L713:
	.loc 7 771 0
	nop
	.loc 7 775 0
	movl	$50331649, -756(%rbp)
	.loc 7 776 0
	jmp	.L473
.L382:
	.loc 7 779 0
	movq	-840(%rbp), %rax
	movl	4(%rax), %eax
	cmpl	$175, %eax
	ja	.L474
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
	jmp	.L475
.L474:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L475:
	movsd	(%rax), %xmm0
	movsd	%xmm0, -584(%rbp)
.L476:
.LBB92:
	.loc 7 782 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L477
.LBB93:
	.loc 7 784 0
	movsd	.LC14(%rip), %xmm0
	movsd	%xmm0, -576(%rbp)
	.loc 7 785 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L483
	.loc 7 786 0
	movsd	.LC15(%rip), %xmm0
	movsd	%xmm0, -576(%rbp)
.L483:
	.loc 7 787 0
	cmpl	$67108863, -764(%rbp)
	ja	.L477
	.loc 7 788 0
	movsd	-576(%rbp), %xmm0
	ucomisd	-584(%rbp), %xmm0
	jbe	.L480
	.loc 7 788 0 is_stmt 0 discriminator 1
	movsd	-576(%rbp), %xmm1
	movq	.LC16(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	-584(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L714
.L480:
	.loc 7 790 0 is_stmt 1
	movsd	-584(%rbp), %xmm0
	divsd	-576(%rbp), %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 7 791 0
	addl	$16777216, -764(%rbp)
	.loc 7 787 0
	jmp	.L483
.L714:
	.loc 7 789 0
	nop
.L477:
.LBE93:
.LBE92:
	.loc 7 794 0
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L484
	.loc 7 795 0
	movl	$6, -788(%rbp)
.L484:
	.loc 7 797 0
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
	je	.L715
	.loc 7 798 0
	orl	$128, -764(%rbp)
	jmp	.L455
.L715:
	.loc 7 799 0
	nop
.L455:
	.loc 7 800 0
	movb	$0, -536(%rbp)
	.loc 7 801 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 7 802 0
	movl	-780(%rbp), %eax
	cmpl	$28672, %eax
	jne	.L485
	.loc 7 803 0
	movq	-624(%rbp), %rax
	movq	%rax, -600(%rbp)
	.loc 7 804 0
	movl	$0, -756(%rbp)
	.loc 7 805 0
	movl	$0, -788(%rbp)
	.loc 7 806 0
	jmp	.L401
.L485:
	.loc 7 808 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
.LBB94:
	.loc 7 811 0
	movl	-780(%rbp), %eax
	testl	%eax, %eax
	jg	.L486
.LBB95:
	.loc 7 814 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 7 815 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L487
	.loc 7 816 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L487:
	.loc 7 817 0
	movl	-780(%rbp), %eax
	negl	%eax
	movl	%eax, -760(%rbp)
	.loc 7 818 0
	movl	-760(%rbp), %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L488
	.loc 7 819 0
	movl	-788(%rbp), %eax
	movl	%eax, -760(%rbp)
.L488:
	.loc 7 820 0
	movl	-760(%rbp), %eax
	movl	%eax, -752(%rbp)
.L491:
	.loc 7 821 0
	cmpl	$0, -752(%rbp)
	je	.L493
	.loc 7 822 0
	movq	-600(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L716
	.loc 7 824 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 7 825 0
	subl	$1, -752(%rbp)
	.loc 7 821 0
	jmp	.L491
.L716:
	.loc 7 823 0
	nop
.L493:
	.loc 7 827 0
	cmpl	$3, -752(%rbp)
	jle	.L492
	.loc 7 828 0
	movq	-600(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 7 829 0
	addq	$4, -600(%rbp)
	.loc 7 830 0
	subl	$4, -752(%rbp)
	.loc 7 827 0
	jmp	.L493
.L492:
	.loc 7 832 0
	cmpl	$0, -752(%rbp)
	je	.L494
	.loc 7 833 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 7 834 0
	subl	$1, -752(%rbp)
	.loc 7 832 0
	jmp	.L492
.L494:
	.loc 7 836 0
	movl	-784(%rbp), %edx
	movl	-760(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L495
	.loc 7 837 0
	movl	-788(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -784(%rbp)
.L495:
	.loc 7 838 0
	movl	-784(%rbp), %eax
	movl	%eax, -752(%rbp)
.L497:
	.loc 7 839 0
	cmpl	$0, -752(%rbp)
	je	.L496
	.loc 7 840 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 841 0
	subl	$1, -752(%rbp)
	.loc 7 839 0
	jmp	.L497
.L496:
	.loc 7 843 0
	movl	-788(%rbp), %eax
	movl	%eax, %ecx
	movl	-784(%rbp), %edx
	movl	-760(%rbp), %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -768(%rbp)
	.loc 7 844 0
	movl	$50331649, -756(%rbp)
.LBE95:
	jmp	.L498
.L486:
	.loc 7 846 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L499
	.loc 7 846 0 is_stmt 0 discriminator 1
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
	jmp	.L500
.L499:
	.loc 7 846 0 discriminator 2
	movl	$0, %eax
.L500:
	.loc 7 846 0 discriminator 4
	movl	%eax, -756(%rbp)
	.loc 7 847 0 is_stmt 1 discriminator 4
	movl	-780(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	cmpl	%eax, %edx
	jb	.L501
	.loc 7 849 0
	movl	$0, -760(%rbp)
.L507:
	.loc 7 851 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L502
	.loc 7 851 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L502
	.loc 7 851 0 discriminator 3
	movl	$1, %eax
	jmp	.L503
.L502:
	.loc 7 851 0 discriminator 4
	movl	$0, %eax
.L503:
	.loc 7 851 0 discriminator 6
	testb	%al, %al
	je	.L504
	.loc 7 852 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 7 853 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L507
.L504:
	.loc 7 855 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 856 0
	addl	$1, -760(%rbp)
	.loc 7 857 0
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L717
	.loc 7 851 0
	jmp	.L507
.L717:
	.loc 7 858 0
	nop
	.loc 7 861 0
	movl	-780(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L508
	.loc 7 862 0
	movl	-780(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -760(%rbp)
	.loc 7 863 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L518
.L512:
	.loc 7 864 0
	cmpl	$0, -760(%rbp)
	je	.L513
	.loc 7 865 0
	movq	-600(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L718
	.loc 7 867 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 7 868 0
	subl	$1, -760(%rbp)
	.loc 7 864 0
	jmp	.L512
.L718:
	.loc 7 866 0
	nop
.L513:
	.loc 7 870 0
	cmpl	$3, -760(%rbp)
	jbe	.L518
	.loc 7 871 0
	movq	-600(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 7 872 0
	addq	$4, -600(%rbp)
	.loc 7 873 0
	subl	$4, -760(%rbp)
	.loc 7 870 0
	jmp	.L513
.L518:
	.loc 7 876 0
	cmpl	$0, -760(%rbp)
	je	.L508
	.loc 7 877 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L514
	.loc 7 877 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L514
	.loc 7 877 0 discriminator 3
	movl	$1, %eax
	jmp	.L515
.L514:
	.loc 7 877 0 discriminator 4
	movl	$0, %eax
.L515:
	.loc 7 877 0 discriminator 6
	testb	%al, %al
	je	.L516
	.loc 7 878 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 7 879 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L518
.L516:
	.loc 7 881 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movb	$48, (%rax)
	.loc 7 882 0
	subl	$1, -760(%rbp)
	.loc 7 876 0
	jmp	.L518
.L508:
	.loc 7 886 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 7 887 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L498
	.loc 7 888 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 889 0
	movl	-788(%rbp), %eax
	movl	%eax, -768(%rbp)
	jmp	.L498
.L501:
	.loc 7 893 0
	movl	$0, -760(%rbp)
.L524:
	.loc 7 895 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L519
	.loc 7 895 0 is_stmt 0 discriminator 1
	addl	$1, -756(%rbp)
	cmpl	$4, -756(%rbp)
	jne	.L519
	.loc 7 895 0 discriminator 3
	movl	$1, %eax
	jmp	.L520
.L519:
	.loc 7 895 0 discriminator 4
	movl	$0, %eax
.L520:
	.loc 7 895 0 discriminator 6
	testb	%al, %al
	je	.L521
	.loc 7 896 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 7 897 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	jmp	.L524
.L521:
	.loc 7 899 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 900 0
	addl	$1, -760(%rbp)
	.loc 7 901 0
	movl	-780(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L719
	.loc 7 895 0
	jmp	.L524
.L719:
	.loc 7 902 0
	nop
	.loc 7 905 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 7 906 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	je	.L525
	.loc 7 907 0
	movzbl	_ZL13stbsp__period(%rip), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
.L525:
	.loc 7 908 0
	movl	-784(%rbp), %eax
	movl	-780(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jbe	.L528
	.loc 7 909 0
	movl	-788(%rbp), %edx
	movl	-780(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -784(%rbp)
.L528:
	.loc 7 910 0
	movl	-784(%rbp), %eax
	cmpl	%eax, -760(%rbp)
	jnb	.L527
	.loc 7 911 0
	movq	-624(%rbp), %rdx
	movl	-760(%rbp), %eax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -600(%rbp)
	movb	%dl, (%rax)
	.loc 7 912 0
	addl	$1, -760(%rbp)
	.loc 7 910 0
	jmp	.L528
.L527:
	.loc 7 914 0
	movl	-780(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	-788(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -768(%rbp)
.L498:
.LBE94:
	.loc 7 917 0
	movl	$0, -788(%rbp)
.LBB96:
	.loc 7 920 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L720
.LBB97:
	.loc 7 922 0
	movb	$1, -789(%rbp)
	.loc 7 923 0
	movl	-764(%rbp), %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L529
	.loc 7 924 0
	movb	$0, -789(%rbp)
.L529:
	.loc 7 925 0
	movzbl	-789(%rbp), %eax
	movb	%al, -536(%rbp)
	.loc 7 926 0
	movb	$32, -535(%rbp)
	.loc 7 928 0
	movl	-764(%rbp), %eax
	shrl	$24, %eax
	testl	%eax, %eax
	je	.L473
	.loc 7 929 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L531
	.loc 7 930 0
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
	jmp	.L532
.L531:
	.loc 7 932 0
	movl	-764(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movsbl	-789(%rbp), %eax
	leal	1(%rax), %ecx
	movl	%edx, %edx
	leaq	.LC18(%rip), %rax
	movzbl	(%rdx,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -536(%rbp,%rax)
.L532:
	.loc 7 933 0
	movzbl	-789(%rbp), %eax
	addl	$1, %eax
	movb	%al, -789(%rbp)
	.loc 7 935 0
	movl	-764(%rbp), %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L533
	.loc 7 935 0 is_stmt 0 discriminator 1
	movl	-764(%rbp), %eax
	andl	$4096, %eax
	testl	%eax, %eax
	jne	.L533
	.loc 7 936 0 is_stmt 1
	movsbl	-789(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$105, -536(%rbp,%rax)
	.loc 7 937 0
	movzbl	-789(%rbp), %eax
	addl	$1, %eax
	movb	%al, -789(%rbp)
.L533:
	.loc 7 939 0
	movzbl	-789(%rbp), %eax
	movb	%al, -536(%rbp)
	jmp	.L473
.L720:
.LBE97:
.LBE96:
	.loc 7 944 0
	nop
.L473:
	.loc 7 946 0
	movq	-600(%rbp), %rdx
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 7 947 0
	leaq	-528(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -600(%rbp)
	.loc 7 948 0
	jmp	.L401
.L376:
	.loc 7 953 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	jne	.L534
	.loc 7 953 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L535
.L534:
	.loc 7 953 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L535:
	.loc 7 953 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 7 954 0 is_stmt 1 discriminator 4
	movb	$0, -544(%rbp)
	.loc 7 955 0 discriminator 4
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L536
	.loc 7 956 0
	movb	$2, -544(%rbp)
	.loc 7 957 0
	movb	$48, -543(%rbp)
	.loc 7 958 0
	movq	-592(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movb	%al, -542(%rbp)
.L536:
	.loc 7 960 0
	movl	$384, -784(%rbp)
	.loc 7 961 0
	jmp	.L537
.L384:
	.loc 7 964 0
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	movq	%rax, -592(%rbp)
	.loc 7 965 0
	movb	$0, -544(%rbp)
	.loc 7 966 0
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L538
	.loc 7 967 0
	movb	$1, -544(%rbp)
	.loc 7 968 0
	movb	$48, -543(%rbp)
.L538:
	.loc 7 970 0
	movl	$816, -784(%rbp)
	.loc 7 971 0
	jmp	.L537
.L385:
	.loc 7 974 0
	orl	$32, -764(%rbp)
	.loc 7 975 0
	movl	$16, -788(%rbp)
	.loc 7 976 0
	andl	$-17, -764(%rbp)
.L379:
	.loc 7 981 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$88, %al
	jne	.L539
	.loc 7 981 0 is_stmt 0 discriminator 1
	leaq	_ZZ16stbsp_vsprintfcbE4hexu(%rip), %rax
	jmp	.L540
.L539:
	.loc 7 981 0 discriminator 2
	leaq	_ZZ16stbsp_vsprintfcbE3hex(%rip), %rax
.L540:
	.loc 7 981 0 discriminator 4
	movq	%rax, -592(%rbp)
	.loc 7 982 0 is_stmt 1 discriminator 4
	movl	$1088, -784(%rbp)
	.loc 7 983 0 discriminator 4
	movb	$0, -544(%rbp)
	.loc 7 984 0 discriminator 4
	movl	-764(%rbp), %eax
	andl	$8, %eax
	testl	%eax, %eax
	je	.L721
	.loc 7 985 0
	movb	$2, -544(%rbp)
	.loc 7 986 0
	movb	$48, -543(%rbp)
	.loc 7 987 0
	movq	-592(%rbp), %rax
	addq	$16, %rax
	movzbl	(%rax), %eax
	movb	%al, -542(%rbp)
	jmp	.L537
.L721:
	.loc 7 989 0
	nop
.L537:
	.loc 7 991 0
	movl	-764(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L541
	.loc 7 992 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L542
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
	jmp	.L543
.L542:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L543:
	movq	(%rax), %rax
	.loc 7 992 0
	movq	%rax, -632(%rbp)
	jmp	.L544
.L541:
	.loc 7 994 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L545
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
	jmp	.L546
.L545:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L546:
	movl	(%rax), %eax
	movl	%eax, %eax
	.loc 7 994 0
	movq	%rax, -632(%rbp)
.L544:
	.loc 7 996 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -600(%rbp)
	.loc 7 997 0
	movl	$0, -780(%rbp)
	.loc 7 999 0
	movb	$0, -536(%rbp)
	.loc 7 1000 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L551
	.loc 7 1001 0
	movb	$0, -544(%rbp)
	.loc 7 1002 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jne	.L551
	.loc 7 1003 0
	movl	$0, -784(%rbp)
	.loc 7 1004 0
	movl	-784(%rbp), %eax
	shrl	$4, %eax
	sall	$24, %eax
	andl	$251658240, %eax
	movl	%eax, -756(%rbp)
	.loc 7 1005 0
	jmp	.L401
.L551:
	.loc 7 1010 0
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
	.loc 7 1011 0
	movq	-632(%rbp), %rdx
	movl	-784(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movq	%rax, -632(%rbp)
	.loc 7 1012 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L548
	.loc 7 1012 0 is_stmt 0 discriminator 1
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-788(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L722
.L548:
	.loc 7 1014 0 is_stmt 1
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L551
	.loc 7 1015 0
	movl	-784(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -784(%rbp)
	.loc 7 1016 0
	movl	-784(%rbp), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	xorl	%edx, %eax
	andl	$15, %eax
	testl	%eax, %eax
	jne	.L551
	.loc 7 1017 0
	movl	-784(%rbp), %eax
	andl	$-16, %eax
	movl	%eax, -784(%rbp)
	.loc 7 1018 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 7 1010 0
	jmp	.L551
.L722:
	.loc 7 1013 0
	nop
	.loc 7 1023 0
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
	.loc 7 1025 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 7 1027 0
	jmp	.L401
.L381:
.LBB98:
	.loc 7 1033 0
	movl	-764(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	je	.L552
.LBB99:
	.loc 7 1034 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L553
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
	jmp	.L554
.L553:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L554:
	movq	(%rax), %rax
	movq	%rax, -552(%rbp)
	.loc 7 1035 0
	movq	-552(%rbp), %rax
	movq	%rax, -632(%rbp)
	.loc 7 1036 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	je	.L556
	.loc 7 1036 0 is_stmt 0 discriminator 1
	cmpq	$0, -552(%rbp)
	jns	.L556
	.loc 7 1037 0 is_stmt 1
	movq	-552(%rbp), %rax
	negq	%rax
	movq	%rax, -632(%rbp)
	.loc 7 1038 0
	orl	$128, -764(%rbp)
	jmp	.L556
.L552:
.LBE99:
.LBB100:
	.loc 7 1041 0
	movq	-840(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L557
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
	jmp	.L558
.L557:
	movq	-840(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-840(%rbp), %rdx
	movq	%rcx, 8(%rdx)
.L558:
	movl	(%rax), %eax
	movl	%eax, -712(%rbp)
	.loc 7 1042 0
	movl	-712(%rbp), %eax
	movl	%eax, %eax
	movq	%rax, -632(%rbp)
	.loc 7 1043 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$117, %al
	je	.L556
	.loc 7 1043 0 is_stmt 0 discriminator 1
	cmpl	$0, -712(%rbp)
	jns	.L556
	.loc 7 1044 0 is_stmt 1
	movl	-712(%rbp), %eax
	negl	%eax
	movl	%eax, %eax
	movq	%rax, -632(%rbp)
	.loc 7 1045 0
	orl	$128, -764(%rbp)
.L556:
.LBE100:
.LBE98:
	.loc 7 1050 0
	movl	-764(%rbp), %eax
	andl	$256, %eax
	testl	%eax, %eax
	je	.L559
	.loc 7 1051 0
	movq	-632(%rbp), %rax
	cmpq	$1023, %rax
	ja	.L560
	.loc 7 1052 0
	movl	$0, -788(%rbp)
	jmp	.L561
.L560:
	.loc 7 1053 0
	movl	-788(%rbp), %eax
	cmpl	$-1, %eax
	jne	.L561
	.loc 7 1054 0
	movl	$1, -788(%rbp)
.L561:
	.loc 7 1055 0
	movq	-632(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -584(%rbp)
	.loc 7 1056 0
	jmp	.L476
.L559:
	.loc 7 1061 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, -600(%rbp)
	.loc 7 1062 0
	movl	$0, -784(%rbp)
.L580:
.LBB101:
.LBB102:
	.loc 7 1066 0
	movq	-600(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -568(%rbp)
	.loc 7 1067 0
	movq	-632(%rbp), %rax
	cmpq	$99999999, %rax
	jbe	.L562
	.loc 7 1068 0
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
	.loc 7 1069 0
	movq	-632(%rbp), %rax
	movabsq	$-6067343680855748867, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$26, %rax
	movq	%rax, -632(%rbp)
	jmp	.L563
.L562:
	.loc 7 1071 0
	movq	-632(%rbp), %rax
	movl	%eax, -760(%rbp)
	.loc 7 1072 0
	movq	$0, -632(%rbp)
.L563:
	.loc 7 1074 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L571
.L565:
	.loc 7 1076 0
	subq	$2, -600(%rbp)
	.loc 7 1077 0
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
	.loc 7 1078 0
	movl	-760(%rbp), %eax
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	%eax, -760(%rbp)
	.loc 7 1079 0
	cmpl	$0, -760(%rbp)
	je	.L571
	.loc 7 1075 0
	jmp	.L565
.L571:
	.loc 7 1081 0
	cmpl	$0, -760(%rbp)
	je	.L566
	.loc 7 1082 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L567
	.loc 7 1082 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -784(%rbp)
	cmpl	$3, %eax
	jne	.L567
	.loc 7 1082 0 discriminator 3
	movl	$1, %eax
	jmp	.L568
.L567:
	.loc 7 1082 0 discriminator 4
	movl	$0, %eax
.L568:
	.loc 7 1082 0 discriminator 6
	testb	%al, %al
	je	.L569
	.loc 7 1083 0 is_stmt 1
	movl	$0, -784(%rbp)
	.loc 7 1084 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 7 1085 0
	subq	$1, -568(%rbp)
	jmp	.L571
.L569:
	.loc 7 1087 0
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
	.loc 7 1088 0
	movl	-760(%rbp), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$3, %eax
	movl	%eax, -760(%rbp)
	.loc 7 1081 0
	jmp	.L571
.L566:
	.loc 7 1091 0
	movq	-632(%rbp), %rax
	testq	%rax, %rax
	jne	.L572
	.loc 7 1092 0
	movq	-600(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L723
	.loc 7 1092 0 is_stmt 0 discriminator 1
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	cmpq	%rax, -600(%rbp)
	je	.L723
	.loc 7 1093 0 is_stmt 1
	addq	$1, -600(%rbp)
	.loc 7 1094 0
	jmp	.L723
.L572:
	.loc 7 1096 0
	movq	-600(%rbp), %rax
	cmpq	-568(%rbp), %rax
	je	.L580
	.loc 7 1097 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L576
	.loc 7 1097 0 is_stmt 0 discriminator 1
	movl	-784(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -784(%rbp)
	cmpl	$3, %eax
	jne	.L576
	.loc 7 1097 0 discriminator 3
	movl	$1, %eax
	jmp	.L577
.L576:
	.loc 7 1097 0 discriminator 4
	movl	$0, %eax
.L577:
	.loc 7 1097 0 discriminator 6
	testb	%al, %al
	je	.L578
	.loc 7 1098 0 is_stmt 1
	movl	$0, -784(%rbp)
	.loc 7 1099 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 7 1100 0
	subq	$1, -568(%rbp)
	jmp	.L572
.L578:
	.loc 7 1102 0
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	$48, (%rax)
	.loc 7 1096 0
	jmp	.L572
.L723:
	.loc 7 1094 0
	nop
.LBE102:
.LBE101:
	.loc 7 1106 0
	movb	$0, -536(%rbp)
	.loc 7 1107 0
	leaq	-544(%rbp), %rdx
	movl	-764(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_ZL16stbsp__lead_signjPc
	.loc 7 1110 0
	leaq	-528(%rbp), %rax
	addq	$512, %rax
	movq	%rax, %rdx
	movq	-600(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -784(%rbp)
	.loc 7 1111 0
	movl	-784(%rbp), %eax
	testl	%eax, %eax
	jne	.L581
	.loc 7 1112 0
	subq	$1, -600(%rbp)
	movq	-600(%rbp), %rax
	movb	$48, (%rax)
	.loc 7 1113 0
	movl	$1, -784(%rbp)
.L581:
	.loc 7 1115 0
	movl	-784(%rbp), %eax
	addl	$50331648, %eax
	movl	%eax, -756(%rbp)
	.loc 7 1116 0
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jns	.L724
	.loc 7 1117 0
	movl	$0, -788(%rbp)
	jmp	.L401
.L724:
	.loc 7 1119 0
	nop
.L401:
	.loc 7 1121 0
	movl	-788(%rbp), %eax
	movl	-784(%rbp), %edx
	cmpl	%edx, %eax
	jge	.L582
	.loc 7 1122 0
	movl	-784(%rbp), %eax
	movl	%eax, -788(%rbp)
.L582:
	.loc 7 1123 0
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
	.loc 7 1124 0
	movl	-760(%rbp), %eax
	cmpl	%eax, -772(%rbp)
	jge	.L583
	.loc 7 1125 0
	movl	-760(%rbp), %eax
	movl	%eax, -772(%rbp)
.L583:
	.loc 7 1126 0
	movl	-772(%rbp), %eax
	subl	-760(%rbp), %eax
	movl	%eax, -772(%rbp)
	.loc 7 1127 0
	movl	-788(%rbp), %eax
	movl	%eax, %edx
	movl	-784(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -788(%rbp)
	.loc 7 1130 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L584
	.loc 7 1131 0
	movl	-764(%rbp), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	.L585
	.loc 7 1133 0
	movl	-788(%rbp), %eax
	cmpl	%eax, -772(%rbp)
	jle	.L586
	.loc 7 1133 0 is_stmt 0 discriminator 1
	movl	-772(%rbp), %eax
	jmp	.L587
.L586:
	.loc 7 1133 0 discriminator 2
	movl	-788(%rbp), %eax
.L587:
	.loc 7 1133 0 discriminator 4
	movl	%eax, -788(%rbp)
	.loc 7 1134 0 is_stmt 1 discriminator 4
	movl	$0, -772(%rbp)
	jmp	.L584
.L585:
	.loc 7 1136 0
	andl	$-65, -764(%rbp)
.L584:
.LBB103:
	.loc 7 1141 0
	movl	-788(%rbp), %edx
	movl	-772(%rbp), %eax
	addl	%edx, %eax
	testl	%eax, %eax
	je	.L589
.LBB104:
.LBB105:
	.loc 7 1146 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L590
.L603:
.LBB106:
	.loc 7 1147 0
	cmpl	$0, -772(%rbp)
	jle	.L590
.LBB107:
	.loc 7 1148 0
	movl	-772(%rbp), %eax
	movl	%eax, -748(%rbp)
.LBB108:
	cmpq	$0, -808(%rbp)
	je	.L592
.LBB109:
	.loc 7 1148 0 is_stmt 0 discriminator 1
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
	jle	.L592
	.loc 7 1148 0 discriminator 2
	movl	-708(%rbp), %eax
	movl	%eax, -748(%rbp)
.L592:
.LBE109:
.LBE108:
	.loc 7 1149 0 is_stmt 1
	movl	-748(%rbp), %eax
	subl	%eax, -772(%rbp)
.L596:
	.loc 7 1150 0
	cmpl	$0, -748(%rbp)
	je	.L598
	.loc 7 1151 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L725
	.loc 7 1153 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 7 1154 0
	subl	$1, -748(%rbp)
	.loc 7 1150 0
	jmp	.L596
.L725:
	.loc 7 1152 0
	nop
.L598:
	.loc 7 1156 0
	cmpl	$3, -748(%rbp)
	jle	.L597
	.loc 7 1157 0
	movq	-616(%rbp), %rax
	movl	$538976288, (%rax)
	.loc 7 1158 0
	addq	$4, -616(%rbp)
	.loc 7 1159 0
	subl	$4, -748(%rbp)
	.loc 7 1156 0
	jmp	.L598
.L597:
	.loc 7 1161 0
	cmpl	$0, -748(%rbp)
	je	.L599
	.loc 7 1162 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 7 1163 0
	subl	$1, -748(%rbp)
	.loc 7 1161 0
	jmp	.L597
.L599:
.LBB110:
.LBB111:
	.loc 7 1165 0
	cmpq	$0, -808(%rbp)
	je	.L603
.LBB112:
.LBB113:
	.loc 7 1165 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -704(%rbp)
	movl	-704(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L603
	.loc 7 1165 0 discriminator 2
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
	jne	.L726
.LBE113:
.LBE112:
.LBE111:
.LBE110:
.LBE107:
	.loc 7 1147 0 is_stmt 1 discriminator 5
	jmp	.L603
.L590:
.LBE106:
.LBE105:
	.loc 7 1169 0
	leaq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L611:
	.loc 7 1170 0
	movzbl	-544(%rbp), %eax
	testb	%al, %al
	je	.L604
.LBB120:
	.loc 7 1171 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -748(%rbp)
.LBB121:
	cmpq	$0, -808(%rbp)
	je	.L605
.LBB122:
	.loc 7 1171 0 is_stmt 0 discriminator 1
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
	jle	.L605
	.loc 7 1171 0 discriminator 2
	movl	-700(%rbp), %eax
	movl	%eax, -748(%rbp)
.L605:
.LBE122:
.LBE121:
	.loc 7 1172 0 is_stmt 1
	movzbl	-544(%rbp), %eax
	movl	%eax, %edx
	movl	-748(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -544(%rbp)
.L608:
	.loc 7 1173 0
	cmpl	$0, -748(%rbp)
	je	.L607
	.loc 7 1174 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 7 1175 0
	subl	$1, -748(%rbp)
	.loc 7 1173 0
	jmp	.L608
.L607:
.LBB123:
.LBB124:
	.loc 7 1177 0
	cmpq	$0, -808(%rbp)
	je	.L611
.LBB125:
.LBB126:
	.loc 7 1177 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -696(%rbp)
	movl	-696(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L611
	.loc 7 1177 0 discriminator 2
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
	jne	.L727
.LBE126:
.LBE125:
.LBE124:
.LBE123:
.LBE120:
	.loc 7 1170 0 is_stmt 1 discriminator 7
	jmp	.L611
.L604:
	.loc 7 1181 0
	movl	-756(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, -692(%rbp)
	.loc 7 1182 0
	andl	$16777215, -756(%rbp)
	.loc 7 1183 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L612
	.loc 7 1183 0 is_stmt 0 discriminator 1
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
	jmp	.L613
.L612:
	.loc 7 1183 0 discriminator 2
	movl	$0, %eax
.L613:
	.loc 7 1183 0 discriminator 4
	movl	%eax, -756(%rbp)
.L630:
	.loc 7 1184 0 is_stmt 1
	movl	-788(%rbp), %eax
	testl	%eax, %eax
	jle	.L589
.LBB131:
	.loc 7 1185 0
	movl	-788(%rbp), %eax
	movl	%eax, -748(%rbp)
.LBB132:
	cmpq	$0, -808(%rbp)
	je	.L615
.LBB133:
	.loc 7 1185 0 is_stmt 0 discriminator 1
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
	jle	.L615
	.loc 7 1185 0 discriminator 2
	movl	-688(%rbp), %eax
	movl	%eax, -748(%rbp)
.L615:
.LBE133:
.LBE132:
	.loc 7 1186 0 is_stmt 1
	movl	-788(%rbp), %eax
	subl	-748(%rbp), %eax
	movl	%eax, -788(%rbp)
	.loc 7 1187 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	jne	.L627
.L620:
	.loc 7 1188 0
	cmpl	$0, -748(%rbp)
	je	.L621
	.loc 7 1189 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L728
	.loc 7 1191 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 7 1192 0
	subl	$1, -748(%rbp)
	.loc 7 1188 0
	jmp	.L620
.L728:
	.loc 7 1190 0
	nop
.L621:
	.loc 7 1194 0
	cmpl	$3, -748(%rbp)
	jle	.L627
	.loc 7 1195 0
	movq	-616(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 7 1196 0
	addq	$4, -616(%rbp)
	.loc 7 1197 0
	subl	$4, -748(%rbp)
	.loc 7 1194 0
	jmp	.L621
.L627:
	.loc 7 1200 0
	cmpl	$0, -748(%rbp)
	je	.L622
	.loc 7 1201 0
	movl	-764(%rbp), %eax
	andl	$64, %eax
	testl	%eax, %eax
	je	.L623
	.loc 7 1201 0 is_stmt 0 discriminator 1
	movl	-756(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -756(%rbp)
	cmpl	%eax, -692(%rbp)
	jne	.L623
	.loc 7 1201 0 discriminator 3
	movl	$1, %eax
	jmp	.L624
.L623:
	.loc 7 1201 0 discriminator 4
	movl	$0, %eax
.L624:
	.loc 7 1201 0 discriminator 6
	testb	%al, %al
	je	.L625
	.loc 7 1202 0 is_stmt 1
	movl	$0, -756(%rbp)
	.loc 7 1203 0
	movzbl	_ZL12stbsp__comma(%rip), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	jmp	.L626
.L625:
	.loc 7 1205 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
.L626:
	.loc 7 1206 0
	subl	$1, -748(%rbp)
	.loc 7 1200 0
	jmp	.L627
.L622:
.LBB134:
.LBB135:
	.loc 7 1208 0
	cmpq	$0, -808(%rbp)
	je	.L630
.LBB136:
.LBB137:
	.loc 7 1208 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -684(%rbp)
	movl	-684(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L630
	.loc 7 1208 0 discriminator 2
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
	jne	.L729
.LBE137:
.LBE136:
.LBE135:
.LBE134:
.LBE131:
	.loc 7 1184 0 is_stmt 1 discriminator 9
	jmp	.L630
.L589:
.LBE104:
.LBE103:
	.loc 7 1213 0
	leaq	-544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L638:
	.loc 7 1214 0
	movzbl	-544(%rbp), %eax
	testb	%al, %al
	je	.L631
.LBB146:
	.loc 7 1216 0
	movzbl	-544(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -744(%rbp)
.LBB147:
	cmpq	$0, -808(%rbp)
	je	.L632
.LBB148:
	.loc 7 1216 0 is_stmt 0 discriminator 1
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
	jle	.L632
	.loc 7 1216 0 discriminator 2
	movl	-680(%rbp), %eax
	movl	%eax, -744(%rbp)
.L632:
.LBE148:
.LBE147:
	.loc 7 1217 0 is_stmt 1
	movzbl	-544(%rbp), %eax
	movl	%eax, %edx
	movl	-744(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -544(%rbp)
.L635:
	.loc 7 1218 0
	cmpl	$0, -744(%rbp)
	je	.L634
	.loc 7 1219 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 7 1220 0
	subl	$1, -744(%rbp)
	.loc 7 1218 0
	jmp	.L635
.L634:
.LBB149:
.LBB150:
	.loc 7 1222 0
	cmpq	$0, -808(%rbp)
	je	.L638
.LBB151:
.LBB152:
	.loc 7 1222 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -676(%rbp)
	movl	-676(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L638
	.loc 7 1222 0 discriminator 2
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
	jne	.L730
.LBE152:
.LBE151:
.LBE150:
.LBE149:
.LBE146:
	.loc 7 1214 0 is_stmt 1 discriminator 11
	jmp	.L638
.L631:
	.loc 7 1226 0
	movl	-784(%rbp), %eax
	movl	%eax, -760(%rbp)
.L647:
	.loc 7 1227 0
	cmpl	$0, -760(%rbp)
	je	.L639
.LBB157:
	.loc 7 1229 0
	movl	-760(%rbp), %eax
	movl	%eax, -740(%rbp)
.LBB158:
	cmpq	$0, -808(%rbp)
	je	.L640
.LBB159:
	.loc 7 1229 0 is_stmt 0 discriminator 1
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
	jle	.L640
	.loc 7 1229 0 discriminator 2
	movl	-672(%rbp), %eax
	movl	%eax, -740(%rbp)
.L640:
.LBE159:
.LBE158:
	.loc 7 1230 0 is_stmt 1
	movl	-740(%rbp), %eax
	subl	%eax, -760(%rbp)
.L643:
	.loc 7 1231 0 discriminator 2
	cmpl	$3, -740(%rbp)
	jle	.L642
	.loc 7 1231 0 is_stmt 0 discriminator 1
	movq	-600(%rbp), %rax
	movl	(%rax), %edx
	movq	-616(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -616(%rbp)
	addq	$4, -600(%rbp)
	subl	$4, -740(%rbp)
	jmp	.L643
.L642:
	.loc 7 1237 0 is_stmt 1
	cmpl	$0, -740(%rbp)
	je	.L644
	.loc 7 1238 0
	movq	-600(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -600(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 7 1239 0
	subl	$1, -740(%rbp)
	.loc 7 1237 0
	jmp	.L642
.L644:
.LBB160:
.LBB161:
	.loc 7 1241 0
	cmpq	$0, -808(%rbp)
	je	.L647
.LBB162:
.LBB163:
	.loc 7 1241 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -668(%rbp)
	movl	-668(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L647
	.loc 7 1241 0 discriminator 2
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
	jne	.L731
.LBE163:
.LBE162:
.LBE161:
.LBE160:
.LBE157:
	.loc 7 1227 0 is_stmt 1 discriminator 13
	jmp	.L647
.L639:
	.loc 7 1245 0
	cmpl	$0, -768(%rbp)
	je	.L648
.LBB168:
	.loc 7 1247 0
	movl	-768(%rbp), %eax
	movl	%eax, -736(%rbp)
.LBB169:
	cmpq	$0, -808(%rbp)
	je	.L649
.LBB170:
	.loc 7 1247 0 is_stmt 0 discriminator 1
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
	jle	.L649
	.loc 7 1247 0 discriminator 2
	movl	-664(%rbp), %eax
	movl	%eax, -736(%rbp)
.L649:
.LBE170:
.LBE169:
	.loc 7 1248 0 is_stmt 1
	movl	-736(%rbp), %eax
	subl	%eax, -768(%rbp)
.L653:
	.loc 7 1249 0
	cmpl	$0, -736(%rbp)
	je	.L655
	.loc 7 1250 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L732
	.loc 7 1252 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 7 1253 0
	subl	$1, -736(%rbp)
	.loc 7 1249 0
	jmp	.L653
.L732:
	.loc 7 1251 0
	nop
.L655:
	.loc 7 1255 0
	cmpl	$3, -736(%rbp)
	jle	.L654
	.loc 7 1256 0
	movq	-616(%rbp), %rax
	movl	$808464432, (%rax)
	.loc 7 1257 0
	addq	$4, -616(%rbp)
	.loc 7 1258 0
	subl	$4, -736(%rbp)
	.loc 7 1255 0
	jmp	.L655
.L654:
	.loc 7 1260 0
	cmpl	$0, -736(%rbp)
	je	.L656
	.loc 7 1261 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$48, (%rax)
	.loc 7 1262 0
	subl	$1, -736(%rbp)
	.loc 7 1260 0
	jmp	.L654
.L656:
.LBB171:
.LBB172:
	.loc 7 1264 0
	cmpq	$0, -808(%rbp)
	je	.L639
.LBB173:
.LBB174:
	.loc 7 1264 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -660(%rbp)
	movl	-660(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L639
	.loc 7 1264 0 discriminator 2
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
	jne	.L733
.LBE174:
.LBE173:
.LBE172:
.LBE171:
.LBE168:
	.loc 7 1245 0 is_stmt 1 discriminator 15
	jmp	.L639
.L648:
	.loc 7 1268 0
	leaq	-536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)
.L666:
	.loc 7 1269 0
	movzbl	-536(%rbp), %eax
	testb	%al, %al
	je	.L659
.LBB179:
	.loc 7 1271 0
	movzbl	-536(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, -732(%rbp)
.LBB180:
	cmpq	$0, -808(%rbp)
	je	.L660
.LBB181:
	.loc 7 1271 0 is_stmt 0 discriminator 1
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
	jle	.L660
	.loc 7 1271 0 discriminator 2
	movl	-656(%rbp), %eax
	movl	%eax, -732(%rbp)
.L660:
.LBE181:
.LBE180:
	.loc 7 1272 0 is_stmt 1
	movzbl	-536(%rbp), %eax
	movl	%eax, %edx
	movl	-732(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, -536(%rbp)
.L663:
	.loc 7 1273 0
	cmpl	$0, -732(%rbp)
	je	.L662
	.loc 7 1274 0
	movq	-624(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -624(%rbp)
	movzbl	(%rax), %edx
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -616(%rbp)
	movb	%dl, (%rax)
	.loc 7 1275 0
	subl	$1, -732(%rbp)
	.loc 7 1273 0
	jmp	.L663
.L662:
.LBB182:
.LBB183:
	.loc 7 1277 0
	cmpq	$0, -808(%rbp)
	je	.L666
.LBB184:
.LBB185:
	.loc 7 1277 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -652(%rbp)
	movl	-652(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L666
	.loc 7 1277 0 discriminator 2
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
	jne	.L734
.LBE185:
.LBE184:
.LBE183:
.LBE182:
.LBE179:
	.loc 7 1269 0 is_stmt 1 discriminator 17
	jmp	.L666
.L659:
.LBB190:
	.loc 7 1281 0
	movl	-764(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L735
.LBB191:
.LBB192:
	.loc 7 1282 0
	cmpl	$0, -772(%rbp)
	jle	.L735
.L680:
.LBB193:
	.loc 7 1283 0
	cmpl	$0, -772(%rbp)
	je	.L735
.LBB194:
	.loc 7 1285 0
	movl	-772(%rbp), %eax
	movl	%eax, -728(%rbp)
.LBB195:
	cmpq	$0, -808(%rbp)
	je	.L670
.LBB196:
	.loc 7 1285 0 is_stmt 0 discriminator 1
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
	jle	.L670
	.loc 7 1285 0 discriminator 2
	movl	-648(%rbp), %eax
	movl	%eax, -728(%rbp)
.L670:
.LBE196:
.LBE195:
	.loc 7 1286 0 is_stmt 1
	movl	-728(%rbp), %eax
	subl	%eax, -772(%rbp)
.L674:
	.loc 7 1287 0
	cmpl	$0, -728(%rbp)
	je	.L676
	.loc 7 1288 0
	movq	-616(%rbp), %rax
	andl	$3, %eax
	testq	%rax, %rax
	je	.L736
	.loc 7 1290 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 7 1291 0
	subl	$1, -728(%rbp)
	.loc 7 1287 0
	jmp	.L674
.L736:
	.loc 7 1289 0
	nop
.L676:
	.loc 7 1293 0
	cmpl	$3, -728(%rbp)
	jle	.L675
	.loc 7 1294 0
	movq	-616(%rbp), %rax
	movl	$538976288, (%rax)
	.loc 7 1295 0
	addq	$4, -616(%rbp)
	.loc 7 1296 0
	subl	$4, -728(%rbp)
	.loc 7 1293 0
	jmp	.L676
.L675:
	.loc 7 1298 0
	movl	-728(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -728(%rbp)
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L677
	.loc 7 1299 0
	movq	-616(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -616(%rbp)
	movb	$32, (%rax)
	.loc 7 1298 0
	jmp	.L675
.L677:
.LBB197:
.LBB198:
	.loc 7 1300 0
	cmpq	$0, -808(%rbp)
	je	.L680
.LBB199:
.LBB200:
	.loc 7 1300 0 is_stmt 0 discriminator 1
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -644(%rbp)
	movl	-644(%rbp), %eax
	addl	$1, %eax
	cmpl	$511, %eax
	jle	.L680
	.loc 7 1300 0 discriminator 2
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
	jne	.L737
.LBE200:
.LBE199:
.LBE198:
.LBE197:
.LBE194:
	.loc 7 1283 0 is_stmt 1 discriminator 19
	jmp	.L680
.L373:
.LBE193:
.LBE192:
.LBE191:
.LBE190:
	.loc 7 1306 0
	leaq	-528(%rbp), %rax
	addq	$511, %rax
	movq	%rax, -600(%rbp)
	.loc 7 1307 0
	movq	-608(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-600(%rbp), %rax
	movb	%dl, (%rax)
	.loc 7 1308 0
	movl	$1, -784(%rbp)
	.loc 7 1309 0
	movl	$0, -764(%rbp)
	movl	$0, -772(%rbp)
	.loc 7 1310 0
	movb	$0, -544(%rbp)
	.loc 7 1311 0
	movb	$0, -536(%rbp)
	.loc 7 1312 0
	movl	$0, -788(%rbp)
	.loc 7 1313 0
	movl	$0, -780(%rbp)
	.loc 7 1314 0
	movl	$0, -756(%rbp)
	.loc 7 1315 0
	jmp	.L401
.L735:
	.loc 7 1303 0
	nop
.L406:
.LBE88:
.LBE87:
	.loc 7 1317 0
	addq	$1, -608(%rbp)
.LBE62:
	.loc 7 1318 0
	jmp	.L329
.L726:
.LBB219:
.LBB216:
.LBB215:
.LBB209:
.LBB145:
.LBB142:
.LBB119:
.LBB118:
.LBB117:
.LBB116:
.LBB115:
.LBB114:
	.loc 7 1165 0
	nop
	jmp	.L682
.L727:
.LBE114:
.LBE115:
.LBE116:
.LBE117:
.LBE118:
.LBE119:
.LBE142:
.LBB143:
.LBB130:
.LBB129:
.LBB128:
.LBB127:
	.loc 7 1177 0
	nop
	jmp	.L682
.L729:
.LBE127:
.LBE128:
.LBE129:
.LBE130:
.LBE143:
.LBB144:
.LBB141:
.LBB140:
.LBB139:
.LBB138:
	.loc 7 1208 0
	nop
	jmp	.L682
.L730:
.LBE138:
.LBE139:
.LBE140:
.LBE141:
.LBE144:
.LBE145:
.LBE209:
.LBB210:
.LBB156:
.LBB155:
.LBB154:
.LBB153:
	.loc 7 1222 0
	nop
	jmp	.L682
.L731:
.LBE153:
.LBE154:
.LBE155:
.LBE156:
.LBE210:
.LBB211:
.LBB167:
.LBB166:
.LBB165:
.LBB164:
	.loc 7 1241 0
	nop
	jmp	.L682
.L733:
.LBE164:
.LBE165:
.LBE166:
.LBE167:
.LBE211:
.LBB212:
.LBB178:
.LBB177:
.LBB176:
.LBB175:
	.loc 7 1264 0
	nop
	jmp	.L682
.L734:
.LBE175:
.LBE176:
.LBE177:
.LBE178:
.LBE212:
.LBB213:
.LBB189:
.LBB188:
.LBB187:
.LBB186:
	.loc 7 1277 0
	nop
	jmp	.L682
.L737:
.LBE186:
.LBE187:
.LBE188:
.LBE189:
.LBE213:
.LBB214:
.LBB208:
.LBB207:
.LBB206:
.LBB205:
.LBB204:
.LBB203:
.LBB202:
.LBB201:
	.loc 7 1300 0
	nop
.LBE201:
.LBE202:
.LBE203:
.LBE204:
.LBE205:
.LBE206:
.LBE207:
.LBE208:
.LBE214:
.LBE215:
.LBE216:
	.loc 7 345 0
	jmp	.L682
.L696:
.LBB217:
.LBB85:
.LBB83:
	.loc 7 344 0
	nop
.L681:
.LBE83:
.LBE85:
.LBE217:
.LBE219:
.LBE61:
.LBB221:
	.loc 7 1321 0
	cmpq	$0, -808(%rbp)
	jne	.L683
	.loc 7 1322 0
	movq	-616(%rbp), %rax
	movb	$0, (%rax)
	jmp	.L682
.L683:
.LBB222:
.LBB223:
	.loc 7 1324 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -636(%rbp)
	movl	-636(%rbp), %eax
	addl	$511, %eax
	cmpl	$511, %eax
	jle	.L738
	.loc 7 1324 0 is_stmt 0 discriminator 1
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
	jmp	.L682
.L697:
.LBE223:
.LBE222:
.LBE221:
.LBB224:
.LBB220:
.LBB218:
.LBB86:
.LBB84:
.LBB73:
.LBB72:
.LBB71:
.LBB70:
	.loc 7 345 0 is_stmt 1
	nop
	jmp	.L682
.L738:
.LBE70:
.LBE71:
.LBE72:
.LBE73:
.LBE84:
.LBE86:
.LBE218:
.LBE220:
.LBE224:
	.loc 7 1326 0
	nop
.L682:
	.loc 7 1327 0
	movq	-616(%rbp), %rdx
	movq	-824(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, %edx
	movl	-776(%rbp), %eax
	addl	%edx, %eax
	.loc 7 1328 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L685
	call	__stack_chk_fail@PLT
.L685:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE83:
	.size	stbsp_vsprintfcb, .-stbsp_vsprintfcb
	.globl	stbsp_sprintf
	.type	stbsp_sprintf, @function
stbsp_sprintf:
.LFB84:
	.loc 7 1350 0
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
	je	.L740
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L740:
	.loc 7 1350 0
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 7 1353 0
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 7 1354 0
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
	.loc 7 1356 0
	movl	-212(%rbp), %eax
	.loc 7 1357 0
	movq	-184(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L742
	call	__stack_chk_fail@PLT
.L742:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE84:
	.size	stbsp_sprintf, .-stbsp_sprintf
	.type	_ZL21stbsp__clamp_callbackPKcPvi, @function
_ZL21stbsp__clamp_callbackPKcPvi:
.LFB85:
	.loc 7 1367 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	.loc 7 1368 0
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	.loc 7 1369 0
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movl	-52(%rbp), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 7 1371 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -52(%rbp)
	jle	.L744
	.loc 7 1372 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -52(%rbp)
.L744:
.LBB225:
	.loc 7 1374 0
	cmpl	$0, -52(%rbp)
	je	.L745
.LBB226:
.LBB227:
	.loc 7 1375 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -40(%rbp)
	je	.L746
.LBB228:
	.loc 7 1378 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 7 1379 0
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 7 1380 0
	movl	-52(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L748:
	.loc 7 1382 0
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
	.loc 7 1383 0
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L746
	.loc 7 1381 0
	jmp	.L748
.L746:
.LBE228:
.LBE227:
	.loc 7 1385 0
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movl	-52(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 7 1386 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	subl	-52(%rbp), %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
.L745:
.LBE226:
.LBE225:
	.loc 7 1389 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.L749
	.loc 7 1390 0
	movq	-16(%rbp), %rax
	addq	$16, %rax
	jmp	.L750
.L749:
	.loc 7 1391 0
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cmpl	$511, %eax
	jle	.L751
	.loc 7 1391 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.L753
.L751:
	.loc 7 1391 0 discriminator 2
	movq	-16(%rbp), %rax
	addq	$16, %rax
.L753:
	.loc 7 1391 0
	nop
.L750:
	.loc 7 1392 0 is_stmt 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE85:
	.size	_ZL21stbsp__clamp_callbackPKcPvi, .-_ZL21stbsp__clamp_callbackPKcPvi
	.type	_ZL27stbsp__count_clamp_callbackPKcPvi, @function
_ZL27stbsp__count_clamp_callbackPKcPvi:
.LFB86:
	.loc 7 1395 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 7 1396 0
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 7 1399 0
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 12(%rax)
	.loc 7 1400 0
	movq	-8(%rbp), %rax
	addq	$16, %rax
	.loc 7 1401 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE86:
	.size	_ZL27stbsp__count_clamp_callbackPKcPvi, .-_ZL27stbsp__count_clamp_callbackPKcPvi
	.globl	stbsp_vsnprintf
	.type	stbsp_vsnprintf, @function
stbsp_vsnprintf:
.LFB87:
	.loc 7 1404 0
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
	.loc 7 1404 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB229:
	.loc 7 1407 0
	cmpl	$0, -572(%rbp)
	jne	.L757
	.loc 7 1407 0 is_stmt 0 discriminator 1
	cmpq	$0, -568(%rbp)
	jne	.L757
	.loc 7 1409 0 is_stmt 1
	movl	$0, -532(%rbp)
	.loc 7 1411 0
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
	jmp	.L758
.L757:
.LBB230:
	.loc 7 1417 0
	movq	-568(%rbp), %rax
	movq	%rax, -544(%rbp)
	.loc 7 1418 0
	movl	-572(%rbp), %eax
	movl	%eax, -536(%rbp)
	.loc 7 1419 0
	movl	$0, -532(%rbp)
	.loc 7 1421 0
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
	.loc 7 1424 0
	movq	-544(%rbp), %rax
	movq	%rax, %rdx
	movq	-568(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -548(%rbp)
	.loc 7 1425 0
	movl	-548(%rbp), %eax
	cmpl	-572(%rbp), %eax
	jl	.L759
	.loc 7 1426 0
	movl	-572(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -548(%rbp)
.L759:
	.loc 7 1427 0
	movl	-548(%rbp), %eax
	movslq	%eax, %rdx
	movq	-568(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
.L758:
.LBE230:
.LBE229:
	.loc 7 1430 0
	movl	-532(%rbp), %eax
	.loc 7 1431 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L761
	call	__stack_chk_fail@PLT
.L761:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE87:
	.size	stbsp_vsnprintf, .-stbsp_vsnprintf
	.globl	stbsp_snprintf
	.type	stbsp_snprintf, @function
stbsp_snprintf:
.LFB88:
	.loc 7 1434 0
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
	je	.L763
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L763:
	.loc 7 1434 0
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 7 1437 0
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 7 1439 0
	leaq	-208(%rbp), %rcx
	movq	-248(%rbp), %rdx
	movl	-236(%rbp), %esi
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	call	stbsp_vsnprintf
	movl	%eax, -212(%rbp)
	.loc 7 1442 0
	movl	-212(%rbp), %eax
	.loc 7 1443 0
	movq	-184(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L765
	call	__stack_chk_fail@PLT
.L765:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE88:
	.size	stbsp_snprintf, .-stbsp_snprintf
	.globl	stbsp_vsprintf
	.type	stbsp_vsprintf, @function
stbsp_vsprintf:
.LFB89:
	.loc 7 1446 0
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
	.loc 7 1447 0
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	stbsp_vsprintfcb
	.loc 7 1448 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE89:
	.size	stbsp_vsprintf, .-stbsp_vsprintf
	.type	_ZL20stbsp__real_to_partsPxPid, @function
_ZL20stbsp__real_to_partsPxPid:
.LFB90:
	.loc 7 1465 0
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
	.loc 7 1465 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 7 1467 0
	movq	$0, -16(%rbp)
	.loc 7 1470 0
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
.LBB231:
	.loc 7 1472 0
	movl	$0, -28(%rbp)
.L770:
	.loc 7 1472 0 is_stmt 0 discriminator 3
	cmpl	$7, -28(%rbp)
	jg	.L769
	.loc 7 1472 0 discriminator 2
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
	jmp	.L770
.L769:
.LBE231:
	.loc 7 1474 0 is_stmt 1
	movq	-16(%rbp), %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	.loc 7 1475 0
	movq	-16(%rbp), %rax
	sarq	$52, %rax
	andl	$2047, %eax
	subl	$1023, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	.loc 7 1477 0
	movq	-16(%rbp), %rax
	shrq	$63, %rax
	.loc 7 1478 0
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L772
	call	__stack_chk_fail@PLT
.L772:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE90:
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
.LFB91:
	.loc 7 1612 0
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
	.loc 7 1612 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB232:
	.loc 7 1614 0
	cmpl	$0, -332(%rbp)
	js	.L774
	.loc 7 1614 0 is_stmt 0 discriminator 1
	cmpl	$22, -332(%rbp)
	jg	.L774
.LBB233:
.LBB234:
	.loc 7 1615 0 is_stmt 1
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
.LBB235:
	movl	$0, -300(%rbp)
.L776:
	.loc 7 1615 0 is_stmt 0 discriminator 4
	cmpl	$7, -300(%rbp)
	jg	.L775
	.loc 7 1615 0 discriminator 3
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
	jmp	.L776
.L775:
.LBE235:
	.loc 7 1615 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB236:
	movl	$0, -296(%rbp)
.L778:
	.loc 7 1615 0 discriminator 8
	cmpl	$7, -296(%rbp)
	jg	.L777
	.loc 7 1615 0 discriminator 7
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
	jmp	.L778
.L777:
.LBE236:
	.loc 7 1615 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
.LBB237:
	movl	$0, -292(%rbp)
.L780:
	.loc 7 1615 0 discriminator 12
	cmpl	$7, -292(%rbp)
	jg	.L779
	.loc 7 1615 0 discriminator 11
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
	jmp	.L780
.L779:
.LBE237:
	.loc 7 1615 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB238:
	movl	$0, -288(%rbp)
.L782:
	.loc 7 1615 0 discriminator 16
	cmpl	$7, -288(%rbp)
	jg	.L781
	.loc 7 1615 0 discriminator 15
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
	jmp	.L782
.L781:
.LBE238:
	.loc 7 1615 0 discriminator 14
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
.LBE234:
.LBE233:
	jmp	.L783
.L774:
.LBB239:
	.loc 7 1620 0 is_stmt 1
	movl	-332(%rbp), %eax
	movl	%eax, -284(%rbp)
	.loc 7 1621 0
	cmpl	$0, -332(%rbp)
	jns	.L784
	.loc 7 1622 0
	negl	-284(%rbp)
.L784:
	.loc 7 1623 0
	movl	-284(%rbp), %eax
	imull	$713, %eax, %eax
	sarl	$14, %eax
	movl	%eax, -280(%rbp)
	.loc 7 1624 0
	cmpl	$13, -280(%rbp)
	jle	.L785
	.loc 7 1625 0
	movl	$13, -280(%rbp)
.L785:
	.loc 7 1626 0
	movl	-280(%rbp), %eax
	imull	$-23, %eax, %edx
	movl	-284(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -276(%rbp)
	.loc 7 1628 0
	movsd	-328(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 7 1629 0
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB240:
	.loc 7 1630 0
	cmpl	$0, -332(%rbp)
	jns	.L786
.LBB241:
.LBB242:
	.loc 7 1631 0
	cmpl	$0, -276(%rbp)
	je	.L787
.LBB243:
	.loc 7 1632 0
	subl	$1, -276(%rbp)
.LBB244:
	.loc 7 1633 0
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
.LBB245:
	movl	$0, -272(%rbp)
.L789:
	.loc 7 1633 0 is_stmt 0 discriminator 4
	cmpl	$7, -272(%rbp)
	jg	.L788
	.loc 7 1633 0 discriminator 3
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
	jmp	.L789
.L788:
.LBE245:
	.loc 7 1633 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB246:
	movl	$0, -268(%rbp)
.L791:
	.loc 7 1633 0 discriminator 8
	cmpl	$7, -268(%rbp)
	jg	.L790
	.loc 7 1633 0 discriminator 7
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
	jmp	.L791
.L790:
.LBE246:
	.loc 7 1633 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB247:
	movl	$0, -264(%rbp)
.L793:
	.loc 7 1633 0 discriminator 12
	cmpl	$7, -264(%rbp)
	jg	.L792
	.loc 7 1633 0 discriminator 11
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
	jmp	.L793
.L792:
.LBE247:
	.loc 7 1633 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB248:
	movl	$0, -260(%rbp)
.L795:
	.loc 7 1633 0 discriminator 16
	cmpl	$7, -260(%rbp)
	jg	.L794
	.loc 7 1633 0 discriminator 15
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
	jmp	.L795
.L794:
.LBE248:
	.loc 7 1633 0 discriminator 14
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
.LBE244:
	.loc 7 1634 0 is_stmt 1 discriminator 14
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
.L787:
.LBE243:
.LBE242:
.LBB249:
	.loc 7 1636 0
	cmpl	$0, -280(%rbp)
	je	.L783
.LBB250:
.LBB251:
	.loc 7 1637 0
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
.LBE251:
	.loc 7 1638 0
	subl	$1, -280(%rbp)
.LBB252:
	.loc 7 1639 0
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
.LBB253:
	movl	$0, -256(%rbp)
.L798:
	.loc 7 1639 0 is_stmt 0 discriminator 4
	cmpl	$7, -256(%rbp)
	jg	.L797
	.loc 7 1639 0 discriminator 3
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
	jmp	.L798
.L797:
.LBE253:
	.loc 7 1639 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB254:
	movl	$0, -252(%rbp)
.L800:
	.loc 7 1639 0 discriminator 8
	cmpl	$7, -252(%rbp)
	jg	.L799
	.loc 7 1639 0 discriminator 7
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
	jmp	.L800
.L799:
.LBE254:
	.loc 7 1639 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB255:
	movl	$0, -248(%rbp)
.L802:
	.loc 7 1639 0 discriminator 12
	cmpl	$7, -248(%rbp)
	jg	.L801
	.loc 7 1639 0 discriminator 11
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
	jmp	.L802
.L801:
.LBE255:
	.loc 7 1639 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB256:
	movl	$0, -244(%rbp)
.L804:
	.loc 7 1639 0 discriminator 16
	cmpl	$7, -244(%rbp)
	jg	.L803
	.loc 7 1639 0 discriminator 15
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
	jmp	.L804
.L803:
.LBE256:
	.loc 7 1639 0 discriminator 14
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
.LBE252:
	.loc 7 1640 0 is_stmt 1 discriminator 14
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
	.loc 7 1641 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 7 1642 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.LBE250:
	jmp	.L783
.L786:
.LBE249:
.LBE241:
.LBB257:
.LBB258:
	.loc 7 1645 0
	cmpl	$0, -276(%rbp)
	je	.L805
.LBB259:
	.loc 7 1646 0
	movl	-276(%rbp), %eax
	movl	%eax, -284(%rbp)
	.loc 7 1647 0
	cmpl	$22, -276(%rbp)
	jle	.L806
	.loc 7 1648 0
	movl	$22, -276(%rbp)
.L806:
	.loc 7 1649 0
	movl	-276(%rbp), %eax
	subl	%eax, -284(%rbp)
.LBB260:
	.loc 7 1650 0
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
.LBB261:
	movl	$0, -240(%rbp)
.L808:
	.loc 7 1650 0 is_stmt 0 discriminator 4
	cmpl	$7, -240(%rbp)
	jg	.L807
	.loc 7 1650 0 discriminator 3
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
	jmp	.L808
.L807:
.LBE261:
	.loc 7 1650 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB262:
	movl	$0, -236(%rbp)
.L810:
	.loc 7 1650 0 discriminator 8
	cmpl	$7, -236(%rbp)
	jg	.L809
	.loc 7 1650 0 discriminator 7
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
	jmp	.L810
.L809:
.LBE262:
	.loc 7 1650 0 discriminator 6
	movsd	-328(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
.LBB263:
	movl	$0, -232(%rbp)
.L812:
	.loc 7 1650 0 discriminator 12
	cmpl	$7, -232(%rbp)
	jg	.L811
	.loc 7 1650 0 discriminator 11
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
	jmp	.L812
.L811:
.LBE263:
	.loc 7 1650 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB264:
	movl	$0, -228(%rbp)
.L814:
	.loc 7 1650 0 discriminator 16
	cmpl	$7, -228(%rbp)
	jg	.L813
	.loc 7 1650 0 discriminator 15
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
	jmp	.L814
.L813:
.LBE264:
	.loc 7 1650 0 discriminator 14
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
.LBE260:
.LBB265:
	.loc 7 1651 0 is_stmt 1 discriminator 14
	cmpl	$0, -284(%rbp)
	je	.L805
.LBB266:
.LBB267:
	.loc 7 1652 0
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
.LBE267:
.LBB268:
	.loc 7 1653 0
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
.LBB269:
	movl	$0, -224(%rbp)
.L817:
	.loc 7 1653 0 is_stmt 0 discriminator 4
	cmpl	$7, -224(%rbp)
	jg	.L816
	.loc 7 1653 0 discriminator 3
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
	jmp	.L817
.L816:
.LBE269:
	.loc 7 1653 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB270:
	movl	$0, -220(%rbp)
.L819:
	.loc 7 1653 0 discriminator 8
	cmpl	$7, -220(%rbp)
	jg	.L818
	.loc 7 1653 0 discriminator 7
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
	jmp	.L819
.L818:
.LBE270:
	.loc 7 1653 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
.LBB271:
	movl	$0, -216(%rbp)
.L821:
	.loc 7 1653 0 discriminator 12
	cmpl	$7, -216(%rbp)
	jg	.L820
	.loc 7 1653 0 discriminator 11
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
	jmp	.L821
.L820:
.LBE271:
	.loc 7 1653 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB272:
	movl	$0, -212(%rbp)
.L823:
	.loc 7 1653 0 discriminator 16
	cmpl	$7, -212(%rbp)
	jg	.L822
	.loc 7 1653 0 discriminator 15
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
	jmp	.L823
.L822:
.LBE272:
	.loc 7 1653 0 discriminator 14
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
.LBE268:
	.loc 7 1654 0 is_stmt 1 discriminator 14
	movl	-284(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL10stbsp__bot(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	mulsd	-160(%rbp), %xmm0
	movsd	-88(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	.loc 7 1655 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 7 1656 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.L805:
.LBE266:
.LBE265:
.LBE259:
.LBE258:
.LBB273:
	.loc 7 1659 0
	cmpl	$0, -280(%rbp)
	je	.L783
.LBB274:
.LBB275:
	.loc 7 1660 0
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
.LBE275:
	.loc 7 1661 0
	subl	$1, -280(%rbp)
.LBB276:
	.loc 7 1662 0
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
.LBB277:
	movl	$0, -208(%rbp)
.L825:
	.loc 7 1662 0 is_stmt 0 discriminator 4
	cmpl	$7, -208(%rbp)
	jg	.L824
	.loc 7 1662 0 discriminator 3
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
	jmp	.L825
.L824:
.LBE277:
	.loc 7 1662 0 discriminator 2
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB278:
	movl	$0, -204(%rbp)
.L827:
	.loc 7 1662 0 discriminator 8
	cmpl	$7, -204(%rbp)
	jg	.L826
	.loc 7 1662 0 discriminator 7
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
	jmp	.L827
.L826:
.LBE278:
	.loc 7 1662 0 discriminator 6
	movsd	-192(%rbp), %xmm0
	movsd	-184(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB279:
	movl	$0, -200(%rbp)
.L829:
	.loc 7 1662 0 discriminator 12
	cmpl	$7, -200(%rbp)
	jg	.L828
	.loc 7 1662 0 discriminator 11
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
	jmp	.L829
.L828:
.LBE279:
	.loc 7 1662 0 discriminator 10
	movq	-168(%rbp), %rax
	andq	$-134217728, %rax
	movq	%rax, -168(%rbp)
.LBB280:
	movl	$0, -196(%rbp)
.L831:
	.loc 7 1662 0 discriminator 16
	cmpl	$7, -196(%rbp)
	jg	.L830
	.loc 7 1662 0 discriminator 15
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
	jmp	.L831
.L830:
.LBE280:
	.loc 7 1662 0 discriminator 14
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
.LBE276:
	.loc 7 1663 0 is_stmt 1 discriminator 14
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
	.loc 7 1664 0 discriminator 14
	movsd	-112(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
	.loc 7 1665 0 discriminator 14
	movsd	-88(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.L783:
.LBE274:
.LBE273:
.LBE257:
.LBE240:
.LBE239:
.LBE232:
.LBB281:
	.loc 7 1669 0
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
.LBE281:
	.loc 7 1670 0
	movsd	-192(%rbp), %xmm0
	movq	-312(%rbp), %rax
	movsd	%xmm0, (%rax)
	.loc 7 1671 0
	movq	-320(%rbp), %rax
	movsd	-160(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	.loc 7 1672 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L832
	call	__stack_chk_fail@PLT
.L832:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE91:
	.size	_ZL23stbsp__raise_to_power10PdS_di, .-_ZL23stbsp__raise_to_power10PdS_di
	.section	.rodata
.LC20:
	.string	"NaN"
.LC21:
	.string	"Inf"
	.text
	.type	_ZL18stbsp__real_to_strPPKcPjPcPidj, @function
_ZL18stbsp__real_to_strPPKcPjPcPidj:
.LFB92:
	.loc 7 1679 0
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
	.loc 7 1679 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 7 1681 0
	movq	$0, -88(%rbp)
	.loc 7 1684 0
	movsd	-168(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
.LBB282:
	.loc 7 1685 0
	movl	$0, -116(%rbp)
.L835:
	.loc 7 1685 0 is_stmt 0 discriminator 3
	cmpl	$7, -116(%rbp)
	jg	.L834
	.loc 7 1685 0 discriminator 2
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
	jmp	.L835
.L834:
.LBE282:
	.loc 7 1686 0 is_stmt 1
	movq	-88(%rbp), %rax
	sarq	$52, %rax
	andl	$2047, %eax
	movl	%eax, -124(%rbp)
	.loc 7 1687 0
	movq	-88(%rbp), %rax
	shrq	$63, %rax
	movl	%eax, -100(%rbp)
	.loc 7 1688 0
	cmpl	$0, -100(%rbp)
	je	.L836
	.loc 7 1689 0
	movsd	-96(%rbp), %xmm1
	movq	.LC16(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
.L836:
	.loc 7 1691 0
	cmpl	$2047, -124(%rbp)
	jne	.L837
	.loc 7 1693 0
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$4503599627370495, %rax
	andq	%rdx, %rax
	testq	%rax, %rax
	je	.L838
	.loc 7 1693 0 is_stmt 0 discriminator 1
	leaq	.LC20(%rip), %rax
	jmp	.L839
.L838:
	.loc 7 1693 0 discriminator 2
	leaq	.LC21(%rip), %rax
.L839:
	.loc 7 1693 0 discriminator 4
	movq	-136(%rbp), %rdx
	movq	%rax, (%rdx)
	.loc 7 1694 0 is_stmt 1 discriminator 4
	movq	-160(%rbp), %rax
	movl	$28672, (%rax)
	.loc 7 1695 0 discriminator 4
	movq	-144(%rbp), %rax
	movl	$3, (%rax)
	.loc 7 1696 0 discriminator 4
	movl	-100(%rbp), %eax
	jmp	.L875
.L837:
.LBB283:
	.loc 7 1699 0
	cmpl	$0, -124(%rbp)
	jne	.L841
.LBB284:
	.loc 7 1701 0
	movq	-88(%rbp), %rax
	addq	%rax, %rax
	testq	%rax, %rax
	jne	.L842
	.loc 7 1703 0
	movq	-160(%rbp), %rax
	movl	$1, (%rax)
	.loc 7 1704 0
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 7 1705 0
	movq	-152(%rbp), %rax
	movb	$48, (%rax)
	.loc 7 1706 0
	movq	-144(%rbp), %rax
	movl	$1, (%rax)
	.loc 7 1707 0
	movl	-100(%rbp), %eax
	jmp	.L875
.L842:
.LBB285:
	.loc 7 1711 0
	movabsq	$2251799813685248, %rax
	movq	%rax, -64(%rbp)
.L844:
	.loc 7 1712 0
	movq	-88(%rbp), %rax
	andq	-64(%rbp), %rax
	testq	%rax, %rax
	jne	.L841
	.loc 7 1713 0
	subl	$1, -124(%rbp)
	.loc 7 1714 0
	sarq	-64(%rbp)
	.loc 7 1712 0
	jmp	.L844
.L841:
.LBE285:
.LBE284:
.LBE283:
.LBB286:
	.loc 7 1724 0
	movl	-124(%rbp), %eax
	subl	$1023, %eax
	movl	%eax, -120(%rbp)
	.loc 7 1725 0
	cmpl	$0, -120(%rbp)
	jns	.L845
	.loc 7 1725 0 is_stmt 0 discriminator 1
	movl	-120(%rbp), %eax
	imull	$617, %eax, %eax
	leal	2047(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$11, %eax
	jmp	.L846
.L845:
	.loc 7 1725 0 discriminator 2
	movl	-120(%rbp), %eax
	imull	$1233, %eax, %eax
	leal	4095(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$12, %eax
	addl	$1, %eax
.L846:
	.loc 7 1725 0 discriminator 4
	movl	%eax, -120(%rbp)
	.loc 7 1728 0 is_stmt 1 discriminator 4
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
.LBB287:
	.loc 7 1731 0 discriminator 4
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
.LBE287:
	.loc 7 1734 0 discriminator 4
	movq	-88(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$999999999999999999, %rax
	cmpq	%rax, %rdx
	jbe	.L847
	.loc 7 1735 0
	addl	$1, -120(%rbp)
.L847:
.LBE286:
	.loc 7 1739 0
	movl	-172(%rbp), %eax
	testl	%eax, %eax
	jns	.L848
	.loc 7 1739 0 is_stmt 0 discriminator 1
	movl	-172(%rbp), %eax
	andl	$134217727, %eax
	addl	$1, %eax
	jmp	.L849
.L848:
	.loc 7 1739 0 discriminator 2
	movl	-120(%rbp), %edx
	movl	-172(%rbp), %eax
	addl	%edx, %eax
.L849:
	.loc 7 1739 0 discriminator 4
	movl	%eax, -172(%rbp)
.LBB288:
	.loc 7 1740 0 is_stmt 1 discriminator 4
	cmpl	$23, -172(%rbp)
	ja	.L850
.LBB289:
	.loc 7 1741 0
	movl	$1, -112(%rbp)
	.loc 7 1742 0
	movl	$1000000000, %edx
	movq	-88(%rbp), %rax
	cmpq	%rax, %rdx
	ja	.L855
	.loc 7 1743 0
	movl	$10, -112(%rbp)
.L855:
	.loc 7 1744 0
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.L852
	.loc 7 1745 0
	addl	$1, -112(%rbp)
	.loc 7 1746 0
	cmpl	$20, -112(%rbp)
	je	.L878
	.loc 7 1744 0
	jmp	.L855
.L852:
.LBB290:
	.loc 7 1749 0
	movl	-172(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jnb	.L879
.LBB291:
	.loc 7 1752 0
	movl	-112(%rbp), %eax
	subl	-172(%rbp), %eax
	movl	%eax, -72(%rbp)
	.loc 7 1753 0
	movl	-72(%rbp), %eax
	cmpl	$23, %eax
	ja	.L880
	.loc 7 1755 0
	movl	-72(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 7 1756 0
	movq	-24(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	.loc 7 1757 0
	movl	-112(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	_ZL13stbsp__powten(%rip), %rax
	movq	(%rdx,%rax), %rax
	movq	-88(%rbp), %rdx
	cmpq	%rdx, %rax
	ja	.L857
	.loc 7 1758 0
	addl	$1, -120(%rbp)
.L857:
	.loc 7 1759 0
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	-24(%rbp)
	movq	%rax, -88(%rbp)
.LBE291:
	jmp	.L850
.L854:
.L878:
.LBE290:
	.loc 7 1747 0
	nop
	jmp	.L850
.L879:
	.loc 7 1761 0
	nop
	jmp	.L850
.L880:
.LBB293:
.LBB292:
	.loc 7 1754 0
	nop
.L850:
.LBE292:
.LBE293:
.LBE289:
.LBE288:
.LBB294:
	.loc 7 1765 0
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L858
.L863:
.LBB295:
	.loc 7 1768 0
	movq	-88(%rbp), %rdx
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	jle	.L881
	.loc 7 1770 0
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
	jne	.L882
	.loc 7 1772 0
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
	.loc 7 1768 0
	jmp	.L863
.L881:
	.loc 7 1769 0
	nop
	.loc 7 1774 0
	movq	-88(%rbp), %rax
	movl	%eax, -108(%rbp)
.L865:
	.loc 7 1775 0
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
	jne	.L864
	.loc 7 1776 0
	movl	-108(%rbp), %eax
	movl	$274877907, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %eax
	movl	%eax, -108(%rbp)
	.loc 7 1775 0
	jmp	.L865
.L864:
	.loc 7 1777 0
	movl	-108(%rbp), %eax
	movq	%rax, -88(%rbp)
	jmp	.L858
.L862:
.L882:
	.loc 7 1771 0
	nop
.L858:
.LBE295:
.LBE294:
	.loc 7 1782 0
	addq	$64, -152(%rbp)
	.loc 7 1783 0
	movl	$0, -72(%rbp)
.L874:
.LBB296:
.LBB297:
	.loc 7 1786 0
	movq	-152(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -16(%rbp)
	.loc 7 1788 0
	movq	-88(%rbp), %rax
	cmpq	$99999999, %rax
	jle	.L866
	.loc 7 1789 0
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
	.loc 7 1790 0
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
	jmp	.L869
.L866:
	.loc 7 1792 0
	movq	-88(%rbp), %rax
	movl	%eax, -104(%rbp)
	.loc 7 1793 0
	movq	$0, -88(%rbp)
.L869:
	.loc 7 1795 0
	cmpl	$0, -104(%rbp)
	je	.L868
	.loc 7 1796 0
	subq	$2, -152(%rbp)
	.loc 7 1797 0
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
	.loc 7 1798 0
	movl	-104(%rbp), %eax
	movl	$1374389535, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$5, %eax
	movl	%eax, -104(%rbp)
	.loc 7 1799 0
	movl	-72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -72(%rbp)
	.loc 7 1795 0
	jmp	.L869
.L868:
	.loc 7 1801 0
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	jne	.L870
	.loc 7 1802 0
	movl	-72(%rbp), %eax
	testl	%eax, %eax
	je	.L883
	.loc 7 1802 0 is_stmt 0 discriminator 1
	movq	-152(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$48, %al
	jne	.L883
	.loc 7 1803 0 is_stmt 1
	addq	$1, -152(%rbp)
	.loc 7 1804 0
	movl	-72(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc 7 1806 0
	jmp	.L883
.L870:
	.loc 7 1808 0
	movq	-152(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L874
	.loc 7 1809 0
	subq	$1, -152(%rbp)
	movq	-152(%rbp), %rax
	movb	$48, (%rax)
	.loc 7 1810 0
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	.loc 7 1808 0
	jmp	.L870
.L883:
	.loc 7 1806 0
	nop
.LBE297:
.LBE296:
	.loc 7 1814 0
	movq	-160(%rbp), %rax
	movl	-120(%rbp), %edx
	movl	%edx, (%rax)
	.loc 7 1815 0
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 7 1816 0
	movl	-72(%rbp), %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	.loc 7 1817 0
	movl	-100(%rbp), %eax
.L875:
	.loc 7 1818 0 discriminator 1
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L876
	.loc 7 1818 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L876:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE92:
	.size	_ZL18stbsp__real_to_strPPKcPjPcPidj, .-_ZL18stbsp__real_to_strPPKcPjPcPidj
	.globl	GeneratedTag
	.section	.rodata
.LC22:
	.string	"/**   GENERATED    **/"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	GeneratedTag, @object
	.size	GeneratedTag, 8
GeneratedTag:
	.quad	.LC22
	.section	.text._Z13WriteToOutputP11output_dataP12memory_arenaPKcz,"axG",@progbits,_Z13WriteToOutputP11output_dataP12memory_arenaPKcz,comdat
	.weak	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.type	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz, @function
_Z13WriteToOutputP11output_dataP12memory_arenaPKcz:
.LFB93:
	.file 8 "/home/amos/prog/c/amos_libraries/preprocessor/ab_preprocessor2.cpp"
	.loc 8 28 0 is_stmt 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%rdx, -280(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L885
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L885:
	.loc 8 28 0
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	.loc 8 30 0
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	.loc 8 32 0
	movq	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
.L887:
	.loc 8 33 0
	movq	-248(%rbp), %rax
	movq	204808(%rax), %rax
	testq	%rax, %rax
	je	.L886
	.loc 8 35 0
	movq	-248(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -248(%rbp)
	.loc 8 33 0
	jmp	.L887
.L886:
	.loc 8 38 0
	movq	$204800, -240(%rbp)
	.loc 8 39 0
	movq	-248(%rbp), %rax
	movq	204800(%rax), %rax
	movq	%rax, -232(%rbp)
	.loc 8 40 0
	movq	-248(%rbp), %rax
	movq	204800(%rax), %rax
	movl	$204800, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -224(%rbp)
	.loc 8 42 0
	movq	-224(%rbp), %rax
	movl	%eax, %esi
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	stbsp_vsnprintf
	cltq
	movq	%rax, -216(%rbp)
.LBB298:
	.loc 8 44 0
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jnb	.L888
	.loc 8 46 0
	movq	-248(%rbp), %rax
	movq	204800(%rax), %rdx
	movq	-216(%rbp), %rax
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 204800(%rax)
.LBE298:
	.loc 8 61 0
	jmp	.L891
.L888:
.LBB300:
.LBB299:
	.loc 8 53 0
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 8 54 0
	movq	-272(%rbp), %rax
	movl	$1, %edx
	movl	$204816, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 204808(%rax)
	.loc 8 55 0
	movq	-248(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -248(%rbp)
	.loc 8 56 0
	movq	-224(%rbp), %rax
	movl	%eax, %esi
	movq	-248(%rbp), %rdx
	movq	-232(%rbp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-208(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	stbsp_vsnprintf
	movl	%eax, -252(%rbp)
	.loc 8 57 0
	movq	-248(%rbp), %rax
	movq	204800(%rax), %rdx
	movl	-252(%rbp), %eax
	cltq
	addq	%rax, %rdx
	movq	-248(%rbp), %rax
	movq	%rdx, 204800(%rax)
.L891:
.LBE299:
.LBE300:
	.loc 8 61 0
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L890
	call	__stack_chk_fail@PLT
.L890:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE93:
	.size	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz, .-_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.section	.text._Z12CopyToOutputP11output_dataP12memory_arenaPKc,"axG",@progbits,_Z12CopyToOutputP11output_dataP12memory_arenaPKc,comdat
	.weak	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.type	_Z12CopyToOutputP11output_dataP12memory_arenaPKc, @function
_Z12CopyToOutputP11output_dataP12memory_arenaPKc:
.LFB94:
	.loc 8 65 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	.loc 8 65 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 8 66 0
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 8 67 0
	movq	$204800, -32(%rbp)
	.loc 8 68 0
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movl	%eax, -52(%rbp)
	.loc 8 69 0
	movl	$0, -48(%rbp)
.L897:
	.loc 8 70 0
	movl	-52(%rbp), %eax
	cmpl	%eax, -48(%rbp)
	jge	.L899
.LBB301:
	.loc 8 72 0
	movq	-40(%rbp), %rax
	movq	204800(%rax), %rax
	movq	%rax, -24(%rbp)
	.loc 8 73 0
	movq	-40(%rbp), %rax
	movq	204800(%rax), %rax
	movl	$204800, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -16(%rbp)
.LBB302:
	.loc 8 74 0
	cmpq	$1, -16(%rbp)
	jbe	.L894
.LBB303:
	.loc 8 76 0
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	movl	-52(%rbp), %eax
	cmpl	%eax, %edx
	cmovle	%edx, %eax
	movl	%eax, -44(%rbp)
	.loc 8 77 0
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_Z14abs_StringCopyPcPKcm
	.loc 8 78 0
	movq	-40(%rbp), %rax
	movq	204800(%rax), %rdx
	movl	-44(%rbp), %eax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 204800(%rax)
	.loc 8 79 0
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
.LBE303:
	jmp	.L897
.L894:
	.loc 8 83 0
	movq	-40(%rbp), %rax
	movq	204808(%rax), %rax
	testq	%rax, %rax
	jne	.L896
	.loc 8 85 0
	movq	-80(%rbp), %rax
	movl	$1, %edx
	movl	$204816, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 204808(%rax)
.L896:
	.loc 8 87 0
	movq	-40(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -40(%rbp)
.LBE302:
.LBE301:
	.loc 8 70 0
	jmp	.L897
.L899:
	.loc 8 92 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L898
	call	__stack_chk_fail@PLT
.L898:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE94:
	.size	_Z12CopyToOutputP11output_dataP12memory_arenaPKc, .-_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.section	.text._Z12CopyToOutputP11output_dataP12memory_arenaS0_,"axG",@progbits,_Z12CopyToOutputP11output_dataP12memory_arenaS0_,comdat
	.weak	_Z12CopyToOutputP11output_dataP12memory_arenaS0_
	.type	_Z12CopyToOutputP11output_dataP12memory_arenaS0_, @function
_Z12CopyToOutputP11output_dataP12memory_arenaS0_:
.LFB95:
	.loc 8 96 0
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
	.loc 8 97 0
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L902:
	.loc 8 98 0
	cmpq	$0, -8(%rbp)
	je	.L903
	.loc 8 100 0
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 8 101 0
	movq	-8(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 8 98 0
	jmp	.L902
.L903:
	.loc 8 103 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE95:
	.size	_Z12CopyToOutputP11output_dataP12memory_arenaS0_, .-_Z12CopyToOutputP11output_dataP12memory_arenaS0_
	.section	.rodata
	.align 8
.LC23:
	.string	"/***** Queue: %.*s ****/\n// Creating a circular queue of %u elements.\n"
	.align 8
.LC24:
	.string	"struct %.*s_queue\n{\n    %.*s Items[%u];\n    s32 Front;\n    s32 Rear;\n};\n\n"
	.align 8
.LC25:
	.string	"inline void InitializeQueue(%.*s_queue *Queue);\ninline b8 isQueueEmpty(%.*s_queue *Queue);\ninline b8 isQueueFull(%.*s_queue *Queue);\nb8 EnqueueCommand(%.*s_queue *Queue, %.*s Cmd);\n%.*s DequeueCommand(%.*s_queue *Queue);\n"
.LC26:
	.string	"/***********/\n\n"
.LC27:
	.string	"/****** Queue: %.*s ****/\n"
	.align 8
.LC28:
	.string	"inline void\nInitializeQueue(%.*s_queue *Queue)\n{\n  Queue->Front = Queue->Rear = -1;\n}\n\n"
	.align 8
.LC29:
	.string	"inline b8\nisQueueEmpty(%.*s_queue *Queue)\n{\n  b8 Result = (Queue->Front == -1);\n  return Result;\n}\n\n"
	.align 8
.LC30:
	.string	"inline b8 \nisQueueFull(%.*s_queue *Queue)\n{\n  b8 Result = (Queue->Front == Queue->Rear + 1) ||\n  (Queue->Front == 0 && Queue->Rear == (%u-1));\n\n  return Result;\n}\n\n"
	.align 8
.LC31:
	.ascii	"b8\nEnqueue(%.*s_queue *Queue"
	.string	", %.*s Cmd)\n{\n  b8 Result = false;\n  if(!isQueueFull(Queue))\n  {\n    if(Queue->Front == -1)\n    {\n      Queue->Front = 0;\n    }\n    Queue->Rear = (Queue->Rear + 1) %% %u;\n    Queue->Items[Queue->Rear] = Cmd;\n\n    Result = true;\n  }\n  return Result;    \n}\n\n"
	.align 8
.LC32:
	.ascii	"%.*s\nD"
	.string	"equeue(%.*s_queue *Queue)\n{\n%.*s Result = (%.*s)0;\nif(!isQueueEmpty(Queue))\n{\nResult = Queue->Items[Queue->Front];\nif(Queue->Front == Queue->Rear)\n{\nQueue->Front = Queue->Rear = -1;\n}\nelse \n{\nQueue->Front = (Queue->Front + 1) %% %u;\n}\n}\n\nreturn Result;\n}\n\n"
	.text
	.globl	_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_
	.type	_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_, @function
_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_:
.LFB96:
	.file 9 "/home/amos/prog/c/amos_libraries/preprocessor/abp_queue.h"
	.loc 9 20 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rax
	movq	%rsi, %r10
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%r10, %rdi
	movq	%rsi, -64(%rbp)
	movq	%rdi, -56(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	.loc 9 21 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC23(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 26 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %r9d
	movq	-64(%rbp), %r8
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %edi
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC24(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 9 39 0
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %r15d
	movq	-64(%rbp), %r14
	movl	-56(%rbp), %r13d
	movq	-64(%rbp), %r12
	movl	-56(%rbp), %ebx
	movq	-64(%rbp), %r11
	movl	-56(%rbp), %r10d
	movq	-64(%rbp), %r9
	movl	-56(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movl	-56(%rbp), %ecx
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movl	-72(%rbp), %r9d
	movq	-104(%rbp), %r8
	leaq	.LC25(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$96, %rsp
	.loc 9 57 0
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 60 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC27(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 63 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC28(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 71 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC29(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 81 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %edx
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC30(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 94 0
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %r9d
	movq	-64(%rbp), %r8
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	-68(%rbp), %edi
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC31(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 9 117 0
	movq	-64(%rbp), %r10
	movl	-56(%rbp), %r9d
	movq	-64(%rbp), %r8
	movl	-56(%rbp), %edi
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %r12d
	movq	-64(%rbp), %rbx
	movl	-56(%rbp), %edx
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	-68(%rbp), %r11d
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movl	%r12d, %r9d
	movq	%rbx, %r8
	movl	%edx, %ecx
	leaq	.LC32(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$48, %rsp
	.loc 9 144 0
	movq	-80(%rbp), %rcx
	movq	-96(%rbp), %rax
	leaq	.LC26(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 9 147 0
	nop
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE96:
	.size	_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_, .-_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_
	.section	.rodata
	.align 8
.LC33:
	.string	"jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused);\n"
	.align 8
.LC34:
	.string	"u32\nPushJson(char *Json, u32 MaxLength, char const *Tag, %.*s Type, u32 JsonFlags);\n"
	.align 8
.LC35:
	.ascii	"u32\nPushJson(char *Json, u32 MaxLength, char const *Tag, %"
	.string	".*s Type, u32 JsonFlags = 0)\n{\n    u32 Length = 0;\n    b8 isLast = (JsonFlags & JSON_IsLastInList);\n    Length += stbsp_snprintf(Json, MaxLength, \"\\\"%%s\\\":\\\"%%s\\\"\", Tag, EnumToCString(Type));\n    if(!isLast) { Json[Length++] = ','; }\n    return Length;\n}\n\n"
	.align 8
.LC36:
	.string	"jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, u32 Unused)\n"
	.align 8
.LC37:
	.ascii	"{\n    %.*s Result = static_cast<%.*s>(0);\n    s32 NumToken"
	.ascii	"sUsed = 0;\n    \n    s32 TotalTokens = ParseJson(VolatileMe"
	.ascii	"mory, Json, JsonLength, &TokenArray);\n    if(TokenArray)\n "
	.ascii	"   {\n        s32 Index = 0;\n        if((TokenArray[Index]."
	.ascii	"type == JSMN_OBJECT) &&\n           (TotalTokens > 1))\n    "
	.ascii	"    {\n            ++Index;\n        }\n        if(TokenArra"
	.ascii	"y[Index].type == JSMN_STRING)\n        {\n            s32 To"
	.ascii	"kenLength = (TokenArray[Index].end - TokenArray[Index].start"
	.ascii	");\n            abs_stringptr EnumString = {&Json[TokenArray"
	.ascii	"[Index].start]"
	.string	", TokenLength};\n            Result = StringToEnum<%.*s>(EnumString);\n            NumTokensUsed = Index;\n        }\n        else \n        {\n            NumTokensUsed = Index;\n        }\n    }\n    *ObjectOut = Result;\n    return TokenArray + NumTokensUsed;\n}\n\n"
	.text
	.globl	_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.type	_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_, @function
_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_:
.LFB97:
	.file 10 "/home/amos/prog/c/amos_libraries/preprocessor/abp_enums.cpp"
	.loc 10 7 0
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
	.loc 10 7 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 10 8 0
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_Z24abm_BeginTemporaryMemoryP12memory_arena
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	.loc 10 9 0
	movl	$5120, -60(%rbp)
	.loc 10 10 0
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movl	$5120, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -48(%rbp)
	.loc 10 11 0
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movl	$5120, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -40(%rbp)
	.loc 10 12 0
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 13 0
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 14 0
	movl	$0, -56(%rbp)
	.loc 10 15 0
	movl	$0, -52(%rbp)
	.loc 10 18 0
	movq	-72(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	je	.L908
	.loc 10 21 0
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	$5120, %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-56(%rbp), %esi
	movq	-48(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC33(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -56(%rbp)
	.loc 10 24 0
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	$5120, %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-56(%rbp), %esi
	movq	-48(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC34(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -56(%rbp)
	.loc 10 29 0
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	$5120, %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC35(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -52(%rbp)
	.loc 10 43 0
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	$5120, %ecx
	subl	-52(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-52(%rbp), %esi
	movq	-40(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC36(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -52(%rbp)
	.loc 10 49 0
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movq	-72(%rbp), %rax
	movl	8(%rax), %eax
	movl	$5120, %edi
	subl	-52(%rbp), %edi
	movl	%edi, %r11d
	movl	-52(%rbp), %r10d
	movq	-40(%rbp), %rdi
	addq	%r10, %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%eax, %ecx
	leaq	.LC37(%rip), %rdx
	movl	%r11d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$32, %rsp
	addl	%eax, -52(%rbp)
	.loc 10 84 0
	movl	-52(%rbp), %edx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 10 86 0
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 10 87 0
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 10 88 0
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z22abm_EndTemporaryMemory16temporary_memory
.L908:
	.loc 10 90 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L907
	call	__stack_chk_fail@PLT
.L907:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE97:
	.size	_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_, .-_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.section	.rodata
	.align 8
.LC38:
	.string	"const char *EnumToLabel_%.*s(%.*s EnumToken);\n//const char * %.*s_Label%.*s[%.*s_Count];\n"
	.align 8
.LC39:
	.string	"const char * %.*s_Label%.*s[%.*s_Count] = \n{\n"
.LC40:
	.string	"    \"%.*s\",\n"
.LC41:
	.string	"};\n\n"
	.align 8
.LC42:
	.string	"const char *\nEnumToLabel_%.*s(%.*s EnumToken)\n{\n    return %.*s_Label%.*s[int(EnumToken)];\n}\n\n"
	.text
	.globl	_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.type	_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_, @function
_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_:
.LFB98:
	.loc 10 94 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	.loc 10 94 0
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	.loc 10 95 0
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_Z24abm_BeginTemporaryMemoryP12memory_arena
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 10 96 0
	movl	$10240, -120(%rbp)
	.loc 10 97 0
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movl	$10240, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -96(%rbp)
	.loc 10 98 0
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movl	$10240, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -88(%rbp)
	.loc 10 99 0
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 100 0
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 101 0
	movl	$0, -124(%rbp)
	.loc 10 102 0
	movl	$0, -116(%rbp)
.LBB304:
	.loc 10 105 0
	movq	-136(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	je	.L910
.LBB305:
	.loc 10 111 0
	movq	-136(%rbp), %rax
	movq	(%rax), %r10
	movq	-136(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-144(%rbp), %rax
	movq	16(%rax), %r8
	movq	-144(%rbp), %rax
	movl	24(%rax), %edi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %r12d
	movq	-144(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-144(%rbp), %rax
	movl	24(%rax), %eax
	movl	$10240, %r11d
	subl	-124(%rbp), %r11d
	movl	%r11d, %r14d
	movl	-124(%rbp), %r13d
	movq	-96(%rbp), %r11
	addq	%r13, %r11
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%r12d, %r9d
	movq	%rbx, %r8
	movl	%eax, %ecx
	leaq	.LC38(%rip), %rdx
	movl	%r14d, %esi
	movq	%r11, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$64, %rsp
	addl	%eax, -124(%rbp)
	.loc 10 120 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-144(%rbp), %rax
	movl	24(%rax), %r9d
	movq	-136(%rbp), %rax
	movq	(%rax), %r8
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-124(%rbp), %edi
	movl	%edi, %r11d
	movl	-124(%rbp), %r10d
	movq	-96(%rbp), %rdi
	addq	%r10, %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%eax, %ecx
	leaq	.LC39(%rip), %rdx
	movl	%r11d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$32, %rsp
	addl	%eax, -124(%rbp)
	.loc 10 128 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)
.L916:
	.loc 10 129 0
	movq	-136(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -112(%rbp)
	je	.L911
.LBB306:
	.loc 10 131 0
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	.loc 10 132 0
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)
.L914:
	.loc 10 133 0
	movq	-112(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -104(%rbp)
	je	.L912
	.loc 10 135 0
	movq	-144(%rbp), %rax
	movq	24(%rax), %rdx
	movq	16(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L913
	.loc 10 137 0
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	24(%rax), %eax
	movl	%eax, -56(%rbp)
	.loc 10 138 0
	jmp	.L912
.L913:
	.loc 10 140 0
	movq	-104(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc 10 133 0
	jmp	.L914
.L912:
	.loc 10 143 0
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	jne	.L915
	.loc 10 145 0
	movq	-112(%rbp), %rax
	movq	(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
.L915:
	.loc 10 148 0
	movq	-64(%rbp), %rdx
	movl	-56(%rbp), %eax
	movl	$10240, %ecx
	subl	-124(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-124(%rbp), %esi
	movq	-96(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC40(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -124(%rbp)
	.loc 10 152 0
	movq	-112(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -112(%rbp)
.LBE306:
	.loc 10 129 0
	jmp	.L916
.L911:
	.loc 10 155 0
	movl	$10240, %eax
	subl	-124(%rbp), %eax
	movl	%eax, %ecx
	movl	-124(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC41(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -124(%rbp)
	.loc 10 157 0
	movq	-144(%rbp), %rax
	movq	16(%rax), %r8
	movq	-144(%rbp), %rax
	movl	24(%rax), %edi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-144(%rbp), %rax
	movq	16(%rax), %r11
	movq	-144(%rbp), %rax
	movl	24(%rax), %eax
	movl	$10240, %r10d
	subl	-116(%rbp), %r10d
	movl	%r10d, %r12d
	movl	-116(%rbp), %ebx
	movq	-88(%rbp), %r10
	addq	%rbx, %r10
	subq	$8, %rsp
	pushq	%r8
	pushq	%rdi
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movq	%r11, %r8
	movl	%eax, %ecx
	leaq	.LC42(%rip), %rdx
	movl	%r12d, %esi
	movq	%r10, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$48, %rsp
	addl	%eax, -116(%rbp)
	.loc 10 169 0
	movl	-116(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 10 172 0
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 10 173 0
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
.L910:
.LBE305:
.LBE304:
	.loc 10 176 0
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z22abm_EndTemporaryMemory16temporary_memory
	.loc 10 177 0
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L917
	call	__stack_chk_fail@PLT
.L917:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE98:
	.size	_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_, .-_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.section	.rodata
	.align 8
.LC43:
	.ascii	"template<>\nauto StringToEnum<%.*s>("
	.string	"const char *String) -> %.*s;\ntemplate<>\nauto StringToEnum<%.*s>(abs_stringptr String) -> %.*s;\nconstexpr abs_stringptr EnumToString(%.*s EnumToken);\nconstexpr char const* EnumToCString(%.*s EnumToken);\nconstexpr abs_stringptr %.*s_Strings[%.*s_Count] = \n{\n"
.LC44:
	.string	"   {\"%.*s\", %u},\n"
	.align 8
.LC45:
	.string	"template<>\nauto StringToEnum<%.*s>(const char *String) -> %.*s\n"
	.align 8
.LC46:
	.string	"{\n    u32 StringIndex = abs_FindInList(String, %.*s_Count, %.*s_Strings, true);\n"
	.align 8
.LC47:
	.string	"    %.*s Result = %.*s::%.*s;\n"
	.align 8
.LC48:
	.string	"    if(StringIndex < %.*s_Count)\n    {\n        Result = static_cast<%.*s>(StringIndex);\n    }\n    return Result;\n}\n"
	.align 8
.LC49:
	.string	"template<>\nauto StringToEnum<%.*s>(abs_stringptr String) -> %.*s\n"
	.align 8
.LC50:
	.string	"constexpr const char *\nEnumToCString(%.*s EnumToken)\n{\n    return %.*s_Strings[int(EnumToken)].String;\n}\n\n"
	.align 8
.LC51:
	.string	"constexpr abs_stringptr\nEnumToString(%.*s EnumToken)\n{\n    return %.*s_Strings[int(EnumToken)];\n}\n\n"
	.text
	.globl	_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.type	_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_, @function
_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_:
.LFB99:
	.loc 10 182 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	.loc 10 182 0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 10 183 0
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_Z24abm_BeginTemporaryMemoryP12memory_arena
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 10 184 0
	movl	$10240, -112(%rbp)
	.loc 10 185 0
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movl	$10240, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -96(%rbp)
	.loc 10 186 0
	movq	-152(%rbp), %rax
	movl	$1, %edx
	movl	$10240, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -88(%rbp)
	.loc 10 187 0
	movq	-96(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 188 0
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	.loc 10 189 0
	movl	$0, -116(%rbp)
	.loc 10 190 0
	movl	$0, -108(%rbp)
.LBB307:
	.loc 10 193 0
	movq	-136(%rbp), %rax
	movl	144(%rax), %eax
	testl	%eax, %eax
	je	.L919
.LBB308:
	.loc 10 195 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	movq	-136(%rbp), %rax
	movl	8(%rax), %edi
	movq	-136(%rbp), %rax
	movq	(%rax), %r8
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -172(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	%rbx, -184(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %r15
	movq	-136(%rbp), %rax
	movl	8(%rax), %r14d
	movq	-136(%rbp), %rax
	movq	(%rax), %r13
	movq	-136(%rbp), %rax
	movl	8(%rax), %r12d
	movq	-136(%rbp), %rax
	movq	(%rax), %rbx
	movq	-136(%rbp), %rax
	movl	8(%rax), %r11d
	movq	-136(%rbp), %rax
	movq	(%rax), %r9
	movq	-136(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -188(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %r10
	movq	%r10, -200(%rbp)
	movq	-136(%rbp), %rax
	movl	8(%rax), %ecx
	movl	$10240, %eax
	subl	-116(%rbp), %eax
	movl	%eax, %r10d
	movl	-116(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	movl	-172(%rbp), %esi
	pushq	%rsi
	pushq	-184(%rbp)
	movl	-176(%rbp), %esi
	pushq	%rsi
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%r11
	pushq	%r9
	movl	-188(%rbp), %r9d
	movq	-200(%rbp), %r8
	leaq	.LC43(%rip), %rdx
	movl	%r10d, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$112, %rsp
	addl	%eax, -116(%rbp)
	.loc 10 219 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)
.L921:
	.loc 10 220 0
	movq	-136(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -104(%rbp)
	je	.L920
	.loc 10 222 0
	movq	-104(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-104(%rbp), %rax
	movq	(%rax), %rdx
	movq	-104(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %esi
	subl	-116(%rbp), %esi
	movl	%esi, %r10d
	movl	-116(%rbp), %edi
	movq	-96(%rbp), %rsi
	addq	%rsi, %rdi
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC44(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -116(%rbp)
	.loc 10 227 0
	movq	-104(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)
	.loc 10 220 0
	jmp	.L921
.L920:
	.loc 10 230 0
	movl	$10240, %eax
	subl	-116(%rbp), %eax
	movl	%eax, %ecx
	movl	-116(%rbp), %edx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC41(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -116(%rbp)
	.loc 10 233 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC45(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 240 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC46(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 250 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	.loc 10 246 0
	movq	(%rax), %rsi
	.loc 10 250 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	.loc 10 246 0
	movl	8(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-136(%rbp), %rax
	movq	(%rax), %r8
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r11d
	movl	-108(%rbp), %r10d
	movq	-88(%rbp), %rdi
	addq	%r10, %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%eax, %ecx
	leaq	.LC47(%rip), %rdx
	movl	%r11d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$32, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 252 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC48(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 262 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC49(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 269 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC46(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 279 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	.loc 10 275 0
	movq	(%rax), %rsi
	.loc 10 279 0
	movq	-136(%rbp), %rax
	movq	128(%rax), %rax
	.loc 10 275 0
	movl	8(%rax), %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-136(%rbp), %rax
	movq	(%rax), %r8
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r11d
	movl	-108(%rbp), %r10d
	movq	-88(%rbp), %rdi
	addq	%r10, %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%eax, %ecx
	leaq	.LC47(%rip), %rdx
	movl	%r11d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$32, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 281 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC48(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 291 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC50(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 300 0
	movq	-136(%rbp), %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movl	8(%rax), %esi
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	-136(%rbp), %rax
	movl	8(%rax), %eax
	movl	$10240, %edi
	subl	-108(%rbp), %edi
	movl	%edi, %r10d
	movl	-108(%rbp), %r8d
	movq	-88(%rbp), %rdi
	addq	%r8, %rdi
	subq	$8, %rsp
	pushq	%rdx
	movl	%esi, %r9d
	movq	%rcx, %r8
	movl	%eax, %ecx
	leaq	.LC51(%rip), %rdx
	movl	%r10d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$16, %rsp
	addl	%eax, -108(%rbp)
	.loc 10 310 0
	movl	-108(%rbp), %edx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	.loc 10 313 0
	movq	-96(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 10 314 0
	movq	-88(%rbp), %rdx
	movq	-152(%rbp), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
.L919:
.LBE308:
.LBE307:
	.loc 10 317 0
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z22abm_EndTemporaryMemory16temporary_memory
	.loc 10 318 0
	nop
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L922
	call	__stack_chk_fail@PLT
.L922:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE99:
	.size	_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_, .-_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_
	.section	.rodata
	.align 8
.LC52:
	.string	"/****** Enum %.*s Header *****/\n"
.LC53:
	.string	"enum class %.*s;\n"
.LC54:
	.string	"const u32 %.*s_Count = %u;\n"
	.align 8
.LC55:
	.string	"/****** Enum %.*s Functions *****/\n"
.LC56:
	.string	"Strings"
.LC57:
	.string	"JSON"
.LC58:
	.string	"Label"
.LC59:
	.string	"\n"
	.text
	.globl	_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_
	.type	_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_, @function
_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_:
.LFB100:
	.loc 10 322 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 10 322 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 10 323 0
	movq	-56(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)
.L930:
	.loc 10 324 0
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L932
.LBB309:
	.loc 10 326 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC52(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 330 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 333 0
	movq	-48(%rbp), %rax
	movl	144(%rax), %edi
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC54(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 337 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC55(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 340 0
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.L929:
	.loc 10 341 0
	movq	-48(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -40(%rbp)
	je	.L925
	.loc 10 343 0
	leaq	-32(%rbp), %rax
	leaq	.LC56(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L926
	.loc 10 345 0
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_
	jmp	.L927
.L926:
	.loc 10 348 0
	leaq	-32(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L928
	.loc 10 350 0
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_
	jmp	.L927
.L928:
	.loc 10 353 0
	leaq	-32(%rbp), %rax
	leaq	.LC58(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L927
	.loc 10 355 0
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_
.L927:
	.loc 10 358 0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 10 341 0
	jmp	.L929
.L925:
	.loc 10 361 0
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 362 0
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 10 364 0
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -48(%rbp)
.LBE309:
	.loc 10 324 0
	jmp	.L930
.L932:
	.loc 10 366 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L931
	call	__stack_chk_fail@PLT
.L931:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE100:
	.size	_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_, .-_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_
	.section	.rodata
	.align 8
.LC60:
	.string	"/****  StateMachine: %.*s ****/\n"
	.align 8
.LC61:
	.string	"struct %.*s;\nenum class %.*s;\n"
	.align 8
.LC62:
	.string	"#define %.*s(name) void name(%.*s *State, %.*s Cmd"
.LC63:
	.string	", %.*s "
.LC64:
	.string	"const "
.LC65:
	.string	"*"
.LC66:
	.string	"&"
.LC67:
	.string	"%.*s"
.LC68:
	.string	"[%d]"
.LC69:
	.string	"struct %.*s;\n"
.LC70:
	.string	"union %.*s;\n"
.LC71:
	.string	"class %.*s;\n"
.LC72:
	.string	")\n"
.LC73:
	.string	"typedef %.*s(%.*s);\n\n"
	.align 8
.LC74:
	.string	"inline b8 GoToState(%.*s *State, %.*s *NewState);\nchar const *GetStateName(%.*s *StateName);\nb8 EnqueueCommand(%.*s *State, %.*s Cmd);\n%.*s DequeueCommand(%.*s *State);\n"
	.align 8
.LC75:
	.string	"/**** StateMachine: %.*s **/\n// Function Definitions\n"
	.align 8
.LC76:
	.string	"inline b8\nGoToState(%.*s *State, %.*s *NewState)\n"
	.align 8
.LC77:
	.string	"{\n    b8 isChanged = false;\n    if(NewState && State)\n    {\n        State->CurrentState = NewState;\n        State->isNewState = true;\n    }\n\n    return isChanged;\n}\n\n"
	.align 8
.LC78:
	.string	"char const*\nGetStateName(%.*s *StateName)\n{\n"
.LC79:
	.string	"%.*s(%.*s);\n"
	.align 8
.LC80:
	.string	"if(StateName == %.*s) {return \"%.*s\";}\n"
.LC81:
	.string	"return \"Unknown\";\n}\n\n"
	.align 8
.LC82:
	.string	"b8\nEnqueueCommand(%.*s *State, %.*s Cmd)\n{\nreturn Enqueue(&State->CommandQueue, Cmd);\n}\n\n%.*s\nDequeueCommand(%.*s *State)\n{\nreturn Dequeue(&State->CommandQueue);\n}\n\n"
.LC83:
	.string	"\n/*********/\n\n"
	.text
	.globl	_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_
	.type	_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_, @function
_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_:
.LFB101:
	.file 11 "/home/amos/prog/c/amos_libraries/preprocessor/abp_statefunctions.cpp"
	.loc 11 6 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -440(%rbp)
	movq	%rsi, -448(%rbp)
	movq	%rdx, -456(%rbp)
	movq	%rcx, -464(%rbp)
	movq	%r8, -472(%rbp)
	.loc 11 6 0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	.loc 11 8 0
	movq	-440(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -424(%rbp)
.L951:
	.loc 11 9 0
	movq	-424(%rbp), %rax
	cmpq	-440(%rbp), %rax
	je	.L953
.LBB310:
	.loc 11 11 0
	movq	-456(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_Z14abs_Capitalize13abs_stringptrP12memory_arena
	movq	%rax, -400(%rbp)
	movq	%rdx, -392(%rbp)
	.loc 11 12 0
	movq	-456(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_Z13abs_Lowercase13abs_stringptrP12memory_arena
	movq	%rax, -384(%rbp)
	movq	%rdx, -376(%rbp)
	.loc 11 13 0
	movl	$300, -428(%rbp)
	.loc 11 14 0
	leaq	-368(%rbp), %rdx
	movl	$0, %eax
	movl	$37, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movl	%eax, (%rdx)
	addq	$4, %rdx
	.loc 11 15 0
	movl	$0, -432(%rbp)
	.loc 11 17 0
	movq	-400(%rbp), %rcx
	movl	-392(%rbp), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC60(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 21 0
	movq	-424(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-424(%rbp), %rax
	movl	40(%rax), %r8d
	movq	-424(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-424(%rbp), %rax
	movl	24(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC61(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 11 27 0
	movq	-472(%rbp), %rdi
	movq	-464(%rbp), %rcx
	movq	-456(%rbp), %rdx
	movq	-424(%rbp), %rax
	movq	32(%rax), %rsi
	movq	40(%rax), %rax
	movq	%rdi, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	$10, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	call	_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_
	.loc 11 29 0
	movq	-424(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-424(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-424(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-424(%rbp), %rax
	movl	24(%rax), %r9d
	movq	-400(%rbp), %r8
	movl	-392(%rbp), %eax
	movl	-432(%rbp), %edi
	movl	$300, %r10d
	subl	%edi, %r10d
	movl	%r10d, %edi
	movl	%edi, %r11d
	leaq	-368(%rbp), %r10
	movl	-432(%rbp), %edi
	movslq	%edi, %rdi
	addq	%r10, %rdi
	subq	$8, %rsp
	pushq	%rsi
	pushq	%rcx
	pushq	%rdx
	movl	%eax, %ecx
	leaq	.LC62(%rip), %rdx
	movl	%r11d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addq	$32, %rsp
	addl	%eax, -432(%rbp)
	.loc 11 35 0
	movq	-424(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -416(%rbp)
.L947:
	.loc 11 36 0
	movq	-424(%rbp), %rax
	addq	$48, %rax
	cmpq	%rax, -416(%rbp)
	je	.L935
	.loc 11 38 0
	movq	-416(%rbp), %rax
	movq	(%rax), %rdx
	movq	-416(%rbp), %rax
	movl	8(%rax), %eax
	movl	-432(%rbp), %ecx
	movl	$300, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %r9d
	leaq	-368(%rbp), %rsi
	movl	-432(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC63(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
	.loc 11 41 0
	movq	-416(%rbp), %rax
	movzbl	34(%rax), %eax
	testb	%al, %al
	je	.L936
	.loc 11 43 0
	movl	-432(%rbp), %eax
	movl	$300, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	leaq	-368(%rbp), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC64(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
.L936:
	.loc 11 45 0
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L937
	.loc 11 47 0
	movl	-432(%rbp), %eax
	movl	$300, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	leaq	-368(%rbp), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC65(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
	jmp	.L938
.L937:
	.loc 11 49 0
	movq	-416(%rbp), %rax
	movzbl	33(%rax), %eax
	testb	%al, %al
	je	.L938
	.loc 11 51 0
	movl	-432(%rbp), %eax
	movl	$300, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	leaq	-368(%rbp), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC66(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
.L938:
	.loc 11 53 0
	movq	-416(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-416(%rbp), %rax
	movl	24(%rax), %eax
	movl	-432(%rbp), %ecx
	movl	$300, %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	%ecx, %r9d
	leaq	-368(%rbp), %rsi
	movl	-432(%rbp), %ecx
	movslq	%ecx, %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC67(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
	.loc 11 56 0
	movq	-416(%rbp), %rax
	movzbl	35(%rax), %eax
	testb	%al, %al
	je	.L939
	.loc 11 58 0
	movq	-416(%rbp), %rax
	movl	36(%rax), %eax
	movl	-432(%rbp), %edx
	movl	$300, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	movl	%edx, %esi
	leaq	-368(%rbp), %rcx
	movl	-432(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx), %rdi
	movl	%eax, %ecx
	leaq	.LC68(%rip), %rdx
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
.L939:
	.loc 11 63 0
	movq	-416(%rbp), %rax
	movl	40(%rax), %eax
	cmpl	$2, %eax
	je	.L941
	cmpl	$2, %eax
	jg	.L942
	cmpl	$1, %eax
	je	.L943
	.loc 11 85 0
	jmp	.L946
.L942:
	.loc 11 63 0
	cmpl	$3, %eax
	je	.L944
	cmpl	$4, %eax
	je	.L945
	.loc 11 85 0
	jmp	.L946
.L943:
	.loc 11 67 0
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	-416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC69(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 69 0
	jmp	.L946
.L945:
	.loc 11 72 0
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	-416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC53(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 74 0
	jmp	.L946
.L941:
	.loc 11 77 0
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	-416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC70(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 79 0
	jmp	.L946
.L944:
	.loc 11 82 0
	movq	-416(%rbp), %rax
	movq	(%rax), %rcx
	movq	-416(%rbp), %rax
	movl	8(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC71(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 84 0
	nop
.L946:
	.loc 11 88 0
	movq	-416(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -416(%rbp)
	.loc 11 36 0
	jmp	.L947
.L935:
	.loc 11 91 0
	movl	-432(%rbp), %eax
	movl	$300, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	leaq	-368(%rbp), %rdx
	movl	-432(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	.LC72(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -432(%rbp)
	.loc 11 92 0
	leaq	-368(%rbp), %rdx
	movq	-456(%rbp), %rcx
	movq	-464(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 11 93 0
	movq	-384(%rbp), %rcx
	movl	-376(%rbp), %r8d
	movq	-400(%rbp), %rdi
	movl	-392(%rbp), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC73(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 11 96 0
	movq	-424(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-424(%rbp), %rax
	movl	24(%rax), %r15d
	movq	-424(%rbp), %rax
	movq	32(%rax), %r14
	movq	-424(%rbp), %rax
	movl	40(%rax), %r13d
	movq	-424(%rbp), %rax
	movq	32(%rax), %r12
	movq	-424(%rbp), %rax
	movl	40(%rax), %ebx
	movq	-424(%rbp), %rax
	movq	16(%rax), %r11
	movq	-424(%rbp), %rax
	movl	24(%rax), %r10d
	movq	-384(%rbp), %r9
	movl	-376(%rbp), %r8d
	movq	-384(%rbp), %rdi
	movl	-376(%rbp), %eax
	movl	%eax, -476(%rbp)
	movq	-424(%rbp), %rax
	movq	16(%rax), %rsi
	movq	%rsi, -488(%rbp)
	movq	-424(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdx
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%r11
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	movl	-476(%rbp), %r9d
	movq	-488(%rbp), %r8
	leaq	.LC74(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$96, %rsp
	.loc 11 109 0
	movq	-456(%rbp), %rcx
	movq	-464(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 111 0
	movq	-400(%rbp), %rcx
	movl	-392(%rbp), %edx
	movq	-456(%rbp), %rsi
	movq	-472(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC75(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 115 0
	movq	-384(%rbp), %rcx
	movl	-376(%rbp), %r8d
	movq	-424(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-424(%rbp), %rax
	movl	24(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-472(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC76(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 11 120 0
	movq	-456(%rbp), %rcx
	movq	-472(%rbp), %rax
	leaq	.LC77(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 132 0
	movq	-384(%rbp), %rcx
	movl	-376(%rbp), %edx
	movq	-456(%rbp), %rsi
	movq	-472(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC78(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 139 0
	movq	-448(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -408(%rbp)
.L950:
	.loc 11 140 0
	movq	-408(%rbp), %rax
	cmpq	-448(%rbp), %rax
	je	.L948
	.loc 11 142 0
	movq	-408(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	-424(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movl	$1, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_a
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L949
	.loc 11 144 0
	movq	-408(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-408(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-400(%rbp), %rdi
	movl	-392(%rbp), %edx
	movq	-456(%rbp), %rsi
	movq	-464(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC79(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 11 149 0
	movq	-408(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-408(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-408(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-408(%rbp), %rax
	movl	24(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-472(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC80(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
.L949:
	.loc 11 154 0
	movq	-408(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -408(%rbp)
	.loc 11 140 0
	jmp	.L950
.L948:
	.loc 11 157 0
	movq	-456(%rbp), %rcx
	movq	-472(%rbp), %rax
	leaq	.LC81(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 161 0
	movq	-424(%rbp), %rax
	movq	16(%rax), %r10
	movq	-424(%rbp), %rax
	movl	24(%rax), %r9d
	movq	-424(%rbp), %rax
	movq	32(%rax), %r8
	movq	-424(%rbp), %rax
	movl	40(%rax), %edi
	movq	-424(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-424(%rbp), %rax
	movl	40(%rax), %ebx
	movq	-424(%rbp), %rax
	movq	16(%rax), %r11
	movq	-424(%rbp), %rax
	movl	24(%rax), %edx
	movq	-456(%rbp), %rsi
	movq	-472(%rbp), %rax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movl	%ebx, %r9d
	movq	%r11, %r8
	movl	%edx, %ecx
	leaq	.LC82(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$48, %rsp
	.loc 11 178 0
	movq	-456(%rbp), %rcx
	movq	-464(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 179 0
	movq	-456(%rbp), %rcx
	movq	-472(%rbp), %rax
	leaq	.LC83(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 11 181 0
	movq	-424(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -424(%rbp)
.LBE310:
	.loc 11 9 0
	jmp	.L951
.L953:
	.loc 11 185 0
	nop
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L952
	call	__stack_chk_fail@PLT
.L952:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE101:
	.size	_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_, .-_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_
	.section	.rodata
.LC84:
	.string	"if(Value.%.*s)\n{\n    "
	.align 8
.LC85:
	.string	"Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%s%c\", %c(Value.%.*s));\n"
.LC86:
	.string	"}\n"
	.text
	.align 2
	.type	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a, @function
_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a:
.LFB103:
	.file 12 "/home/amos/prog/c/amos_libraries/preprocessor/abp_structs.cpp"
	.loc 12 74 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	.loc 12 76 0
	cmpb	$0, -20(%rbp)
	je	.L955
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 81 0
	movq	(%rax), %rax
	.loc 12 78 0
	movq	16(%rax), %rcx
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 81 0
	movq	(%rax), %rax
	.loc 12 78 0
	movl	24(%rax), %edx
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 78 0
	movq	(%rax), %rsi
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 78 0
	movq	(%rax), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC84(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L955:
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 89 0
	movq	(%rax), %rax
	.loc 12 84 0
	movq	16(%rax), %r8
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 89 0
	movq	(%rax), %rax
	.loc 12 84 0
	movl	24(%rax), %edi
	cmpb	$0, -20(%rbp)
	je	.L956
	.loc 12 84 0 is_stmt 0 discriminator 1
	movl	$42, %r11d
	jmp	.L957
.L956:
	.loc 12 84 0 discriminator 2
	movl	$32, %r11d
.L957:
	.loc 12 75 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	.loc 12 87 0
	movzbl	(%rax), %eax
	.loc 12 84 0
	movsbl	%al, %ecx
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 86 0
	movq	(%rax), %rax
	.loc 12 84 0
	movq	16(%rax), %r10
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	.loc 12 86 0
	movq	(%rax), %rax
	.loc 12 84 0
	movl	24(%rax), %edx
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 84 0
	movq	(%rax), %rsi
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 84 0
	movq	(%rax), %rax
	movq	-16(%rbp), %r9
	pushq	%r8
	pushq	%rdi
	pushq	%r11
	pushq	%rcx
	movq	%r10, %r8
	movl	%edx, %ecx
	leaq	.LC85(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$32, %rsp
	.loc 12 92 0
	cmpb	$0, -20(%rbp)
	je	.L959
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 94 0
	movq	(%rax), %rcx
	.loc 12 75 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 94 0
	movq	(%rax), %rax
	leaq	.LC86(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L959:
	.loc 12 97 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE103:
	.size	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a, .-_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	.section	.rodata
	.align 8
.LC87:
	.string	"            if((abs_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n               ((Token+1)->type == %s)"
.LC88:
	.string	"&& \n(ObjectOut->%.*s)"
.LC89:
	.string	") \n"
	.align 8
.LC90:
	.string	"{\n            ItemExists->%.*s = true;\n"
	.text
	.align 2
	.type	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_, @function
_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_:
.LFB104:
	.loc 12 237 0
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
	.loc 12 239 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 239 0
	movq	(%rax), %rsi
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 239 0
	movq	(%rax), %rax
	pushq	-24(%rbp)
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC87(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 12 246 0
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L961
	.loc 12 248 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 248 0
	movq	(%rax), %rsi
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 248 0
	movq	(%rax), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC88(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L961:
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 255 0
	movq	(%rax), %rcx
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 255 0
	movq	(%rax), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 257 0
	movq	-16(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-16(%rbp), %rax
	movl	24(%rax), %edx
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	.loc 12 257 0
	movq	(%rax), %rsi
	.loc 12 238 0
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	.loc 12 257 0
	movq	(%rax), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC90(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 260 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE104:
	.size	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_, .-_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.section	.rodata
	.align 8
.LC91:
	.string	"u32 PushJson(char *Json, u32 MaxLength, char const *Tag, const %.*s &Value, u32 JsonFlags);\n"
.LC92:
	.string	"struct %.*s_existlist;\n"
	.align 8
.LC93:
	.string	"jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *ObjectOut, %.*s_existlist *ItemsExistOut);\n"
	.align 8
.LC94:
	.string	"u32\nJsonArrayToObjectArray(memory_arena *VolatileMemory, char const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_existlist **ObjectArrayExist);\n"
	.align 8
.LC95:
	.ascii	"u32 PushJson(char *Json, u32 MaxLength, char const*Tag, cons"
	.ascii	"t %.*s &Value, u32 JsonFlags = 0)\n{\n    u32 Length = 0;\n "
	.ascii	"   b8 isLast = (JsonFlags & JSON_IsLastInList);\n    if(Json"
	.ascii	"Flag"
	.string	"s & JSON_BaseObject)\n    {\n        Json[Length++] = '{';\n    }\n    if(!(JsonFlags & JSON_DontUseTag))\n    {\n          Length += stbsp_snprintf(&Json[Length], MaxLength, \"\\\"%%s\\\":\", Tag);\n    }\n    Length += StartGroup(&Json[Length], (MaxLength - Length));\n"
.LC96:
	.string	"struct %.*s_existlist\n{\n"
.LC97:
	.string	"   b8 %.*s;\n"
.LC98:
	.string	"JSON_IsLastInList"
.LC99:
	.string	"JSON_Null"
.LC100:
	.string	"char"
	.align 8
.LC101:
	.string	"{\nsize_t StringLen = abs_StringLength(Value.%.*s, %d);\n"
	.align 8
.LC102:
	.string	"Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (s32)StringLen, Value.%.*s);\n}\n"
.LC103:
	.string	"u64"
.LC104:
	.string	"%llu"
.LC105:
	.string	"s64"
.LC106:
	.string	"%lld"
.LC107:
	.string	"u32"
.LC108:
	.string	"u16"
.LC109:
	.string	"u8"
.LC110:
	.string	"%u"
.LC111:
	.string	"s32"
.LC112:
	.string	"s16"
.LC113:
	.string	"s8"
.LC114:
	.string	"int"
.LC115:
	.string	"long"
.LC116:
	.string	"%d"
.LC117:
	.string	"r32"
.LC118:
	.string	"%0.3f"
.LC119:
	.string	"if(Value.%.*s)\n{\n"
	.align 8
.LC120:
	.string	"Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%s\\\"%c\", (Value.%.*s));\n}\n"
.LC121:
	.string	"abs_stringptr"
.LC122:
	.string	"if(Value.%.*s.String)\n{\n"
	.align 8
.LC123:
	.string	"Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":\\\"%%.*s\\\"%c\", (Value.%.*s.String), (Value.%.*s.String));\n}\n"
.LC124:
	.string	"b8"
	.align 8
.LC125:
	.string	"Length += stbsp_snprintf(&Json[Length], (MaxLength - Length), \"\\\"%.*s\\\":%%s%c\", (%c(Value.%.*s) ? \"true\" : \"false\"));\n"
	.align 8
.LC126:
	.string	"Length += PushJson(&Json[Length], (MaxLength - Length), \"%.*s\", %c(Value.%.*s), %s);\n"
	.align 8
.LC127:
	.string	"    Length += EndGroup(&Json[Length], (MaxLength - Length), isLast);\n    if(JsonFlags & JSON_BaseObject)\n    {\n        Json[Length++] = '}';\n    }\n    return Length;\n}\n\n"
.LC128:
	.string	"};\n"
	.align 8
.LC129:
	.ascii	"jsmntok_t *JsonToObject(memory_arena *VolatileMemory, char c"
	.ascii	"onst *Json, size_t JsonLength, jsmntok_t *TokenArray, %.*s *"
	.ascii	"ObjectOut, %.*s_existlist *ItemsExistOut)\n{\n    %.*s_exist"
	.ascii	"list* ItemExists = abm_PushStruct(VolatileMemory, %.*s_exist"
	.ascii	"list);\n    s32 NumTokensProcessed =  ParseJson(VolatileMemo"
	.ascii	"ry, Json, JsonLength, &TokenArray);\n    jsmntok_t *Token = "
	.ascii	"TokenArray;\n    if(Token)\n    {"
	.string	"\n        s32 NumTokensToProcess = Token->size;\n        s32 ObjectEndPosition = Token->end;\n        for(s32 Index = 0; Index < NumTokensToProcess; ++Index)\n        {\n            ++Token;\n            s32 TokenLength = Token->end - Token->start;\n            \n"
.LC130:
	.string	"JSMN_PRIMITIVE"
	.align 8
.LC131:
	.string	"    ++Token;\n    %c(ObjectOut->%.*s) = (%.*s)atoll(&Json[Token->start]);\n}\n\n"
	.align 8
.LC132:
	.string	"    ++Token;\n    %c(ObjectOut->%.*s) = (%.*s)atoi(&Json[Token->start]);\n}\n\n"
	.align 8
.LC133:
	.string	"    ++Token;\n    %c(ObjectOut->%.*s) = (strncmp(&Json[Token->start],\"true\",4) == 0);\n}\n\n"
	.align 8
.LC134:
	.string	"    ++Token;\n    %c(ObjectOut->%.*s) = (%.*s)atof(&Json[Token->start]);\n}\n\n"
.LC135:
	.string	"JSMN_STRING"
	.align 8
.LC136:
	.string	"    ++Token;\n    TokenLength = Token->end - Token->start;\n    s32 Length = MINIMUM(TokenLength, (%d-1));\n    strncpy(ObjectOut->%.*s, &Json[Token->start], Length);\n    ObjectOut->%.*s[Length] = 0;\n}\n\n"
	.align 8
.LC137:
	.string	"            if((abs_AreStringsEqual(&Json[Token->start], TokenLength, \"%.*s\",(ArrayCount(\"%.*s\")-1), true)) && \n               (((Token+1)->type == JSMN_STRING) || ((Token+1)->type == JSMN_OBJECT))"
	.align 8
.LC138:
	.string	"Token = JsonToObject(VolatileMemory, Json, JsonLength, ++Token,  %cObjectOut->%.*s,0);\n}\n\n"
.LC139:
	.string	"\n}\n}\n"
	.align 8
.LC140:
	.string	"if(ItemsExistOut)\n{\n    *ItemsExistOut = *ItemExists;\n}\n"
.LC141:
	.string	"return Token;\n}\n\n"
	.align 8
.LC142:
	.ascii	"u32\nJsonArrayToObjectArray(memory_arena *VolatileMemory, ch"
	.ascii	"ar const *Json, size_t JsonLength, %.*s **ObjectArray, %.*s_"
	.ascii	"existlist **ObjectArrayExists)\n{\n   u32 NumberOfObjects = "
	.ascii	"0;\n            \n    jsmntok_t *TokenArray = 0;\n    s32 Nu"
	.ascii	"mTokensParsed = ParseJson(VolatileMemory, Json, JsonLength, "
	.ascii	"&TokenArray);\n    \n    if(TokenArray)\n    {\n        u32 "
	.ascii	"TokenIndex = 0;\n        jsmntok_t *Token = &TokenArray[Toke"
	.ascii	"nIndex++];\n        if(Token->type == JSMN_OBJECT)\n        "
	.ascii	"{\n            // NOTE(Amos): Next token will be a string; n"
	.ascii	"ot checking label strings yet.\n            ++TokenIndex;\n "
	.ascii	"           Token = &TokenArray[TokenIndex++];\n        }\n  "
	.ascii	"      \n        if(Token->type == JSMN_ARRAY)\n        {\n  "
	.ascii	"          NumberOfObjects= Token->size;\n            ++Token"
	.ascii	";\n        }\n        else if(Token->type == JSMN_OBJECT)\n "
	.ascii	"       {\n            NumberOfObjects = 1;\n        }\n     "
	.ascii	"   \n        if (!(*ObjectArray))\n        {\n            *O"
	.ascii	"bjectArray = abm_PushArray(VolatileMemory, NumberOfObjects, "
	.ascii	"%.*s);\n        }\n        if (!(*ObjectArrayExists))\n     "
	.ascii	"   {\n            *ObjectArrayExists = abm_PushArray(Volatil"
	.ascii	"eMemory, NumberOfObjects, %.*s_existlist);\n        }\n     "
	.ascii	"   \n        fo"
	.string	"r(u32 Index = 0; Index < NumberOfObjects; ++Index)\n        {\n            Token = JsonToObject(VolatileMemory, Json, JsonLength, Token, &(*ObjectArray)[Index],&(*ObjectArrayExists)[Index]);\n            ++Token;\n        }\n    }\n    return NumberOfObjects;\n}\n"
	.text
	.globl	_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_
	.type	_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_, @function
_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_:
.LFB102:
	.loc 12 7 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	.loc 12 7 0
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 12 8 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC91(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 11 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC92(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 12 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %r8d
	movq	-216(%rbp), %rax
	movq	(%rax), %rdi
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC93(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 12 16 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %r8d
	movq	-216(%rbp), %rax
	movq	(%rax), %rdi
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC94(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 12 23 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC95(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 38 0
	movl	$20480, -196(%rbp)
	.loc 12 39 0
	movq	-232(%rbp), %rax
	movl	$1, %edx
	movl	$20480, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -184(%rbp)
	.loc 12 40 0
	movl	$0, -200(%rbp)
	.loc 12 41 0
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movl	$20480, %eax
	subl	-200(%rbp), %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC96(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -200(%rbp)
	.loc 12 45 0
	movq	-216(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -192(%rbp)
.L1001:
	.loc 12 46 0
	movq	-216(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -192(%rbp)
	je	.L963
.LBB311:
	.loc 12 48 0
	movq	-192(%rbp), %rax
	movq	56(%rax), %rax
	movq	-216(%rbp), %rdx
	addq	$64, %rdx
	cmpq	%rdx, %rax
	sete	%al
	movb	%al, -203(%rbp)
	.loc 12 50 0
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	.loc 12 52 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-160(%rbp), %rax
	movl	24(%rax), %eax
	movl	$20480, %ecx
	subl	-200(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-200(%rbp), %esi
	movq	-184(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	movq	%rdx, %r8
	movl	%eax, %ecx
	leaq	.LC97(%rip), %rdx
	movl	%r9d, %esi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -200(%rbp)
	.loc 12 55 0
	movzbl	-203(%rbp), %eax
	testb	%al, %al
	je	.L964
	.loc 12 55 0 is_stmt 0 discriminator 1
	leaq	.LC98(%rip), %rax
	jmp	.L965
.L964:
	.loc 12 55 0 discriminator 2
	leaq	.LC99(%rip), %rax
.L965:
	.loc 12 55 0 discriminator 4
	movq	%rax, -176(%rbp)
	.loc 12 56 0 is_stmt 1 discriminator 4
	movzbl	-203(%rbp), %eax
	testb	%al, %al
	jne	.L966
	.loc 12 56 0 is_stmt 0 discriminator 1
	movl	$44, %eax
	jmp	.L967
.L966:
	.loc 12 56 0 discriminator 2
	movl	$32, %eax
.L967:
	.loc 12 56 0 discriminator 4
	movb	%al, -202(%rbp)
.LBB312:
	.loc 12 58 0 is_stmt 1 discriminator 4
	movq	-160(%rbp), %rax
	movzbl	35(%rax), %eax
	testb	%al, %al
	je	.L968
	.loc 12 58 0 is_stmt 0 discriminator 1
	leaq	-64(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L968
	.loc 12 58 0 discriminator 5
	movl	$1, %eax
	jmp	.L969
.L968:
	.loc 12 58 0 discriminator 6
	movl	$0, %eax
.L969:
	.loc 12 58 0 discriminator 8
	testb	%al, %al
	je	.L970
	.loc 12 60 0 is_stmt 1
	movq	-160(%rbp), %rax
	movl	36(%rax), %edi
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movl	%edi, %r9d
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC101(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 65 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	movzbl	-202(%rbp), %eax
	movsbl	%al, %r9d
	movq	-160(%rbp), %rax
	movq	16(%rax), %r8
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC102(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L971
.L970:
.LBB313:
.LBB314:
	.loc 12 72 0
	movq	-160(%rbp), %rax
	movzbl	35(%rax), %eax
	testb	%al, %al
	jne	.L971
.LBB315:
	.loc 12 97 0
	leaq	-248(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-160(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-202(%rbp), %rax
	movq	%rax, -40(%rbp)
	.loc 12 99 0
	leaq	-80(%rbp), %rax
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L972
	.loc 12 101 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC104(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L972:
	.loc 12 103 0
	leaq	-80(%rbp), %rax
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L974
	.loc 12 105 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC106(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L974:
	.loc 12 107 0
	leaq	-112(%rbp), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 108 0
	testb	%al, %al
	jne	.L975
	.loc 12 108 0 is_stmt 0 discriminator 2
	leaq	-96(%rbp), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 107 0 is_stmt 1 discriminator 2
	testb	%al, %al
	jne	.L975
	.loc 12 109 0
	leaq	-80(%rbp), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 108 0
	testb	%al, %al
	je	.L976
.L975:
	.loc 12 108 0 is_stmt 0 discriminator 4
	movl	$1, %eax
	jmp	.L977
.L976:
	.loc 12 108 0 discriminator 5
	movl	$0, %eax
.L977:
	.loc 12 107 0 is_stmt 1 discriminator 7
	testb	%al, %al
	je	.L978
	.loc 12 112 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC110(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L978:
	.loc 12 114 0
	leaq	-144(%rbp), %rax
	leaq	.LC111(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 117 0
	testb	%al, %al
	jne	.L979
	.loc 12 115 0
	leaq	-128(%rbp), %rax
	leaq	.LC112(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 114 0
	testb	%al, %al
	jne	.L979
	.loc 12 116 0
	leaq	-112(%rbp), %rax
	leaq	.LC113(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 115 0
	testb	%al, %al
	jne	.L979
	.loc 12 117 0
	leaq	-96(%rbp), %rax
	leaq	.LC114(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 116 0
	testb	%al, %al
	jne	.L979
	.loc 12 118 0
	leaq	-80(%rbp), %rax
	leaq	.LC115(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 117 0
	testb	%al, %al
	je	.L980
.L979:
	.loc 12 117 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L981
.L980:
	.loc 12 117 0 discriminator 4
	movl	$0, %eax
.L981:
	.loc 12 114 0 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L982
	.loc 12 121 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L982:
	.loc 12 123 0
	leaq	-80(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L983
	.loc 12 123 0 is_stmt 0 discriminator 3
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	jne	.L983
	.loc 12 123 0 discriminator 5
	movl	$1, %eax
	jmp	.L984
.L983:
	.loc 12 123 0 discriminator 6
	movl	$0, %eax
.L984:
	.loc 12 123 0 discriminator 8
	testb	%al, %al
	je	.L985
	.loc 12 125 0 is_stmt 1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC116(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L985:
	.loc 12 127 0
	leaq	-80(%rbp), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L986
	.loc 12 130 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	movsbl	%al, %edx
	leaq	-64(%rbp), %rax
	leaq	.LC118(%rip), %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlPKcaE_clES8_a
	jmp	.L971
.L986:
	.loc 12 132 0
	leaq	-80(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L987
	.loc 12 132 0 is_stmt 0 discriminator 3
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L987
	.loc 12 132 0 discriminator 5
	movl	$1, %eax
	jmp	.L988
.L987:
	.loc 12 132 0 discriminator 6
	movl	$0, %eax
.L988:
	.loc 12 132 0 discriminator 8
	testb	%al, %al
	je	.L989
	.loc 12 134 0 is_stmt 1
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC119(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 140 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	movzbl	-202(%rbp), %eax
	movsbl	%al, %r9d
	movq	-160(%rbp), %rax
	movq	16(%rax), %r8
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC120(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L971
.L989:
	.loc 12 147 0
	leaq	-80(%rbp), %rax
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L990
	.loc 12 147 0 is_stmt 0 discriminator 3
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	jne	.L990
	.loc 12 147 0 discriminator 5
	movl	$1, %eax
	jmp	.L991
.L990:
	.loc 12 147 0 discriminator 6
	movl	$0, %eax
.L991:
	.loc 12 147 0 discriminator 8
	testb	%al, %al
	je	.L992
	.loc 12 149 0 is_stmt 1
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC122(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 155 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %r9
	movq	-160(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	movzbl	-202(%rbp), %eax
	movsbl	%al, %r11d
	movq	-160(%rbp), %rax
	movq	16(%rax), %r10
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movl	%r11d, %r9d
	movq	%r10, %r8
	movl	%edx, %ecx
	leaq	.LC123(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$32, %rsp
	jmp	.L971
.L992:
	.loc 12 163 0
	leaq	-80(%rbp), %rax
	leaq	.LC121(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L993
	.loc 12 163 0 is_stmt 0 discriminator 3
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L993
	.loc 12 163 0 discriminator 5
	movl	$1, %eax
	jmp	.L994
.L993:
	.loc 12 163 0 discriminator 6
	movl	$0, %eax
.L994:
	.loc 12 163 0 discriminator 8
	testb	%al, %al
	jne	.L971
	.loc 12 165 0 is_stmt 1
	leaq	-80(%rbp), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-160(%rbp), %rcx
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L995
	.loc 12 168 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	.loc 12 172 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 168 0
	testb	%al, %al
	je	.L996
	.loc 12 168 0 is_stmt 0 discriminator 1
	movl	$42, %r10d
	jmp	.L997
.L996:
	.loc 12 168 0 discriminator 2
	movl	$32, %r10d
.L997:
	.loc 12 168 0 discriminator 4
	movzbl	-202(%rbp), %eax
	movsbl	%al, %r9d
	movq	-160(%rbp), %rax
	movq	16(%rax), %r8
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	subq	$8, %rsp
	pushq	%rdi
	pushq	%rcx
	pushq	%r10
	movl	%edx, %ecx
	leaq	.LC125(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$32, %rsp
	jmp	.L971
.L995:
	.loc 12 178 0 is_stmt 1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L998
	.loc 12 180 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC84(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L998:
	.loc 12 187 0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-160(%rbp), %rax
	movl	24(%rax), %ecx
	.loc 12 190 0
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 187 0
	testb	%al, %al
	je	.L999
	.loc 12 187 0 is_stmt 0 discriminator 1
	movl	$42, %r9d
	jmp	.L1000
.L999:
	.loc 12 187 0 discriminator 2
	movl	$32, %r9d
.L1000:
	.loc 12 187 0 discriminator 4
	movq	-160(%rbp), %rax
	movq	16(%rax), %r8
	movq	-160(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	subq	$8, %rsp
	pushq	-176(%rbp)
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC126(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$32, %rsp
	.loc 12 193 0 is_stmt 1 discriminator 4
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L971
	.loc 12 195 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC86(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L971:
.LBE315:
.LBE314:
.LBE313:
.LBE312:
	.loc 12 201 0 discriminator 2
	movq	-192(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -192(%rbp)
.LBE311:
	.loc 12 46 0 discriminator 2
	jmp	.L1001
.L963:
	.loc 12 204 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC127(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 213 0
	movl	$20480, %eax
	subl	-200(%rbp), %eax
	movl	%eax, %ecx
	movl	-200(%rbp), %edx
	movq	-184(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC128(%rip), %rdx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	addl	%eax, -200(%rbp)
	.loc 12 217 0
	movq	-216(%rbp), %rax
	movq	(%rax), %r10
	movq	-216(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-216(%rbp), %rax
	movq	(%rax), %r8
	movq	-216(%rbp), %rax
	movl	8(%rax), %edi
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-216(%rbp), %rax
	movq	(%rax), %r11
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movl	%ebx, %r9d
	movq	%r11, %r8
	movl	%edx, %ecx
	leaq	.LC129(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$48, %rsp
	.loc 12 260 0
	leaq	-248(%rbp), %rax
	movq	%rax, -160(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -152(%rbp)
	.loc 12 262 0
	movq	-216(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -192(%rbp)
.L1031:
	.loc 12 263 0
	movq	-216(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -192(%rbp)
	je	.L1002
.LBB316:
	.loc 12 265 0
	movq	-192(%rbp), %rax
	movq	56(%rax), %rax
	movq	-216(%rbp), %rdx
	addq	$64, %rdx
	cmpq	%rdx, %rax
	sete	%al
	movb	%al, -201(%rbp)
	.loc 12 266 0
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	.loc 12 268 0
	movq	-168(%rbp), %rax
	movzbl	34(%rax), %eax
	testb	%al, %al
	jne	.L1003
	.loc 12 270 0
	leaq	-80(%rbp), %rax
	leaq	.LC103(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	jne	.L1004
	.loc 12 271 0
	leaq	-64(%rbp), %rax
	leaq	.LC105(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 270 0
	testb	%al, %al
	je	.L1005
.L1004:
	.loc 12 270 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L1006
.L1005:
	.loc 12 270 0 discriminator 4
	movl	$0, %eax
.L1006:
	.loc 12 270 0 discriminator 6
	testb	%al, %al
	je	.L1007
	.loc 12 273 0 is_stmt 1
	movq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.loc 12 274 0
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	8(%rax), %edx
	movq	-168(%rbp), %rax
	movq	16(%rax), %r8
	movq	-168(%rbp), %rax
	movl	24(%rax), %edi
	.loc 12 278 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 274 0
	testb	%al, %al
	je	.L1008
	.loc 12 274 0 is_stmt 0 discriminator 1
	movl	$42, %r10d
	jmp	.L1009
.L1008:
	.loc 12 274 0 discriminator 2
	movl	$32, %r10d
.L1009:
	.loc 12 274 0 discriminator 4
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rcx
	pushq	%rdx
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%r10d, %ecx
	leaq	.LC131(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L1003
.L1007:
	.loc 12 282 0 is_stmt 1
	leaq	-144(%rbp), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-144(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 286 0
	testb	%al, %al
	jne	.L1011
	.loc 12 283 0
	leaq	-128(%rbp), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 282 0
	testb	%al, %al
	jne	.L1011
	.loc 12 284 0
	leaq	-112(%rbp), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 283 0
	testb	%al, %al
	jne	.L1011
	.loc 12 285 0
	leaq	-96(%rbp), %rax
	leaq	.LC107(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 284 0
	testb	%al, %al
	jne	.L1011
	.loc 12 286 0
	leaq	-80(%rbp), %rax
	leaq	.LC108(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 285 0
	testb	%al, %al
	jne	.L1011
	.loc 12 287 0
	leaq	-64(%rbp), %rax
	leaq	.LC109(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	.loc 12 286 0
	testb	%al, %al
	je	.L1012
.L1011:
	.loc 12 286 0 is_stmt 0 discriminator 3
	movl	$1, %eax
	jmp	.L1013
.L1012:
	.loc 12 286 0 discriminator 4
	movl	$0, %eax
.L1013:
	.loc 12 282 0 is_stmt 1 discriminator 6
	testb	%al, %al
	je	.L1014
	.loc 12 289 0
	movq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.loc 12 290 0
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	8(%rax), %edx
	movq	-168(%rbp), %rax
	movq	16(%rax), %r8
	movq	-168(%rbp), %rax
	movl	24(%rax), %edi
	.loc 12 294 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 290 0
	testb	%al, %al
	je	.L1015
	.loc 12 290 0 is_stmt 0 discriminator 1
	movl	$42, %r10d
	jmp	.L1016
.L1015:
	.loc 12 290 0 discriminator 2
	movl	$32, %r10d
.L1016:
	.loc 12 290 0 discriminator 4
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rcx
	pushq	%rdx
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%r10d, %ecx
	leaq	.LC132(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L1003
.L1014:
	.loc 12 299 0 is_stmt 1
	leaq	-64(%rbp), %rax
	leaq	.LC124(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L1017
	.loc 12 301 0
	movq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.loc 12 302 0
	movq	-168(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	.loc 12 306 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 302 0
	testb	%al, %al
	je	.L1018
	.loc 12 302 0 is_stmt 0 discriminator 1
	movl	$42, %edi
	jmp	.L1019
.L1018:
	.loc 12 302 0 discriminator 2
	movl	$32, %edi
.L1019:
	.loc 12 302 0 discriminator 4
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	%edi, %ecx
	leaq	.LC133(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	jmp	.L1003
.L1017:
	.loc 12 310 0 is_stmt 1
	leaq	-64(%rbp), %rax
	leaq	.LC117(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L1020
	.loc 12 312 0
	movq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rax
	leaq	.LC130(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.loc 12 313 0
	movq	-168(%rbp), %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	8(%rax), %edx
	movq	-168(%rbp), %rax
	movq	16(%rax), %r8
	movq	-168(%rbp), %rax
	movl	24(%rax), %edi
	.loc 12 317 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 313 0
	testb	%al, %al
	je	.L1021
	.loc 12 313 0 is_stmt 0 discriminator 1
	movl	$42, %r10d
	jmp	.L1022
.L1021:
	.loc 12 313 0 discriminator 2
	movl	$32, %r10d
.L1022:
	.loc 12 313 0 discriminator 4
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rcx
	pushq	%rdx
	movq	%r8, %r9
	movl	%edi, %r8d
	movl	%r10d, %ecx
	leaq	.LC134(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L1003
.L1020:
	.loc 12 322 0 is_stmt 1
	leaq	-64(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L1023
	.loc 12 322 0 is_stmt 0 discriminator 3
	movq	-168(%rbp), %rax
	movzbl	35(%rax), %eax
	testb	%al, %al
	je	.L1023
	.loc 12 322 0 discriminator 5
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	jne	.L1023
	.loc 12 322 0 discriminator 7
	movl	$1, %eax
	jmp	.L1024
.L1023:
	.loc 12 322 0 discriminator 8
	movl	$0, %eax
.L1024:
	.loc 12 322 0 discriminator 10
	testb	%al, %al
	je	.L1025
	.loc 12 324 0 is_stmt 1
	movq	-168(%rbp), %rcx
	leaq	-160(%rbp), %rax
	leaq	.LC135(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZZ16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_ENKUlP13term_typeexprPKcE0_clES8_SA_
	.loc 12 325 0
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-168(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-168(%rbp), %rax
	movq	16(%rax), %r9
	movq	-168(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-168(%rbp), %rax
	movl	36(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	pushq	%rdi
	pushq	%rcx
	movl	%edx, %ecx
	leaq	.LC136(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	jmp	.L1003
.L1025:
	.loc 12 337 0
	leaq	-64(%rbp), %rax
	leaq	.LC100(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	je	.L1026
	.loc 12 337 0 is_stmt 0 discriminator 3
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L1026
	.loc 12 337 0 discriminator 5
	movl	$1, %eax
	jmp	.L1027
.L1026:
	.loc 12 337 0 discriminator 6
	movl	$0, %eax
.L1027:
	.loc 12 337 0 discriminator 8
	testb	%al, %al
	jne	.L1003
	.loc 12 347 0 is_stmt 1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %r8d
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC137(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 12 352 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	testb	%al, %al
	je	.L1028
	.loc 12 354 0
	movq	-168(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC88(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L1028:
	.loc 12 361 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC89(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 363 0
	movq	-168(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC90(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 367 0
	movq	-168(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-168(%rbp), %rax
	movl	24(%rax), %edx
	.loc 12 370 0
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	.loc 12 367 0
	testb	%al, %al
	je	.L1029
	.loc 12 367 0 is_stmt 0 discriminator 1
	movl	$32, %edi
	jmp	.L1030
.L1029:
	.loc 12 367 0 discriminator 2
	movl	$38, %edi
.L1030:
	.loc 12 367 0 discriminator 4
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	%rcx, %r9
	movl	%edx, %r8d
	movl	%edi, %ecx
	leaq	.LC138(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
.L1003:
	.loc 12 375 0 is_stmt 1
	movq	-192(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -192(%rbp)
.LBE316:
	.loc 12 263 0
	jmp	.L1031
.L1002:
	.loc 12 378 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC139(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 381 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC140(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 386 0
	movq	-232(%rbp), %rcx
	movq	-248(%rbp), %rax
	leaq	.LC141(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 390 0
	movq	-216(%rbp), %rax
	movq	(%rax), %r10
	movq	-216(%rbp), %rax
	movl	8(%rax), %r9d
	movq	-216(%rbp), %rax
	movq	(%rax), %r8
	movq	-216(%rbp), %rax
	movl	8(%rax), %edi
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-216(%rbp), %rax
	movl	8(%rax), %ebx
	movq	-216(%rbp), %rax
	movq	(%rax), %r11
	movq	-216(%rbp), %rax
	movl	8(%rax), %edx
	movq	-232(%rbp), %rsi
	movq	-248(%rbp), %rax
	subq	$8, %rsp
	pushq	%r10
	pushq	%r9
	pushq	%r8
	pushq	%rdi
	pushq	%rcx
	movl	%ebx, %r9d
	movq	%r11, %r8
	movl	%edx, %ecx
	leaq	.LC142(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$48, %rsp
	.loc 12 443 0
	movq	-232(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaPKc
	.loc 12 444 0
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1032
	call	__stack_chk_fail@PLT
.L1032:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE102:
	.size	_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_, .-_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_
	.section	.rodata
	.align 8
.LC143:
	.string	"/****** Struct %.*s Header *****/\n"
	.align 8
.LC144:
	.string	"/****** Struct %.*s Functions *****/\n"
	.text
	.globl	_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_
	.type	_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_, @function
_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_:
.LFB105:
	.loc 12 448 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	.loc 12 448 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 12 449 0
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)
.L1038:
	.loc 12 450 0
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L1040
.LBB317:
	.loc 12 452 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC143(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 456 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC69(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 460 0
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-48(%rbp), %rax
	movl	8(%rax), %edx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC144(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 463 0
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -40(%rbp)
.L1037:
	.loc 12 464 0
	movq	-48(%rbp), %rax
	addq	$16, %rax
	cmpq	%rax, -40(%rbp)
	je	.L1035
	.loc 12 466 0
	leaq	-32(%rbp), %rax
	leaq	.LC57(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rsi
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z19abs_AreStringsEqual13abs_stringptrS_
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L1036
	.loc 12 468 0
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_
.L1036:
	.loc 12 471 0
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)
	.loc 12 464 0
	jmp	.L1037
.L1035:
	.loc 12 474 0
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 475 0
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %rax
	leaq	.LC59(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 12 477 0
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)
.LBE317:
	.loc 12 450 0
	jmp	.L1038
.L1040:
	.loc 12 479 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1039
	call	__stack_chk_fail@PLT
.L1039:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE105:
	.size	_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_, .-_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_
	.section	.rodata
.LC145:
	.string	"%s\n"
	.align 8
.LC146:
	.ascii	"/** \n    Code Generator Version: 1.0\n\n    This file was a"
	.ascii	"utogenerated. Do not edit directly, your changes will get ov"
	.ascii	"er-written. \n    This is a single file include. To include "
	.ascii	"the source, add \n\n#define %.*s_SRC\n\n    before including"
	.ascii	" this this file.\n\n    If you are using JSON parsing, add \n"
	.ascii	"\n#define GEN_JSMN_HEADER\n\n    Ensure the jsmn.h header is"
	.ascii	" in your include directory.\n"
	.string	"**/\n\n#ifndef TAG\n#define TAG(...)\n#endif\n\n#ifndef STATEMACHINE\n#define STATEMACHINE(...)\n#endif\n#include <stdlib.h>\n#include \"ab_memory.h\"\n#include \"ab_string.h\"\n#include \"stb_sprintf.h\"\n#ifdef GEN_JSMN_HEADER\n#include \"jsmn.h\"\n#endif // GEN_JSMN_HEADER\n\n\n"
	.align 8
.LC147:
	.string	"#if !defined(_GENERATED_HEADER_)\n#define _GENERATED_HEADER_\n"
	.align 8
.LC148:
	.string	"#ifdef GEN_JSMN_HEADER\nenum json_flags\n{\n    JSON_Null = 0,\n    JSON_IsLastInList = 1 << 0,\n    JSON_DontUseTag = 1 << 1,\n    JSON_BaseObject = 1 << 2,\n};\n#endif\n\n"
	.align 8
.LC149:
	.string	"template<typename T>\nauto StringToEnum(const char *String) -> T;\n\n"
	.align 8
.LC150:
	.string	"template<typename T>\nauto StringToEnum(abs_stringptr String) -> T;\n\n"
	.align 8
.LC151:
	.string	"u32 StartGroup(char *, u32 MaxLength);\n"
	.align 8
.LC152:
	.string	"u32 EndGroup(char *, u32 MaxLength, b8 isLast);\n"
	.align 8
.LC153:
	.string	"#ifdef GEN_JSMN_HEADER\ns32 ParseJson(memory_arena *VolatileMemory, char const *Json,  size_t JsonLength, jsmntok_t **TokenArray);\n#endif\n\n"
.LC154:
	.string	"#endif\n\n"
	.align 8
.LC155:
	.string	"#if !defined(_AB_GENERATED_HEADER_%.*s_)\n#define _AB_GENERATED_HEADER_%.*s_\n\n"
	.align 8
.LC156:
	.string	"#endif // _AB_GENERATED_HEADER_%.*s_\n\n"
	.align 8
.LC157:
	.string	"#if defined(%.*s_SRC)\n#undef %.*s_SRC\n\n"
	.align 8
.LC158:
	.ascii	"#if !defined(_GENERATED_SRC_)\n#define _GENERATED_SRC_\n\n#d"
	.ascii	"efine STB_SPRINTF_IMPLEMENTATION\n#include \"stb_sprintf.h\""
	.ascii	"\n#undef STB_SPRINTF_IMPLEMENTATION\n\n#ifdef GEN_JSMN_HEADE"
	.ascii	"R\n\ninline s32\nParseJson(memory_arena *VolatileMemory, cha"
	.ascii	"r const *Json, size_t JsonLength, jsmntok_t **TokenArray)\n{"
	.ascii	"\n    s32 NumTokensProcessed = 0;\n    if(!(*TokenArray))\n "
	.ascii	"   {\n        jsmn_parser Parser;\n        jsmn_init(&Parser"
	.ascii	");\n        s32 NumTokensExisting = jsmn_parse(&Parser, Json"
	.ascii	", JsonLength, NULL, 0);\n        if(NumTokensExisting > 0)\n"
	.ascii	"        {\n            // NOTE(amos): The last token will al"
	.ascii	"ways be an undefined, so we can use it\n            //     t"
	.ascii	"o find the end of the token array.\n            *TokenArray "
	.ascii	"= abm_PushArray(VolatileMemory, (NumTokensExisting+1), jsmnt"
	.ascii	"ok_t);\n            jsmn_init(&Parser);\n            NumToke"
	.ascii	"nsProcessed = jsmn_parse(&Parser, Json, JsonLength, *TokenAr"
	.ascii	"ray, NumTokensExisting);\n        }\n    }\n    else\n    {\n"
	.ascii	"        NumTokensProcessed = (*TokenArray)->size;\n    }\n  "
	.ascii	"  \n    return NumTokensProcessed;\n}\n\ninline u32\nStartGr"
	.ascii	"oup(char *Json, u32 MaxLength)\n{\n    u32 Length = 0;\n    "
	.ascii	"if (MaxLength >= 1)\n    {\n        Json[0] = '{';\n        "
	.ascii	"++Length;\n    }\n    \n    return Length;\n}\n\ninline u32\n"
	.ascii	"EndGroup(char *Json, u32 MaxLength, b8 isLast = false)\n{\n "
	.ascii	"   u32 Length = 0;\n    if(isLast && MaxLength >= 1)\n    {\n"
	.ascii	"        Json[0] = '}';\n        ++Length;\n    }\n    else i"
	.ascii	"f(!isLast && MaxLength >= 2)\n    {\n        Json[0] = '}';\n"
	.ascii	"        Json[1] = ',';\n        Length += 2;\n    }\n    \n "
	.ascii	"   return Length;\n}\n\ninline abs_stringptr\nTokenToStringP"
	.ascii	"tr(char const *Json, jsmntok_t *Token)\n{\n    abs_stringptr"
	.ascii	" Result;\n    Result.String = &Json[Token->start];\n    Resu"
	.ascii	"lt.Length = (Token->end-Token->start);\n    \n    return Res"
	.ascii	"ult;\n}\n\ninline b8\nTokenEquals(char const* Json, jsmntok_"
	.ascii	"t *Token, char const* Value)\n{\n    u32 TokenLength = Token"
	.ascii	"->end-Token->start;\n    b8 Result =\n        abs_AreStrings"
	.ascii	"Equal(&Json[Token->start], TokenLength, Value, abs_StringLen"
	.ascii	"gth(Value, TokenLength), true);\n    \n   "
	.string	" return Result;\n}\n\n#endif\n\n#endif\n"
.LC159:
	.string	"#endif // %.*s_SRC\n"
	.text
	.globl	_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_
	.type	_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_, @function
_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_:
.LFB106:
	.loc 8 114 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	.loc 8 114 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 8 116 0
	movq	-88(%rbp), %rax
	movl	$1, %edx
	movl	$204816, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -64(%rbp)
	.loc 8 117 0
	movq	-96(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN13abs_stringptrC1EPKc
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rdi
	movq	%rax, %rsi
	call	_Z14abs_Capitalize13abs_stringptrP12memory_arena
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
.LBB318:
	.loc 8 120 0
	movl	$0, -68(%rbp)
.L1047:
	.loc 8 120 0 is_stmt 0 discriminator 1
	movl	-40(%rbp), %eax
	cmpl	%eax, -68(%rbp)
	jnb	.L1042
.LBB319:
	.loc 8 122 0 is_stmt 1
	movq	-48(%rbp), %rdx
	movl	-68(%rbp), %eax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	.loc 8 123 0
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$47, %al
	jle	.L1043
	.loc 8 124 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 123 0 discriminator 1
	cmpb	$57, %al
	jle	.L1044
	.loc 8 124 0
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$64, %al
	jle	.L1043
.L1044:
	.loc 8 125 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 124 0 discriminator 1
	cmpb	$90, %al
	jle	.L1045
	.loc 8 125 0
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$96, %al
	jle	.L1043
.L1045:
	.loc 8 126 0 discriminator 1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	.loc 8 125 0 discriminator 1
	cmpb	$122, %al
	jle	.L1046
.L1043:
	.loc 8 128 0
	movq	-56(%rbp), %rax
	movb	$95, (%rax)
.L1046:
.LBE319:
	.loc 8 120 0 discriminator 2
	addl	$1, -68(%rbp)
	jmp	.L1047
.L1042:
.LBE318:
	.loc 8 131 0
	movq	GeneratedTag(%rip), %rdx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC145(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 133 0
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC146(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 163 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC147(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 166 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC148(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 178 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC149(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 181 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC150(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 184 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC151(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 185 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC152(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 186 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC153(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 192 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC154(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 197 0
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %rdi
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC155(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 8 201 0
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaS0_
	.loc 8 203 0
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC156(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 207 0
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %r8d
	movq	-48(%rbp), %rdi
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movl	%r8d, %r9d
	movq	%rdi, %r8
	movl	%edx, %ecx
	leaq	.LC157(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	addq	$16, %rsp
	.loc 8 212 0
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	leaq	.LC158(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 303 0
	movq	-112(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12CopyToOutputP11output_dataP12memory_arenaS0_
	.loc 8 306 0
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rcx, %r8
	movl	%edx, %ecx
	leaq	.LC159(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_Z13WriteToOutputP11output_dataP12memory_arenaPKcz
	.loc 8 310 0
	movq	-64(%rbp), %rax
	.loc 8 311 0
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L1049
	call	__stack_chk_fail@PLT
.L1049:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE106:
	.size	_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_, .-_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_
	.section	.rodata
.LC160:
	.string	"%s/%s.h"
.LC161:
	.string	"w"
	.text
	.globl	_Z17WriteOutputToFileP11output_dataPKcS2_
	.type	_Z17WriteOutputToFileP11output_dataPKcS2_, @function
_Z17WriteOutputToFileP11output_dataPKcS2_:
.LFB108:
	.loc 8 323 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movq	%rdi, -296(%rbp)
	movq	%rsi, -304(%rbp)
	movq	%rdx, -312(%rbp)
	.loc 8 323 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
.LBB320:
	.loc 8 324 0
	cmpq	$0, -296(%rbp)
	je	.L1055
.LBB321:
	.loc 8 327 0
	movq	-312(%rbp), %rcx
	movq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	.LC160(%rip), %rdx
	movl	$255, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	stbsp_snprintf
	.loc 8 329 0
	movq	-296(%rbp), %rax
	movq	%rax, -288(%rbp)
	.loc 8 330 0
	leaq	-272(%rbp), %rax
	leaq	.LC161(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -280(%rbp)
.L1053:
	.loc 8 331 0
	cmpq	$0, -288(%rbp)
	je	.L1052
	.loc 8 333 0
	movq	-288(%rbp), %rax
	movq	204800(%rax), %rdx
	movq	-288(%rbp), %rax
	movq	-280(%rbp), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 8 334 0
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 8 335 0
	movq	-288(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -288(%rbp)
	.loc 8 331 0
	jmp	.L1053
.L1052:
	.loc 8 337 0
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L1055:
.LBE321:
.LBE320:
	.loc 8 339 0
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L1054
	call	__stack_chk_fail@PLT
.L1054:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE108:
	.size	_Z17WriteOutputToFileP11output_dataPKcS2_, .-_Z17WriteOutputToFileP11output_dataPKcS2_
	.section	.rodata
.LC162:
	.string	"No output data to print."
	.text
	.globl	_Z19WriteOutputToStdOutP11output_data
	.type	_Z19WriteOutputToStdOutP11output_data, @function
_Z19WriteOutputToStdOutP11output_data:
.LFB109:
	.loc 8 344 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
.LBB322:
	.loc 8 345 0
	cmpq	$0, -24(%rbp)
	je	.L1057
.LBB323:
	.loc 8 347 0
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L1059:
	.loc 8 348 0
	cmpq	$0, -8(%rbp)
	je	.L1060
	.loc 8 350 0
	movq	stdout(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	204800(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	.loc 8 351 0
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	.loc 8 353 0
	movq	-8(%rbp), %rax
	movq	204808(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 8 348 0
	jmp	.L1059
.L1057:
.LBE323:
	.loc 8 358 0
	leaq	.LC162(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1060:
.LBE322:
	.loc 8 360 0
	leaq	.LC59(%rip), %rdi
	call	puts@PLT
	.loc 8 361 0
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE109:
	.size	_Z19WriteOutputToStdOutP11output_data, .-_Z19WriteOutputToStdOutP11output_data
	.section	.rodata
	.align 8
.LC163:
	.string	"No directories to process. Specify desired directory to process on the command line.\n"
	.align 8
.LC164:
	.string	"You may also specify an output filename (excluding the extension). If no filename is given, the output will be sent to stdout.\n"
.LC165:
	.string	"%s <dir> [<outputfile>]\n"
.LC166:
	.string	"GENERATED_OUTPUT"
	.text
	.globl	main
	.type	main, @function
main:
.LFB110:
	.loc 8 365 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movl	%edi, -244(%rbp)
	movq	%rsi, -256(%rbp)
	.loc 8 365 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 8 367 0
	cmpl	$1, -244(%rbp)
	jg	.L1062
	.loc 8 369 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$85, %edx
	movl	$1, %esi
	leaq	.LC163(%rip), %rdi
	call	fwrite@PLT
	.loc 8 370 0
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$127, %edx
	movl	$1, %esi
	leaq	.LC164(%rip), %rdi
	call	fwrite@PLT
	.loc 8 372 0
	movq	-256(%rbp), %rax
	movq	(%rax), %rdx
	movq	stderr(%rip), %rax
	leaq	.LC165(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	.loc 8 373 0
	movl	$1, %eax
	jmp	.L1072
.L1062:
	.loc 8 375 0
	movb	$0, -229(%rbp)
	.loc 8 376 0
	movq	$0, -224(%rbp)
	.loc 8 377 0
	cmpl	$3, -244(%rbp)
	jne	.L1064
	.loc 8 379 0
	movb	$1, -229(%rbp)
	.loc 8 380 0
	movq	-256(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)
	jmp	.L1065
.L1064:
	.loc 8 384 0
	leaq	.LC166(%rip), %rax
	movq	%rax, -224(%rbp)
.L1065:
	.loc 8 387 0
	movq	$1073741824, -216(%rbp)
	.loc 8 388 0
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	_Z20abm_AllocateOsMemoryPvm
	movq	%rax, -208(%rbp)
	.loc 8 389 0
	leaq	-112(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	-208(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z14abm_InitMemoryPvm
	.loc 8 391 0
	movl	$66560, -228(%rbp)
	.loc 8 392 0
	leaq	-112(%rbp), %rax
	movl	$1, %edx
	movl	$66560, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -200(%rbp)
	.loc 8 394 0
	movq	$0, -144(%rbp)
	movq	$0, -136(%rbp)
.LBB324:
	.loc 8 397 0
	movq	-256(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	.loc 8 398 0
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_Z24abm_BeginTemporaryMemoryP12memory_arena
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	.loc 8 399 0
	leaq	-112(%rbp), %rax
	movl	$1, %edx
	movl	$204816, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -184(%rbp)
	.loc 8 400 0
	leaq	-112(%rbp), %rax
	movl	$1, %edx
	movl	$204816, %esi
	movq	%rax, %rdi
	call	_Z13abm_PushSize_P12memory_arenama
	movq	%rax, -176(%rbp)
	.loc 8 403 0
	movq	-192(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z22abf_InitializeFileListP12memory_arenaPKc
	movq	%rax, -168(%rbp)
.L1069:
	.loc 8 405 0
	leaq	-80(%rbp), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z15abf_GetNextFileP9file_listP9file_data
	testb	%al, %al
	setne	%al
	testb	%al, %al
	je	.L1066
.LBB325:
	.loc 8 407 0
	movq	GeneratedTag(%rip), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_Z16abs_StringLengthPKcj
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	movq	GeneratedTag(%rip), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_Z27abs_AreStringFragmentsEqualPKcS0_ja
	testb	%al, %al
	setne	%al
	testb	%al, %al
	jne	.L1074
	.loc 8 411 0
	leaq	-80(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z13abl_InitLexerP5lexerP9file_data
	.loc 8 413 0
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9ParseInitP12memory_arena
	movq	%rax, -152(%rbp)
	.loc 8 414 0
	movq	-152(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Z9ParseExprP5lexerP6parser
	.loc 8 416 0
	movq	-152(%rbp), %rax
	leaq	168(%rax), %rdi
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	call	_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_
	.loc 8 417 0
	movq	-152(%rbp), %rax
	leaq	616(%rax), %rsi
	movq	-152(%rbp), %rax
	leaq	488(%rax), %rdi
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rax, %rdx
	call	_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_
	.loc 8 419 0
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rdi
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	call	_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_
	jmp	.L1069
.L1074:
	.loc 8 409 0
	nop
.LBE325:
	.loc 8 405 0
	jmp	.L1069
.L1066:
	.loc 8 422 0
	movq	-176(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movq	-224(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_
	movq	%rax, -160(%rbp)
	.loc 8 424 0
	cmpb	$0, -229(%rbp)
	je	.L1070
	.loc 8 426 0
	movq	-224(%rbp), %rdx
	movq	-192(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z17WriteOutputToFileP11output_dataPKcS2_
	jmp	.L1071
.L1070:
	.loc 8 430 0
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_Z19WriteOutputToStdOutP11output_data
.L1071:
	.loc 8 433 0
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_Z19abf_ReleaseFileListP9file_list
	.loc 8 434 0
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rax, %rsi
	call	_Z22abm_EndTemporaryMemory16temporary_memory
.LBE324:
	.loc 8 437 0
	movl	$0, %eax
.L1072:
	.loc 8 438 0 discriminator 1
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L1073
	.loc 8 438 0 is_stmt 0
	call	__stack_chk_fail@PLT
.L1073:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE110:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC14:
	.long	0
	.long	1083129856
	.align 8
.LC15:
	.long	0
	.long	1083179008
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 13 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 14 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
	.file 15 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 16 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 17 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stdarg.h"
	.file 18 "<built-in>"
	.file 19 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 20 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 21 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_common.h"
	.file 22 "/home/amos/prog/c/amos_libraries/preprocessor/../include/ab_file.h"
	.file 23 "/usr/include/glob.h"
	.file 24 "/usr/include/x86_64-linux-gnu/bits/stat.h"
	.file 25 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h"
	.file 26 "/usr/include/unistd.h"
	.file 27 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 28 "/usr/include/stdio.h"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 30 "/usr/include/malloc.h"
	.file 31 "/usr/include/c++/7/cstdlib"
	.file 32 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
	.file 33 "/usr/include/stdlib.h"
	.file 34 "/usr/include/c++/7/stdlib.h"
	.file 35 "/usr/include/x86_64-linux-gnu/bits/fcntl-linux.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/confname.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5500
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF814
	.byte	0x4
	.long	.LASF815
	.long	.LASF816
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0xd
	.byte	0x24
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF6
	.byte	0xd
	.byte	0x25
	.long	0x29
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0xd
	.byte	0x28
	.long	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF9
	.byte	0xd
	.byte	0x29
	.long	0x37
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0xd
	.byte	0x85
	.long	0x3e
	.uleb128 0x3
	.long	.LASF12
	.byte	0xd
	.byte	0x86
	.long	0x37
	.uleb128 0x3
	.long	.LASF13
	.byte	0xd
	.byte	0x87
	.long	0x37
	.uleb128 0x3
	.long	.LASF14
	.byte	0xd
	.byte	0x88
	.long	0x3e
	.uleb128 0x3
	.long	.LASF15
	.byte	0xd
	.byte	0x8a
	.long	0x37
	.uleb128 0x3
	.long	.LASF16
	.byte	0xd
	.byte	0x8b
	.long	0x3e
	.uleb128 0x3
	.long	.LASF17
	.byte	0xd
	.byte	0x8c
	.long	0x86
	.uleb128 0x3
	.long	.LASF18
	.byte	0xd
	.byte	0x8d
	.long	0x86
	.uleb128 0x3
	.long	.LASF19
	.byte	0xd
	.byte	0x94
	.long	0x86
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x3
	.long	.LASF20
	.byte	0xd
	.byte	0xa2
	.long	0x86
	.uleb128 0x3
	.long	.LASF21
	.byte	0xd
	.byte	0xa7
	.long	0x86
	.uleb128 0x3
	.long	.LASF22
	.byte	0xd
	.byte	0xb8
	.long	0x86
	.uleb128 0x6
	.byte	0x8
	.long	0x11e
	.uleb128 0x7
	.long	0x113
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x7
	.long	0x11e
	.uleb128 0x3
	.long	.LASF24
	.byte	0xe
	.byte	0x18
	.long	0x45
	.uleb128 0x3
	.long	.LASF25
	.byte	0xe
	.byte	0x1a
	.long	0x69
	.uleb128 0x3
	.long	.LASF26
	.byte	0xf
	.byte	0x18
	.long	0x57
	.uleb128 0x3
	.long	.LASF27
	.byte	0xf
	.byte	0x1a
	.long	0x7b
	.uleb128 0x2
	.byte	0x20
	.byte	0x3
	.long	.LASF28
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF29
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF30
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF31
	.uleb128 0x7
	.long	0x16b
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF32
	.uleb128 0x3
	.long	.LASF33
	.byte	0x10
	.byte	0xd8
	.long	0x3e
	.uleb128 0x7
	.long	0x17e
	.uleb128 0x3
	.long	.LASF34
	.byte	0x11
	.byte	0x28
	.long	0x199
	.uleb128 0x8
	.long	.LASF817
	.long	0x1a2
	.uleb128 0x9
	.long	0x1b2
	.long	0x1b2
	.uleb128 0xa
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x18
	.byte	0x12
	.byte	0
	.long	0x1ef
	.uleb128 0xc
	.long	.LASF35
	.byte	0x12
	.byte	0
	.long	0x37
	.byte	0
	.uleb128 0xc
	.long	.LASF36
	.byte	0x12
	.byte	0
	.long	0x37
	.byte	0x4
	.uleb128 0xc
	.long	.LASF37
	.byte	0x12
	.byte	0
	.long	0xf0
	.byte	0x8
	.uleb128 0xc
	.long	.LASF38
	.byte	0x12
	.byte	0
	.long	0xf0
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF40
	.byte	0xd8
	.byte	0x13
	.byte	0xf5
	.long	0x36f
	.uleb128 0xc
	.long	.LASF41
	.byte	0x13
	.byte	0xf6
	.long	0x74
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x13
	.byte	0xfb
	.long	0x113
	.byte	0x8
	.uleb128 0xc
	.long	.LASF43
	.byte	0x13
	.byte	0xfc
	.long	0x113
	.byte	0x10
	.uleb128 0xc
	.long	.LASF44
	.byte	0x13
	.byte	0xfd
	.long	0x113
	.byte	0x18
	.uleb128 0xc
	.long	.LASF45
	.byte	0x13
	.byte	0xfe
	.long	0x113
	.byte	0x20
	.uleb128 0xc
	.long	.LASF46
	.byte	0x13
	.byte	0xff
	.long	0x113
	.byte	0x28
	.uleb128 0xd
	.long	.LASF47
	.byte	0x13
	.value	0x100
	.long	0x113
	.byte	0x30
	.uleb128 0xd
	.long	.LASF48
	.byte	0x13
	.value	0x101
	.long	0x113
	.byte	0x38
	.uleb128 0xd
	.long	.LASF49
	.byte	0x13
	.value	0x102
	.long	0x113
	.byte	0x40
	.uleb128 0xd
	.long	.LASF50
	.byte	0x13
	.value	0x104
	.long	0x113
	.byte	0x48
	.uleb128 0xd
	.long	.LASF51
	.byte	0x13
	.value	0x105
	.long	0x113
	.byte	0x50
	.uleb128 0xd
	.long	.LASF52
	.byte	0x13
	.value	0x106
	.long	0x113
	.byte	0x58
	.uleb128 0xd
	.long	.LASF53
	.byte	0x13
	.value	0x108
	.long	0xdb3
	.byte	0x60
	.uleb128 0xd
	.long	.LASF54
	.byte	0x13
	.value	0x10a
	.long	0xdb9
	.byte	0x68
	.uleb128 0xd
	.long	.LASF55
	.byte	0x13
	.value	0x10c
	.long	0x74
	.byte	0x70
	.uleb128 0xd
	.long	.LASF56
	.byte	0x13
	.value	0x110
	.long	0x74
	.byte	0x74
	.uleb128 0xd
	.long	.LASF57
	.byte	0x13
	.value	0x112
	.long	0xcf
	.byte	0x78
	.uleb128 0xd
	.long	.LASF58
	.byte	0x13
	.value	0x116
	.long	0x30
	.byte	0x80
	.uleb128 0xd
	.long	.LASF59
	.byte	0x13
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xd
	.long	.LASF60
	.byte	0x13
	.value	0x118
	.long	0xdbf
	.byte	0x83
	.uleb128 0xd
	.long	.LASF61
	.byte	0x13
	.value	0x11c
	.long	0xdcf
	.byte	0x88
	.uleb128 0xd
	.long	.LASF62
	.byte	0x13
	.value	0x125
	.long	0xda
	.byte	0x90
	.uleb128 0xd
	.long	.LASF63
	.byte	0x13
	.value	0x12d
	.long	0xf0
	.byte	0x98
	.uleb128 0xd
	.long	.LASF64
	.byte	0x13
	.value	0x12e
	.long	0xf0
	.byte	0xa0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x13
	.value	0x12f
	.long	0xf0
	.byte	0xa8
	.uleb128 0xd
	.long	.LASF66
	.byte	0x13
	.value	0x130
	.long	0xf0
	.byte	0xb0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x13
	.value	0x132
	.long	0x17e
	.byte	0xb8
	.uleb128 0xd
	.long	.LASF68
	.byte	0x13
	.value	0x133
	.long	0x74
	.byte	0xc0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x13
	.value	0x135
	.long	0xdd5
	.byte	0xc4
	.byte	0
	.uleb128 0x3
	.long	.LASF70
	.byte	0x14
	.byte	0x7
	.long	0x1ef
	.uleb128 0x6
	.byte	0x8
	.long	0x125
	.uleb128 0x7
	.long	0x37a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF71
	.uleb128 0x7
	.long	0x385
	.uleb128 0xe
	.string	"b8"
	.byte	0x15
	.byte	0x25
	.long	0x12a
	.uleb128 0xe
	.string	"u8"
	.byte	0x15
	.byte	0x28
	.long	0x140
	.uleb128 0xe
	.string	"s32"
	.byte	0x15
	.byte	0x2d
	.long	0x135
	.uleb128 0x7
	.long	0x3a5
	.uleb128 0xe
	.string	"u32"
	.byte	0x15
	.byte	0x2e
	.long	0x14b
	.uleb128 0x7
	.long	0x3b5
	.uleb128 0xe
	.string	"r32"
	.byte	0x15
	.byte	0x33
	.long	0x164
	.uleb128 0x7
	.long	0x3c5
	.uleb128 0xf
	.string	"TAU"
	.byte	0x15
	.byte	0x36
	.long	0x3d0
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3TAU
	.uleb128 0xb
	.long	.LASF72
	.byte	0x18
	.byte	0x2
	.byte	0xf
	.long	0x41b
	.uleb128 0xc
	.long	.LASF73
	.byte	0x2
	.byte	0x11
	.long	0xf0
	.byte	0
	.uleb128 0xc
	.long	.LASF74
	.byte	0x2
	.byte	0x12
	.long	0x17e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x13
	.long	0x17e
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x10
	.byte	0x2
	.byte	0x16
	.long	0x440
	.uleb128 0xc
	.long	.LASF77
	.byte	0x2
	.byte	0x18
	.long	0x440
	.byte	0
	.uleb128 0xc
	.long	.LASF75
	.byte	0x2
	.byte	0x19
	.long	0x17e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x3ea
	.uleb128 0xb
	.long	.LASF78
	.byte	0x10
	.byte	0x3
	.byte	0x9
	.long	0x53e
	.uleb128 0xc
	.long	.LASF79
	.byte	0x3
	.byte	0xb
	.long	0x37a
	.byte	0
	.uleb128 0xc
	.long	.LASF80
	.byte	0x3
	.byte	0xc
	.long	0x3b5
	.byte	0x8
	.uleb128 0x10
	.long	.LASF78
	.byte	0x3
	.byte	0xe
	.long	.LASF818
	.byte	0x1
	.long	0x47e
	.long	0x484
	.uleb128 0x11
	.long	0x543
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x3
	.byte	0xf
	.long	.LASF81
	.long	0x497
	.long	0x4a7
	.uleb128 0x11
	.long	0x543
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x3b5
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x3
	.byte	0x10
	.long	.LASF82
	.long	0x4ba
	.long	0x4ca
	.uleb128 0x11
	.long	0x543
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x3a5
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x3
	.byte	0x11
	.long	.LASF83
	.long	0x4dd
	.long	0x4e8
	.uleb128 0x11
	.long	0x543
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x3
	.byte	0x12
	.long	.LASF84
	.long	0x4fb
	.long	0x506
	.uleb128 0x11
	.long	0x543
	.uleb128 0x13
	.long	0x113
	.byte	0
	.uleb128 0x12
	.long	.LASF78
	.byte	0x3
	.byte	0x13
	.long	.LASF85
	.long	0x519
	.long	0x524
	.uleb128 0x11
	.long	0x543
	.uleb128 0x13
	.long	0x54e
	.byte	0
	.uleb128 0x14
	.long	.LASF86
	.byte	0x3
	.byte	0x14
	.long	.LASF87
	.long	0x37a
	.long	0x537
	.uleb128 0x11
	.long	0x554
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0x446
	.uleb128 0x6
	.byte	0x8
	.long	0x446
	.uleb128 0x7
	.long	0x543
	.uleb128 0x15
	.byte	0x8
	.long	0x125
	.uleb128 0x6
	.byte	0x8
	.long	0x53e
	.uleb128 0x7
	.long	0x554
	.uleb128 0x3
	.long	.LASF88
	.byte	0x11
	.byte	0x63
	.long	0x18e
	.uleb128 0x3
	.long	.LASF89
	.byte	0x10
	.byte	0x95
	.long	0x86
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF90
	.uleb128 0x16
	.long	.LASF819
	.uleb128 0x3
	.long	.LASF91
	.byte	0x7
	.byte	0xb9
	.long	0x58c
	.uleb128 0x17
	.long	0x113
	.long	0x5a5
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0xf0
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0xb
	.long	.LASF92
	.byte	0x48
	.byte	0x16
	.byte	0xd
	.long	0x5e2
	.uleb128 0xc
	.long	.LASF74
	.byte	0x16
	.byte	0xf
	.long	0x17e
	.byte	0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x16
	.byte	0x10
	.long	0x3b5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF94
	.byte	0x16
	.byte	0x11
	.long	0x5e2
	.byte	0xc
	.uleb128 0xc
	.long	.LASF95
	.byte	0x16
	.byte	0x12
	.long	0x113
	.byte	0x40
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x5f2
	.uleb128 0xa
	.long	0x3e
	.byte	0x31
	.byte	0
	.uleb128 0x18
	.byte	0x48
	.byte	0x17
	.byte	0x53
	.long	.LASF380
	.long	0x66b
	.uleb128 0xc
	.long	.LASF96
	.byte	0x17
	.byte	0x54
	.long	0x17e
	.byte	0
	.uleb128 0xc
	.long	.LASF97
	.byte	0x17
	.byte	0x55
	.long	0x66b
	.byte	0x8
	.uleb128 0xc
	.long	.LASF98
	.byte	0x17
	.byte	0x56
	.long	0x17e
	.byte	0x10
	.uleb128 0xc
	.long	.LASF99
	.byte	0x17
	.byte	0x57
	.long	0x74
	.byte	0x18
	.uleb128 0xc
	.long	.LASF100
	.byte	0x17
	.byte	0x5b
	.long	0x67c
	.byte	0x20
	.uleb128 0xc
	.long	.LASF101
	.byte	0x17
	.byte	0x5d
	.long	0x69c
	.byte	0x28
	.uleb128 0xc
	.long	.LASF102
	.byte	0x17
	.byte	0x61
	.long	0x6b1
	.byte	0x30
	.uleb128 0xc
	.long	.LASF103
	.byte	0x17
	.byte	0x63
	.long	0x792
	.byte	0x38
	.uleb128 0xc
	.long	.LASF104
	.byte	0x17
	.byte	0x64
	.long	0x792
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x113
	.uleb128 0x19
	.long	0x67c
	.uleb128 0x13
	.long	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x671
	.uleb128 0x1a
	.long	.LASF355
	.uleb128 0x17
	.long	0x696
	.long	0x696
	.uleb128 0x13
	.long	0xf0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x682
	.uleb128 0x6
	.byte	0x8
	.long	0x687
	.uleb128 0x17
	.long	0xf0
	.long	0x6b1
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6a2
	.uleb128 0x17
	.long	0x74
	.long	0x6cb
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x6cb
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6d1
	.uleb128 0xb
	.long	.LASF105
	.byte	0x90
	.byte	0x18
	.byte	0x2e
	.long	0x792
	.uleb128 0xc
	.long	.LASF106
	.byte	0x18
	.byte	0x30
	.long	0x8d
	.byte	0
	.uleb128 0xc
	.long	.LASF107
	.byte	0x18
	.byte	0x35
	.long	0xae
	.byte	0x8
	.uleb128 0xc
	.long	.LASF108
	.byte	0x18
	.byte	0x3d
	.long	0xc4
	.byte	0x10
	.uleb128 0xc
	.long	.LASF109
	.byte	0x18
	.byte	0x3e
	.long	0xb9
	.byte	0x18
	.uleb128 0xc
	.long	.LASF110
	.byte	0x18
	.byte	0x40
	.long	0x98
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF111
	.byte	0x18
	.byte	0x41
	.long	0xa3
	.byte	0x20
	.uleb128 0xc
	.long	.LASF112
	.byte	0x18
	.byte	0x43
	.long	0x74
	.byte	0x24
	.uleb128 0xc
	.long	.LASF113
	.byte	0x18
	.byte	0x45
	.long	0x8d
	.byte	0x28
	.uleb128 0xc
	.long	.LASF114
	.byte	0x18
	.byte	0x4a
	.long	0xcf
	.byte	0x30
	.uleb128 0xc
	.long	.LASF115
	.byte	0x18
	.byte	0x4e
	.long	0xf2
	.byte	0x38
	.uleb128 0xc
	.long	.LASF116
	.byte	0x18
	.byte	0x50
	.long	0xfd
	.byte	0x40
	.uleb128 0xc
	.long	.LASF117
	.byte	0x18
	.byte	0x5b
	.long	0x7a3
	.byte	0x48
	.uleb128 0xc
	.long	.LASF118
	.byte	0x18
	.byte	0x5c
	.long	0x7a3
	.byte	0x58
	.uleb128 0xc
	.long	.LASF119
	.byte	0x18
	.byte	0x5d
	.long	0x7a3
	.byte	0x68
	.uleb128 0xc
	.long	.LASF120
	.byte	0x18
	.byte	0x6a
	.long	0x7e4
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x6b7
	.uleb128 0x3
	.long	.LASF121
	.byte	0x17
	.byte	0x69
	.long	0x5f2
	.uleb128 0xb
	.long	.LASF122
	.byte	0x10
	.byte	0x19
	.byte	0x8
	.long	0x7c8
	.uleb128 0xc
	.long	.LASF123
	.byte	0x19
	.byte	0xa
	.long	0xe5
	.byte	0
	.uleb128 0xc
	.long	.LASF124
	.byte	0x19
	.byte	0xb
	.long	0x108
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF125
	.uleb128 0x7
	.long	0x7c8
	.uleb128 0x9
	.long	0x11e
	.long	0x7e4
	.uleb128 0xa
	.long	0x3e
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0x108
	.long	0x7f4
	.uleb128 0xa
	.long	0x3e
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.long	.LASF415
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x23
	.value	0x109
	.long	0x81f
	.uleb128 0x1c
	.long	.LASF126
	.byte	0
	.uleb128 0x1c
	.long	.LASF127
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF128
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF129
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.long	.LASF130
	.byte	0x1a
	.value	0x222
	.long	0x66b
	.uleb128 0x1d
	.long	.LASF131
	.byte	0x1a
	.value	0x224
	.long	0x66b
	.uleb128 0x1e
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x24
	.byte	0x48
	.long	0xd4f
	.uleb128 0x1c
	.long	.LASF132
	.byte	0
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF135
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF136
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF137
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF138
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF139
	.byte	0x7
	.uleb128 0x1c
	.long	.LASF140
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF141
	.byte	0x9
	.uleb128 0x1c
	.long	.LASF142
	.byte	0xa
	.uleb128 0x1c
	.long	.LASF143
	.byte	0xb
	.uleb128 0x1c
	.long	.LASF144
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF145
	.byte	0xd
	.uleb128 0x1c
	.long	.LASF146
	.byte	0xe
	.uleb128 0x1c
	.long	.LASF147
	.byte	0xf
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF149
	.byte	0x11
	.uleb128 0x1c
	.long	.LASF150
	.byte	0x12
	.uleb128 0x1c
	.long	.LASF151
	.byte	0x13
	.uleb128 0x1c
	.long	.LASF152
	.byte	0x14
	.uleb128 0x1c
	.long	.LASF153
	.byte	0x15
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x16
	.uleb128 0x1c
	.long	.LASF155
	.byte	0x17
	.uleb128 0x1c
	.long	.LASF156
	.byte	0x18
	.uleb128 0x1c
	.long	.LASF157
	.byte	0x19
	.uleb128 0x1c
	.long	.LASF158
	.byte	0x1a
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x1b
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x1c
	.uleb128 0x1c
	.long	.LASF161
	.byte	0x1d
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x1e
	.uleb128 0x1c
	.long	.LASF163
	.byte	0x1f
	.uleb128 0x1c
	.long	.LASF164
	.byte	0x20
	.uleb128 0x1c
	.long	.LASF165
	.byte	0x21
	.uleb128 0x1c
	.long	.LASF166
	.byte	0x22
	.uleb128 0x1c
	.long	.LASF167
	.byte	0x23
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x24
	.uleb128 0x1c
	.long	.LASF169
	.byte	0x25
	.uleb128 0x1c
	.long	.LASF170
	.byte	0x26
	.uleb128 0x1c
	.long	.LASF171
	.byte	0x27
	.uleb128 0x1c
	.long	.LASF172
	.byte	0x28
	.uleb128 0x1c
	.long	.LASF173
	.byte	0x29
	.uleb128 0x1c
	.long	.LASF174
	.byte	0x2a
	.uleb128 0x1c
	.long	.LASF175
	.byte	0x2b
	.uleb128 0x1c
	.long	.LASF176
	.byte	0x2c
	.uleb128 0x1c
	.long	.LASF177
	.byte	0x2d
	.uleb128 0x1c
	.long	.LASF178
	.byte	0x2e
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2f
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x30
	.uleb128 0x1c
	.long	.LASF181
	.byte	0x31
	.uleb128 0x1c
	.long	.LASF182
	.byte	0x32
	.uleb128 0x1c
	.long	.LASF183
	.byte	0x33
	.uleb128 0x1c
	.long	.LASF184
	.byte	0x34
	.uleb128 0x1c
	.long	.LASF185
	.byte	0x35
	.uleb128 0x1c
	.long	.LASF186
	.byte	0x36
	.uleb128 0x1c
	.long	.LASF187
	.byte	0x37
	.uleb128 0x1c
	.long	.LASF188
	.byte	0x38
	.uleb128 0x1c
	.long	.LASF189
	.byte	0x39
	.uleb128 0x1c
	.long	.LASF190
	.byte	0x3a
	.uleb128 0x1c
	.long	.LASF191
	.byte	0x3b
	.uleb128 0x1c
	.long	.LASF192
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF193
	.byte	0x3c
	.uleb128 0x1c
	.long	.LASF194
	.byte	0x3d
	.uleb128 0x1c
	.long	.LASF195
	.byte	0x3e
	.uleb128 0x1c
	.long	.LASF196
	.byte	0x3f
	.uleb128 0x1c
	.long	.LASF197
	.byte	0x40
	.uleb128 0x1c
	.long	.LASF198
	.byte	0x41
	.uleb128 0x1c
	.long	.LASF199
	.byte	0x42
	.uleb128 0x1c
	.long	.LASF200
	.byte	0x43
	.uleb128 0x1c
	.long	.LASF201
	.byte	0x44
	.uleb128 0x1c
	.long	.LASF202
	.byte	0x45
	.uleb128 0x1c
	.long	.LASF203
	.byte	0x46
	.uleb128 0x1c
	.long	.LASF204
	.byte	0x47
	.uleb128 0x1c
	.long	.LASF205
	.byte	0x48
	.uleb128 0x1c
	.long	.LASF206
	.byte	0x49
	.uleb128 0x1c
	.long	.LASF207
	.byte	0x4a
	.uleb128 0x1c
	.long	.LASF208
	.byte	0x4b
	.uleb128 0x1c
	.long	.LASF209
	.byte	0x4c
	.uleb128 0x1c
	.long	.LASF210
	.byte	0x4d
	.uleb128 0x1c
	.long	.LASF211
	.byte	0x4e
	.uleb128 0x1c
	.long	.LASF212
	.byte	0x4f
	.uleb128 0x1c
	.long	.LASF213
	.byte	0x50
	.uleb128 0x1c
	.long	.LASF214
	.byte	0x51
	.uleb128 0x1c
	.long	.LASF215
	.byte	0x52
	.uleb128 0x1c
	.long	.LASF216
	.byte	0x53
	.uleb128 0x1c
	.long	.LASF217
	.byte	0x54
	.uleb128 0x1c
	.long	.LASF218
	.byte	0x55
	.uleb128 0x1c
	.long	.LASF219
	.byte	0x56
	.uleb128 0x1c
	.long	.LASF220
	.byte	0x57
	.uleb128 0x1c
	.long	.LASF221
	.byte	0x58
	.uleb128 0x1c
	.long	.LASF222
	.byte	0x59
	.uleb128 0x1c
	.long	.LASF223
	.byte	0x5a
	.uleb128 0x1c
	.long	.LASF224
	.byte	0x5b
	.uleb128 0x1c
	.long	.LASF225
	.byte	0x5c
	.uleb128 0x1c
	.long	.LASF226
	.byte	0x5d
	.uleb128 0x1c
	.long	.LASF227
	.byte	0x5e
	.uleb128 0x1c
	.long	.LASF228
	.byte	0x5f
	.uleb128 0x1c
	.long	.LASF229
	.byte	0x60
	.uleb128 0x1c
	.long	.LASF230
	.byte	0x61
	.uleb128 0x1c
	.long	.LASF231
	.byte	0x62
	.uleb128 0x1c
	.long	.LASF232
	.byte	0x63
	.uleb128 0x1c
	.long	.LASF233
	.byte	0x64
	.uleb128 0x1c
	.long	.LASF234
	.byte	0x65
	.uleb128 0x1c
	.long	.LASF235
	.byte	0x66
	.uleb128 0x1c
	.long	.LASF236
	.byte	0x67
	.uleb128 0x1c
	.long	.LASF237
	.byte	0x68
	.uleb128 0x1c
	.long	.LASF238
	.byte	0x69
	.uleb128 0x1c
	.long	.LASF239
	.byte	0x6a
	.uleb128 0x1c
	.long	.LASF240
	.byte	0x6b
	.uleb128 0x1c
	.long	.LASF241
	.byte	0x6c
	.uleb128 0x1c
	.long	.LASF242
	.byte	0x6d
	.uleb128 0x1c
	.long	.LASF243
	.byte	0x6e
	.uleb128 0x1c
	.long	.LASF244
	.byte	0x6f
	.uleb128 0x1c
	.long	.LASF245
	.byte	0x70
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x71
	.uleb128 0x1c
	.long	.LASF247
	.byte	0x72
	.uleb128 0x1c
	.long	.LASF248
	.byte	0x73
	.uleb128 0x1c
	.long	.LASF249
	.byte	0x74
	.uleb128 0x1c
	.long	.LASF250
	.byte	0x75
	.uleb128 0x1c
	.long	.LASF251
	.byte	0x76
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x77
	.uleb128 0x1c
	.long	.LASF253
	.byte	0x78
	.uleb128 0x1c
	.long	.LASF254
	.byte	0x79
	.uleb128 0x1c
	.long	.LASF255
	.byte	0x7a
	.uleb128 0x1c
	.long	.LASF256
	.byte	0x7b
	.uleb128 0x1c
	.long	.LASF257
	.byte	0x7c
	.uleb128 0x1c
	.long	.LASF258
	.byte	0x7d
	.uleb128 0x1c
	.long	.LASF259
	.byte	0x7e
	.uleb128 0x1c
	.long	.LASF260
	.byte	0x7f
	.uleb128 0x1c
	.long	.LASF261
	.byte	0x80
	.uleb128 0x1c
	.long	.LASF262
	.byte	0x81
	.uleb128 0x1c
	.long	.LASF263
	.byte	0x82
	.uleb128 0x1c
	.long	.LASF264
	.byte	0x83
	.uleb128 0x1c
	.long	.LASF265
	.byte	0x84
	.uleb128 0x1c
	.long	.LASF266
	.byte	0x85
	.uleb128 0x1c
	.long	.LASF267
	.byte	0x86
	.uleb128 0x1c
	.long	.LASF268
	.byte	0x87
	.uleb128 0x1c
	.long	.LASF269
	.byte	0x88
	.uleb128 0x1c
	.long	.LASF270
	.byte	0x89
	.uleb128 0x1c
	.long	.LASF271
	.byte	0x8a
	.uleb128 0x1c
	.long	.LASF272
	.byte	0x8b
	.uleb128 0x1c
	.long	.LASF273
	.byte	0x8c
	.uleb128 0x1c
	.long	.LASF274
	.byte	0x8d
	.uleb128 0x1c
	.long	.LASF275
	.byte	0x8e
	.uleb128 0x1c
	.long	.LASF276
	.byte	0x8f
	.uleb128 0x1c
	.long	.LASF277
	.byte	0x90
	.uleb128 0x1c
	.long	.LASF278
	.byte	0x91
	.uleb128 0x1c
	.long	.LASF279
	.byte	0x92
	.uleb128 0x1c
	.long	.LASF280
	.byte	0x93
	.uleb128 0x1c
	.long	.LASF281
	.byte	0x94
	.uleb128 0x1c
	.long	.LASF282
	.byte	0x95
	.uleb128 0x1c
	.long	.LASF283
	.byte	0x96
	.uleb128 0x1c
	.long	.LASF284
	.byte	0x97
	.uleb128 0x1c
	.long	.LASF285
	.byte	0x98
	.uleb128 0x1c
	.long	.LASF286
	.byte	0x99
	.uleb128 0x1c
	.long	.LASF287
	.byte	0x9a
	.uleb128 0x1c
	.long	.LASF288
	.byte	0x9b
	.uleb128 0x1c
	.long	.LASF289
	.byte	0x9c
	.uleb128 0x1c
	.long	.LASF290
	.byte	0x9d
	.uleb128 0x1c
	.long	.LASF291
	.byte	0x9e
	.uleb128 0x1c
	.long	.LASF292
	.byte	0x9f
	.uleb128 0x1c
	.long	.LASF293
	.byte	0xa0
	.uleb128 0x1c
	.long	.LASF294
	.byte	0xa1
	.uleb128 0x1c
	.long	.LASF295
	.byte	0xa2
	.uleb128 0x1c
	.long	.LASF296
	.byte	0xa3
	.uleb128 0x1c
	.long	.LASF297
	.byte	0xa4
	.uleb128 0x1c
	.long	.LASF298
	.byte	0xa5
	.uleb128 0x1c
	.long	.LASF299
	.byte	0xa6
	.uleb128 0x1c
	.long	.LASF300
	.byte	0xa7
	.uleb128 0x1c
	.long	.LASF301
	.byte	0xa8
	.uleb128 0x1c
	.long	.LASF302
	.byte	0xa9
	.uleb128 0x1c
	.long	.LASF303
	.byte	0xaa
	.uleb128 0x1c
	.long	.LASF304
	.byte	0xab
	.uleb128 0x1c
	.long	.LASF305
	.byte	0xac
	.uleb128 0x1c
	.long	.LASF306
	.byte	0xad
	.uleb128 0x1c
	.long	.LASF307
	.byte	0xae
	.uleb128 0x1c
	.long	.LASF308
	.byte	0xaf
	.uleb128 0x1c
	.long	.LASF309
	.byte	0xb0
	.uleb128 0x1c
	.long	.LASF310
	.byte	0xb1
	.uleb128 0x1c
	.long	.LASF311
	.byte	0xb2
	.uleb128 0x1c
	.long	.LASF312
	.byte	0xb3
	.uleb128 0x1c
	.long	.LASF313
	.byte	0xb4
	.uleb128 0x1c
	.long	.LASF314
	.byte	0xb5
	.uleb128 0x1c
	.long	.LASF315
	.byte	0xb6
	.uleb128 0x1c
	.long	.LASF316
	.byte	0xb7
	.uleb128 0x1c
	.long	.LASF317
	.byte	0xb8
	.uleb128 0x1c
	.long	.LASF318
	.byte	0xb9
	.uleb128 0x1c
	.long	.LASF319
	.byte	0xba
	.uleb128 0x1c
	.long	.LASF320
	.byte	0xbb
	.uleb128 0x1c
	.long	.LASF321
	.byte	0xbc
	.uleb128 0x1c
	.long	.LASF322
	.byte	0xbd
	.uleb128 0x1c
	.long	.LASF323
	.byte	0xbe
	.uleb128 0x1c
	.long	.LASF324
	.byte	0xbf
	.uleb128 0x1c
	.long	.LASF325
	.byte	0xc0
	.uleb128 0x1c
	.long	.LASF326
	.byte	0xc1
	.uleb128 0x1c
	.long	.LASF327
	.byte	0xc2
	.uleb128 0x1c
	.long	.LASF328
	.byte	0xc3
	.uleb128 0x1c
	.long	.LASF329
	.byte	0xc4
	.uleb128 0x1c
	.long	.LASF330
	.byte	0xc5
	.uleb128 0x1c
	.long	.LASF331
	.byte	0xc6
	.uleb128 0x1c
	.long	.LASF332
	.byte	0xc7
	.uleb128 0x1c
	.long	.LASF333
	.byte	0xeb
	.uleb128 0x1c
	.long	.LASF334
	.byte	0xec
	.uleb128 0x1c
	.long	.LASF335
	.byte	0xed
	.uleb128 0x1c
	.long	.LASF336
	.byte	0xee
	.uleb128 0x1c
	.long	.LASF337
	.byte	0xef
	.uleb128 0x1c
	.long	.LASF338
	.byte	0xf0
	.uleb128 0x1c
	.long	.LASF339
	.byte	0xf1
	.uleb128 0x1c
	.long	.LASF340
	.byte	0xf2
	.uleb128 0x1c
	.long	.LASF341
	.byte	0xf3
	.uleb128 0x1c
	.long	.LASF342
	.byte	0xf4
	.uleb128 0x1c
	.long	.LASF343
	.byte	0xf5
	.uleb128 0x1c
	.long	.LASF344
	.byte	0xf6
	.uleb128 0x1c
	.long	.LASF345
	.byte	0xf7
	.uleb128 0x1c
	.long	.LASF346
	.byte	0xf8
	.byte	0
	.uleb128 0x1f
	.long	.LASF347
	.byte	0x1b
	.byte	0x24
	.long	0x113
	.uleb128 0x1f
	.long	.LASF348
	.byte	0x1b
	.byte	0x32
	.long	0x74
	.uleb128 0x1f
	.long	.LASF349
	.byte	0x1b
	.byte	0x37
	.long	0x74
	.uleb128 0x1f
	.long	.LASF350
	.byte	0x1b
	.byte	0x3b
	.long	0x74
	.uleb128 0x20
	.long	.LASF820
	.byte	0x13
	.byte	0x9a
	.uleb128 0xb
	.long	.LASF351
	.byte	0x18
	.byte	0x13
	.byte	0xa0
	.long	0xdb3
	.uleb128 0xc
	.long	.LASF352
	.byte	0x13
	.byte	0xa1
	.long	0xdb3
	.byte	0
	.uleb128 0xc
	.long	.LASF353
	.byte	0x13
	.byte	0xa2
	.long	0xdb9
	.byte	0x8
	.uleb128 0xc
	.long	.LASF354
	.byte	0x13
	.byte	0xa6
	.long	0x74
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd82
	.uleb128 0x6
	.byte	0x8
	.long	0x1ef
	.uleb128 0x9
	.long	0x11e
	.long	0xdcf
	.uleb128 0xa
	.long	0x3e
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xd7b
	.uleb128 0x9
	.long	0x11e
	.long	0xde5
	.uleb128 0xa
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.long	.LASF356
	.uleb128 0x1d
	.long	.LASF357
	.byte	0x13
	.value	0x13f
	.long	0xde5
	.uleb128 0x1d
	.long	.LASF358
	.byte	0x13
	.value	0x140
	.long	0xde5
	.uleb128 0x1d
	.long	.LASF359
	.byte	0x13
	.value	0x141
	.long	0xde5
	.uleb128 0x1f
	.long	.LASF360
	.byte	0x1c
	.byte	0x87
	.long	0xdb9
	.uleb128 0x1f
	.long	.LASF361
	.byte	0x1c
	.byte	0x88
	.long	0xdb9
	.uleb128 0x1f
	.long	.LASF362
	.byte	0x1c
	.byte	0x89
	.long	0xdb9
	.uleb128 0x1f
	.long	.LASF363
	.byte	0x1d
	.byte	0x1a
	.long	0x74
	.uleb128 0x9
	.long	0x380
	.long	0xe45
	.uleb128 0x21
	.byte	0
	.uleb128 0x1f
	.long	.LASF364
	.byte	0x1d
	.byte	0x1b
	.long	0xe3a
	.uleb128 0x1f
	.long	.LASF365
	.byte	0x1d
	.byte	0x1e
	.long	0x74
	.uleb128 0x1f
	.long	.LASF366
	.byte	0x1d
	.byte	0x1f
	.long	0xe3a
	.uleb128 0x17
	.long	0xf0
	.long	0xe75
	.uleb128 0x13
	.long	0x56a
	.byte	0
	.uleb128 0x1f
	.long	.LASF367
	.byte	0x1e
	.byte	0x4c
	.long	0xe80
	.uleb128 0x6
	.byte	0x8
	.long	0xe66
	.uleb128 0x19
	.long	0xe96
	.uleb128 0x13
	.long	0xf0
	.uleb128 0x13
	.long	0xe96
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xe9c
	.uleb128 0x22
	.uleb128 0x1f
	.long	.LASF368
	.byte	0x1e
	.byte	0x8f
	.long	0xeae
	.uleb128 0x6
	.byte	0x8
	.long	0xe86
	.uleb128 0x23
	.long	0xea8
	.uleb128 0x17
	.long	0xf0
	.long	0xec7
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0xe96
	.byte	0
	.uleb128 0x1f
	.long	.LASF369
	.byte	0x1e
	.byte	0x92
	.long	0xed8
	.uleb128 0x6
	.byte	0x8
	.long	0xeb3
	.uleb128 0x23
	.long	0xed2
	.uleb128 0x17
	.long	0xf0
	.long	0xef6
	.uleb128 0x13
	.long	0xf0
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0xe96
	.byte	0
	.uleb128 0x1f
	.long	.LASF370
	.byte	0x1e
	.byte	0x95
	.long	0xf07
	.uleb128 0x6
	.byte	0x8
	.long	0xedd
	.uleb128 0x23
	.long	0xf01
	.uleb128 0x17
	.long	0xf0
	.long	0xf25
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0xe96
	.byte	0
	.uleb128 0x1f
	.long	.LASF371
	.byte	0x1e
	.byte	0x99
	.long	0xf36
	.uleb128 0x6
	.byte	0x8
	.long	0xf0c
	.uleb128 0x23
	.long	0xf30
	.uleb128 0x24
	.uleb128 0x1f
	.long	.LASF372
	.byte	0x1e
	.byte	0x9d
	.long	0xf4d
	.uleb128 0x6
	.byte	0x8
	.long	0xf3b
	.uleb128 0x23
	.long	0xf47
	.uleb128 0x25
	.long	.LASF373
	.value	0x160
	.byte	0x4
	.byte	0xd
	.long	0xf9c
	.uleb128 0xc
	.long	.LASF374
	.byte	0x4
	.byte	0xf
	.long	0x798
	.byte	0
	.uleb128 0xc
	.long	.LASF375
	.byte	0x4
	.byte	0x11
	.long	0x17e
	.byte	0x48
	.uleb128 0xc
	.long	.LASF93
	.byte	0x4
	.byte	0x12
	.long	0x3b5
	.byte	0x50
	.uleb128 0xc
	.long	.LASF376
	.byte	0x4
	.byte	0x13
	.long	0xf9c
	.byte	0x58
	.uleb128 0xc
	.long	.LASF377
	.byte	0x4
	.byte	0x14
	.long	0xfa2
	.byte	0x60
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x5a5
	.uleb128 0x9
	.long	0x11e
	.long	0xfb2
	.uleb128 0xa
	.long	0x3e
	.byte	0xfe
	.byte	0
	.uleb128 0x26
	.string	"std"
	.byte	0x12
	.byte	0
	.long	0x10ac
	.uleb128 0x27
	.long	.LASF379
	.byte	0x20
	.byte	0xfd
	.uleb128 0x28
	.byte	0x20
	.byte	0xfd
	.long	0xfbd
	.uleb128 0x29
	.byte	0x1f
	.byte	0x7f
	.long	0x1138
	.uleb128 0x29
	.byte	0x1f
	.byte	0x80
	.long	0x1168
	.uleb128 0x29
	.byte	0x1f
	.byte	0x86
	.long	0x11c9
	.uleb128 0x29
	.byte	0x1f
	.byte	0x89
	.long	0x11df
	.uleb128 0x29
	.byte	0x1f
	.byte	0x8c
	.long	0x11f9
	.uleb128 0x29
	.byte	0x1f
	.byte	0x8d
	.long	0x120e
	.uleb128 0x29
	.byte	0x1f
	.byte	0x8e
	.long	0x1223
	.uleb128 0x29
	.byte	0x1f
	.byte	0x8f
	.long	0x1238
	.uleb128 0x29
	.byte	0x1f
	.byte	0x91
	.long	0x1262
	.uleb128 0x29
	.byte	0x1f
	.byte	0x94
	.long	0x127d
	.uleb128 0x29
	.byte	0x1f
	.byte	0x96
	.long	0x1293
	.uleb128 0x29
	.byte	0x1f
	.byte	0x99
	.long	0x12ae
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9a
	.long	0x12c9
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9b
	.long	0x12ef
	.uleb128 0x29
	.byte	0x1f
	.byte	0x9d
	.long	0x130f
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa0
	.long	0x1330
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa3
	.long	0x1342
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa5
	.long	0x134e
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa6
	.long	0x1360
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa7
	.long	0x137a
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa8
	.long	0x1399
	.uleb128 0x29
	.byte	0x1f
	.byte	0xa9
	.long	0x13b8
	.uleb128 0x29
	.byte	0x1f
	.byte	0xab
	.long	0x13ce
	.uleb128 0x29
	.byte	0x1f
	.byte	0xac
	.long	0x13f4
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf0
	.long	0x1198
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf5
	.long	0x10f8
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf6
	.long	0x140f
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf8
	.long	0x142a
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf9
	.long	0x147d
	.uleb128 0x29
	.byte	0x1f
	.byte	0xfa
	.long	0x143f
	.uleb128 0x29
	.byte	0x1f
	.byte	0xfb
	.long	0x145e
	.uleb128 0x29
	.byte	0x1f
	.byte	0xfc
	.long	0x1497
	.byte	0
	.uleb128 0x2a
	.long	.LASF378
	.byte	0x20
	.byte	0xff
	.long	0x1113
	.uleb128 0x2b
	.long	.LASF379
	.byte	0x20
	.value	0x101
	.uleb128 0x2c
	.byte	0x20
	.value	0x101
	.long	0x10b7
	.uleb128 0x29
	.byte	0x1f
	.byte	0xc8
	.long	0x1198
	.uleb128 0x29
	.byte	0x1f
	.byte	0xd8
	.long	0x140f
	.uleb128 0x29
	.byte	0x1f
	.byte	0xe3
	.long	0x142a
	.uleb128 0x29
	.byte	0x1f
	.byte	0xe4
	.long	0x143f
	.uleb128 0x29
	.byte	0x1f
	.byte	0xe5
	.long	0x145e
	.uleb128 0x29
	.byte	0x1f
	.byte	0xe7
	.long	0x147d
	.uleb128 0x29
	.byte	0x1f
	.byte	0xe8
	.long	0x1497
	.uleb128 0x2d
	.string	"div"
	.byte	0x1f
	.byte	0xd5
	.long	.LASF821
	.long	0x1198
	.uleb128 0x13
	.long	0x575
	.uleb128 0x13
	.long	0x575
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x21
	.byte	0x3b
	.long	.LASF381
	.long	0x1138
	.uleb128 0xc
	.long	.LASF382
	.byte	0x21
	.byte	0x3c
	.long	0x74
	.byte	0
	.uleb128 0x2e
	.string	"rem"
	.byte	0x21
	.byte	0x3d
	.long	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF383
	.byte	0x21
	.byte	0x3e
	.long	0x1113
	.uleb128 0x18
	.byte	0x10
	.byte	0x21
	.byte	0x43
	.long	.LASF384
	.long	0x1168
	.uleb128 0xc
	.long	.LASF382
	.byte	0x21
	.byte	0x44
	.long	0x86
	.byte	0
	.uleb128 0x2e
	.string	"rem"
	.byte	0x21
	.byte	0x45
	.long	0x86
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF385
	.byte	0x21
	.byte	0x46
	.long	0x1143
	.uleb128 0x18
	.byte	0x10
	.byte	0x21
	.byte	0x4d
	.long	.LASF386
	.long	0x1198
	.uleb128 0xc
	.long	.LASF382
	.byte	0x21
	.byte	0x4e
	.long	0x575
	.byte	0
	.uleb128 0x2e
	.string	"rem"
	.byte	0x21
	.byte	0x4f
	.long	0x575
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF387
	.byte	0x21
	.byte	0x50
	.long	0x1173
	.uleb128 0x2f
	.long	.LASF388
	.byte	0x21
	.value	0x325
	.long	0x11af
	.uleb128 0x6
	.byte	0x8
	.long	0x11b5
	.uleb128 0x17
	.long	0x74
	.long	0x11c9
	.uleb128 0x13
	.long	0xe96
	.uleb128 0x13
	.long	0xe96
	.byte	0
	.uleb128 0x30
	.long	.LASF389
	.byte	0x21
	.value	0x250
	.long	0x74
	.long	0x11df
	.uleb128 0x13
	.long	0xf47
	.byte	0
	.uleb128 0x31
	.long	.LASF390
	.byte	0x21
	.value	0x255
	.long	.LASF390
	.long	0x74
	.long	0x11f9
	.uleb128 0x13
	.long	0xf47
	.byte	0
	.uleb128 0x32
	.long	.LASF391
	.byte	0x21
	.byte	0x65
	.long	0x16b
	.long	0x120e
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x32
	.long	.LASF392
	.byte	0x21
	.byte	0x68
	.long	0x74
	.long	0x1223
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x32
	.long	.LASF393
	.byte	0x21
	.byte	0x6b
	.long	0x86
	.long	0x1238
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x30
	.long	.LASF394
	.byte	0x21
	.value	0x331
	.long	0xf0
	.long	0x1262
	.uleb128 0x13
	.long	0xe96
	.uleb128 0x13
	.long	0xe96
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0x11a3
	.byte	0
	.uleb128 0x33
	.string	"div"
	.byte	0x21
	.value	0x351
	.long	0x1138
	.long	0x127d
	.uleb128 0x13
	.long	0x74
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x30
	.long	.LASF395
	.byte	0x21
	.value	0x277
	.long	0x113
	.long	0x1293
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x30
	.long	.LASF396
	.byte	0x21
	.value	0x353
	.long	0x1168
	.long	0x12ae
	.uleb128 0x13
	.long	0x86
	.uleb128 0x13
	.long	0x86
	.byte	0
	.uleb128 0x30
	.long	.LASF397
	.byte	0x21
	.value	0x397
	.long	0x74
	.long	0x12c9
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x17e
	.byte	0
	.uleb128 0x30
	.long	.LASF398
	.byte	0x21
	.value	0x3a2
	.long	0x17e
	.long	0x12e9
	.uleb128 0x13
	.long	0x12e9
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x17e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x385
	.uleb128 0x30
	.long	.LASF399
	.byte	0x21
	.value	0x39a
	.long	0x74
	.long	0x130f
	.uleb128 0x13
	.long	0x12e9
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x17e
	.byte	0
	.uleb128 0x34
	.long	.LASF401
	.byte	0x21
	.value	0x33b
	.long	0x1330
	.uleb128 0x13
	.long	0xf0
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0x17e
	.uleb128 0x13
	.long	0x11a3
	.byte	0
	.uleb128 0x35
	.long	.LASF400
	.byte	0x21
	.value	0x26c
	.long	0x1342
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x36
	.long	.LASF822
	.byte	0x21
	.value	0x1c5
	.long	0x74
	.uleb128 0x34
	.long	.LASF402
	.byte	0x21
	.value	0x1c7
	.long	0x1360
	.uleb128 0x13
	.long	0x37
	.byte	0
	.uleb128 0x32
	.long	.LASF403
	.byte	0x21
	.byte	0x75
	.long	0x16b
	.long	0x137a
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.byte	0
	.uleb128 0x32
	.long	.LASF404
	.byte	0x21
	.byte	0xb0
	.long	0x86
	.long	0x1399
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x32
	.long	.LASF405
	.byte	0x21
	.byte	0xb4
	.long	0x3e
	.long	0x13b8
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x30
	.long	.LASF406
	.byte	0x21
	.value	0x30d
	.long	0x74
	.long	0x13ce
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x30
	.long	.LASF407
	.byte	0x21
	.value	0x3a5
	.long	0x17e
	.long	0x13ee
	.uleb128 0x13
	.long	0x113
	.uleb128 0x13
	.long	0x13ee
	.uleb128 0x13
	.long	0x17e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x38c
	.uleb128 0x30
	.long	.LASF408
	.byte	0x21
	.value	0x39e
	.long	0x74
	.long	0x140f
	.uleb128 0x13
	.long	0x113
	.uleb128 0x13
	.long	0x385
	.byte	0
	.uleb128 0x30
	.long	.LASF409
	.byte	0x21
	.value	0x357
	.long	0x1198
	.long	0x142a
	.uleb128 0x13
	.long	0x575
	.uleb128 0x13
	.long	0x575
	.byte	0
	.uleb128 0x32
	.long	.LASF410
	.byte	0x21
	.byte	0x70
	.long	0x575
	.long	0x143f
	.uleb128 0x13
	.long	0x37a
	.byte	0
	.uleb128 0x32
	.long	.LASF411
	.byte	0x21
	.byte	0xc8
	.long	0x575
	.long	0x145e
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x32
	.long	.LASF412
	.byte	0x21
	.byte	0xcd
	.long	0x7c8
	.long	0x147d
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x32
	.long	.LASF413
	.byte	0x21
	.byte	0x7b
	.long	0x164
	.long	0x1497
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.byte	0
	.uleb128 0x32
	.long	.LASF414
	.byte	0x21
	.byte	0x7e
	.long	0x177
	.long	0x14b1
	.uleb128 0x13
	.long	0x37a
	.uleb128 0x13
	.long	0x66b
	.byte	0
	.uleb128 0x29
	.byte	0x22
	.byte	0x27
	.long	0x11c9
	.uleb128 0x29
	.byte	0x22
	.byte	0x2b
	.long	0x11df
	.uleb128 0x29
	.byte	0x22
	.byte	0x2e
	.long	0x1330
	.uleb128 0x29
	.byte	0x22
	.byte	0x33
	.long	0x1138
	.uleb128 0x29
	.byte	0x22
	.byte	0x34
	.long	0x1168
	.uleb128 0x33
	.string	"abs"
	.byte	0x21
	.value	0x345
	.long	0x74
	.long	0x14ea
	.uleb128 0x13
	.long	0x74
	.byte	0
	.uleb128 0x29
	.byte	0x22
	.byte	0x36
	.long	0x14d4
	.uleb128 0x29
	.byte	0x22
	.byte	0x37
	.long	0x11f9
	.uleb128 0x29
	.byte	0x22
	.byte	0x38
	.long	0x120e
	.uleb128 0x29
	.byte	0x22
	.byte	0x39
	.long	0x1223
	.uleb128 0x29
	.byte	0x22
	.byte	0x3a
	.long	0x1238
	.uleb128 0x29
	.byte	0x22
	.byte	0x3c
	.long	0x10f8
	.uleb128 0x29
	.byte	0x22
	.byte	0x3e
	.long	0x127d
	.uleb128 0x29
	.byte	0x22
	.byte	0x40
	.long	0x1293
	.uleb128 0x29
	.byte	0x22
	.byte	0x43
	.long	0x12ae
	.uleb128 0x29
	.byte	0x22
	.byte	0x44
	.long	0x12c9
	.uleb128 0x29
	.byte	0x22
	.byte	0x45
	.long	0x12ef
	.uleb128 0x29
	.byte	0x22
	.byte	0x47
	.long	0x130f
	.uleb128 0x29
	.byte	0x22
	.byte	0x48
	.long	0x1342
	.uleb128 0x29
	.byte	0x22
	.byte	0x4a
	.long	0x134e
	.uleb128 0x29
	.byte	0x22
	.byte	0x4b
	.long	0x1360
	.uleb128 0x29
	.byte	0x22
	.byte	0x4c
	.long	0x137a
	.uleb128 0x29
	.byte	0x22
	.byte	0x4d
	.long	0x1399
	.uleb128 0x29
	.byte	0x22
	.byte	0x4e
	.long	0x13b8
	.uleb128 0x29
	.byte	0x22
	.byte	0x50
	.long	0x13ce
	.uleb128 0x29
	.byte	0x22
	.byte	0x51
	.long	0x13f4
	.uleb128 0x37
	.long	.LASF416
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x5
	.byte	0xb
	.long	0x1606
	.uleb128 0x1c
	.long	.LASF417
	.byte	0
	.uleb128 0x1c
	.long	.LASF418
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF419
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF420
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF421
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF423
	.byte	0x6
	.uleb128 0x1c
	.long	.LASF424
	.byte	0x7
	.uleb128 0x1c
	.long	.LASF425
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF426
	.byte	0x9
	.uleb128 0x1c
	.long	.LASF427
	.byte	0xa
	.uleb128 0x1c
	.long	.LASF428
	.byte	0xb
	.uleb128 0x1c
	.long	.LASF429
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF430
	.byte	0xd
	.uleb128 0x1c
	.long	.LASF431
	.byte	0xe
	.uleb128 0x1c
	.long	.LASF432
	.byte	0xf
	.uleb128 0x1c
	.long	.LASF433
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF434
	.byte	0x11
	.uleb128 0x1c
	.long	.LASF435
	.byte	0x12
	.uleb128 0x1c
	.long	.LASF436
	.byte	0x13
	.uleb128 0x1c
	.long	.LASF437
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	.LASF438
	.byte	0x18
	.byte	0x5
	.byte	0x28
	.long	0x162b
	.uleb128 0xc
	.long	.LASF439
	.byte	0x5
	.byte	0x2a
	.long	0x1576
	.byte	0
	.uleb128 0xc
	.long	.LASF440
	.byte	0x5
	.byte	0x2b
	.long	0x446
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	.LASF441
	.byte	0x10
	.byte	0x5
	.byte	0x2e
	.long	0x165b
	.uleb128 0x2e
	.string	"At"
	.byte	0x5
	.byte	0x30
	.long	0x113
	.byte	0
	.uleb128 0xc
	.long	.LASF442
	.byte	0x5
	.byte	0x31
	.long	0x3a5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF443
	.byte	0x5
	.byte	0x32
	.long	0x3a5
	.byte	0xc
	.byte	0
	.uleb128 0x38
	.string	"tag"
	.byte	0x30
	.byte	0x6
	.byte	0x1e
	.long	0x1698
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x20
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF445
	.byte	0x6
	.byte	0x21
	.long	0x446
	.byte	0x10
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x23
	.long	0x1698
	.byte	0x20
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x24
	.long	0x1698
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x165b
	.uleb128 0x37
	.long	.LASF448
	.byte	0x7
	.byte	0x4
	.long	0x37
	.byte	0x6
	.byte	0x27
	.long	0x16ce
	.uleb128 0x1c
	.long	.LASF449
	.byte	0
	.uleb128 0x1c
	.long	.LASF450
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF451
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF452
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF453
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF454
	.byte	0x40
	.byte	0x6
	.byte	0x30
	.long	0x1753
	.uleb128 0xc
	.long	.LASF439
	.byte	0x6
	.byte	0x32
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x33
	.long	0x446
	.byte	0x10
	.uleb128 0xc
	.long	.LASF455
	.byte	0x6
	.byte	0x35
	.long	0x391
	.byte	0x20
	.uleb128 0xc
	.long	.LASF456
	.byte	0x6
	.byte	0x36
	.long	0x391
	.byte	0x21
	.uleb128 0xc
	.long	.LASF457
	.byte	0x6
	.byte	0x37
	.long	0x391
	.byte	0x22
	.uleb128 0xc
	.long	.LASF458
	.byte	0x6
	.byte	0x38
	.long	0x391
	.byte	0x23
	.uleb128 0xc
	.long	.LASF459
	.byte	0x6
	.byte	0x39
	.long	0x3a5
	.byte	0x24
	.uleb128 0xc
	.long	.LASF460
	.byte	0x6
	.byte	0x3a
	.long	0x169e
	.byte	0x28
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x3c
	.long	0x1753
	.byte	0x30
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x3d
	.long	0x1753
	.byte	0x38
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16ce
	.uleb128 0xb
	.long	.LASF461
	.byte	0x30
	.byte	0x6
	.byte	0x40
	.long	0x1796
	.uleb128 0xc
	.long	.LASF462
	.byte	0x6
	.byte	0x42
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x43
	.long	0x446
	.byte	0x10
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x45
	.long	0x1796
	.byte	0x20
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x46
	.long	0x1796
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1759
	.uleb128 0xb
	.long	.LASF463
	.byte	0x80
	.byte	0x6
	.byte	0x49
	.long	0x17f1
	.uleb128 0xc
	.long	.LASF464
	.byte	0x6
	.byte	0x4b
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF439
	.byte	0x6
	.byte	0x4c
	.long	0x446
	.byte	0x10
	.uleb128 0x2e
	.string	"Cmd"
	.byte	0x6
	.byte	0x4d
	.long	0x446
	.byte	0x20
	.uleb128 0xc
	.long	.LASF465
	.byte	0x6
	.byte	0x4f
	.long	0x16ce
	.byte	0x30
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x51
	.long	0x17f1
	.byte	0x70
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x52
	.long	0x17f1
	.byte	0x78
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x179c
	.uleb128 0xb
	.long	.LASF466
	.byte	0x48
	.byte	0x6
	.byte	0x55
	.long	0x1834
	.uleb128 0xc
	.long	.LASF439
	.byte	0x6
	.byte	0x57
	.long	0x1753
	.byte	0
	.uleb128 0xc
	.long	.LASF467
	.byte	0x6
	.byte	0x58
	.long	0x165b
	.byte	0x8
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x5a
	.long	0x1834
	.byte	0x38
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x5b
	.long	0x1834
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x17f7
	.uleb128 0xb
	.long	.LASF468
	.byte	0xa0
	.byte	0x6
	.byte	0x5e
	.long	0x188f
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x60
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF467
	.byte	0x6
	.byte	0x61
	.long	0x165b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF469
	.byte	0x6
	.byte	0x62
	.long	0x17f7
	.byte	0x40
	.uleb128 0xc
	.long	.LASF470
	.byte	0x6
	.byte	0x63
	.long	0x3b5
	.byte	0x88
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x65
	.long	0x188f
	.byte	0x90
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x66
	.long	0x188f
	.byte	0x98
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x183a
	.uleb128 0xb
	.long	.LASF471
	.byte	0x50
	.byte	0x6
	.byte	0x69
	.long	0x18d2
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x6b
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF467
	.byte	0x6
	.byte	0x6c
	.long	0x165b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x6e
	.long	0x18d2
	.byte	0x40
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x6f
	.long	0x18d2
	.byte	0x48
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1895
	.uleb128 0xb
	.long	.LASF472
	.byte	0xa8
	.byte	0x6
	.byte	0x72
	.long	0x192d
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x74
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF467
	.byte	0x6
	.byte	0x75
	.long	0x165b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF469
	.byte	0x6
	.byte	0x76
	.long	0x1895
	.byte	0x40
	.uleb128 0xc
	.long	.LASF470
	.byte	0x6
	.byte	0x77
	.long	0x3b5
	.byte	0x90
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x79
	.long	0x192d
	.byte	0x98
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x7a
	.long	0x192d
	.byte	0xa0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x18d8
	.uleb128 0xb
	.long	.LASF473
	.byte	0x98
	.byte	0x6
	.byte	0x7d
	.long	0x1988
	.uleb128 0xc
	.long	.LASF444
	.byte	0x6
	.byte	0x7f
	.long	0x446
	.byte	0
	.uleb128 0xc
	.long	.LASF467
	.byte	0x6
	.byte	0x80
	.long	0x165b
	.byte	0x10
	.uleb128 0xc
	.long	.LASF465
	.byte	0x6
	.byte	0x81
	.long	0x16ce
	.byte	0x40
	.uleb128 0xc
	.long	.LASF474
	.byte	0x6
	.byte	0x82
	.long	0x3b5
	.byte	0x80
	.uleb128 0xc
	.long	.LASF446
	.byte	0x6
	.byte	0x84
	.long	0x1988
	.byte	0x88
	.uleb128 0xc
	.long	.LASF447
	.byte	0x6
	.byte	0x85
	.long	0x1988
	.byte	0x90
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1933
	.uleb128 0x25
	.long	.LASF475
	.value	0x298
	.byte	0x6
	.byte	0x8f
	.long	0x19e7
	.uleb128 0xc
	.long	.LASF476
	.byte	0x6
	.byte	0x91
	.long	0x440
	.byte	0
	.uleb128 0xc
	.long	.LASF477
	.byte	0x6
	.byte	0x93
	.long	0x183a
	.byte	0x8
	.uleb128 0xc
	.long	.LASF478
	.byte	0x6
	.byte	0x94
	.long	0x18d8
	.byte	0xa8
	.uleb128 0x39
	.long	.LASF479
	.byte	0x6
	.byte	0x95
	.long	0x1933
	.value	0x150
	.uleb128 0x39
	.long	.LASF480
	.byte	0x6
	.byte	0x96
	.long	0x179c
	.value	0x1e8
	.uleb128 0x39
	.long	.LASF481
	.byte	0x6
	.byte	0x97
	.long	0x1759
	.value	0x268
	.byte	0
	.uleb128 0x3a
	.long	.LASF482
	.long	0x32010
	.byte	0x6
	.byte	0x9a
	.long	0x1a21
	.uleb128 0xc
	.long	.LASF483
	.byte	0x6
	.byte	0x9c
	.long	0x1a21
	.byte	0
	.uleb128 0x3b
	.long	.LASF75
	.byte	0x6
	.byte	0x9d
	.long	0x17e
	.long	0x32000
	.uleb128 0x3b
	.long	.LASF446
	.byte	0x6
	.byte	0x9f
	.long	0x1a34
	.long	0x32008
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x1a34
	.uleb128 0x3c
	.long	0x3e
	.long	0x31fff
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x19e7
	.uleb128 0x3d
	.long	.LASF484
	.byte	0x7
	.byte	0xf4
	.long	0x11e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__period
	.uleb128 0x3d
	.long	.LASF485
	.byte	0x7
	.byte	0xf5
	.long	0x11e
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL12stbsp__comma
	.uleb128 0x3e
	.byte	0xcc
	.byte	0x7
	.byte	0xf7
	.long	0x1a85
	.uleb128 0xc
	.long	.LASF486
	.byte	0x7
	.byte	0xf8
	.long	0x62
	.byte	0
	.uleb128 0xc
	.long	.LASF487
	.byte	0x7
	.byte	0xf9
	.long	0x1a85
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x1a95
	.uleb128 0xa
	.long	0x3e
	.byte	0xc8
	.byte	0
	.uleb128 0x3d
	.long	.LASF488
	.byte	0x7
	.byte	0xfa
	.long	0x1a64
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__digitpair
	.uleb128 0x3f
	.long	.LASF489
	.value	0x210
	.byte	0x7
	.value	0x54f
	.long	0x1aed
	.uleb128 0x40
	.string	"buf"
	.byte	0x7
	.value	0x550
	.long	0x113
	.byte	0
	.uleb128 0xd
	.long	.LASF490
	.byte	0x7
	.value	0x551
	.long	0x74
	.byte	0x8
	.uleb128 0xd
	.long	.LASF491
	.byte	0x7
	.value	0x552
	.long	0x74
	.byte	0xc
	.uleb128 0x40
	.string	"tmp"
	.byte	0x7
	.value	0x553
	.long	0x1aed
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x1afe
	.uleb128 0x41
	.long	0x3e
	.value	0x1ff
	.byte	0
	.uleb128 0x2f
	.long	.LASF489
	.byte	0x7
	.value	0x554
	.long	0x1aaa
	.uleb128 0x9
	.long	0x172
	.long	0x1b1a
	.uleb128 0xa
	.long	0x3e
	.byte	0x16
	.byte	0
	.uleb128 0x7
	.long	0x1b0a
	.uleb128 0x42
	.long	.LASF492
	.byte	0x7
	.value	0x5c8
	.long	0x1b1a
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10stbsp__bot
	.uleb128 0x9
	.long	0x172
	.long	0x1b45
	.uleb128 0xa
	.long	0x3e
	.byte	0x15
	.byte	0
	.uleb128 0x7
	.long	0x1b35
	.uleb128 0x42
	.long	.LASF493
	.byte	0x7
	.value	0x5cc
	.long	0x1b45
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__negbot
	.uleb128 0x42
	.long	.LASF494
	.byte	0x7
	.value	0x5d0
	.long	0x1b45
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__negboterr
	.uleb128 0x9
	.long	0x172
	.long	0x1b86
	.uleb128 0xa
	.long	0x3e
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x1b76
	.uleb128 0x42
	.long	.LASF495
	.byte	0x7
	.value	0x5d6
	.long	0x1b86
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL10stbsp__top
	.uleb128 0x42
	.long	.LASF496
	.byte	0x7
	.value	0x5d9
	.long	0x1b86
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__negtop
	.uleb128 0x42
	.long	.LASF497
	.byte	0x7
	.value	0x5dc
	.long	0x1b86
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__toperr
	.uleb128 0x42
	.long	.LASF498
	.byte	0x7
	.value	0x5eb
	.long	0x1b86
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL16stbsp__negtoperr
	.uleb128 0x9
	.long	0x7cf
	.long	0x1bf3
	.uleb128 0xa
	.long	0x3e
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	0x1be3
	.uleb128 0x42
	.long	.LASF499
	.byte	0x7
	.value	0x60b
	.long	0x1bf3
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL13stbsp__powten
	.uleb128 0x43
	.long	.LASF500
	.byte	0x8
	.byte	0x18
	.long	0x37a
	.uleb128 0x9
	.byte	0x3
	.quad	GeneratedTag
	.uleb128 0x44
	.long	.LASF517
	.byte	0x8
	.value	0x16c
	.long	0x74
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d8a
	.uleb128 0x45
	.long	.LASF501
	.byte	0x8
	.value	0x16c
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x45
	.long	.LASF502
	.byte	0x8
	.value	0x16c
	.long	0x66b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x42
	.long	.LASF503
	.byte	0x8
	.value	0x177
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -245
	.uleb128 0x42
	.long	.LASF504
	.byte	0x8
	.value	0x178
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x42
	.long	.LASF74
	.byte	0x8
	.value	0x183
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x42
	.long	.LASF505
	.byte	0x8
	.value	0x184
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x42
	.long	.LASF476
	.byte	0x8
	.value	0x185
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x42
	.long	.LASF506
	.byte	0x8
	.value	0x187
	.long	0x3b0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x42
	.long	.LASF507
	.byte	0x8
	.value	0x188
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x42
	.long	.LASF508
	.byte	0x8
	.value	0x18a
	.long	0x162b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x46
	.quad	.LBB324
	.quad	.LBE324-.LBB324
	.uleb128 0x42
	.long	.LASF509
	.byte	0x8
	.value	0x18d
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x42
	.long	.LASF510
	.byte	0x8
	.value	0x18e
	.long	0x41b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x42
	.long	.LASF511
	.byte	0x8
	.value	0x18f
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x42
	.long	.LASF512
	.byte	0x8
	.value	0x190
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x42
	.long	.LASF513
	.byte	0x8
	.value	0x193
	.long	0x1d8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x42
	.long	.LASF514
	.byte	0x8
	.value	0x194
	.long	0x5a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF515
	.byte	0x8
	.value	0x1a6
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x46
	.quad	.LBB325
	.quad	.LBE325-.LBB325
	.uleb128 0x42
	.long	.LASF516
	.byte	0x8
	.value	0x19d
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0xf52
	.uleb128 0x6
	.byte	0x8
	.long	0x198e
	.uleb128 0x47
	.long	.LASF518
	.byte	0x8
	.value	0x157
	.long	.LASF521
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de9
	.uleb128 0x45
	.long	.LASF515
	.byte	0x8
	.value	0x157
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x46
	.quad	.LBB323
	.quad	.LBE323-.LBB323
	.uleb128 0x42
	.long	.LASF519
	.byte	0x8
	.value	0x15b
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF520
	.byte	0x8
	.value	0x142
	.long	.LASF522
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e7e
	.uleb128 0x45
	.long	.LASF515
	.byte	0x8
	.value	0x142
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x45
	.long	.LASF509
	.byte	0x8
	.value	0x142
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x45
	.long	.LASF504
	.byte	0x8
	.value	0x142
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x46
	.quad	.LBB321
	.quad	.LBE321-.LBB321
	.uleb128 0x42
	.long	.LASF523
	.byte	0x8
	.value	0x146
	.long	0xfa2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x42
	.long	.LASF519
	.byte	0x8
	.value	0x149
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x42
	.long	.LASF524
	.byte	0x8
	.value	0x14a
	.long	0x1e7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x36f
	.uleb128 0x48
	.long	.LASF653
	.byte	0x8
	.byte	0x71
	.long	.LASF695
	.long	0x1a34
	.quad	.LFB106
	.quad	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f41
	.uleb128 0x49
	.long	.LASF476
	.byte	0x8
	.byte	0x71
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x49
	.long	.LASF504
	.byte	0x8
	.byte	0x71
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x49
	.long	.LASF525
	.byte	0x8
	.byte	0x71
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x49
	.long	.LASF526
	.byte	0x8
	.byte	0x71
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3d
	.long	.LASF527
	.byte	0x8
	.byte	0x74
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF528
	.byte	0x8
	.byte	0x75
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB318
	.quad	.LBE318-.LBB318
	.uleb128 0xf
	.string	"i"
	.byte	0x8
	.byte	0x78
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x46
	.quad	.LBB319
	.quad	.LBE319-.LBB319
	.uleb128 0xf
	.string	"C"
	.byte	0x8
	.byte	0x7a
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF529
	.byte	0xc
	.value	0x1bf
	.long	.LASF530
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd4
	.uleb128 0x45
	.long	.LASF477
	.byte	0xc
	.value	0x1bf
	.long	0x188f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x45
	.long	.LASF476
	.byte	0xc
	.value	0x1bf
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x45
	.long	.LASF531
	.byte	0xc
	.value	0x1bf
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x45
	.long	.LASF532
	.byte	0xc
	.value	0x1bf
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF533
	.byte	0xc
	.value	0x1c1
	.long	0x188f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB317
	.quad	.LBE317-.LBB317
	.uleb128 0x4a
	.string	"Tag"
	.byte	0xc
	.value	0x1cf
	.long	0x1698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	.LASF534
	.byte	0xc
	.byte	0x6
	.long	.LASF557
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x2373
	.uleb128 0x49
	.long	.LASF533
	.byte	0xc
	.byte	0x6
	.long	0x188f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x4c
	.string	"Tag"
	.byte	0xc
	.byte	0x6
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x49
	.long	.LASF476
	.byte	0xc
	.byte	0x6
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x49
	.long	.LASF531
	.byte	0xc
	.byte	0x6
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x49
	.long	.LASF532
	.byte	0xc
	.byte	0x6
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x3d
	.long	.LASF535
	.byte	0xc
	.byte	0x26
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x3d
	.long	.LASF536
	.byte	0xc
	.byte	0x27
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x3d
	.long	.LASF537
	.byte	0xc
	.byte	0x28
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x3d
	.long	.LASF538
	.byte	0xc
	.byte	0x2d
	.long	0x1834
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xb
	.long	.LASF539
	.byte	0x10
	.byte	0xc
	.byte	0xed
	.long	0x2182
	.uleb128 0xc
	.long	.LASF540
	.byte	0xc
	.byte	0xed
	.long	0x2373
	.byte	0
	.uleb128 0xc
	.long	.LASF541
	.byte	0xc
	.byte	0xed
	.long	0x2379
	.byte	0x8
	.uleb128 0x4d
	.long	.LASF542
	.long	0x20ad
	.long	0x20c4
	.uleb128 0x11
	.long	0x20b2
	.uleb128 0x6
	.byte	0x8
	.long	0x207c
	.uleb128 0x13
	.long	0x20bd
	.uleb128 0x4e
	.byte	0x8
	.long	0x207c
	.byte	0
	.uleb128 0x4d
	.long	.LASF542
	.long	0x20d1
	.long	0x20e7
	.uleb128 0x11
	.long	0x20b2
	.uleb128 0x13
	.long	0x20db
	.uleb128 0x15
	.byte	0x8
	.long	0x20e1
	.uleb128 0x7
	.long	0x207c
	.byte	0
	.uleb128 0x4f
	.long	.LASF542
	.long	0x20f4
	.long	0x20fa
	.uleb128 0x11
	.long	0x20b2
	.byte	0
	.uleb128 0x4d
	.long	.LASF543
	.long	0x2107
	.long	0x2112
	.uleb128 0x11
	.long	0x20b2
	.uleb128 0x11
	.long	0x74
	.byte	0
	.uleb128 0x50
	.long	.LASF553
	.long	0x213c
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x213c
	.uleb128 0x6
	.byte	0x8
	.long	0x20e1
	.uleb128 0x7
	.long	0x2131
	.uleb128 0x51
	.long	.LASF554
	.long	0x2137
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF544
	.byte	0xc
	.byte	0xed
	.long	0x1753
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.long	.LASF439
	.byte	0xc
	.byte	0xed
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x52
	.long	.LASF476
	.long	0x2379
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x52
	.long	.LASF532
	.long	0x2373
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF545
	.byte	0xc
	.byte	0xed
	.long	0x207c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x53
	.quad	.LBB311
	.quad	.LBE311-.LBB311
	.long	0x2204
	.uleb128 0x3d
	.long	.LASF546
	.byte	0xc
	.byte	0x30
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -219
	.uleb128 0x3d
	.long	.LASF544
	.byte	0xc
	.byte	0x32
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x3d
	.long	.LASF547
	.byte	0xc
	.byte	0x37
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x3d
	.long	.LASF548
	.byte	0xc
	.byte	0x38
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -218
	.uleb128 0x46
	.quad	.LBB315
	.quad	.LBE315-.LBB315
	.uleb128 0x3d
	.long	.LASF549
	.byte	0xc
	.byte	0x4a
	.long	0x2204
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF550
	.byte	0x20
	.byte	0xc
	.byte	0x4a
	.long	0x2340
	.uleb128 0xc
	.long	.LASF540
	.byte	0xc
	.byte	0x4a
	.long	0x2373
	.byte	0
	.uleb128 0xc
	.long	.LASF541
	.byte	0xc
	.byte	0x4a
	.long	0x2379
	.byte	0x8
	.uleb128 0xc
	.long	.LASF551
	.byte	0xc
	.byte	0x4a
	.long	0x237f
	.byte	0x10
	.uleb128 0xc
	.long	.LASF552
	.byte	0xc
	.byte	0x4a
	.long	0x2385
	.byte	0x18
	.uleb128 0x4d
	.long	.LASF542
	.long	0x224d
	.long	0x2264
	.uleb128 0x11
	.long	0x2252
	.uleb128 0x6
	.byte	0x8
	.long	0x2204
	.uleb128 0x13
	.long	0x225d
	.uleb128 0x4e
	.byte	0x8
	.long	0x2204
	.byte	0
	.uleb128 0x4d
	.long	.LASF542
	.long	0x2271
	.long	0x2287
	.uleb128 0x11
	.long	0x2252
	.uleb128 0x13
	.long	0x227b
	.uleb128 0x15
	.byte	0x8
	.long	0x2281
	.uleb128 0x7
	.long	0x2204
	.byte	0
	.uleb128 0x4f
	.long	.LASF542
	.long	0x2294
	.long	0x229a
	.uleb128 0x11
	.long	0x2252
	.byte	0
	.uleb128 0x4d
	.long	.LASF543
	.long	0x22a7
	.long	0x22b2
	.uleb128 0x11
	.long	0x2252
	.uleb128 0x11
	.long	0x74
	.byte	0
	.uleb128 0x50
	.long	.LASF553
	.long	0x22dc
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x22dc
	.uleb128 0x6
	.byte	0x8
	.long	0x2281
	.uleb128 0x7
	.long	0x22d1
	.uleb128 0x51
	.long	.LASF554
	.long	0x22d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF555
	.byte	0xc
	.byte	0x4a
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.long	.LASF455
	.byte	0xc
	.byte	0x4a
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x52
	.long	.LASF548
	.long	0x2385
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x52
	.long	.LASF544
	.long	0x237f
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x52
	.long	.LASF476
	.long	0x2379
	.uleb128 0x5
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x52
	.long	.LASF532
	.long	0x2373
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x46
	.quad	.LBB316
	.quad	.LBE316-.LBB316
	.uleb128 0x42
	.long	.LASF546
	.byte	0xc
	.value	0x109
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -217
	.uleb128 0x42
	.long	.LASF544
	.byte	0xc
	.value	0x10a
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1a34
	.uleb128 0x15
	.byte	0x8
	.long	0x440
	.uleb128 0x15
	.byte	0x8
	.long	0x1753
	.uleb128 0x15
	.byte	0x8
	.long	0x11e
	.uleb128 0x4b
	.long	.LASF556
	.byte	0xb
	.byte	0x4
	.long	.LASF558
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x2482
	.uleb128 0x49
	.long	.LASF559
	.byte	0xb
	.byte	0x4
	.long	0x17f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -456
	.uleb128 0x49
	.long	.LASF481
	.byte	0xb
	.byte	0x4
	.long	0x1796
	.uleb128 0x3
	.byte	0x91
	.sleb128 -464
	.uleb128 0x49
	.long	.LASF476
	.byte	0xb
	.byte	0x5
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -472
	.uleb128 0x49
	.long	.LASF531
	.byte	0xb
	.byte	0x5
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -480
	.uleb128 0x49
	.long	.LASF532
	.byte	0xb
	.byte	0x5
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -488
	.uleb128 0x3d
	.long	.LASF560
	.byte	0xb
	.byte	0x8
	.long	0x17f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -440
	.uleb128 0x46
	.quad	.LBB310
	.quad	.LBE310-.LBB310
	.uleb128 0x3d
	.long	.LASF561
	.byte	0xb
	.byte	0xb
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x3d
	.long	.LASF562
	.byte	0xb
	.byte	0xc
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -400
	.uleb128 0x3d
	.long	.LASF563
	.byte	0xb
	.byte	0xd
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x3d
	.long	.LASF564
	.byte	0xb
	.byte	0xe
	.long	0x2482
	.uleb128 0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x3d
	.long	.LASF565
	.byte	0xb
	.byte	0xf
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -448
	.uleb128 0x3d
	.long	.LASF566
	.byte	0xb
	.byte	0x23
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -432
	.uleb128 0x3d
	.long	.LASF567
	.byte	0xb
	.byte	0x8b
	.long	0x1796
	.uleb128 0x3
	.byte	0x91
	.sleb128 -424
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x2493
	.uleb128 0x41
	.long	0x3e
	.value	0x12b
	.byte	0
	.uleb128 0x47
	.long	.LASF568
	.byte	0xa
	.value	0x141
	.long	.LASF569
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x2526
	.uleb128 0x45
	.long	.LASF478
	.byte	0xa
	.value	0x141
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x45
	.long	.LASF476
	.byte	0xa
	.value	0x141
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x45
	.long	.LASF531
	.byte	0xa
	.value	0x141
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x45
	.long	.LASF532
	.byte	0xa
	.value	0x141
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF570
	.byte	0xa
	.value	0x143
	.long	0x192d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB309
	.quad	.LBE309-.LBB309
	.uleb128 0x4a
	.string	"Tag"
	.byte	0xa
	.value	0x154
	.long	0x1698
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	.LASF571
	.byte	0xa
	.byte	0xb4
	.long	.LASF572
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x260e
	.uleb128 0x49
	.long	.LASF570
	.byte	0xa
	.byte	0xb4
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x4c
	.string	"Tag"
	.byte	0xa
	.byte	0xb4
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x49
	.long	.LASF476
	.byte	0xa
	.byte	0xb5
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x49
	.long	.LASF573
	.byte	0xa
	.byte	0xb5
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x49
	.long	.LASF574
	.byte	0xa
	.byte	0xb5
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3d
	.long	.LASF510
	.byte	0xa
	.byte	0xb7
	.long	0x41b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3d
	.long	.LASF535
	.byte	0xa
	.byte	0xb8
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3d
	.long	.LASF575
	.byte	0xa
	.byte	0xb9
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3d
	.long	.LASF576
	.byte	0xa
	.byte	0xba
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.LASF577
	.byte	0xa
	.byte	0xbd
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x3d
	.long	.LASF578
	.byte	0xa
	.byte	0xbe
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x46
	.quad	.LBB308
	.quad	.LBE308-.LBB308
	.uleb128 0x3d
	.long	.LASF579
	.byte	0xa
	.byte	0xdb
	.long	0x18d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	.LASF580
	.byte	0xa
	.byte	0x5d
	.long	.LASF581
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x2726
	.uleb128 0x49
	.long	.LASF570
	.byte	0xa
	.byte	0x5d
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x49
	.long	.LASF582
	.byte	0xa
	.byte	0x5d
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x49
	.long	.LASF476
	.byte	0xa
	.byte	0x5d
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x49
	.long	.LASF573
	.byte	0xa
	.byte	0x5d
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x49
	.long	.LASF574
	.byte	0xa
	.byte	0x5d
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3d
	.long	.LASF510
	.byte	0xa
	.byte	0x5f
	.long	0x41b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3d
	.long	.LASF535
	.byte	0xa
	.byte	0x60
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3d
	.long	.LASF575
	.byte	0xa
	.byte	0x61
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x3d
	.long	.LASF576
	.byte	0xa
	.byte	0x62
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.LASF577
	.byte	0xa
	.byte	0x65
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x3d
	.long	.LASF578
	.byte	0xa
	.byte	0x66
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x46
	.quad	.LBB305
	.quad	.LBE305-.LBB305
	.uleb128 0x3d
	.long	.LASF579
	.byte	0xa
	.byte	0x80
	.long	0x18d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x46
	.quad	.LBB306
	.quad	.LBE306-.LBB306
	.uleb128 0x3d
	.long	.LASF583
	.byte	0xa
	.byte	0x83
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF584
	.byte	0xa
	.byte	0x84
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	.LASF585
	.byte	0xa
	.byte	0x5
	.long	.LASF586
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x27ea
	.uleb128 0x49
	.long	.LASF570
	.byte	0xa
	.byte	0x5
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4c
	.string	"Tag"
	.byte	0xa
	.byte	0x5
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x49
	.long	.LASF476
	.byte	0xa
	.byte	0x6
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x49
	.long	.LASF573
	.byte	0xa
	.byte	0x6
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x49
	.long	.LASF574
	.byte	0xa
	.byte	0x6
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x3d
	.long	.LASF510
	.byte	0xa
	.byte	0x8
	.long	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF535
	.byte	0xa
	.byte	0x9
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3d
	.long	.LASF575
	.byte	0xa
	.byte	0xa
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3d
	.long	.LASF576
	.byte	0xa
	.byte	0xb
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF577
	.byte	0xa
	.byte	0xe
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.LASF578
	.byte	0xa
	.byte	0xf
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x4b
	.long	.LASF587
	.byte	0x9
	.byte	0x12
	.long	.LASF588
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x2857
	.uleb128 0x49
	.long	.LASF589
	.byte	0x9
	.byte	0x12
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x49
	.long	.LASF590
	.byte	0x9
	.byte	0x12
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x49
	.long	.LASF476
	.byte	0x9
	.byte	0x13
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x49
	.long	.LASF531
	.byte	0x9
	.byte	0x13
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x49
	.long	.LASF532
	.byte	0x9
	.byte	0x13
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x4b
	.long	.LASF591
	.byte	0x8
	.byte	0x5f
	.long	.LASF592
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b1
	.uleb128 0x49
	.long	.LASF593
	.byte	0x8
	.byte	0x5f
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF476
	.byte	0x8
	.byte	0x5f
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF594
	.byte	0x8
	.byte	0x5f
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF595
	.byte	0x8
	.byte	0x61
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x4b
	.long	.LASF591
	.byte	0x8
	.byte	0x40
	.long	.LASF596
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x2987
	.uleb128 0x49
	.long	.LASF597
	.byte	0x8
	.byte	0x40
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x49
	.long	.LASF476
	.byte	0x8
	.byte	0x40
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x49
	.long	.LASF79
	.byte	0x8
	.byte	0x40
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.LASF595
	.byte	0x8
	.byte	0x42
	.long	0x1a34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF598
	.byte	0x8
	.byte	0x43
	.long	0x189
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF599
	.byte	0x8
	.byte	0x44
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3d
	.long	.LASF600
	.byte	0x8
	.byte	0x45
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB301
	.quad	.LBE301-.LBB301
	.uleb128 0x3d
	.long	.LASF565
	.byte	0x8
	.byte	0x48
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3d
	.long	.LASF601
	.byte	0x8
	.byte	0x49
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x46
	.quad	.LBB303
	.quad	.LBE303-.LBB303
	.uleb128 0x3d
	.long	.LASF602
	.byte	0x8
	.byte	0x4c
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	.LASF603
	.byte	0x8
	.byte	0x1b
	.long	.LASF604
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a52
	.uleb128 0x49
	.long	.LASF597
	.byte	0x8
	.byte	0x1b
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x49
	.long	.LASF476
	.byte	0x8
	.byte	0x1b
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x49
	.long	.LASF79
	.byte	0x8
	.byte	0x1b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x54
	.uleb128 0x3d
	.long	.LASF605
	.byte	0x8
	.byte	0x1d
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x3d
	.long	.LASF595
	.byte	0x8
	.byte	0x20
	.long	0x1a34
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x3d
	.long	.LASF598
	.byte	0x8
	.byte	0x26
	.long	0x189
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x3d
	.long	.LASF565
	.byte	0x8
	.byte	0x27
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x3d
	.long	.LASF601
	.byte	0x8
	.byte	0x28
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x3d
	.long	.LASF606
	.byte	0x8
	.byte	0x2a
	.long	0x17e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x46
	.quad	.LBB299
	.quad	.LBE299-.LBB299
	.uleb128 0x3d
	.long	.LASF606
	.byte	0x8
	.byte	0x38
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.byte	0
	.uleb128 0x55
	.long	.LASF618
	.byte	0x7
	.value	0x68e
	.long	0x74
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca2
	.uleb128 0x45
	.long	.LASF607
	.byte	0x7
	.value	0x68e
	.long	0x2ca2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x56
	.string	"len"
	.byte	0x7
	.value	0x68e
	.long	0x2ca8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x56
	.string	"out"
	.byte	0x7
	.value	0x68e
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x45
	.long	.LASF608
	.byte	0x7
	.value	0x68e
	.long	0x2cae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x45
	.long	.LASF609
	.byte	0x7
	.value	0x68e
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x45
	.long	.LASF610
	.byte	0x7
	.value	0x68e
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x57
	.long	.LASF611
	.byte	0x7
	.value	0x6f2
	.quad	.L862
	.uleb128 0x57
	.long	.LASF612
	.byte	0x7
	.value	0x6e1
	.quad	.L854
	.uleb128 0x4a
	.string	"d"
	.byte	0x7
	.value	0x690
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x42
	.long	.LASF613
	.byte	0x7
	.value	0x691
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x42
	.long	.LASF614
	.byte	0x7
	.value	0x692
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4a
	.string	"e"
	.byte	0x7
	.value	0x692
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4a
	.string	"ng"
	.byte	0x7
	.value	0x692
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x42
	.long	.LASF615
	.byte	0x7
	.value	0x692
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x53
	.quad	.LBB282
	.quad	.LBE282-.LBB282
	.long	0x2b74
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x695
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.byte	0
	.uleb128 0x53
	.quad	.LBB285
	.quad	.LBE285-.LBB285
	.long	0x2b98
	.uleb128 0x4a
	.string	"v"
	.byte	0x7
	.value	0x6af
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x53
	.quad	.LBB286
	.quad	.LBE286-.LBB286
	.long	0x2c18
	.uleb128 0x4a
	.string	"ph"
	.byte	0x7
	.value	0x6b9
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4a
	.string	"pl"
	.byte	0x7
	.value	0x6b9
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x46
	.quad	.LBB287
	.quad	.LBE287-.LBB287
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x6c3
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x6c3
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4a
	.string	"vh"
	.byte	0x7
	.value	0x6c3
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4a
	.string	"t"
	.byte	0x7
	.value	0x6c3
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB289
	.quad	.LBE289-.LBB289
	.long	0x2c50
	.uleb128 0x4a
	.string	"dg"
	.byte	0x7
	.value	0x6cd
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x3b0
	.uleb128 0x4a
	.string	"r"
	.byte	0x7
	.value	0x6d6
	.long	0x7c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB295
	.quad	.LBE295-.LBB295
	.long	0x2c74
	.uleb128 0x4a
	.string	"n"
	.byte	0x7
	.value	0x6e6
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x46
	.quad	.LBB297
	.quad	.LBE297-.LBB297
	.uleb128 0x4a
	.string	"n"
	.byte	0x7
	.value	0x6f9
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4a
	.string	"o"
	.byte	0x7
	.value	0x6fa
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x37a
	.uleb128 0x6
	.byte	0x8
	.long	0x37
	.uleb128 0x6
	.byte	0x8
	.long	0x74
	.uleb128 0x59
	.long	.LASF616
	.byte	0x7
	.value	0x64b
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x33d2
	.uleb128 0x56
	.string	"ohi"
	.byte	0x7
	.value	0x64b
	.long	0x33d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -328
	.uleb128 0x56
	.string	"olo"
	.byte	0x7
	.value	0x64b
	.long	0x33d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x56
	.string	"d"
	.byte	0x7
	.value	0x64b
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x45
	.long	.LASF617
	.byte	0x7
	.value	0x64b
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x4a
	.string	"ph"
	.byte	0x7
	.value	0x64d
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x4a
	.string	"pl"
	.byte	0x7
	.value	0x64d
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x53
	.quad	.LBB234
	.quad	.LBE234-.LBB234
	.long	0x2e23
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x64f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x64f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x64f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x64f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x64f
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB235
	.quad	.LBE235-.LBB235
	.long	0x2db7
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x64f
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.uleb128 0x53
	.quad	.LBB236
	.quad	.LBE236-.LBB236
	.long	0x2ddc
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x64f
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.uleb128 0x53
	.quad	.LBB237
	.quad	.LBE237-.LBB237
	.long	0x2e01
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x64f
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -308
	.byte	0
	.uleb128 0x46
	.quad	.LBB238
	.quad	.LBE238-.LBB238
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x64f
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB239
	.quad	.LBE239-.LBB239
	.long	0x33b2
	.uleb128 0x4a
	.string	"e"
	.byte	0x7
	.value	0x651
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x4a
	.string	"et"
	.byte	0x7
	.value	0x651
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x4a
	.string	"eb"
	.byte	0x7
	.value	0x651
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x4a
	.string	"p2h"
	.byte	0x7
	.value	0x652
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4a
	.string	"p2l"
	.byte	0x7
	.value	0x652
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x53
	.quad	.LBB244
	.quad	.LBE244-.LBB244
	.long	0x2f78
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x661
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x661
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x661
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x661
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x661
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB245
	.quad	.LBE245-.LBB245
	.long	0x2f0c
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x661
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.byte	0
	.uleb128 0x53
	.quad	.LBB246
	.quad	.LBE246-.LBB246
	.long	0x2f31
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x661
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
	.uleb128 0x53
	.quad	.LBB247
	.quad	.LBE247-.LBB247
	.long	0x2f56
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x661
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0
	.uleb128 0x46
	.quad	.LBB248
	.quad	.LBE248-.LBB248
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x661
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB251
	.quad	.LBE251-.LBB251
	.long	0x2f9b
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x665
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x53
	.quad	.LBB252
	.quad	.LBE252-.LBB252
	.long	0x308e
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x667
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x667
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x667
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x667
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x667
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB253
	.quad	.LBE253-.LBB253
	.long	0x3022
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x667
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x53
	.quad	.LBB254
	.quad	.LBE254-.LBB254
	.long	0x3047
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x667
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.byte	0
	.uleb128 0x53
	.quad	.LBB255
	.quad	.LBE255-.LBB255
	.long	0x306c
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x667
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.byte	0
	.uleb128 0x46
	.quad	.LBB256
	.quad	.LBE256-.LBB256
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x667
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -260
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB260
	.quad	.LBE260-.LBB260
	.long	0x3183
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x672
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x672
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x672
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x672
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x672
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB261
	.quad	.LBE261-.LBB261
	.long	0x3117
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x672
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
	.uleb128 0x53
	.quad	.LBB262
	.quad	.LBE262-.LBB262
	.long	0x313c
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x672
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.byte	0
	.uleb128 0x53
	.quad	.LBB263
	.quad	.LBE263-.LBB263
	.long	0x3161
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x672
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.byte	0
	.uleb128 0x46
	.quad	.LBB264
	.quad	.LBE264-.LBB264
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x672
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB267
	.quad	.LBE267-.LBB267
	.long	0x31a7
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x674
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.uleb128 0x53
	.quad	.LBB268
	.quad	.LBE268-.LBB268
	.long	0x329c
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x675
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x675
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x675
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x675
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x675
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB269
	.quad	.LBE269-.LBB269
	.long	0x3230
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x675
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.uleb128 0x53
	.quad	.LBB270
	.quad	.LBE270-.LBB270
	.long	0x3255
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x675
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -236
	.byte	0
	.uleb128 0x53
	.quad	.LBB271
	.quad	.LBE271-.LBB271
	.long	0x327a
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x675
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x46
	.quad	.LBB272
	.quad	.LBE272-.LBB272
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x675
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LBB275
	.quad	.LBE275-.LBB275
	.long	0x32c0
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x67c
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x46
	.quad	.LBB276
	.quad	.LBE276-.LBB276
	.uleb128 0x4a
	.string	"ahi"
	.byte	0x7
	.value	0x67e
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x4a
	.string	"alo"
	.byte	0x7
	.value	0x67e
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x4a
	.string	"bhi"
	.byte	0x7
	.value	0x67e
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4a
	.string	"blo"
	.byte	0x7
	.value	0x67e
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4a
	.string	"bt"
	.byte	0x7
	.value	0x67e
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x53
	.quad	.LBB277
	.quad	.LBE277-.LBB277
	.long	0x3345
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x67e
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x53
	.quad	.LBB278
	.quad	.LBE278-.LBB278
	.long	0x336a
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x67e
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -220
	.byte	0
	.uleb128 0x53
	.quad	.LBB279
	.quad	.LBE279-.LBB279
	.long	0x338f
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x67e
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.uleb128 0x46
	.quad	.LBB280
	.quad	.LBE280-.LBB280
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x67e
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.quad	.LBB281
	.quad	.LBE281-.LBB281
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x685
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x16b
	.uleb128 0x55
	.long	.LASF619
	.byte	0x7
	.value	0x5b8
	.long	0x74
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x3463
	.uleb128 0x45
	.long	.LASF613
	.byte	0x7
	.value	0x5b8
	.long	0x3463
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	.LASF614
	.byte	0x7
	.value	0x5b8
	.long	0x2cae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x45
	.long	.LASF609
	.byte	0x7
	.value	0x5b8
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4a
	.string	"d"
	.byte	0x7
	.value	0x5ba
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4a
	.string	"b"
	.byte	0x7
	.value	0x5bb
	.long	0x575
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x46
	.quad	.LBB231
	.quad	.LBE231-.LBB231
	.uleb128 0x4a
	.string	"cn"
	.byte	0x7
	.value	0x5c0
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x575
	.uleb128 0x44
	.long	.LASF620
	.byte	0x7
	.value	0x5a5
	.long	0x74
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x34b8
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x5a5
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x56
	.string	"fmt"
	.byte	0x7
	.value	0x5a5
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x56
	.string	"va"
	.byte	0x7
	.value	0x5a5
	.long	0x34b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1b2
	.uleb128 0x44
	.long	.LASF621
	.byte	0x7
	.value	0x599
	.long	0x74
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x3531
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x599
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x45
	.long	.LASF490
	.byte	0x7
	.value	0x599
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x56
	.string	"fmt"
	.byte	0x7
	.value	0x599
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x54
	.uleb128 0x42
	.long	.LASF622
	.byte	0x7
	.value	0x59b
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x4a
	.string	"va"
	.byte	0x7
	.value	0x59c
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x44
	.long	.LASF623
	.byte	0x7
	.value	0x57b
	.long	0x74
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c1
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x57b
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x45
	.long	.LASF490
	.byte	0x7
	.value	0x57b
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x56
	.string	"fmt"
	.byte	0x7
	.value	0x57b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x56
	.string	"va"
	.byte	0x7
	.value	0x57b
	.long	0x34b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x4a
	.string	"c"
	.byte	0x7
	.value	0x57d
	.long	0x1afe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x46
	.quad	.LBB230
	.quad	.LBE230-.LBB230
	.uleb128 0x4a
	.string	"l"
	.byte	0x7
	.value	0x587
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -564
	.byte	0
	.byte	0
	.uleb128 0x5a
	.long	.LASF624
	.byte	0x7
	.value	0x572
	.long	0x113
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x361e
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x572
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x45
	.long	.LASF625
	.byte	0x7
	.value	0x572
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x56
	.string	"len"
	.byte	0x7
	.value	0x572
	.long	0x74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4a
	.string	"c"
	.byte	0x7
	.value	0x574
	.long	0x361e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x1afe
	.uleb128 0x5a
	.long	.LASF626
	.byte	0x7
	.value	0x556
	.long	0x113
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x36bc
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x556
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	.LASF625
	.byte	0x7
	.value	0x556
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x56
	.string	"len"
	.byte	0x7
	.value	0x556
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4a
	.string	"c"
	.byte	0x7
	.value	0x558
	.long	0x361e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x46
	.quad	.LBB228
	.quad	.LBE228-.LBB228
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x560
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4a
	.string	"se"
	.byte	0x7
	.value	0x560
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4a
	.string	"d"
	.byte	0x7
	.value	0x561
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	.LASF627
	.byte	0x7
	.value	0x545
	.long	0x74
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x371f
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x545
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x56
	.string	"fmt"
	.byte	0x7
	.value	0x545
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.uleb128 0x54
	.uleb128 0x42
	.long	.LASF622
	.byte	0x7
	.value	0x547
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -228
	.uleb128 0x4a
	.string	"va"
	.byte	0x7
	.value	0x548
	.long	0x55f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x44
	.long	.LASF628
	.byte	0x7
	.value	0x126
	.long	0x74
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dbf
	.uleb128 0x45
	.long	.LASF629
	.byte	0x7
	.value	0x126
	.long	0x3dbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -824
	.uleb128 0x45
	.long	.LASF625
	.byte	0x7
	.value	0x126
	.long	0xf0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x56
	.string	"buf"
	.byte	0x7
	.value	0x126
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x56
	.string	"fmt"
	.byte	0x7
	.value	0x126
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x56
	.string	"va"
	.byte	0x7
	.value	0x126
	.long	0x34b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x57
	.long	.LASF630
	.byte	0x7
	.value	0x3dd
	.quad	.L537
	.uleb128 0x57
	.long	.LASF631
	.byte	0x7
	.value	0x30c
	.quad	.L476
	.uleb128 0x57
	.long	.LASF632
	.byte	0x7
	.value	0x3b0
	.quad	.L473
	.uleb128 0x57
	.long	.LASF633
	.byte	0x7
	.value	0x31f
	.quad	.L455
	.uleb128 0x57
	.long	.LASF634
	.byte	0x7
	.value	0x2da
	.quad	.L448
	.uleb128 0x57
	.long	.LASF635
	.byte	0x7
	.value	0x45f
	.quad	.L401
	.uleb128 0x5b
	.string	"ld"
	.byte	0x7
	.value	0x232
	.quad	.L393
	.uleb128 0x57
	.long	.LASF636
	.byte	0x7
	.value	0x21e
	.quad	.L390
	.uleb128 0x57
	.long	.LASF637
	.byte	0x7
	.value	0x1ba
	.quad	.L348
	.uleb128 0x57
	.long	.LASF638
	.byte	0x7
	.value	0x52e
	.quad	.L682
	.uleb128 0x57
	.long	.LASF639
	.byte	0x7
	.value	0x527
	.quad	.L681
	.uleb128 0x57
	.long	.LASF640
	.byte	0x7
	.value	0x156
	.quad	.L322
	.uleb128 0x57
	.long	.LASF641
	.byte	0x7
	.value	0x17a
	.quad	.L323
	.uleb128 0x57
	.long	.LASF642
	.byte	0x7
	.value	0x153
	.quad	.L321
	.uleb128 0x4a
	.string	"hex"
	.byte	0x7
	.value	0x128
	.long	0x3dc5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZ16stbsp_vsprintfcbE3hex
	.uleb128 0x42
	.long	.LASF643
	.byte	0x7
	.value	0x129
	.long	0x3dc5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZZ16stbsp_vsprintfcbE4hexu
	.uleb128 0x4a
	.string	"bf"
	.byte	0x7
	.value	0x12a
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -632
	.uleb128 0x4a
	.string	"f"
	.byte	0x7
	.value	0x12b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -624
	.uleb128 0x42
	.long	.LASF644
	.byte	0x7
	.value	0x12c
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0
	.long	0x3d9c
	.uleb128 0x4a
	.string	"fw"
	.byte	0x7
	.value	0x131
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -788
	.uleb128 0x4a
	.string	"pr"
	.byte	0x7
	.value	0x131
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x4a
	.string	"tz"
	.byte	0x7
	.value	0x131
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x4a
	.string	"fl"
	.byte	0x7
	.value	0x132
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x40
	.long	0x3927
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x159
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -656
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x70
	.long	0x394d
	.uleb128 0x4a
	.string	"v"
	.byte	0x7
	.value	0x161
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -740
	.uleb128 0x4a
	.string	"c"
	.byte	0x7
	.value	0x161
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -736
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x4a
	.string	"num"
	.byte	0x7
	.value	0x207
	.long	0x1aed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x42
	.long	.LASF645
	.byte	0x7
	.value	0x208
	.long	0x7d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x42
	.long	.LASF646
	.byte	0x7
	.value	0x209
	.long	0x7d4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.uleb128 0x4a
	.string	"s"
	.byte	0x7
	.value	0x20a
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x4a
	.string	"h"
	.byte	0x7
	.value	0x20b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -608
	.uleb128 0x4a
	.string	"l"
	.byte	0x7
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -800
	.uleb128 0x4a
	.string	"n"
	.byte	0x7
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x4a
	.string	"cs"
	.byte	0x7
	.value	0x20c
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -772
	.uleb128 0x4a
	.string	"n64"
	.byte	0x7
	.value	0x20d
	.long	0x7c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x4a
	.string	"fv"
	.byte	0x7
	.value	0x20f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -600
	.uleb128 0x4a
	.string	"dp"
	.byte	0x7
	.value	0x211
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x4a
	.string	"sn"
	.byte	0x7
	.value	0x212
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -640
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0xe0
	.long	0x3a1e
	.uleb128 0x4a
	.string	"v"
	.byte	0x7
	.value	0x22b
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -732
	.byte	0
	.uleb128 0x53
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x3a42
	.uleb128 0x4a
	.string	"d"
	.byte	0x7
	.value	0x24e
	.long	0x2cae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.byte	0
	.uleb128 0x53
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x3a68
	.uleb128 0x42
	.long	.LASF647
	.byte	0x7
	.value	0x30f
	.long	0x16b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.byte	0
	.uleb128 0x53
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x3a8c
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x32c
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -768
	.byte	0
	.uleb128 0x53
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x3ab2
	.uleb128 0x4a
	.string	"idx"
	.byte	0x7
	.value	0x399
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -805
	.byte	0
	.uleb128 0x53
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x3ad8
	.uleb128 0x4a
	.string	"i64"
	.byte	0x7
	.value	0x40a
	.long	0x575
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.byte	0
	.uleb128 0x53
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.long	0x3afc
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x411
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -728
	.byte	0
	.uleb128 0x53
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.long	0x3b20
	.uleb128 0x4a
	.string	"o"
	.byte	0x7
	.value	0x42a
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x110
	.long	0x3bff
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x476
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -764
	.uleb128 0x4a
	.string	"c"
	.byte	0x7
	.value	0x477
	.long	0x37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -708
	.uleb128 0x53
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.long	0x3b6a
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x47c
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -724
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x140
	.long	0x3b84
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x48d
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -720
	.byte	0
	.uleb128 0x53
	.quad	.LBB122
	.quad	.LBE122-.LBB122
	.long	0x3ba9
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x493
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -716
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x170
	.long	0x3bc3
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x499
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -712
	.byte	0
	.uleb128 0x53
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.long	0x3be8
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x4a1
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -704
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x1a0
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x4b8
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.byte	0
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x1d0
	.long	0x3c52
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x4bf
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -760
	.uleb128 0x53
	.quad	.LBB148
	.quad	.LBE148-.LBB148
	.long	0x3c3b
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x4c0
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x200
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x4c6
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.byte	0
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x230
	.long	0x3ca5
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x4cc
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x53
	.quad	.LBB159
	.quad	.LBE159-.LBB159
	.long	0x3c8e
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x4cd
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x4d9
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -684
	.byte	0
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x290
	.long	0x3cf8
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x4de
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x53
	.quad	.LBB170
	.quad	.LBE170-.LBB170
	.long	0x3ce1
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x4df
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x2c0
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x4f0
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -676
	.byte	0
	.byte	0
	.uleb128 0x5c
	.long	.Ldebug_ranges0+0x2f0
	.long	0x3d4b
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x4f6
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -748
	.uleb128 0x53
	.quad	.LBB181
	.quad	.LBE181-.LBB181
	.long	0x3d34
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x4f7
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -672
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x320
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x4fd
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -668
	.byte	0
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x350
	.uleb128 0x4a
	.string	"i"
	.byte	0x7
	.value	0x504
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x53
	.quad	.LBB196
	.quad	.LBE196-.LBB196
	.long	0x3d83
	.uleb128 0x4a
	.string	"lg"
	.byte	0x7
	.value	0x505
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -664
	.byte	0
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x380
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x514
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -660
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.quad	.LBB223
	.quad	.LBE223-.LBB223
	.uleb128 0x4a
	.string	"len"
	.byte	0x7
	.value	0x52c
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -652
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x581
	.uleb128 0x9
	.long	0x11e
	.long	0x3dd5
	.uleb128 0xa
	.long	0x3e
	.byte	0x12
	.byte	0
	.uleb128 0x5d
	.long	.LASF648
	.byte	0x7
	.value	0x117
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e11
	.uleb128 0x56
	.string	"fl"
	.byte	0x7
	.value	0x117
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.long	.LASF649
	.byte	0x7
	.value	0x117
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5e
	.long	.LASF650
	.byte	0x7
	.value	0x103
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e4e
	.uleb128 0x45
	.long	.LASF651
	.byte	0x7
	.value	0x103
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x45
	.long	.LASF652
	.byte	0x7
	.value	0x103
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x5f
	.long	.LASF654
	.byte	0x6
	.value	0x270
	.long	.LASF660
	.long	0x1d90
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e93
	.uleb128 0x45
	.long	.LASF476
	.byte	0x6
	.value	0x270
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x42
	.long	.LASF516
	.byte	0x6
	.value	0x272
	.long	0x1d90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x47
	.long	.LASF655
	.byte	0x6
	.value	0x24a
	.long	.LASF656
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f07
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x24a
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x24a
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF657
	.byte	0x6
	.value	0x24c
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x46
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x24f
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x162b
	.uleb128 0x5f
	.long	.LASF659
	.byte	0x6
	.value	0x23a
	.long	.LASF661
	.long	0x391
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f73
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x23a
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x45
	.long	.LASF662
	.byte	0x6
	.value	0x23a
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x42
	.long	.LASF73
	.byte	0x6
	.value	0x23c
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x42
	.long	.LASF663
	.byte	0x6
	.value	0x23e
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.byte	0
	.uleb128 0x47
	.long	.LASF664
	.byte	0x6
	.value	0x21b
	.long	.LASF665
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x402d
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x21b
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x21b
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x45
	.long	.LASF658
	.byte	0x6
	.value	0x21b
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x42
	.long	.LASF666
	.byte	0x6
	.value	0x21d
	.long	0x1759
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x42
	.long	.LASF667
	.byte	0x6
	.value	0x21e
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x53
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.long	0x400a
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x223
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x46
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.uleb128 0x42
	.long	.LASF464
	.byte	0x6
	.value	0x233
	.long	0x1796
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF668
	.byte	0x6
	.value	0x1df
	.long	.LASF669
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x40f5
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x1df
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x1df
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x45
	.long	.LASF658
	.byte	0x6
	.value	0x1df
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x1e3
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x46
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x42
	.long	.LASF670
	.byte	0x6
	.value	0x1e6
	.long	0x17f1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x46
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x42
	.long	.LASF460
	.byte	0x6
	.value	0x1f5
	.long	0x169e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x42
	.long	.LASF439
	.byte	0x6
	.value	0x208
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	.LASF671
	.byte	0x6
	.value	0x1ba
	.long	.LASF672
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x41c5
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x1ba
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x1ba
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x45
	.long	.LASF658
	.byte	0x6
	.value	0x1ba
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x42
	.long	.LASF673
	.byte	0x6
	.value	0x1bc
	.long	0x165b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x53
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.long	0x417c
	.uleb128 0x42
	.long	.LASF674
	.byte	0x6
	.value	0x1c0
	.long	0x188f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x53
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0x41a2
	.uleb128 0x42
	.long	.LASF675
	.byte	0x6
	.value	0x1c9
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.byte	0
	.uleb128 0x46
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.uleb128 0x42
	.long	.LASF676
	.byte	0x6
	.value	0x1d3
	.long	0x1988
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	.LASF677
	.byte	0x6
	.value	0x192
	.long	.LASF678
	.long	0x165b
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x4282
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x192
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x192
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x42
	.long	.LASF673
	.byte	0x6
	.value	0x194
	.long	0x165b
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x46
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x199
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x46
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x42
	.long	.LASF679
	.byte	0x6
	.value	0x19e
	.long	0x1698
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x46
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x1a3
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x60
	.long	.LASF680
	.byte	0x6
	.value	0x18c
	.long	.LASF681
	.long	0x1988
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x42c7
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x18c
	.long	0x3f07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x18c
	.long	0x1d90
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x5f
	.long	.LASF682
	.byte	0x6
	.value	0x16b
	.long	.LASF683
	.long	0x188f
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x4350
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x16b
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x16b
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x42
	.long	.LASF674
	.byte	0x6
	.value	0x16d
	.long	0x188f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x16e
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x46
	.quad	.LBB31
	.quad	.LBE31-.LBB31
	.uleb128 0x42
	.long	.LASF684
	.byte	0x6
	.value	0x17b
	.long	0x1834
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	.LASF685
	.byte	0x6
	.value	0x147
	.long	.LASF686
	.long	0x192d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d9
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x147
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x147
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x42
	.long	.LASF675
	.byte	0x6
	.value	0x149
	.long	0x192d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x14a
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x46
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.uleb128 0x42
	.long	.LASF687
	.byte	0x6
	.value	0x158
	.long	0x18d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
	.byte	0
	.uleb128 0x5f
	.long	.LASF688
	.byte	0x6
	.value	0x12c
	.long	.LASF689
	.long	0x1834
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x4450
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x12c
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x12c
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x42
	.long	.LASF538
	.byte	0x6
	.value	0x12e
	.long	0x1834
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x42
	.long	.LASF673
	.byte	0x6
	.value	0x12f
	.long	0x165b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x42
	.long	.LASF690
	.byte	0x6
	.value	0x136
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x5f
	.long	.LASF691
	.byte	0x6
	.value	0x10c
	.long	.LASF692
	.long	0x1753
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x44b5
	.uleb128 0x45
	.long	.LASF508
	.byte	0x6
	.value	0x10c
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x45
	.long	.LASF516
	.byte	0x6
	.value	0x10c
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x42
	.long	.LASF693
	.byte	0x6
	.value	0x10e
	.long	0x1753
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x42
	.long	.LASF658
	.byte	0x6
	.value	0x10f
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x48
	.long	.LASF694
	.byte	0x6
	.byte	0xe6
	.long	.LASF696
	.long	0x1753
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x4516
	.uleb128 0x49
	.long	.LASF508
	.byte	0x6
	.byte	0xe6
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x49
	.long	.LASF516
	.byte	0x6
	.byte	0xe6
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3d
	.long	.LASF693
	.byte	0x6
	.byte	0xe8
	.long	0x1753
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x6
	.byte	0xe9
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x48
	.long	.LASF697
	.byte	0x6
	.byte	0xce
	.long	.LASF698
	.long	0x18d2
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x4587
	.uleb128 0x49
	.long	.LASF508
	.byte	0x6
	.byte	0xce
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x49
	.long	.LASF516
	.byte	0x6
	.byte	0xce
	.long	0x1d90
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3d
	.long	.LASF687
	.byte	0x6
	.byte	0xd0
	.long	0x18d2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3d
	.long	.LASF673
	.byte	0x6
	.byte	0xd1
	.long	0x165b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x6
	.byte	0xd3
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x48
	.long	.LASF699
	.byte	0x6
	.byte	0xbf
	.long	.LASF700
	.long	0x391
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x45e9
	.uleb128 0x49
	.long	.LASF508
	.byte	0x6
	.byte	0xbf
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x49
	.long	.LASF701
	.byte	0x6
	.byte	0xbf
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x6
	.byte	0xc1
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x6
	.byte	0xc3
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x48
	.long	.LASF702
	.byte	0x6
	.byte	0xb2
	.long	.LASF703
	.long	0x391
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x464b
	.uleb128 0x49
	.long	.LASF508
	.byte	0x6
	.byte	0xb2
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x49
	.long	.LASF439
	.byte	0x6
	.byte	0xb2
	.long	0x1576
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x6
	.byte	0xb4
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x6
	.byte	0xb5
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.byte	0
	.uleb128 0x48
	.long	.LASF704
	.byte	0x6
	.byte	0xa9
	.long	.LASF705
	.long	0x391
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x46ab
	.uleb128 0x49
	.long	.LASF508
	.byte	0x6
	.byte	0xa9
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x49
	.long	.LASF439
	.byte	0x6
	.byte	0xa9
	.long	0x1576
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x6
	.byte	0xab
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x6
	.byte	0xac
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.byte	0
	.uleb128 0x5f
	.long	.LASF706
	.byte	0x5
	.value	0x14c
	.long	.LASF707
	.long	0x1606
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4700
	.uleb128 0x45
	.long	.LASF508
	.byte	0x5
	.value	0x14c
	.long	0x3f07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x42
	.long	.LASF73
	.byte	0x5
	.value	0x14e
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x42
	.long	.LASF658
	.byte	0x5
	.value	0x14f
	.long	0x1606
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x48
	.long	.LASF708
	.byte	0x5
	.byte	0xd3
	.long	.LASF709
	.long	0x1606
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x4752
	.uleb128 0x49
	.long	.LASF710
	.byte	0x5
	.byte	0xd3
	.long	0x3f07
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3d
	.long	.LASF658
	.byte	0x5
	.byte	0xd7
	.long	0x1606
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0xf
	.string	"C"
	.byte	0x5
	.byte	0xda
	.long	0x11e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.byte	0
	.uleb128 0x4b
	.long	.LASF711
	.byte	0x5
	.byte	0x9e
	.long	.LASF712
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x4782
	.uleb128 0x49
	.long	.LASF710
	.byte	0x5
	.byte	0x9e
	.long	0x3f07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x61
	.long	.LASF713
	.byte	0x5
	.byte	0x96
	.long	.LASF714
	.long	0x391
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x47c2
	.uleb128 0x4c
	.string	"C"
	.byte	0x5
	.byte	0x96
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x5
	.byte	0x98
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x61
	.long	.LASF715
	.byte	0x5
	.byte	0x8c
	.long	.LASF716
	.long	0x391
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4802
	.uleb128 0x4c
	.string	"C"
	.byte	0x5
	.byte	0x8c
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x5
	.byte	0x8e
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x61
	.long	.LASF717
	.byte	0x5
	.byte	0x80
	.long	.LASF718
	.long	0x391
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x4842
	.uleb128 0x4c
	.string	"C"
	.byte	0x5
	.byte	0x80
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x5
	.byte	0x82
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x61
	.long	.LASF719
	.byte	0x5
	.byte	0x78
	.long	.LASF720
	.long	0x391
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x4882
	.uleb128 0x4c
	.string	"C"
	.byte	0x5
	.byte	0x78
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x5
	.byte	0x7a
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x48
	.long	.LASF721
	.byte	0x5
	.byte	0x70
	.long	.LASF722
	.long	0x391
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x48ce
	.uleb128 0x4c
	.string	"A"
	.byte	0x5
	.byte	0x70
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4c
	.string	"B"
	.byte	0x5
	.byte	0x70
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3d
	.long	.LASF723
	.byte	0x5
	.byte	0x72
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x48
	.long	.LASF724
	.byte	0x5
	.byte	0x68
	.long	.LASF725
	.long	0x391
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x491e
	.uleb128 0x49
	.long	.LASF658
	.byte	0x5
	.byte	0x68
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x49
	.long	.LASF726
	.byte	0x5
	.byte	0x68
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x5
	.byte	0x6a
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x48
	.long	.LASF727
	.byte	0x5
	.byte	0x54
	.long	.LASF728
	.long	0x3a5
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x4960
	.uleb128 0x49
	.long	.LASF658
	.byte	0x5
	.byte	0x54
	.long	0x1606
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF729
	.byte	0x5
	.byte	0x56
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x62
	.long	.LASF730
	.byte	0x5
	.byte	0x4c
	.long	.LASF731
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x499e
	.uleb128 0x49
	.long	.LASF508
	.byte	0x5
	.byte	0x4c
	.long	0x3f07
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF514
	.byte	0x5
	.byte	0x4c
	.long	0xf9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x4b
	.long	.LASF732
	.byte	0x4
	.byte	0x80
	.long	.LASF733
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x49ce
	.uleb128 0x49
	.long	.LASF513
	.byte	0x4
	.byte	0x80
	.long	0x1d8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x48
	.long	.LASF734
	.byte	0x4
	.byte	0x36
	.long	.LASF735
	.long	0x391
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ac3
	.uleb128 0x49
	.long	.LASF513
	.byte	0x4
	.byte	0x36
	.long	0x1d8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x49
	.long	.LASF736
	.byte	0x4
	.byte	0x36
	.long	0xf9c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x4
	.byte	0x38
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -205
	.uleb128 0x46
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x3d
	.long	.LASF94
	.byte	0x4
	.byte	0x46
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x3d
	.long	.LASF737
	.byte	0x4
	.byte	0x49
	.long	0x74
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x46
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.uleb128 0x3d
	.long	.LASF738
	.byte	0x4
	.byte	0x4c
	.long	0x6d1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x46
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x3d
	.long	.LASF739
	.byte	0x4
	.byte	0x55
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x3d
	.long	.LASF740
	.byte	0x4
	.byte	0x56
	.long	0x4ac3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x46
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x3d
	.long	.LASF741
	.byte	0x4
	.byte	0x59
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x39b
	.uleb128 0x48
	.long	.LASF742
	.byte	0x4
	.byte	0x1b
	.long	.LASF743
	.long	0x1d8a
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b58
	.uleb128 0x49
	.long	.LASF476
	.byte	0x4
	.byte	0x1b
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -344
	.uleb128 0x49
	.long	.LASF377
	.byte	0x4
	.byte	0x1b
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x4
	.byte	0x1d
	.long	0x1d8a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x3d
	.long	.LASF744
	.byte	0x4
	.byte	0x1f
	.long	0x3c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x3d
	.long	.LASF745
	.byte	0x4
	.byte	0x20
	.long	0x4b58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x3d
	.long	.LASF746
	.byte	0x4
	.byte	0x22
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x3d
	.long	.LASF747
	.byte	0x4
	.byte	0x25
	.long	0x3a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -316
	.byte	0
	.uleb128 0x9
	.long	0x11e
	.long	0x4b69
	.uleb128 0x41
	.long	0x3e
	.value	0x108
	.byte	0
	.uleb128 0x48
	.long	.LASF748
	.byte	0x3
	.byte	0xdc
	.long	.LASF749
	.long	0x446
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4be9
	.uleb128 0x49
	.long	.LASF79
	.byte	0x3
	.byte	0xdc
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x49
	.long	.LASF476
	.byte	0x3
	.byte	0xdc
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.LASF750
	.byte	0x3
	.byte	0xde
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x3
	.byte	0xea
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xf
	.string	"i"
	.byte	0x3
	.byte	0xdf
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	.LASF751
	.byte	0x3
	.byte	0xc7
	.long	.LASF752
	.long	0x446
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c69
	.uleb128 0x49
	.long	.LASF79
	.byte	0x3
	.byte	0xc7
	.long	0x446
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x49
	.long	.LASF476
	.byte	0x3
	.byte	0xc7
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x3d
	.long	.LASF750
	.byte	0x3
	.byte	0xc9
	.long	0x113
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x3
	.byte	0xd5
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x46
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0xf
	.string	"i"
	.byte	0x3
	.byte	0xca
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	.LASF753
	.byte	0x3
	.byte	0xbb
	.long	.LASF754
	.long	0x446
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cd7
	.uleb128 0x49
	.long	.LASF476
	.byte	0x3
	.byte	0xbb
	.long	0x440
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x49
	.long	.LASF79
	.byte	0x3
	.byte	0xbb
	.long	0x37a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3d
	.long	.LASF80
	.byte	0x3
	.byte	0xbd
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3d
	.long	.LASF755
	.byte	0x3
	.byte	0xbe
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x3
	.byte	0xc1
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x48
	.long	.LASF756
	.byte	0x3
	.byte	0xb5
	.long	.LASF757
	.long	0x113
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d27
	.uleb128 0x49
	.long	.LASF758
	.byte	0x3
	.byte	0xb5
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4c
	.string	"src"
	.byte	0x3
	.byte	0xb5
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.long	.LASF490
	.byte	0x3
	.byte	0xb5
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x48
	.long	.LASF759
	.byte	0x3
	.byte	0xa2
	.long	.LASF760
	.long	0x3b5
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc2
	.uleb128 0x49
	.long	.LASF761
	.byte	0x3
	.byte	0xa2
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x49
	.long	.LASF762
	.byte	0x3
	.byte	0xa2
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x49
	.long	.LASF763
	.byte	0x3
	.byte	0xa2
	.long	0x554
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x49
	.long	.LASF764
	.byte	0x3
	.byte	0xa2
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3d
	.long	.LASF765
	.byte	0x3
	.byte	0xa4
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3d
	.long	.LASF766
	.byte	0x3
	.byte	0xa5
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x46
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x3d
	.long	.LASF565
	.byte	0x3
	.byte	0xa7
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	.LASF759
	.byte	0x3
	.byte	0x8f
	.long	.LASF767
	.long	0x3b5
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e4e
	.uleb128 0x49
	.long	.LASF79
	.byte	0x3
	.byte	0x8f
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF762
	.byte	0x3
	.byte	0x8f
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x49
	.long	.LASF763
	.byte	0x3
	.byte	0x8f
	.long	0x554
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x49
	.long	.LASF764
	.byte	0x3
	.byte	0x8f
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF765
	.byte	0x3
	.byte	0x91
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x3d
	.long	.LASF565
	.byte	0x3
	.byte	0x93
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x61
	.long	.LASF768
	.byte	0x3
	.byte	0x81
	.long	.LASF769
	.long	0x3b5
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ea9
	.uleb128 0x4c
	.string	"x"
	.byte	0x3
	.byte	0x81
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF770
	.byte	0x3
	.byte	0x81
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xf
	.string	"At"
	.byte	0x3
	.byte	0x83
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3d
	.long	.LASF80
	.byte	0x3
	.byte	0x84
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x48
	.long	.LASF771
	.byte	0x3
	.byte	0x7b
	.long	.LASF772
	.long	0x391
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef9
	.uleb128 0x49
	.long	.LASF79
	.byte	0x3
	.byte	0x7b
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF599
	.byte	0x3
	.byte	0x7b
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x49
	.long	.LASF755
	.byte	0x3
	.byte	0x7b
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x48
	.long	.LASF771
	.byte	0x3
	.byte	0x75
	.long	.LASF773
	.long	0x391
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f3b
	.uleb128 0x49
	.long	.LASF774
	.byte	0x3
	.byte	0x75
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.long	.LASF775
	.byte	0x3
	.byte	0x75
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x48
	.long	.LASF771
	.byte	0x3
	.byte	0x6f
	.long	.LASF776
	.long	0x391
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f8b
	.uleb128 0x49
	.long	.LASF774
	.byte	0x3
	.byte	0x6f
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x49
	.long	.LASF775
	.byte	0x3
	.byte	0x6f
	.long	0x446
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF764
	.byte	0x3
	.byte	0x6f
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x48
	.long	.LASF771
	.byte	0x3
	.byte	0x69
	.long	.LASF777
	.long	0x391
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fe9
	.uleb128 0x49
	.long	.LASF774
	.byte	0x3
	.byte	0x69
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF778
	.byte	0x3
	.byte	0x69
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x49
	.long	.LASF775
	.byte	0x3
	.byte	0x69
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF779
	.byte	0x3
	.byte	0x69
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x48
	.long	.LASF771
	.byte	0x3
	.byte	0x5c
	.long	.LASF780
	.long	0x391
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x5063
	.uleb128 0x49
	.long	.LASF774
	.byte	0x3
	.byte	0x5c
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF778
	.byte	0x3
	.byte	0x5c
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x49
	.long	.LASF775
	.byte	0x3
	.byte	0x5c
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x49
	.long	.LASF779
	.byte	0x3
	.byte	0x5c
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF764
	.byte	0x3
	.byte	0x5c
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3d
	.long	.LASF723
	.byte	0x3
	.byte	0x5e
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x61
	.long	.LASF781
	.byte	0x3
	.byte	0x2f
	.long	.LASF782
	.long	0x391
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x5129
	.uleb128 0x49
	.long	.LASF774
	.byte	0x3
	.byte	0x2f
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x49
	.long	.LASF775
	.byte	0x3
	.byte	0x2f
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x49
	.long	.LASF770
	.byte	0x3
	.byte	0x2f
	.long	0x3b5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x49
	.long	.LASF764
	.byte	0x3
	.byte	0x2f
	.long	0x391
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3d
	.long	.LASF723
	.byte	0x3
	.byte	0x31
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x3d
	.long	.LASF783
	.byte	0x3
	.byte	0x32
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3d
	.long	.LASF784
	.byte	0x3
	.byte	0x33
	.long	0x37a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3d
	.long	.LASF785
	.byte	0x3
	.byte	0x34
	.long	0x3b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x46
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x3d
	.long	.LASF786
	.byte	0x3
	.byte	0x39
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x3d
	.long	.LASF787
	.byte	0x3
	.byte	0x3a
	.long	0x11e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.uleb128 0x63
	.long	0x524
	.long	0x514c
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x514c
	.long	0x5159
	.uleb128 0x51
	.long	.LASF788
	.long	0x55a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x64
	.long	0x4e8
	.byte	0x2
	.long	0x5167
	.long	0x517a
	.uleb128 0x65
	.long	.LASF788
	.long	0x549
	.uleb128 0x66
	.string	"x"
	.byte	0x3
	.byte	0x12
	.long	0x119
	.byte	0
	.uleb128 0x67
	.long	0x5159
	.long	.LASF789
	.long	0x51a1
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x51a1
	.long	0x51b2
	.uleb128 0x68
	.long	0x5167
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x68
	.long	0x5170
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x64
	.long	0x4ca
	.byte	0x2
	.long	0x51c0
	.long	0x51d3
	.uleb128 0x65
	.long	.LASF788
	.long	0x549
	.uleb128 0x66
	.string	"x"
	.byte	0x3
	.byte	0x11
	.long	0x37a
	.byte	0
	.uleb128 0x67
	.long	0x51b2
	.long	.LASF790
	.long	0x51fa
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x51fa
	.long	0x520b
	.uleb128 0x68
	.long	0x51c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x68
	.long	0x51c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x64
	.long	0x484
	.byte	0x2
	.long	0x5219
	.long	0x5235
	.uleb128 0x65
	.long	.LASF788
	.long	0x549
	.uleb128 0x66
	.string	"S"
	.byte	0x3
	.byte	0xf
	.long	0x37a
	.uleb128 0x66
	.string	"L"
	.byte	0x3
	.byte	0xf
	.long	0x3b5
	.byte	0
	.uleb128 0x69
	.long	0x520b
	.long	.LASF791
	.long	0x525c
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x525c
	.long	0x5275
	.uleb128 0x68
	.long	0x5219
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x68
	.long	0x5222
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x68
	.long	0x522b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x61
	.long	.LASF792
	.byte	0x2
	.byte	0x77
	.long	.LASF793
	.long	0x17e
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x52b7
	.uleb128 0x49
	.long	.LASF476
	.byte	0x2
	.byte	0x77
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x2
	.byte	0x79
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x62
	.long	.LASF794
	.byte	0x2
	.byte	0x71
	.long	.LASF795
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x52e7
	.uleb128 0x49
	.long	.LASF476
	.byte	0x2
	.byte	0x71
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x62
	.long	.LASF796
	.byte	0x2
	.byte	0x6a
	.long	.LASF797
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x5317
	.uleb128 0x49
	.long	.LASF510
	.byte	0x2
	.byte	0x6a
	.long	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x48
	.long	.LASF798
	.byte	0x2
	.byte	0x60
	.long	.LASF799
	.long	0x41b
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x5359
	.uleb128 0x49
	.long	.LASF476
	.byte	0x2
	.byte	0x60
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x2
	.byte	0x62
	.long	0x41b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x61
	.long	.LASF800
	.byte	0x2
	.byte	0x4c
	.long	.LASF801
	.long	0xf0
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x53d7
	.uleb128 0x49
	.long	.LASF476
	.byte	0x2
	.byte	0x4c
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF74
	.byte	0x2
	.byte	0x4c
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF802
	.byte	0x2
	.byte	0x4c
	.long	0x391
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3d
	.long	.LASF663
	.byte	0x2
	.byte	0x4e
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x3d
	.long	.LASF565
	.byte	0x2
	.byte	0x56
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	.LASF803
	.byte	0x2
	.byte	0x41
	.long	.LASF804
	.long	0x3ea
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x5428
	.uleb128 0x49
	.long	.LASF476
	.byte	0x2
	.byte	0x41
	.long	0x440
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF74
	.byte	0x2
	.byte	0x41
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF805
	.byte	0x2
	.byte	0x43
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x48
	.long	.LASF806
	.byte	0x2
	.byte	0x36
	.long	.LASF807
	.long	0x3ea
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x5479
	.uleb128 0x49
	.long	.LASF73
	.byte	0x2
	.byte	0x36
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x49
	.long	.LASF74
	.byte	0x2
	.byte	0x36
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3d
	.long	.LASF476
	.byte	0x2
	.byte	0x38
	.long	0x3ea
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x4b
	.long	.LASF808
	.byte	0x1
	.byte	0x17
	.long	.LASF809
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x54b7
	.uleb128 0x49
	.long	.LASF810
	.byte	0x1
	.byte	0x17
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.long	.LASF74
	.byte	0x1
	.byte	0x17
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x6a
	.long	.LASF811
	.byte	0x1
	.byte	0xb
	.long	.LASF812
	.long	0xf0
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x49
	.long	.LASF810
	.byte	0x1
	.byte	0xb
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x49
	.long	.LASF74
	.byte	0x1
	.byte	0xb
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3d
	.long	.LASF813
	.byte	0x1
	.byte	0xd
	.long	0xf0
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x39
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
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
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
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
	.uleb128 0x65
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
	.uleb128 0x66
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
	.uleb128 0x67
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
	.uleb128 0x68
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x69
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
	.uleb128 0x6a
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
	.long	0xfc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB62
	.quad	.LBE62
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB220
	.quad	.LBE220
	.quad	0
	.quad	0
	.quad	.LBB69
	.quad	.LBE69
	.quad	.LBB70
	.quad	.LBE70
	.quad	0
	.quad	0
	.quad	.LBB75
	.quad	.LBE75
	.quad	.LBB76
	.quad	.LBE76
	.quad	.LBB77
	.quad	.LBE77
	.quad	0
	.quad	0
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB215
	.quad	.LBE215
	.quad	0
	.quad	0
	.quad	.LBB89
	.quad	.LBE89
	.quad	.LBB90
	.quad	.LBE90
	.quad	0
	.quad	0
	.quad	.LBB104
	.quad	.LBE104
	.quad	.LBB145
	.quad	.LBE145
	.quad	0
	.quad	0
	.quad	.LBB113
	.quad	.LBE113
	.quad	.LBB114
	.quad	.LBE114
	.quad	0
	.quad	0
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB127
	.quad	.LBE127
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
	.quad	.LBB210
	.quad	.LBE210
	.quad	0
	.quad	0
	.quad	.LBB152
	.quad	.LBE152
	.quad	.LBB153
	.quad	.LBE153
	.quad	0
	.quad	0
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB211
	.quad	.LBE211
	.quad	0
	.quad	0
	.quad	.LBB163
	.quad	.LBE163
	.quad	.LBB164
	.quad	.LBE164
	.quad	0
	.quad	0
	.quad	.LBB168
	.quad	.LBE168
	.quad	.LBB212
	.quad	.LBE212
	.quad	0
	.quad	0
	.quad	.LBB174
	.quad	.LBE174
	.quad	.LBB175
	.quad	.LBE175
	.quad	0
	.quad	0
	.quad	.LBB179
	.quad	.LBE179
	.quad	.LBB213
	.quad	.LBE213
	.quad	0
	.quad	0
	.quad	.LBB185
	.quad	.LBE185
	.quad	.LBB186
	.quad	.LBE186
	.quad	0
	.quad	0
	.quad	.LBB194
	.quad	.LBE194
	.quad	.LBB205
	.quad	.LBE205
	.quad	0
	.quad	0
	.quad	.LBB200
	.quad	.LBE200
	.quad	.LBB201
	.quad	.LBE201
	.quad	0
	.quad	0
	.quad	.LBB291
	.quad	.LBE291
	.quad	.LBB292
	.quad	.LBE292
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB8
	.quad	.LFE8
	.quad	.LFB10
	.quad	.LFE10
	.quad	.LFB16
	.quad	.LFE16
	.quad	.LFB19
	.quad	.LFE19
	.quad	.LFB24
	.quad	.LFE24
	.quad	.LFB57
	.quad	.LFE57
	.quad	.LFB58
	.quad	.LFE58
	.quad	.LFB59
	.quad	.LFE59
	.quad	.LFB60
	.quad	.LFE60
	.quad	.LFB78
	.quad	.LFE78
	.quad	.LFB93
	.quad	.LFE93
	.quad	.LFB94
	.quad	.LFE94
	.quad	.LFB95
	.quad	.LFE95
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF512:
	.string	"DefinitionOutput"
.LASF120:
	.string	"__glibc_reserved"
.LASF327:
	.string	"_SC_LEVEL3_CACHE_SIZE"
.LASF24:
	.string	"int8_t"
.LASF119:
	.string	"st_ctim"
.LASF237:
	.string	"_SC_INT_MAX"
.LASF521:
	.string	"_Z19WriteOutputToStdOutP11output_data"
.LASF33:
	.string	"size_t"
.LASF148:
	.string	"_SC_MAPPED_FILES"
.LASF133:
	.string	"_SC_CHILD_MAX"
.LASF607:
	.string	"start"
.LASF589:
	.string	"QueueItemName"
.LASF134:
	.string	"_SC_CLK_TCK"
.LASF115:
	.string	"st_blksize"
.LASF734:
	.string	"abf_GetNextFile"
.LASF116:
	.string	"st_blocks"
.LASF166:
	.string	"_SC_SIGQUEUE_MAX"
.LASF646:
	.string	"tail"
.LASF462:
	.string	"Define"
.LASF426:
	.string	"TOKEN_OpenBrace"
.LASF699:
	.string	"NextTokenEquals"
.LASF754:
	.string	"_Z19abs_CreateStringPtrP12memory_arenaPKc"
.LASF625:
	.string	"user"
.LASF345:
	.string	"_SC_THREAD_ROBUST_PRIO_INHERIT"
.LASF359:
	.string	"_IO_2_1_stderr_"
.LASF273:
	.string	"_SC_DEVICE_IO"
.LASF25:
	.string	"int32_t"
.LASF724:
	.string	"abl_TokenEquals"
.LASF543:
	.string	"~<lambda>"
.LASF539:
	.string	"<lambda(term_typeexpr*, char const*)>"
.LASF52:
	.string	"_IO_save_end"
.LASF331:
	.string	"_SC_LEVEL4_CACHE_ASSOC"
.LASF139:
	.string	"_SC_JOB_CONTROL"
.LASF799:
	.string	"_Z24abm_BeginTemporaryMemoryP12memory_arena"
.LASF409:
	.string	"lldiv"
.LASF733:
	.string	"_Z19abf_ReleaseFileListP9file_list"
.LASF340:
	.string	"_SC_TRACE_EVENT_NAME_MAX"
.LASF235:
	.string	"_SC_CHAR_MAX"
.LASF13:
	.string	"__gid_t"
.LASF722:
	.string	"_Z16abl_TokensEquals5tokenS_"
.LASF464:
	.string	"Function"
.LASF475:
	.string	"parser"
.LASF414:
	.string	"strtold"
.LASF692:
	.string	"_Z13ParseTypeExprP5lexerP6parser"
.LASF118:
	.string	"st_mtim"
.LASF316:
	.string	"_SC_TRACE_INHERIT"
.LASF373:
	.string	"file_list"
.LASF411:
	.string	"strtoll"
.LASF420:
	.string	"TOKEN_Colon"
.LASF222:
	.string	"_SC_XOPEN_VERSION"
.LASF45:
	.string	"_IO_write_base"
.LASF595:
	.string	"OutputPtr"
.LASF744:
	.string	"WildCardSize"
.LASF202:
	.string	"_SC_GETGR_R_SIZE_MAX"
.LASF187:
	.string	"_SC_PII_SOCKET"
.LASF236:
	.string	"_SC_CHAR_MIN"
.LASF585:
	.string	"CreateEnumJson"
.LASF709:
	.string	"_Z12abl_GetTokenP5lexer"
.LASF61:
	.string	"_lock"
.LASF390:
	.string	"at_quick_exit"
.LASF467:
	.string	"TagListSentinal"
.LASF140:
	.string	"_SC_SAVED_IDS"
.LASF584:
	.string	"CurrentTag"
.LASF679:
	.string	"NewTag"
.LASF244:
	.string	"_SC_SCHAR_MAX"
.LASF772:
	.string	"_Z19abs_AreStringsEqualPKcj13abs_stringptr"
.LASF132:
	.string	"_SC_ARG_MAX"
.LASF660:
	.string	"_Z9ParseInitP12memory_arena"
.LASF105:
	.string	"stat"
.LASF388:
	.string	"__compar_fn_t"
.LASF496:
	.string	"stbsp__negtop"
.LASF96:
	.string	"gl_pathc"
.LASF457:
	.string	"isConst"
.LASF297:
	.string	"_SC_TIMEOUTS"
.LASF50:
	.string	"_IO_save_base"
.LASF234:
	.string	"_SC_CHAR_BIT"
.LASF155:
	.string	"_SC_AIO_LISTIO_MAX"
.LASF371:
	.string	"__memalign_hook"
.LASF731:
	.string	"_Z13abl_InitLexerP5lexerP9file_data"
.LASF77:
	.string	"Arena"
.LASF241:
	.string	"_SC_MB_LEN_MAX"
.LASF214:
	.string	"_SC_THREAD_PRIO_PROTECT"
.LASF392:
	.string	"atoi"
.LASF813:
	.string	"MemoryStart"
.LASF97:
	.string	"gl_pathv"
.LASF541:
	.string	"__Memory"
.LASF188:
	.string	"_SC_PII_INTERNET"
.LASF410:
	.string	"atoll"
.LASF786:
	.string	"CompAtChar"
.LASF215:
	.string	"_SC_THREAD_PROCESS_SHARED"
.LASF629:
	.string	"callback"
.LASF54:
	.string	"_chain"
.LASF481:
	.string	"DefinedFunctionListSentinal"
.LASF341:
	.string	"_SC_TRACE_NAME_MAX"
.LASF602:
	.string	"MaxLen"
.LASF58:
	.string	"_cur_column"
.LASF363:
	.string	"sys_nerr"
.LASF516:
	.string	"Parser"
.LASF452:
	.string	"CT_Class"
.LASF185:
	.string	"_SC_PII"
.LASF157:
	.string	"_SC_AIO_PRIO_DELTA_MAX"
.LASF6:
	.string	"__uint8_t"
.LASF11:
	.string	"__dev_t"
.LASF557:
	.string	"_Z16CreateStructJsonP11term_structP3tagP12memory_arenaP11output_dataS6_"
.LASF567:
	.string	"CurrentFunction"
.LASF391:
	.string	"atof"
.LASF151:
	.string	"_SC_MEMORY_PROTECTION"
.LASF534:
	.string	"CreateStructJson"
.LASF393:
	.string	"atol"
.LASF365:
	.string	"_sys_nerr"
.LASF458:
	.string	"isArray"
.LASF433:
	.string	"TOKEN_String"
.LASF136:
	.string	"_SC_OPEN_MAX"
.LASF209:
	.string	"_SC_THREAD_THREADS_MAX"
.LASF563:
	.string	"BufferSize"
.LASF130:
	.string	"__environ"
.LASF286:
	.string	"_SC_READER_WRITER_LOCKS"
.LASF307:
	.string	"_SC_STREAMS"
.LASF781:
	.string	"abs_AreStringFragmentsEqual"
.LASF10:
	.string	"long int"
.LASF723:
	.string	"isMatch"
.LASF159:
	.string	"_SC_MQ_OPEN_MAX"
.LASF778:
	.string	"String1Len"
.LASF277:
	.string	"_SC_FIFO"
.LASF274:
	.string	"_SC_DEVICE_SPECIFIC"
.LASF376:
	.string	"CurrentFile"
.LASF476:
	.string	"Memory"
.LASF417:
	.string	"TOKEN_Unknown"
.LASF229:
	.string	"_SC_2_C_VERSION"
.LASF408:
	.string	"wctomb"
.LASF542:
	.string	"<lambda>"
.LASF346:
	.string	"_SC_THREAD_ROBUST_PRIO_PROTECT"
.LASF351:
	.string	"_IO_marker"
.LASF169:
	.string	"_SC_BC_DIM_MAX"
.LASF517:
	.string	"main"
.LASF760:
	.string	"_Z14abs_FindInListPKcjPK13abs_stringptra"
.LASF456:
	.string	"isReference"
.LASF514:
	.string	"File"
.LASF822:
	.string	"rand"
.LASF808:
	.string	"abm_DeallocateOsMemory"
.LASF491:
	.string	"length"
.LASF762:
	.string	"ListCount"
.LASF480:
	.string	"StateMachineListSentinal"
.LASF470:
	.string	"ItemCount"
.LASF552:
	.string	"__Separator"
.LASF210:
	.string	"_SC_THREAD_ATTR_STACKADDR"
.LASF497:
	.string	"stbsp__toperr"
.LASF635:
	.string	"scopy"
.LASF618:
	.string	"stbsp__real_to_str"
.LASF792:
	.string	"abm_GetMemoryLeft"
.LASF335:
	.string	"_SC_V7_ILP32_OFF32"
.LASF663:
	.string	"Result"
.LASF249:
	.string	"_SC_UINT_MAX"
.LASF422:
	.string	"TOKEN_Comma"
.LASF310:
	.string	"_SC_V6_ILP32_OFFBIG"
.LASF303:
	.string	"_SC_2_PBS_LOCATE"
.LASF513:
	.string	"FileList"
.LASF510:
	.string	"TempMem"
.LASF771:
	.string	"abs_AreStringsEqual"
.LASF74:
	.string	"Size"
.LASF535:
	.string	"MaxSectionSize"
.LASF702:
	.string	"OptionalToken"
.LASF4:
	.string	"signed char"
.LASF500:
	.string	"GeneratedTag"
.LASF20:
	.string	"__blksize_t"
.LASF26:
	.string	"uint8_t"
.LASF323:
	.string	"_SC_LEVEL1_DCACHE_LINESIZE"
.LASF40:
	.string	"_IO_FILE"
.LASF406:
	.string	"system"
.LASF110:
	.string	"st_uid"
.LASF704:
	.string	"RequireToken"
.LASF451:
	.string	"CT_Union"
.LASF315:
	.string	"_SC_TRACE_EVENT_FILTER"
.LASF253:
	.string	"_SC_NL_LANGMAX"
.LASF682:
	.string	"ParseStruct"
.LASF311:
	.string	"_SC_V6_LP64_OFF64"
.LASF801:
	.string	"_Z13abm_PushSize_P12memory_arenama"
.LASF254:
	.string	"_SC_NL_MSGMAX"
.LASF131:
	.string	"environ"
.LASF0:
	.string	"unsigned char"
.LASF777:
	.string	"_Z19abs_AreStringsEqualPKcjS0_j"
.LASF197:
	.string	"_SC_PII_OSI_CLTS"
.LASF113:
	.string	"st_rdev"
.LASF306:
	.string	"_SC_SYMLOOP_MAX"
.LASF698:
	.string	"_Z13ParseEnumitemP5lexerP6parser"
.LASF319:
	.string	"_SC_LEVEL1_ICACHE_ASSOC"
.LASF647:
	.string	"divisor"
.LASF622:
	.string	"result"
.LASF83:
	.string	"_ZN13abs_stringptrC4EPKc"
.LASF656:
	.string	"_Z9ParseExprP5lexerP6parser"
.LASF275:
	.string	"_SC_DEVICE_SPECIFIC_R"
.LASF386:
	.string	"7lldiv_t"
.LASF449:
	.string	"CT_None"
.LASF770:
	.string	"MaxLength"
.LASF817:
	.string	"__builtin_va_list"
.LASF507:
	.string	"LexerStore"
.LASF242:
	.string	"_SC_NZERO"
.LASF424:
	.string	"TOKEN_OpenBracket"
.LASF790:
	.string	"_ZN13abs_stringptrC2EPKc"
.LASF231:
	.string	"_SC_XOPEN_XPG2"
.LASF232:
	.string	"_SC_XOPEN_XPG3"
.LASF233:
	.string	"_SC_XOPEN_XPG4"
.LASF617:
	.string	"power"
.LASF250:
	.string	"_SC_ULONG_MAX"
.LASF753:
	.string	"abs_CreateStringPtr"
.LASF565:
	.string	"Index"
.LASF22:
	.string	"__syscall_slong_t"
.LASF34:
	.string	"__gnuc_va_list"
.LASF226:
	.string	"_SC_XOPEN_ENH_I18N"
.LASF356:
	.string	"_IO_FILE_plus"
.LASF609:
	.string	"value"
.LASF520:
	.string	"WriteOutputToFile"
.LASF238:
	.string	"_SC_INT_MIN"
.LASF23:
	.string	"char"
.LASF230:
	.string	"_SC_2_UPE"
.LASF396:
	.string	"ldiv"
.LASF780:
	.string	"_Z19abs_AreStringsEqualPKcjS0_ja"
.LASF619:
	.string	"stbsp__real_to_parts"
.LASF821:
	.string	"_ZN9__gnu_cxx3divExx"
.LASF162:
	.string	"_SC_PAGESIZE"
.LASF281:
	.string	"_SC_FILE_SYSTEM"
.LASF655:
	.string	"ParseExpr"
.LASF668:
	.string	"ParseStateMachineDef"
.LASF674:
	.string	"NewStruct"
.LASF768:
	.string	"abs_StringLength"
.LASF569:
	.string	"_Z12ProcessEnumsP9term_enumP12memory_arenaP11output_dataS4_"
.LASF641:
	.string	"scandd"
.LASF468:
	.string	"term_struct"
.LASF529:
	.string	"ProcessStructs"
.LASF820:
	.string	"_IO_lock_t"
.LASF666:
	.string	"NewFunction"
.LASF506:
	.string	"LexerStoreLength"
.LASF755:
	.string	"StringPtr"
.LASF178:
	.string	"_SC_2_VERSION"
.LASF448:
	.string	"custom_type"
.LASF767:
	.string	"_Z14abs_FindInList13abs_stringptrjPKS_a"
.LASF675:
	.string	"NewEnum"
.LASF509:
	.string	"SourceDirectory"
.LASF788:
	.string	"this"
.LASF761:
	.string	"SearchString"
.LASF523:
	.string	"GeneratedFilename"
.LASF176:
	.string	"_SC_RE_DUP_MAX"
.LASF381:
	.string	"5div_t"
.LASF802:
	.string	"ClearMemory"
.LASF515:
	.string	"OutputData"
.LASF578:
	.string	"FunctionCount"
.LASF599:
	.string	"StringLen"
.LASF328:
	.string	"_SC_LEVEL3_CACHE_ASSOC"
.LASF15:
	.string	"__mode_t"
.LASF605:
	.string	"Args"
.LASF819:
	.string	"decltype(nullptr)"
.LASF181:
	.string	"_SC_2_FORT_DEV"
.LASF42:
	.string	"_IO_read_ptr"
.LASF525:
	.string	"Header"
.LASF743:
	.string	"_Z22abf_InitializeFileListP12memory_arenaPKc"
.LASF36:
	.string	"fp_offset"
.LASF775:
	.string	"String2"
.LASF419:
	.string	"TOKEN_CloseParen"
.LASF89:
	.string	"ptrdiff_t"
.LASF719:
	.string	"abl_IsEndOfLine"
.LASF610:
	.string	"frac_digits"
.LASF397:
	.string	"mblen"
.LASF498:
	.string	"stbsp__negtoperr"
.LASF785:
	.string	"StringLength"
.LASF354:
	.string	"_pos"
.LASF360:
	.string	"stdin"
.LASF272:
	.string	"_SC_THREAD_CPUTIME"
.LASF295:
	.string	"_SC_SYSTEM_DATABASE"
.LASF769:
	.string	"_Z16abs_StringLengthPKcj"
.LASF364:
	.string	"sys_errlist"
.LASF195:
	.string	"_SC_PII_INTERNET_DGRAM"
.LASF773:
	.string	"_Z19abs_AreStringsEqual13abs_stringptrS_"
.LASF436:
	.string	"TOKEN_EndOfStream"
.LASF597:
	.string	"Output"
.LASF738:
	.string	"FileStatus"
.LASF104:
	.string	"gl_stat"
.LASF783:
	.string	"CompAt"
.LASF280:
	.string	"_SC_FILE_LOCKING"
.LASF53:
	.string	"_markers"
.LASF586:
	.string	"_Z14CreateEnumJsonP9term_enumP3tagP12memory_arenaP11output_dataS6_"
.LASF245:
	.string	"_SC_SCHAR_MIN"
.LASF108:
	.string	"st_nlink"
.LASF102:
	.string	"gl_opendir"
.LASF99:
	.string	"gl_flags"
.LASF370:
	.string	"__realloc_hook"
.LASF471:
	.string	"term_enumitem"
.LASF192:
	.string	"_SC_UIO_MAXIOV"
.LASF405:
	.string	"strtoul"
.LASF714:
	.string	"_Z13abl_IsNumericc"
.LASF800:
	.string	"abm_PushSize_"
.LASF161:
	.string	"_SC_VERSION"
.LASF508:
	.string	"Lexer"
.LASF680:
	.string	"ParseFunction"
.LASF608:
	.string	"decimal_pos"
.LASF742:
	.string	"abf_InitializeFileList"
.LASF716:
	.string	"_Z11abl_IsAlphac"
.LASF735:
	.string	"_Z15abf_GetNextFileP9file_listP9file_data"
.LASF530:
	.string	"_Z14ProcessStructsP11term_structP12memory_arenaP11output_dataS4_"
.LASF455:
	.string	"isPtr"
.LASF717:
	.string	"abl_IsWhitespace"
.LASF287:
	.string	"_SC_SPIN_LOCKS"
.LASF62:
	.string	"_offset"
.LASF805:
	.string	"SubArena"
.LASF536:
	.string	"ExistListScratch"
.LASF556:
	.string	"ProcessStateFunctions"
.LASF321:
	.string	"_SC_LEVEL1_DCACHE_SIZE"
.LASF527:
	.string	"FullOutput"
.LASF111:
	.string	"st_gid"
.LASF334:
	.string	"_SC_RAW_SOCKETS"
.LASF94:
	.string	"FileName"
.LASF200:
	.string	"_SC_THREADS"
.LASF201:
	.string	"_SC_THREAD_SAFE_FUNCTIONS"
.LASF126:
	.string	"F_OWNER_TID"
.LASF240:
	.string	"_SC_WORD_BIT"
.LASF288:
	.string	"_SC_REGEXP"
.LASF633:
	.string	"dofloatfromg"
.LASF348:
	.string	"optind"
.LASF144:
	.string	"_SC_ASYNCHRONOUS_IO"
.LASF177:
	.string	"_SC_CHARCLASS_NAME_MAX"
.LASF810:
	.string	"Address"
.LASF322:
	.string	"_SC_LEVEL1_DCACHE_ASSOC"
.LASF329:
	.string	"_SC_LEVEL3_CACHE_LINESIZE"
.LASF208:
	.string	"_SC_THREAD_STACK_MIN"
.LASF649:
	.string	"sign"
.LASF562:
	.string	"Lowercase"
.LASF441:
	.string	"lexer"
.LASF395:
	.string	"getenv"
.LASF357:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"long unsigned int"
.LASF224:
	.string	"_SC_XOPEN_UNIX"
.LASF387:
	.string	"lldiv_t"
.LASF703:
	.string	"_Z13OptionalTokenP5lexer10token_type"
.LASF564:
	.string	"Buffer"
.LASF809:
	.string	"_Z22abm_DeallocateOsMemoryPvm"
.LASF442:
	.string	"NumCurrentlyOpenBraces"
.LASF701:
	.string	"TokenValue"
.LASF257:
	.string	"_SC_NL_TEXTMAX"
.LASF56:
	.string	"_flags2"
.LASF194:
	.string	"_SC_PII_INTERNET_STREAM"
.LASF492:
	.string	"stbsp__bot"
.LASF571:
	.string	"CreateEnumStrings"
.LASF114:
	.string	"st_size"
.LASF384:
	.string	"6ldiv_t"
.LASF44:
	.string	"_IO_read_base"
.LASF336:
	.string	"_SC_V7_ILP32_OFFBIG"
.LASF651:
	.string	"pcomma"
.LASF750:
	.string	"NewString"
.LASF153:
	.string	"_SC_SEMAPHORES"
.LASF330:
	.string	"_SC_LEVEL4_CACHE_SIZE"
.LASF592:
	.string	"_Z12CopyToOutputP11output_dataP12memory_arenaS0_"
.LASF463:
	.string	"term_statemachine"
.LASF461:
	.string	"term_definedfunction"
.LASF69:
	.string	"_unused2"
.LASF763:
	.string	"List"
.LASF554:
	.string	"__closure"
.LASF407:
	.string	"wcstombs"
.LASF91:
	.string	"STBSP_SPRINTFCB"
.LASF283:
	.string	"_SC_MULTI_PROCESS"
.LASF217:
	.string	"_SC_NPROCESSORS_ONLN"
.LASF677:
	.string	"ParseTag"
.LASF798:
	.string	"abm_BeginTemporaryMemory"
.LASF29:
	.string	"__float128"
.LASF636:
	.string	"lchk"
.LASF299:
	.string	"_SC_USER_GROUPS"
.LASF667:
	.string	"isGoodFunction"
.LASF812:
	.string	"_Z20abm_AllocateOsMemoryPvm"
.LASF501:
	.string	"argc"
.LASF184:
	.string	"_SC_2_LOCALEDEF"
.LASF818:
	.string	"_ZN13abs_stringptrC4Ev"
.LASF175:
	.string	"_SC_LINE_MAX"
.LASF493:
	.string	"stbsp__negbot"
.LASF57:
	.string	"_old_offset"
.LASF218:
	.string	"_SC_PHYS_PAGES"
.LASF263:
	.string	"_SC_XOPEN_REALTIME"
.LASF720:
	.string	"_Z15abl_IsEndOfLinec"
.LASF502:
	.string	"argv"
.LASF291:
	.string	"_SC_SIGNALS"
.LASF21:
	.string	"__blkcnt_t"
.LASF282:
	.string	"_SC_MONOTONIC_CLOCK"
.LASF163:
	.string	"_SC_RTSIG_MAX"
.LASF421:
	.string	"TOKEN_Semicolon"
.LASF555:
	.string	"Format"
.LASF748:
	.string	"abs_Lowercase"
.LASF482:
	.string	"output_data"
.LASF279:
	.string	"_SC_FILE_ATTRIBUTES"
.LASF14:
	.string	"__ino_t"
.LASF300:
	.string	"_SC_USER_GROUPS_R"
.LASF431:
	.string	"TOKEN_Ampersand"
.LASF593:
	.string	"ToOutput"
.LASF223:
	.string	"_SC_XOPEN_XCU_VERSION"
.LASF759:
	.string	"abs_FindInList"
.LASF690:
	.string	"StructItemType"
.LASF9:
	.string	"__uint32_t"
.LASF700:
	.string	"_Z15NextTokenEqualsP5lexer13abs_stringptr"
.LASF561:
	.string	"Capitalize"
.LASF587:
	.string	"WriteQueueFunctions"
.LASF93:
	.string	"FileIndex"
.LASF193:
	.string	"_SC_IOV_MAX"
.LASF186:
	.string	"_SC_PII_XTI"
.LASF264:
	.string	"_SC_XOPEN_REALTIME_THREADS"
.LASF90:
	.string	"long long int"
.LASF445:
	.string	"Option"
.LASF88:
	.string	"va_list"
.LASF637:
	.string	"flags_done"
.LASF398:
	.string	"mbstowcs"
.LASF522:
	.string	"_Z17WriteOutputToFileP11output_dataPKcS2_"
.LASF577:
	.string	"HeaderCount"
.LASF259:
	.string	"_SC_XBS5_ILP32_OFFBIG"
.LASF412:
	.string	"strtoull"
.LASF545:
	.string	"WriteIf"
.LASF495:
	.string	"stbsp__top"
.LASF642:
	.string	"schk1"
.LASF751:
	.string	"abs_Capitalize"
.LASF591:
	.string	"CopyToOutput"
.LASF31:
	.string	"double"
.LASF612:
	.string	"noround"
.LASF713:
	.string	"abl_IsNumeric"
.LASF399:
	.string	"mbtowc"
.LASF47:
	.string	"_IO_write_end"
.LASF659:
	.string	"isDefineFunction"
.LASF776:
	.string	"_Z19abs_AreStringsEqual13abs_stringptrS_a"
.LASF248:
	.string	"_SC_UCHAR_MAX"
.LASF553:
	.string	"operator()"
.LASF499:
	.string	"stbsp__powten"
.LASF278:
	.string	"_SC_PIPE"
.LASF298:
	.string	"_SC_TYPED_MEMORY_OBJECTS"
.LASF204:
	.string	"_SC_LOGIN_NAME_MAX"
.LASF35:
	.string	"gp_offset"
.LASF262:
	.string	"_SC_XOPEN_LEGACY"
.LASF207:
	.string	"_SC_THREAD_KEYS_MAX"
.LASF75:
	.string	"Used"
.LASF82:
	.string	"_ZN13abs_stringptrC4EPKci"
.LASF81:
	.string	"_ZN13abs_stringptrC4EPKcj"
.LASF560:
	.string	"CurrentMachine"
.LASF100:
	.string	"gl_closedir"
.LASF265:
	.string	"_SC_ADVISORY_INFO"
.LASF30:
	.string	"float"
.LASF648:
	.string	"stbsp__lead_sign"
.LASF791:
	.string	"_ZN13abs_stringptrC2EPKcj"
.LASF804:
	.string	"_Z18abm_CreateSubArenaP12memory_arenam"
.LASF490:
	.string	"count"
.LASF766:
	.string	"SearchStringLen"
.LASF657:
	.string	"isFinished"
.LASF505:
	.string	"MemoryPtr"
.LASF725:
	.string	"_Z15abl_TokenEquals5token13abs_stringptr"
.LASF48:
	.string	"_IO_buf_base"
.LASF795:
	.string	"_Z15abm_ResetMemoryP12memory_arena"
.LASF632:
	.string	"flt_lead"
.LASF794:
	.string	"abm_ResetMemory"
.LASF2:
	.string	"unsigned int"
.LASF782:
	.string	"_Z27abs_AreStringFragmentsEqualPKcS0_ja"
.LASF658:
	.string	"Token"
.LASF706:
	.string	"abl_PeekToken"
.LASF741:
	.string	"BytesRead"
.LASF718:
	.string	"_Z16abl_IsWhitespacec"
.LASF604:
	.string	"_Z13WriteToOutputP11output_dataP12memory_arenaPKcz"
.LASF807:
	.string	"_Z14abm_InitMemoryPvm"
.LASF558:
	.string	"_Z21ProcessStateFunctionsP17term_statemachineP20term_definedfunctionP12memory_arenaP11output_dataS6_"
.LASF95:
	.string	"FileData"
.LASF621:
	.string	"stbsp_snprintf"
.LASF634:
	.string	"doexpfromg"
.LASF86:
	.string	"operator char const*"
.LASF469:
	.string	"ItemListSentinal"
.LASF737:
	.string	"FileHandle"
.LASF172:
	.string	"_SC_COLL_WEIGHTS_MAX"
.LASF198:
	.string	"_SC_PII_OSI_M"
.LASF180:
	.string	"_SC_2_C_DEV"
.LASF816:
	.string	"/home/amos/prog/c/amos_libraries/preprocessor"
.LASF640:
	.string	"schk2"
.LASF815:
	.string	"/home/amos/prog/c/amos_libraries/preprocessor/ab_preprocessor2.cpp"
.LASF63:
	.string	"__pad1"
.LASF64:
	.string	"__pad2"
.LASF65:
	.string	"__pad3"
.LASF66:
	.string	"__pad4"
.LASF67:
	.string	"__pad5"
.LASF664:
	.string	"ParseDefinedFunction"
.LASF296:
	.string	"_SC_SYSTEM_DATABASE_R"
.LASF353:
	.string	"_sbuf"
.LASF511:
	.string	"HeaderOutput"
.LASF103:
	.string	"gl_lstat"
.LASF566:
	.string	"CurrentType"
.LASF127:
	.string	"F_OWNER_PID"
.LASF689:
	.string	"_Z15ParseStructItemP5lexerP6parser"
.LASF730:
	.string	"abl_InitLexer"
.LASF764:
	.string	"isCaseInsensitive"
.LASF251:
	.string	"_SC_USHRT_MAX"
.LASF627:
	.string	"stbsp_sprintf"
.LASF429:
	.string	"TOKEN_Backslash"
.LASF333:
	.string	"_SC_IPV6"
.LASF313:
	.string	"_SC_HOST_NAME_MAX"
.LASF171:
	.string	"_SC_BC_STRING_MAX"
.LASF37:
	.string	"overflow_arg_area"
.LASF212:
	.string	"_SC_THREAD_PRIORITY_SCHEDULING"
.LASF41:
	.string	"_flags"
.LASF711:
	.string	"abl_RemoveIgnorables"
.LASF439:
	.string	"Type"
.LASF638:
	.string	"done"
.LASF485:
	.string	"stbsp__comma"
.LASF355:
	.string	"dirent"
.LASF784:
	.string	"SearchAt"
.LASF68:
	.string	"_mode"
.LASF526:
	.string	"Definition"
.LASF547:
	.string	"isLastString"
.LASF79:
	.string	"String"
.LASF745:
	.string	"WildCard"
.LASF72:
	.string	"memory_arena"
.LASF594:
	.string	"FromOutput"
.LASF503:
	.string	"isFileOutput"
.LASF183:
	.string	"_SC_2_SW_DEV"
.LASF92:
	.string	"file_data"
.LASF141:
	.string	"_SC_REALTIME_SIGNALS"
.LASF683:
	.string	"_Z11ParseStructP5lexerP6parser"
.LASF687:
	.string	"EnumName"
.LASF531:
	.string	"Headers"
.LASF695:
	.string	"_Z14GenerateOutputP12memory_arenaPKcP11output_dataS4_"
.LASF537:
	.string	"ExistListCount"
.LASF28:
	.string	"__unknown__"
.LASF444:
	.string	"Name"
.LASF789:
	.string	"_ZN13abs_stringptrC2EPc"
.LASF261:
	.string	"_SC_XBS5_LPBIG_OFFBIG"
.LASF302:
	.string	"_SC_2_PBS_ACCOUNTING"
.LASF528:
	.string	"CapitalizedOutput"
.LASF721:
	.string	"abl_TokensEquals"
.LASF206:
	.string	"_SC_THREAD_DESTRUCTOR_ITERATIONS"
.LASF401:
	.string	"qsort"
.LASF317:
	.string	"_SC_TRACE_LOG"
.LASF728:
	.string	"_Z14abl_TokenToS325token"
.LASF32:
	.string	"long double"
.LASF85:
	.string	"_ZN13abs_stringptrC4ERKc"
.LASF644:
	.string	"tlen"
.LASF189:
	.string	"_SC_PII_OSI"
.LASF84:
	.string	"_ZN13abs_stringptrC4EPc"
.LASF158:
	.string	"_SC_DELAYTIMER_MAX"
.LASF182:
	.string	"_SC_2_FORT_RUN"
.LASF337:
	.string	"_SC_V7_LP64_OFF64"
.LASF73:
	.string	"Start"
.LASF216:
	.string	"_SC_NPROCESSORS_CONF"
.LASF246:
	.string	"_SC_SHRT_MAX"
.LASF98:
	.string	"gl_offs"
.LASF70:
	.string	"FILE"
.LASF779:
	.string	"String2Len"
.LASF484:
	.string	"stbsp__period"
.LASF156:
	.string	"_SC_AIO_MAX"
.LASF266:
	.string	"_SC_BARRIERS"
.LASF626:
	.string	"stbsp__clamp_callback"
.LASF289:
	.string	"_SC_REGEX_VERSION"
.LASF326:
	.string	"_SC_LEVEL2_CACHE_LINESIZE"
.LASF416:
	.string	"token_type"
.LASF504:
	.string	"OutputFile"
.LASF106:
	.string	"st_dev"
.LASF427:
	.string	"TOKEN_CloseBrace"
.LASF579:
	.string	"CurrentItem"
.LASF385:
	.string	"ldiv_t"
.LASF122:
	.string	"timespec"
.LASF603:
	.string	"WriteToOutput"
.LASF572:
	.string	"_Z17CreateEnumStringsP9term_enumP3tagP12memory_arenaP11output_dataS6_"
.LASF154:
	.string	"_SC_SHARED_MEMORY_OBJECTS"
.LASF128:
	.string	"F_OWNER_PGRP"
.LASF575:
	.string	"HeaderScratch"
.LASF394:
	.string	"bsearch"
.LASF435:
	.string	"TOKEN_Number"
.LASF533:
	.string	"Struct"
.LASF350:
	.string	"optopt"
.LASF613:
	.string	"bits"
.LASF5:
	.string	"__int8_t"
.LASF797:
	.string	"_Z22abm_EndTemporaryMemory16temporary_memory"
.LASF487:
	.string	"pair"
.LASF559:
	.string	"MachineListSentinal"
.LASF368:
	.string	"__free_hook"
.LASF611:
	.string	"donez"
.LASF260:
	.string	"_SC_XBS5_LP64_OFF64"
.LASF125:
	.string	"long long unsigned int"
.LASF652:
	.string	"pperiod"
.LASF338:
	.string	"_SC_V7_LPBIG_OFFBIG"
.LASF38:
	.string	"reg_save_area"
.LASF252:
	.string	"_SC_NL_ARGMAX"
.LASF538:
	.string	"StructItem"
.LASF17:
	.string	"__off_t"
.LASF121:
	.string	"glob_t"
.LASF540:
	.string	"__Definitions"
.LASF705:
	.string	"_Z12RequireTokenP5lexer10token_type"
.LASF684:
	.string	"NewItem"
.LASF284:
	.string	"_SC_SINGLE_PROCESS"
.LASF568:
	.string	"ProcessEnums"
.LASF477:
	.string	"StructListSentinal"
.LASF671:
	.string	"ParseTaggedExpr"
.LASF814:
	.string	"GNU C++14 7.5.0 -mtune=generic -march=x86-64 -g -ggdb -Og -O0 -std=c++1z -fstack-protector-strong"
.LASF219:
	.string	"_SC_AVPHYS_PAGES"
.LASF227:
	.string	"_SC_XOPEN_SHM"
.LASF624:
	.string	"stbsp__count_clamp_callback"
.LASF600:
	.string	"StringIndex"
.LASF294:
	.string	"_SC_THREAD_SPORADIC_SERVER"
.LASF590:
	.string	"QueueSize"
.LASF691:
	.string	"ParseTypeExpr"
.LASF596:
	.string	"_Z12CopyToOutputP11output_dataP12memory_arenaPKc"
.LASF544:
	.string	"Item"
.LASF339:
	.string	"_SC_SS_REPL_MAX"
.LASF620:
	.string	"stbsp_vsprintf"
.LASF349:
	.string	"opterr"
.LASF453:
	.string	"CT_Enum"
.LASF255:
	.string	"_SC_NL_NMAX"
.LASF379:
	.string	"__cxx11"
.LASF19:
	.string	"__time_t"
.LASF382:
	.string	"quot"
.LASF473:
	.string	"term_function"
.LASF672:
	.string	"_Z15ParseTaggedExprP5lexerP6parser5token"
.LASF51:
	.string	"_IO_backup_base"
.LASF60:
	.string	"_shortbuf"
.LASF673:
	.string	"TagList"
.LASF806:
	.string	"abm_InitMemory"
.LASF358:
	.string	"_IO_2_1_stdout_"
.LASF304:
	.string	"_SC_2_PBS_MESSAGE"
.LASF573:
	.string	"DefinitionsOut"
.LASF793:
	.string	"_Z17abm_GetMemoryLeftP12memory_arena"
.LASF164:
	.string	"_SC_SEM_NSEMS_MAX"
.LASF653:
	.string	"GenerateOutput"
.LASF80:
	.string	"Length"
.LASF758:
	.string	"dest"
.LASF199:
	.string	"_SC_T_IOV_MAX"
.LASF494:
	.string	"stbsp__negboterr"
.LASF707:
	.string	"_Z13abl_PeekTokenP5lexer"
.LASF430:
	.string	"TOKEN_Foreslash"
.LASF145:
	.string	"_SC_PRIORITIZED_IO"
.LASF631:
	.string	"doafloat"
.LASF518:
	.string	"WriteOutputToStdOut"
.LASF352:
	.string	"_next"
.LASF18:
	.string	"__off64_t"
.LASF418:
	.string	"TOKEN_OpenParen"
.LASF551:
	.string	"__Item"
.LASF747:
	.string	"ReturnH"
.LASF678:
	.string	"_Z8ParseTagP5lexerP6parser"
.LASF601:
	.string	"OutputEmptySize"
.LASF309:
	.string	"_SC_V6_ILP32_OFF32"
.LASF676:
	.string	"NewFunc"
.LASF375:
	.string	"FileCount"
.LASF474:
	.string	"TypeCount"
.LASF708:
	.string	"abl_GetToken"
.LASF129:
	.string	"F_OWNER_GID"
.LASF137:
	.string	"_SC_STREAM_MAX"
.LASF138:
	.string	"_SC_TZNAME_MAX"
.LASF308:
	.string	"_SC_2_PBS_CHECKPOINT"
.LASF696:
	.string	"_Z9ParseTypeP5lexerP6parser"
.LASF292:
	.string	"_SC_SPAWN"
.LASF150:
	.string	"_SC_MEMLOCK_RANGE"
.LASF170:
	.string	"_SC_BC_SCALE_MAX"
.LASF757:
	.string	"_Z14abs_StringCopyPcPKcm"
.LASF661:
	.string	"_Z16isDefineFunctionP5lexer5token"
.LASF746:
	.string	"ReturnC"
.LASF342:
	.string	"_SC_TRACE_SYS_MAX"
.LASF380:
	.string	"6glob_t"
.LASF752:
	.string	"_Z14abs_Capitalize13abs_stringptrP12memory_arena"
.LASF239:
	.string	"_SC_LONG_BIT"
.LASF49:
	.string	"_IO_buf_end"
.LASF228:
	.string	"_SC_2_CHAR_TERM"
.LASF290:
	.string	"_SC_SHELL"
.LASF276:
	.string	"_SC_FD_MGMT"
.LASF749:
	.string	"_Z13abs_Lowercase13abs_stringptrP12memory_arena"
.LASF225:
	.string	"_SC_XOPEN_CRYPT"
.LASF320:
	.string	"_SC_LEVEL1_ICACHE_LINESIZE"
.LASF269:
	.string	"_SC_C_LANG_SUPPORT_R"
.LASF688:
	.string	"ParseStructItem"
.LASF645:
	.string	"lead"
.LASF343:
	.string	"_SC_TRACE_USER_EVENT_MAX"
.LASF167:
	.string	"_SC_TIMER_MAX"
.LASF403:
	.string	"strtod"
.LASF413:
	.string	"strtof"
.LASF301:
	.string	"_SC_2_PBS"
.LASF271:
	.string	"_SC_CPUTIME"
.LASF404:
	.string	"strtol"
.LASF415:
	.string	"__pid_type"
.LASF446:
	.string	"Next"
.LASF293:
	.string	"_SC_SPORADIC_SERVER"
.LASF87:
	.string	"_ZNK13abs_stringptrcvPKcEv"
.LASF726:
	.string	"Match"
.LASF736:
	.string	"FileDataOut"
.LASF362:
	.string	"stderr"
.LASF7:
	.string	"short int"
.LASF447:
	.string	"Prev"
.LASF669:
	.string	"_Z20ParseStateMachineDefP5lexerP6parser5token"
.LASF548:
	.string	"Separator"
.LASF270:
	.string	"_SC_CLOCK_SELECTION"
.LASF258:
	.string	"_SC_XBS5_ILP32_OFF32"
.LASF582:
	.string	"LabelTag"
.LASF432:
	.string	"TOKEN_Pound"
.LASF285:
	.string	"_SC_NETWORKING"
.LASF670:
	.string	"StateMachine"
.LASF332:
	.string	"_SC_LEVEL4_CACHE_LINESIZE"
.LASF124:
	.string	"tv_nsec"
.LASF220:
	.string	"_SC_ATEXIT_MAX"
.LASF693:
	.string	"Expr"
.LASF389:
	.string	"atexit"
.LASF616:
	.string	"stbsp__raise_to_power10"
.LASF478:
	.string	"EnumListSentinal"
.LASF196:
	.string	"_SC_PII_OSI_COTS"
.LASF160:
	.string	"_SC_MQ_PRIO_MAX"
.LASF59:
	.string	"_vtable_offset"
.LASF369:
	.string	"__malloc_hook"
.LASF165:
	.string	"_SC_SEM_VALUE_MAX"
.LASF268:
	.string	"_SC_C_LANG_SUPPORT"
.LASF440:
	.string	"Text"
.LASF623:
	.string	"stbsp_vsnprintf"
.LASF366:
	.string	"_sys_errlist"
.LASF143:
	.string	"_SC_TIMERS"
.LASF221:
	.string	"_SC_PASS_MAX"
.LASF437:
	.string	"TOKEN_Count"
.LASF147:
	.string	"_SC_FSYNC"
.LASF191:
	.string	"_SC_SELECT"
.LASF78:
	.string	"abs_stringptr"
.LASF710:
	.string	"Tokenizer"
.LASF205:
	.string	"_SC_TTY_NAME_MAX"
.LASF803:
	.string	"abm_CreateSubArena"
.LASF428:
	.string	"TOKEN_Dollar"
.LASF450:
	.string	"CT_Struct"
.LASF581:
	.string	"_Z16CreateEnumLabelsP9term_enumP3tagP12memory_arenaP11output_dataS6_"
.LASF712:
	.string	"_Z20abl_RemoveIgnorablesP5lexer"
.LASF402:
	.string	"srand"
.LASF774:
	.string	"String1"
.LASF740:
	.string	"NextByteLocation"
.LASF459:
	.string	"ArrayLength"
.LASF639:
	.string	"endfmt"
.LASF519:
	.string	"OutputDataPtr"
.LASF665:
	.string	"_Z20ParseDefinedFunctionP5lexerP6parser5token"
.LASF443:
	.string	"LineNumber"
.LASF488:
	.string	"stbsp__digitpair"
.LASF190:
	.string	"_SC_POLL"
.LASF377:
	.string	"Path"
.LASF479:
	.string	"FunctionListSentinal"
.LASF574:
	.string	"FunctionsOut"
.LASF109:
	.string	"st_mode"
.LASF12:
	.string	"__uid_t"
.LASF686:
	.string	"_Z14ParseEnumClassP5lexerP6parser"
.LASF152:
	.string	"_SC_MESSAGE_PASSING"
.LASF580:
	.string	"CreateEnumLabels"
.LASF460:
	.string	"CustomType"
.LASF489:
	.string	"stbsp__context"
.LASF43:
	.string	"_IO_read_end"
.LASF325:
	.string	"_SC_LEVEL2_CACHE_ASSOC"
.LASF168:
	.string	"_SC_BC_BASE_MAX"
.LASF550:
	.string	"<lambda(char const*, b8)>"
.LASF324:
	.string	"_SC_LEVEL2_CACHE_SIZE"
.LASF174:
	.string	"_SC_EXPR_NEST_MAX"
.LASF434:
	.string	"TOKEN_Identifier"
.LASF423:
	.string	"TOKEN_Asterisk"
.LASF472:
	.string	"term_enum"
.LASF729:
	.string	"Value"
.LASF146:
	.string	"_SC_SYNCHRONIZED_IO"
.LASF27:
	.string	"uint32_t"
.LASF787:
	.string	"SearchAtChar"
.LASF732:
	.string	"abf_ReleaseFileList"
.LASF697:
	.string	"ParseEnumitem"
.LASF55:
	.string	"_fileno"
.LASF344:
	.string	"_SC_XOPEN_STREAMS"
.LASF583:
	.string	"Label"
.LASF247:
	.string	"_SC_SHRT_MIN"
.LASF425:
	.string	"TOKEN_CloseBracket"
.LASF149:
	.string	"_SC_MEMLOCK"
.LASF305:
	.string	"_SC_2_PBS_TRACK"
.LASF606:
	.string	"NumChars"
.LASF347:
	.string	"optarg"
.LASF438:
	.string	"token"
.LASF135:
	.string	"_SC_NGROUPS_MAX"
.LASF312:
	.string	"_SC_V6_LPBIG_OFFBIG"
.LASF662:
	.string	"ThisToken"
.LASF549:
	.string	"WriteFormatType"
.LASF1:
	.string	"short unsigned int"
.LASF361:
	.string	"stdout"
.LASF318:
	.string	"_SC_LEVEL1_ICACHE_SIZE"
.LASF715:
	.string	"abl_IsAlpha"
.LASF598:
	.string	"OutputTotalSize"
.LASF685:
	.string	"ParseEnumClass"
.LASF173:
	.string	"_SC_EQUIV_CLASS_MAX"
.LASF76:
	.string	"temporary_memory"
.LASF46:
	.string	"_IO_write_ptr"
.LASF372:
	.string	"__after_morecore_hook"
.LASF654:
	.string	"ParseInit"
.LASF267:
	.string	"_SC_BASE"
.LASF643:
	.string	"hexu"
.LASF546:
	.string	"isLast"
.LASF739:
	.string	"BytesToRead"
.LASF142:
	.string	"_SC_PRIORITY_SCHEDULING"
.LASF630:
	.string	"radixnum"
.LASF727:
	.string	"abl_TokenToS32"
.LASF465:
	.string	"TypeListSentinal"
.LASF8:
	.string	"__int32_t"
.LASF454:
	.string	"term_typeexpr"
.LASF628:
	.string	"stbsp_vsprintfcb"
.LASF243:
	.string	"_SC_SSIZE_MAX"
.LASF576:
	.string	"FunctionScratch"
.LASF203:
	.string	"_SC_GETPW_R_SIZE_MAX"
.LASF681:
	.string	"_Z13ParseFunctionP5lexerP6parser"
.LASF107:
	.string	"st_ino"
.LASF466:
	.string	"term_structitem"
.LASF486:
	.string	"temp"
.LASF213:
	.string	"_SC_THREAD_PRIO_INHERIT"
.LASF16:
	.string	"__nlink_t"
.LASF367:
	.string	"__morecore"
.LASF765:
	.string	"MatchIndex"
.LASF524:
	.string	"GeneratedFile"
.LASF532:
	.string	"Definitions"
.LASF314:
	.string	"_SC_TRACE"
.LASF570:
	.string	"Enum"
.LASF112:
	.string	"__pad0"
.LASF256:
	.string	"_SC_NL_SETMAX"
.LASF650:
	.string	"stbsp_set_separators"
.LASF123:
	.string	"tv_sec"
.LASF400:
	.string	"quick_exit"
.LASF71:
	.string	"wchar_t"
.LASF39:
	.string	"typedef __va_list_tag __va_list_tag"
.LASF588:
	.string	"_Z19WriteQueueFunctions13abs_stringptrjP12memory_arenaP11output_dataS3_"
.LASF374:
	.string	"GlobData"
.LASF179:
	.string	"_SC_2_C_BIND"
.LASF756:
	.string	"abs_StringCopy"
.LASF378:
	.string	"__gnu_cxx"
.LASF614:
	.string	"expo"
.LASF796:
	.string	"abm_EndTemporaryMemory"
.LASF101:
	.string	"gl_readdir"
.LASF483:
	.string	"OutputString"
.LASF383:
	.string	"div_t"
.LASF117:
	.string	"st_atim"
.LASF694:
	.string	"ParseType"
.LASF811:
	.string	"abm_AllocateOsMemory"
.LASF615:
	.string	"tens"
.LASF211:
	.string	"_SC_THREAD_ATTR_STACKSIZE"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits

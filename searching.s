	.file	"searching.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN4nodeC2EiPS_,"axG",@progbits,_ZN4nodeC5EiPS_,comdat
	.align 2
	.weak	_ZN4nodeC2EiPS_
	.type	_ZN4nodeC2EiPS_, @function
_ZN4nodeC2EiPS_:
.LFB1523:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1523:
	.size	_ZN4nodeC2EiPS_, .-_ZN4nodeC2EiPS_
	.weak	_ZN4nodeC1EiPS_
	.set	_ZN4nodeC1EiPS_,_ZN4nodeC2EiPS_
	.text
	.align 2
	.globl	_ZN4node9get_valueEv
	.type	_ZN4node9get_valueEv, @function
_ZN4node9get_valueEv:
.LFB1525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1525:
	.size	_ZN4node9get_valueEv, .-_ZN4node9get_valueEv
	.align 2
	.globl	_ZN4node11extend_treeEv
	.type	_ZN4node11extend_treeEv, @function
_ZN4node11extend_treeEv:
.LFB1526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$32, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	movq	%rbx, %rdi
	call	_ZN4nodeC1EiPS_
	movq	-24(%rbp), %rax
	movq	%rbx, 8(%rax)
	movl	$32, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movl	24(%rax), %eax
	leal	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	movl	%ecx, %esi
	movq	%rbx, %rdi
	call	_ZN4nodeC1EiPS_
	movq	-24(%rbp), %rax
	movq	%rbx, 16(%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1526:
	.size	_ZN4node11extend_treeEv, .-_ZN4node11extend_treeEv
	.align 2
	.globl	_ZN4node13generate_treeEi
	.type	_ZN4node13generate_treeEi, @function
_ZN4node13generate_treeEi:
.LFB1527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.L8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4node11extend_treeEv
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN4node13generate_treeEi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN4node13generate_treeEi
	jmp	.L5
.L8:
	nop
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1527:
	.size	_ZN4node13generate_treeEi, .-_ZN4node13generate_treeEi
	.section	.rodata
.LC0:
	.string	" "
	.text
	.align 2
	.globl	_ZN4node11depth_firstEv
	.type	_ZN4node11depth_firstEv, @function
_ZN4node11depth_firstEv:
.LFB1528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L10
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	jmp	.L11
.L10:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L12
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZN4node11depth_firstEv
	jmp	.L11
.L12:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	_ZN4node11depth_firstEv
	jmp	.L11
.L13:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZN4node11depth_firstEv
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	_ZN4node11depth_firstEv
	nop
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1528:
	.size	_ZN4node11depth_firstEv, .-_ZN4node11depth_firstEv
	.section	.text._ZN10queue_itemC2EP4node,"axG",@progbits,_ZN10queue_itemC5EP4node,comdat
	.align 2
	.weak	_ZN10queue_itemC2EP4node
	.type	_ZN10queue_itemC2EP4node, @function
_ZN10queue_itemC2EP4node:
.LFB1530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1530:
	.size	_ZN10queue_itemC2EP4node, .-_ZN10queue_itemC2EP4node
	.weak	_ZN10queue_itemC1EP4node
	.set	_ZN10queue_itemC1EP4node,_ZN10queue_itemC2EP4node
	.section	.text._ZN10queue_item6appendEP4node,"axG",@progbits,_ZN10queue_item6appendEP4node,comdat
	.align 2
	.weak	_ZN10queue_item6appendEP4node
	.type	_ZN10queue_item6appendEP4node, @function
_ZN10queue_item6appendEP4node:
.LFB1532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L16
	movl	$16, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN10queue_itemC1EP4node
	movq	-40(%rbp), %rax
	movq	%rbx, (%rax)
	jmp	.L20
.L16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.L19:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L19
.L18:
	movl	$16, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN10queue_itemC1EP4node
	movq	-24(%rbp), %rax
	movq	%rbx, (%rax)
.L20:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1532:
	.size	_ZN10queue_item6appendEP4node, .-_ZN10queue_item6appendEP4node
	.text
	.globl	_Z15breadth_checkerP10queue_item
	.type	_Z15breadth_checkerP10queue_item, @function
_Z15breadth_checkerP10queue_item:
.LFB1533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.L22
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	leaq	.LC0(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L24
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L24:
	movq	-32(%rbp), %rax
	jmp	.L25
.L23:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10queue_item6appendEP4node
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L27
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L27:
	movq	-24(%rbp), %rax
	jmp	.L25
.L26:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L28
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10queue_item6appendEP4node
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L29
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L29:
	movq	-16(%rbp), %rax
	jmp	.L25
.L28:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10queue_item6appendEP4node
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10queue_item6appendEP4node
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L30
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L30:
	movq	-8(%rbp), %rax
	jmp	.L25
.L22:
	movl	$0, %eax
.L25:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1533:
	.size	_Z15breadth_checkerP10queue_item, .-_Z15breadth_checkerP10queue_item
	.globl	_Z13breadth_firstP10queue_itemP4node
	.type	_Z13breadth_firstP10queue_itemP4node, @function
_Z13breadth_firstP10queue_itemP4node:
.LFB1534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L32
	cmpq	$0, -48(%rbp)
	jne	.L32
	movl	$1, %eax
	jmp	.L33
.L32:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L34
	cmpq	$0, -48(%rbp)
	je	.L34
	movl	$16, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN10queue_itemC1EP4node
	movq	%rbx, -24(%rbp)
.L34:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z15breadth_checkerP10queue_item
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_Z13breadth_firstP10queue_itemP4node
	nop
.L33:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1534:
	.size	_Z13breadth_firstP10queue_itemP4node, .-_Z13breadth_firstP10queue_itemP4node
	.section	.rodata
.LC1:
	.string	"depth-first search pattern: "
.LC2:
	.string	"\n"
	.align 8
.LC3:
	.string	"breadth-first search pattern: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN4nodeC1EiPS_
	leaq	-48(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZN4node13generate_treeEi
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4node11depth_firstEv
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	_Z13breadth_firstP10queue_itemP4node
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L37
	call	__stack_chk_fail@PLT
.L37:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1535:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2019:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L40
	cmpl	$65535, -8(%rbp)
	jne	.L40
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L40:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2019:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN4node9get_valueEv, @function
_GLOBAL__sub_I__ZN4node9get_valueEv:
.LFB2020:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2020:
	.size	_GLOBAL__sub_I__ZN4node9get_valueEv, .-_GLOBAL__sub_I__ZN4node9get_valueEv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN4node9get_valueEv
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:

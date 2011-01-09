	.section __DWARF,__debug_frame,regular,debug
Lsection__debug_frame:
	.section __DWARF,__debug_info,regular,debug
Lsection__debug_info:
	.section __DWARF,__debug_abbrev,regular,debug
Lsection__debug_abbrev:
	.section __DWARF,__debug_aranges,regular,debug
Lsection__debug_aranges:
	.section __DWARF,__debug_macinfo,regular,debug
Lsection__debug_macinfo:
	.section __DWARF,__debug_line,regular,debug
Lsection__debug_line:
	.section __DWARF,__debug_loc,regular,debug
Lsection__debug_loc:
	.section __DWARF,__debug_pubnames,regular,debug
Lsection__debug_pubnames:
	.section __DWARF,__debug_pubtypes,regular,debug
Lsection__debug_pubtypes:
	.section __DWARF,__debug_inlined,regular,debug
Lsection__debug_inlined:
	.section __DWARF,__debug_str,regular,debug
Lsection__debug_str:
	.section __DWARF,__debug_ranges,regular,debug
Lsection__debug_ranges:
	.section __DWARF,__debug_abbrev,regular,debug
Ldebug_abbrev0:
	.section __DWARF,__debug_info,regular,debug
Ldebug_info0:
	.section __DWARF,__debug_line,regular,debug
Ldebug_line0:
	.text
Ltext0:
.globl _drawLine
_drawLine:
LFB679:
	.file 1 "/Users/kps/Developer/macosxdev/src/prog1/prog1.m"
	.loc 1 8 0
	nop
	nop
	nop
	nop
	nop
	nop
	pushq	%rbp
LCFI0:
	movq	%rsp, %rbp
LCFI1:
	subq	$32, %rsp
LCFI2:
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movb	%dl, -28(%rbp)
	.loc 1 9 0
	movl	$0, -4(%rbp)
	.loc 1 11 0
	movl	$0, -4(%rbp)
	jmp	L2
L3:
	movl	$32, %edi
	call	_putchar
	incl	-4(%rbp)
L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L3
	.loc 1 12 0
	movl	$0, -4(%rbp)
	jmp	L5
L6:
	movsbl	-28(%rbp),%edi
	call	_putchar
	incl	-4(%rbp)
L5:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	L6
	.loc 1 14 0
	movl	$10, %edi
	call	_putchar
	.loc 1 15 0
	leave
	ret
LFE679:
	.cstring
	.align 3
LC0:
	.ascii "Objective-C programming rocks!!\0"
	.section __DATA, __cfstring
	.align 3
LC1:
	.quad	___CFConstantStringClassReference
	.long	1992
	.space 4
	.quad	LC0
	.quad	31
	.cstring
	.align 3
LC4:
	.ascii "Calculator object:%p has value %f\0"
	.section __DATA, __cfstring
	.align 3
LC5:
	.quad	___CFConstantStringClassReference
	.long	1992
	.space 4
	.quad	LC4
	.quad	33
	.cstring
LC6:
	.ascii "Enter the triangulor number: \0"
LC7:
	.ascii "%i\0"
	.text
.globl _main
_main:
LFB680:
	.loc 1 17 0
	nop
	nop
	nop
	nop
	nop
	nop
	pushq	%rbp
LCFI3:
	movq	%rsp, %rbp
LCFI4:
	subq	$48, %rsp
LCFI5:
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	.loc 1 19 0
	movq	L_OBJC_CLASSLIST_REFERENCES_$_0(%rip), %rax
	movq	%rax, %rdi
	movq	l_objc_msgSend_fixup_alloc@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	l_objc_msgSend_fixup_alloc@GOTPCREL(%rip), %rsi
	call	*%rax
	movq	%rax, %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_0(%rip), %rsi
	call	_objc_msgSend
	movq	%rax, -16(%rbp)
	.loc 1 20 0
	movl	$0, -4(%rbp)
	.loc 1 22 0
	leaq	LC1(%rip), %rdi
	movl	$0, %eax
	call	_NSLog
	.loc 1 27 0
	movq	L_OBJC_CLASSLIST_REFERENCES_$_1(%rip), %rax
	movq	%rax, %rdi
	movq	l_objc_msgSend_fixup_alloc@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	l_objc_msgSend_fixup_alloc@GOTPCREL(%rip), %rsi
	call	*%rax
	movq	%rax, %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_0(%rip), %rsi
	call	_objc_msgSend
	movq	%rax, -24(%rbp)
	.loc 1 29 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_1(%rip), %rsi
	movsd	LC2(%rip), %xmm0
	call	_objc_msgSend
	.loc 1 30 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_2(%rip), %rsi
	movl	$2, %edx
	call	_objc_msgSend
	.loc 1 31 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_3(%rip), %rsi
	call	_objc_msgSend
	.loc 1 32 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_1(%rip), %rsi
	xorpd	%xmm0, %xmm0
	call	_objc_msgSend
	.loc 1 33 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_4(%rip), %rsi
	call	_objc_msgSend
	.loc 1 34 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_5(%rip), %rsi
	movl	$3, %edx
	call	_objc_msgSend
	.loc 1 37 0
	movq	-24(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_6(%rip), %rsi
	call	_objc_msgSend
	leaq	LC5(%rip), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %eax
	call	_NSLog
	.loc 1 40 0
	movq	-24(%rbp), %rdi
	movq	l_objc_msgSend_fixup_release@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	l_objc_msgSend_fixup_release@GOTPCREL(%rip), %rsi
	call	*%rax
	.loc 1 43 0
	leaq	LC6(%rip), %rdi
	movl	$0, %eax
	call	_printf
	.loc 1 45 0
	leaq	-4(%rbp), %rsi
	leaq	LC7(%rip), %rdi
	movl	$0, %eax
	call	_scanf
LBB2:
	.loc 1 47 0
	movl	$0, -8(%rbp)
	jmp	L10
L11:
	.loc 1 49 0
	movl	-8(%rbp), %eax
	addl	%eax, %eax
	leal	1(%rax), %esi
	movl	-4(%rbp), %eax
	addl	$5, %eax
	movl	%eax, %edi
	subl	-8(%rbp), %edi
	movl	$42, %edx
	call	_drawLine
	.loc 1 47 0
	incl	-8(%rbp)
L10:
	movl	-4(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	L11
LBE2:
	.loc 1 52 0
	movq	-16(%rbp), %rdi
	movq	L_OBJC_SELECTOR_REFERENCES_7(%rip), %rsi
	call	_objc_msgSend
	.loc 1 54 0
	movl	$0, %eax
	.loc 1 55 0
	leave
	ret
LFE680:
	.cstring
L_OBJC_METH_VAR_NAME_0:
	.ascii "drain\0"
	.section __DATA, __objc_msgrefs, coalesced
	.section __DATA, __objc_data
	.section __DATA, __objc_const
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.section __DATA, __objc_classlist, regular, no_dead_strip
	.section __DATA, __objc_catlist, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.section __DATA, __objc_nlclslist, regular, no_dead_strip
	.section __DATA, __objc_nlcatlist, regular, no_dead_strip
	.section __DATA, __objc_protolist, coalesced, no_dead_strip
	.section __DATA, __objc_protorefs, coalesced, no_dead_strip
	.section __DATA, __objc_superrefs, regular, no_dead_strip
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.section __DATA, __objc_stringobj, regular, no_dead_strip
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_7:
	.quad	L_OBJC_METH_VAR_NAME_0
	.cstring
L_OBJC_METH_VAR_NAME_1:
	.ascii "current\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_6:
	.quad	L_OBJC_METH_VAR_NAME_1
	.cstring
L_OBJC_METH_VAR_NAME_2:
	.ascii "mul:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_5:
	.quad	L_OBJC_METH_VAR_NAME_2
	.cstring
L_OBJC_METH_VAR_NAME_3:
	.ascii "restore\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_4:
	.quad	L_OBJC_METH_VAR_NAME_3
	.cstring
L_OBJC_METH_VAR_NAME_4:
	.ascii "save\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_3:
	.quad	L_OBJC_METH_VAR_NAME_4
	.cstring
L_OBJC_METH_VAR_NAME_5:
	.ascii "add:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_2:
	.quad	L_OBJC_METH_VAR_NAME_5
	.cstring
L_OBJC_METH_VAR_NAME_6:
	.ascii "setCurrent:\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_1:
	.quad	L_OBJC_METH_VAR_NAME_6
	.cstring
L_OBJC_METH_VAR_NAME_7:
	.ascii "init\0"
	.section __DATA, __objc_selrefs, literal_pointers, no_dead_strip
	.align 3
L_OBJC_SELECTOR_REFERENCES_0:
	.quad	L_OBJC_METH_VAR_NAME_7
	.cstring
L_OBJC_METH_VAR_NAME_8:
	.ascii "alloc\0"
	.private_extern l_objc_msgSend_fixup_alloc
.globl l_objc_msgSend_fixup_alloc
	.weak_definition l_objc_msgSend_fixup_alloc
	.section __DATA, __objc_msgrefs, coalesced
	.align 3
l_objc_msgSend_fixup_alloc:
	.quad	_objc_msgSend_fixup
	.quad	L_OBJC_METH_VAR_NAME_8
	.cstring
L_OBJC_METH_VAR_NAME_9:
	.ascii "release\0"
	.private_extern l_objc_msgSend_fixup_release
.globl l_objc_msgSend_fixup_release
	.weak_definition l_objc_msgSend_fixup_release
	.section __DATA, __objc_msgrefs, coalesced
	.align 3
l_objc_msgSend_fixup_release:
	.quad	_objc_msgSend_fixup
	.quad	L_OBJC_METH_VAR_NAME_9
	.section __DATA, __objc_classrefs, regular, no_dead_strip
	.align 3
L_OBJC_CLASSLIST_REFERENCES_$_0:
	.quad	_OBJC_CLASS_$_NSAutoreleasePool
	.align 3
L_OBJC_CLASSLIST_REFERENCES_$_1:
	.quad	_OBJC_CLASS_$_myCalc
	.section __DATA, __objc_imageinfo, regular, no_dead_strip
	.align 2
L_OBJC_IMAGE_INFO:
	.long	0
	.long	16
	.literal8
	.align 3
LC2:
	.long	0
	.long	1076101120
	.section __DWARF,__debug_frame,regular,debug
Lframe0:
	.set L$set$0,LECIE0-LSCIE0
	.long L$set$0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE0:
LSFDE0:
	.set L$set$1,LEFDE0-LASFDE0
	.long L$set$1
LASFDE0:
	.set L$set$2,Lframe0-Lsection__debug_frame
	.long L$set$2
	.quad	LFB679
	.set L$set$3,LFE679-LFB679
	.quad L$set$3
	.byte	0x4
	.set L$set$4,LCFI0-LFB679
	.long L$set$4
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$5,LCFI1-LCFI0
	.long L$set$5
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE0:
LSFDE2:
	.set L$set$6,LEFDE2-LASFDE2
	.long L$set$6
LASFDE2:
	.set L$set$7,Lframe0-Lsection__debug_frame
	.long L$set$7
	.quad	LFB680
	.set L$set$8,LFE680-LFB680
	.quad L$set$8
	.byte	0x4
	.set L$set$9,LCFI3-LFB680
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI4-LCFI3
	.long L$set$10
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE2:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$11,LECIE1-LSCIE1
	.long L$set$11
LSCIE1:
	.long	0x0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
.globl _drawLine.eh
_drawLine.eh:
LSFDE1:
	.set L$set$12,LEFDE1-LASFDE1
	.long L$set$12
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB679-.
	.set L$set$13,LFE679-LFB679
	.quad L$set$13
	.byte	0x0
	.byte	0x4
	.set L$set$14,LCFI0-LFB679
	.long L$set$14
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$15,LCFI1-LCFI0
	.long L$set$15
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE1:
.globl _main.eh
_main.eh:
LSFDE3:
	.set L$set$16,LEFDE3-LASFDE3
	.long L$set$16
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB680-.
	.set L$set$17,LFE680-LFB680
	.quad L$set$17
	.byte	0x0
	.byte	0x4
	.set L$set$18,LCFI3-LFB680
	.long L$set$18
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$19,LCFI4-LCFI3
	.long L$set$19
	.byte	0xd
	.byte	0x6
	.align 3
LEFDE3:
	.text
Letext0:
	.section __DWARF,__debug_loc,regular,debug
Ldebug_loc0:
LLST0:
	.set L$set$20,LFB679-Ltext0
	.quad L$set$20
	.set L$set$21,LCFI0-Ltext0
	.quad L$set$21
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$22,LCFI0-Ltext0
	.quad L$set$22
	.set L$set$23,LCFI1-Ltext0
	.quad L$set$23
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$24,LCFI1-Ltext0
	.quad L$set$24
	.set L$set$25,LFE679-Ltext0
	.quad L$set$25
	.word	0x2
	.byte	0x76
	.byte	0x10
	.quad	0x0
	.quad	0x0
LLST1:
	.set L$set$26,LFB680-Ltext0
	.quad L$set$26
	.set L$set$27,LCFI3-Ltext0
	.quad L$set$27
	.word	0x2
	.byte	0x77
	.byte	0x8
	.set L$set$28,LCFI3-Ltext0
	.quad L$set$28
	.set L$set$29,LCFI4-Ltext0
	.quad L$set$29
	.word	0x2
	.byte	0x77
	.byte	0x10
	.set L$set$30,LCFI4-Ltext0
	.quad L$set$30
	.set L$set$31,LFE680-Ltext0
	.quad L$set$31
	.word	0x2
	.byte	0x76
	.byte	0x10
	.quad	0x0
	.quad	0x0
	.file 2 "/Developer/SDKs/MacOSX10.6.sdk/usr/include/i386/_types.h"
	.file 3 "/Developer/SDKs/MacOSX10.6.sdk/usr/include/runetype.h"
	.file 4 "/Developer/SDKs/MacOSX10.6.sdk/usr/include/objc/objc.h"
	.file 5 "/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSObject.h"
	.file 6 "/Developer/SDKs/MacOSX10.6.sdk/System/Library/Frameworks/Foundation.framework/Headers/NSAutoreleasePool.h"
	.file 7 "/Users/kps/Developer/macosxdev/src/prog1/calc.h"
	.file 8 "<built-in>"
	.section __DWARF,__debug_info,regular,debug
	.long	0x973
	.word	0x2
	.set L$set$32,Ldebug_abbrev0-Lsection__debug_abbrev
	.long L$set$32
	.byte	0x8
	.byte	0x1
	.ascii "GNU Objective-C 4.2.1 (Apple Inc. build 5646) (dot 1)\0"
	.byte	0x10
	.ascii "/Users/kps/Developer/macosxdev/src/prog1/prog1.m\0"
	.byte	0x2
	.quad	Ltext0
	.quad	Letext0
	.set L$set$33,Ldebug_line0-Lsection__debug_line
	.long L$set$33
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.byte	0x3
	.ascii "__uint32_t\0"
	.byte	0x2
	.byte	0x2d
	.long	0xe5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.byte	0x3
	.ascii "__darwin_size_t\0"
	.byte	0x2
	.byte	0x5a
	.long	0x14e
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.byte	0x5
	.byte	0x8
	.byte	0x3
	.ascii "__darwin_wchar_t\0"
	.byte	0x2
	.byte	0x66
	.long	0xcc
	.byte	0x3
	.ascii "__darwin_rune_t\0"
	.byte	0x2
	.byte	0x6b
	.long	0x165
	.byte	0x6
	.long	0x12f
	.long	0x1a4
	.byte	0x7
	.long	0x12c
	.byte	0x7
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x12f
	.byte	0x9
	.byte	0x18
	.byte	0x3
	.byte	0x51
	.long	0x1f5
	.byte	0xa
	.ascii "__min\0"
	.byte	0x3
	.byte	0x52
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__max\0"
	.byte	0x3
	.byte	0x53
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "__map\0"
	.byte	0x3
	.byte	0x54
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__types\0"
	.byte	0x3
	.byte	0x55
	.long	0x1f5
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0xd3
	.byte	0x3
	.ascii "_RuneEntry\0"
	.byte	0x3
	.byte	0x56
	.long	0x1aa
	.byte	0x9
	.byte	0x10
	.byte	0x3
	.byte	0x58
	.long	0x23d
	.byte	0xa
	.ascii "__nranges\0"
	.byte	0x3
	.byte	0x59
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__ranges\0"
	.byte	0x3
	.byte	0x5a
	.long	0x23d
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x1fb
	.byte	0x3
	.ascii "_RuneRange\0"
	.byte	0x3
	.byte	0x5b
	.long	0x20d
	.byte	0x9
	.byte	0x14
	.byte	0x3
	.byte	0x5d
	.long	0x280
	.byte	0xa
	.ascii "__name\0"
	.byte	0x3
	.byte	0x5e
	.long	0x280
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__mask\0"
	.byte	0x3
	.byte	0x5f
	.long	0xd3
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x0
	.byte	0x6
	.long	0x12f
	.long	0x290
	.byte	0x7
	.long	0x12c
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.ascii "_RuneCharClass\0"
	.byte	0x3
	.byte	0x60
	.long	0x255
	.byte	0xb
	.word	0xc88
	.byte	0x3
	.byte	0x62
	.long	0x40c
	.byte	0xa
	.ascii "__magic\0"
	.byte	0x3
	.byte	0x63
	.long	0x194
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "__encoding\0"
	.byte	0x3
	.byte	0x64
	.long	0x40c
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "__sgetrune\0"
	.byte	0x3
	.byte	0x66
	.long	0x447
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0xa
	.ascii "__sputrune\0"
	.byte	0x3
	.byte	0x67
	.long	0x472
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0xa
	.ascii "__invalid_rune\0"
	.byte	0x3
	.byte	0x68
	.long	0x17d
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0xa
	.ascii "__runetype\0"
	.byte	0x3
	.byte	0x6a
	.long	0x478
	.byte	0x2
	.byte	0x23
	.byte	0x3c
	.byte	0xa
	.ascii "__maplower\0"
	.byte	0x3
	.byte	0x6b
	.long	0x488
	.byte	0x3
	.byte	0x23
	.byte	0xbc,0x8
	.byte	0xa
	.ascii "__mapupper\0"
	.byte	0x3
	.byte	0x6c
	.long	0x488
	.byte	0x3
	.byte	0x23
	.byte	0xbc,0x10
	.byte	0xa
	.ascii "__runetype_ext\0"
	.byte	0x3
	.byte	0x73
	.long	0x243
	.byte	0x3
	.byte	0x23
	.byte	0xc0,0x18
	.byte	0xa
	.ascii "__maplower_ext\0"
	.byte	0x3
	.byte	0x74
	.long	0x243
	.byte	0x3
	.byte	0x23
	.byte	0xd0,0x18
	.byte	0xa
	.ascii "__mapupper_ext\0"
	.byte	0x3
	.byte	0x75
	.long	0x243
	.byte	0x3
	.byte	0x23
	.byte	0xe0,0x18
	.byte	0xa
	.ascii "__variable\0"
	.byte	0x3
	.byte	0x77
	.long	0x163
	.byte	0x3
	.byte	0x23
	.byte	0xf0,0x18
	.byte	0xa
	.ascii "__variable_len\0"
	.byte	0x3
	.byte	0x78
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.byte	0xf8,0x18
	.byte	0xa
	.ascii "__ncharclasses\0"
	.byte	0x3
	.byte	0x7d
	.long	0xcc
	.byte	0x3
	.byte	0x23
	.byte	0xfc,0x18
	.byte	0xa
	.ascii "__charclasses\0"
	.byte	0x3
	.byte	0x7e
	.long	0x498
	.byte	0x3
	.byte	0x23
	.byte	0x80,0x19
	.byte	0x0
	.byte	0x6
	.long	0x12f
	.long	0x41c
	.byte	0x7
	.long	0x12c
	.byte	0x1f
	.byte	0x0
	.byte	0xc
	.byte	0x1
	.long	0x17d
	.long	0x436
	.byte	0xd
	.long	0x436
	.byte	0xd
	.long	0x137
	.byte	0xd
	.long	0x441
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x43c
	.byte	0xe
	.long	0x12f
	.byte	0x8
	.byte	0x8
	.long	0x436
	.byte	0x8
	.byte	0x8
	.long	0x41c
	.byte	0xc
	.byte	0x1
	.long	0xcc
	.long	0x46c
	.byte	0xd
	.long	0x17d
	.byte	0xd
	.long	0x1a4
	.byte	0xd
	.long	0x137
	.byte	0xd
	.long	0x46c
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x1a4
	.byte	0x8
	.byte	0x8
	.long	0x44d
	.byte	0x6
	.long	0xd3
	.long	0x488
	.byte	0x7
	.long	0x12c
	.byte	0xff
	.byte	0x0
	.byte	0x6
	.long	0x17d
	.long	0x498
	.byte	0x7
	.long	0x12c
	.byte	0xff
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x290
	.byte	0x3
	.ascii "_RuneLocale\0"
	.byte	0x3
	.byte	0x7f
	.long	0x2a6
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.byte	0xf
	.byte	0x8
	.ascii "Class\0"
	.long	0x4d0
	.byte	0x10
	.ascii "objc_class\0"
	.byte	0x1
	.byte	0xf
	.byte	0x8
	.ascii "id\0"
	.long	0x4e6
	.byte	0x11
	.ascii "objc_object\0"
	.byte	0x8
	.byte	0x8
	.byte	0x0
	.long	0x509
	.byte	0xa
	.ascii "isa\0"
	.byte	0x4
	.byte	0x25
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x50f
	.byte	0x10
	.ascii "objc_selector\0"
	.byte	0x1
	.byte	0x12
	.ascii "NSObject\0"
	.byte	0x10
	.byte	0x8
	.byte	0x5
	.byte	0x43
	.long	0x541
	.byte	0x13
	.ascii "isa\0"
	.byte	0x5
	.byte	0x42
	.long	0x4c4
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x2
	.byte	0x0
	.byte	0x12
	.ascii "NSAutoreleasePool\0"
	.byte	0x10
	.byte	0x28
	.byte	0x6
	.byte	0xd
	.long	0x5b9
	.byte	0x14
	.long	0x51f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x13
	.ascii "_token\0"
	.byte	0x6
	.byte	0x9
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x3
	.byte	0x13
	.ascii "_reserved3\0"
	.byte	0x6
	.byte	0xa
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x3
	.byte	0x13
	.ascii "_reserved2\0"
	.byte	0x6
	.byte	0xb
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x3
	.byte	0x13
	.ascii "_reserved\0"
	.byte	0x6
	.byte	0xc
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x3
	.byte	0x0
	.byte	0x6
	.long	0xcc
	.long	0x5c4
	.byte	0x15
	.byte	0x0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.byte	0x12
	.ascii "myCalc\0"
	.byte	0x10
	.byte	0x18
	.byte	0x7
	.byte	0xf
	.long	0x611
	.byte	0x14
	.long	0x51f
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0x1
	.byte	0x13
	.ascii "curValue\0"
	.byte	0x7
	.byte	0xd
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0x2
	.byte	0x13
	.ascii "savedValue\0"
	.byte	0x7
	.byte	0xe
	.long	0x4ba
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0x2
	.byte	0x0
	.byte	0x16
	.byte	0x1
	.set L$set$34,LASF0-Lsection__debug_str
	.long L$set$34
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.quad	LFB679
	.quad	LFE679
	.set L$set$35,LLST0-Lsection__debug_loc
	.long L$set$35
	.long	0x66c
	.byte	0x17
	.ascii "spaces\0"
	.byte	0x1
	.byte	0x7
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.ascii "count\0"
	.byte	0x1
	.byte	0x7
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x17
	.ascii "c\0"
	.byte	0x1
	.byte	0x7
	.long	0x12f
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x9
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x0
	.byte	0x19
	.byte	0x1
	.set L$set$36,LASF1-Lsection__debug_str
	.long L$set$36
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0xcc
	.quad	LFB680
	.quad	LFE680
	.set L$set$37,LLST1-Lsection__debug_loc
	.long L$set$37
	.long	0x6fb
	.byte	0x17
	.ascii "argc\0"
	.byte	0x1
	.byte	0x11
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.ascii "argv\0"
	.byte	0x1
	.byte	0x11
	.long	0x441
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x18
	.ascii "pool\0"
	.byte	0x1
	.byte	0x13
	.long	0x6fb
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x18
	.ascii "tNum\0"
	.byte	0x1
	.byte	0x14
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.ascii "calc\0"
	.byte	0x1
	.byte	0x1b
	.long	0x701
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1a
	.quad	LBB2
	.quad	LBE2
	.byte	0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x2f
	.long	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x541
	.byte	0x8
	.byte	0x8
	.long	0x5cd
	.byte	0x1b
	.ascii "__CFConstantStringClassReference\0"
	.long	0x5b9
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1c
	.ascii "_DefaultRuneLocale\0"
	.byte	0x3
	.byte	0x84
	.long	0x49e
	.byte	0x1
	.byte	0x1
	.byte	0x11
	.ascii "_class_t\0"
	.byte	0x28
	.byte	0x8
	.byte	0x0
	.long	0x8eb
	.byte	0xa
	.ascii "isa\0"
	.byte	0x8
	.byte	0x0
	.long	0x8eb
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "superclass\0"
	.byte	0x8
	.byte	0x0
	.long	0x8eb
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "cache\0"
	.byte	0x8
	.byte	0x0
	.long	0x163
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii "vtable\0"
	.byte	0x8
	.byte	0x0
	.long	0x907
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x11
	.ascii "_class_ro_t\0"
	.byte	0x48
	.byte	0x8
	.byte	0x0
	.long	0x8dd
	.byte	0xa
	.ascii "flags\0"
	.byte	0x8
	.byte	0x0
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.byte	0x0
	.byte	0xa
	.ascii "instanceStart\0"
	.byte	0x8
	.byte	0x0
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.byte	0x4
	.byte	0xa
	.ascii "instanceSize\0"
	.byte	0x8
	.byte	0x0
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.byte	0x8
	.byte	0xa
	.ascii "reserved\0"
	.byte	0x8
	.byte	0x0
	.long	0xcc
	.byte	0x2
	.byte	0x23
	.byte	0xc
	.byte	0xa
	.ascii "ivarLayout\0"
	.byte	0x8
	.byte	0x0
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.byte	0x10
	.byte	0xa
	.ascii "name\0"
	.byte	0x8
	.byte	0x0
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.byte	0x18
	.byte	0x10
	.ascii "_objc_method_list\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseMethods\0"
	.byte	0x8
	.byte	0x0
	.long	0x913
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x10
	.ascii "_protocol_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "baseProtocols\0"
	.byte	0x8
	.byte	0x0
	.long	0x919
	.byte	0x2
	.byte	0x23
	.byte	0x28
	.byte	0x10
	.ascii "_ivar_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "ivars\0"
	.byte	0x8
	.byte	0x0
	.long	0x91f
	.byte	0x2
	.byte	0x23
	.byte	0x30
	.byte	0xa
	.ascii "weakIvarLayout\0"
	.byte	0x8
	.byte	0x0
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.byte	0x38
	.byte	0x10
	.ascii "_prop_list_t\0"
	.byte	0x1
	.byte	0xa
	.ascii "properties\0"
	.byte	0x8
	.byte	0x0
	.long	0x925
	.byte	0x2
	.byte	0x23
	.byte	0x40
	.byte	0x0
	.byte	0xa
	.ascii "ro\0"
	.byte	0x8
	.byte	0x0
	.long	0x92b
	.byte	0x2
	.byte	0x23
	.byte	0x20
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x74c
	.byte	0xc
	.byte	0x1
	.long	0x4dd
	.long	0x907
	.byte	0xd
	.long	0x4dd
	.byte	0xd
	.long	0x509
	.byte	0x1d
	.byte	0x0
	.byte	0x8
	.byte	0x8
	.long	0x90d
	.byte	0x8
	.byte	0x8
	.long	0x8f1
	.byte	0x8
	.byte	0x8
	.long	0x82b
	.byte	0x8
	.byte	0x8
	.long	0x855
	.byte	0x8
	.byte	0x8
	.long	0x880
	.byte	0x8
	.byte	0x8
	.long	0x8b8
	.byte	0x8
	.byte	0x8
	.long	0x7a1
	.byte	0x1c
	.ascii "OBJC_CLASS_$_NSAutoreleasePool\0"
	.byte	0x1
	.byte	0x37
	.long	0x74c
	.byte	0x1
	.byte	0x1
	.byte	0x1c
	.ascii "OBJC_CLASS_$_myCalc\0"
	.byte	0x1
	.byte	0x37
	.long	0x74c
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section __DWARF,__debug_abbrev,regular,debug
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0xe5,0x7f
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0x0
	.byte	0x0
	.byte	0x2
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x0
	.byte	0x0
	.byte	0x3
	.byte	0x16
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x4
	.byte	0x24
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x5
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x7
	.byte	0x21
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x8
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xa
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xd
	.byte	0x5
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xe
	.byte	0x26
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0xf
	.byte	0xf
	.byte	0x0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x10
	.byte	0x13
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x12
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0xe6,0x7f
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x13
	.byte	0xd
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x14
	.byte	0x1c
	.byte	0x0
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.byte	0x0
	.byte	0x0
	.byte	0x15
	.byte	0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x17
	.byte	0x5
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x18
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0xa
	.byte	0x0
	.byte	0x0
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x27
	.byte	0xc
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0x0
	.byte	0x0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x1b
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x34
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x1c
	.byte	0x34
	.byte	0x0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0xc
	.byte	0x3c
	.byte	0xc
	.byte	0x0
	.byte	0x0
	.byte	0x1d
	.byte	0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section __DWARF,__debug_pubnames,regular,debug
	.long	0x24
	.word	0x2
	.set L$set$38,Ldebug_info0-Lsection__debug_info
	.long L$set$38
	.long	0x977
	.long	0x611
	.ascii "drawLine\0"
	.long	0x66c
	.ascii "main\0"
	.long	0x0
	.section __DWARF,__debug_pubtypes,regular,debug
	.long	0xf7
	.word	0x2
	.set L$set$39,Ldebug_info0-Lsection__debug_info
	.long L$set$39
	.long	0x977
	.long	0xd3
	.ascii "__uint32_t\0"
	.long	0x137
	.ascii "__darwin_size_t\0"
	.long	0x165
	.ascii "__darwin_wchar_t\0"
	.long	0x17d
	.ascii "__darwin_rune_t\0"
	.long	0x1fb
	.ascii "_RuneEntry\0"
	.long	0x243
	.ascii "_RuneRange\0"
	.long	0x290
	.ascii "_RuneCharClass\0"
	.long	0x49e
	.ascii "_RuneLocale\0"
	.long	0x4c4
	.ascii "Class\0"
	.long	0x4e6
	.ascii "objc_object\0"
	.long	0x4dd
	.ascii "id\0"
	.long	0x51f
	.ascii "NSObject\0"
	.long	0x541
	.ascii "NSAutoreleasePool\0"
	.long	0x5cd
	.ascii "myCalc\0"
	.long	0x74c
	.ascii "_class_t\0"
	.long	0x0
	.section __DWARF,__debug_aranges,regular,debug
	.long	0x2c
	.word	0x2
	.set L$set$40,Ldebug_info0-Lsection__debug_info
	.long L$set$40
	.byte	0x8
	.byte	0x0
	.word	0x0
	.word	0x0
	.quad	Ltext0
	.set L$set$41,Letext0-Ltext0
	.quad L$set$41
	.quad	0x0
	.quad	0x0
	.section __DWARF,__debug_str,regular,debug
LASF0:
	.ascii "drawLine\0"
LASF1:
	.ascii "main\0"
	.subsections_via_symbols

/*
 * Copyright (c) 2003, 2006 Matteo Frigo
 * Copyright (c) 2003, 2006 Massachusetts Institute of Technology
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/* This file was automatically generated --- DO NOT EDIT */
/* Generated on Sat Jul  1 22:40:43 EDT 2006 */

#include "config.h"



/* $$$-mode: VECTGRADE_FULL succeeded (6406 steps) */
/* Generated by: ../../../genfft-k7/gen_notw -no-randomized-cse -n 11 -name n1k7_11 */

/*
 * Generator Id's : 
 * $Id: algsimp.ml,v 1.4 2006-01-05 03:04:27 stevenj Exp $
 * $Id: fft.ml,v 1.4 2006-01-05 03:04:27 stevenj Exp $
 * $Id: gen_notw.ml,v 1.12 2006-01-05 03:04:27 stevenj Exp $
 */

/* The following asm code is Copyright (c) 2000-2001 Stefan Kral */
.section .rodata
	.balign 64
KP959492973KP959492973: .float +0.959492973614497389890368057066327699062454848, +0.959492973614497389890368057066327699062454848
KP654860733KP654860733: .float +0.654860733945285064056925072466293553183791199, +0.654860733945285064056925072466293553183791199
KP415415013KP415415013: .float +0.415415013001886425529274149229623203524004910, +0.415415013001886425529274149229623203524004910
KP142314838KP142314838: .float +0.142314838273285140443792668616369668791051361, +0.142314838273285140443792668616369668791051361
KP841253532KP841253532: .float +0.841253532831181168861811648919367717513292498, +0.841253532831181168861811648919367717513292498
KP540640817KN540640817: .float +0.540640817455597582107635954318691695431770608, -0.540640817455597582107635954318691695431770608
KP755749574KN755749574: .float +0.755749574354258283774035843972344420179717445, -0.755749574354258283774035843972344420179717445
KP281732556KN281732556: .float +0.281732556841429697711417915346616899035777899, -0.281732556841429697711417915346616899035777899
KP909631995KN909631995: .float +0.909631995354518371411715383079028460060241051, -0.909631995354518371411715383079028460060241051
KP989821441KN989821441: .float +0.989821441880932732376092037776718787376519372, -0.989821441880932732376092037776718787376519372
.text
.text
	.balign 64
n1k7_11:
	subl $260, %esp
	femms 
	movl %ebx, 256(%esp)
	movl 280(%esp), %edx
	movl 284(%esp), %ebx
	movl %esi, 252(%esp)
	movl %edi, 248(%esp)
	movl 264(%esp), %eax
	movl %ebp, 244(%esp)
	movl 272(%esp), %ecx
	sall $2, 292(%esp)
	leal (,%edx,4), %edx
	sall $2, 296(%esp)
	leal (,%ebx,4), %ebx
	.p2align 4,,7
.L0:
	/* promise simd cell size = 8 */ 
	leal (%edx,%edx,2), %esi
	movq (%eax,%edx,8), %mm0
	leal (%edx,%edx,4), %ebp
	movq (%eax,%esi), %mm1
	leal (%esi,%edx,4), %edi
	movq %mm1, %mm2
	pfadd %mm0, %mm1
	pfsub %mm0, %mm2
	movq %mm1, %mm3
	movq %mm1, %mm5
	movq %mm1, %mm4
	movq %mm1, 64(%esp)
	movq %mm1, %mm6
	pfmul KP959492973KP959492973, %mm1
	pfmul KP654860733KP654860733, %mm3
	pswapd %mm2, %mm2
	pfmul KP415415013KP415415013, %mm5
	movq %mm2, %mm7
	pfmul KP142314838KP142314838, %mm4
	movq %mm2, %mm0
	pfmul KP841253532KP841253532, %mm6
	pfmul KP540640817KN540640817, %mm7
	pfmul KP755749574KN755749574, %mm0
	movq %mm3, 40(%esp)
	movq %mm2, %mm3
	movq %mm5, 72(%esp)
	movq (%eax,%edi), %mm5
	leal (%ebx,%ebx,4), %edi
	pfmul KP281732556KN281732556, %mm3
	movq %mm4, 48(%esp)
	movq %mm2, %mm4
	pfmul KP909631995KN909631995, %mm2
	movq %mm7, 0(%esp)
	pfmul KP989821441KN989821441, %mm4
	movq %mm0, 8(%esp)
	movq (%eax,%edx,4), %mm7
	movq %mm7, %mm0
	movq %mm3, 16(%esp)
	pfadd %mm5, %mm7
	movq %mm2, 24(%esp)
	movq (%eax), %mm3
	pfsub %mm5, %mm0
	movq %mm4, 32(%esp)
	movq %mm7, %mm2
	movq %mm7, %mm4
	movq %mm3, %mm5
	pfmul KP415415013KP415415013, %mm2
	pswapd %mm0, %mm0
	pfadd %mm7, %mm5
	pfmul KP959492973KP959492973, %mm4
	movq %mm5, 56(%esp)
	movq %mm3, %mm5
	pfadd %mm2, %mm5
	movq %mm3, %mm2
	pfsub %mm4, %mm2
	movq %mm7, %mm4
	pfmul KP142314838KP142314838, %mm4
	movq %mm2, 80(%esp)
	movq %mm3, %mm2
	pfsub %mm4, %mm2
	movq %mm7, %mm4
	pfmul KP841253532KP841253532, %mm7
	pfmul KP654860733KP654860733, %mm4
	movq %mm2, 88(%esp)
	movq %mm3, %mm2
	pfadd %mm7, %mm3
	movq %mm0, %mm7
	pfsub %mm4, %mm2
	movq %mm0, %mm4
	pfmul KP909631995KN909631995, %mm7
	pfmul KP281732556KN281732556, %mm4
	movq %mm3, 144(%esp)
	movq %mm0, %mm3
	movq %mm2, 160(%esp)
	movq %mm0, %mm2
	pfmul KP755749574KN755749574, %mm3
	pfmul KP540640817KN540640817, %mm0
	pfmul KP989821441KN989821441, %mm2
	movq %mm7, 128(%esp)
	movq (%eax,%esi,2), %mm7
	leal (%edx,%edx,8), %esi
	movq %mm4, 96(%esp)
	movq %mm3, 120(%esp)
	movq %mm0, 112(%esp)
	movq (%eax,%ebp), %mm4
	movq (%eax,%ebp,2), %mm0
	leal (%ebx,%ebx,2), %ebp
	movq %mm2, 104(%esp)
	movq %mm4, %mm3
	movq (%eax,%edx), %mm2
	pfadd %mm7, %mm4
	pfsub %mm7, %mm3
	movq %mm2, %mm7
	pfadd %mm0, %mm2
	pfsub %mm0, %mm7
	movq %mm3, 136(%esp)
	movq (%eax,%esi), %mm0
	movq (%eax,%edx,2), %mm3
	/* simd data load/store barrier */ 
	leal (%edi,%ebx,2), %esi
	addl 292(%esp), %eax
	movq %mm7, 152(%esp)
	movq %mm3, %mm7
	pfadd %mm0, %mm3
	pfsub %mm0, %mm7
	movq %mm3, %mm0
	pfmul KP841253532KP841253532, %mm0
	movq %mm7, 168(%esp)
	movq %mm2, %mm7
	pfmul KP415415013KP415415013, %mm7
	pfadd %mm0, %mm5
	movq %mm4, %mm0
	pfmul KP841253532KP841253532, %mm0
	pfadd %mm0, %mm7
	movq %mm2, %mm0
	pfmul KP654860733KP654860733, %mm0
	pfsub %mm1, %mm7
	movq %mm4, %mm1
	pfmul KP415415013KP415415013, %mm1
	pfsub %mm0, %mm1
	movq %mm4, %mm0
	pfmul KP654860733KP654860733, %mm0
	pfadd %mm6, %mm1
	movq %mm2, %mm6
	pfmul KP142314838KP142314838, %mm6
	pfadd %mm0, %mm6
	movq %mm2, %mm0
	pfadd %mm4, %mm0
	pfsubr 72(%esp), %mm6
	pfadd 64(%esp), %mm0
	movq %mm6, 176(%esp)
	movq %mm4, %mm6
	pfmul KP142314838KP142314838, %mm4
	movq %mm0, 184(%esp)
	movq %mm2, %mm0
	pfmul KP959492973KP959492973, %mm2
	pfmul KP959492973KP959492973, %mm6
	pfmul KP841253532KP841253532, %mm0
	pfadd %mm4, %mm2
	movq %mm3, %mm4
	pfmul KP142314838KP142314838, %mm4
	pfsub %mm6, %mm0
	movq %mm3, %mm6
	pfadd 40(%esp), %mm2
	pfmul KP415415013KP415415013, %mm6
	pfsub 48(%esp), %mm0
	pfsubr 80(%esp), %mm4
	pfsubr %mm5, %mm2
	movq %mm3, %mm5
	pfadd 160(%esp), %mm6
	pfmul KP654860733KP654860733, %mm5
	pfadd %mm4, %mm1
	movq %mm3, %mm4
	movq %mm2, 224(%esp)
	pfadd 56(%esp), %mm3
	movq 136(%esp), %mm2
	pfmul KP959492973KP959492973, %mm4
	pfadd %mm6, %mm0
	pfsubr 88(%esp), %mm5
	movq %mm1, 216(%esp)
	pswapd %mm2, %mm2
	movq %mm0, 200(%esp)
	pfadd 184(%esp), %mm3
	movq %mm2, %mm1
	movq %mm2, %mm6
	movq %mm2, %mm0
	pfsubr 144(%esp), %mm4
	pfmul KP909631995KN909631995, %mm1
	pfadd %mm5, %mm7
	movq %mm2, %mm5
	pfmul KP755749574KN755749574, %mm2
	pfmul KP989821441KN989821441, %mm6
	pfmul KP281732556KN281732556, %mm0
	movq %mm7, 208(%esp)
	movq %mm3, (%ecx)
	movq 152(%esp), %mm3
	pfadd 176(%esp), %mm4
	movq 168(%esp), %mm7
	pfmul KP540640817KN540640817, %mm5
	pfsub 24(%esp), %mm2
	pswapd %mm3, %mm3
	pfadd 8(%esp), %mm6
	pfadd 32(%esp), %mm0
	pswapd %mm7, %mm7
	pfsubr 0(%esp), %mm1
	movq %mm4, 192(%esp)
	movq %mm7, %mm4
	pfadd 16(%esp), %mm5
	movq %mm2, 232(%esp)
	movq %mm3, %mm2
	pfmul KP540640817KN540640817, %mm4
	pfmul KP281732556KN281732556, %mm2
	pfsub %mm4, %mm2
	movq %mm3, %mm4
	pfmul KP540640817KN540640817, %mm4
	pfsub 128(%esp), %mm2
	pfadd %mm6, %mm2
	movq %mm7, %mm6
	pfmul KP909631995KN909631995, %mm6
	pfadd %mm6, %mm4
	movq %mm3, %mm6
	pfmul KP909631995KN909631995, %mm6
	pfadd 120(%esp), %mm4
	pfadd %mm0, %mm4
	movq %mm7, %mm0
	pfmul KP755749574KN755749574, %mm0
	pfadd %mm0, %mm6
	movq %mm3, %mm0
	pfmul KP755749574KN755749574, %mm3
	pfmul KP989821441KN989821441, %mm0
	pfsub 104(%esp), %mm6
	pfsub %mm5, %mm6
	movq %mm7, %mm5
	pfmul KP989821441KN989821441, %mm7
	pfmul KP281732556KN281732556, %mm5
	pfsub %mm7, %mm3
	pfsub %mm5, %mm0
	movq 224(%esp), %mm5
	pfadd 96(%esp), %mm3
	movq %mm5, %mm7
	pfadd 112(%esp), %mm0
	pfsub %mm2, %mm5
	pfadd %mm2, %mm7
	pfadd %mm1, %mm3
	movq 216(%esp), %mm1
	movq %mm5, (%ecx,%ebp,2)
	leal (%ebx,%ebx,4), %ebp
	pfadd 232(%esp), %mm0
	movq %mm7, (%ecx,%edi)
	leal (%ebx,%ebx,8), %edi
	movq 208(%esp), %mm7
	movq %mm1, %mm2
	pfsub %mm3, %mm1
	pfadd %mm3, %mm2
	movq 200(%esp), %mm3
	movq %mm1, (%ecx,%esi)
	movq %mm7, %mm1
	pfsub %mm6, %mm7
	leal (%ebx,%ebx,2), %esi
	movq %mm2, (%ecx,%ebx,4)
	movq 192(%esp), %mm2
	movq %mm3, %mm5
	pfsub %mm4, %mm3
	pfadd %mm4, %mm5
	movq %mm7, (%ecx,%edi)
	pfadd %mm6, %mm1
	movq %mm2, %mm4
	pfsub %mm0, %mm2
	movq %mm3, (%ecx,%ebp,2)
	pfadd %mm0, %mm4
	movq %mm5, (%ecx,%ebx)
	movq %mm1, (%ecx,%ebx,2)
	movq %mm2, (%ecx,%ebx,8)
	movq %mm4, (%ecx,%esi)
	addl 296(%esp), %ecx
	decl 288(%esp)
	jnz .L0
	femms 
	movl 256(%esp), %ebx
	movl 252(%esp), %esi
	movl 248(%esp), %edi
	movl 244(%esp), %ebp
	addl $260, %esp
	ret 

.section .rodata
nam:
	.string "n1k7_11"
	.align 4
desc:
	.long 11
	.long nam
	.double 70
	.double 50
	.double 0
	.double 0
	.long fftwf_kdft_k7_mgenus
	.long 0
	.long 0
	.long 0
	.long 0

.text
	.align 4
.globl fftwf_codelet_n1k7_11
fftwf_codelet_n1k7_11:
	subl $12,%esp
	addl $-4,%esp
	pushl $desc
	pushl $n1k7_11
	pushl 28(%esp)
	call fftwf_kdft_register
	addl $16,%esp
	addl $12,%esp
	ret


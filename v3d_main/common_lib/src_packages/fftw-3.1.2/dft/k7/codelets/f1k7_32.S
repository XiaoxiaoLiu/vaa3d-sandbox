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
/* Generated on Sat Jul  1 22:50:10 EDT 2006 */

#include "config.h"



/* cheap-mode: VECTGRADE_FULL succeeded. (1080 steps) */
/* Generated by: ../../../genfft-k7/gen_twiddle -no-randomized-cse -dif -n 32 -name f1k7_32 */

/*
 * Generator Id's : 
 * $Id: algsimp.ml,v 1.4 2006-01-05 03:04:27 stevenj Exp $
 * $Id: fft.ml,v 1.4 2006-01-05 03:04:27 stevenj Exp $
 * $Id: gen_twiddle.ml,v 1.14 2005-12-24 21:08:49 athena Exp $
 */

/* The following asm code is Copyright (c) 2000-2001 Stefan Kral */
.section .rodata
	.balign 64
chs_lo: .long 0x80000000, 0x00000000
chs_hi: .long 0x00000000, 0x80000000
KP707106781KP707106781: .float +0.707106781186547524400844362104849039284835938, +0.707106781186547524400844362104849039284835938
KP382683432KP923879532: .float +0.382683432365089771728459984030398866761344562, +0.923879532511286756128183189396788286822416626
KP923879532KP382683432: .float +0.923879532511286756128183189396788286822416626, +0.382683432365089771728459984030398866761344562
KP555570233KP831469612: .float +0.555570233019602224742830813948532874374937191, +0.831469612302545237078788377617905756738560812
KP980785280KP195090322: .float +0.980785280403230449126182236134239036973933731, +0.195090322016128267848284868477022240927691618
KP831469612KP555570233: .float +0.831469612302545237078788377617905756738560812, +0.555570233019602224742830813948532874374937191
KP195090322KP980785280: .float +0.195090322016128267848284868477022240927691618, +0.980785280403230449126182236134239036973933731
.text
.text
	.balign 64
f1k7_32:
	subl $716, %esp
	femms 
	movl 732(%esp), %edx
	movl 720(%esp), %ecx
	movl %ebx, 712(%esp)
	movl 728(%esp), %eax
	movl %esi, 708(%esp)
	movl %edi, 704(%esp)
	leal (,%edx,4), %edx
	movl %ebp, 700(%esp)
	movl %edx, %ebx
	sall $4, %ebx
	addl %ecx, %ebx
	sall $2, 740(%esp)
	.p2align 4,,7
.L0:
	/* promise simd cell size = 8 */ 
	movq (%ecx), %mm1
	movq (%ebx), %mm0
	movq (%ebx,%edx,8), %mm3
	movq (%ecx,%edx,8), %mm4
	leal (%edx,%edx,2), %esi
	movq (%ebx,%esi,4), %mm7
	movq (%ecx,%esi,4), %mm6
	leal (%esi,%edx,8), %edi
	movq %mm1, %mm2
	pfadd %mm0, %mm1
	movq %mm4, %mm5
	pfsub %mm3, %mm4
	leal (%edi,%edx,4), %ebp
	pfsub %mm0, %mm2
	pfadd %mm3, %mm5
	movq %mm7, %mm0
	movq %mm1, %mm3
	pfsub %mm6, %mm7
	movq %mm4, 24(%esp)
	movq (%ebx,%edx,4), %mm4
	pfadd %mm6, %mm0
	movq %mm2, 0(%esp)
	movq (%ecx,%edx,4), %mm2
	pfsub %mm5, %mm1
	pfadd %mm5, %mm3
	movq %mm2, %mm5
	pfadd %mm4, %mm2
	movq %mm1, 32(%esp)
	movq (%ecx,%edi), %mm1
	pfsub %mm4, %mm5
	movq %mm7, %mm4
	movq %mm3, 64(%esp)
	movq (%ebx,%edi), %mm3
	leal (%esi,%edx,4), %edi
	movq %mm2, %mm6
	pfadd %mm0, %mm2
	pfpnacc %mm5, %mm4
	pswapd %mm5, %mm5
	pfsub %mm0, %mm6
	movq %mm3, %mm0
	movq %mm2, 56(%esp)
	movq (%ebx,%ebp), %mm2
	pfpnacc %mm7, %mm5
	movq (%ecx,%ebp), %mm7
	pfadd %mm1, %mm3
	movq %mm4, 8(%esp)
	movq (%ecx,%esi), %mm4
	pfsub %mm1, %mm0
	movq %mm6, 48(%esp)
	movq (%ebx,%esi), %mm6
	movq %mm2, %mm1
	movq %mm5, 16(%esp)
	pfsub %mm7, %mm2
	movq %mm4, %mm5
	pfadd %mm7, %mm1
	movq (%ecx,%edi), %mm7
	pfadd %mm6, %mm4
	pfsub %mm6, %mm5
	movq %mm2, 40(%esp)
	movq (%ebx,%edi), %mm6
	movq %mm7, %mm2
	pfadd %mm6, %mm7
	pfsub %mm6, %mm2
	movq %mm0, %mm6
	pfpnacc %mm5, %mm6
	pswapd %mm5, %mm5
	pfpnacc %mm0, %mm5
	movq %mm1, %mm0
	movq %mm2, 88(%esp)
	pfadd %mm7, %mm1
	movq %mm4, %mm2
	pfadd %mm3, %mm4
	movq %mm6, 72(%esp)
	pfsub %mm7, %mm0
	movq %mm5, 80(%esp)
	movq (%ebx,%esi,2), %mm7
	movq (%ecx,%esi,2), %mm5
	pfsub %mm3, %mm2
	movq %mm1, %mm6
	leal (%edx,%edx,4), %esi
	pfsub %mm4, %mm1
	pfadd %mm4, %mm6
	movq %mm0, 112(%esp)
	movq (%ecx,%edx,2), %mm4
	movq (%ebx,%edx,2), %mm0
	movq %mm5, %mm3
	pfsub %mm7, %mm5
	movq %mm2, 128(%esp)
	leal (%esi,%edx,8), %ebp
	pfadd %mm7, %mm3
	movq %mm1, 96(%esp)
	movq (%ebx,%edi,2), %mm7
	movq %mm4, %mm2
	movq %mm6, 184(%esp)
	movq (%ecx,%edi,2), %mm1
	pfadd %mm0, %mm4
	movq %mm5, 104(%esp)
	movq (%ebx,%esi,2), %mm5
	pfsub %mm0, %mm2
	movq (%ecx,%esi,2), %mm0
	leal (%edx,%edx,8), %edi
	movq %mm7, %mm6
	pfsub %mm1, %mm7
	pfadd %mm1, %mm6
	movq %mm0, %mm1
	pfadd %mm5, %mm0
	pswapd %mm2, %mm2
	pfsub %mm5, %mm1
	movq %mm7, 120(%esp)
	movq %mm4, %mm7
	movq %mm6, %mm5
	pfadd %mm3, %mm6
	pfadd %mm0, %mm4
	pfsub %mm0, %mm7
	pfsub %mm3, %mm5
	pxor chs_lo, %mm1
	movq %mm2, %mm3
	movq %mm4, %mm0
	pfadd %mm6, %mm4
	movq %mm7, 144(%esp)
	movq %mm5, 136(%esp)
	movq (%ecx,%ebp), %mm7
	movq (%ebx,%ebp), %mm5
	pfadd %mm1, %mm2
	pfsub %mm6, %mm0
	movq %mm4, 168(%esp)
	movq (%ebx,%edx), %mm6
	movq (%ecx,%edx), %mm4
	pfsub %mm1, %mm3
	movq %mm5, %mm1
	pfsub %mm7, %mm5
	movq %mm2, 160(%esp)
	movq %mm0, 176(%esp)
	movq (%ecx,%edi), %mm0
	movq %mm4, %mm2
	movq %mm3, 152(%esp)
	pfadd %mm6, %mm4
	movq (%ebx,%edi), %mm3
	pfadd %mm7, %mm1
	pfsub %mm6, %mm2
	movq %mm5, 192(%esp)
	movq (%ebx,%esi), %mm6
	movq (%ecx,%esi), %mm5
	movq %mm0, %mm7
	leal (%edx,%edx,2), %esi
	pfadd %mm3, %mm0
	leal (%edx,%esi,2), %ebp
	pfsub %mm3, %mm7
	pswapd %mm2, %mm2
	movq %mm5, %mm3
	pfadd %mm6, %mm5
	leal (%ebp,%edx,4), %edi
	pfsub %mm6, %mm3
	movq %mm4, %mm6
	leal (%edi,%edx,4), %esi
	pfadd %mm0, %mm4
	pxor chs_lo, %mm7
	pfsub %mm0, %mm6
	movq %mm5, %mm0
	pfsubr %mm1, %mm5
	pfadd %mm1, %mm0
	movq %mm4, %mm1
	pswapd %mm6, %mm6
	pxor chs_hi, %mm5
	pfsub %mm0, %mm1
	pfadd %mm0, %mm4
	movq %mm2, %mm0
	pfsub %mm7, %mm2
	pfadd %mm7, %mm0
	movq %mm2, 200(%esp)
	movq 192(%esp), %mm7
	pswapd %mm3, %mm2
	movq %mm0, 232(%esp)
	pfpnacc %mm7, %mm2
	pfpnacc %mm3, %mm7
	movq 184(%esp), %mm3
	movq %mm2, %mm0
	pfacc %mm7, %mm2
	pfnacc %mm0, %mm7
	movq %mm4, %mm0
	pfsub %mm3, %mm4
	pfadd %mm3, %mm0
	movq 64(%esp), %mm3
	pfmul KP707106781KP707106781, %mm2
	pfmul KP707106781KP707106781, %mm7
	movq %mm4, 216(%esp)
	movq %mm2, 224(%esp)
	movq 56(%esp), %mm4
	movq %mm3, %mm2
	pfsub %mm4, %mm3
	movq %mm7, 208(%esp)
	movq 176(%esp), %mm7
	pfadd %mm4, %mm2
	movq %mm3, %mm4
	pswapd %mm7, %mm7
	pxor chs_hi, %mm7
	pfsub %mm7, %mm3
	pfadd %mm7, %mm4
	movq %mm3, 240(%esp)
	movq 168(%esp), %mm7
	movq %mm2, %mm3
	pfadd %mm7, %mm2
	movq %mm4, 288(%esp)
	pfsub %mm7, %mm3
	movq 32(%esp), %mm7
	movq %mm2, %mm4
	pfsub %mm0, %mm2
	movq %mm3, 280(%esp)
	movq 48(%esp), %mm3
	pfadd %mm0, %mm4
	movq %mm7, %mm0
	movq %mm2, 256(%esp)
	movq 128(%esp), %mm2
	pswapd %mm3, %mm3
	movq %mm4, 248(%esp)
	movq %mm6, %mm4
	pfadd %mm5, %mm6
	pxor chs_hi, %mm3
	pswapd %mm2, %mm2
	pfsub %mm5, %mm4
	pxor chs_hi, %mm2
	movq %mm6, %mm5
	pfmul KP382683432KP923879532, %mm6
	pfadd %mm3, %mm7
	pfsub %mm3, %mm0
	movq 112(%esp), %mm3
	pfmul KP923879532KP382683432, %mm5
	movq %mm7, 272(%esp)
	movq %mm3, %mm7
	pfadd %mm2, %mm3
	movq %mm0, 264(%esp)
	movq %mm4, %mm0
	pfmul KP923879532KP382683432, %mm4
	pfsub %mm2, %mm7
	pfmul KP382683432KP923879532, %mm0
	movq %mm3, %mm2
	pfmul KP923879532KP382683432, %mm3
	pfmul KP382683432KP923879532, %mm2
	pfpnacc %mm6, %mm3
	movq %mm7, %mm6
	pfmul KP382683432KP923879532, %mm7
	pfmul KP923879532KP382683432, %mm6
	pfpnacc %mm2, %mm5
	movq %mm3, 336(%esp)
	movq %mm5, 328(%esp)
	movq 160(%esp), %mm2
	movq 120(%esp), %mm5
	pfpnacc %mm4, %mm7
	movq %mm2, %mm3
	pfmul KP923879532KP382683432, %mm2
	pfpnacc %mm6, %mm0
	movq 104(%esp), %mm6
	pfmul KP382683432KP923879532, %mm3
	movq %mm5, %mm4
	movq %mm7, 304(%esp)
	pswapd %mm6, %mm6
	movq %mm0, 296(%esp)
	pxor chs_lo, %mm6
	pfsub %mm6, %mm5
	pfadd %mm6, %mm4
	movq 152(%esp), %mm6
	movq %mm5, %mm0
	pfmul KP382683432KP923879532, %mm5
	movq %mm4, %mm7
	pfmul KP923879532KP382683432, %mm4
	pfmul KP923879532KP382683432, %mm0
	pfmul KP382683432KP923879532, %mm7
	pfpnacc %mm5, %mm2
	movq %mm6, %mm5
	pfmul KP923879532KP382683432, %mm6
	pfpnacc %mm3, %mm0
	pfmul KP382683432KP923879532, %mm5
	movq %mm0, %mm3
	pfpnacc %mm6, %mm7
	pfacc %mm2, %mm0
	pfnacc %mm3, %mm2
	movq 96(%esp), %mm3
	pfpnacc %mm4, %mm5
	movq %mm7, %mm6
	movq %mm0, 312(%esp)
	movq %mm3, %mm4
	movq %mm2, 320(%esp)
	movq 224(%esp), %mm2
	pfacc %mm5, %mm7
	pfnacc %mm6, %mm5
	movq 232(%esp), %mm6
	pfpnacc %mm1, %mm4
	pswapd %mm1, %mm1
	pfpnacc %mm3, %mm1
	movq %mm7, 352(%esp)
	movq %mm6, %mm3
	pfsub %mm2, %mm6
	movq %mm5, 360(%esp)
	movq %mm4, %mm0
	pfadd %mm2, %mm3
	movq 24(%esp), %mm2
	pfacc %mm1, %mm4
	pfnacc %mm0, %mm1
	movq %mm6, %mm7
	pfmul KP555570233KP831469612, %mm6
	movq 0(%esp), %mm0
	movq %mm3, %mm5
	pfmul KP980785280KP195090322, %mm3
	pswapd %mm2, %mm2
	pfmul KP707106781KP707106781, %mm4
	pswapd %mm7, %mm7
	pfmul KP707106781KP707106781, %mm1
	pxor chs_lo, %mm2
	pswapd %mm5, %mm5
	pfmul KP555570233KP831469612, %mm7
	movq %mm6, 376(%esp)
	movq 16(%esp), %mm6
	pfmul KP980785280KP195090322, %mm5
	movq %mm3, 440(%esp)
	movq %mm4, 368(%esp)
	movq %mm0, %mm4
	pfsub %mm2, %mm0
	movq %mm1, 344(%esp)
	movq 8(%esp), %mm1
	movq %mm6, %mm3
	pfadd %mm2, %mm4
	movq %mm7, 432(%esp)
	movq %mm5, 448(%esp)
	movq %mm0, %mm7
	movq 144(%esp), %mm5
	pfnacc %mm1, %mm6
	pfacc %mm3, %mm1
	movq 136(%esp), %mm3
	movq %mm4, %mm2
	pfmul KP707106781KP707106781, %mm6
	pfmul KP707106781KP707106781, %mm1
	pfadd %mm6, %mm4
	pfsub %mm6, %mm2
	movq %mm3, %mm6
	pfsub %mm1, %mm7
	pfpnacc %mm5, %mm6
	pswapd %mm5, %mm5
	pfadd %mm1, %mm0
	movq %mm4, 400(%esp)
	movq %mm2, 424(%esp)
	movq 80(%esp), %mm4
	pfpnacc %mm3, %mm5
	movq %mm7, 392(%esp)
	movq 72(%esp), %mm2
	movq 88(%esp), %mm7
	movq 40(%esp), %mm3
	movq %mm6, %mm1
	movq %mm0, 384(%esp)
	movq %mm4, %mm0
	pfacc %mm5, %mm6
	pfnacc %mm2, %mm4
	pswapd %mm7, %mm7
	pfnacc %mm1, %mm5
	movq %mm3, %mm1
	pxor chs_lo, %mm7
	pfacc %mm0, %mm2
	movq 208(%esp), %mm0
	pfmul KP707106781KP707106781, %mm6
	pfmul KP707106781KP707106781, %mm4
	pfmul KP707106781KP707106781, %mm5
	pfsub %mm7, %mm3
	pfmul KP707106781KP707106781, %mm2
	pfadd %mm7, %mm1
	movq %mm6, 416(%esp)
	movq %mm3, 456(%esp)
	movq 200(%esp), %mm7
	movq %mm7, %mm3
	movq %mm1, %mm6
	pfadd %mm0, %mm7
	pfadd %mm4, %mm1
	movq %mm5, 408(%esp)
	pfsub %mm0, %mm3
	pfsub %mm4, %mm6
	movq %mm7, %mm5
	pfmul KP831469612KP555570233, %mm7
	movq %mm1, %mm0
	pfmul KP555570233KP831469612, %mm1
	pfmul KP555570233KP831469612, %mm5
	movq %mm3, %mm4
	pfmul KP831469612KP555570233, %mm0
	pfmul KP980785280KP195090322, %mm4
	pfmul KP195090322KP980785280, %mm3
	pfpnacc %mm1, %mm7
	movq 456(%esp), %mm1
	pfpnacc %mm5, %mm0
	movq %mm6, %mm5
	pfmul KP980785280KP195090322, %mm6
	pfmul KP195090322KP980785280, %mm5
	pfpnacc %mm6, %mm3
	pfpnacc %mm4, %mm5
	movq %mm1, %mm4
	pfadd %mm2, %mm1
	pfsub %mm2, %mm4
	movq 440(%esp), %mm2
	movq %mm1, %mm6
	pfmul KP980785280KP195090322, %mm1
	pfmul KP195090322KP980785280, %mm6
	pfpnacc 448(%esp), %mm1
	pfpnacc %mm6, %mm2
	movq %mm4, %mm6
	pfmul KP555570233KP831469612, %mm4
	pfmul KP831469612KP555570233, %mm6
	movq %mm2, 464(%esp)
	movq %mm1, 472(%esp)
	movq 376(%esp), %mm2
	movq 288(%esp), %mm1
	pfpnacc 432(%esp), %mm4
	pfpnacc %mm6, %mm2
	movq %mm2, 480(%esp)
	movq 368(%esp), %mm6
	movq %mm1, %mm2
	pfadd %mm6, %mm1
	movq %mm4, 488(%esp)
	movq 24(%eax), %mm4
	pfsub %mm6, %mm2
	pswapd %mm1, %mm6
	pfmul %mm4, %mm1
	pfmul %mm4, %mm6
	movq 152(%eax), %mm4
	pfpnacc %mm1, %mm6
	pswapd %mm2, %mm1
	pfmul %mm4, %mm2
	pfmul %mm4, %mm1
	movq %mm6, 504(%esp)
	movq 424(%esp), %mm4
	movq 360(%esp), %mm6
	pfpnacc %mm2, %mm1
	movq %mm4, %mm2
	pfadd %mm6, %mm4
	pfsub %mm6, %mm2
	movq %mm5, %mm6
	pfacc %mm3, %mm5
	movq %mm1, 496(%esp)
	pfnacc %mm6, %mm3
	movq 48(%eax), %mm6
	movq %mm4, %mm1
	pfadd %mm5, %mm4
	pfsub %mm5, %mm1
	pswapd %mm4, %mm5
	pfmul %mm6, %mm4
	pfmul %mm6, %mm5
	movq 176(%eax), %mm6
	pfpnacc %mm4, %mm5
	pswapd %mm1, %mm4
	pfmul %mm6, %mm1
	pfmul %mm6, %mm4
	movq %mm2, %mm6
	pfsub %mm3, %mm2
	pfadd %mm3, %mm6
	movq %mm5, 584(%esp)
	movq 112(%eax), %mm3
	pfpnacc %mm1, %mm4
	movq 240(%eax), %mm1
	pswapd %mm6, %mm5
	pfmul %mm3, %mm6
	movq %mm4, 512(%esp)
	movq 216(%esp), %mm4
	pfmul %mm3, %mm5
	pswapd %mm2, %mm3
	pfmul %mm1, %mm2
	pfmul %mm1, %mm3
	movq 280(%esp), %mm1
	pswapd %mm4, %mm4
	pfpnacc %mm6, %mm5
	pxor chs_hi, %mm4
	movq %mm1, %mm6
	pfpnacc %mm2, %mm3
	movq %mm5, 520(%esp)
	movq 184(%eax), %mm2
	pfsub %mm4, %mm1
	pfadd %mm4, %mm6
	movq %mm3, 608(%esp)
	movq 56(%eax), %mm3
	pswapd %mm1, %mm5
	pfmul %mm2, %mm1
	pswapd %mm6, %mm4
	pfmul %mm3, %mm6
	pfmul %mm2, %mm5
	movq 256(%esp), %mm2
	pfmul %mm3, %mm4
	movq 120(%eax), %mm3
	pfpnacc %mm1, %mm5
	pswapd %mm2, %mm1
	pfmul %mm3, %mm2
	pfpnacc %mm6, %mm4
	movq %mm0, %mm6
	pfmul %mm3, %mm1
	movq 400(%esp), %mm3
	pfacc %mm7, %mm0
	pfnacc %mm6, %mm7
	movq %mm5, 528(%esp)
	movq %mm4, 536(%esp)
	movq 352(%esp), %mm5
	movq %mm3, %mm6
	pfpnacc %mm2, %mm1
	movq 144(%eax), %mm2
	pfadd %mm5, %mm3
	pfsub %mm5, %mm6
	movq %mm1, 544(%esp)
	movq 16(%eax), %mm1
	movq %mm3, %mm4
	pfsub %mm0, %mm3
	pfadd %mm0, %mm4
	pswapd %mm3, %mm5
	pfmul %mm2, %mm3
	pfmul %mm2, %mm5
	movq %mm6, %mm2
	pswapd %mm4, %mm0
	pfadd %mm7, %mm6
	pfmul %mm1, %mm4
	pfsub %mm7, %mm2
	pfmul %mm1, %mm0
	movq 208(%eax), %mm1
	pfpnacc %mm3, %mm5
	movq 80(%eax), %mm3
	pswapd %mm2, %mm7
	pfpnacc %mm4, %mm0
	pfmul %mm1, %mm2
	pswapd %mm6, %mm4
	pfmul %mm1, %mm7
	movq %mm5, 592(%esp)
	movq 344(%esp), %mm1
	pfmul %mm3, %mm6
	movq 240(%esp), %mm5
	pfmul %mm3, %mm4
	movq %mm0, 552(%esp)
	movq 88(%eax), %mm3
	pfpnacc %mm2, %mm7
	movq %mm5, %mm0
	pfadd %mm1, %mm5
	pfpnacc %mm6, %mm4
	movq 216(%eax), %mm6
	pfsub %mm1, %mm0
	movq %mm7, 560(%esp)
	movq 336(%esp), %mm7
	pswapd %mm5, %mm2
	pfmul %mm3, %mm5
	movq %mm4, 616(%esp)
	movq 328(%esp), %mm4
	pfmul %mm3, %mm2
	pswapd %mm0, %mm1
	movq %mm7, %mm3
	pfmul %mm6, %mm0
	pfmul %mm6, %mm1
	movq 272(%esp), %mm6
	pfacc %mm4, %mm7
	pfnacc %mm3, %mm4
	movq 416(%esp), %mm3
	pfpnacc %mm5, %mm2
	movq %mm6, %mm5
	pfpnacc %mm0, %mm1
	pfadd %mm3, %mm6
	movq %mm2, 568(%esp)
	movq 136(%eax), %mm2
	pfsub %mm3, %mm5
	movq %mm1, 576(%esp)
	movq 8(%eax), %mm1
	movq %mm6, %mm0
	pfsub %mm7, %mm6
	pfadd %mm7, %mm0
	pswapd %mm6, %mm3
	pfmul %mm2, %mm6
	pfmul %mm2, %mm3
	pswapd %mm0, %mm7
	movq 392(%esp), %mm2
	pfmul %mm1, %mm0
	pfmul %mm1, %mm7
	movq 320(%esp), %mm1
	pfpnacc %mm6, %mm3
	movq %mm2, %mm6
	pfpnacc %mm0, %mm7
	movq 488(%esp), %mm0
	pfadd %mm1, %mm2
	movq %mm3, 600(%esp)
	movq 480(%esp), %mm3
	pfsub %mm1, %mm6
	movq %mm0, %mm1
	movq %mm7, 624(%esp)
	movq %mm2, %mm7
	pfacc %mm3, %mm0
	pfnacc %mm1, %mm3
	movq 32(%eax), %mm1
	pfadd %mm0, %mm2
	pfsub %mm0, %mm7
	pswapd %mm2, %mm0
	pfmul %mm1, %mm2
	pfmul %mm1, %mm0
	movq 160(%eax), %mm1
	pfpnacc %mm2, %mm0
	pswapd %mm7, %mm2
	pfmul %mm1, %mm7
	pfmul %mm1, %mm2
	movq %mm6, %mm1
	pfadd %mm3, %mm6
	movq %mm0, 632(%esp)
	movq 96(%eax), %mm0
	pfsub %mm3, %mm1
	pfpnacc %mm7, %mm2
	pswapd %mm6, %mm3
	movq %mm5, %mm7
	pfsub %mm4, %mm5
	pfmul %mm0, %mm6
	pfadd %mm4, %mm7
	movq 200(%eax), %mm4
	pfmul %mm0, %mm3
	movq %mm2, 648(%esp)
	movq 224(%eax), %mm0
	pswapd %mm1, %mm2
	pfmul %mm0, %mm1
	pfpnacc %mm6, %mm3
	movq 72(%eax), %mm6
	pfmul %mm0, %mm2
	pswapd %mm5, %mm0
	pfmul %mm4, %mm5
	pfmul %mm4, %mm0
	movq %mm3, 640(%esp)
	movq 384(%esp), %mm4
	movq 312(%esp), %mm3
	pfpnacc %mm1, %mm2
	pswapd %mm7, %mm1
	pfmul %mm6, %mm7
	pfmul %mm6, %mm1
	pfpnacc %mm5, %mm0
	movq 464(%esp), %mm5
	movq %mm4, %mm6
	pfadd %mm3, %mm4
	movq %mm2, 656(%esp)
	movq 472(%esp), %mm2
	pfsub %mm3, %mm6
	pfpnacc %mm7, %mm1
	pswapd %mm0, %mm0
	movq %mm4, %mm3
	movq %mm2, %mm7
	pfacc %mm5, %mm2
	pfnacc %mm7, %mm5
	movq (%eax), %mm7
	pswapd %mm1, %mm1
	pfadd %mm2, %mm4
	pfsub %mm2, %mm3
	pswapd %mm4, %mm2
	pfmul %mm7, %mm4
	pfmul %mm7, %mm2
	movq 128(%eax), %mm7
	pfpnacc %mm4, %mm2
	pswapd %mm3, %mm4
	pfmul %mm7, %mm3
	pfmul %mm7, %mm4
	movq %mm6, %mm7
	pfsub %mm5, %mm6
	movq %mm2, 688(%esp)
	movq 192(%eax), %mm2
	pfadd %mm5, %mm7
	pswapd %mm6, %mm5
	pfpnacc %mm3, %mm4
	movq 64(%eax), %mm3
	pfmul %mm2, %mm6
	pfmul %mm2, %mm5
	pswapd %mm7, %mm2
	pfmul %mm3, %mm7
	movq %mm4, 680(%esp)
	movq 264(%esp), %mm4
	pfmul %mm3, %mm2
	movq 408(%esp), %mm3
	pfpnacc %mm6, %mm5
	movq %mm4, %mm6
	pfpnacc %mm7, %mm2
	movq 304(%esp), %mm7
	pfadd %mm3, %mm4
	movq %mm5, 664(%esp)
	movq 296(%esp), %mm5
	pfsub %mm3, %mm6
	movq %mm7, %mm3
	movq %mm2, 672(%esp)
	movq %mm4, %mm2
	pfacc %mm5, %mm7
	pfnacc %mm3, %mm5
	movq 40(%eax), %mm3
	pfadd %mm7, %mm4
	pfsub %mm7, %mm2
	pswapd %mm4, %mm7
	pfmul %mm3, %mm4
	pfmul %mm3, %mm7
	movq 168(%eax), %mm3
	pfpnacc %mm4, %mm7
	pswapd %mm2, %mm4
	pfmul %mm3, %mm2
	pfmul %mm3, %mm4
	movq %mm6, %mm3
	pfadd %mm5, %mm6
	pfsub %mm5, %mm3
	movq 104(%eax), %mm5
	pswapd %mm7, %mm7
	pfpnacc %mm2, %mm4
	pswapd %mm6, %mm2
	pfmul %mm5, %mm6
	pfmul %mm5, %mm2
	movq 248(%esp), %mm5
	pswapd %mm4, %mm4
	pfpnacc %mm6, %mm2
	movq 232(%eax), %mm6
	/* simd data load/store barrier */ 
	movq %mm5, (%ecx)
	pswapd %mm3, %mm5
	addl $248, %eax
	pfmul %mm6, %mm3
	pswapd %mm2, %mm2
	pfmul %mm6, %mm5
	movq 624(%esp), %mm6
	movq %mm2, (%ecx,%ebp,2)
	movq 608(%esp), %mm2
	pswapd %mm6, %mm6
	pfpnacc %mm3, %mm5
	movq 616(%esp), %mm3
	pswapd %mm2, %mm2
	movq %mm6, (%ecx,%edx,2)
	movq 600(%esp), %mm6
	movq %mm2, (%ebx,%esi)
	movq 592(%esp), %mm2
	pswapd %mm3, %mm3
	pswapd %mm5, %mm5
	pswapd %mm6, %mm6
	movq %mm3, (%ecx,%edi)
	leal (%edx,%edx,4), %edi
	movq 584(%esp), %mm3
	movq %mm5, (%ebx,%ebp,2)
	pswapd %mm2, %mm2
	movq 520(%esp), %mm5
	movq %mm6, (%ebx,%edx,2)
	leal (%edx,%edx,2), %ebp
	movq 512(%esp), %mm6
	movq %mm1, (%ecx,%edi,2)
	leal (%edi,%edx,2), %esi
	movq 560(%esp), %mm1
	leal (%edx,%edx,2), %edi
	movq %mm7, (%ecx,%ebp,2)
	movq %mm2, (%ebx,%ebp)
	pswapd %mm3, %mm3
	leal (%esi,%edx,8), %ebp
	pswapd %mm5, %mm5
	movq 656(%esp), %mm7
	movq 544(%esp), %mm2
	pswapd %mm6, %mm6
	movq %mm3, (%ecx,%esi)
	movq 536(%esp), %mm3
	movq %mm5, (%ecx,%ebp)
	pswapd %mm1, %mm1
	leal (%edi,%edx,8), %ebp
	movq %mm6, (%ebx,%esi)
	leal (%edx,%edx,4), %esi
	movq 688(%esp), %mm5
	movq 680(%esp), %mm6
	movq %mm4, (%ebx,%edi,2)
	pswapd %mm7, %mm7
	movq 576(%esp), %mm4
	movq %mm1, (%ebx,%ebp)
	leal (%ebp,%edx,2), %edi
	movq 552(%esp), %mm1
	movq %mm0, (%ebx,%esi,2)
	pswapd %mm2, %mm2
	movq 672(%esp), %mm0
	pswapd %mm3, %mm3
	leal (%edx,%edx,8), %ebp
	leal (%edx,%edx,2), %esi
	movq %mm7, (%ebx,%edi)
	pswapd %mm5, %mm5
	pswapd %mm6, %mm6
	movq 568(%esp), %mm7
	pswapd %mm4, %mm4
	pswapd %mm1, %mm1
	movq %mm2, (%ebx)
	movq 648(%esp), %mm2
	pswapd %mm0, %mm0
	movq %mm3, (%ecx,%edx,8)
	movq 664(%esp), %mm3
	movq %mm5, (%ecx,%edx)
	movq 504(%esp), %mm5
	leal (%edx,%edx,4), %edi
	movq %mm6, (%ebx,%edx)
	movq 496(%esp), %mm6
	pswapd %mm7, %mm7
	movq %mm4, (%ebx,%esi,4)
	movq 528(%esp), %mm4
	pswapd %mm2, %mm2
	movq %mm1, (%ecx,%esi)
	movq 640(%esp), %mm1
	pswapd %mm3, %mm3
	movq %mm0, (%ecx,%ebp)
	movq 632(%esp), %mm0
	pswapd %mm5, %mm5
	movq %mm7, (%ecx,%esi,4)
	pswapd %mm6, %mm6
	leal (%ebp,%edx,4), %esi
	pswapd %mm4, %mm4
	movq %mm2, (%ebx,%edi)
	pswapd %mm1, %mm1
	movq %mm3, (%ebx,%ebp)
	pswapd %mm0, %mm0
	movq %mm5, (%ecx,%edx,4)
	movq %mm6, (%ebx,%edx,4)
	movq %mm4, (%ebx,%edx,8)
	movq %mm1, (%ecx,%esi)
	movq %mm0, (%ecx,%edi)
	addl 740(%esp), %ecx
	addl 740(%esp), %ebx
	decl 736(%esp)
	jnz .L0
	femms 
	movl 712(%esp), %ebx
	movl 708(%esp), %esi
	movl 704(%esp), %edi
	movl 700(%esp), %ebp
	addl $716, %esp
	ret 

.section .rodata
nam:
	.string "f1k7_32"
	.align 4
twinstr:
	.byte 4
	.byte 0
	.value 32
	.byte 3
	.byte 1
	.value 0
	.align 4
desc:
	.long 32
	.long nam
	.long twinstr
	.long fftwf_kdft_ct_k7_mgenus
	.double 217
	.double 104
	.double 0
	.double 0
	.long 0
	.long 0
	.long 0

.text
	.align 4
.globl fftwf_codelet_f1k7_32
fftwf_codelet_f1k7_32:
	subl $12,%esp
	movl 16(%esp),%eax
	addl $-4,%esp
	pushl $desc
	pushl $f1k7_32
	pushl %eax
	call fftwf_kdft_dif_register
	addl $16,%esp
	addl $12,%esp
	ret


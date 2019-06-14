;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:05 2019



	MODULE	m32_roundf_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_roundf flags 0x00000208 __smallc __z88dk_fastcall 
; double m32_roundf(double x)
; parameter 'double x' at 2 size(4)
._m32_roundf
	push	de
	push	hl
	ld	hl,65524	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,8	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,10	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,32768
	call	l_long_and
	pop	de
	call	l_pint
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,32640
	call	l_long_and
	ld	l,d
	rl	e
	rl	l
	ld	h,0
	rl	h
	ld	de,0
	ld	bc,-127
	add	hl,bc
	pop	bc
	push	hl
	ld	a,l
	sub	23
	ld	a,h
	rla
	ccf
	rra
	sbc	128
	jp	nc,i_2
	pop	hl
	push	hl
	ld	a,h
	rla
	jp	nc,i_3
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,32768
	call	l_long_and
	pop	bc
	call	l_plong
	pop	hl
	push	hl
	ld	de,65535
	and	a
	sbc	hl,de
	jp	nz,i_4
	ld	hl,2	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,16256
	call	l_long_or
	pop	bc
	call	l_plong
.i_4
	jp	i_5
.i_3
	pop	hl
	push	hl
	call	l_int2long_s
	ld	c,#(65535 % 256)
	call	l_long_asro
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,4	;const
	add	hl,sp
	call	l_gint	;
	ld	de,0
	call	l_long_and
	ld	a,d
	or	e
	or	h
	or	l
	jp	nz,i_6
	ld	hl,16	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,18	;const
	add	hl,sp
	ld	sp,hl
	ret


.i_6
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,8	;const
	add	hl,sp
	call	l_gint	;
	call	l_int2long_s
	ld	c,#(0 % 256)
	call	l_long_asro
	call	l_long_add
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,6	;const
	add	hl,sp
	call	l_gint	;
	call	l_com
	ld	de,0
	call	l_long_and
	pop	bc
	call	l_plong
	pop	bc
.i_5
	jp	i_7
.i_2
	pop	hl
	push	hl
	ld	de,128
	and	a
	sbc	hl,de
	jp	nz,i_8
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	call	l_f32_add
	ld	hl,16	;const
	add	hl,sp
	ld	sp,hl
	ret


.i_8
	ld	hl,14	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,16	;const
	add	hl,sp
	ld	sp,hl
	ret


.i_9
.i_7
	ld	hl,6	;const
	add	hl,sp
	push	hl
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	pop	bc
	call	l_plong
	ld	hl,8	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,16	;const
	add	hl,sp
	ld	sp,hl
	ret



; --- Start of Static Variables ---

	SECTION	bss_compiler
	SECTION	code_compiler


; --- Start of Scope Defns ---

	GLOBAL	__MAX_OPEN
	GLOBAL	_m32_sinf
	GLOBAL	_m32_cosf
	GLOBAL	_m32_tanf
	GLOBAL	_m32_asinf
	GLOBAL	_m32_acosf
	GLOBAL	_m32_atanf
	GLOBAL	_m32_atan2f
	GLOBAL	_m32_sinhf
	GLOBAL	_m32_coshf
	GLOBAL	_m32_tanhf
	GLOBAL	_m32_asinhf
	GLOBAL	_m32_acoshf
	GLOBAL	_m32_atanhf
	GLOBAL	_m32_expf
	GLOBAL	_m32_logf
	GLOBAL	_m32_log10f
	GLOBAL	_m32_powf
	GLOBAL	_m32_fabsf
	GLOBAL	_m32_frexpf
	GLOBAL	_m32_ldexpf
	GLOBAL	_m32_ceilf
	GLOBAL	_m32_floorf
	GLOBAL	_m32_modff
	GLOBAL	_m32_fmodf
	GLOBAL	_m32_roundf
	GLOBAL	_m32_mul2f
	GLOBAL	_m32_div2f
	GLOBAL	_m32_sqrf
	GLOBAL	_m32_invf
	GLOBAL	_m32_sqrtf
	GLOBAL	_m32_invsqrtf
	GLOBAL	_m32_hypotf
	GLOBAL	_m32_polyf


; --- End of Scope Defns ---


; --- End of Compilation ---

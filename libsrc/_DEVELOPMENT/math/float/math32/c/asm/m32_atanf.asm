;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_atanf_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_atanf flags 0x00000208 __smallc __z88dk_fastcall 
; double m32_atanf(double f)
; parameter 'double f' at 2 size(4)
._m32_atanf
	push	de
	push	hl
	push	bc
	push	bc
	push	bc
	push	bc
	push	bc
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	call	_m32_fabsf
	pop	bc
	call	l_plong
	push	de
	push	hl
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_eq
	ld	a,h
	or	l
	jp	z,i_2
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	ld	hl,14	;const
	add	hl,sp
	ld	sp,hl
	ret


.i_2
	ld	hl,8	;const
	add	hl,sp
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,16256
	call	l_f32_gt
	pop	de
	call	l_pint
	ld	a,h
	or	l
	jp	z,i_3
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong
	call	_m32_invf
	pop	bc
	call	l_plong
.i_3
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,6	;const
	add	hl,sp
	call	l_glong
	call	_m32_sqrf
	pop	bc
	call	l_plong
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,5	;const
	push	hl
	ld	hl,_m32_coeff_atan_a
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_m32_polyf
	push	de
	push	hl
	ld	hl,4	;const
	push	hl
	ld	hl,_m32_coeff_atan_b
	push	hl
	ld	hl,14	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_m32_polyf
	call	l_f32_div
	call	l_f32_mul
	pop	bc
	call	l_plong
	ld	hl,8	;const
	add	hl,sp
	call	l_gint	;
	ld	a,h
	or	l
	jp	z,i_4
	ld	hl,4	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,4059	;const
	ld	de,16329
	call	l_f32_swap
	call	l_f32_sub
	pop	bc
	call	l_plong
.i_4
	ld	hl,10	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_lt
	ld	a,h
	or	l
	jp	z,i_5
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	ld	a,d
	xor	128
	ld	d,a
	jp	i_7
.i_5
	ld	hl,4	;const
	add	hl,sp
.i_7
	ld	hl,14	;const
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
	GLOBAL	_m32_coeff_atan_a
	GLOBAL	_m32_coeff_atan_b


; --- End of Scope Defns ---


; --- End of Compilation ---

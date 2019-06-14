;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_logf_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_logf flags 0x00000208 __smallc __z88dk_fastcall 
; double m32_logf(double x)
; parameter 'double x' at 2 size(4)
._m32_logf
	push	de
	push	hl
	ld	hl,65523	;const
	add	hl,sp
	ld	sp,hl
	ld	hl,13	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_le
	ld	a,h
	or	l
	jp	z,i_2
	ld	hl,29208	;const
	ld	de,49841
	ld	hl,17	;const
	add	hl,sp
	ld	sp,hl
	ret


.i_2
	ld	hl,13	;const
	add	hl,sp
	push	hl
	ld	hl,2	;const
	add	hl,sp
	push	hl
	ld	hl,17	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_m32_frexpf
	pop	bc
	call	l_plong
	ld	hl,13	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,1267	;const
	ld	de,16181
	call	l_f32_lt
	ld	a,h
	or	l
	jp	z,i_5
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_gchar
	dec	hl
	ld	a,l
	call	l_sxt
	pop	de
	ld	a,l
	ld	(de),a
	ld	hl,13	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,19	;const
	add	hl,sp
	call	l_glong
	call	l_f32_add
	push	de
	push	hl
	ld	hl,0	;const
	ld	de,16256
	call	l_f32_sub
	pop	bc
	call	l_plong
	jp	i_6
.i_5
	ld	hl,13	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,16256
	call	l_f32_sub
	pop	bc
	call	l_plong
.i_6
	ld	hl,5	;const
	add	hl,sp
	push	hl
	ld	hl,15	;const
	add	hl,sp
	call	l_glong
	call	_m32_sqrf
	pop	bc
	call	l_plong
	ld	hl,9	;const
	add	hl,sp
	push	hl
	ld	hl,9	;const
	push	hl
	ld	hl,_m32_coeff_log
	push	hl
	ld	hl,19	;const
	add	hl,sp
	call	l_glong
	push	de
	push	hl
	call	_m32_polyf
	push	de
	push	hl
	ld	hl,11	;const
	add	hl,sp
	call	l_glong
	call	l_f32_mul
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_7
	ld	hl,1	;const
	add	hl,sp
	push	hl
	dec	hl
	call	l_gchar
	call	l_f32_schar2f
	pop	bc
	call	l_plong
	ld	hl,9	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,7	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,32899	;const
	ld	de,47454
	call	l_f32_mul
	call	l_f32_add
	pop	bc
	call	l_plong
.i_7
	ld	hl,9	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,11	;const
	add	hl,sp
	call	l_glong
	call	_m32_div2f
	call	l_f32_sub
	pop	bc
	call	l_plong
	ld	hl,5	;const
	add	hl,sp
	push	hl
	ld	hl,15	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,15	;const
	add	hl,sp
	call	l_glong
	call	l_f32_add
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	ld	a,(hl)
	and	a
	jp	z,i_10
	ld	hl,5	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,7	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,32768	;const
	ld	de,16177
	call	l_f32_mul
	call	l_f32_add
	pop	bc
	call	l_plong
.i_10
	ld	hl,7	;const
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,17	;const
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
	GLOBAL	_m32_coeff_log


; --- End of Scope Defns ---


; --- End of Compilation ---

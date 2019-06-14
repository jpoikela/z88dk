;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_atan2f_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_atan2f flags 0x00000000 __stdc 
; double m32_atan2f(double x, double y)
; parameter 'double x' at 2 size(4)
; parameter 'double y' at 6 size(4)
._m32_atan2f
	push	bc
	push	bc
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	_m32_fabsf
	push	de
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	_m32_fabsf
	call	l_f32_ge
	ld	a,h
	or	l
	jp	z,i_2
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,8	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,16	;const
	add	hl,sp
	call	l_glong
	call	l_f32_div
	call	_m32_atanf
	pop	bc
	call	l_plong
	ld	hl,10	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_lt
	ld	a,h
	or	l
	jp	z,i_3
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_ge
	ld	a,h
	or	l
	jp	z,i_4
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,4059	;const
	ld	de,16457
	call	l_f32_add
	pop	bc
	call	l_plong
	jp	i_5
.i_4
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,4059	;const
	ld	de,16457
	call	l_f32_sub
	pop	bc
	call	l_plong
.i_5
.i_3
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
	pop	bc
	pop	bc
	ret


.i_2
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,12	;const
	add	hl,sp
	call	l_glong
	call	l_f32_div
	call	_m32_atanf
	ld	a,d
	xor	128
	ld	d,a
	pop	bc
	call	l_plong
	ld	hl,10	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_lt
	ld	a,h
	or	l
	jp	z,i_7
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,4059	;const
	ld	de,16329
	call	l_f32_sub
	pop	bc
	call	l_plong
	jp	i_8
.i_7
	ld	hl,0	;const
	add	hl,sp
	push	hl
	call	l_glong2sp
	ld	hl,4059	;const
	ld	de,16329
	call	l_f32_add
	pop	bc
	call	l_plong
.i_8
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
	pop	bc
	pop	bc
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

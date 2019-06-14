;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_fmodf_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_fmodf flags 0x00000000 __stdc 
; double m32_fmodf(double x, double y)
; parameter 'double x' at 2 size(4)
; parameter 'double y' at 6 size(4)
._m32_fmodf
	push	bc
	push	bc
	push	bc
	push	bc
	ld	hl,14	;const
	add	hl,sp
	call	l_glong2sp
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
	pop	bc
	pop	bc
	pop	bc
	pop	bc
	ret


.i_2
	ld	hl,4	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,20	;const
	add	hl,sp
	call	l_glong
	call	l_f32_div
	call	l_f32_f2slong
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	push	hl
	ld	hl,12	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	l_f32_slong2f
	push	de
	push	hl
	ld	hl,24	;const
	add	hl,sp
	call	l_glong
	call	l_f32_mul
	call	l_f32_sub
	pop	bc
	call	l_plong
	ld	hl,0	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,18	;const
	add	hl,sp
	call	l_glong
	call	l_f32_ge
	ld	a,h
	or	l
	jp	z,i_3
	ld	hl,0	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,18	;const
	add	hl,sp
	call	l_glong
	call	l_f32_sub
	jp	i_4
.i_3
	ld	hl,0	;const
	add	hl,sp
	call	l_glong
.i_4
	pop	bc
	pop	bc
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

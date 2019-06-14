;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_powf_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_powf flags 0x00000000 __stdc 
; double m32_powf(double x, double y)
; parameter 'double x' at 2 size(4)
; parameter 'double y' at 6 size(4)
._m32_powf
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_lt
	ld	a,h
	or	l
	jp	z,i_2
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	ret


.i_2
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_eq
	ld	a,h
	or	l
	jp	z,i_3
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	ret


.i_3
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	d,h
	ld	e,l
	call	l_f32_eq
	ld	a,h
	or	l
	jp	z,i_4
	ld	hl,0	;const
	ld	de,16256
	ret


.i_4
	ld	hl,6	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,0	;const
	ld	de,16256
	call	l_f32_eq
	ld	a,h
	or	l
	jp	z,i_5
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	ret


.i_5
	ld	hl,2	;const
	add	hl,sp
	call	l_glong
	call	_m32_logf
	push	de
	push	hl
	ld	hl,10	;const
	add	hl,sp
	call	l_glong
	call	l_f32_mul
	call	_m32_expf
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

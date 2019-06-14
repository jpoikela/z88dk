;* * * * *  Small-C/Plus z88dk * * * * *
;  Version: 14607-fb6a7199a-20190608
;
;	Reconstructed for z80 Module Assembler
;
;	Module compile time: Fri Jun 14 22:13:04 2019



	MODULE	m32_modff_c


	INCLUDE "z80_crt0.hdr"


	SECTION	code_compiler

; Function m32_modff flags 0x00000000 __stdc 
; double m32_modff(double x, double *y)
; parameter 'double x' at 2 size(4)
; parameter 'double *y' at 6 size(2)
._m32_modff
	ld	hl,6	;const
	call	l_gintspsp	;
	ld	hl,4	;const
	add	hl,sp
	call	l_glong
	call	l_f32_f2slong
	call	l_f32_slong2f
	pop	bc
	call	l_plong
	ld	hl,2	;const
	add	hl,sp
	call	l_glong2sp
	ld	hl,10	;const
	add	hl,sp
	call	l_glonghlp
	call	l_f32_sub
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

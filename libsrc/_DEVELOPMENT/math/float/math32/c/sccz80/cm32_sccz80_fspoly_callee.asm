
; float __fspoly (const float x, const float d[], uint16_t n)

SECTION code_clib
SECTION code_fp_math32

PUBLIC cm32_sccz80_fspoly_callee

EXTERN m32_fspoly_callee

    ; evaluation of a polynomial function
    ;
    ; enter : stack = float d[], ret
    ;         dehl  = float x
    ;
    ; exit  : dehl  = 32-bit product
    ;         carry reset
    ;
    ; uses  : af, bc, de, hl, af', bc', de', hl'

DEFC cm32_sccz80_fspoly_callee = m32_fspoly_callee

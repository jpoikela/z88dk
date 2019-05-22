
; float __fspoly (const float x, const float d[], uint16_t n)

SECTION code_clib
SECTION code_fp_math32

PUBLIC cm32_sccz80_fspoly

EXTERN m32_fspoly_callee

.cm32_sccz80_fspoly

    ; evaluation of a polynomial function
    ;
    ; enter : stack = float d[], ret
    ;         dehl  = float x
    ;
    ; exit  : dehl  = 32-bit product
    ;         carry reset
    ;
    ; uses  : af, bc, de, hl, af', bc', de', hl'

    pop af                      ; my return
    pop bc                      ; (float)d[]
    push af                     ; my return
    push bc                     ; (float)d[]

    call m32_fspoly_callee
 
    pop bc                      ; my return
    push bc
    push bc
    ret

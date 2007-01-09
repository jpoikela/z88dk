; void __CALLEE__ memswap_callee(void *s1, void *s2, uint n)
; swap up to N bytes in the two memory regions
; 01.2007 aralbrec

XLIB memswap_callee
XDEF ASMDISP_MEMSWAP_CALLEE

.memswap_callee

   pop af
   pop bc
   pop de
   pop hl
   push af
   
   ; enter : bc = uint n
   ;         de = void *s2
   ;         hl = void *s1
   ; uses  : af, bc, de, hl
   
.asmentry
.loop
   
   ld a,(de)
   ldi
   dec hl
   ld (hl),a
   inc hl
   jp pe, loop
   
   ret

DEFC ASMDISP_MEMSWAP_CALLEE = asmentry - memswap_callee


#include    "m32_math.h"

extern float m32_coeff_sin_a[];
extern float m32_coeff_sin_b[];

float m32_sinf (float f) __z88dk_fastcall
{
    float    y, y_squared;
    int16_t    sect, e;

    if(f < 0.0) {
        f = -f;
        sect = 2;
    } else
        sect = 0;
    f *= .63661977237;
    if(f > 4.0)
        f -= 4.0 * m32_floor(f/4.0);
    if(f > 2.0) {
        f -= 2.0;
        sect = 2 - sect;
    }
    y = f - (float)(e = (int16_t)f);
    sect = (e + sect) % 4;
    if(sect & 1)
        y = 1.0 - y;
    if(sect & 2)
        y = -y;
    y_squared = m32_sqr(y);
    return y * m32_poly(y_squared, m32_coeff_sin_a) / m32_poly(y_squared, m32_coeff_sin_b);
}

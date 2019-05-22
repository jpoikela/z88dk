
#include "m32_math.h"

float m32_cosf(float f)
{
    /* cos is pi/2 out of phase with sin, so ... */

    return m32_sinf(f + 1.570796326795);
}


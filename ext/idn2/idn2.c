#include "idn2.h"

VALUE rb_mIdn2;

void
Init_idn2(void)
{
  rb_mIdn2 = rb_define_module("Idn2");
}

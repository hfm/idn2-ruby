#include "rb_idn2.h"
#include <idn2.h>

VALUE rb_mIdn2;

void
Init_idn2(void)
{
  rb_mIdn2 = rb_define_module("Idn2");

  rb_define_const(rb_mIdn2, "IDN2_VERSION", rb_str_new2(IDN2_VERSION));

  rb_define_const(rb_mIdn2, "NFC_INPUT",            INT2FIX(IDN2_NFC_INPUT));
  rb_define_const(rb_mIdn2, "ALABEL_ROUNDTRIP",     INT2FIX(IDN2_ALABEL_ROUNDTRIP));
  rb_define_const(rb_mIdn2, "TRANSITIONAL",         INT2FIX(IDN2_TRANSITIONAL));
  rb_define_const(rb_mIdn2, "NONTRANSITIONAL",      INT2FIX(IDN2_NONTRANSITIONAL));
  rb_define_const(rb_mIdn2, "ALLOW_UNASSIGNED",     INT2FIX(IDN2_ALLOW_UNASSIGNED));
  rb_define_const(rb_mIdn2, "USE_STD3_ASCII_RULES", INT2FIX(IDN2_USE_STD3_ASCII_RULES));
}

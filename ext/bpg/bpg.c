#include <ruby.h>
#include "libbpg/libbpg.h"

VALUE Bpg    = Qnil;
VALUE LibBgp = Qnil;

void  Init_bpg();
VALUE convert_jpeg_to_bpg(VALUE self, VALUE input);

void Init_bpg() {
    Bpg    = rb_define_module("Bpg");
    LibBgp = rb_define_module_under(Bpg, "Lib");

    rb_define_singleton_method(LibBgp, "convert_jpeg_to_bpg", convert_jpeg_to_bpg, 1);
}

VALUE convert_jpeg_to_bpg(VALUE self, VALUE input) {
    return Qnil;
}

/*
 * ---------------------------------------------------------------------------------------------------------------------
 *
 * Copyright (C) 2018, Anton Synytsia
 *
 * ---------------------------------------------------------------------------------------------------------------------
 */

#include "ams_ext.h"

extern "C"

void Init_ams_lib() {
    VALUE mAMS = rb_define_module("AMS");
    AMS::init_ruby_ext(mAMS);
}

// Generated by cpp11: do not edit by hand
// clang-format off


#include "cpp11/declarations.hpp"
#include <R_ext/Visibility.h>

// recode_keys_c.cpp
cpp11::writable::strings recode_keys_c(cpp11::writable::strings vector, strings keys);
extern "C" SEXP _psytoolkittools_recode_keys_c(SEXP vector, SEXP keys) {
  BEGIN_CPP11
    return cpp11::as_sexp(recode_keys_c(cpp11::as_cpp<cpp11::decay_t<cpp11::writable::strings>>(vector), cpp11::as_cpp<cpp11::decay_t<strings>>(keys)));
  END_CPP11
}

extern "C" {
static const R_CallMethodDef CallEntries[] = {
    {"_psytoolkittools_recode_keys_c", (DL_FUNC) &_psytoolkittools_recode_keys_c, 2},
    {NULL, NULL, 0}
};
}

extern "C" attribute_visible void R_init_psytoolkittools(DllInfo* dll){
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
  R_forceSymbols(dll, TRUE);
}
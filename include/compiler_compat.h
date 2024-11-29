#pragma once

// Include our glibc compatibility header first
#include "glibc_compat.h"

// Include our type definitions
#include "vita2hos_types.h"

// Include our overrides
#include "switch_overrides.h"

// Define functions with correct exception specifiers
#ifdef __cplusplus
extern "C" {
#endif

void abort(void) __attribute__((__noreturn__));
int abs(int) __attribute__((__const__));
int atexit(void (*)(void)) __attribute__((__nonnull__(1)));
double atof(const char*) __attribute__((__pure__));
int atoi(const char*) __attribute__((__pure__));
long atol(const char*) __attribute__((__pure__));
void *calloc(size_t, size_t) __attribute__((__malloc__));
void exit(int) __attribute__((__noreturn__));
void free(void*);
char *getenv(const char*) __attribute__((__nonnull__(1)));
long labs(long) __attribute__((__const__));
void *malloc(size_t) __attribute__((__malloc__));
int mblen(const char*, size_t);
int mbtowc(wchar_t*, const char*, size_t);
int wctomb(char*, wchar_t);
size_t mbstowcs(wchar_t*, const char*, size_t);
size_t wcstombs(char*, const wchar_t*, size_t);
int rand(void);

#ifdef __cplusplus
}
#endif

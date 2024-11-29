#pragma once

// Include our type definitions first
#include "vita2hos_types.h"

// Include our overrides
#include "switch_overrides.h"

// Define structures for stdlib if not already defined
#ifndef __DIV_T_DEFINED
typedef struct {
    int quot;
    int rem;
} div_t;

typedef struct {
    long quot;
    long rem;
} ldiv_t;
#define __DIV_T_DEFINED
#endif

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
div_t div(int, int) __attribute__((__const__));
void exit(int) __attribute__((__noreturn__));
void free(void*);
char *getenv(const char*) __attribute__((__nonnull__(1)));
long labs(long) __attribute__((__const__));
ldiv_t ldiv(long, long) __attribute__((__const__));
void *malloc(size_t) __attribute__((__malloc__));
int mblen(const char*, size_t);
int mbtowc(wchar_t*, const char*, size_t);
int wctomb(char*, wchar_t);
size_t mbstowcs(wchar_t*, const char*, size_t);
size_t wcstombs(char*, const wchar_t*, size_t);
int rand(void);
void *realloc(void*, size_t);
void srand(unsigned);
double strtod(const char*, char**);
float strtof(const char*, char**);
long strtol(const char*, char**, int);
unsigned long strtoul(const char*, char**, int);

#ifdef __cplusplus
}
#endif

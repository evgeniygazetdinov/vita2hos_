#pragma once

// This header must be included before any system headers
#ifndef _GLIBC_COMPAT_H
#define _GLIBC_COMPAT_H

// Define feature test macros
#define _GNU_SOURCE

// Ensure these are defined to 0 if not already defined by compiler flags
#ifndef __GLIBC_USE
#define __GLIBC_USE(X) 0
#endif

#endif /* _GLIBC_COMPAT_H */

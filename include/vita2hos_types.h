#pragma once

// Prevent system types from being defined
#define _SYS__TYPES_H_
#define _SYS_TYPES_H_
#define _SYS_REENT_H_
#define _STDIO_H_
#define __DEFINED_key_t
#define __DEFINED_gid_t
#define __DEFINED_uid_t
#define __DEFINED_dev_t
#define __DEFINED_ino_t
#define __DEFINED_nlink_t
#define __DEFINED_useconds_t
#define __DEFINED_pid_t
#define __DEFINED_id_t
#define __DEFINED_daddr_t
#define __DEFINED_key_t
#define __DEFINED_time_t
#define __DEFINED_clockid_t
#define __DEFINED_timer_t
#define __DEFINED_clock_t
#define __DEFINED_ssize_t
#define __DEFINED_mode_t
#define __DEFINED_off_t
#define __DEFINED_fpos_t
#define __DEFINED_pthread_t
#define __DEFINED_pthread_key_t
#define __DEFINED_pthread_once_t
#define __DEFINED_pthread_mutex_t
#define __DEFINED_pthread_mutexattr_t
#define __DEFINED_pthread_cond_t
#define __DEFINED_pthread_condattr_t
#define __DEFINED_pthread_rwlock_t
#define __DEFINED_pthread_rwlockattr_t
#define __DEFINED_pthread_barrier_t
#define __DEFINED_pthread_barrierattr_t
#define __DEFINED_pthread_spinlock_t

// Prevent stdlib types from being defined
#define _STDLIB_H_
#define __DEFINED_div_t
#define __DEFINED_ldiv_t
#define _BITS_STDLIB_H
#define _STDLIB_H

// Include basic type definitions
#include <stddef.h>
#include <stdint.h>

// Define basic types matching VitaSDK exactly
#ifndef __dev_t_defined
typedef short __dev_t;
#define __dev_t_defined
#endif

#ifndef __uid_t_defined
typedef unsigned short __uid_t;
#define __uid_t_defined
#endif

#ifndef __gid_t_defined
typedef unsigned int __gid_t;
#define __gid_t_defined
#endif

#ifndef __ino_t_defined
typedef unsigned long __ino_t;
#define __ino_t_defined
#endif

#ifndef __mode_t_defined
typedef unsigned int __mode_t;
#define __mode_t_defined
#endif

#ifndef __nlink_t_defined
typedef unsigned long __nlink_t;
#define __nlink_t_defined
#endif

#ifndef __off_t_defined
typedef long __off_t;
#define __off_t_defined
#endif

#ifndef __pid_t_defined
typedef int __pid_t;
#define __pid_t_defined
#endif

#ifndef __useconds_t_defined
typedef unsigned int __useconds_t;
#define __useconds_t_defined
#endif

#ifndef __key_t_defined
typedef int __key_t;
#define __key_t_defined
#endif

#ifndef __ssize_t_defined
typedef long __ssize_t;
#define __ssize_t_defined
#endif

#ifndef __timer_t_defined
typedef void* __timer_t;
#define __timer_t_defined
#endif

#ifndef __clockid_t_defined
typedef int __clockid_t;
#define __clockid_t_defined
#endif

#ifndef __clock_t_defined
typedef long __clock_t;
#define __clock_t_defined
#endif

#ifndef __daddr_t_defined
typedef int __daddr_t;
#define __daddr_t_defined
#endif

#ifndef __time_t_defined
typedef long __time_t;
#define __time_t_defined
#endif

#ifndef __fpos_t_defined
typedef long __fpos_t;
#define __fpos_t_defined
#endif

// Define stdlib types
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

// Thread types
typedef struct __pthread* __pthread_t;
typedef int __pthread_key_t;
typedef int __pthread_once_t;
typedef int __pthread_mutex_t;
typedef int __pthread_mutexattr_t;
typedef int __pthread_cond_t;
typedef int __pthread_condattr_t;
typedef int __pthread_rwlock_t;
typedef int __pthread_rwlockattr_t;
typedef int __pthread_barrier_t;
typedef int __pthread_barrierattr_t;
typedef int __pthread_spinlock_t;

// Define FILE structure
#ifndef _CUSTOM_STDIO_H_
#define _CUSTOM_STDIO_H_

#ifndef __CUSTOM_FILE_DEFINED
#define __CUSTOM_FILE_DEFINED

struct __sbuf {
    unsigned char *_base;  /* buffer base */
    int _size;            /* buffer size */
};

typedef struct __sFILE {
    unsigned char *_p;    /* current position in (some) buffer */
    int _r;              /* read space left for getc() */
    int _w;              /* write space left for putc() */
    short _flags;        /* flags, below; this FILE is free if 0 */
    short _file;         /* fileno, if Unix descriptor, else -1 */
    struct __sbuf _bf;   /* the buffer (at least 1 byte, if !NULL) */
    int _lbfsize;       /* 0 or -_bf._size, for inline putc */
    void *_cookie;      /* cookie passed to io functions */
    int (*_read)(void *, char *, int);
    int (*_write)(void *, const char *, int);
    __fpos_t (*_seek)(void *, __fpos_t, int);
    int (*_close)(void *);
    struct __sbuf _ub;  /* ungetc buffer */
    unsigned char *_up; /* saved _p when _p is doing ungetc data */
    int _ur;           /* saved _r when _r is counting ungetc data */
    unsigned char _ubuf[3]; /* guarantee an ungetc() buffer */
    unsigned char _nbuf[1]; /* guarantee a getc() buffer */
    struct __sbuf _lb;  /* buffer for fgetln() */
    int _blksize;      /* stat.st_blksize (may be != _bf._size) */
    __fpos_t _offset;   /* current lseek offset */
} FILE;

#endif // __CUSTOM_FILE_DEFINED
#endif // _CUSTOM_STDIO_H_

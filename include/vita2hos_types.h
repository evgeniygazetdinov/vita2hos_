#pragma once

// Prevent system types from being defined
#define _SYS__TYPES_H_
#define _SYS_TYPES_H_
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

// Include basic type definitions
#include <stddef.h>
#include <stdint.h>

// Define FILE structure
#ifndef __FILE_defined
#define __FILE_defined
struct __FILE {
    unsigned char *_p;    /* current position in (some) buffer */
    int _r;              /* read space left for getc() */
    int _w;              /* write space left for putc() */
    short _flags;        /* flags, below; this FILE is free if 0 */
    short _file;         /* fileno, if Unix descriptor, else -1 */
    struct __sbuf {
        unsigned char *_base;  /* buffer base */
        int _size;            /* buffer size */
    } _bf;              /* the buffer (at least 1 byte, if !NULL) */
    int _lbfsize;       /* 0 or -_bf._size, for inline putc */
    void *_cookie;      /* cookie passed to io functions */
    int (*_read)(void *, char *, int);
    int (*_write)(void *, const char *, int);
    _fpos_t (*_seek)(void *, _fpos_t, int);
    int (*_close)(void *);
    struct __sbuf _ub;  /* ungetc buffer */
    unsigned char *_up; /* saved _p when _p is doing ungetc data */
    int _ur;           /* saved _r when _r is counting ungetc data */
    unsigned char _ubuf[3]; /* guarantee an ungetc() buffer */
    unsigned char _nbuf[1]; /* guarantee a getc() buffer */
    struct __sbuf _lb;  /* buffer for fgetln() */
    int _blksize;      /* stat.st_blksize (may be != _bf._size) */
    _fpos_t _offset;   /* current lseek offset */
};
typedef struct __FILE FILE;
#endif

// Define basic types matching VitaSDK exactly
typedef short __dev_t;
typedef unsigned short __uid_t;
typedef unsigned short __gid_t;
typedef unsigned short __ino_t;
typedef unsigned short __mode_t;
typedef unsigned short __nlink_t;
typedef long __off_t;
typedef int __pid_t;
typedef unsigned int __useconds_t;
typedef int __key_t;
typedef long __ssize_t;
typedef void* __timer_t;
typedef int __clockid_t;
typedef unsigned long __clock_t;
typedef int __daddr_t;
typedef long __time_t;
typedef long __fpos_t;

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

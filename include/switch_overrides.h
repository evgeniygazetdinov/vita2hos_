#pragma once

// Prevent libnx mutex.h from being included
#define __SWITCH_MUTEX_H__
#define __SWITCH_TYPES_H__

// Include necessary headers for types
#include <stdint.h>

// Define our own mutex structure
typedef struct {
    uint32_t lock;
    uint32_t thread_tag;
    uint32_t counter;
} vita2hos_mutex_t;

typedef vita2hos_mutex_t RMutex;

// Define libnx mutex types to prevent conflicts
typedef int _LOCK_T;
typedef _LOCK_T _LOCK_RECURSIVE_T;

// Define libnx mutex functions as no-ops
#define _LOCK_INIT(lock) ((void)0)
#define _LOCK_INIT_RECURSIVE(lock) ((void)0)
#define _LOCK_CLOSE(lock) ((void)0)
#define _LOCK_CLOSE_RECURSIVE(lock) ((void)0)
#define _LOCK_ACQUIRE(lock) ((void)0)
#define _LOCK_ACQUIRE_RECURSIVE(lock) ((void)0)
#define _LOCK_RELEASE(lock) ((void)0)
#define _LOCK_RELEASE_RECURSIVE(lock) ((void)0)
#define _LOCK_TRY_ACQUIRE(lock) 0
#define _LOCK_TRY_ACQUIRE_RECURSIVE(lock) 0

// Define libnx mutex types to prevent redefinition
#define Mutex vita2hos_mutex_t
#define mutexInit vita2hos_mutex_init
#define mutexLock vita2hos_mutex_lock
#define mutexUnlock vita2hos_mutex_unlock
#define mutexTryLock vita2hos_mutex_trylock
#define RMutex vita2hos_mutex_t
#define rmutexInit vita2hos_mutex_init
#define rmutexLock vita2hos_mutex_lock
#define rmutexUnlock vita2hos_mutex_unlock
#define rmutexTryLock vita2hos_mutex_trylock

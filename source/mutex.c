#include "compiler_compat.h"
#include "mutex.h"
#include <switch.h>

void vita2hos_mutex_init(vita2hos_mutex_t* m) {
    if (!m) return;
    m->lock = 0;
    m->thread_tag = 0;
    m->counter = 0;
}

void vita2hos_mutex_lock(vita2hos_mutex_t* m) {
    if (!m) return;
    
    uint32_t current_thread = (uint32_t)threadGetCurrentHandle();
    
    // If already owned by current thread, just increment counter
    if (m->thread_tag == current_thread) {
        m->counter++;
        return;
    }
    
    // Wait until we can acquire the lock
    while (__sync_lock_test_and_set(&m->lock, 1)) {
        while (m->lock) {
            svcSleepThread(1000000); // 1ms
        }
    }
    m->thread_tag = current_thread;
    m->counter = 1;
}

bool vita2hos_mutex_trylock(vita2hos_mutex_t* m) {
    if (!m) return false;
    
    uint32_t current_thread = (uint32_t)threadGetCurrentHandle();
    
    // If already owned by current thread, just increment counter
    if (m->thread_tag == current_thread) {
        m->counter++;
        return true;
    }
    
    // Try to acquire the lock
    if (!__sync_lock_test_and_set(&m->lock, 1)) {
        m->thread_tag = current_thread;
        m->counter = 1;
        return true;
    }
    
    return false;
}

void vita2hos_mutex_unlock(vita2hos_mutex_t* m) {
    if (!m) return;
    
    uint32_t current_thread = (uint32_t)threadGetCurrentHandle();
    
    // Only the owner can unlock
    if (m->thread_tag != current_thread) {
        return;
    }
    
    m->counter--;
    if (m->counter == 0) {
        m->thread_tag = 0;
        __sync_lock_release(&m->lock);
    }
}

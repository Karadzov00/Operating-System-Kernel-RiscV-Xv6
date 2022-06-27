//
// Created by os on 6/25/22.
//

#include "../h/KSemaphore.hpp"

List<_thread> KSemaphore::blocked;

int KSemaphore::wait() {
    if(--val < 0){
        _thread *old = _thread::running;
        if (!old->isFinished()) { blocked.addLast(old); }
        _thread::running = Scheduler::get();

        _thread::contextSwitch(&old->context, &_thread::running->context);
    }
    return 0;
}

void KSemaphore::signal() {
    if (++val <= 0) {
        _thread *p = blocked.removeFirst();
        Scheduler::put(p);
    }
}

void* KSemaphore::operator new(size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void* KSemaphore::operator new[](size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void KSemaphore::operator delete(void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}

void KSemaphore::operator delete[](void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}



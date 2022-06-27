//
// Created by os on 6/25/22.
//

#include "../h/KSemaphore.hpp"

List<_thread> KSemaphore::blocked;

int KSemaphore::wait() {
    if(--(this->val) < 0){

        _thread* old = _thread::running;
        if(!old->isFinished()) { KSemaphore::blocked.addLast(old); }
        _thread::running = Scheduler::get();
        _thread::contextSwitch(&old->context, &_thread::running->context);

        if(_thread::running->deblocked)return -1;
        else return 0;
    }
    return 0;
}

void KSemaphore::signal() {
    if(++(this->val) <=0){

            _thread* thread = KSemaphore::blocked.removeFirst();
            Scheduler::put(thread);

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



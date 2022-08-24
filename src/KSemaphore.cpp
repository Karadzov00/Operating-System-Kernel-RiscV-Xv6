//
// Created by os on 6/25/22.
//

#include "../h/KSemaphore.hpp"



int KSemaphore::wait() {
    if(--(this->val) < 0){
            _thread* old = _thread::running;
            if(!old->isFinished()){
                this->blocked.addLast(old);
                old->setStatus(_thread::Status::BLOCKED);
            }
            _thread::dispatch();
    }
    return 0;
}

void KSemaphore::signal() {
    if(++(this->val) <=0){
        if(blocked.peekFirst()!= 0){
            _thread* thread = this->blocked.removeFirst();
            thread->setStatus(_thread::Status::READY);
            Scheduler::put(thread);
        }
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



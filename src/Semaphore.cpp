//
// Created by os on 6/25/22.
//

#include "../h/Semaphore.hpp"


int Semaphore::wait() {
    if(--val < 0){

        _thread* old = _thread::running;
        if(!old->isFinished()) { blocked.addLast(old); }
        _thread::running = Scheduler::get();
        _thread::contextSwitch(&old->context, &_thread::running->context);


        if(_thread::running->deblocked==true)return -1;
        else return 0;
    }
}

void Semaphore::signal() {
    if(++val <=0){
        if(blocked.peekFirst()!= 0){
            _thread* thread = blocked.removeFirst();
            Scheduler::put(thread);
        }
    }
}

void* Semaphore::operator new(size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void* Semaphore::operator new[](size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void Semaphore::operator delete(void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}

void Semaphore::operator delete[](void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}



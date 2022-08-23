//
// Created by os on 6/20/22.
//

#include "../h/_thread.hpp"
#include "../h/Scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"

_thread* _thread::running = nullptr;

uint64 _thread::timeSliceCounter = 0;
uint64 _thread::globalId=0;

_thread* _thread::createThread(Body body, void* arg, uint64* stek) {
    return new _thread(body, DEFAULT_TIME_SLICE, arg, stek);
}

_thread::_thread(Body body, uint64 timeSlice, void* arg, uint64* stek):body(body),timeSlice(timeSlice),
finished(false), arg(arg),deblocked(false),id(globalId++), status(Status::NEW)
{
    this->stack = (body!= nullptr) ? stek: nullptr;
    this->context.ra=(uint64)&threadWrapper;
    this->context.sp= (this->stack!= nullptr)?(uint64)&stack[DEFAULT_STACK_SIZE]:0;

    if(this->body!= nullptr)
        Scheduler::put(this);
}

void _thread::yield() {
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    __asm__ volatile ("ecall");

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));

}

void _thread::dispatch() {
    _thread* old = running;
    if(!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    running->body(running->arg);   //call the function with argument arg
    running->setFinished(true);
    _thread::yield();   //after the thread finished, explicitly call yield
}

void* _thread::operator new(size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void* _thread::operator new[](size_t n) {
    return MemoryAllocator::kmem_alloc(n);
}

void _thread::operator delete(void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}

void _thread::operator delete[](void *p) noexcept {
    MemoryAllocator::kmem_free(p);
}




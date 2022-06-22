//
// Created by os on 6/20/22.
//

#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"

TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;
uint64 TCB::globalId=0;

TCB* TCB::createThread(Body body) {
    return new TCB(body, DEFAULT_TIME_SLICE);
}

TCB::TCB(Body body, uint64 timeSlice):
        body(body),
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
        context({(uint64)&threadWrapper,
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
                }),
        timeSlice(timeSlice),
        finished(false)
{
    status = Status::NEW;
    id = globalId++;
}

void TCB::start() {
    if(this->status==FINISHED)return;
    if(this->status==READY)return;

    //set thread to ready and put it to scheduler
    this->status=Status::READY;
    Scheduler::put(this);
}

void TCB::yield() {
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

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {

}

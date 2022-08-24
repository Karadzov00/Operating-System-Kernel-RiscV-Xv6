//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1__THREAD_HPP
#define PROJECT_BASE_V1_1__THREAD_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "MemoryAllocator.hpp"

class _thread {
public:
    ~_thread() {
        MemoryAllocator::kmem_free(stack);
    }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);   //Body is a pointer to a funtion that takes one argument

    static _thread *createThread(Body body, void* arg, uint64* stek);

    static void yield();

    void setDeblocked(){
        deblocked = true;
    }

    bool checkDeblocked(){
        return deblocked;
    }

    static _thread *running;

    typedef _thread* thread_t;

    enum Status{READY, NEW, FINISHED, BLOCKED};

    uint64 getId(){return id; }
    static uint64 getRunningId(){return running->id; }

    void* operator new(size_t n);
    void* operator new[](size_t n);
    void operator delete(void *p) noexcept;
    void operator delete[](void *p) noexcept;

private:
    _thread(Body body, uint64 timeSlice, void* arg, uint64* stek);

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;
    void* arg; //argument for body function

    bool deblocked;

    friend class Riscv;
    friend class KSemaphore;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static void dispatch();

    void setStatus(Status stat){
        this->status= stat;
    }


    static uint64 timeSliceCounter;
    uint64 id;
    static uint64 globalId;
    Status status; //stats of this thread

    friend class Riscv;


};


#endif //PROJECT_BASE_V1_1__THREAD_HPP

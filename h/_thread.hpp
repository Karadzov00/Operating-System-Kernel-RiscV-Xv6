//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1__THREAD_HPP
#define PROJECT_BASE_V1_1__THREAD_HPP

#include "../lib/hw.h"
#include "Scheduler.hpp"

class _thread {
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)();

    static _thread *createThread(Body body);

    static void yield();

    static _thread *running;

    enum Status{READY, NEW, FINISHED, BLOCKED};

    uint64 getId(){return id; }
    static uint64 getRunningId(){return running->id; }

    void* operator new(size_t n);



private:
    _thread(Body body, uint64 timeSlice);

    struct Context {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *newContext);

    static void dispatch();

    void start();

    static uint64 timeSliceCounter;
    uint64 id;
    static uint64 globalId;
    Status status; //stats of this thread

    friend class Riscv;


};


#endif //PROJECT_BASE_V1_1__THREAD_HPP

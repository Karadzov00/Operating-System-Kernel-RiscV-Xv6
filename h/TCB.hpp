//
// Created by os on 6/20/22.
//

#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP

#include "../lib/hw.h"

class TCB {
public:
    ~TCB(){delete[] stack;}

    bool isFinished() const{ return finished;}

    void setFinished(bool value){finished=value;}

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void(*)();

    static TCB *createThread(Body body);

    static void yield();

    static TCB *running;

private:
    TCB(Body body, uint64 timeSlice){}

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64* stack;
    Context context;
    uint64 timeSlice;
    bool finished;

    friend class Riscv;

    static void threadWrapper();

    static void contextSwitch(Context* oldContext, Context* newContext);

    static void dispatch();

    static uint64 timeSliceCounter;



};


#endif //PROJECT_BASE_V1_1_TCB_HPP

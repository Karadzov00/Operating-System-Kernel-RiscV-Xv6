//
// Created by os on 6/20/22.
//

#include "../h/TCB.hpp"
TCB* TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body) {
    return new TCB(body, DEFAULT_TIME_SLICE);
}


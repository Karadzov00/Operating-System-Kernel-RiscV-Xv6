//
// Created by os on 6/20/22.
//

#include "Scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;

TCB* Scheduler::get() {
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}

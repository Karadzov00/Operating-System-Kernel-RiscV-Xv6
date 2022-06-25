//
// Created by os on 6/25/22.
//

#include "../h/Semaphore.hpp"


void Semaphore::wait() {
    if(--val < 0){
        blocked.addLast(_thread::running);
        _thread::dispatch();
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


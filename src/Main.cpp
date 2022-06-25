//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"
#include "../h/List.hpp"
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

    _thread* threads[3];

    if(!thread_create(&threads[0], nullptr, nullptr)){
        printString("thread created");
    }
//    threads[0]->start();
    _thread::running=threads[0];

    if(!thread_create(&threads[1], workerBodyA, nullptr)){
        printString("thread created");
    }
//    threads[1]->start();

    if(!thread_create(&threads[2], workerBodyB, nullptr)){
        printString("thread created");
    }
//    threads[2]->start();

    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
        _thread::yield();
    }


    printString("finished \n");

    return 0;
}

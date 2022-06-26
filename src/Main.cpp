//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"
//#include "../h/List.hpp"
//#include "../h/syscall_c.h"
//#include "../h/Print.hpp"
//#include "../h/workers.hpp"
#include "../h/_thread.hpp"


extern void userMain();
extern int thread_create (
        _thread::thread_t * handle,
        void(*start_routine)(void*),
        void* arg
);

int main(){


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

//    _thread* threads[3];
//
//    if(!thread_create(&threads[0], nullptr, nullptr)){
//        printString("thread created");
//    }
//
//    _thread::running=threads[0];
//
//    if(!thread_create(&threads[1], workerBodyA, nullptr)){
//        printString("thread created \n");
//    }
//
//
//    if(!thread_create(&threads[2], workerBodyB, nullptr)){
//        printString("thread created \n");
//    }
//
//
//    while(!(threads[1]->isFinished() && threads[2]->isFinished())){
//        thread_dispatch();
//    }
//
//
//    printString("finished \n");

//    _thread* idle;
//    if(!thread_create(&idle, nullptr, nullptr)){
//            printString("thread created");
//        }
//    _thread::running=idle;


    userMain();

    return 0;
}

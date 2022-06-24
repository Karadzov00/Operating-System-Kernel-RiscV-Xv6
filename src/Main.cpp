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

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

//    void* t1;
//    t1 = mem_alloc(300);
//    if(t1!=nullptr){
//        printString("allocated \n");
//    }
//    if(!mem_free(t1)){
//        printString("successfully freed \n");
//    }
//    else{
//        printString("not freed \n");
//    }

    _thread* main = _thread::createThread(nullptr, nullptr);
    main->start();
    _thread::running=main;

    _thread* t1 = _thread::createThread(workerBodyA, nullptr);
    if(t1 != nullptr){
        printString("thread created \n");
    } else{
        printString("error \n");
    }


    t1->start();

    _thread* t2 = _thread::createThread(workerBodyB, nullptr);
    if(t2 != nullptr){
        printString("thread created \n");
    } else{
        printString("error \n");
    }
    t2->start();

//    thread_dispatch();
//    int ret = thread_exit();
//    if(!ret){
//        printString("thread exited");
//    }

    while(!(t1->isFinished() && t2->isFinished())){
        _thread::yield();
    }

    //memory leak without delete
//    delete main;
//    delete t1;
//    delete t2;

    printString("finished \n");

    return 0;
}

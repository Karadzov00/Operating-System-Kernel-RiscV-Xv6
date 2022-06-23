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

//    void* ptr;
//    ptr = mem_alloc(300);
//    if(ptr!=nullptr){
//        printString("allocated \n");
//    }
//    if(!mem_free(ptr)){
//        printString("successfully freed \n");
//    }
//    else{
//        printString("not freed \n");
//    }

    _thread* main = _thread::createThread(nullptr, nullptr);
    main->start();
    _thread::running=main;

    _thread* ptr = _thread::createThread(workerBodyA, nullptr);
    if(ptr!= nullptr){
        printString("thread created");
    } else{
        printString("error");
    }
    _thread::running=ptr;

    ptr->start();

    while(!ptr->isFinished()){
        _thread::yield();
    }

    return 0;
}

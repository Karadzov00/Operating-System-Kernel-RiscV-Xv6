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

    _thread* threads[3];
    if(!thread_create(&threads[0], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr)){
        printString("thread created \n");

    } else{
        printString("error \n");

    }

    return 0;
}

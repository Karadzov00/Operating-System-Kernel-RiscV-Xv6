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
    _thread* ptr;
    if(!thread_create(&ptr, nullptr, nullptr)){
        printString("main created \n");

    } else{
        printString("error main\n");

    }
    int x=2;
    printInteger(x);

    _thread::running=ptr;
    ptr->start();
    //doesnt load thread adress to handle!!!

    if(!thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr)){
        printString("thread created \n");

    } else{
        printString("error worker a\n");
    }

    threads[1]->start();

    if(!thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr)){
        printString("thread created \n");

    } else{
        printString("error worker a\n");

    }
    threads[2]->start();

    while (true)
    {
        _thread::yield();   //u uposlenom cekanju radimo yield
    }

    return 0;
}

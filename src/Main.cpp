//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"

#include "../h/_thread.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"
//
//


extern void userMain(void*);

int main(){


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
//    Riscv::mc_sstatus(Riscv::SSTATUS_SPIE);


//    make system thread
//    Riscv::initKernel();


//
//    char c;
//    while((c=getc())!=0x31){
//        putc(c);
//    }

//    make user thread

    _thread* idle;
    thread_create(&idle, nullptr, nullptr);
    _thread::running=idle;

    userMain(nullptr);

    return 0;
}

//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"

#include "../h/_thread.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"
//
//

extern void userMain();
extern int thread_create (
        _thread::thread_t * handle,
        void(*start_routine)(void*),
        void* arg
);

extern void userMain(void*);

int main(){


    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);


    Riscv::mc_sstatus(Riscv::SSTATUS_SPIE);

    //make system thread
//    _thread* main = (_thread*)MemoryAllocator::kmem_alloc(sizeof(_thread));
//    _thread::running=main;
//    uint64 * stack = (uint64*)MemoryAllocator::kmem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
//    main->setStack(stack);
//    __asm__ volatile("ecall");


    //make user thread
//    _thread* thr;
//    thread_create(&thr, userMain, nullptr);
//
//    while(!thr->isFinished()){
//        thread_dispatch();
//    }

    char c;
    while((c=getc())!=0x31){
        putc(c);
    }

    return 0;
}

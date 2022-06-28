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
//    if(!thread_create(&idle, nullptr, nullptr)){}
//    _thread::running=idle;


    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    uint64* stack1 =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    uint64* stack2=(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    void* addr1 = mem_alloc(1000);
    void* addr2 = mem_alloc(5000);
    void* addr3 = mem_alloc(37);
    void* addr4 = mem_alloc(2000);

    if(stack && addr4){
        printString("allocated \n");
    }
    if(stack1){
        printString("allocated 1\n");
    }
    if(stack2){
        printString("allocated 2\n");
    }
    if(addr1){
        printString("allocated 2\n");
    }if(addr2 && addr3){
        printString("allocated 2\n");
    }
//    userMain();

    return 0;
}

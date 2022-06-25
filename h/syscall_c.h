//
// Created by os on 6/19/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H


#include "../h/MemoryAllocator.hpp"



//extern "C" void supervisorTrap();

struct args{
    uint64 a0;
    uint64 a1;
    uint64 a2;
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    uint64 arg1 = arg->a1;
    uint64 arg2 = arg->a2;
    uint64 arg3 = arg->a3;
    uint64 arg4 = arg->a4;

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    __asm__ volatile("mv a4, %0" : : "r" (arg4));



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");


}

void* mem_alloc (size_t size){
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;

    size_t blocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    arg.a1=blocks;

    syscall(&arg);

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (void*)ret;
}

int mem_free (void* p){
    args arg;
    arg.a0=0x02;
    arg.a1=(uint64)p;

    syscall(&arg);
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (int)ret;
}

class _thread;
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){

    uint64* stack =(uint64*) mem_alloc(DEFAULT_STACK_SIZE* sizeof(uint64));
    args myArgs;
    myArgs.a0=0x11;
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    myArgs.a2=(uint64)start_routine;
    myArgs.a3=(uint64)arg;
    myArgs.a4=(uint64)stack;

    syscall(&myArgs);
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret)); //the ret value is future handle

    return ret;


}

int thread_exit (){
    args myArgs;
    myArgs.a0=0x12;

    syscall(&myArgs);

    return 0;
}


void thread_dispatch (){
    args myArgs;
    myArgs.a0=0x13;

    syscall(&myArgs);


}


class Semaphore;
typedef Semaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
){
    args myArgs;
    myArgs.a0 = 0x21;
    myArgs.a1 = (uint64)handle;
    myArgs.a2 = (uint64)init;

    syscall(&myArgs);


}




#endif //PROJECT_BASE_V1_1_SYSCALL_C_H

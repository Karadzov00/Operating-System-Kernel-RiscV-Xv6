//
// Created by os on 6/19/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_CPP
#define PROJECT_BASE_V1_1_SYSCALL_C_CPP


#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_c.h"


//extern "C" void supervisorTrap();

struct args{
    uint64 a0;
    uint64 a1;
    uint64 a2;
    uint64 a3;
    uint64 a4;

};

void syscall(args* arg){


    uint64 arg0 = arg->a0;
    uint64 arg1 = arg->a1;
    uint64 arg2 = arg->a2;
    uint64 arg3 = arg->a3;
    uint64 arg4 = arg->a4;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    __asm__ volatile("mv a4, %0" : : "r" (arg4));

    __asm__ volatile ("ecall");


}

void* mem_alloc (size_t size){
    //prepares parameters to arguments
    //executes system call instruction

    size_t blocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE!=0)blocks++;


    __asm__ volatile("mv a0, %0" : : "r" (0x01));
    __asm__ volatile("mv a1, %0" : : "r" (blocks));

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (void*)ret;
}

int mem_free (void* p){


    __asm__ volatile("mv a0, %0" : : "r" (0x02));
    __asm__ volatile("mv a1, %0" : : "r" (p));

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    p= nullptr;
    if(!p){

    }
    return (int)ret;
}

class _thread;
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){


    volatile uint64 code  = (uint64)0x11;
    volatile uint64 hand = (uint64)handle;
    volatile uint64 start = (uint64)start_routine;
    volatile uint64 a = (uint64)arg;

    __asm__ volatile("mv a0, %0" : : "r" (code));
    __asm__ volatile("mv a1, %0" : : "r" (hand));
    __asm__ volatile("mv a2, %0" : : "r" (start));
    __asm__ volatile("mv a3, %0" : : "r" (a));

    __asm__ volatile ("ecall");


    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;


}

int thread_exit (){
    uint64 arg0 = 0x12;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));

    __asm__ volatile ("ecall");

    return 0;
}


void thread_dispatch (){
    uint64 arg0 = 0x13;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));

    __asm__ volatile ("ecall");


}

class KSemaphore;
typedef KSemaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
){
//    args myArgs;
//    myArgs.a0 = 0x21;
//    myArgs.a1 = (uint64)handle;
//    myArgs.a2 = (uint64)init;
//
//    syscall(&myArgs);
//
    volatile uint64 arg0 = 0x21;
    volatile uint64 arg1 = (uint64)handle;
    volatile uint64 arg2 = (uint64)init;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    __asm__ volatile("mv a2, %0" : : "r" (arg2));

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_close (sem_t handle){
//    args myArgs;
//    myArgs.a0 = 0x22;
//    myArgs.a1 = (uint64)handle;

    volatile uint64 arg0 = 0x22;
    volatile uint64 arg1 = (uint64)handle;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));

    __asm__ volatile ("ecall");

    return 0;
}

int sem_wait (sem_t id){
    volatile uint64 arg0 = 0x23;
    volatile uint64 arg1 = (uint64)id;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_signal (sem_t id){
    volatile uint64 arg0 = 0x24;
    volatile uint64 arg1 = (uint64)id;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));

    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;
}

const int EOF = -1;
char getc (){
//    args myArgs;
//    myArgs.a0 = 0x41;
//
//    syscall(&myArgs);

     uint64 arg0 = 0x41;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));

    __asm__ volatile ("ecall");

    char c;
    __asm__ volatile("mv %0, a0" : "=r" (c));
    return c;

}

void putc (char c){
     uint64 arg0 = 0x42;
    volatile uint64 arg1 = (uint64)c;

    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));

    __asm__ volatile ("ecall");

}

#endif //PROJECT_BASE_V1_1_SYSCALL_C_CPP

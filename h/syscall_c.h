//
// Created by os on 6/19/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "Riscv.hpp"
#include "../src/_new.cpp"

extern "C" void supervisorTrap();

struct args{
    uint64 a0;
    uint64 a1;
    uint64 a2;
    uint64 a3;
    uint64 a4;
    uint64 a5;
    uint64 a6;
    uint64 a7;
};

void syscall(void* arg){
    //should prepare arguments in registers
    //should call interrupt routine with ecall

    args* ar = (args*)arg;
    uint64 arg0 = ar->a0;
    uint64 arg1 = ar->a1;
    uint64 arg2 = ar->a2;
    uint64 arg3 = ar->a3;
    uint64 arg4 = ar->a4;
    uint64 arg5 = ar->a5;
    uint64 arg6 = ar->a6;
    uint64 arg7 = ar->a7;

    asm volatile("mv a0, %0" : : "r" (arg0));
    asm volatile("mv a1, %0" : : "r" (arg1));
    asm volatile("mv a2, %0" : : "r" (arg2));
    asm volatile("mv a3, %0" : : "r" (arg3));
    asm volatile("mv a4, %0" : : "r" (arg4));
    asm volatile("mv a5, %0" : : "r" (arg5));
    asm volatile("mv a6, %0" : : "r" (arg6));
    asm volatile("mv a7, %0" : : "r" (arg7));

    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");


}

void* mem_alloc (size_t size){
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = new args();
    arg->a0=0x01;

    size_t blocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    arg->a1=blocks;
    syscall(arg);
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return (void*)ret;
}

int mem_free (void* p);



#endif //PROJECT_BASE_V1_1_SYSCALL_C_H

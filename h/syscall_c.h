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

void syscall(void* args){
    //should prepare arguments in registers
    //should call interrupt routine with ecall



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
    if(size%MEM_BLOCK_SIZE!=0)blocks+1;
    arg->a1=blocks;
    syscall(arg);
}

int mem_free (void* p);



#endif //PROJECT_BASE_V1_1_SYSCALL_C_H

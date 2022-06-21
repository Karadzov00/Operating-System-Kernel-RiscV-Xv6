//
// Created by os on 6/19/22.
//

#ifndef PROJECT_BASE_V1_1_SYSCALL_C_H
#define PROJECT_BASE_V1_1_SYSCALL_C_H

#include "Riscv.hpp"



extern "C" void supervisorTrap();

struct args{
    uint64 a0;
    uint64 a1;
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    uint64 arg1 = arg->a1;



    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    __asm__ volatile("mv a1, %0" : : "r" (arg1));


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

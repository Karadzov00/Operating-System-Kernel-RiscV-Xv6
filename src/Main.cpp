//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"


//extern void userMain1();
extern void userMain2();

int main(){

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);

//    void* t1;
//    t1 = mem_alloc(300);
//    if(t1!=nullptr){
//        printString("allocated \n");
//    }
//    if(!mem_free(t1)){
//        printString("successfully freed \n");
//    }
//    else{
//        printString("not freed \n");
//    }


    //memory leak without delete
//    for (auto &thread: threads)
//    {
//        delete thread;
//    }


    userMain2();


    return 0;
}

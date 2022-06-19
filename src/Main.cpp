//
// Created by os on 6/18/22.
//

#include "../h/Riscv.hpp"
#include "../h/List.hpp"

extern "C" void supervisorTrap();

int main(){

    Riscv::w_stvec((uint64)&supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");


    return 0;
}

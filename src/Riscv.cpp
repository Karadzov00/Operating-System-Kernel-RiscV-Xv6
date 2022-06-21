//
// Created by os on 6/17/22.
//

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"


void Riscv::syscallHandler() {
    //read syscall code from register a0

    uint64 arg0;
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    if(arg0== 0x01 ){
        //mem_alloc
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::mem_free((void*)arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

}

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap(){
    uint scause = r_scause();

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 sepc = r_sepc() + 4;

        //jump to syscall handler
        syscallHandler();

        w_sepc(sepc);

    }
    else if (scause == 0x8000000000000001UL){
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)

    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)

    }
    else{
        // unexpected trap cause
        //print(scause)
        //print(sepc)
        //print(stval) //trap value

    }

}


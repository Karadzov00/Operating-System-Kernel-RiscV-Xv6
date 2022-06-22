//
// Created by os on 6/17/22.
//

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    //read syscall code from register a0

    uint64 arg0;
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    if(arg0== 0x01 ){
        //kmem_alloc
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //read pointer to free from a1 and move it to arg1 local variable
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable

        //make new thread object using overloaded new operator for that function
//        _thread* t = new _thread((void (*)())arg2, DEFAULT_TIME_SLICE);
//        _thread** handle = &t;


    }

}

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");  //exit privileged regime
}

void Riscv::handleSupervisorTrap(){
    uint scause = r_scause();
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 sepc = r_sepc() + 4;
        uint64 sstatus = r_sstatus();

        if(a0reg==0x04){
            _thread::timeSliceCounter = 0;
            _thread::dispatch();
        }
        else {
            //jump to syscall handler
            syscallHandler();
        }

        w_sstatus(sstatus);
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


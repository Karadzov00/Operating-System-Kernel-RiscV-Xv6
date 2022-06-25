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

    else if(arg0==0x12){
        _thread::running->finished=true;
        _thread::dispatch();


    }
    else if(arg0 == 0x13){
        _thread::dispatch();

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

        //call from yield
        if(a0reg==0x04){
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();

            _thread::timeSliceCounter = 0;
            _thread::dispatch();

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else if(a0reg==0x11){
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();


            _thread::thread_t *arg1;
            _thread::Body arg2;
            uint64 arg3;
            uint64 *arg4;

            __asm__ volatile("ld a1, 11*8(fp)"); //a1
            __asm__ volatile("ld a2, 12*8(fp)"); //a2
            __asm__ volatile("ld a3, 13*8(fp)"); //a3
            __asm__ volatile("ld a4, 14*8(fp)"); //a4


            __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
            __asm__ volatile("mv %0, a2" : "=r" (arg2));    //start routine
            __asm__ volatile("mv %0, a3" : "=r" (arg3));    //argument of start routine
            __asm__ volatile("mv %0, a4" : "=r" (arg4));    //stack

            //make new thread object using overloaded new operator for that function
            _thread* t = _thread::createThread(arg2,  (void*)arg3);    //t je thread_t
            *arg1=t;

            uint64 ret;
            if(t!= nullptr)ret=0;
            else ret =-1;


            //return _thread* adress through a0
            __asm__ volatile("mv a0, %0" : : "r" (ret));

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        else {
            uint64 sepc = r_sepc() + 4;
            uint64 sstatus = r_sstatus();

            //jump to syscall handler
            syscallHandler();

            w_sstatus(sstatus);
            w_sepc(sepc);
        }



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


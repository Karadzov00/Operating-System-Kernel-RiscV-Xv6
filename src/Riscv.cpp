//
// Created by os on 6/17/22.
//

#include "../h/Riscv.hpp"

void Riscv::handleSupervisorTrap(){
    uint scause = r_scause();
    if (scause == 0x0000000000000008UL ){
        // interrupt: no; cause code: environment call from U-mode(8)

        uint64  sepc = r_sepc() + 4;
        uint64  sstatus = r_sstatus();

        //jump to syscall handler
        syscallHandler();

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if(scause == 0x0000000000000009UL){
        // interrupt: no; cause code: environment call from S-mode(9)
        uint64  sepc = r_sepc() + 4;
        uint64  sstatus = r_sstatus();

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

void Riscv::syscallHandler() {
    //read syscall code from register a0

}

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}
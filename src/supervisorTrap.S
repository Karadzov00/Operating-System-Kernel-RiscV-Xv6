.extern _ZN5Riscv20handleSupervisorTrapEv

.align 4

.global supervisorTrap
.type supervisorTrap, @function
supervisorTrap:


        call _ZN5Riscv20handleSupervisorTrapEv



        sret

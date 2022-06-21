
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5c813103          	ld	sp,1480(sp) # 800045c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6b4010ef          	jal	ra,800016d0 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:

.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
        # push all registers to stack
        addi sp, sp, -248
    80001000:	f0810113          	addi	sp,sp,-248
        .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        sd x\index, \index * 8(sp)
        .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04b13c23          	sd	a1,88(sp)
    80001030:	06c13023          	sd	a2,96(sp)
    80001034:	06d13423          	sd	a3,104(sp)
    80001038:	06e13823          	sd	a4,112(sp)
    8000103c:	06f13c23          	sd	a5,120(sp)
    80001040:	09013023          	sd	a6,128(sp)
    80001044:	09113423          	sd	a7,136(sp)
    80001048:	09213823          	sd	s2,144(sp)
    8000104c:	09313c23          	sd	s3,152(sp)
    80001050:	0b413023          	sd	s4,160(sp)
    80001054:	0b513423          	sd	s5,168(sp)
    80001058:	0b613823          	sd	s6,176(sp)
    8000105c:	0b713c23          	sd	s7,184(sp)
    80001060:	0d813023          	sd	s8,192(sp)
    80001064:	0d913423          	sd	s9,200(sp)
    80001068:	0da13823          	sd	s10,208(sp)
    8000106c:	0db13c23          	sd	s11,216(sp)
    80001070:	0fc13023          	sd	t3,224(sp)
    80001074:	0fd13423          	sd	t4,232(sp)
    80001078:	0fe13823          	sd	t5,240(sp)
    8000107c:	0ff13c23          	sd	t6,248(sp)

        call _ZN5Riscv20handleSupervisorTrapEv
    80001080:	32c000ef          	jal	ra,800013ac <_ZN5Riscv20handleSupervisorTrapEv>

        # pop all registers from stack
        .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    80001084:	00013003          	ld	zero,0(sp)
    80001088:	00813083          	ld	ra,8(sp)
    8000108c:	01013103          	ld	sp,16(sp)
    80001090:	01813183          	ld	gp,24(sp)
    80001094:	02013203          	ld	tp,32(sp)
    80001098:	02813283          	ld	t0,40(sp)
    8000109c:	03013303          	ld	t1,48(sp)
    800010a0:	03813383          	ld	t2,56(sp)
    800010a4:	04013403          	ld	s0,64(sp)
    800010a8:	04813483          	ld	s1,72(sp)
    800010ac:	05813583          	ld	a1,88(sp)
    800010b0:	06013603          	ld	a2,96(sp)
    800010b4:	06813683          	ld	a3,104(sp)
    800010b8:	07013703          	ld	a4,112(sp)
    800010bc:	07813783          	ld	a5,120(sp)
    800010c0:	08013803          	ld	a6,128(sp)
    800010c4:	08813883          	ld	a7,136(sp)
    800010c8:	09013903          	ld	s2,144(sp)
    800010cc:	09813983          	ld	s3,152(sp)
    800010d0:	0a013a03          	ld	s4,160(sp)
    800010d4:	0a813a83          	ld	s5,168(sp)
    800010d8:	0b013b03          	ld	s6,176(sp)
    800010dc:	0b813b83          	ld	s7,184(sp)
    800010e0:	0c013c03          	ld	s8,192(sp)
    800010e4:	0c813c83          	ld	s9,200(sp)
    800010e8:	0d013d03          	ld	s10,208(sp)
    800010ec:	0d813d83          	ld	s11,216(sp)
    800010f0:	0e013e03          	ld	t3,224(sp)
    800010f4:	0e813e83          	ld	t4,232(sp)
    800010f8:	0f013f03          	ld	t5,240(sp)
    800010fc:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 248
    80001100:	0f810113          	addi	sp,sp,248

        sret
    80001104:	10200073          	sret
	...

0000000080001110 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    8000111c:	00053703          	ld	a4,0(a0) # 1000 <_entry-0x7ffff000>
    uint64 arg1 = arg->a1;
    80001120:	00853783          	ld	a5,8(a0)



    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001124:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001128:	00078593          	mv	a1,a5


//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    8000112c:	00000073          	ecall


}
    80001130:	00813403          	ld	s0,8(sp)
    80001134:	01010113          	addi	sp,sp,16
    80001138:	00008067          	ret

000000008000113c <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    8000113c:	fe010113          	addi	sp,sp,-32
    80001140:	00113c23          	sd	ra,24(sp)
    80001144:	00813823          	sd	s0,16(sp)
    80001148:	00913423          	sd	s1,8(sp)
    8000114c:	02010413          	addi	s0,sp,32
    80001150:	00050493          	mv	s1,a0
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = new args();
    80001154:	02000513          	li	a0,32
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	138080e7          	jalr	312(ra) # 80001290 <_Znwm>
    80001160:	00053823          	sd	zero,16(a0)
    80001164:	00053c23          	sd	zero,24(a0)
    arg->a0=0x01;
    80001168:	00100793          	li	a5,1
    8000116c:	00f53023          	sd	a5,0(a0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001170:	0064d793          	srli	a5,s1,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001174:	03f4f493          	andi	s1,s1,63
    80001178:	00048463          	beqz	s1,80001180 <_Z9mem_allocm+0x44>
    8000117c:	00178793          	addi	a5,a5,1
    arg->a1=blocks;
    80001180:	00f53423          	sd	a5,8(a0)

    syscall(arg);
    80001184:	00000097          	auipc	ra,0x0
    80001188:	f8c080e7          	jalr	-116(ra) # 80001110 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000118c:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001190:	01813083          	ld	ra,24(sp)
    80001194:	01013403          	ld	s0,16(sp)
    80001198:	00813483          	ld	s1,8(sp)
    8000119c:	02010113          	addi	sp,sp,32
    800011a0:	00008067          	ret

00000000800011a4 <_Z8mem_freePv>:

int mem_free (void* p){
    800011a4:	fe010113          	addi	sp,sp,-32
    800011a8:	00113c23          	sd	ra,24(sp)
    800011ac:	00813823          	sd	s0,16(sp)
    800011b0:	00913423          	sd	s1,8(sp)
    800011b4:	02010413          	addi	s0,sp,32
    800011b8:	00050493          	mv	s1,a0
    args* arg = new args();
    800011bc:	02000513          	li	a0,32
    800011c0:	00000097          	auipc	ra,0x0
    800011c4:	0d0080e7          	jalr	208(ra) # 80001290 <_Znwm>
    800011c8:	00053823          	sd	zero,16(a0)
    800011cc:	00053c23          	sd	zero,24(a0)
    arg->a0=0x02;
    800011d0:	00200713          	li	a4,2
    800011d4:	00e53023          	sd	a4,0(a0)
    arg->a1=(uint64)p;
    800011d8:	00953423          	sd	s1,8(a0)

    syscall(arg);
    800011dc:	00000097          	auipc	ra,0x0
    800011e0:	f34080e7          	jalr	-204(ra) # 80001110 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011e4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800011e8:	0005051b          	sext.w	a0,a0
    800011ec:	01813083          	ld	ra,24(sp)
    800011f0:	01013403          	ld	s0,16(sp)
    800011f4:	00813483          	ld	s1,8(sp)
    800011f8:	02010113          	addi	sp,sp,32
    800011fc:	00008067          	ret

0000000080001200 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"



int main(){
    80001200:	fe010113          	addi	sp,sp,-32
    80001204:	00113c23          	sd	ra,24(sp)
    80001208:	00813823          	sd	s0,16(sp)
    8000120c:	00913423          	sd	s1,8(sp)
    80001210:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001214:	00003797          	auipc	a5,0x3
    80001218:	3ac7b783          	ld	a5,940(a5) # 800045c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000121c:	10579073          	csrw	stvec,a5

    void* ptr;
    ptr = mem_alloc(300);
    80001220:	12c00513          	li	a0,300
    80001224:	00000097          	auipc	ra,0x0
    80001228:	f18080e7          	jalr	-232(ra) # 8000113c <_Z9mem_allocm>
    8000122c:	00050493          	mv	s1,a0
    if(ptr!=nullptr){
    80001230:	00050a63          	beqz	a0,80001244 <main+0x44>
        printString("allocated \n");
    80001234:	00003517          	auipc	a0,0x3
    80001238:	dcc50513          	addi	a0,a0,-564 # 80004000 <kvmincrease+0x530>
    8000123c:	00000097          	auipc	ra,0x0
    80001240:	220080e7          	jalr	544(ra) # 8000145c <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    80001244:	00048513          	mv	a0,s1
    80001248:	00000097          	auipc	ra,0x0
    8000124c:	f5c080e7          	jalr	-164(ra) # 800011a4 <_Z8mem_freePv>
    80001250:	02051663          	bnez	a0,8000127c <main+0x7c>
        printString("successfully freed \n");
    80001254:	00003517          	auipc	a0,0x3
    80001258:	dbc50513          	addi	a0,a0,-580 # 80004010 <kvmincrease+0x540>
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	200080e7          	jalr	512(ra) # 8000145c <_Z11printStringPKc>
    }
    else{
        printString("not freed \n");
    }
    return 0;
}
    80001264:	00000513          	li	a0,0
    80001268:	01813083          	ld	ra,24(sp)
    8000126c:	01013403          	ld	s0,16(sp)
    80001270:	00813483          	ld	s1,8(sp)
    80001274:	02010113          	addi	sp,sp,32
    80001278:	00008067          	ret
        printString("not freed \n");
    8000127c:	00003517          	auipc	a0,0x3
    80001280:	dac50513          	addi	a0,a0,-596 # 80004028 <kvmincrease+0x558>
    80001284:	00000097          	auipc	ra,0x0
    80001288:	1d8080e7          	jalr	472(ra) # 8000145c <_Z11printStringPKc>
    8000128c:	fd9ff06f          	j	80001264 <main+0x64>

0000000080001290 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00113423          	sd	ra,8(sp)
    80001298:	00813023          	sd	s0,0(sp)
    8000129c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	16c080e7          	jalr	364(ra) # 8000140c <_ZN15MemoryAllocator9mem_allocEm>
}
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	00013403          	ld	s0,0(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Znam>:

void* operator new[](size_t n){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00113423          	sd	ra,8(sp)
    800012c0:	00813023          	sd	s0,0(sp)
    800012c4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	144080e7          	jalr	324(ra) # 8000140c <_ZN15MemoryAllocator9mem_allocEm>
}
    800012d0:	00813083          	ld	ra,8(sp)
    800012d4:	00013403          	ld	s0,0(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_ZdlPv>:

void operator delete(void* p) noexcept{
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00113423          	sd	ra,8(sp)
    800012e8:	00813023          	sd	s0,0(sp)
    800012ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800012f0:	00000097          	auipc	ra,0x0
    800012f4:	144080e7          	jalr	324(ra) # 80001434 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800012f8:	00813083          	ld	ra,8(sp)
    800012fc:	00013403          	ld	s0,0(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00113423          	sd	ra,8(sp)
    80001310:	00813023          	sd	s0,0(sp)
    80001314:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	11c080e7          	jalr	284(ra) # 80001434 <_ZN15MemoryAllocator8mem_freeEPv>

}
    80001320:	00813083          	ld	ra,8(sp)
    80001324:	00013403          	ld	s0,0(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <_ZN5Riscv14syscallHandlerEv>:

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"


void Riscv::syscallHandler() {
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00113423          	sd	ra,8(sp)
    80001338:	00813023          	sd	s0,0(sp)
    8000133c:	01010413          	addi	s0,sp,16
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001340:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001344:	00100713          	li	a4,1
    80001348:	00e78e63          	beq	a5,a4,80001364 <_ZN5Riscv14syscallHandlerEv+0x34>
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    8000134c:	00200713          	li	a4,2
    80001350:	02e78463          	beq	a5,a4,80001378 <_ZN5Riscv14syscallHandlerEv+0x48>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::mem_free((void*)arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

}
    80001354:	00813083          	ld	ra,8(sp)
    80001358:	00013403          	ld	s0,0(sp)
    8000135c:	01010113          	addi	sp,sp,16
    80001360:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001364:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	0a4080e7          	jalr	164(ra) # 8000140c <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001370:	00050513          	mv	a0,a0
    80001374:	fe1ff06f          	j	80001354 <_ZN5Riscv14syscallHandlerEv+0x24>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001378:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::mem_free((void*)arg1);
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	0b8080e7          	jalr	184(ra) # 80001434 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001384:	00050513          	mv	a0,a0
}
    80001388:	fcdff06f          	j	80001354 <_ZN5Riscv14syscallHandlerEv+0x24>

000000008000138c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00813423          	sd	s0,8(sp)
    80001394:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001398:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000139c:	10200073          	sret
}
    800013a0:	00813403          	ld	s0,8(sp)
    800013a4:	01010113          	addi	sp,sp,16
    800013a8:	00008067          	ret

00000000800013ac <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800013ac:	fd010113          	addi	sp,sp,-48
    800013b0:	02113423          	sd	ra,40(sp)
    800013b4:	02813023          	sd	s0,32(sp)
    800013b8:	00913c23          	sd	s1,24(sp)
    800013bc:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800013c0:	142027f3          	csrr	a5,scause
    800013c4:	fcf43823          	sd	a5,-48(s0)
    return scause;
    800013c8:	fd043783          	ld	a5,-48(s0)
    uint scause = r_scause();

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    800013cc:	ff87879b          	addiw	a5,a5,-8
    800013d0:	00100713          	li	a4,1
    800013d4:	00f77c63          	bgeu	a4,a5,800013ec <_ZN5Riscv20handleSupervisorTrapEv+0x40>
        //print(sepc)
        //print(stval) //trap value

    }

}
    800013d8:	02813083          	ld	ra,40(sp)
    800013dc:	02013403          	ld	s0,32(sp)
    800013e0:	01813483          	ld	s1,24(sp)
    800013e4:	03010113          	addi	sp,sp,48
    800013e8:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800013ec:	141027f3          	csrr	a5,sepc
    800013f0:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800013f4:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    800013f8:	00448493          	addi	s1,s1,4
        syscallHandler();
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	f34080e7          	jalr	-204(ra) # 80001330 <_ZN5Riscv14syscallHandlerEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001404:	14149073          	csrw	sepc,s1
}
    80001408:	fd1ff06f          	j	800013d8 <_ZN5Riscv20handleSupervisorTrapEv+0x2c>

000000008000140c <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00113423          	sd	ra,8(sp)
    80001414:	00813023          	sd	s0,0(sp)
    80001418:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    8000141c:	00002097          	auipc	ra,0x2
    80001420:	43c080e7          	jalr	1084(ra) # 80003858 <__mem_alloc>
}
    80001424:	00813083          	ld	ra,8(sp)
    80001428:	00013403          	ld	s0,0(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001444:	00002097          	auipc	ra,0x2
    80001448:	348080e7          	jalr	840(ra) # 8000378c <__mem_free>
    8000144c:	00813083          	ld	ra,8(sp)
    80001450:	00013403          	ld	s0,0(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000145c:	fd010113          	addi	sp,sp,-48
    80001460:	02113423          	sd	ra,40(sp)
    80001464:	02813023          	sd	s0,32(sp)
    80001468:	00913c23          	sd	s1,24(sp)
    8000146c:	01213823          	sd	s2,16(sp)
    80001470:	03010413          	addi	s0,sp,48
    80001474:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001478:	100027f3          	csrr	a5,sstatus
    8000147c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001480:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001484:	00200793          	li	a5,2
    80001488:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    8000148c:	0004c503          	lbu	a0,0(s1)
    80001490:	00050a63          	beqz	a0,800014a4 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001494:	00002097          	auipc	ra,0x2
    80001498:	51c080e7          	jalr	1308(ra) # 800039b0 <__putc>
        string++;
    8000149c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800014a0:	fedff06f          	j	8000148c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    800014a4:	0009091b          	sext.w	s2,s2
    800014a8:	00297913          	andi	s2,s2,2
    800014ac:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014b0:	10092073          	csrs	sstatus,s2
}
    800014b4:	02813083          	ld	ra,40(sp)
    800014b8:	02013403          	ld	s0,32(sp)
    800014bc:	01813483          	ld	s1,24(sp)
    800014c0:	01013903          	ld	s2,16(sp)
    800014c4:	03010113          	addi	sp,sp,48
    800014c8:	00008067          	ret

00000000800014cc <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800014cc:	fc010113          	addi	sp,sp,-64
    800014d0:	02113c23          	sd	ra,56(sp)
    800014d4:	02813823          	sd	s0,48(sp)
    800014d8:	02913423          	sd	s1,40(sp)
    800014dc:	03213023          	sd	s2,32(sp)
    800014e0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800014e4:	100027f3          	csrr	a5,sstatus
    800014e8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800014ec:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800014f0:	00200793          	li	a5,2
    800014f4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800014f8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800014fc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001500:	00a00613          	li	a2,10
    80001504:	02c5773b          	remuw	a4,a0,a2
    80001508:	02071693          	slli	a3,a4,0x20
    8000150c:	0206d693          	srli	a3,a3,0x20
    80001510:	00003717          	auipc	a4,0x3
    80001514:	b2870713          	addi	a4,a4,-1240 # 80004038 <_ZZ12printIntegermE6digits>
    80001518:	00d70733          	add	a4,a4,a3
    8000151c:	00074703          	lbu	a4,0(a4)
    80001520:	fe040693          	addi	a3,s0,-32
    80001524:	009687b3          	add	a5,a3,s1
    80001528:	0014849b          	addiw	s1,s1,1
    8000152c:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001530:	0005071b          	sext.w	a4,a0
    80001534:	02c5553b          	divuw	a0,a0,a2
    80001538:	00900793          	li	a5,9
    8000153c:	fce7e2e3          	bltu	a5,a4,80001500 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001540:	fff4849b          	addiw	s1,s1,-1
    80001544:	0004ce63          	bltz	s1,80001560 <_Z12printIntegerm+0x94>
    80001548:	fe040793          	addi	a5,s0,-32
    8000154c:	009787b3          	add	a5,a5,s1
    80001550:	ff07c503          	lbu	a0,-16(a5)
    80001554:	00002097          	auipc	ra,0x2
    80001558:	45c080e7          	jalr	1116(ra) # 800039b0 <__putc>
    8000155c:	fe5ff06f          	j	80001540 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001560:	0009091b          	sext.w	s2,s2
    80001564:	00297913          	andi	s2,s2,2
    80001568:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000156c:	10092073          	csrs	sstatus,s2
}
    80001570:	03813083          	ld	ra,56(sp)
    80001574:	03013403          	ld	s0,48(sp)
    80001578:	02813483          	ld	s1,40(sp)
    8000157c:	02013903          	ld	s2,32(sp)
    80001580:	04010113          	addi	sp,sp,64
    80001584:	00008067          	ret

0000000080001588 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00813423          	sd	s0,8(sp)
    80001590:	01010413          	addi	s0,sp,16
    80001594:	00100793          	li	a5,1
    80001598:	00f50863          	beq	a0,a5,800015a8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000159c:	00813403          	ld	s0,8(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret
    800015a8:	000107b7          	lui	a5,0x10
    800015ac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015b0:	fef596e3          	bne	a1,a5,8000159c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015b4:	00003797          	auipc	a5,0x3
    800015b8:	06c78793          	addi	a5,a5,108 # 80004620 <_ZN9Scheduler16readyThreadQueueE>
    800015bc:	0007b023          	sd	zero,0(a5)
    800015c0:	0007b423          	sd	zero,8(a5)
    800015c4:	fd9ff06f          	j	8000159c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800015c8 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800015c8:	fe010113          	addi	sp,sp,-32
    800015cc:	00113c23          	sd	ra,24(sp)
    800015d0:	00813823          	sd	s0,16(sp)
    800015d4:	00913423          	sd	s1,8(sp)
    800015d8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015dc:	00003517          	auipc	a0,0x3
    800015e0:	04453503          	ld	a0,68(a0) # 80004620 <_ZN9Scheduler16readyThreadQueueE>
    800015e4:	04050263          	beqz	a0,80001628 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800015e8:	00853783          	ld	a5,8(a0)
    800015ec:	00003717          	auipc	a4,0x3
    800015f0:	02f73a23          	sd	a5,52(a4) # 80004620 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800015f4:	02078463          	beqz	a5,8000161c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800015f8:	00053483          	ld	s1,0(a0)
        delete elem;
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	ce4080e7          	jalr	-796(ra) # 800012e0 <_ZdlPv>
}
    80001604:	00048513          	mv	a0,s1
    80001608:	01813083          	ld	ra,24(sp)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	00813483          	ld	s1,8(sp)
    80001614:	02010113          	addi	sp,sp,32
    80001618:	00008067          	ret
        if (!head) { tail = 0; }
    8000161c:	00003797          	auipc	a5,0x3
    80001620:	0007b623          	sd	zero,12(a5) # 80004628 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001624:	fd5ff06f          	j	800015f8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001628:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000162c:	fd9ff06f          	j	80001604 <_ZN9Scheduler3getEv+0x3c>

0000000080001630 <_ZN9Scheduler3putEP3TCB>:
{
    80001630:	fe010113          	addi	sp,sp,-32
    80001634:	00113c23          	sd	ra,24(sp)
    80001638:	00813823          	sd	s0,16(sp)
    8000163c:	00913423          	sd	s1,8(sp)
    80001640:	02010413          	addi	s0,sp,32
    80001644:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001648:	01000513          	li	a0,16
    8000164c:	00000097          	auipc	ra,0x0
    80001650:	c44080e7          	jalr	-956(ra) # 80001290 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001654:	00953023          	sd	s1,0(a0)
    80001658:	00053423          	sd	zero,8(a0)
        if (tail)
    8000165c:	00003797          	auipc	a5,0x3
    80001660:	fcc7b783          	ld	a5,-52(a5) # 80004628 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001664:	02078263          	beqz	a5,80001688 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001668:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000166c:	00003797          	auipc	a5,0x3
    80001670:	faa7be23          	sd	a0,-68(a5) # 80004628 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001674:	01813083          	ld	ra,24(sp)
    80001678:	01013403          	ld	s0,16(sp)
    8000167c:	00813483          	ld	s1,8(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret
            head = tail = elem;
    80001688:	00003797          	auipc	a5,0x3
    8000168c:	f9878793          	addi	a5,a5,-104 # 80004620 <_ZN9Scheduler16readyThreadQueueE>
    80001690:	00a7b423          	sd	a0,8(a5)
    80001694:	00a7b023          	sd	a0,0(a5)
    80001698:	fddff06f          	j	80001674 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000169c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00113423          	sd	ra,8(sp)
    800016a4:	00813023          	sd	s0,0(sp)
    800016a8:	01010413          	addi	s0,sp,16
    800016ac:	000105b7          	lui	a1,0x10
    800016b0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016b4:	00100513          	li	a0,1
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	ed0080e7          	jalr	-304(ra) # 80001588 <_Z41__static_initialization_and_destruction_0ii>
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret

00000000800016d0 <start>:
    800016d0:	ff010113          	addi	sp,sp,-16
    800016d4:	00813423          	sd	s0,8(sp)
    800016d8:	01010413          	addi	s0,sp,16
    800016dc:	300027f3          	csrr	a5,mstatus
    800016e0:	ffffe737          	lui	a4,0xffffe
    800016e4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f5f>
    800016e8:	00e7f7b3          	and	a5,a5,a4
    800016ec:	00001737          	lui	a4,0x1
    800016f0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016f4:	00e7e7b3          	or	a5,a5,a4
    800016f8:	30079073          	csrw	mstatus,a5
    800016fc:	00000797          	auipc	a5,0x0
    80001700:	16078793          	addi	a5,a5,352 # 8000185c <system_main>
    80001704:	34179073          	csrw	mepc,a5
    80001708:	00000793          	li	a5,0
    8000170c:	18079073          	csrw	satp,a5
    80001710:	000107b7          	lui	a5,0x10
    80001714:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001718:	30279073          	csrw	medeleg,a5
    8000171c:	30379073          	csrw	mideleg,a5
    80001720:	104027f3          	csrr	a5,sie
    80001724:	2227e793          	ori	a5,a5,546
    80001728:	10479073          	csrw	sie,a5
    8000172c:	fff00793          	li	a5,-1
    80001730:	00a7d793          	srli	a5,a5,0xa
    80001734:	3b079073          	csrw	pmpaddr0,a5
    80001738:	00f00793          	li	a5,15
    8000173c:	3a079073          	csrw	pmpcfg0,a5
    80001740:	f14027f3          	csrr	a5,mhartid
    80001744:	0200c737          	lui	a4,0x200c
    80001748:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000174c:	0007869b          	sext.w	a3,a5
    80001750:	00269713          	slli	a4,a3,0x2
    80001754:	000f4637          	lui	a2,0xf4
    80001758:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000175c:	00d70733          	add	a4,a4,a3
    80001760:	0037979b          	slliw	a5,a5,0x3
    80001764:	020046b7          	lui	a3,0x2004
    80001768:	00d787b3          	add	a5,a5,a3
    8000176c:	00c585b3          	add	a1,a1,a2
    80001770:	00371693          	slli	a3,a4,0x3
    80001774:	00003717          	auipc	a4,0x3
    80001778:	ebc70713          	addi	a4,a4,-324 # 80004630 <timer_scratch>
    8000177c:	00b7b023          	sd	a1,0(a5)
    80001780:	00d70733          	add	a4,a4,a3
    80001784:	00f73c23          	sd	a5,24(a4)
    80001788:	02c73023          	sd	a2,32(a4)
    8000178c:	34071073          	csrw	mscratch,a4
    80001790:	00000797          	auipc	a5,0x0
    80001794:	6e078793          	addi	a5,a5,1760 # 80001e70 <timervec>
    80001798:	30579073          	csrw	mtvec,a5
    8000179c:	300027f3          	csrr	a5,mstatus
    800017a0:	0087e793          	ori	a5,a5,8
    800017a4:	30079073          	csrw	mstatus,a5
    800017a8:	304027f3          	csrr	a5,mie
    800017ac:	0807e793          	ori	a5,a5,128
    800017b0:	30479073          	csrw	mie,a5
    800017b4:	f14027f3          	csrr	a5,mhartid
    800017b8:	0007879b          	sext.w	a5,a5
    800017bc:	00078213          	mv	tp,a5
    800017c0:	30200073          	mret
    800017c4:	00813403          	ld	s0,8(sp)
    800017c8:	01010113          	addi	sp,sp,16
    800017cc:	00008067          	ret

00000000800017d0 <timerinit>:
    800017d0:	ff010113          	addi	sp,sp,-16
    800017d4:	00813423          	sd	s0,8(sp)
    800017d8:	01010413          	addi	s0,sp,16
    800017dc:	f14027f3          	csrr	a5,mhartid
    800017e0:	0200c737          	lui	a4,0x200c
    800017e4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800017e8:	0007869b          	sext.w	a3,a5
    800017ec:	00269713          	slli	a4,a3,0x2
    800017f0:	000f4637          	lui	a2,0xf4
    800017f4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017f8:	00d70733          	add	a4,a4,a3
    800017fc:	0037979b          	slliw	a5,a5,0x3
    80001800:	020046b7          	lui	a3,0x2004
    80001804:	00d787b3          	add	a5,a5,a3
    80001808:	00c585b3          	add	a1,a1,a2
    8000180c:	00371693          	slli	a3,a4,0x3
    80001810:	00003717          	auipc	a4,0x3
    80001814:	e2070713          	addi	a4,a4,-480 # 80004630 <timer_scratch>
    80001818:	00b7b023          	sd	a1,0(a5)
    8000181c:	00d70733          	add	a4,a4,a3
    80001820:	00f73c23          	sd	a5,24(a4)
    80001824:	02c73023          	sd	a2,32(a4)
    80001828:	34071073          	csrw	mscratch,a4
    8000182c:	00000797          	auipc	a5,0x0
    80001830:	64478793          	addi	a5,a5,1604 # 80001e70 <timervec>
    80001834:	30579073          	csrw	mtvec,a5
    80001838:	300027f3          	csrr	a5,mstatus
    8000183c:	0087e793          	ori	a5,a5,8
    80001840:	30079073          	csrw	mstatus,a5
    80001844:	304027f3          	csrr	a5,mie
    80001848:	0807e793          	ori	a5,a5,128
    8000184c:	30479073          	csrw	mie,a5
    80001850:	00813403          	ld	s0,8(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <system_main>:
    8000185c:	fe010113          	addi	sp,sp,-32
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	00113c23          	sd	ra,24(sp)
    8000186c:	02010413          	addi	s0,sp,32
    80001870:	00000097          	auipc	ra,0x0
    80001874:	0c4080e7          	jalr	196(ra) # 80001934 <cpuid>
    80001878:	00003497          	auipc	s1,0x3
    8000187c:	d7848493          	addi	s1,s1,-648 # 800045f0 <started>
    80001880:	02050263          	beqz	a0,800018a4 <system_main+0x48>
    80001884:	0004a783          	lw	a5,0(s1)
    80001888:	0007879b          	sext.w	a5,a5
    8000188c:	fe078ce3          	beqz	a5,80001884 <system_main+0x28>
    80001890:	0ff0000f          	fence
    80001894:	00002517          	auipc	a0,0x2
    80001898:	7e450513          	addi	a0,a0,2020 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	a70080e7          	jalr	-1424(ra) # 8000230c <panic>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	9c4080e7          	jalr	-1596(ra) # 80002268 <consoleinit>
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	150080e7          	jalr	336(ra) # 800029fc <printfinit>
    800018b4:	00003517          	auipc	a0,0x3
    800018b8:	8a450513          	addi	a0,a0,-1884 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	aac080e7          	jalr	-1364(ra) # 80002368 <__printf>
    800018c4:	00002517          	auipc	a0,0x2
    800018c8:	78450513          	addi	a0,a0,1924 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	a9c080e7          	jalr	-1380(ra) # 80002368 <__printf>
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	88450513          	addi	a0,a0,-1916 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	a8c080e7          	jalr	-1396(ra) # 80002368 <__printf>
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	4a4080e7          	jalr	1188(ra) # 80002d88 <kinit>
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	148080e7          	jalr	328(ra) # 80001a34 <trapinit>
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	16c080e7          	jalr	364(ra) # 80001a60 <trapinithart>
    800018fc:	00000097          	auipc	ra,0x0
    80001900:	5b4080e7          	jalr	1460(ra) # 80001eb0 <plicinit>
    80001904:	00000097          	auipc	ra,0x0
    80001908:	5d4080e7          	jalr	1492(ra) # 80001ed8 <plicinithart>
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	078080e7          	jalr	120(ra) # 80001984 <userinit>
    80001914:	0ff0000f          	fence
    80001918:	00100793          	li	a5,1
    8000191c:	00002517          	auipc	a0,0x2
    80001920:	74450513          	addi	a0,a0,1860 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001924:	00f4a023          	sw	a5,0(s1)
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	a40080e7          	jalr	-1472(ra) # 80002368 <__printf>
    80001930:	0000006f          	j	80001930 <system_main+0xd4>

0000000080001934 <cpuid>:
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    80001940:	00020513          	mv	a0,tp
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	0005051b          	sext.w	a0,a0
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret

0000000080001954 <mycpu>:
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813423          	sd	s0,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    80001960:	00020793          	mv	a5,tp
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	0007879b          	sext.w	a5,a5
    8000196c:	00779793          	slli	a5,a5,0x7
    80001970:	00004517          	auipc	a0,0x4
    80001974:	cf050513          	addi	a0,a0,-784 # 80005660 <cpus>
    80001978:	00f50533          	add	a0,a0,a5
    8000197c:	01010113          	addi	sp,sp,16
    80001980:	00008067          	ret

0000000080001984 <userinit>:
    80001984:	ff010113          	addi	sp,sp,-16
    80001988:	00813423          	sd	s0,8(sp)
    8000198c:	01010413          	addi	s0,sp,16
    80001990:	00813403          	ld	s0,8(sp)
    80001994:	01010113          	addi	sp,sp,16
    80001998:	00000317          	auipc	t1,0x0
    8000199c:	86830067          	jr	-1944(t1) # 80001200 <main>

00000000800019a0 <either_copyout>:
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	00113423          	sd	ra,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	02051663          	bnez	a0,800019dc <either_copyout+0x3c>
    800019b4:	00058513          	mv	a0,a1
    800019b8:	00060593          	mv	a1,a2
    800019bc:	0006861b          	sext.w	a2,a3
    800019c0:	00002097          	auipc	ra,0x2
    800019c4:	c54080e7          	jalr	-940(ra) # 80003614 <__memmove>
    800019c8:	00813083          	ld	ra,8(sp)
    800019cc:	00013403          	ld	s0,0(sp)
    800019d0:	00000513          	li	a0,0
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret
    800019dc:	00002517          	auipc	a0,0x2
    800019e0:	6c450513          	addi	a0,a0,1732 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	928080e7          	jalr	-1752(ra) # 8000230c <panic>

00000000800019ec <either_copyin>:
    800019ec:	ff010113          	addi	sp,sp,-16
    800019f0:	00813023          	sd	s0,0(sp)
    800019f4:	00113423          	sd	ra,8(sp)
    800019f8:	01010413          	addi	s0,sp,16
    800019fc:	02059463          	bnez	a1,80001a24 <either_copyin+0x38>
    80001a00:	00060593          	mv	a1,a2
    80001a04:	0006861b          	sext.w	a2,a3
    80001a08:	00002097          	auipc	ra,0x2
    80001a0c:	c0c080e7          	jalr	-1012(ra) # 80003614 <__memmove>
    80001a10:	00813083          	ld	ra,8(sp)
    80001a14:	00013403          	ld	s0,0(sp)
    80001a18:	00000513          	li	a0,0
    80001a1c:	01010113          	addi	sp,sp,16
    80001a20:	00008067          	ret
    80001a24:	00002517          	auipc	a0,0x2
    80001a28:	6a450513          	addi	a0,a0,1700 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	8e0080e7          	jalr	-1824(ra) # 8000230c <panic>

0000000080001a34 <trapinit>:
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	00002597          	auipc	a1,0x2
    80001a48:	6ac58593          	addi	a1,a1,1708 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001a4c:	00004517          	auipc	a0,0x4
    80001a50:	c9450513          	addi	a0,a0,-876 # 800056e0 <tickslock>
    80001a54:	01010113          	addi	sp,sp,16
    80001a58:	00001317          	auipc	t1,0x1
    80001a5c:	5c030067          	jr	1472(t1) # 80003018 <initlock>

0000000080001a60 <trapinithart>:
    80001a60:	ff010113          	addi	sp,sp,-16
    80001a64:	00813423          	sd	s0,8(sp)
    80001a68:	01010413          	addi	s0,sp,16
    80001a6c:	00000797          	auipc	a5,0x0
    80001a70:	2f478793          	addi	a5,a5,756 # 80001d60 <kernelvec>
    80001a74:	10579073          	csrw	stvec,a5
    80001a78:	00813403          	ld	s0,8(sp)
    80001a7c:	01010113          	addi	sp,sp,16
    80001a80:	00008067          	ret

0000000080001a84 <usertrap>:
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00813423          	sd	s0,8(sp)
    80001a8c:	01010413          	addi	s0,sp,16
    80001a90:	00813403          	ld	s0,8(sp)
    80001a94:	01010113          	addi	sp,sp,16
    80001a98:	00008067          	ret

0000000080001a9c <usertrapret>:
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00813423          	sd	s0,8(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    80001aa8:	00813403          	ld	s0,8(sp)
    80001aac:	01010113          	addi	sp,sp,16
    80001ab0:	00008067          	ret

0000000080001ab4 <kerneltrap>:
    80001ab4:	fe010113          	addi	sp,sp,-32
    80001ab8:	00813823          	sd	s0,16(sp)
    80001abc:	00113c23          	sd	ra,24(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	02010413          	addi	s0,sp,32
    80001ac8:	142025f3          	csrr	a1,scause
    80001acc:	100027f3          	csrr	a5,sstatus
    80001ad0:	0027f793          	andi	a5,a5,2
    80001ad4:	10079c63          	bnez	a5,80001bec <kerneltrap+0x138>
    80001ad8:	142027f3          	csrr	a5,scause
    80001adc:	0207ce63          	bltz	a5,80001b18 <kerneltrap+0x64>
    80001ae0:	00002517          	auipc	a0,0x2
    80001ae4:	65850513          	addi	a0,a0,1624 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	880080e7          	jalr	-1920(ra) # 80002368 <__printf>
    80001af0:	141025f3          	csrr	a1,sepc
    80001af4:	14302673          	csrr	a2,stval
    80001af8:	00002517          	auipc	a0,0x2
    80001afc:	65050513          	addi	a0,a0,1616 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	868080e7          	jalr	-1944(ra) # 80002368 <__printf>
    80001b08:	00002517          	auipc	a0,0x2
    80001b0c:	65850513          	addi	a0,a0,1624 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	7fc080e7          	jalr	2044(ra) # 8000230c <panic>
    80001b18:	0ff7f713          	andi	a4,a5,255
    80001b1c:	00900693          	li	a3,9
    80001b20:	04d70063          	beq	a4,a3,80001b60 <kerneltrap+0xac>
    80001b24:	fff00713          	li	a4,-1
    80001b28:	03f71713          	slli	a4,a4,0x3f
    80001b2c:	00170713          	addi	a4,a4,1
    80001b30:	fae798e3          	bne	a5,a4,80001ae0 <kerneltrap+0x2c>
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	e00080e7          	jalr	-512(ra) # 80001934 <cpuid>
    80001b3c:	06050663          	beqz	a0,80001ba8 <kerneltrap+0xf4>
    80001b40:	144027f3          	csrr	a5,sip
    80001b44:	ffd7f793          	andi	a5,a5,-3
    80001b48:	14479073          	csrw	sip,a5
    80001b4c:	01813083          	ld	ra,24(sp)
    80001b50:	01013403          	ld	s0,16(sp)
    80001b54:	00813483          	ld	s1,8(sp)
    80001b58:	02010113          	addi	sp,sp,32
    80001b5c:	00008067          	ret
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	3c4080e7          	jalr	964(ra) # 80001f24 <plic_claim>
    80001b68:	00a00793          	li	a5,10
    80001b6c:	00050493          	mv	s1,a0
    80001b70:	06f50863          	beq	a0,a5,80001be0 <kerneltrap+0x12c>
    80001b74:	fc050ce3          	beqz	a0,80001b4c <kerneltrap+0x98>
    80001b78:	00050593          	mv	a1,a0
    80001b7c:	00002517          	auipc	a0,0x2
    80001b80:	59c50513          	addi	a0,a0,1436 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	7e4080e7          	jalr	2020(ra) # 80002368 <__printf>
    80001b8c:	01013403          	ld	s0,16(sp)
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	00048513          	mv	a0,s1
    80001b98:	00813483          	ld	s1,8(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00000317          	auipc	t1,0x0
    80001ba4:	3bc30067          	jr	956(t1) # 80001f5c <plic_complete>
    80001ba8:	00004517          	auipc	a0,0x4
    80001bac:	b3850513          	addi	a0,a0,-1224 # 800056e0 <tickslock>
    80001bb0:	00001097          	auipc	ra,0x1
    80001bb4:	48c080e7          	jalr	1164(ra) # 8000303c <acquire>
    80001bb8:	00003717          	auipc	a4,0x3
    80001bbc:	a3c70713          	addi	a4,a4,-1476 # 800045f4 <ticks>
    80001bc0:	00072783          	lw	a5,0(a4)
    80001bc4:	00004517          	auipc	a0,0x4
    80001bc8:	b1c50513          	addi	a0,a0,-1252 # 800056e0 <tickslock>
    80001bcc:	0017879b          	addiw	a5,a5,1
    80001bd0:	00f72023          	sw	a5,0(a4)
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	534080e7          	jalr	1332(ra) # 80003108 <release>
    80001bdc:	f65ff06f          	j	80001b40 <kerneltrap+0x8c>
    80001be0:	00001097          	auipc	ra,0x1
    80001be4:	090080e7          	jalr	144(ra) # 80002c70 <uartintr>
    80001be8:	fa5ff06f          	j	80001b8c <kerneltrap+0xd8>
    80001bec:	00002517          	auipc	a0,0x2
    80001bf0:	50c50513          	addi	a0,a0,1292 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001bf4:	00000097          	auipc	ra,0x0
    80001bf8:	718080e7          	jalr	1816(ra) # 8000230c <panic>

0000000080001bfc <clockintr>:
    80001bfc:	fe010113          	addi	sp,sp,-32
    80001c00:	00813823          	sd	s0,16(sp)
    80001c04:	00913423          	sd	s1,8(sp)
    80001c08:	00113c23          	sd	ra,24(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    80001c10:	00004497          	auipc	s1,0x4
    80001c14:	ad048493          	addi	s1,s1,-1328 # 800056e0 <tickslock>
    80001c18:	00048513          	mv	a0,s1
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	420080e7          	jalr	1056(ra) # 8000303c <acquire>
    80001c24:	00003717          	auipc	a4,0x3
    80001c28:	9d070713          	addi	a4,a4,-1584 # 800045f4 <ticks>
    80001c2c:	00072783          	lw	a5,0(a4)
    80001c30:	01013403          	ld	s0,16(sp)
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	00048513          	mv	a0,s1
    80001c3c:	0017879b          	addiw	a5,a5,1
    80001c40:	00813483          	ld	s1,8(sp)
    80001c44:	00f72023          	sw	a5,0(a4)
    80001c48:	02010113          	addi	sp,sp,32
    80001c4c:	00001317          	auipc	t1,0x1
    80001c50:	4bc30067          	jr	1212(t1) # 80003108 <release>

0000000080001c54 <devintr>:
    80001c54:	142027f3          	csrr	a5,scause
    80001c58:	00000513          	li	a0,0
    80001c5c:	0007c463          	bltz	a5,80001c64 <devintr+0x10>
    80001c60:	00008067          	ret
    80001c64:	fe010113          	addi	sp,sp,-32
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00113c23          	sd	ra,24(sp)
    80001c70:	00913423          	sd	s1,8(sp)
    80001c74:	02010413          	addi	s0,sp,32
    80001c78:	0ff7f713          	andi	a4,a5,255
    80001c7c:	00900693          	li	a3,9
    80001c80:	04d70c63          	beq	a4,a3,80001cd8 <devintr+0x84>
    80001c84:	fff00713          	li	a4,-1
    80001c88:	03f71713          	slli	a4,a4,0x3f
    80001c8c:	00170713          	addi	a4,a4,1
    80001c90:	00e78c63          	beq	a5,a4,80001ca8 <devintr+0x54>
    80001c94:	01813083          	ld	ra,24(sp)
    80001c98:	01013403          	ld	s0,16(sp)
    80001c9c:	00813483          	ld	s1,8(sp)
    80001ca0:	02010113          	addi	sp,sp,32
    80001ca4:	00008067          	ret
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	c8c080e7          	jalr	-884(ra) # 80001934 <cpuid>
    80001cb0:	06050663          	beqz	a0,80001d1c <devintr+0xc8>
    80001cb4:	144027f3          	csrr	a5,sip
    80001cb8:	ffd7f793          	andi	a5,a5,-3
    80001cbc:	14479073          	csrw	sip,a5
    80001cc0:	01813083          	ld	ra,24(sp)
    80001cc4:	01013403          	ld	s0,16(sp)
    80001cc8:	00813483          	ld	s1,8(sp)
    80001ccc:	00200513          	li	a0,2
    80001cd0:	02010113          	addi	sp,sp,32
    80001cd4:	00008067          	ret
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	24c080e7          	jalr	588(ra) # 80001f24 <plic_claim>
    80001ce0:	00a00793          	li	a5,10
    80001ce4:	00050493          	mv	s1,a0
    80001ce8:	06f50663          	beq	a0,a5,80001d54 <devintr+0x100>
    80001cec:	00100513          	li	a0,1
    80001cf0:	fa0482e3          	beqz	s1,80001c94 <devintr+0x40>
    80001cf4:	00048593          	mv	a1,s1
    80001cf8:	00002517          	auipc	a0,0x2
    80001cfc:	42050513          	addi	a0,a0,1056 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001d00:	00000097          	auipc	ra,0x0
    80001d04:	668080e7          	jalr	1640(ra) # 80002368 <__printf>
    80001d08:	00048513          	mv	a0,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	250080e7          	jalr	592(ra) # 80001f5c <plic_complete>
    80001d14:	00100513          	li	a0,1
    80001d18:	f7dff06f          	j	80001c94 <devintr+0x40>
    80001d1c:	00004517          	auipc	a0,0x4
    80001d20:	9c450513          	addi	a0,a0,-1596 # 800056e0 <tickslock>
    80001d24:	00001097          	auipc	ra,0x1
    80001d28:	318080e7          	jalr	792(ra) # 8000303c <acquire>
    80001d2c:	00003717          	auipc	a4,0x3
    80001d30:	8c870713          	addi	a4,a4,-1848 # 800045f4 <ticks>
    80001d34:	00072783          	lw	a5,0(a4)
    80001d38:	00004517          	auipc	a0,0x4
    80001d3c:	9a850513          	addi	a0,a0,-1624 # 800056e0 <tickslock>
    80001d40:	0017879b          	addiw	a5,a5,1
    80001d44:	00f72023          	sw	a5,0(a4)
    80001d48:	00001097          	auipc	ra,0x1
    80001d4c:	3c0080e7          	jalr	960(ra) # 80003108 <release>
    80001d50:	f65ff06f          	j	80001cb4 <devintr+0x60>
    80001d54:	00001097          	auipc	ra,0x1
    80001d58:	f1c080e7          	jalr	-228(ra) # 80002c70 <uartintr>
    80001d5c:	fadff06f          	j	80001d08 <devintr+0xb4>

0000000080001d60 <kernelvec>:
    80001d60:	f0010113          	addi	sp,sp,-256
    80001d64:	00113023          	sd	ra,0(sp)
    80001d68:	00213423          	sd	sp,8(sp)
    80001d6c:	00313823          	sd	gp,16(sp)
    80001d70:	00413c23          	sd	tp,24(sp)
    80001d74:	02513023          	sd	t0,32(sp)
    80001d78:	02613423          	sd	t1,40(sp)
    80001d7c:	02713823          	sd	t2,48(sp)
    80001d80:	02813c23          	sd	s0,56(sp)
    80001d84:	04913023          	sd	s1,64(sp)
    80001d88:	04a13423          	sd	a0,72(sp)
    80001d8c:	04b13823          	sd	a1,80(sp)
    80001d90:	04c13c23          	sd	a2,88(sp)
    80001d94:	06d13023          	sd	a3,96(sp)
    80001d98:	06e13423          	sd	a4,104(sp)
    80001d9c:	06f13823          	sd	a5,112(sp)
    80001da0:	07013c23          	sd	a6,120(sp)
    80001da4:	09113023          	sd	a7,128(sp)
    80001da8:	09213423          	sd	s2,136(sp)
    80001dac:	09313823          	sd	s3,144(sp)
    80001db0:	09413c23          	sd	s4,152(sp)
    80001db4:	0b513023          	sd	s5,160(sp)
    80001db8:	0b613423          	sd	s6,168(sp)
    80001dbc:	0b713823          	sd	s7,176(sp)
    80001dc0:	0b813c23          	sd	s8,184(sp)
    80001dc4:	0d913023          	sd	s9,192(sp)
    80001dc8:	0da13423          	sd	s10,200(sp)
    80001dcc:	0db13823          	sd	s11,208(sp)
    80001dd0:	0dc13c23          	sd	t3,216(sp)
    80001dd4:	0fd13023          	sd	t4,224(sp)
    80001dd8:	0fe13423          	sd	t5,232(sp)
    80001ddc:	0ff13823          	sd	t6,240(sp)
    80001de0:	cd5ff0ef          	jal	ra,80001ab4 <kerneltrap>
    80001de4:	00013083          	ld	ra,0(sp)
    80001de8:	00813103          	ld	sp,8(sp)
    80001dec:	01013183          	ld	gp,16(sp)
    80001df0:	02013283          	ld	t0,32(sp)
    80001df4:	02813303          	ld	t1,40(sp)
    80001df8:	03013383          	ld	t2,48(sp)
    80001dfc:	03813403          	ld	s0,56(sp)
    80001e00:	04013483          	ld	s1,64(sp)
    80001e04:	04813503          	ld	a0,72(sp)
    80001e08:	05013583          	ld	a1,80(sp)
    80001e0c:	05813603          	ld	a2,88(sp)
    80001e10:	06013683          	ld	a3,96(sp)
    80001e14:	06813703          	ld	a4,104(sp)
    80001e18:	07013783          	ld	a5,112(sp)
    80001e1c:	07813803          	ld	a6,120(sp)
    80001e20:	08013883          	ld	a7,128(sp)
    80001e24:	08813903          	ld	s2,136(sp)
    80001e28:	09013983          	ld	s3,144(sp)
    80001e2c:	09813a03          	ld	s4,152(sp)
    80001e30:	0a013a83          	ld	s5,160(sp)
    80001e34:	0a813b03          	ld	s6,168(sp)
    80001e38:	0b013b83          	ld	s7,176(sp)
    80001e3c:	0b813c03          	ld	s8,184(sp)
    80001e40:	0c013c83          	ld	s9,192(sp)
    80001e44:	0c813d03          	ld	s10,200(sp)
    80001e48:	0d013d83          	ld	s11,208(sp)
    80001e4c:	0d813e03          	ld	t3,216(sp)
    80001e50:	0e013e83          	ld	t4,224(sp)
    80001e54:	0e813f03          	ld	t5,232(sp)
    80001e58:	0f013f83          	ld	t6,240(sp)
    80001e5c:	10010113          	addi	sp,sp,256
    80001e60:	10200073          	sret
    80001e64:	00000013          	nop
    80001e68:	00000013          	nop
    80001e6c:	00000013          	nop

0000000080001e70 <timervec>:
    80001e70:	34051573          	csrrw	a0,mscratch,a0
    80001e74:	00b53023          	sd	a1,0(a0)
    80001e78:	00c53423          	sd	a2,8(a0)
    80001e7c:	00d53823          	sd	a3,16(a0)
    80001e80:	01853583          	ld	a1,24(a0)
    80001e84:	02053603          	ld	a2,32(a0)
    80001e88:	0005b683          	ld	a3,0(a1)
    80001e8c:	00c686b3          	add	a3,a3,a2
    80001e90:	00d5b023          	sd	a3,0(a1)
    80001e94:	00200593          	li	a1,2
    80001e98:	14459073          	csrw	sip,a1
    80001e9c:	01053683          	ld	a3,16(a0)
    80001ea0:	00853603          	ld	a2,8(a0)
    80001ea4:	00053583          	ld	a1,0(a0)
    80001ea8:	34051573          	csrrw	a0,mscratch,a0
    80001eac:	30200073          	mret

0000000080001eb0 <plicinit>:
    80001eb0:	ff010113          	addi	sp,sp,-16
    80001eb4:	00813423          	sd	s0,8(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    80001ebc:	00813403          	ld	s0,8(sp)
    80001ec0:	0c0007b7          	lui	a5,0xc000
    80001ec4:	00100713          	li	a4,1
    80001ec8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001ecc:	00e7a223          	sw	a4,4(a5)
    80001ed0:	01010113          	addi	sp,sp,16
    80001ed4:	00008067          	ret

0000000080001ed8 <plicinithart>:
    80001ed8:	ff010113          	addi	sp,sp,-16
    80001edc:	00813023          	sd	s0,0(sp)
    80001ee0:	00113423          	sd	ra,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	a4c080e7          	jalr	-1460(ra) # 80001934 <cpuid>
    80001ef0:	0085171b          	slliw	a4,a0,0x8
    80001ef4:	0c0027b7          	lui	a5,0xc002
    80001ef8:	00e787b3          	add	a5,a5,a4
    80001efc:	40200713          	li	a4,1026
    80001f00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001f04:	00813083          	ld	ra,8(sp)
    80001f08:	00013403          	ld	s0,0(sp)
    80001f0c:	00d5151b          	slliw	a0,a0,0xd
    80001f10:	0c2017b7          	lui	a5,0xc201
    80001f14:	00a78533          	add	a0,a5,a0
    80001f18:	00052023          	sw	zero,0(a0)
    80001f1c:	01010113          	addi	sp,sp,16
    80001f20:	00008067          	ret

0000000080001f24 <plic_claim>:
    80001f24:	ff010113          	addi	sp,sp,-16
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	00113423          	sd	ra,8(sp)
    80001f30:	01010413          	addi	s0,sp,16
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	a00080e7          	jalr	-1536(ra) # 80001934 <cpuid>
    80001f3c:	00813083          	ld	ra,8(sp)
    80001f40:	00013403          	ld	s0,0(sp)
    80001f44:	00d5151b          	slliw	a0,a0,0xd
    80001f48:	0c2017b7          	lui	a5,0xc201
    80001f4c:	00a78533          	add	a0,a5,a0
    80001f50:	00452503          	lw	a0,4(a0)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <plic_complete>:
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00050493          	mv	s1,a0
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	9c0080e7          	jalr	-1600(ra) # 80001934 <cpuid>
    80001f7c:	01813083          	ld	ra,24(sp)
    80001f80:	01013403          	ld	s0,16(sp)
    80001f84:	00d5179b          	slliw	a5,a0,0xd
    80001f88:	0c201737          	lui	a4,0xc201
    80001f8c:	00f707b3          	add	a5,a4,a5
    80001f90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f94:	00813483          	ld	s1,8(sp)
    80001f98:	02010113          	addi	sp,sp,32
    80001f9c:	00008067          	ret

0000000080001fa0 <consolewrite>:
    80001fa0:	fb010113          	addi	sp,sp,-80
    80001fa4:	04813023          	sd	s0,64(sp)
    80001fa8:	04113423          	sd	ra,72(sp)
    80001fac:	02913c23          	sd	s1,56(sp)
    80001fb0:	03213823          	sd	s2,48(sp)
    80001fb4:	03313423          	sd	s3,40(sp)
    80001fb8:	03413023          	sd	s4,32(sp)
    80001fbc:	01513c23          	sd	s5,24(sp)
    80001fc0:	05010413          	addi	s0,sp,80
    80001fc4:	06c05c63          	blez	a2,8000203c <consolewrite+0x9c>
    80001fc8:	00060993          	mv	s3,a2
    80001fcc:	00050a13          	mv	s4,a0
    80001fd0:	00058493          	mv	s1,a1
    80001fd4:	00000913          	li	s2,0
    80001fd8:	fff00a93          	li	s5,-1
    80001fdc:	01c0006f          	j	80001ff8 <consolewrite+0x58>
    80001fe0:	fbf44503          	lbu	a0,-65(s0)
    80001fe4:	0019091b          	addiw	s2,s2,1
    80001fe8:	00148493          	addi	s1,s1,1
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	a9c080e7          	jalr	-1380(ra) # 80002a88 <uartputc>
    80001ff4:	03298063          	beq	s3,s2,80002014 <consolewrite+0x74>
    80001ff8:	00048613          	mv	a2,s1
    80001ffc:	00100693          	li	a3,1
    80002000:	000a0593          	mv	a1,s4
    80002004:	fbf40513          	addi	a0,s0,-65
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	9e4080e7          	jalr	-1564(ra) # 800019ec <either_copyin>
    80002010:	fd5518e3          	bne	a0,s5,80001fe0 <consolewrite+0x40>
    80002014:	04813083          	ld	ra,72(sp)
    80002018:	04013403          	ld	s0,64(sp)
    8000201c:	03813483          	ld	s1,56(sp)
    80002020:	02813983          	ld	s3,40(sp)
    80002024:	02013a03          	ld	s4,32(sp)
    80002028:	01813a83          	ld	s5,24(sp)
    8000202c:	00090513          	mv	a0,s2
    80002030:	03013903          	ld	s2,48(sp)
    80002034:	05010113          	addi	sp,sp,80
    80002038:	00008067          	ret
    8000203c:	00000913          	li	s2,0
    80002040:	fd5ff06f          	j	80002014 <consolewrite+0x74>

0000000080002044 <consoleread>:
    80002044:	f9010113          	addi	sp,sp,-112
    80002048:	06813023          	sd	s0,96(sp)
    8000204c:	04913c23          	sd	s1,88(sp)
    80002050:	05213823          	sd	s2,80(sp)
    80002054:	05313423          	sd	s3,72(sp)
    80002058:	05413023          	sd	s4,64(sp)
    8000205c:	03513c23          	sd	s5,56(sp)
    80002060:	03613823          	sd	s6,48(sp)
    80002064:	03713423          	sd	s7,40(sp)
    80002068:	03813023          	sd	s8,32(sp)
    8000206c:	06113423          	sd	ra,104(sp)
    80002070:	01913c23          	sd	s9,24(sp)
    80002074:	07010413          	addi	s0,sp,112
    80002078:	00060b93          	mv	s7,a2
    8000207c:	00050913          	mv	s2,a0
    80002080:	00058c13          	mv	s8,a1
    80002084:	00060b1b          	sext.w	s6,a2
    80002088:	00003497          	auipc	s1,0x3
    8000208c:	68048493          	addi	s1,s1,1664 # 80005708 <cons>
    80002090:	00400993          	li	s3,4
    80002094:	fff00a13          	li	s4,-1
    80002098:	00a00a93          	li	s5,10
    8000209c:	05705e63          	blez	s7,800020f8 <consoleread+0xb4>
    800020a0:	09c4a703          	lw	a4,156(s1)
    800020a4:	0984a783          	lw	a5,152(s1)
    800020a8:	0007071b          	sext.w	a4,a4
    800020ac:	08e78463          	beq	a5,a4,80002134 <consoleread+0xf0>
    800020b0:	07f7f713          	andi	a4,a5,127
    800020b4:	00e48733          	add	a4,s1,a4
    800020b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800020bc:	0017869b          	addiw	a3,a5,1
    800020c0:	08d4ac23          	sw	a3,152(s1)
    800020c4:	00070c9b          	sext.w	s9,a4
    800020c8:	0b370663          	beq	a4,s3,80002174 <consoleread+0x130>
    800020cc:	00100693          	li	a3,1
    800020d0:	f9f40613          	addi	a2,s0,-97
    800020d4:	000c0593          	mv	a1,s8
    800020d8:	00090513          	mv	a0,s2
    800020dc:	f8e40fa3          	sb	a4,-97(s0)
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	8c0080e7          	jalr	-1856(ra) # 800019a0 <either_copyout>
    800020e8:	01450863          	beq	a0,s4,800020f8 <consoleread+0xb4>
    800020ec:	001c0c13          	addi	s8,s8,1
    800020f0:	fffb8b9b          	addiw	s7,s7,-1
    800020f4:	fb5c94e3          	bne	s9,s5,8000209c <consoleread+0x58>
    800020f8:	000b851b          	sext.w	a0,s7
    800020fc:	06813083          	ld	ra,104(sp)
    80002100:	06013403          	ld	s0,96(sp)
    80002104:	05813483          	ld	s1,88(sp)
    80002108:	05013903          	ld	s2,80(sp)
    8000210c:	04813983          	ld	s3,72(sp)
    80002110:	04013a03          	ld	s4,64(sp)
    80002114:	03813a83          	ld	s5,56(sp)
    80002118:	02813b83          	ld	s7,40(sp)
    8000211c:	02013c03          	ld	s8,32(sp)
    80002120:	01813c83          	ld	s9,24(sp)
    80002124:	40ab053b          	subw	a0,s6,a0
    80002128:	03013b03          	ld	s6,48(sp)
    8000212c:	07010113          	addi	sp,sp,112
    80002130:	00008067          	ret
    80002134:	00001097          	auipc	ra,0x1
    80002138:	1d8080e7          	jalr	472(ra) # 8000330c <push_on>
    8000213c:	0984a703          	lw	a4,152(s1)
    80002140:	09c4a783          	lw	a5,156(s1)
    80002144:	0007879b          	sext.w	a5,a5
    80002148:	fef70ce3          	beq	a4,a5,80002140 <consoleread+0xfc>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	234080e7          	jalr	564(ra) # 80003380 <pop_on>
    80002154:	0984a783          	lw	a5,152(s1)
    80002158:	07f7f713          	andi	a4,a5,127
    8000215c:	00e48733          	add	a4,s1,a4
    80002160:	01874703          	lbu	a4,24(a4)
    80002164:	0017869b          	addiw	a3,a5,1
    80002168:	08d4ac23          	sw	a3,152(s1)
    8000216c:	00070c9b          	sext.w	s9,a4
    80002170:	f5371ee3          	bne	a4,s3,800020cc <consoleread+0x88>
    80002174:	000b851b          	sext.w	a0,s7
    80002178:	f96bf2e3          	bgeu	s7,s6,800020fc <consoleread+0xb8>
    8000217c:	08f4ac23          	sw	a5,152(s1)
    80002180:	f7dff06f          	j	800020fc <consoleread+0xb8>

0000000080002184 <consputc>:
    80002184:	10000793          	li	a5,256
    80002188:	00f50663          	beq	a0,a5,80002194 <consputc+0x10>
    8000218c:	00001317          	auipc	t1,0x1
    80002190:	9f430067          	jr	-1548(t1) # 80002b80 <uartputc_sync>
    80002194:	ff010113          	addi	sp,sp,-16
    80002198:	00113423          	sd	ra,8(sp)
    8000219c:	00813023          	sd	s0,0(sp)
    800021a0:	01010413          	addi	s0,sp,16
    800021a4:	00800513          	li	a0,8
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	9d8080e7          	jalr	-1576(ra) # 80002b80 <uartputc_sync>
    800021b0:	02000513          	li	a0,32
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	9cc080e7          	jalr	-1588(ra) # 80002b80 <uartputc_sync>
    800021bc:	00013403          	ld	s0,0(sp)
    800021c0:	00813083          	ld	ra,8(sp)
    800021c4:	00800513          	li	a0,8
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00001317          	auipc	t1,0x1
    800021d0:	9b430067          	jr	-1612(t1) # 80002b80 <uartputc_sync>

00000000800021d4 <consoleintr>:
    800021d4:	fe010113          	addi	sp,sp,-32
    800021d8:	00813823          	sd	s0,16(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	01213023          	sd	s2,0(sp)
    800021e4:	00113c23          	sd	ra,24(sp)
    800021e8:	02010413          	addi	s0,sp,32
    800021ec:	00003917          	auipc	s2,0x3
    800021f0:	51c90913          	addi	s2,s2,1308 # 80005708 <cons>
    800021f4:	00050493          	mv	s1,a0
    800021f8:	00090513          	mv	a0,s2
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	e40080e7          	jalr	-448(ra) # 8000303c <acquire>
    80002204:	02048c63          	beqz	s1,8000223c <consoleintr+0x68>
    80002208:	0a092783          	lw	a5,160(s2)
    8000220c:	09892703          	lw	a4,152(s2)
    80002210:	07f00693          	li	a3,127
    80002214:	40e7873b          	subw	a4,a5,a4
    80002218:	02e6e263          	bltu	a3,a4,8000223c <consoleintr+0x68>
    8000221c:	00d00713          	li	a4,13
    80002220:	04e48063          	beq	s1,a4,80002260 <consoleintr+0x8c>
    80002224:	07f7f713          	andi	a4,a5,127
    80002228:	00e90733          	add	a4,s2,a4
    8000222c:	0017879b          	addiw	a5,a5,1
    80002230:	0af92023          	sw	a5,160(s2)
    80002234:	00970c23          	sb	s1,24(a4)
    80002238:	08f92e23          	sw	a5,156(s2)
    8000223c:	01013403          	ld	s0,16(sp)
    80002240:	01813083          	ld	ra,24(sp)
    80002244:	00813483          	ld	s1,8(sp)
    80002248:	00013903          	ld	s2,0(sp)
    8000224c:	00003517          	auipc	a0,0x3
    80002250:	4bc50513          	addi	a0,a0,1212 # 80005708 <cons>
    80002254:	02010113          	addi	sp,sp,32
    80002258:	00001317          	auipc	t1,0x1
    8000225c:	eb030067          	jr	-336(t1) # 80003108 <release>
    80002260:	00a00493          	li	s1,10
    80002264:	fc1ff06f          	j	80002224 <consoleintr+0x50>

0000000080002268 <consoleinit>:
    80002268:	fe010113          	addi	sp,sp,-32
    8000226c:	00113c23          	sd	ra,24(sp)
    80002270:	00813823          	sd	s0,16(sp)
    80002274:	00913423          	sd	s1,8(sp)
    80002278:	02010413          	addi	s0,sp,32
    8000227c:	00003497          	auipc	s1,0x3
    80002280:	48c48493          	addi	s1,s1,1164 # 80005708 <cons>
    80002284:	00048513          	mv	a0,s1
    80002288:	00002597          	auipc	a1,0x2
    8000228c:	ee858593          	addi	a1,a1,-280 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	d88080e7          	jalr	-632(ra) # 80003018 <initlock>
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	7ac080e7          	jalr	1964(ra) # 80002a44 <uartinit>
    800022a0:	01813083          	ld	ra,24(sp)
    800022a4:	01013403          	ld	s0,16(sp)
    800022a8:	00000797          	auipc	a5,0x0
    800022ac:	d9c78793          	addi	a5,a5,-612 # 80002044 <consoleread>
    800022b0:	0af4bc23          	sd	a5,184(s1)
    800022b4:	00000797          	auipc	a5,0x0
    800022b8:	cec78793          	addi	a5,a5,-788 # 80001fa0 <consolewrite>
    800022bc:	0cf4b023          	sd	a5,192(s1)
    800022c0:	00813483          	ld	s1,8(sp)
    800022c4:	02010113          	addi	sp,sp,32
    800022c8:	00008067          	ret

00000000800022cc <console_read>:
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	00003317          	auipc	t1,0x3
    800022e0:	4e433303          	ld	t1,1252(t1) # 800057c0 <devsw+0x10>
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00030067          	jr	t1

00000000800022ec <console_write>:
    800022ec:	ff010113          	addi	sp,sp,-16
    800022f0:	00813423          	sd	s0,8(sp)
    800022f4:	01010413          	addi	s0,sp,16
    800022f8:	00813403          	ld	s0,8(sp)
    800022fc:	00003317          	auipc	t1,0x3
    80002300:	4cc33303          	ld	t1,1228(t1) # 800057c8 <devsw+0x18>
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00030067          	jr	t1

000000008000230c <panic>:
    8000230c:	fe010113          	addi	sp,sp,-32
    80002310:	00113c23          	sd	ra,24(sp)
    80002314:	00813823          	sd	s0,16(sp)
    80002318:	00913423          	sd	s1,8(sp)
    8000231c:	02010413          	addi	s0,sp,32
    80002320:	00050493          	mv	s1,a0
    80002324:	00002517          	auipc	a0,0x2
    80002328:	e5450513          	addi	a0,a0,-428 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    8000232c:	00003797          	auipc	a5,0x3
    80002330:	5207ae23          	sw	zero,1340(a5) # 80005868 <pr+0x18>
    80002334:	00000097          	auipc	ra,0x0
    80002338:	034080e7          	jalr	52(ra) # 80002368 <__printf>
    8000233c:	00048513          	mv	a0,s1
    80002340:	00000097          	auipc	ra,0x0
    80002344:	028080e7          	jalr	40(ra) # 80002368 <__printf>
    80002348:	00002517          	auipc	a0,0x2
    8000234c:	e1050513          	addi	a0,a0,-496 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80002350:	00000097          	auipc	ra,0x0
    80002354:	018080e7          	jalr	24(ra) # 80002368 <__printf>
    80002358:	00100793          	li	a5,1
    8000235c:	00002717          	auipc	a4,0x2
    80002360:	28f72e23          	sw	a5,668(a4) # 800045f8 <panicked>
    80002364:	0000006f          	j	80002364 <panic+0x58>

0000000080002368 <__printf>:
    80002368:	f3010113          	addi	sp,sp,-208
    8000236c:	08813023          	sd	s0,128(sp)
    80002370:	07313423          	sd	s3,104(sp)
    80002374:	09010413          	addi	s0,sp,144
    80002378:	05813023          	sd	s8,64(sp)
    8000237c:	08113423          	sd	ra,136(sp)
    80002380:	06913c23          	sd	s1,120(sp)
    80002384:	07213823          	sd	s2,112(sp)
    80002388:	07413023          	sd	s4,96(sp)
    8000238c:	05513c23          	sd	s5,88(sp)
    80002390:	05613823          	sd	s6,80(sp)
    80002394:	05713423          	sd	s7,72(sp)
    80002398:	03913c23          	sd	s9,56(sp)
    8000239c:	03a13823          	sd	s10,48(sp)
    800023a0:	03b13423          	sd	s11,40(sp)
    800023a4:	00003317          	auipc	t1,0x3
    800023a8:	4ac30313          	addi	t1,t1,1196 # 80005850 <pr>
    800023ac:	01832c03          	lw	s8,24(t1)
    800023b0:	00b43423          	sd	a1,8(s0)
    800023b4:	00c43823          	sd	a2,16(s0)
    800023b8:	00d43c23          	sd	a3,24(s0)
    800023bc:	02e43023          	sd	a4,32(s0)
    800023c0:	02f43423          	sd	a5,40(s0)
    800023c4:	03043823          	sd	a6,48(s0)
    800023c8:	03143c23          	sd	a7,56(s0)
    800023cc:	00050993          	mv	s3,a0
    800023d0:	4a0c1663          	bnez	s8,8000287c <__printf+0x514>
    800023d4:	60098c63          	beqz	s3,800029ec <__printf+0x684>
    800023d8:	0009c503          	lbu	a0,0(s3)
    800023dc:	00840793          	addi	a5,s0,8
    800023e0:	f6f43c23          	sd	a5,-136(s0)
    800023e4:	00000493          	li	s1,0
    800023e8:	22050063          	beqz	a0,80002608 <__printf+0x2a0>
    800023ec:	00002a37          	lui	s4,0x2
    800023f0:	00018ab7          	lui	s5,0x18
    800023f4:	000f4b37          	lui	s6,0xf4
    800023f8:	00989bb7          	lui	s7,0x989
    800023fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002400:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002404:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002408:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000240c:	00148c9b          	addiw	s9,s1,1
    80002410:	02500793          	li	a5,37
    80002414:	01998933          	add	s2,s3,s9
    80002418:	38f51263          	bne	a0,a5,8000279c <__printf+0x434>
    8000241c:	00094783          	lbu	a5,0(s2)
    80002420:	00078c9b          	sext.w	s9,a5
    80002424:	1e078263          	beqz	a5,80002608 <__printf+0x2a0>
    80002428:	0024849b          	addiw	s1,s1,2
    8000242c:	07000713          	li	a4,112
    80002430:	00998933          	add	s2,s3,s1
    80002434:	38e78a63          	beq	a5,a4,800027c8 <__printf+0x460>
    80002438:	20f76863          	bltu	a4,a5,80002648 <__printf+0x2e0>
    8000243c:	42a78863          	beq	a5,a0,8000286c <__printf+0x504>
    80002440:	06400713          	li	a4,100
    80002444:	40e79663          	bne	a5,a4,80002850 <__printf+0x4e8>
    80002448:	f7843783          	ld	a5,-136(s0)
    8000244c:	0007a603          	lw	a2,0(a5)
    80002450:	00878793          	addi	a5,a5,8
    80002454:	f6f43c23          	sd	a5,-136(s0)
    80002458:	42064a63          	bltz	a2,8000288c <__printf+0x524>
    8000245c:	00a00713          	li	a4,10
    80002460:	02e677bb          	remuw	a5,a2,a4
    80002464:	00002d97          	auipc	s11,0x2
    80002468:	d3cd8d93          	addi	s11,s11,-708 # 800041a0 <digits>
    8000246c:	00900593          	li	a1,9
    80002470:	0006051b          	sext.w	a0,a2
    80002474:	00000c93          	li	s9,0
    80002478:	02079793          	slli	a5,a5,0x20
    8000247c:	0207d793          	srli	a5,a5,0x20
    80002480:	00fd87b3          	add	a5,s11,a5
    80002484:	0007c783          	lbu	a5,0(a5)
    80002488:	02e656bb          	divuw	a3,a2,a4
    8000248c:	f8f40023          	sb	a5,-128(s0)
    80002490:	14c5d863          	bge	a1,a2,800025e0 <__printf+0x278>
    80002494:	06300593          	li	a1,99
    80002498:	00100c93          	li	s9,1
    8000249c:	02e6f7bb          	remuw	a5,a3,a4
    800024a0:	02079793          	slli	a5,a5,0x20
    800024a4:	0207d793          	srli	a5,a5,0x20
    800024a8:	00fd87b3          	add	a5,s11,a5
    800024ac:	0007c783          	lbu	a5,0(a5)
    800024b0:	02e6d73b          	divuw	a4,a3,a4
    800024b4:	f8f400a3          	sb	a5,-127(s0)
    800024b8:	12a5f463          	bgeu	a1,a0,800025e0 <__printf+0x278>
    800024bc:	00a00693          	li	a3,10
    800024c0:	00900593          	li	a1,9
    800024c4:	02d777bb          	remuw	a5,a4,a3
    800024c8:	02079793          	slli	a5,a5,0x20
    800024cc:	0207d793          	srli	a5,a5,0x20
    800024d0:	00fd87b3          	add	a5,s11,a5
    800024d4:	0007c503          	lbu	a0,0(a5)
    800024d8:	02d757bb          	divuw	a5,a4,a3
    800024dc:	f8a40123          	sb	a0,-126(s0)
    800024e0:	48e5f263          	bgeu	a1,a4,80002964 <__printf+0x5fc>
    800024e4:	06300513          	li	a0,99
    800024e8:	02d7f5bb          	remuw	a1,a5,a3
    800024ec:	02059593          	slli	a1,a1,0x20
    800024f0:	0205d593          	srli	a1,a1,0x20
    800024f4:	00bd85b3          	add	a1,s11,a1
    800024f8:	0005c583          	lbu	a1,0(a1)
    800024fc:	02d7d7bb          	divuw	a5,a5,a3
    80002500:	f8b401a3          	sb	a1,-125(s0)
    80002504:	48e57263          	bgeu	a0,a4,80002988 <__printf+0x620>
    80002508:	3e700513          	li	a0,999
    8000250c:	02d7f5bb          	remuw	a1,a5,a3
    80002510:	02059593          	slli	a1,a1,0x20
    80002514:	0205d593          	srli	a1,a1,0x20
    80002518:	00bd85b3          	add	a1,s11,a1
    8000251c:	0005c583          	lbu	a1,0(a1)
    80002520:	02d7d7bb          	divuw	a5,a5,a3
    80002524:	f8b40223          	sb	a1,-124(s0)
    80002528:	46e57663          	bgeu	a0,a4,80002994 <__printf+0x62c>
    8000252c:	02d7f5bb          	remuw	a1,a5,a3
    80002530:	02059593          	slli	a1,a1,0x20
    80002534:	0205d593          	srli	a1,a1,0x20
    80002538:	00bd85b3          	add	a1,s11,a1
    8000253c:	0005c583          	lbu	a1,0(a1)
    80002540:	02d7d7bb          	divuw	a5,a5,a3
    80002544:	f8b402a3          	sb	a1,-123(s0)
    80002548:	46ea7863          	bgeu	s4,a4,800029b8 <__printf+0x650>
    8000254c:	02d7f5bb          	remuw	a1,a5,a3
    80002550:	02059593          	slli	a1,a1,0x20
    80002554:	0205d593          	srli	a1,a1,0x20
    80002558:	00bd85b3          	add	a1,s11,a1
    8000255c:	0005c583          	lbu	a1,0(a1)
    80002560:	02d7d7bb          	divuw	a5,a5,a3
    80002564:	f8b40323          	sb	a1,-122(s0)
    80002568:	3eeaf863          	bgeu	s5,a4,80002958 <__printf+0x5f0>
    8000256c:	02d7f5bb          	remuw	a1,a5,a3
    80002570:	02059593          	slli	a1,a1,0x20
    80002574:	0205d593          	srli	a1,a1,0x20
    80002578:	00bd85b3          	add	a1,s11,a1
    8000257c:	0005c583          	lbu	a1,0(a1)
    80002580:	02d7d7bb          	divuw	a5,a5,a3
    80002584:	f8b403a3          	sb	a1,-121(s0)
    80002588:	42eb7e63          	bgeu	s6,a4,800029c4 <__printf+0x65c>
    8000258c:	02d7f5bb          	remuw	a1,a5,a3
    80002590:	02059593          	slli	a1,a1,0x20
    80002594:	0205d593          	srli	a1,a1,0x20
    80002598:	00bd85b3          	add	a1,s11,a1
    8000259c:	0005c583          	lbu	a1,0(a1)
    800025a0:	02d7d7bb          	divuw	a5,a5,a3
    800025a4:	f8b40423          	sb	a1,-120(s0)
    800025a8:	42ebfc63          	bgeu	s7,a4,800029e0 <__printf+0x678>
    800025ac:	02079793          	slli	a5,a5,0x20
    800025b0:	0207d793          	srli	a5,a5,0x20
    800025b4:	00fd8db3          	add	s11,s11,a5
    800025b8:	000dc703          	lbu	a4,0(s11)
    800025bc:	00a00793          	li	a5,10
    800025c0:	00900c93          	li	s9,9
    800025c4:	f8e404a3          	sb	a4,-119(s0)
    800025c8:	00065c63          	bgez	a2,800025e0 <__printf+0x278>
    800025cc:	f9040713          	addi	a4,s0,-112
    800025d0:	00f70733          	add	a4,a4,a5
    800025d4:	02d00693          	li	a3,45
    800025d8:	fed70823          	sb	a3,-16(a4)
    800025dc:	00078c93          	mv	s9,a5
    800025e0:	f8040793          	addi	a5,s0,-128
    800025e4:	01978cb3          	add	s9,a5,s9
    800025e8:	f7f40d13          	addi	s10,s0,-129
    800025ec:	000cc503          	lbu	a0,0(s9)
    800025f0:	fffc8c93          	addi	s9,s9,-1
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	b90080e7          	jalr	-1136(ra) # 80002184 <consputc>
    800025fc:	ffac98e3          	bne	s9,s10,800025ec <__printf+0x284>
    80002600:	00094503          	lbu	a0,0(s2)
    80002604:	e00514e3          	bnez	a0,8000240c <__printf+0xa4>
    80002608:	1a0c1663          	bnez	s8,800027b4 <__printf+0x44c>
    8000260c:	08813083          	ld	ra,136(sp)
    80002610:	08013403          	ld	s0,128(sp)
    80002614:	07813483          	ld	s1,120(sp)
    80002618:	07013903          	ld	s2,112(sp)
    8000261c:	06813983          	ld	s3,104(sp)
    80002620:	06013a03          	ld	s4,96(sp)
    80002624:	05813a83          	ld	s5,88(sp)
    80002628:	05013b03          	ld	s6,80(sp)
    8000262c:	04813b83          	ld	s7,72(sp)
    80002630:	04013c03          	ld	s8,64(sp)
    80002634:	03813c83          	ld	s9,56(sp)
    80002638:	03013d03          	ld	s10,48(sp)
    8000263c:	02813d83          	ld	s11,40(sp)
    80002640:	0d010113          	addi	sp,sp,208
    80002644:	00008067          	ret
    80002648:	07300713          	li	a4,115
    8000264c:	1ce78a63          	beq	a5,a4,80002820 <__printf+0x4b8>
    80002650:	07800713          	li	a4,120
    80002654:	1ee79e63          	bne	a5,a4,80002850 <__printf+0x4e8>
    80002658:	f7843783          	ld	a5,-136(s0)
    8000265c:	0007a703          	lw	a4,0(a5)
    80002660:	00878793          	addi	a5,a5,8
    80002664:	f6f43c23          	sd	a5,-136(s0)
    80002668:	28074263          	bltz	a4,800028ec <__printf+0x584>
    8000266c:	00002d97          	auipc	s11,0x2
    80002670:	b34d8d93          	addi	s11,s11,-1228 # 800041a0 <digits>
    80002674:	00f77793          	andi	a5,a4,15
    80002678:	00fd87b3          	add	a5,s11,a5
    8000267c:	0007c683          	lbu	a3,0(a5)
    80002680:	00f00613          	li	a2,15
    80002684:	0007079b          	sext.w	a5,a4
    80002688:	f8d40023          	sb	a3,-128(s0)
    8000268c:	0047559b          	srliw	a1,a4,0x4
    80002690:	0047569b          	srliw	a3,a4,0x4
    80002694:	00000c93          	li	s9,0
    80002698:	0ee65063          	bge	a2,a4,80002778 <__printf+0x410>
    8000269c:	00f6f693          	andi	a3,a3,15
    800026a0:	00dd86b3          	add	a3,s11,a3
    800026a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800026a8:	0087d79b          	srliw	a5,a5,0x8
    800026ac:	00100c93          	li	s9,1
    800026b0:	f8d400a3          	sb	a3,-127(s0)
    800026b4:	0cb67263          	bgeu	a2,a1,80002778 <__printf+0x410>
    800026b8:	00f7f693          	andi	a3,a5,15
    800026bc:	00dd86b3          	add	a3,s11,a3
    800026c0:	0006c583          	lbu	a1,0(a3)
    800026c4:	00f00613          	li	a2,15
    800026c8:	0047d69b          	srliw	a3,a5,0x4
    800026cc:	f8b40123          	sb	a1,-126(s0)
    800026d0:	0047d593          	srli	a1,a5,0x4
    800026d4:	28f67e63          	bgeu	a2,a5,80002970 <__printf+0x608>
    800026d8:	00f6f693          	andi	a3,a3,15
    800026dc:	00dd86b3          	add	a3,s11,a3
    800026e0:	0006c503          	lbu	a0,0(a3)
    800026e4:	0087d813          	srli	a6,a5,0x8
    800026e8:	0087d69b          	srliw	a3,a5,0x8
    800026ec:	f8a401a3          	sb	a0,-125(s0)
    800026f0:	28b67663          	bgeu	a2,a1,8000297c <__printf+0x614>
    800026f4:	00f6f693          	andi	a3,a3,15
    800026f8:	00dd86b3          	add	a3,s11,a3
    800026fc:	0006c583          	lbu	a1,0(a3)
    80002700:	00c7d513          	srli	a0,a5,0xc
    80002704:	00c7d69b          	srliw	a3,a5,0xc
    80002708:	f8b40223          	sb	a1,-124(s0)
    8000270c:	29067a63          	bgeu	a2,a6,800029a0 <__printf+0x638>
    80002710:	00f6f693          	andi	a3,a3,15
    80002714:	00dd86b3          	add	a3,s11,a3
    80002718:	0006c583          	lbu	a1,0(a3)
    8000271c:	0107d813          	srli	a6,a5,0x10
    80002720:	0107d69b          	srliw	a3,a5,0x10
    80002724:	f8b402a3          	sb	a1,-123(s0)
    80002728:	28a67263          	bgeu	a2,a0,800029ac <__printf+0x644>
    8000272c:	00f6f693          	andi	a3,a3,15
    80002730:	00dd86b3          	add	a3,s11,a3
    80002734:	0006c683          	lbu	a3,0(a3)
    80002738:	0147d79b          	srliw	a5,a5,0x14
    8000273c:	f8d40323          	sb	a3,-122(s0)
    80002740:	21067663          	bgeu	a2,a6,8000294c <__printf+0x5e4>
    80002744:	02079793          	slli	a5,a5,0x20
    80002748:	0207d793          	srli	a5,a5,0x20
    8000274c:	00fd8db3          	add	s11,s11,a5
    80002750:	000dc683          	lbu	a3,0(s11)
    80002754:	00800793          	li	a5,8
    80002758:	00700c93          	li	s9,7
    8000275c:	f8d403a3          	sb	a3,-121(s0)
    80002760:	00075c63          	bgez	a4,80002778 <__printf+0x410>
    80002764:	f9040713          	addi	a4,s0,-112
    80002768:	00f70733          	add	a4,a4,a5
    8000276c:	02d00693          	li	a3,45
    80002770:	fed70823          	sb	a3,-16(a4)
    80002774:	00078c93          	mv	s9,a5
    80002778:	f8040793          	addi	a5,s0,-128
    8000277c:	01978cb3          	add	s9,a5,s9
    80002780:	f7f40d13          	addi	s10,s0,-129
    80002784:	000cc503          	lbu	a0,0(s9)
    80002788:	fffc8c93          	addi	s9,s9,-1
    8000278c:	00000097          	auipc	ra,0x0
    80002790:	9f8080e7          	jalr	-1544(ra) # 80002184 <consputc>
    80002794:	ff9d18e3          	bne	s10,s9,80002784 <__printf+0x41c>
    80002798:	0100006f          	j	800027a8 <__printf+0x440>
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	9e8080e7          	jalr	-1560(ra) # 80002184 <consputc>
    800027a4:	000c8493          	mv	s1,s9
    800027a8:	00094503          	lbu	a0,0(s2)
    800027ac:	c60510e3          	bnez	a0,8000240c <__printf+0xa4>
    800027b0:	e40c0ee3          	beqz	s8,8000260c <__printf+0x2a4>
    800027b4:	00003517          	auipc	a0,0x3
    800027b8:	09c50513          	addi	a0,a0,156 # 80005850 <pr>
    800027bc:	00001097          	auipc	ra,0x1
    800027c0:	94c080e7          	jalr	-1716(ra) # 80003108 <release>
    800027c4:	e49ff06f          	j	8000260c <__printf+0x2a4>
    800027c8:	f7843783          	ld	a5,-136(s0)
    800027cc:	03000513          	li	a0,48
    800027d0:	01000d13          	li	s10,16
    800027d4:	00878713          	addi	a4,a5,8
    800027d8:	0007bc83          	ld	s9,0(a5)
    800027dc:	f6e43c23          	sd	a4,-136(s0)
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	9a4080e7          	jalr	-1628(ra) # 80002184 <consputc>
    800027e8:	07800513          	li	a0,120
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	998080e7          	jalr	-1640(ra) # 80002184 <consputc>
    800027f4:	00002d97          	auipc	s11,0x2
    800027f8:	9acd8d93          	addi	s11,s11,-1620 # 800041a0 <digits>
    800027fc:	03ccd793          	srli	a5,s9,0x3c
    80002800:	00fd87b3          	add	a5,s11,a5
    80002804:	0007c503          	lbu	a0,0(a5)
    80002808:	fffd0d1b          	addiw	s10,s10,-1
    8000280c:	004c9c93          	slli	s9,s9,0x4
    80002810:	00000097          	auipc	ra,0x0
    80002814:	974080e7          	jalr	-1676(ra) # 80002184 <consputc>
    80002818:	fe0d12e3          	bnez	s10,800027fc <__printf+0x494>
    8000281c:	f8dff06f          	j	800027a8 <__printf+0x440>
    80002820:	f7843783          	ld	a5,-136(s0)
    80002824:	0007bc83          	ld	s9,0(a5)
    80002828:	00878793          	addi	a5,a5,8
    8000282c:	f6f43c23          	sd	a5,-136(s0)
    80002830:	000c9a63          	bnez	s9,80002844 <__printf+0x4dc>
    80002834:	1080006f          	j	8000293c <__printf+0x5d4>
    80002838:	001c8c93          	addi	s9,s9,1
    8000283c:	00000097          	auipc	ra,0x0
    80002840:	948080e7          	jalr	-1720(ra) # 80002184 <consputc>
    80002844:	000cc503          	lbu	a0,0(s9)
    80002848:	fe0518e3          	bnez	a0,80002838 <__printf+0x4d0>
    8000284c:	f5dff06f          	j	800027a8 <__printf+0x440>
    80002850:	02500513          	li	a0,37
    80002854:	00000097          	auipc	ra,0x0
    80002858:	930080e7          	jalr	-1744(ra) # 80002184 <consputc>
    8000285c:	000c8513          	mv	a0,s9
    80002860:	00000097          	auipc	ra,0x0
    80002864:	924080e7          	jalr	-1756(ra) # 80002184 <consputc>
    80002868:	f41ff06f          	j	800027a8 <__printf+0x440>
    8000286c:	02500513          	li	a0,37
    80002870:	00000097          	auipc	ra,0x0
    80002874:	914080e7          	jalr	-1772(ra) # 80002184 <consputc>
    80002878:	f31ff06f          	j	800027a8 <__printf+0x440>
    8000287c:	00030513          	mv	a0,t1
    80002880:	00000097          	auipc	ra,0x0
    80002884:	7bc080e7          	jalr	1980(ra) # 8000303c <acquire>
    80002888:	b4dff06f          	j	800023d4 <__printf+0x6c>
    8000288c:	40c0053b          	negw	a0,a2
    80002890:	00a00713          	li	a4,10
    80002894:	02e576bb          	remuw	a3,a0,a4
    80002898:	00002d97          	auipc	s11,0x2
    8000289c:	908d8d93          	addi	s11,s11,-1784 # 800041a0 <digits>
    800028a0:	ff700593          	li	a1,-9
    800028a4:	02069693          	slli	a3,a3,0x20
    800028a8:	0206d693          	srli	a3,a3,0x20
    800028ac:	00dd86b3          	add	a3,s11,a3
    800028b0:	0006c683          	lbu	a3,0(a3)
    800028b4:	02e557bb          	divuw	a5,a0,a4
    800028b8:	f8d40023          	sb	a3,-128(s0)
    800028bc:	10b65e63          	bge	a2,a1,800029d8 <__printf+0x670>
    800028c0:	06300593          	li	a1,99
    800028c4:	02e7f6bb          	remuw	a3,a5,a4
    800028c8:	02069693          	slli	a3,a3,0x20
    800028cc:	0206d693          	srli	a3,a3,0x20
    800028d0:	00dd86b3          	add	a3,s11,a3
    800028d4:	0006c683          	lbu	a3,0(a3)
    800028d8:	02e7d73b          	divuw	a4,a5,a4
    800028dc:	00200793          	li	a5,2
    800028e0:	f8d400a3          	sb	a3,-127(s0)
    800028e4:	bca5ece3          	bltu	a1,a0,800024bc <__printf+0x154>
    800028e8:	ce5ff06f          	j	800025cc <__printf+0x264>
    800028ec:	40e007bb          	negw	a5,a4
    800028f0:	00002d97          	auipc	s11,0x2
    800028f4:	8b0d8d93          	addi	s11,s11,-1872 # 800041a0 <digits>
    800028f8:	00f7f693          	andi	a3,a5,15
    800028fc:	00dd86b3          	add	a3,s11,a3
    80002900:	0006c583          	lbu	a1,0(a3)
    80002904:	ff100613          	li	a2,-15
    80002908:	0047d69b          	srliw	a3,a5,0x4
    8000290c:	f8b40023          	sb	a1,-128(s0)
    80002910:	0047d59b          	srliw	a1,a5,0x4
    80002914:	0ac75e63          	bge	a4,a2,800029d0 <__printf+0x668>
    80002918:	00f6f693          	andi	a3,a3,15
    8000291c:	00dd86b3          	add	a3,s11,a3
    80002920:	0006c603          	lbu	a2,0(a3)
    80002924:	00f00693          	li	a3,15
    80002928:	0087d79b          	srliw	a5,a5,0x8
    8000292c:	f8c400a3          	sb	a2,-127(s0)
    80002930:	d8b6e4e3          	bltu	a3,a1,800026b8 <__printf+0x350>
    80002934:	00200793          	li	a5,2
    80002938:	e2dff06f          	j	80002764 <__printf+0x3fc>
    8000293c:	00002c97          	auipc	s9,0x2
    80002940:	844c8c93          	addi	s9,s9,-1980 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002944:	02800513          	li	a0,40
    80002948:	ef1ff06f          	j	80002838 <__printf+0x4d0>
    8000294c:	00700793          	li	a5,7
    80002950:	00600c93          	li	s9,6
    80002954:	e0dff06f          	j	80002760 <__printf+0x3f8>
    80002958:	00700793          	li	a5,7
    8000295c:	00600c93          	li	s9,6
    80002960:	c69ff06f          	j	800025c8 <__printf+0x260>
    80002964:	00300793          	li	a5,3
    80002968:	00200c93          	li	s9,2
    8000296c:	c5dff06f          	j	800025c8 <__printf+0x260>
    80002970:	00300793          	li	a5,3
    80002974:	00200c93          	li	s9,2
    80002978:	de9ff06f          	j	80002760 <__printf+0x3f8>
    8000297c:	00400793          	li	a5,4
    80002980:	00300c93          	li	s9,3
    80002984:	dddff06f          	j	80002760 <__printf+0x3f8>
    80002988:	00400793          	li	a5,4
    8000298c:	00300c93          	li	s9,3
    80002990:	c39ff06f          	j	800025c8 <__printf+0x260>
    80002994:	00500793          	li	a5,5
    80002998:	00400c93          	li	s9,4
    8000299c:	c2dff06f          	j	800025c8 <__printf+0x260>
    800029a0:	00500793          	li	a5,5
    800029a4:	00400c93          	li	s9,4
    800029a8:	db9ff06f          	j	80002760 <__printf+0x3f8>
    800029ac:	00600793          	li	a5,6
    800029b0:	00500c93          	li	s9,5
    800029b4:	dadff06f          	j	80002760 <__printf+0x3f8>
    800029b8:	00600793          	li	a5,6
    800029bc:	00500c93          	li	s9,5
    800029c0:	c09ff06f          	j	800025c8 <__printf+0x260>
    800029c4:	00800793          	li	a5,8
    800029c8:	00700c93          	li	s9,7
    800029cc:	bfdff06f          	j	800025c8 <__printf+0x260>
    800029d0:	00100793          	li	a5,1
    800029d4:	d91ff06f          	j	80002764 <__printf+0x3fc>
    800029d8:	00100793          	li	a5,1
    800029dc:	bf1ff06f          	j	800025cc <__printf+0x264>
    800029e0:	00900793          	li	a5,9
    800029e4:	00800c93          	li	s9,8
    800029e8:	be1ff06f          	j	800025c8 <__printf+0x260>
    800029ec:	00001517          	auipc	a0,0x1
    800029f0:	79c50513          	addi	a0,a0,1948 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	918080e7          	jalr	-1768(ra) # 8000230c <panic>

00000000800029fc <printfinit>:
    800029fc:	fe010113          	addi	sp,sp,-32
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00003497          	auipc	s1,0x3
    80002a14:	e4048493          	addi	s1,s1,-448 # 80005850 <pr>
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00001597          	auipc	a1,0x1
    80002a20:	77c58593          	addi	a1,a1,1916 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	5f4080e7          	jalr	1524(ra) # 80003018 <initlock>
    80002a2c:	01813083          	ld	ra,24(sp)
    80002a30:	01013403          	ld	s0,16(sp)
    80002a34:	0004ac23          	sw	zero,24(s1)
    80002a38:	00813483          	ld	s1,8(sp)
    80002a3c:	02010113          	addi	sp,sp,32
    80002a40:	00008067          	ret

0000000080002a44 <uartinit>:
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813423          	sd	s0,8(sp)
    80002a4c:	01010413          	addi	s0,sp,16
    80002a50:	100007b7          	lui	a5,0x10000
    80002a54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a58:	f8000713          	li	a4,-128
    80002a5c:	00e781a3          	sb	a4,3(a5)
    80002a60:	00300713          	li	a4,3
    80002a64:	00e78023          	sb	a4,0(a5)
    80002a68:	000780a3          	sb	zero,1(a5)
    80002a6c:	00e781a3          	sb	a4,3(a5)
    80002a70:	00700693          	li	a3,7
    80002a74:	00d78123          	sb	a3,2(a5)
    80002a78:	00e780a3          	sb	a4,1(a5)
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret

0000000080002a88 <uartputc>:
    80002a88:	00002797          	auipc	a5,0x2
    80002a8c:	b707a783          	lw	a5,-1168(a5) # 800045f8 <panicked>
    80002a90:	00078463          	beqz	a5,80002a98 <uartputc+0x10>
    80002a94:	0000006f          	j	80002a94 <uartputc+0xc>
    80002a98:	fd010113          	addi	sp,sp,-48
    80002a9c:	02813023          	sd	s0,32(sp)
    80002aa0:	00913c23          	sd	s1,24(sp)
    80002aa4:	01213823          	sd	s2,16(sp)
    80002aa8:	01313423          	sd	s3,8(sp)
    80002aac:	02113423          	sd	ra,40(sp)
    80002ab0:	03010413          	addi	s0,sp,48
    80002ab4:	00002917          	auipc	s2,0x2
    80002ab8:	b4c90913          	addi	s2,s2,-1204 # 80004600 <uart_tx_r>
    80002abc:	00093783          	ld	a5,0(s2)
    80002ac0:	00002497          	auipc	s1,0x2
    80002ac4:	b4848493          	addi	s1,s1,-1208 # 80004608 <uart_tx_w>
    80002ac8:	0004b703          	ld	a4,0(s1)
    80002acc:	02078693          	addi	a3,a5,32
    80002ad0:	00050993          	mv	s3,a0
    80002ad4:	02e69c63          	bne	a3,a4,80002b0c <uartputc+0x84>
    80002ad8:	00001097          	auipc	ra,0x1
    80002adc:	834080e7          	jalr	-1996(ra) # 8000330c <push_on>
    80002ae0:	00093783          	ld	a5,0(s2)
    80002ae4:	0004b703          	ld	a4,0(s1)
    80002ae8:	02078793          	addi	a5,a5,32
    80002aec:	00e79463          	bne	a5,a4,80002af4 <uartputc+0x6c>
    80002af0:	0000006f          	j	80002af0 <uartputc+0x68>
    80002af4:	00001097          	auipc	ra,0x1
    80002af8:	88c080e7          	jalr	-1908(ra) # 80003380 <pop_on>
    80002afc:	00093783          	ld	a5,0(s2)
    80002b00:	0004b703          	ld	a4,0(s1)
    80002b04:	02078693          	addi	a3,a5,32
    80002b08:	fce688e3          	beq	a3,a4,80002ad8 <uartputc+0x50>
    80002b0c:	01f77693          	andi	a3,a4,31
    80002b10:	00003597          	auipc	a1,0x3
    80002b14:	d6058593          	addi	a1,a1,-672 # 80005870 <uart_tx_buf>
    80002b18:	00d586b3          	add	a3,a1,a3
    80002b1c:	00170713          	addi	a4,a4,1
    80002b20:	01368023          	sb	s3,0(a3)
    80002b24:	00e4b023          	sd	a4,0(s1)
    80002b28:	10000637          	lui	a2,0x10000
    80002b2c:	02f71063          	bne	a4,a5,80002b4c <uartputc+0xc4>
    80002b30:	0340006f          	j	80002b64 <uartputc+0xdc>
    80002b34:	00074703          	lbu	a4,0(a4)
    80002b38:	00f93023          	sd	a5,0(s2)
    80002b3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b40:	00093783          	ld	a5,0(s2)
    80002b44:	0004b703          	ld	a4,0(s1)
    80002b48:	00f70e63          	beq	a4,a5,80002b64 <uartputc+0xdc>
    80002b4c:	00564683          	lbu	a3,5(a2)
    80002b50:	01f7f713          	andi	a4,a5,31
    80002b54:	00e58733          	add	a4,a1,a4
    80002b58:	0206f693          	andi	a3,a3,32
    80002b5c:	00178793          	addi	a5,a5,1
    80002b60:	fc069ae3          	bnez	a3,80002b34 <uartputc+0xac>
    80002b64:	02813083          	ld	ra,40(sp)
    80002b68:	02013403          	ld	s0,32(sp)
    80002b6c:	01813483          	ld	s1,24(sp)
    80002b70:	01013903          	ld	s2,16(sp)
    80002b74:	00813983          	ld	s3,8(sp)
    80002b78:	03010113          	addi	sp,sp,48
    80002b7c:	00008067          	ret

0000000080002b80 <uartputc_sync>:
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00002717          	auipc	a4,0x2
    80002b90:	a6c72703          	lw	a4,-1428(a4) # 800045f8 <panicked>
    80002b94:	02071663          	bnez	a4,80002bc0 <uartputc_sync+0x40>
    80002b98:	00050793          	mv	a5,a0
    80002b9c:	100006b7          	lui	a3,0x10000
    80002ba0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002ba4:	02077713          	andi	a4,a4,32
    80002ba8:	fe070ce3          	beqz	a4,80002ba0 <uartputc_sync+0x20>
    80002bac:	0ff7f793          	andi	a5,a5,255
    80002bb0:	00f68023          	sb	a5,0(a3)
    80002bb4:	00813403          	ld	s0,8(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret
    80002bc0:	0000006f          	j	80002bc0 <uartputc_sync+0x40>

0000000080002bc4 <uartstart>:
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00813423          	sd	s0,8(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    80002bd0:	00002617          	auipc	a2,0x2
    80002bd4:	a3060613          	addi	a2,a2,-1488 # 80004600 <uart_tx_r>
    80002bd8:	00002517          	auipc	a0,0x2
    80002bdc:	a3050513          	addi	a0,a0,-1488 # 80004608 <uart_tx_w>
    80002be0:	00063783          	ld	a5,0(a2)
    80002be4:	00053703          	ld	a4,0(a0)
    80002be8:	04f70263          	beq	a4,a5,80002c2c <uartstart+0x68>
    80002bec:	100005b7          	lui	a1,0x10000
    80002bf0:	00003817          	auipc	a6,0x3
    80002bf4:	c8080813          	addi	a6,a6,-896 # 80005870 <uart_tx_buf>
    80002bf8:	01c0006f          	j	80002c14 <uartstart+0x50>
    80002bfc:	0006c703          	lbu	a4,0(a3)
    80002c00:	00f63023          	sd	a5,0(a2)
    80002c04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c08:	00063783          	ld	a5,0(a2)
    80002c0c:	00053703          	ld	a4,0(a0)
    80002c10:	00f70e63          	beq	a4,a5,80002c2c <uartstart+0x68>
    80002c14:	01f7f713          	andi	a4,a5,31
    80002c18:	00e806b3          	add	a3,a6,a4
    80002c1c:	0055c703          	lbu	a4,5(a1)
    80002c20:	00178793          	addi	a5,a5,1
    80002c24:	02077713          	andi	a4,a4,32
    80002c28:	fc071ae3          	bnez	a4,80002bfc <uartstart+0x38>
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret

0000000080002c38 <uartgetc>:
    80002c38:	ff010113          	addi	sp,sp,-16
    80002c3c:	00813423          	sd	s0,8(sp)
    80002c40:	01010413          	addi	s0,sp,16
    80002c44:	10000737          	lui	a4,0x10000
    80002c48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c4c:	0017f793          	andi	a5,a5,1
    80002c50:	00078c63          	beqz	a5,80002c68 <uartgetc+0x30>
    80002c54:	00074503          	lbu	a0,0(a4)
    80002c58:	0ff57513          	andi	a0,a0,255
    80002c5c:	00813403          	ld	s0,8(sp)
    80002c60:	01010113          	addi	sp,sp,16
    80002c64:	00008067          	ret
    80002c68:	fff00513          	li	a0,-1
    80002c6c:	ff1ff06f          	j	80002c5c <uartgetc+0x24>

0000000080002c70 <uartintr>:
    80002c70:	100007b7          	lui	a5,0x10000
    80002c74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c78:	0017f793          	andi	a5,a5,1
    80002c7c:	0a078463          	beqz	a5,80002d24 <uartintr+0xb4>
    80002c80:	fe010113          	addi	sp,sp,-32
    80002c84:	00813823          	sd	s0,16(sp)
    80002c88:	00913423          	sd	s1,8(sp)
    80002c8c:	00113c23          	sd	ra,24(sp)
    80002c90:	02010413          	addi	s0,sp,32
    80002c94:	100004b7          	lui	s1,0x10000
    80002c98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c9c:	0ff57513          	andi	a0,a0,255
    80002ca0:	fffff097          	auipc	ra,0xfffff
    80002ca4:	534080e7          	jalr	1332(ra) # 800021d4 <consoleintr>
    80002ca8:	0054c783          	lbu	a5,5(s1)
    80002cac:	0017f793          	andi	a5,a5,1
    80002cb0:	fe0794e3          	bnez	a5,80002c98 <uartintr+0x28>
    80002cb4:	00002617          	auipc	a2,0x2
    80002cb8:	94c60613          	addi	a2,a2,-1716 # 80004600 <uart_tx_r>
    80002cbc:	00002517          	auipc	a0,0x2
    80002cc0:	94c50513          	addi	a0,a0,-1716 # 80004608 <uart_tx_w>
    80002cc4:	00063783          	ld	a5,0(a2)
    80002cc8:	00053703          	ld	a4,0(a0)
    80002ccc:	04f70263          	beq	a4,a5,80002d10 <uartintr+0xa0>
    80002cd0:	100005b7          	lui	a1,0x10000
    80002cd4:	00003817          	auipc	a6,0x3
    80002cd8:	b9c80813          	addi	a6,a6,-1124 # 80005870 <uart_tx_buf>
    80002cdc:	01c0006f          	j	80002cf8 <uartintr+0x88>
    80002ce0:	0006c703          	lbu	a4,0(a3)
    80002ce4:	00f63023          	sd	a5,0(a2)
    80002ce8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cec:	00063783          	ld	a5,0(a2)
    80002cf0:	00053703          	ld	a4,0(a0)
    80002cf4:	00f70e63          	beq	a4,a5,80002d10 <uartintr+0xa0>
    80002cf8:	01f7f713          	andi	a4,a5,31
    80002cfc:	00e806b3          	add	a3,a6,a4
    80002d00:	0055c703          	lbu	a4,5(a1)
    80002d04:	00178793          	addi	a5,a5,1
    80002d08:	02077713          	andi	a4,a4,32
    80002d0c:	fc071ae3          	bnez	a4,80002ce0 <uartintr+0x70>
    80002d10:	01813083          	ld	ra,24(sp)
    80002d14:	01013403          	ld	s0,16(sp)
    80002d18:	00813483          	ld	s1,8(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret
    80002d24:	00002617          	auipc	a2,0x2
    80002d28:	8dc60613          	addi	a2,a2,-1828 # 80004600 <uart_tx_r>
    80002d2c:	00002517          	auipc	a0,0x2
    80002d30:	8dc50513          	addi	a0,a0,-1828 # 80004608 <uart_tx_w>
    80002d34:	00063783          	ld	a5,0(a2)
    80002d38:	00053703          	ld	a4,0(a0)
    80002d3c:	04f70263          	beq	a4,a5,80002d80 <uartintr+0x110>
    80002d40:	100005b7          	lui	a1,0x10000
    80002d44:	00003817          	auipc	a6,0x3
    80002d48:	b2c80813          	addi	a6,a6,-1236 # 80005870 <uart_tx_buf>
    80002d4c:	01c0006f          	j	80002d68 <uartintr+0xf8>
    80002d50:	0006c703          	lbu	a4,0(a3)
    80002d54:	00f63023          	sd	a5,0(a2)
    80002d58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d5c:	00063783          	ld	a5,0(a2)
    80002d60:	00053703          	ld	a4,0(a0)
    80002d64:	02f70063          	beq	a4,a5,80002d84 <uartintr+0x114>
    80002d68:	01f7f713          	andi	a4,a5,31
    80002d6c:	00e806b3          	add	a3,a6,a4
    80002d70:	0055c703          	lbu	a4,5(a1)
    80002d74:	00178793          	addi	a5,a5,1
    80002d78:	02077713          	andi	a4,a4,32
    80002d7c:	fc071ae3          	bnez	a4,80002d50 <uartintr+0xe0>
    80002d80:	00008067          	ret
    80002d84:	00008067          	ret

0000000080002d88 <kinit>:
    80002d88:	fc010113          	addi	sp,sp,-64
    80002d8c:	02913423          	sd	s1,40(sp)
    80002d90:	fffff7b7          	lui	a5,0xfffff
    80002d94:	00004497          	auipc	s1,0x4
    80002d98:	b0b48493          	addi	s1,s1,-1269 # 8000689f <end+0xfff>
    80002d9c:	02813823          	sd	s0,48(sp)
    80002da0:	01313c23          	sd	s3,24(sp)
    80002da4:	00f4f4b3          	and	s1,s1,a5
    80002da8:	02113c23          	sd	ra,56(sp)
    80002dac:	03213023          	sd	s2,32(sp)
    80002db0:	01413823          	sd	s4,16(sp)
    80002db4:	01513423          	sd	s5,8(sp)
    80002db8:	04010413          	addi	s0,sp,64
    80002dbc:	000017b7          	lui	a5,0x1
    80002dc0:	01100993          	li	s3,17
    80002dc4:	00f487b3          	add	a5,s1,a5
    80002dc8:	01b99993          	slli	s3,s3,0x1b
    80002dcc:	06f9e063          	bltu	s3,a5,80002e2c <kinit+0xa4>
    80002dd0:	00003a97          	auipc	s5,0x3
    80002dd4:	ad0a8a93          	addi	s5,s5,-1328 # 800058a0 <end>
    80002dd8:	0754ec63          	bltu	s1,s5,80002e50 <kinit+0xc8>
    80002ddc:	0734fa63          	bgeu	s1,s3,80002e50 <kinit+0xc8>
    80002de0:	00088a37          	lui	s4,0x88
    80002de4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002de8:	00002917          	auipc	s2,0x2
    80002dec:	82890913          	addi	s2,s2,-2008 # 80004610 <kmem>
    80002df0:	00ca1a13          	slli	s4,s4,0xc
    80002df4:	0140006f          	j	80002e08 <kinit+0x80>
    80002df8:	000017b7          	lui	a5,0x1
    80002dfc:	00f484b3          	add	s1,s1,a5
    80002e00:	0554e863          	bltu	s1,s5,80002e50 <kinit+0xc8>
    80002e04:	0534f663          	bgeu	s1,s3,80002e50 <kinit+0xc8>
    80002e08:	00001637          	lui	a2,0x1
    80002e0c:	00100593          	li	a1,1
    80002e10:	00048513          	mv	a0,s1
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	5e4080e7          	jalr	1508(ra) # 800033f8 <__memset>
    80002e1c:	00093783          	ld	a5,0(s2)
    80002e20:	00f4b023          	sd	a5,0(s1)
    80002e24:	00993023          	sd	s1,0(s2)
    80002e28:	fd4498e3          	bne	s1,s4,80002df8 <kinit+0x70>
    80002e2c:	03813083          	ld	ra,56(sp)
    80002e30:	03013403          	ld	s0,48(sp)
    80002e34:	02813483          	ld	s1,40(sp)
    80002e38:	02013903          	ld	s2,32(sp)
    80002e3c:	01813983          	ld	s3,24(sp)
    80002e40:	01013a03          	ld	s4,16(sp)
    80002e44:	00813a83          	ld	s5,8(sp)
    80002e48:	04010113          	addi	sp,sp,64
    80002e4c:	00008067          	ret
    80002e50:	00001517          	auipc	a0,0x1
    80002e54:	36850513          	addi	a0,a0,872 # 800041b8 <digits+0x18>
    80002e58:	fffff097          	auipc	ra,0xfffff
    80002e5c:	4b4080e7          	jalr	1204(ra) # 8000230c <panic>

0000000080002e60 <freerange>:
    80002e60:	fc010113          	addi	sp,sp,-64
    80002e64:	000017b7          	lui	a5,0x1
    80002e68:	02913423          	sd	s1,40(sp)
    80002e6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e70:	009504b3          	add	s1,a0,s1
    80002e74:	fffff537          	lui	a0,0xfffff
    80002e78:	02813823          	sd	s0,48(sp)
    80002e7c:	02113c23          	sd	ra,56(sp)
    80002e80:	03213023          	sd	s2,32(sp)
    80002e84:	01313c23          	sd	s3,24(sp)
    80002e88:	01413823          	sd	s4,16(sp)
    80002e8c:	01513423          	sd	s5,8(sp)
    80002e90:	01613023          	sd	s6,0(sp)
    80002e94:	04010413          	addi	s0,sp,64
    80002e98:	00a4f4b3          	and	s1,s1,a0
    80002e9c:	00f487b3          	add	a5,s1,a5
    80002ea0:	06f5e463          	bltu	a1,a5,80002f08 <freerange+0xa8>
    80002ea4:	00003a97          	auipc	s5,0x3
    80002ea8:	9fca8a93          	addi	s5,s5,-1540 # 800058a0 <end>
    80002eac:	0954e263          	bltu	s1,s5,80002f30 <freerange+0xd0>
    80002eb0:	01100993          	li	s3,17
    80002eb4:	01b99993          	slli	s3,s3,0x1b
    80002eb8:	0734fc63          	bgeu	s1,s3,80002f30 <freerange+0xd0>
    80002ebc:	00058a13          	mv	s4,a1
    80002ec0:	00001917          	auipc	s2,0x1
    80002ec4:	75090913          	addi	s2,s2,1872 # 80004610 <kmem>
    80002ec8:	00002b37          	lui	s6,0x2
    80002ecc:	0140006f          	j	80002ee0 <freerange+0x80>
    80002ed0:	000017b7          	lui	a5,0x1
    80002ed4:	00f484b3          	add	s1,s1,a5
    80002ed8:	0554ec63          	bltu	s1,s5,80002f30 <freerange+0xd0>
    80002edc:	0534fa63          	bgeu	s1,s3,80002f30 <freerange+0xd0>
    80002ee0:	00001637          	lui	a2,0x1
    80002ee4:	00100593          	li	a1,1
    80002ee8:	00048513          	mv	a0,s1
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	50c080e7          	jalr	1292(ra) # 800033f8 <__memset>
    80002ef4:	00093703          	ld	a4,0(s2)
    80002ef8:	016487b3          	add	a5,s1,s6
    80002efc:	00e4b023          	sd	a4,0(s1)
    80002f00:	00993023          	sd	s1,0(s2)
    80002f04:	fcfa76e3          	bgeu	s4,a5,80002ed0 <freerange+0x70>
    80002f08:	03813083          	ld	ra,56(sp)
    80002f0c:	03013403          	ld	s0,48(sp)
    80002f10:	02813483          	ld	s1,40(sp)
    80002f14:	02013903          	ld	s2,32(sp)
    80002f18:	01813983          	ld	s3,24(sp)
    80002f1c:	01013a03          	ld	s4,16(sp)
    80002f20:	00813a83          	ld	s5,8(sp)
    80002f24:	00013b03          	ld	s6,0(sp)
    80002f28:	04010113          	addi	sp,sp,64
    80002f2c:	00008067          	ret
    80002f30:	00001517          	auipc	a0,0x1
    80002f34:	28850513          	addi	a0,a0,648 # 800041b8 <digits+0x18>
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	3d4080e7          	jalr	980(ra) # 8000230c <panic>

0000000080002f40 <kfree>:
    80002f40:	fe010113          	addi	sp,sp,-32
    80002f44:	00813823          	sd	s0,16(sp)
    80002f48:	00113c23          	sd	ra,24(sp)
    80002f4c:	00913423          	sd	s1,8(sp)
    80002f50:	02010413          	addi	s0,sp,32
    80002f54:	03451793          	slli	a5,a0,0x34
    80002f58:	04079c63          	bnez	a5,80002fb0 <kfree+0x70>
    80002f5c:	00003797          	auipc	a5,0x3
    80002f60:	94478793          	addi	a5,a5,-1724 # 800058a0 <end>
    80002f64:	00050493          	mv	s1,a0
    80002f68:	04f56463          	bltu	a0,a5,80002fb0 <kfree+0x70>
    80002f6c:	01100793          	li	a5,17
    80002f70:	01b79793          	slli	a5,a5,0x1b
    80002f74:	02f57e63          	bgeu	a0,a5,80002fb0 <kfree+0x70>
    80002f78:	00001637          	lui	a2,0x1
    80002f7c:	00100593          	li	a1,1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	478080e7          	jalr	1144(ra) # 800033f8 <__memset>
    80002f88:	00001797          	auipc	a5,0x1
    80002f8c:	68878793          	addi	a5,a5,1672 # 80004610 <kmem>
    80002f90:	0007b703          	ld	a4,0(a5)
    80002f94:	01813083          	ld	ra,24(sp)
    80002f98:	01013403          	ld	s0,16(sp)
    80002f9c:	00e4b023          	sd	a4,0(s1)
    80002fa0:	0097b023          	sd	s1,0(a5)
    80002fa4:	00813483          	ld	s1,8(sp)
    80002fa8:	02010113          	addi	sp,sp,32
    80002fac:	00008067          	ret
    80002fb0:	00001517          	auipc	a0,0x1
    80002fb4:	20850513          	addi	a0,a0,520 # 800041b8 <digits+0x18>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	354080e7          	jalr	852(ra) # 8000230c <panic>

0000000080002fc0 <kalloc>:
    80002fc0:	fe010113          	addi	sp,sp,-32
    80002fc4:	00813823          	sd	s0,16(sp)
    80002fc8:	00913423          	sd	s1,8(sp)
    80002fcc:	00113c23          	sd	ra,24(sp)
    80002fd0:	02010413          	addi	s0,sp,32
    80002fd4:	00001797          	auipc	a5,0x1
    80002fd8:	63c78793          	addi	a5,a5,1596 # 80004610 <kmem>
    80002fdc:	0007b483          	ld	s1,0(a5)
    80002fe0:	02048063          	beqz	s1,80003000 <kalloc+0x40>
    80002fe4:	0004b703          	ld	a4,0(s1)
    80002fe8:	00001637          	lui	a2,0x1
    80002fec:	00500593          	li	a1,5
    80002ff0:	00048513          	mv	a0,s1
    80002ff4:	00e7b023          	sd	a4,0(a5)
    80002ff8:	00000097          	auipc	ra,0x0
    80002ffc:	400080e7          	jalr	1024(ra) # 800033f8 <__memset>
    80003000:	01813083          	ld	ra,24(sp)
    80003004:	01013403          	ld	s0,16(sp)
    80003008:	00048513          	mv	a0,s1
    8000300c:	00813483          	ld	s1,8(sp)
    80003010:	02010113          	addi	sp,sp,32
    80003014:	00008067          	ret

0000000080003018 <initlock>:
    80003018:	ff010113          	addi	sp,sp,-16
    8000301c:	00813423          	sd	s0,8(sp)
    80003020:	01010413          	addi	s0,sp,16
    80003024:	00813403          	ld	s0,8(sp)
    80003028:	00b53423          	sd	a1,8(a0)
    8000302c:	00052023          	sw	zero,0(a0)
    80003030:	00053823          	sd	zero,16(a0)
    80003034:	01010113          	addi	sp,sp,16
    80003038:	00008067          	ret

000000008000303c <acquire>:
    8000303c:	fe010113          	addi	sp,sp,-32
    80003040:	00813823          	sd	s0,16(sp)
    80003044:	00913423          	sd	s1,8(sp)
    80003048:	00113c23          	sd	ra,24(sp)
    8000304c:	01213023          	sd	s2,0(sp)
    80003050:	02010413          	addi	s0,sp,32
    80003054:	00050493          	mv	s1,a0
    80003058:	10002973          	csrr	s2,sstatus
    8000305c:	100027f3          	csrr	a5,sstatus
    80003060:	ffd7f793          	andi	a5,a5,-3
    80003064:	10079073          	csrw	sstatus,a5
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	8ec080e7          	jalr	-1812(ra) # 80001954 <mycpu>
    80003070:	07852783          	lw	a5,120(a0)
    80003074:	06078e63          	beqz	a5,800030f0 <acquire+0xb4>
    80003078:	fffff097          	auipc	ra,0xfffff
    8000307c:	8dc080e7          	jalr	-1828(ra) # 80001954 <mycpu>
    80003080:	07852783          	lw	a5,120(a0)
    80003084:	0004a703          	lw	a4,0(s1)
    80003088:	0017879b          	addiw	a5,a5,1
    8000308c:	06f52c23          	sw	a5,120(a0)
    80003090:	04071063          	bnez	a4,800030d0 <acquire+0x94>
    80003094:	00100713          	li	a4,1
    80003098:	00070793          	mv	a5,a4
    8000309c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800030a0:	0007879b          	sext.w	a5,a5
    800030a4:	fe079ae3          	bnez	a5,80003098 <acquire+0x5c>
    800030a8:	0ff0000f          	fence
    800030ac:	fffff097          	auipc	ra,0xfffff
    800030b0:	8a8080e7          	jalr	-1880(ra) # 80001954 <mycpu>
    800030b4:	01813083          	ld	ra,24(sp)
    800030b8:	01013403          	ld	s0,16(sp)
    800030bc:	00a4b823          	sd	a0,16(s1)
    800030c0:	00013903          	ld	s2,0(sp)
    800030c4:	00813483          	ld	s1,8(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret
    800030d0:	0104b903          	ld	s2,16(s1)
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	880080e7          	jalr	-1920(ra) # 80001954 <mycpu>
    800030dc:	faa91ce3          	bne	s2,a0,80003094 <acquire+0x58>
    800030e0:	00001517          	auipc	a0,0x1
    800030e4:	0e050513          	addi	a0,a0,224 # 800041c0 <digits+0x20>
    800030e8:	fffff097          	auipc	ra,0xfffff
    800030ec:	224080e7          	jalr	548(ra) # 8000230c <panic>
    800030f0:	00195913          	srli	s2,s2,0x1
    800030f4:	fffff097          	auipc	ra,0xfffff
    800030f8:	860080e7          	jalr	-1952(ra) # 80001954 <mycpu>
    800030fc:	00197913          	andi	s2,s2,1
    80003100:	07252e23          	sw	s2,124(a0)
    80003104:	f75ff06f          	j	80003078 <acquire+0x3c>

0000000080003108 <release>:
    80003108:	fe010113          	addi	sp,sp,-32
    8000310c:	00813823          	sd	s0,16(sp)
    80003110:	00113c23          	sd	ra,24(sp)
    80003114:	00913423          	sd	s1,8(sp)
    80003118:	01213023          	sd	s2,0(sp)
    8000311c:	02010413          	addi	s0,sp,32
    80003120:	00052783          	lw	a5,0(a0)
    80003124:	00079a63          	bnez	a5,80003138 <release+0x30>
    80003128:	00001517          	auipc	a0,0x1
    8000312c:	0a050513          	addi	a0,a0,160 # 800041c8 <digits+0x28>
    80003130:	fffff097          	auipc	ra,0xfffff
    80003134:	1dc080e7          	jalr	476(ra) # 8000230c <panic>
    80003138:	01053903          	ld	s2,16(a0)
    8000313c:	00050493          	mv	s1,a0
    80003140:	fffff097          	auipc	ra,0xfffff
    80003144:	814080e7          	jalr	-2028(ra) # 80001954 <mycpu>
    80003148:	fea910e3          	bne	s2,a0,80003128 <release+0x20>
    8000314c:	0004b823          	sd	zero,16(s1)
    80003150:	0ff0000f          	fence
    80003154:	0f50000f          	fence	iorw,ow
    80003158:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000315c:	ffffe097          	auipc	ra,0xffffe
    80003160:	7f8080e7          	jalr	2040(ra) # 80001954 <mycpu>
    80003164:	100027f3          	csrr	a5,sstatus
    80003168:	0027f793          	andi	a5,a5,2
    8000316c:	04079a63          	bnez	a5,800031c0 <release+0xb8>
    80003170:	07852783          	lw	a5,120(a0)
    80003174:	02f05e63          	blez	a5,800031b0 <release+0xa8>
    80003178:	fff7871b          	addiw	a4,a5,-1
    8000317c:	06e52c23          	sw	a4,120(a0)
    80003180:	00071c63          	bnez	a4,80003198 <release+0x90>
    80003184:	07c52783          	lw	a5,124(a0)
    80003188:	00078863          	beqz	a5,80003198 <release+0x90>
    8000318c:	100027f3          	csrr	a5,sstatus
    80003190:	0027e793          	ori	a5,a5,2
    80003194:	10079073          	csrw	sstatus,a5
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	00013903          	ld	s2,0(sp)
    800031a8:	02010113          	addi	sp,sp,32
    800031ac:	00008067          	ret
    800031b0:	00001517          	auipc	a0,0x1
    800031b4:	03850513          	addi	a0,a0,56 # 800041e8 <digits+0x48>
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	154080e7          	jalr	340(ra) # 8000230c <panic>
    800031c0:	00001517          	auipc	a0,0x1
    800031c4:	01050513          	addi	a0,a0,16 # 800041d0 <digits+0x30>
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	144080e7          	jalr	324(ra) # 8000230c <panic>

00000000800031d0 <holding>:
    800031d0:	00052783          	lw	a5,0(a0)
    800031d4:	00079663          	bnez	a5,800031e0 <holding+0x10>
    800031d8:	00000513          	li	a0,0
    800031dc:	00008067          	ret
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00813823          	sd	s0,16(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	00113c23          	sd	ra,24(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	01053483          	ld	s1,16(a0)
    800031f8:	ffffe097          	auipc	ra,0xffffe
    800031fc:	75c080e7          	jalr	1884(ra) # 80001954 <mycpu>
    80003200:	01813083          	ld	ra,24(sp)
    80003204:	01013403          	ld	s0,16(sp)
    80003208:	40a48533          	sub	a0,s1,a0
    8000320c:	00153513          	seqz	a0,a0
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret

000000008000321c <push_off>:
    8000321c:	fe010113          	addi	sp,sp,-32
    80003220:	00813823          	sd	s0,16(sp)
    80003224:	00113c23          	sd	ra,24(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	02010413          	addi	s0,sp,32
    80003230:	100024f3          	csrr	s1,sstatus
    80003234:	100027f3          	csrr	a5,sstatus
    80003238:	ffd7f793          	andi	a5,a5,-3
    8000323c:	10079073          	csrw	sstatus,a5
    80003240:	ffffe097          	auipc	ra,0xffffe
    80003244:	714080e7          	jalr	1812(ra) # 80001954 <mycpu>
    80003248:	07852783          	lw	a5,120(a0)
    8000324c:	02078663          	beqz	a5,80003278 <push_off+0x5c>
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	704080e7          	jalr	1796(ra) # 80001954 <mycpu>
    80003258:	07852783          	lw	a5,120(a0)
    8000325c:	01813083          	ld	ra,24(sp)
    80003260:	01013403          	ld	s0,16(sp)
    80003264:	0017879b          	addiw	a5,a5,1
    80003268:	06f52c23          	sw	a5,120(a0)
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	02010113          	addi	sp,sp,32
    80003274:	00008067          	ret
    80003278:	0014d493          	srli	s1,s1,0x1
    8000327c:	ffffe097          	auipc	ra,0xffffe
    80003280:	6d8080e7          	jalr	1752(ra) # 80001954 <mycpu>
    80003284:	0014f493          	andi	s1,s1,1
    80003288:	06952e23          	sw	s1,124(a0)
    8000328c:	fc5ff06f          	j	80003250 <push_off+0x34>

0000000080003290 <pop_off>:
    80003290:	ff010113          	addi	sp,sp,-16
    80003294:	00813023          	sd	s0,0(sp)
    80003298:	00113423          	sd	ra,8(sp)
    8000329c:	01010413          	addi	s0,sp,16
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	6b4080e7          	jalr	1716(ra) # 80001954 <mycpu>
    800032a8:	100027f3          	csrr	a5,sstatus
    800032ac:	0027f793          	andi	a5,a5,2
    800032b0:	04079663          	bnez	a5,800032fc <pop_off+0x6c>
    800032b4:	07852783          	lw	a5,120(a0)
    800032b8:	02f05a63          	blez	a5,800032ec <pop_off+0x5c>
    800032bc:	fff7871b          	addiw	a4,a5,-1
    800032c0:	06e52c23          	sw	a4,120(a0)
    800032c4:	00071c63          	bnez	a4,800032dc <pop_off+0x4c>
    800032c8:	07c52783          	lw	a5,124(a0)
    800032cc:	00078863          	beqz	a5,800032dc <pop_off+0x4c>
    800032d0:	100027f3          	csrr	a5,sstatus
    800032d4:	0027e793          	ori	a5,a5,2
    800032d8:	10079073          	csrw	sstatus,a5
    800032dc:	00813083          	ld	ra,8(sp)
    800032e0:	00013403          	ld	s0,0(sp)
    800032e4:	01010113          	addi	sp,sp,16
    800032e8:	00008067          	ret
    800032ec:	00001517          	auipc	a0,0x1
    800032f0:	efc50513          	addi	a0,a0,-260 # 800041e8 <digits+0x48>
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	018080e7          	jalr	24(ra) # 8000230c <panic>
    800032fc:	00001517          	auipc	a0,0x1
    80003300:	ed450513          	addi	a0,a0,-300 # 800041d0 <digits+0x30>
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	008080e7          	jalr	8(ra) # 8000230c <panic>

000000008000330c <push_on>:
    8000330c:	fe010113          	addi	sp,sp,-32
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00113c23          	sd	ra,24(sp)
    80003318:	00913423          	sd	s1,8(sp)
    8000331c:	02010413          	addi	s0,sp,32
    80003320:	100024f3          	csrr	s1,sstatus
    80003324:	100027f3          	csrr	a5,sstatus
    80003328:	0027e793          	ori	a5,a5,2
    8000332c:	10079073          	csrw	sstatus,a5
    80003330:	ffffe097          	auipc	ra,0xffffe
    80003334:	624080e7          	jalr	1572(ra) # 80001954 <mycpu>
    80003338:	07852783          	lw	a5,120(a0)
    8000333c:	02078663          	beqz	a5,80003368 <push_on+0x5c>
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	614080e7          	jalr	1556(ra) # 80001954 <mycpu>
    80003348:	07852783          	lw	a5,120(a0)
    8000334c:	01813083          	ld	ra,24(sp)
    80003350:	01013403          	ld	s0,16(sp)
    80003354:	0017879b          	addiw	a5,a5,1
    80003358:	06f52c23          	sw	a5,120(a0)
    8000335c:	00813483          	ld	s1,8(sp)
    80003360:	02010113          	addi	sp,sp,32
    80003364:	00008067          	ret
    80003368:	0014d493          	srli	s1,s1,0x1
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	5e8080e7          	jalr	1512(ra) # 80001954 <mycpu>
    80003374:	0014f493          	andi	s1,s1,1
    80003378:	06952e23          	sw	s1,124(a0)
    8000337c:	fc5ff06f          	j	80003340 <push_on+0x34>

0000000080003380 <pop_on>:
    80003380:	ff010113          	addi	sp,sp,-16
    80003384:	00813023          	sd	s0,0(sp)
    80003388:	00113423          	sd	ra,8(sp)
    8000338c:	01010413          	addi	s0,sp,16
    80003390:	ffffe097          	auipc	ra,0xffffe
    80003394:	5c4080e7          	jalr	1476(ra) # 80001954 <mycpu>
    80003398:	100027f3          	csrr	a5,sstatus
    8000339c:	0027f793          	andi	a5,a5,2
    800033a0:	04078463          	beqz	a5,800033e8 <pop_on+0x68>
    800033a4:	07852783          	lw	a5,120(a0)
    800033a8:	02f05863          	blez	a5,800033d8 <pop_on+0x58>
    800033ac:	fff7879b          	addiw	a5,a5,-1
    800033b0:	06f52c23          	sw	a5,120(a0)
    800033b4:	07853783          	ld	a5,120(a0)
    800033b8:	00079863          	bnez	a5,800033c8 <pop_on+0x48>
    800033bc:	100027f3          	csrr	a5,sstatus
    800033c0:	ffd7f793          	andi	a5,a5,-3
    800033c4:	10079073          	csrw	sstatus,a5
    800033c8:	00813083          	ld	ra,8(sp)
    800033cc:	00013403          	ld	s0,0(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	00008067          	ret
    800033d8:	00001517          	auipc	a0,0x1
    800033dc:	e3850513          	addi	a0,a0,-456 # 80004210 <digits+0x70>
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	f2c080e7          	jalr	-212(ra) # 8000230c <panic>
    800033e8:	00001517          	auipc	a0,0x1
    800033ec:	e0850513          	addi	a0,a0,-504 # 800041f0 <digits+0x50>
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	f1c080e7          	jalr	-228(ra) # 8000230c <panic>

00000000800033f8 <__memset>:
    800033f8:	ff010113          	addi	sp,sp,-16
    800033fc:	00813423          	sd	s0,8(sp)
    80003400:	01010413          	addi	s0,sp,16
    80003404:	1a060e63          	beqz	a2,800035c0 <__memset+0x1c8>
    80003408:	40a007b3          	neg	a5,a0
    8000340c:	0077f793          	andi	a5,a5,7
    80003410:	00778693          	addi	a3,a5,7
    80003414:	00b00813          	li	a6,11
    80003418:	0ff5f593          	andi	a1,a1,255
    8000341c:	fff6071b          	addiw	a4,a2,-1
    80003420:	1b06e663          	bltu	a3,a6,800035cc <__memset+0x1d4>
    80003424:	1cd76463          	bltu	a4,a3,800035ec <__memset+0x1f4>
    80003428:	1a078e63          	beqz	a5,800035e4 <__memset+0x1ec>
    8000342c:	00b50023          	sb	a1,0(a0)
    80003430:	00100713          	li	a4,1
    80003434:	1ae78463          	beq	a5,a4,800035dc <__memset+0x1e4>
    80003438:	00b500a3          	sb	a1,1(a0)
    8000343c:	00200713          	li	a4,2
    80003440:	1ae78a63          	beq	a5,a4,800035f4 <__memset+0x1fc>
    80003444:	00b50123          	sb	a1,2(a0)
    80003448:	00300713          	li	a4,3
    8000344c:	18e78463          	beq	a5,a4,800035d4 <__memset+0x1dc>
    80003450:	00b501a3          	sb	a1,3(a0)
    80003454:	00400713          	li	a4,4
    80003458:	1ae78263          	beq	a5,a4,800035fc <__memset+0x204>
    8000345c:	00b50223          	sb	a1,4(a0)
    80003460:	00500713          	li	a4,5
    80003464:	1ae78063          	beq	a5,a4,80003604 <__memset+0x20c>
    80003468:	00b502a3          	sb	a1,5(a0)
    8000346c:	00700713          	li	a4,7
    80003470:	18e79e63          	bne	a5,a4,8000360c <__memset+0x214>
    80003474:	00b50323          	sb	a1,6(a0)
    80003478:	00700e93          	li	t4,7
    8000347c:	00859713          	slli	a4,a1,0x8
    80003480:	00e5e733          	or	a4,a1,a4
    80003484:	01059e13          	slli	t3,a1,0x10
    80003488:	01c76e33          	or	t3,a4,t3
    8000348c:	01859313          	slli	t1,a1,0x18
    80003490:	006e6333          	or	t1,t3,t1
    80003494:	02059893          	slli	a7,a1,0x20
    80003498:	40f60e3b          	subw	t3,a2,a5
    8000349c:	011368b3          	or	a7,t1,a7
    800034a0:	02859813          	slli	a6,a1,0x28
    800034a4:	0108e833          	or	a6,a7,a6
    800034a8:	03059693          	slli	a3,a1,0x30
    800034ac:	003e589b          	srliw	a7,t3,0x3
    800034b0:	00d866b3          	or	a3,a6,a3
    800034b4:	03859713          	slli	a4,a1,0x38
    800034b8:	00389813          	slli	a6,a7,0x3
    800034bc:	00f507b3          	add	a5,a0,a5
    800034c0:	00e6e733          	or	a4,a3,a4
    800034c4:	000e089b          	sext.w	a7,t3
    800034c8:	00f806b3          	add	a3,a6,a5
    800034cc:	00e7b023          	sd	a4,0(a5)
    800034d0:	00878793          	addi	a5,a5,8
    800034d4:	fed79ce3          	bne	a5,a3,800034cc <__memset+0xd4>
    800034d8:	ff8e7793          	andi	a5,t3,-8
    800034dc:	0007871b          	sext.w	a4,a5
    800034e0:	01d787bb          	addw	a5,a5,t4
    800034e4:	0ce88e63          	beq	a7,a4,800035c0 <__memset+0x1c8>
    800034e8:	00f50733          	add	a4,a0,a5
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0017871b          	addiw	a4,a5,1
    800034f4:	0cc77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0027871b          	addiw	a4,a5,2
    80003504:	0ac77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0037871b          	addiw	a4,a5,3
    80003514:	0ac77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0047871b          	addiw	a4,a5,4
    80003524:	08c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0057871b          	addiw	a4,a5,5
    80003534:	08c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	0067871b          	addiw	a4,a5,6
    80003544:	06c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	0077871b          	addiw	a4,a5,7
    80003554:	06c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	0087871b          	addiw	a4,a5,8
    80003564:	04c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	0097871b          	addiw	a4,a5,9
    80003574:	04c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003578:	00e50733          	add	a4,a0,a4
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	00a7871b          	addiw	a4,a5,10
    80003584:	02c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00b70023          	sb	a1,0(a4)
    80003590:	00b7871b          	addiw	a4,a5,11
    80003594:	02c77663          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    80003598:	00e50733          	add	a4,a0,a4
    8000359c:	00b70023          	sb	a1,0(a4)
    800035a0:	00c7871b          	addiw	a4,a5,12
    800035a4:	00c77e63          	bgeu	a4,a2,800035c0 <__memset+0x1c8>
    800035a8:	00e50733          	add	a4,a0,a4
    800035ac:	00b70023          	sb	a1,0(a4)
    800035b0:	00d7879b          	addiw	a5,a5,13
    800035b4:	00c7f663          	bgeu	a5,a2,800035c0 <__memset+0x1c8>
    800035b8:	00f507b3          	add	a5,a0,a5
    800035bc:	00b78023          	sb	a1,0(a5)
    800035c0:	00813403          	ld	s0,8(sp)
    800035c4:	01010113          	addi	sp,sp,16
    800035c8:	00008067          	ret
    800035cc:	00b00693          	li	a3,11
    800035d0:	e55ff06f          	j	80003424 <__memset+0x2c>
    800035d4:	00300e93          	li	t4,3
    800035d8:	ea5ff06f          	j	8000347c <__memset+0x84>
    800035dc:	00100e93          	li	t4,1
    800035e0:	e9dff06f          	j	8000347c <__memset+0x84>
    800035e4:	00000e93          	li	t4,0
    800035e8:	e95ff06f          	j	8000347c <__memset+0x84>
    800035ec:	00000793          	li	a5,0
    800035f0:	ef9ff06f          	j	800034e8 <__memset+0xf0>
    800035f4:	00200e93          	li	t4,2
    800035f8:	e85ff06f          	j	8000347c <__memset+0x84>
    800035fc:	00400e93          	li	t4,4
    80003600:	e7dff06f          	j	8000347c <__memset+0x84>
    80003604:	00500e93          	li	t4,5
    80003608:	e75ff06f          	j	8000347c <__memset+0x84>
    8000360c:	00600e93          	li	t4,6
    80003610:	e6dff06f          	j	8000347c <__memset+0x84>

0000000080003614 <__memmove>:
    80003614:	ff010113          	addi	sp,sp,-16
    80003618:	00813423          	sd	s0,8(sp)
    8000361c:	01010413          	addi	s0,sp,16
    80003620:	0e060863          	beqz	a2,80003710 <__memmove+0xfc>
    80003624:	fff6069b          	addiw	a3,a2,-1
    80003628:	0006881b          	sext.w	a6,a3
    8000362c:	0ea5e863          	bltu	a1,a0,8000371c <__memmove+0x108>
    80003630:	00758713          	addi	a4,a1,7
    80003634:	00a5e7b3          	or	a5,a1,a0
    80003638:	40a70733          	sub	a4,a4,a0
    8000363c:	0077f793          	andi	a5,a5,7
    80003640:	00f73713          	sltiu	a4,a4,15
    80003644:	00174713          	xori	a4,a4,1
    80003648:	0017b793          	seqz	a5,a5
    8000364c:	00e7f7b3          	and	a5,a5,a4
    80003650:	10078863          	beqz	a5,80003760 <__memmove+0x14c>
    80003654:	00900793          	li	a5,9
    80003658:	1107f463          	bgeu	a5,a6,80003760 <__memmove+0x14c>
    8000365c:	0036581b          	srliw	a6,a2,0x3
    80003660:	fff8081b          	addiw	a6,a6,-1
    80003664:	02081813          	slli	a6,a6,0x20
    80003668:	01d85893          	srli	a7,a6,0x1d
    8000366c:	00858813          	addi	a6,a1,8
    80003670:	00058793          	mv	a5,a1
    80003674:	00050713          	mv	a4,a0
    80003678:	01088833          	add	a6,a7,a6
    8000367c:	0007b883          	ld	a7,0(a5)
    80003680:	00878793          	addi	a5,a5,8
    80003684:	00870713          	addi	a4,a4,8
    80003688:	ff173c23          	sd	a7,-8(a4)
    8000368c:	ff0798e3          	bne	a5,a6,8000367c <__memmove+0x68>
    80003690:	ff867713          	andi	a4,a2,-8
    80003694:	02071793          	slli	a5,a4,0x20
    80003698:	0207d793          	srli	a5,a5,0x20
    8000369c:	00f585b3          	add	a1,a1,a5
    800036a0:	40e686bb          	subw	a3,a3,a4
    800036a4:	00f507b3          	add	a5,a0,a5
    800036a8:	06e60463          	beq	a2,a4,80003710 <__memmove+0xfc>
    800036ac:	0005c703          	lbu	a4,0(a1)
    800036b0:	00e78023          	sb	a4,0(a5)
    800036b4:	04068e63          	beqz	a3,80003710 <__memmove+0xfc>
    800036b8:	0015c603          	lbu	a2,1(a1)
    800036bc:	00100713          	li	a4,1
    800036c0:	00c780a3          	sb	a2,1(a5)
    800036c4:	04e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036c8:	0025c603          	lbu	a2,2(a1)
    800036cc:	00200713          	li	a4,2
    800036d0:	00c78123          	sb	a2,2(a5)
    800036d4:	02e68e63          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036d8:	0035c603          	lbu	a2,3(a1)
    800036dc:	00300713          	li	a4,3
    800036e0:	00c781a3          	sb	a2,3(a5)
    800036e4:	02e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036e8:	0045c603          	lbu	a2,4(a1)
    800036ec:	00400713          	li	a4,4
    800036f0:	00c78223          	sb	a2,4(a5)
    800036f4:	00e68e63          	beq	a3,a4,80003710 <__memmove+0xfc>
    800036f8:	0055c603          	lbu	a2,5(a1)
    800036fc:	00500713          	li	a4,5
    80003700:	00c782a3          	sb	a2,5(a5)
    80003704:	00e68663          	beq	a3,a4,80003710 <__memmove+0xfc>
    80003708:	0065c703          	lbu	a4,6(a1)
    8000370c:	00e78323          	sb	a4,6(a5)
    80003710:	00813403          	ld	s0,8(sp)
    80003714:	01010113          	addi	sp,sp,16
    80003718:	00008067          	ret
    8000371c:	02061713          	slli	a4,a2,0x20
    80003720:	02075713          	srli	a4,a4,0x20
    80003724:	00e587b3          	add	a5,a1,a4
    80003728:	f0f574e3          	bgeu	a0,a5,80003630 <__memmove+0x1c>
    8000372c:	02069613          	slli	a2,a3,0x20
    80003730:	02065613          	srli	a2,a2,0x20
    80003734:	fff64613          	not	a2,a2
    80003738:	00e50733          	add	a4,a0,a4
    8000373c:	00c78633          	add	a2,a5,a2
    80003740:	fff7c683          	lbu	a3,-1(a5)
    80003744:	fff78793          	addi	a5,a5,-1
    80003748:	fff70713          	addi	a4,a4,-1
    8000374c:	00d70023          	sb	a3,0(a4)
    80003750:	fec798e3          	bne	a5,a2,80003740 <__memmove+0x12c>
    80003754:	00813403          	ld	s0,8(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret
    80003760:	02069713          	slli	a4,a3,0x20
    80003764:	02075713          	srli	a4,a4,0x20
    80003768:	00170713          	addi	a4,a4,1
    8000376c:	00e50733          	add	a4,a0,a4
    80003770:	00050793          	mv	a5,a0
    80003774:	0005c683          	lbu	a3,0(a1)
    80003778:	00178793          	addi	a5,a5,1
    8000377c:	00158593          	addi	a1,a1,1
    80003780:	fed78fa3          	sb	a3,-1(a5)
    80003784:	fee798e3          	bne	a5,a4,80003774 <__memmove+0x160>
    80003788:	f89ff06f          	j	80003710 <__memmove+0xfc>

000000008000378c <__mem_free>:
    8000378c:	ff010113          	addi	sp,sp,-16
    80003790:	00813423          	sd	s0,8(sp)
    80003794:	01010413          	addi	s0,sp,16
    80003798:	00001597          	auipc	a1,0x1
    8000379c:	e8058593          	addi	a1,a1,-384 # 80004618 <freep>
    800037a0:	0005b783          	ld	a5,0(a1)
    800037a4:	ff050693          	addi	a3,a0,-16
    800037a8:	0007b703          	ld	a4,0(a5)
    800037ac:	00d7fc63          	bgeu	a5,a3,800037c4 <__mem_free+0x38>
    800037b0:	00e6ee63          	bltu	a3,a4,800037cc <__mem_free+0x40>
    800037b4:	00e7fc63          	bgeu	a5,a4,800037cc <__mem_free+0x40>
    800037b8:	00070793          	mv	a5,a4
    800037bc:	0007b703          	ld	a4,0(a5)
    800037c0:	fed7e8e3          	bltu	a5,a3,800037b0 <__mem_free+0x24>
    800037c4:	fee7eae3          	bltu	a5,a4,800037b8 <__mem_free+0x2c>
    800037c8:	fee6f8e3          	bgeu	a3,a4,800037b8 <__mem_free+0x2c>
    800037cc:	ff852803          	lw	a6,-8(a0)
    800037d0:	02081613          	slli	a2,a6,0x20
    800037d4:	01c65613          	srli	a2,a2,0x1c
    800037d8:	00c68633          	add	a2,a3,a2
    800037dc:	02c70a63          	beq	a4,a2,80003810 <__mem_free+0x84>
    800037e0:	fee53823          	sd	a4,-16(a0)
    800037e4:	0087a503          	lw	a0,8(a5)
    800037e8:	02051613          	slli	a2,a0,0x20
    800037ec:	01c65613          	srli	a2,a2,0x1c
    800037f0:	00c78633          	add	a2,a5,a2
    800037f4:	04c68263          	beq	a3,a2,80003838 <__mem_free+0xac>
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	00d7b023          	sd	a3,0(a5)
    80003800:	00f5b023          	sd	a5,0(a1)
    80003804:	00000513          	li	a0,0
    80003808:	01010113          	addi	sp,sp,16
    8000380c:	00008067          	ret
    80003810:	00872603          	lw	a2,8(a4)
    80003814:	00073703          	ld	a4,0(a4)
    80003818:	0106083b          	addw	a6,a2,a6
    8000381c:	ff052c23          	sw	a6,-8(a0)
    80003820:	fee53823          	sd	a4,-16(a0)
    80003824:	0087a503          	lw	a0,8(a5)
    80003828:	02051613          	slli	a2,a0,0x20
    8000382c:	01c65613          	srli	a2,a2,0x1c
    80003830:	00c78633          	add	a2,a5,a2
    80003834:	fcc692e3          	bne	a3,a2,800037f8 <__mem_free+0x6c>
    80003838:	00813403          	ld	s0,8(sp)
    8000383c:	0105053b          	addw	a0,a0,a6
    80003840:	00a7a423          	sw	a0,8(a5)
    80003844:	00e7b023          	sd	a4,0(a5)
    80003848:	00f5b023          	sd	a5,0(a1)
    8000384c:	00000513          	li	a0,0
    80003850:	01010113          	addi	sp,sp,16
    80003854:	00008067          	ret

0000000080003858 <__mem_alloc>:
    80003858:	fc010113          	addi	sp,sp,-64
    8000385c:	02813823          	sd	s0,48(sp)
    80003860:	02913423          	sd	s1,40(sp)
    80003864:	03213023          	sd	s2,32(sp)
    80003868:	01513423          	sd	s5,8(sp)
    8000386c:	02113c23          	sd	ra,56(sp)
    80003870:	01313c23          	sd	s3,24(sp)
    80003874:	01413823          	sd	s4,16(sp)
    80003878:	01613023          	sd	s6,0(sp)
    8000387c:	04010413          	addi	s0,sp,64
    80003880:	00001a97          	auipc	s5,0x1
    80003884:	d98a8a93          	addi	s5,s5,-616 # 80004618 <freep>
    80003888:	00f50913          	addi	s2,a0,15
    8000388c:	000ab683          	ld	a3,0(s5)
    80003890:	00495913          	srli	s2,s2,0x4
    80003894:	0019049b          	addiw	s1,s2,1
    80003898:	00048913          	mv	s2,s1
    8000389c:	0c068c63          	beqz	a3,80003974 <__mem_alloc+0x11c>
    800038a0:	0006b503          	ld	a0,0(a3)
    800038a4:	00852703          	lw	a4,8(a0)
    800038a8:	10977063          	bgeu	a4,s1,800039a8 <__mem_alloc+0x150>
    800038ac:	000017b7          	lui	a5,0x1
    800038b0:	0009099b          	sext.w	s3,s2
    800038b4:	0af4e863          	bltu	s1,a5,80003964 <__mem_alloc+0x10c>
    800038b8:	02099a13          	slli	s4,s3,0x20
    800038bc:	01ca5a13          	srli	s4,s4,0x1c
    800038c0:	fff00b13          	li	s6,-1
    800038c4:	0100006f          	j	800038d4 <__mem_alloc+0x7c>
    800038c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800038cc:	00852703          	lw	a4,8(a0)
    800038d0:	04977463          	bgeu	a4,s1,80003918 <__mem_alloc+0xc0>
    800038d4:	00050793          	mv	a5,a0
    800038d8:	fea698e3          	bne	a3,a0,800038c8 <__mem_alloc+0x70>
    800038dc:	000a0513          	mv	a0,s4
    800038e0:	00000097          	auipc	ra,0x0
    800038e4:	1f0080e7          	jalr	496(ra) # 80003ad0 <kvmincrease>
    800038e8:	00050793          	mv	a5,a0
    800038ec:	01050513          	addi	a0,a0,16
    800038f0:	07678e63          	beq	a5,s6,8000396c <__mem_alloc+0x114>
    800038f4:	0137a423          	sw	s3,8(a5)
    800038f8:	00000097          	auipc	ra,0x0
    800038fc:	e94080e7          	jalr	-364(ra) # 8000378c <__mem_free>
    80003900:	000ab783          	ld	a5,0(s5)
    80003904:	06078463          	beqz	a5,8000396c <__mem_alloc+0x114>
    80003908:	0007b503          	ld	a0,0(a5)
    8000390c:	00078693          	mv	a3,a5
    80003910:	00852703          	lw	a4,8(a0)
    80003914:	fc9760e3          	bltu	a4,s1,800038d4 <__mem_alloc+0x7c>
    80003918:	08e48263          	beq	s1,a4,8000399c <__mem_alloc+0x144>
    8000391c:	4127073b          	subw	a4,a4,s2
    80003920:	02071693          	slli	a3,a4,0x20
    80003924:	01c6d693          	srli	a3,a3,0x1c
    80003928:	00e52423          	sw	a4,8(a0)
    8000392c:	00d50533          	add	a0,a0,a3
    80003930:	01252423          	sw	s2,8(a0)
    80003934:	00fab023          	sd	a5,0(s5)
    80003938:	01050513          	addi	a0,a0,16
    8000393c:	03813083          	ld	ra,56(sp)
    80003940:	03013403          	ld	s0,48(sp)
    80003944:	02813483          	ld	s1,40(sp)
    80003948:	02013903          	ld	s2,32(sp)
    8000394c:	01813983          	ld	s3,24(sp)
    80003950:	01013a03          	ld	s4,16(sp)
    80003954:	00813a83          	ld	s5,8(sp)
    80003958:	00013b03          	ld	s6,0(sp)
    8000395c:	04010113          	addi	sp,sp,64
    80003960:	00008067          	ret
    80003964:	000019b7          	lui	s3,0x1
    80003968:	f51ff06f          	j	800038b8 <__mem_alloc+0x60>
    8000396c:	00000513          	li	a0,0
    80003970:	fcdff06f          	j	8000393c <__mem_alloc+0xe4>
    80003974:	00002797          	auipc	a5,0x2
    80003978:	f1c78793          	addi	a5,a5,-228 # 80005890 <base>
    8000397c:	00078513          	mv	a0,a5
    80003980:	00fab023          	sd	a5,0(s5)
    80003984:	00f7b023          	sd	a5,0(a5)
    80003988:	00000713          	li	a4,0
    8000398c:	00002797          	auipc	a5,0x2
    80003990:	f007a623          	sw	zero,-244(a5) # 80005898 <base+0x8>
    80003994:	00050693          	mv	a3,a0
    80003998:	f11ff06f          	j	800038a8 <__mem_alloc+0x50>
    8000399c:	00053703          	ld	a4,0(a0)
    800039a0:	00e7b023          	sd	a4,0(a5)
    800039a4:	f91ff06f          	j	80003934 <__mem_alloc+0xdc>
    800039a8:	00068793          	mv	a5,a3
    800039ac:	f6dff06f          	j	80003918 <__mem_alloc+0xc0>

00000000800039b0 <__putc>:
    800039b0:	fe010113          	addi	sp,sp,-32
    800039b4:	00813823          	sd	s0,16(sp)
    800039b8:	00113c23          	sd	ra,24(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	00050793          	mv	a5,a0
    800039c4:	fef40593          	addi	a1,s0,-17
    800039c8:	00100613          	li	a2,1
    800039cc:	00000513          	li	a0,0
    800039d0:	fef407a3          	sb	a5,-17(s0)
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	918080e7          	jalr	-1768(ra) # 800022ec <console_write>
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	01013403          	ld	s0,16(sp)
    800039e4:	02010113          	addi	sp,sp,32
    800039e8:	00008067          	ret

00000000800039ec <__getc>:
    800039ec:	fe010113          	addi	sp,sp,-32
    800039f0:	00813823          	sd	s0,16(sp)
    800039f4:	00113c23          	sd	ra,24(sp)
    800039f8:	02010413          	addi	s0,sp,32
    800039fc:	fe840593          	addi	a1,s0,-24
    80003a00:	00100613          	li	a2,1
    80003a04:	00000513          	li	a0,0
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	8c4080e7          	jalr	-1852(ra) # 800022cc <console_read>
    80003a10:	fe844503          	lbu	a0,-24(s0)
    80003a14:	01813083          	ld	ra,24(sp)
    80003a18:	01013403          	ld	s0,16(sp)
    80003a1c:	02010113          	addi	sp,sp,32
    80003a20:	00008067          	ret

0000000080003a24 <console_handler>:
    80003a24:	fe010113          	addi	sp,sp,-32
    80003a28:	00813823          	sd	s0,16(sp)
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	00913423          	sd	s1,8(sp)
    80003a34:	02010413          	addi	s0,sp,32
    80003a38:	14202773          	csrr	a4,scause
    80003a3c:	100027f3          	csrr	a5,sstatus
    80003a40:	0027f793          	andi	a5,a5,2
    80003a44:	06079e63          	bnez	a5,80003ac0 <console_handler+0x9c>
    80003a48:	00074c63          	bltz	a4,80003a60 <console_handler+0x3c>
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	00008067          	ret
    80003a60:	0ff77713          	andi	a4,a4,255
    80003a64:	00900793          	li	a5,9
    80003a68:	fef712e3          	bne	a4,a5,80003a4c <console_handler+0x28>
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	4b8080e7          	jalr	1208(ra) # 80001f24 <plic_claim>
    80003a74:	00a00793          	li	a5,10
    80003a78:	00050493          	mv	s1,a0
    80003a7c:	02f50c63          	beq	a0,a5,80003ab4 <console_handler+0x90>
    80003a80:	fc0506e3          	beqz	a0,80003a4c <console_handler+0x28>
    80003a84:	00050593          	mv	a1,a0
    80003a88:	00000517          	auipc	a0,0x0
    80003a8c:	69050513          	addi	a0,a0,1680 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	8d8080e7          	jalr	-1832(ra) # 80002368 <__printf>
    80003a98:	01013403          	ld	s0,16(sp)
    80003a9c:	01813083          	ld	ra,24(sp)
    80003aa0:	00048513          	mv	a0,s1
    80003aa4:	00813483          	ld	s1,8(sp)
    80003aa8:	02010113          	addi	sp,sp,32
    80003aac:	ffffe317          	auipc	t1,0xffffe
    80003ab0:	4b030067          	jr	1200(t1) # 80001f5c <plic_complete>
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	1bc080e7          	jalr	444(ra) # 80002c70 <uartintr>
    80003abc:	fddff06f          	j	80003a98 <console_handler+0x74>
    80003ac0:	00000517          	auipc	a0,0x0
    80003ac4:	75850513          	addi	a0,a0,1880 # 80004218 <digits+0x78>
    80003ac8:	fffff097          	auipc	ra,0xfffff
    80003acc:	844080e7          	jalr	-1980(ra) # 8000230c <panic>

0000000080003ad0 <kvmincrease>:
    80003ad0:	fe010113          	addi	sp,sp,-32
    80003ad4:	01213023          	sd	s2,0(sp)
    80003ad8:	00001937          	lui	s2,0x1
    80003adc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003ae0:	00813823          	sd	s0,16(sp)
    80003ae4:	00113c23          	sd	ra,24(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	02010413          	addi	s0,sp,32
    80003af0:	01250933          	add	s2,a0,s2
    80003af4:	00c95913          	srli	s2,s2,0xc
    80003af8:	02090863          	beqz	s2,80003b28 <kvmincrease+0x58>
    80003afc:	00000493          	li	s1,0
    80003b00:	00148493          	addi	s1,s1,1
    80003b04:	fffff097          	auipc	ra,0xfffff
    80003b08:	4bc080e7          	jalr	1212(ra) # 80002fc0 <kalloc>
    80003b0c:	fe991ae3          	bne	s2,s1,80003b00 <kvmincrease+0x30>
    80003b10:	01813083          	ld	ra,24(sp)
    80003b14:	01013403          	ld	s0,16(sp)
    80003b18:	00813483          	ld	s1,8(sp)
    80003b1c:	00013903          	ld	s2,0(sp)
    80003b20:	02010113          	addi	sp,sp,32
    80003b24:	00008067          	ret
    80003b28:	01813083          	ld	ra,24(sp)
    80003b2c:	01013403          	ld	s0,16(sp)
    80003b30:	00813483          	ld	s1,8(sp)
    80003b34:	00013903          	ld	s2,0(sp)
    80003b38:	00000513          	li	a0,0
    80003b3c:	02010113          	addi	sp,sp,32
    80003b40:	00008067          	ret
	...

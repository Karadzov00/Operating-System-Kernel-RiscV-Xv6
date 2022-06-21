
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5a813103          	ld	sp,1448(sp) # 800045a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	680010ef          	jal	ra,8000169c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:

.global supervisorTrap
.type supervisorTrap, @function
supervisorTrap:
        # push all registers to stack
        addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
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
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

        call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	2cc000ef          	jal	ra,80001350 <_ZN5Riscv20handleSupervisorTrapEv>

        # pop all registers from stack
        .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
        addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

        sret
    8000110c:	10200073          	sret

0000000080001110 <_Z7syscallPv>:
    uint64 a5;
    uint64 a6;
    uint64 a7;
};

void syscall(void* arg){
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall
    printString("uso u syscall");
    args* ar = (args*)arg;
    uint64 arg0 = ar->a0;
    8000111c:	00053303          	ld	t1,0(a0) # 1000 <_entry-0x7ffff000>
    uint64 arg1 = ar->a1;
    80001120:	00853883          	ld	a7,8(a0)
    uint64 arg2 = ar->a2;
    80001124:	01053803          	ld	a6,16(a0)
    uint64 arg3 = ar->a3;
    80001128:	01853583          	ld	a1,24(a0)
    uint64 arg4 = ar->a4;
    8000112c:	02053603          	ld	a2,32(a0)
    uint64 arg5 = ar->a5;
    80001130:	02853683          	ld	a3,40(a0)
    uint64 arg6 = ar->a6;
    80001134:	03053703          	ld	a4,48(a0)
    uint64 arg7 = ar->a7;
    80001138:	03853783          	ld	a5,56(a0)

    //lock this section?
    8000113c:	00030513          	mv	a0,t1
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001140:	00088593          	mv	a1,a7
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001144:	00080613          	mv	a2,a6
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    80001148:	00058693          	mv	a3,a1
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    8000114c:	00060713          	mv	a4,a2
    __asm__ volatile("mv a4, %0" : : "r" (arg4));
    80001150:	00068793          	mv	a5,a3
    __asm__ volatile("mv a5, %0" : : "r" (arg5));
    80001154:	00070813          	mv	a6,a4
    __asm__ volatile("mv a6, %0" : : "r" (arg6));
    80001158:	00078893          	mv	a7,a5
    __asm__ volatile("mv a7, %0" : : "r" (arg7));

    8000115c:	00003797          	auipc	a5,0x3
    80001160:	4447b783          	ld	a5,1092(a5) # 800045a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001164:	10579073          	csrw	stvec,a5
    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    80001168:	00000073          	ecall
    __asm__ volatile ("ecall");


    8000116c:	00813403          	ld	s0,8(sp)
    80001170:	01010113          	addi	sp,sp,16
    80001174:	00008067          	ret

0000000080001178 <_Z9mem_allocm>:
}

    80001178:	fe010113          	addi	sp,sp,-32
    8000117c:	00113c23          	sd	ra,24(sp)
    80001180:	00813823          	sd	s0,16(sp)
    80001184:	00913423          	sd	s1,8(sp)
    80001188:	02010413          	addi	s0,sp,32
    8000118c:	00050493          	mv	s1,a0
void* mem_alloc (size_t size){
    //prepares parameters to arguments
    //executes system call instruction
    80001190:	04000513          	li	a0,64
    80001194:	00000097          	auipc	ra,0x0
    80001198:	0ac080e7          	jalr	172(ra) # 80001240 <_Znwm>
    8000119c:	00053823          	sd	zero,16(a0)
    800011a0:	00053c23          	sd	zero,24(a0)
    800011a4:	02053023          	sd	zero,32(a0)
    800011a8:	02053423          	sd	zero,40(a0)
    800011ac:	02053823          	sd	zero,48(a0)
    800011b0:	02053c23          	sd	zero,56(a0)
    args* arg = new args();
    800011b4:	00100793          	li	a5,1
    800011b8:	00f53023          	sd	a5,0(a0)
    arg->a0=0x01;

    800011bc:	0064d793          	srli	a5,s1,0x6
    size_t blocks = size/MEM_BLOCK_SIZE;
    800011c0:	03f4f493          	andi	s1,s1,63
    800011c4:	00048463          	beqz	s1,800011cc <_Z9mem_allocm+0x54>
    800011c8:	00178793          	addi	a5,a5,1
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    800011cc:	00f53423          	sd	a5,8(a0)
    arg->a1=blocks;

    800011d0:	00000097          	auipc	ra,0x0
    800011d4:	f40080e7          	jalr	-192(ra) # 80001110 <_Z7syscallPv>
    syscall(arg);

    uint64 ret;
    800011d8:	00050493          	mv	s1,a0
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011dc:	00048513          	mv	a0,s1
    800011e0:	00000097          	auipc	ra,0x0
    800011e4:	2b8080e7          	jalr	696(ra) # 80001498 <_Z12printIntegerm>
    printInteger(ret);
    return (void*)ret;
    800011e8:	00048513          	mv	a0,s1
    800011ec:	01813083          	ld	ra,24(sp)
    800011f0:	01013403          	ld	s0,16(sp)
    800011f4:	00813483          	ld	s1,8(sp)
    800011f8:	02010113          	addi	sp,sp,32
    800011fc:	00008067          	ret

0000000080001200 <main>:
#include "../h/List.hpp"
#include "../h/syscall_c.h"



int main(){
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00113423          	sd	ra,8(sp)
    80001208:	00813023          	sd	s0,0(sp)
    8000120c:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    printString("Hello");
    80001210:	00003517          	auipc	a0,0x3
    80001214:	df050513          	addi	a0,a0,-528 # 80004000 <kvmincrease+0x560>
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	210080e7          	jalr	528(ra) # 80001428 <_Z11printStringPKc>
    mem_alloc(10);
    80001220:	00a00513          	li	a0,10
    80001224:	00000097          	auipc	ra,0x0
    80001228:	f54080e7          	jalr	-172(ra) # 80001178 <_Z9mem_allocm>

    return 0;
}
    8000122c:	00000513          	li	a0,0
    80001230:	00813083          	ld	ra,8(sp)
    80001234:	00013403          	ld	s0,0(sp)
    80001238:	01010113          	addi	sp,sp,16
    8000123c:	00008067          	ret

0000000080001240 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001240:	ff010113          	addi	sp,sp,-16
    80001244:	00113423          	sd	ra,8(sp)
    80001248:	00813023          	sd	s0,0(sp)
    8000124c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001250:	00000097          	auipc	ra,0x0
    80001254:	188080e7          	jalr	392(ra) # 800013d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001258:	00813083          	ld	ra,8(sp)
    8000125c:	00013403          	ld	s0,0(sp)
    80001260:	01010113          	addi	sp,sp,16
    80001264:	00008067          	ret

0000000080001268 <_Znam>:

void* operator new[](size_t n){
    80001268:	ff010113          	addi	sp,sp,-16
    8000126c:	00113423          	sd	ra,8(sp)
    80001270:	00813023          	sd	s0,0(sp)
    80001274:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	160080e7          	jalr	352(ra) # 800013d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001280:	00813083          	ld	ra,8(sp)
    80001284:	00013403          	ld	s0,0(sp)
    80001288:	01010113          	addi	sp,sp,16
    8000128c:	00008067          	ret

0000000080001290 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00113423          	sd	ra,8(sp)
    80001298:	00813023          	sd	s0,0(sp)
    8000129c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800012a0:	00000097          	auipc	ra,0x0
    800012a4:	160080e7          	jalr	352(ra) # 80001400 <_ZN15MemoryAllocator8mem_freeEPv>
}
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	00013403          	ld	s0,0(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00113423          	sd	ra,8(sp)
    800012c0:	00813023          	sd	s0,0(sp)
    800012c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	138080e7          	jalr	312(ra) # 80001400 <_ZN15MemoryAllocator8mem_freeEPv>

}
    800012d0:	00813083          	ld	ra,8(sp)
    800012d4:	00013403          	ld	s0,0(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_ZN5Riscv14syscallHandlerEv>:

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Print.hpp"

void Riscv::syscallHandler() {
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00113423          	sd	ra,8(sp)
    800012e8:	00813023          	sd	s0,0(sp)
    800012ec:	01010413          	addi	s0,sp,16
    //read syscall code from register a0
    printString("uso u syscallhandler");
    800012f0:	00003517          	auipc	a0,0x3
    800012f4:	d1850513          	addi	a0,a0,-744 # 80004008 <kvmincrease+0x568>
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	130080e7          	jalr	304(ra) # 80001428 <_Z11printStringPKc>
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001300:	00050713          	mv	a4,a0
    if(arg0== 0x01 ){
    80001304:	00100793          	li	a5,1
    80001308:	00f70a63          	beq	a4,a5,8000131c <_ZN5Riscv14syscallHandlerEv+0x3c>

        //write return value to a0 register
        asm volatile("mv %0, a0" : "=r" (ptr));
    }

}
    8000130c:	00813083          	ld	ra,8(sp)
    80001310:	00013403          	ld	s0,0(sp)
    80001314:	01010113          	addi	sp,sp,16
    80001318:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    8000131c:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    80001320:	00000097          	auipc	ra,0x0
    80001324:	0b8080e7          	jalr	184(ra) # 800013d8 <_ZN15MemoryAllocator9mem_allocEm>
        asm volatile("mv %0, a0" : "=r" (ptr));
    80001328:	00050793          	mv	a5,a0
}
    8000132c:	fe1ff06f          	j	8000130c <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001330 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000133c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001340:	10200073          	sret
}
    80001344:	00813403          	ld	s0,8(sp)
    80001348:	01010113          	addi	sp,sp,16
    8000134c:	00008067          	ret

0000000080001350 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001350:	fc010113          	addi	sp,sp,-64
    80001354:	02113c23          	sd	ra,56(sp)
    80001358:	02813823          	sd	s0,48(sp)
    8000135c:	02913423          	sd	s1,40(sp)
    80001360:	03213023          	sd	s2,32(sp)
    80001364:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001368:	142027f3          	csrr	a5,scause
    8000136c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001370:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001374:	ff87879b          	addiw	a5,a5,-8
    80001378:	00100713          	li	a4,1
    8000137c:	00f77e63          	bgeu	a4,a5,80001398 <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001380:	03813083          	ld	ra,56(sp)
    80001384:	03013403          	ld	s0,48(sp)
    80001388:	02813483          	ld	s1,40(sp)
    8000138c:	02013903          	ld	s2,32(sp)
    80001390:	04010113          	addi	sp,sp,64
    80001394:	00008067          	ret
        printString("uso u handleTrap");
    80001398:	00003517          	auipc	a0,0x3
    8000139c:	c8850513          	addi	a0,a0,-888 # 80004020 <kvmincrease+0x580>
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	088080e7          	jalr	136(ra) # 80001428 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800013a8:	141027f3          	csrr	a5,sepc
    800013ac:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    800013b0:	fd843483          	ld	s1,-40(s0)
        uint64  sepc = r_sepc() + 4;
    800013b4:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800013b8:	100027f3          	csrr	a5,sstatus
    800013bc:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800013c0:	fd043903          	ld	s2,-48(s0)
        syscallHandler();
    800013c4:	00000097          	auipc	ra,0x0
    800013c8:	f1c080e7          	jalr	-228(ra) # 800012e0 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800013cc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800013d0:	14149073          	csrw	sepc,s1
}
    800013d4:	fadff06f          	j	80001380 <_ZN5Riscv20handleSupervisorTrapEv+0x30>

00000000800013d8 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00113423          	sd	ra,8(sp)
    800013e0:	00813023          	sd	s0,0(sp)
    800013e4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800013e8:	00002097          	auipc	ra,0x2
    800013ec:	440080e7          	jalr	1088(ra) # 80003828 <__mem_alloc>
}
    800013f0:	00813083          	ld	ra,8(sp)
    800013f4:	00013403          	ld	s0,0(sp)
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret

0000000080001400 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001400:	ff010113          	addi	sp,sp,-16
    80001404:	00113423          	sd	ra,8(sp)
    80001408:	00813023          	sd	s0,0(sp)
    8000140c:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001410:	00002097          	auipc	ra,0x2
    80001414:	34c080e7          	jalr	844(ra) # 8000375c <__mem_free>
    80001418:	00813083          	ld	ra,8(sp)
    8000141c:	00013403          	ld	s0,0(sp)
    80001420:	01010113          	addi	sp,sp,16
    80001424:	00008067          	ret

0000000080001428 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001428:	fd010113          	addi	sp,sp,-48
    8000142c:	02113423          	sd	ra,40(sp)
    80001430:	02813023          	sd	s0,32(sp)
    80001434:	00913c23          	sd	s1,24(sp)
    80001438:	01213823          	sd	s2,16(sp)
    8000143c:	03010413          	addi	s0,sp,48
    80001440:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001444:	100027f3          	csrr	a5,sstatus
    80001448:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000144c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001450:	00200793          	li	a5,2
    80001454:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001458:	0004c503          	lbu	a0,0(s1)
    8000145c:	00050a63          	beqz	a0,80001470 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001460:	00002097          	auipc	ra,0x2
    80001464:	520080e7          	jalr	1312(ra) # 80003980 <__putc>
        string++;
    80001468:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000146c:	fedff06f          	j	80001458 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001470:	0009091b          	sext.w	s2,s2
    80001474:	00297913          	andi	s2,s2,2
    80001478:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000147c:	10092073          	csrs	sstatus,s2
}
    80001480:	02813083          	ld	ra,40(sp)
    80001484:	02013403          	ld	s0,32(sp)
    80001488:	01813483          	ld	s1,24(sp)
    8000148c:	01013903          	ld	s2,16(sp)
    80001490:	03010113          	addi	sp,sp,48
    80001494:	00008067          	ret

0000000080001498 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001498:	fc010113          	addi	sp,sp,-64
    8000149c:	02113c23          	sd	ra,56(sp)
    800014a0:	02813823          	sd	s0,48(sp)
    800014a4:	02913423          	sd	s1,40(sp)
    800014a8:	03213023          	sd	s2,32(sp)
    800014ac:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800014b0:	100027f3          	csrr	a5,sstatus
    800014b4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800014b8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800014bc:	00200793          	li	a5,2
    800014c0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800014c4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800014c8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800014cc:	00a00613          	li	a2,10
    800014d0:	02c5773b          	remuw	a4,a0,a2
    800014d4:	02071693          	slli	a3,a4,0x20
    800014d8:	0206d693          	srli	a3,a3,0x20
    800014dc:	00003717          	auipc	a4,0x3
    800014e0:	b5c70713          	addi	a4,a4,-1188 # 80004038 <_ZZ12printIntegermE6digits>
    800014e4:	00d70733          	add	a4,a4,a3
    800014e8:	00074703          	lbu	a4,0(a4)
    800014ec:	fe040693          	addi	a3,s0,-32
    800014f0:	009687b3          	add	a5,a3,s1
    800014f4:	0014849b          	addiw	s1,s1,1
    800014f8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800014fc:	0005071b          	sext.w	a4,a0
    80001500:	02c5553b          	divuw	a0,a0,a2
    80001504:	00900793          	li	a5,9
    80001508:	fce7e2e3          	bltu	a5,a4,800014cc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000150c:	fff4849b          	addiw	s1,s1,-1
    80001510:	0004ce63          	bltz	s1,8000152c <_Z12printIntegerm+0x94>
    80001514:	fe040793          	addi	a5,s0,-32
    80001518:	009787b3          	add	a5,a5,s1
    8000151c:	ff07c503          	lbu	a0,-16(a5)
    80001520:	00002097          	auipc	ra,0x2
    80001524:	460080e7          	jalr	1120(ra) # 80003980 <__putc>
    80001528:	fe5ff06f          	j	8000150c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000152c:	0009091b          	sext.w	s2,s2
    80001530:	00297913          	andi	s2,s2,2
    80001534:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001538:	10092073          	csrs	sstatus,s2
}
    8000153c:	03813083          	ld	ra,56(sp)
    80001540:	03013403          	ld	s0,48(sp)
    80001544:	02813483          	ld	s1,40(sp)
    80001548:	02013903          	ld	s2,32(sp)
    8000154c:	04010113          	addi	sp,sp,64
    80001550:	00008067          	ret

0000000080001554 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00813423          	sd	s0,8(sp)
    8000155c:	01010413          	addi	s0,sp,16
    80001560:	00100793          	li	a5,1
    80001564:	00f50863          	beq	a0,a5,80001574 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret
    80001574:	000107b7          	lui	a5,0x10
    80001578:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000157c:	fef596e3          	bne	a1,a5,80001568 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001580:	00003797          	auipc	a5,0x3
    80001584:	08078793          	addi	a5,a5,128 # 80004600 <_ZN9Scheduler16readyThreadQueueE>
    80001588:	0007b023          	sd	zero,0(a5)
    8000158c:	0007b423          	sd	zero,8(a5)
    80001590:	fd9ff06f          	j	80001568 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001594 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015a8:	00003517          	auipc	a0,0x3
    800015ac:	05853503          	ld	a0,88(a0) # 80004600 <_ZN9Scheduler16readyThreadQueueE>
    800015b0:	04050263          	beqz	a0,800015f4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800015b4:	00853783          	ld	a5,8(a0)
    800015b8:	00003717          	auipc	a4,0x3
    800015bc:	04f73423          	sd	a5,72(a4) # 80004600 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800015c0:	02078463          	beqz	a5,800015e8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800015c4:	00053483          	ld	s1,0(a0)
        delete elem;
    800015c8:	00000097          	auipc	ra,0x0
    800015cc:	cc8080e7          	jalr	-824(ra) # 80001290 <_ZdlPv>
}
    800015d0:	00048513          	mv	a0,s1
    800015d4:	01813083          	ld	ra,24(sp)
    800015d8:	01013403          	ld	s0,16(sp)
    800015dc:	00813483          	ld	s1,8(sp)
    800015e0:	02010113          	addi	sp,sp,32
    800015e4:	00008067          	ret
        if (!head) { tail = 0; }
    800015e8:	00003797          	auipc	a5,0x3
    800015ec:	0207b023          	sd	zero,32(a5) # 80004608 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800015f0:	fd5ff06f          	j	800015c4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800015f4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800015f8:	fd9ff06f          	j	800015d0 <_ZN9Scheduler3getEv+0x3c>

00000000800015fc <_ZN9Scheduler3putEP3TCB>:
{
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	02010413          	addi	s0,sp,32
    80001610:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001614:	01000513          	li	a0,16
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	c28080e7          	jalr	-984(ra) # 80001240 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001620:	00953023          	sd	s1,0(a0)
    80001624:	00053423          	sd	zero,8(a0)
        if (tail)
    80001628:	00003797          	auipc	a5,0x3
    8000162c:	fe07b783          	ld	a5,-32(a5) # 80004608 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001630:	02078263          	beqz	a5,80001654 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001634:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001638:	00003797          	auipc	a5,0x3
    8000163c:	fca7b823          	sd	a0,-48(a5) # 80004608 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret
            head = tail = elem;
    80001654:	00003797          	auipc	a5,0x3
    80001658:	fac78793          	addi	a5,a5,-84 # 80004600 <_ZN9Scheduler16readyThreadQueueE>
    8000165c:	00a7b423          	sd	a0,8(a5)
    80001660:	00a7b023          	sd	a0,0(a5)
    80001664:	fddff06f          	j	80001640 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001668 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16
    80001678:	000105b7          	lui	a1,0x10
    8000167c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001680:	00100513          	li	a0,1
    80001684:	00000097          	auipc	ra,0x0
    80001688:	ed0080e7          	jalr	-304(ra) # 80001554 <_Z41__static_initialization_and_destruction_0ii>
    8000168c:	00813083          	ld	ra,8(sp)
    80001690:	00013403          	ld	s0,0(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <start>:
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    800016a8:	300027f3          	csrr	a5,mstatus
    800016ac:	ffffe737          	lui	a4,0xffffe
    800016b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f7f>
    800016b4:	00e7f7b3          	and	a5,a5,a4
    800016b8:	00001737          	lui	a4,0x1
    800016bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016c0:	00e7e7b3          	or	a5,a5,a4
    800016c4:	30079073          	csrw	mstatus,a5
    800016c8:	00000797          	auipc	a5,0x0
    800016cc:	16078793          	addi	a5,a5,352 # 80001828 <system_main>
    800016d0:	34179073          	csrw	mepc,a5
    800016d4:	00000793          	li	a5,0
    800016d8:	18079073          	csrw	satp,a5
    800016dc:	000107b7          	lui	a5,0x10
    800016e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016e4:	30279073          	csrw	medeleg,a5
    800016e8:	30379073          	csrw	mideleg,a5
    800016ec:	104027f3          	csrr	a5,sie
    800016f0:	2227e793          	ori	a5,a5,546
    800016f4:	10479073          	csrw	sie,a5
    800016f8:	fff00793          	li	a5,-1
    800016fc:	00a7d793          	srli	a5,a5,0xa
    80001700:	3b079073          	csrw	pmpaddr0,a5
    80001704:	00f00793          	li	a5,15
    80001708:	3a079073          	csrw	pmpcfg0,a5
    8000170c:	f14027f3          	csrr	a5,mhartid
    80001710:	0200c737          	lui	a4,0x200c
    80001714:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001718:	0007869b          	sext.w	a3,a5
    8000171c:	00269713          	slli	a4,a3,0x2
    80001720:	000f4637          	lui	a2,0xf4
    80001724:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001728:	00d70733          	add	a4,a4,a3
    8000172c:	0037979b          	slliw	a5,a5,0x3
    80001730:	020046b7          	lui	a3,0x2004
    80001734:	00d787b3          	add	a5,a5,a3
    80001738:	00c585b3          	add	a1,a1,a2
    8000173c:	00371693          	slli	a3,a4,0x3
    80001740:	00003717          	auipc	a4,0x3
    80001744:	ed070713          	addi	a4,a4,-304 # 80004610 <timer_scratch>
    80001748:	00b7b023          	sd	a1,0(a5)
    8000174c:	00d70733          	add	a4,a4,a3
    80001750:	00f73c23          	sd	a5,24(a4)
    80001754:	02c73023          	sd	a2,32(a4)
    80001758:	34071073          	csrw	mscratch,a4
    8000175c:	00000797          	auipc	a5,0x0
    80001760:	6e478793          	addi	a5,a5,1764 # 80001e40 <timervec>
    80001764:	30579073          	csrw	mtvec,a5
    80001768:	300027f3          	csrr	a5,mstatus
    8000176c:	0087e793          	ori	a5,a5,8
    80001770:	30079073          	csrw	mstatus,a5
    80001774:	304027f3          	csrr	a5,mie
    80001778:	0807e793          	ori	a5,a5,128
    8000177c:	30479073          	csrw	mie,a5
    80001780:	f14027f3          	csrr	a5,mhartid
    80001784:	0007879b          	sext.w	a5,a5
    80001788:	00078213          	mv	tp,a5
    8000178c:	30200073          	mret
    80001790:	00813403          	ld	s0,8(sp)
    80001794:	01010113          	addi	sp,sp,16
    80001798:	00008067          	ret

000000008000179c <timerinit>:
    8000179c:	ff010113          	addi	sp,sp,-16
    800017a0:	00813423          	sd	s0,8(sp)
    800017a4:	01010413          	addi	s0,sp,16
    800017a8:	f14027f3          	csrr	a5,mhartid
    800017ac:	0200c737          	lui	a4,0x200c
    800017b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800017b4:	0007869b          	sext.w	a3,a5
    800017b8:	00269713          	slli	a4,a3,0x2
    800017bc:	000f4637          	lui	a2,0xf4
    800017c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017c4:	00d70733          	add	a4,a4,a3
    800017c8:	0037979b          	slliw	a5,a5,0x3
    800017cc:	020046b7          	lui	a3,0x2004
    800017d0:	00d787b3          	add	a5,a5,a3
    800017d4:	00c585b3          	add	a1,a1,a2
    800017d8:	00371693          	slli	a3,a4,0x3
    800017dc:	00003717          	auipc	a4,0x3
    800017e0:	e3470713          	addi	a4,a4,-460 # 80004610 <timer_scratch>
    800017e4:	00b7b023          	sd	a1,0(a5)
    800017e8:	00d70733          	add	a4,a4,a3
    800017ec:	00f73c23          	sd	a5,24(a4)
    800017f0:	02c73023          	sd	a2,32(a4)
    800017f4:	34071073          	csrw	mscratch,a4
    800017f8:	00000797          	auipc	a5,0x0
    800017fc:	64878793          	addi	a5,a5,1608 # 80001e40 <timervec>
    80001800:	30579073          	csrw	mtvec,a5
    80001804:	300027f3          	csrr	a5,mstatus
    80001808:	0087e793          	ori	a5,a5,8
    8000180c:	30079073          	csrw	mstatus,a5
    80001810:	304027f3          	csrr	a5,mie
    80001814:	0807e793          	ori	a5,a5,128
    80001818:	30479073          	csrw	mie,a5
    8000181c:	00813403          	ld	s0,8(sp)
    80001820:	01010113          	addi	sp,sp,16
    80001824:	00008067          	ret

0000000080001828 <system_main>:
    80001828:	fe010113          	addi	sp,sp,-32
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	00113c23          	sd	ra,24(sp)
    80001838:	02010413          	addi	s0,sp,32
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	0c4080e7          	jalr	196(ra) # 80001900 <cpuid>
    80001844:	00003497          	auipc	s1,0x3
    80001848:	d8c48493          	addi	s1,s1,-628 # 800045d0 <started>
    8000184c:	02050263          	beqz	a0,80001870 <system_main+0x48>
    80001850:	0004a783          	lw	a5,0(s1)
    80001854:	0007879b          	sext.w	a5,a5
    80001858:	fe078ce3          	beqz	a5,80001850 <system_main+0x28>
    8000185c:	0ff0000f          	fence
    80001860:	00003517          	auipc	a0,0x3
    80001864:	81850513          	addi	a0,a0,-2024 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	a74080e7          	jalr	-1420(ra) # 800022dc <panic>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	9c8080e7          	jalr	-1592(ra) # 80002238 <consoleinit>
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	154080e7          	jalr	340(ra) # 800029cc <printfinit>
    80001880:	00003517          	auipc	a0,0x3
    80001884:	8d850513          	addi	a0,a0,-1832 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001888:	00001097          	auipc	ra,0x1
    8000188c:	ab0080e7          	jalr	-1360(ra) # 80002338 <__printf>
    80001890:	00002517          	auipc	a0,0x2
    80001894:	7b850513          	addi	a0,a0,1976 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001898:	00001097          	auipc	ra,0x1
    8000189c:	aa0080e7          	jalr	-1376(ra) # 80002338 <__printf>
    800018a0:	00003517          	auipc	a0,0x3
    800018a4:	8b850513          	addi	a0,a0,-1864 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	a90080e7          	jalr	-1392(ra) # 80002338 <__printf>
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	4a8080e7          	jalr	1192(ra) # 80002d58 <kinit>
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	148080e7          	jalr	328(ra) # 80001a00 <trapinit>
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	16c080e7          	jalr	364(ra) # 80001a2c <trapinithart>
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	5b8080e7          	jalr	1464(ra) # 80001e80 <plicinit>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	5d8080e7          	jalr	1496(ra) # 80001ea8 <plicinithart>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	078080e7          	jalr	120(ra) # 80001950 <userinit>
    800018e0:	0ff0000f          	fence
    800018e4:	00100793          	li	a5,1
    800018e8:	00002517          	auipc	a0,0x2
    800018ec:	77850513          	addi	a0,a0,1912 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    800018f0:	00f4a023          	sw	a5,0(s1)
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	a44080e7          	jalr	-1468(ra) # 80002338 <__printf>
    800018fc:	0000006f          	j	800018fc <system_main+0xd4>

0000000080001900 <cpuid>:
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00813423          	sd	s0,8(sp)
    80001908:	01010413          	addi	s0,sp,16
    8000190c:	00020513          	mv	a0,tp
    80001910:	00813403          	ld	s0,8(sp)
    80001914:	0005051b          	sext.w	a0,a0
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <mycpu>:
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813423          	sd	s0,8(sp)
    80001928:	01010413          	addi	s0,sp,16
    8000192c:	00020793          	mv	a5,tp
    80001930:	00813403          	ld	s0,8(sp)
    80001934:	0007879b          	sext.w	a5,a5
    80001938:	00779793          	slli	a5,a5,0x7
    8000193c:	00004517          	auipc	a0,0x4
    80001940:	d0450513          	addi	a0,a0,-764 # 80005640 <cpus>
    80001944:	00f50533          	add	a0,a0,a5
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <userinit>:
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813423          	sd	s0,8(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00813403          	ld	s0,8(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00000317          	auipc	t1,0x0
    80001968:	89c30067          	jr	-1892(t1) # 80001200 <main>

000000008000196c <either_copyout>:
    8000196c:	ff010113          	addi	sp,sp,-16
    80001970:	00813023          	sd	s0,0(sp)
    80001974:	00113423          	sd	ra,8(sp)
    80001978:	01010413          	addi	s0,sp,16
    8000197c:	02051663          	bnez	a0,800019a8 <either_copyout+0x3c>
    80001980:	00058513          	mv	a0,a1
    80001984:	00060593          	mv	a1,a2
    80001988:	0006861b          	sext.w	a2,a3
    8000198c:	00002097          	auipc	ra,0x2
    80001990:	c58080e7          	jalr	-936(ra) # 800035e4 <__memmove>
    80001994:	00813083          	ld	ra,8(sp)
    80001998:	00013403          	ld	s0,0(sp)
    8000199c:	00000513          	li	a0,0
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret
    800019a8:	00002517          	auipc	a0,0x2
    800019ac:	6f850513          	addi	a0,a0,1784 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	92c080e7          	jalr	-1748(ra) # 800022dc <panic>

00000000800019b8 <either_copyin>:
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00813023          	sd	s0,0(sp)
    800019c0:	00113423          	sd	ra,8(sp)
    800019c4:	01010413          	addi	s0,sp,16
    800019c8:	02059463          	bnez	a1,800019f0 <either_copyin+0x38>
    800019cc:	00060593          	mv	a1,a2
    800019d0:	0006861b          	sext.w	a2,a3
    800019d4:	00002097          	auipc	ra,0x2
    800019d8:	c10080e7          	jalr	-1008(ra) # 800035e4 <__memmove>
    800019dc:	00813083          	ld	ra,8(sp)
    800019e0:	00013403          	ld	s0,0(sp)
    800019e4:	00000513          	li	a0,0
    800019e8:	01010113          	addi	sp,sp,16
    800019ec:	00008067          	ret
    800019f0:	00002517          	auipc	a0,0x2
    800019f4:	6d850513          	addi	a0,a0,1752 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	8e4080e7          	jalr	-1820(ra) # 800022dc <panic>

0000000080001a00 <trapinit>:
    80001a00:	ff010113          	addi	sp,sp,-16
    80001a04:	00813423          	sd	s0,8(sp)
    80001a08:	01010413          	addi	s0,sp,16
    80001a0c:	00813403          	ld	s0,8(sp)
    80001a10:	00002597          	auipc	a1,0x2
    80001a14:	6e058593          	addi	a1,a1,1760 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001a18:	00004517          	auipc	a0,0x4
    80001a1c:	ca850513          	addi	a0,a0,-856 # 800056c0 <tickslock>
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00001317          	auipc	t1,0x1
    80001a28:	5c430067          	jr	1476(t1) # 80002fe8 <initlock>

0000000080001a2c <trapinithart>:
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00813423          	sd	s0,8(sp)
    80001a34:	01010413          	addi	s0,sp,16
    80001a38:	00000797          	auipc	a5,0x0
    80001a3c:	2f878793          	addi	a5,a5,760 # 80001d30 <kernelvec>
    80001a40:	10579073          	csrw	stvec,a5
    80001a44:	00813403          	ld	s0,8(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <usertrap>:
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00813423          	sd	s0,8(sp)
    80001a58:	01010413          	addi	s0,sp,16
    80001a5c:	00813403          	ld	s0,8(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <usertrapret>:
    80001a68:	ff010113          	addi	sp,sp,-16
    80001a6c:	00813423          	sd	s0,8(sp)
    80001a70:	01010413          	addi	s0,sp,16
    80001a74:	00813403          	ld	s0,8(sp)
    80001a78:	01010113          	addi	sp,sp,16
    80001a7c:	00008067          	ret

0000000080001a80 <kerneltrap>:
    80001a80:	fe010113          	addi	sp,sp,-32
    80001a84:	00813823          	sd	s0,16(sp)
    80001a88:	00113c23          	sd	ra,24(sp)
    80001a8c:	00913423          	sd	s1,8(sp)
    80001a90:	02010413          	addi	s0,sp,32
    80001a94:	142025f3          	csrr	a1,scause
    80001a98:	100027f3          	csrr	a5,sstatus
    80001a9c:	0027f793          	andi	a5,a5,2
    80001aa0:	10079c63          	bnez	a5,80001bb8 <kerneltrap+0x138>
    80001aa4:	142027f3          	csrr	a5,scause
    80001aa8:	0207ce63          	bltz	a5,80001ae4 <kerneltrap+0x64>
    80001aac:	00002517          	auipc	a0,0x2
    80001ab0:	68c50513          	addi	a0,a0,1676 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	884080e7          	jalr	-1916(ra) # 80002338 <__printf>
    80001abc:	141025f3          	csrr	a1,sepc
    80001ac0:	14302673          	csrr	a2,stval
    80001ac4:	00002517          	auipc	a0,0x2
    80001ac8:	68450513          	addi	a0,a0,1668 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	86c080e7          	jalr	-1940(ra) # 80002338 <__printf>
    80001ad4:	00002517          	auipc	a0,0x2
    80001ad8:	68c50513          	addi	a0,a0,1676 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	800080e7          	jalr	-2048(ra) # 800022dc <panic>
    80001ae4:	0ff7f713          	andi	a4,a5,255
    80001ae8:	00900693          	li	a3,9
    80001aec:	04d70063          	beq	a4,a3,80001b2c <kerneltrap+0xac>
    80001af0:	fff00713          	li	a4,-1
    80001af4:	03f71713          	slli	a4,a4,0x3f
    80001af8:	00170713          	addi	a4,a4,1
    80001afc:	fae798e3          	bne	a5,a4,80001aac <kerneltrap+0x2c>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	e00080e7          	jalr	-512(ra) # 80001900 <cpuid>
    80001b08:	06050663          	beqz	a0,80001b74 <kerneltrap+0xf4>
    80001b0c:	144027f3          	csrr	a5,sip
    80001b10:	ffd7f793          	andi	a5,a5,-3
    80001b14:	14479073          	csrw	sip,a5
    80001b18:	01813083          	ld	ra,24(sp)
    80001b1c:	01013403          	ld	s0,16(sp)
    80001b20:	00813483          	ld	s1,8(sp)
    80001b24:	02010113          	addi	sp,sp,32
    80001b28:	00008067          	ret
    80001b2c:	00000097          	auipc	ra,0x0
    80001b30:	3c8080e7          	jalr	968(ra) # 80001ef4 <plic_claim>
    80001b34:	00a00793          	li	a5,10
    80001b38:	00050493          	mv	s1,a0
    80001b3c:	06f50863          	beq	a0,a5,80001bac <kerneltrap+0x12c>
    80001b40:	fc050ce3          	beqz	a0,80001b18 <kerneltrap+0x98>
    80001b44:	00050593          	mv	a1,a0
    80001b48:	00002517          	auipc	a0,0x2
    80001b4c:	5d050513          	addi	a0,a0,1488 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	7e8080e7          	jalr	2024(ra) # 80002338 <__printf>
    80001b58:	01013403          	ld	s0,16(sp)
    80001b5c:	01813083          	ld	ra,24(sp)
    80001b60:	00048513          	mv	a0,s1
    80001b64:	00813483          	ld	s1,8(sp)
    80001b68:	02010113          	addi	sp,sp,32
    80001b6c:	00000317          	auipc	t1,0x0
    80001b70:	3c030067          	jr	960(t1) # 80001f2c <plic_complete>
    80001b74:	00004517          	auipc	a0,0x4
    80001b78:	b4c50513          	addi	a0,a0,-1204 # 800056c0 <tickslock>
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	490080e7          	jalr	1168(ra) # 8000300c <acquire>
    80001b84:	00003717          	auipc	a4,0x3
    80001b88:	a5070713          	addi	a4,a4,-1456 # 800045d4 <ticks>
    80001b8c:	00072783          	lw	a5,0(a4)
    80001b90:	00004517          	auipc	a0,0x4
    80001b94:	b3050513          	addi	a0,a0,-1232 # 800056c0 <tickslock>
    80001b98:	0017879b          	addiw	a5,a5,1
    80001b9c:	00f72023          	sw	a5,0(a4)
    80001ba0:	00001097          	auipc	ra,0x1
    80001ba4:	538080e7          	jalr	1336(ra) # 800030d8 <release>
    80001ba8:	f65ff06f          	j	80001b0c <kerneltrap+0x8c>
    80001bac:	00001097          	auipc	ra,0x1
    80001bb0:	094080e7          	jalr	148(ra) # 80002c40 <uartintr>
    80001bb4:	fa5ff06f          	j	80001b58 <kerneltrap+0xd8>
    80001bb8:	00002517          	auipc	a0,0x2
    80001bbc:	54050513          	addi	a0,a0,1344 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001bc0:	00000097          	auipc	ra,0x0
    80001bc4:	71c080e7          	jalr	1820(ra) # 800022dc <panic>

0000000080001bc8 <clockintr>:
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00813823          	sd	s0,16(sp)
    80001bd0:	00913423          	sd	s1,8(sp)
    80001bd4:	00113c23          	sd	ra,24(sp)
    80001bd8:	02010413          	addi	s0,sp,32
    80001bdc:	00004497          	auipc	s1,0x4
    80001be0:	ae448493          	addi	s1,s1,-1308 # 800056c0 <tickslock>
    80001be4:	00048513          	mv	a0,s1
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	424080e7          	jalr	1060(ra) # 8000300c <acquire>
    80001bf0:	00003717          	auipc	a4,0x3
    80001bf4:	9e470713          	addi	a4,a4,-1564 # 800045d4 <ticks>
    80001bf8:	00072783          	lw	a5,0(a4)
    80001bfc:	01013403          	ld	s0,16(sp)
    80001c00:	01813083          	ld	ra,24(sp)
    80001c04:	00048513          	mv	a0,s1
    80001c08:	0017879b          	addiw	a5,a5,1
    80001c0c:	00813483          	ld	s1,8(sp)
    80001c10:	00f72023          	sw	a5,0(a4)
    80001c14:	02010113          	addi	sp,sp,32
    80001c18:	00001317          	auipc	t1,0x1
    80001c1c:	4c030067          	jr	1216(t1) # 800030d8 <release>

0000000080001c20 <devintr>:
    80001c20:	142027f3          	csrr	a5,scause
    80001c24:	00000513          	li	a0,0
    80001c28:	0007c463          	bltz	a5,80001c30 <devintr+0x10>
    80001c2c:	00008067          	ret
    80001c30:	fe010113          	addi	sp,sp,-32
    80001c34:	00813823          	sd	s0,16(sp)
    80001c38:	00113c23          	sd	ra,24(sp)
    80001c3c:	00913423          	sd	s1,8(sp)
    80001c40:	02010413          	addi	s0,sp,32
    80001c44:	0ff7f713          	andi	a4,a5,255
    80001c48:	00900693          	li	a3,9
    80001c4c:	04d70c63          	beq	a4,a3,80001ca4 <devintr+0x84>
    80001c50:	fff00713          	li	a4,-1
    80001c54:	03f71713          	slli	a4,a4,0x3f
    80001c58:	00170713          	addi	a4,a4,1
    80001c5c:	00e78c63          	beq	a5,a4,80001c74 <devintr+0x54>
    80001c60:	01813083          	ld	ra,24(sp)
    80001c64:	01013403          	ld	s0,16(sp)
    80001c68:	00813483          	ld	s1,8(sp)
    80001c6c:	02010113          	addi	sp,sp,32
    80001c70:	00008067          	ret
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	c8c080e7          	jalr	-884(ra) # 80001900 <cpuid>
    80001c7c:	06050663          	beqz	a0,80001ce8 <devintr+0xc8>
    80001c80:	144027f3          	csrr	a5,sip
    80001c84:	ffd7f793          	andi	a5,a5,-3
    80001c88:	14479073          	csrw	sip,a5
    80001c8c:	01813083          	ld	ra,24(sp)
    80001c90:	01013403          	ld	s0,16(sp)
    80001c94:	00813483          	ld	s1,8(sp)
    80001c98:	00200513          	li	a0,2
    80001c9c:	02010113          	addi	sp,sp,32
    80001ca0:	00008067          	ret
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	250080e7          	jalr	592(ra) # 80001ef4 <plic_claim>
    80001cac:	00a00793          	li	a5,10
    80001cb0:	00050493          	mv	s1,a0
    80001cb4:	06f50663          	beq	a0,a5,80001d20 <devintr+0x100>
    80001cb8:	00100513          	li	a0,1
    80001cbc:	fa0482e3          	beqz	s1,80001c60 <devintr+0x40>
    80001cc0:	00048593          	mv	a1,s1
    80001cc4:	00002517          	auipc	a0,0x2
    80001cc8:	45450513          	addi	a0,a0,1108 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	66c080e7          	jalr	1644(ra) # 80002338 <__printf>
    80001cd4:	00048513          	mv	a0,s1
    80001cd8:	00000097          	auipc	ra,0x0
    80001cdc:	254080e7          	jalr	596(ra) # 80001f2c <plic_complete>
    80001ce0:	00100513          	li	a0,1
    80001ce4:	f7dff06f          	j	80001c60 <devintr+0x40>
    80001ce8:	00004517          	auipc	a0,0x4
    80001cec:	9d850513          	addi	a0,a0,-1576 # 800056c0 <tickslock>
    80001cf0:	00001097          	auipc	ra,0x1
    80001cf4:	31c080e7          	jalr	796(ra) # 8000300c <acquire>
    80001cf8:	00003717          	auipc	a4,0x3
    80001cfc:	8dc70713          	addi	a4,a4,-1828 # 800045d4 <ticks>
    80001d00:	00072783          	lw	a5,0(a4)
    80001d04:	00004517          	auipc	a0,0x4
    80001d08:	9bc50513          	addi	a0,a0,-1604 # 800056c0 <tickslock>
    80001d0c:	0017879b          	addiw	a5,a5,1
    80001d10:	00f72023          	sw	a5,0(a4)
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	3c4080e7          	jalr	964(ra) # 800030d8 <release>
    80001d1c:	f65ff06f          	j	80001c80 <devintr+0x60>
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	f20080e7          	jalr	-224(ra) # 80002c40 <uartintr>
    80001d28:	fadff06f          	j	80001cd4 <devintr+0xb4>
    80001d2c:	0000                	unimp
	...

0000000080001d30 <kernelvec>:
    80001d30:	f0010113          	addi	sp,sp,-256
    80001d34:	00113023          	sd	ra,0(sp)
    80001d38:	00213423          	sd	sp,8(sp)
    80001d3c:	00313823          	sd	gp,16(sp)
    80001d40:	00413c23          	sd	tp,24(sp)
    80001d44:	02513023          	sd	t0,32(sp)
    80001d48:	02613423          	sd	t1,40(sp)
    80001d4c:	02713823          	sd	t2,48(sp)
    80001d50:	02813c23          	sd	s0,56(sp)
    80001d54:	04913023          	sd	s1,64(sp)
    80001d58:	04a13423          	sd	a0,72(sp)
    80001d5c:	04b13823          	sd	a1,80(sp)
    80001d60:	04c13c23          	sd	a2,88(sp)
    80001d64:	06d13023          	sd	a3,96(sp)
    80001d68:	06e13423          	sd	a4,104(sp)
    80001d6c:	06f13823          	sd	a5,112(sp)
    80001d70:	07013c23          	sd	a6,120(sp)
    80001d74:	09113023          	sd	a7,128(sp)
    80001d78:	09213423          	sd	s2,136(sp)
    80001d7c:	09313823          	sd	s3,144(sp)
    80001d80:	09413c23          	sd	s4,152(sp)
    80001d84:	0b513023          	sd	s5,160(sp)
    80001d88:	0b613423          	sd	s6,168(sp)
    80001d8c:	0b713823          	sd	s7,176(sp)
    80001d90:	0b813c23          	sd	s8,184(sp)
    80001d94:	0d913023          	sd	s9,192(sp)
    80001d98:	0da13423          	sd	s10,200(sp)
    80001d9c:	0db13823          	sd	s11,208(sp)
    80001da0:	0dc13c23          	sd	t3,216(sp)
    80001da4:	0fd13023          	sd	t4,224(sp)
    80001da8:	0fe13423          	sd	t5,232(sp)
    80001dac:	0ff13823          	sd	t6,240(sp)
    80001db0:	cd1ff0ef          	jal	ra,80001a80 <kerneltrap>
    80001db4:	00013083          	ld	ra,0(sp)
    80001db8:	00813103          	ld	sp,8(sp)
    80001dbc:	01013183          	ld	gp,16(sp)
    80001dc0:	02013283          	ld	t0,32(sp)
    80001dc4:	02813303          	ld	t1,40(sp)
    80001dc8:	03013383          	ld	t2,48(sp)
    80001dcc:	03813403          	ld	s0,56(sp)
    80001dd0:	04013483          	ld	s1,64(sp)
    80001dd4:	04813503          	ld	a0,72(sp)
    80001dd8:	05013583          	ld	a1,80(sp)
    80001ddc:	05813603          	ld	a2,88(sp)
    80001de0:	06013683          	ld	a3,96(sp)
    80001de4:	06813703          	ld	a4,104(sp)
    80001de8:	07013783          	ld	a5,112(sp)
    80001dec:	07813803          	ld	a6,120(sp)
    80001df0:	08013883          	ld	a7,128(sp)
    80001df4:	08813903          	ld	s2,136(sp)
    80001df8:	09013983          	ld	s3,144(sp)
    80001dfc:	09813a03          	ld	s4,152(sp)
    80001e00:	0a013a83          	ld	s5,160(sp)
    80001e04:	0a813b03          	ld	s6,168(sp)
    80001e08:	0b013b83          	ld	s7,176(sp)
    80001e0c:	0b813c03          	ld	s8,184(sp)
    80001e10:	0c013c83          	ld	s9,192(sp)
    80001e14:	0c813d03          	ld	s10,200(sp)
    80001e18:	0d013d83          	ld	s11,208(sp)
    80001e1c:	0d813e03          	ld	t3,216(sp)
    80001e20:	0e013e83          	ld	t4,224(sp)
    80001e24:	0e813f03          	ld	t5,232(sp)
    80001e28:	0f013f83          	ld	t6,240(sp)
    80001e2c:	10010113          	addi	sp,sp,256
    80001e30:	10200073          	sret
    80001e34:	00000013          	nop
    80001e38:	00000013          	nop
    80001e3c:	00000013          	nop

0000000080001e40 <timervec>:
    80001e40:	34051573          	csrrw	a0,mscratch,a0
    80001e44:	00b53023          	sd	a1,0(a0)
    80001e48:	00c53423          	sd	a2,8(a0)
    80001e4c:	00d53823          	sd	a3,16(a0)
    80001e50:	01853583          	ld	a1,24(a0)
    80001e54:	02053603          	ld	a2,32(a0)
    80001e58:	0005b683          	ld	a3,0(a1)
    80001e5c:	00c686b3          	add	a3,a3,a2
    80001e60:	00d5b023          	sd	a3,0(a1)
    80001e64:	00200593          	li	a1,2
    80001e68:	14459073          	csrw	sip,a1
    80001e6c:	01053683          	ld	a3,16(a0)
    80001e70:	00853603          	ld	a2,8(a0)
    80001e74:	00053583          	ld	a1,0(a0)
    80001e78:	34051573          	csrrw	a0,mscratch,a0
    80001e7c:	30200073          	mret

0000000080001e80 <plicinit>:
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00813423          	sd	s0,8(sp)
    80001e88:	01010413          	addi	s0,sp,16
    80001e8c:	00813403          	ld	s0,8(sp)
    80001e90:	0c0007b7          	lui	a5,0xc000
    80001e94:	00100713          	li	a4,1
    80001e98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e9c:	00e7a223          	sw	a4,4(a5)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <plicinithart>:
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813023          	sd	s0,0(sp)
    80001eb0:	00113423          	sd	ra,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	a48080e7          	jalr	-1464(ra) # 80001900 <cpuid>
    80001ec0:	0085171b          	slliw	a4,a0,0x8
    80001ec4:	0c0027b7          	lui	a5,0xc002
    80001ec8:	00e787b3          	add	a5,a5,a4
    80001ecc:	40200713          	li	a4,1026
    80001ed0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001ed4:	00813083          	ld	ra,8(sp)
    80001ed8:	00013403          	ld	s0,0(sp)
    80001edc:	00d5151b          	slliw	a0,a0,0xd
    80001ee0:	0c2017b7          	lui	a5,0xc201
    80001ee4:	00a78533          	add	a0,a5,a0
    80001ee8:	00052023          	sw	zero,0(a0)
    80001eec:	01010113          	addi	sp,sp,16
    80001ef0:	00008067          	ret

0000000080001ef4 <plic_claim>:
    80001ef4:	ff010113          	addi	sp,sp,-16
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	01010413          	addi	s0,sp,16
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	9fc080e7          	jalr	-1540(ra) # 80001900 <cpuid>
    80001f0c:	00813083          	ld	ra,8(sp)
    80001f10:	00013403          	ld	s0,0(sp)
    80001f14:	00d5151b          	slliw	a0,a0,0xd
    80001f18:	0c2017b7          	lui	a5,0xc201
    80001f1c:	00a78533          	add	a0,a5,a0
    80001f20:	00452503          	lw	a0,4(a0)
    80001f24:	01010113          	addi	sp,sp,16
    80001f28:	00008067          	ret

0000000080001f2c <plic_complete>:
    80001f2c:	fe010113          	addi	sp,sp,-32
    80001f30:	00813823          	sd	s0,16(sp)
    80001f34:	00913423          	sd	s1,8(sp)
    80001f38:	00113c23          	sd	ra,24(sp)
    80001f3c:	02010413          	addi	s0,sp,32
    80001f40:	00050493          	mv	s1,a0
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	9bc080e7          	jalr	-1604(ra) # 80001900 <cpuid>
    80001f4c:	01813083          	ld	ra,24(sp)
    80001f50:	01013403          	ld	s0,16(sp)
    80001f54:	00d5179b          	slliw	a5,a0,0xd
    80001f58:	0c201737          	lui	a4,0xc201
    80001f5c:	00f707b3          	add	a5,a4,a5
    80001f60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f64:	00813483          	ld	s1,8(sp)
    80001f68:	02010113          	addi	sp,sp,32
    80001f6c:	00008067          	ret

0000000080001f70 <consolewrite>:
    80001f70:	fb010113          	addi	sp,sp,-80
    80001f74:	04813023          	sd	s0,64(sp)
    80001f78:	04113423          	sd	ra,72(sp)
    80001f7c:	02913c23          	sd	s1,56(sp)
    80001f80:	03213823          	sd	s2,48(sp)
    80001f84:	03313423          	sd	s3,40(sp)
    80001f88:	03413023          	sd	s4,32(sp)
    80001f8c:	01513c23          	sd	s5,24(sp)
    80001f90:	05010413          	addi	s0,sp,80
    80001f94:	06c05c63          	blez	a2,8000200c <consolewrite+0x9c>
    80001f98:	00060993          	mv	s3,a2
    80001f9c:	00050a13          	mv	s4,a0
    80001fa0:	00058493          	mv	s1,a1
    80001fa4:	00000913          	li	s2,0
    80001fa8:	fff00a93          	li	s5,-1
    80001fac:	01c0006f          	j	80001fc8 <consolewrite+0x58>
    80001fb0:	fbf44503          	lbu	a0,-65(s0)
    80001fb4:	0019091b          	addiw	s2,s2,1
    80001fb8:	00148493          	addi	s1,s1,1
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	a9c080e7          	jalr	-1380(ra) # 80002a58 <uartputc>
    80001fc4:	03298063          	beq	s3,s2,80001fe4 <consolewrite+0x74>
    80001fc8:	00048613          	mv	a2,s1
    80001fcc:	00100693          	li	a3,1
    80001fd0:	000a0593          	mv	a1,s4
    80001fd4:	fbf40513          	addi	a0,s0,-65
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	9e0080e7          	jalr	-1568(ra) # 800019b8 <either_copyin>
    80001fe0:	fd5518e3          	bne	a0,s5,80001fb0 <consolewrite+0x40>
    80001fe4:	04813083          	ld	ra,72(sp)
    80001fe8:	04013403          	ld	s0,64(sp)
    80001fec:	03813483          	ld	s1,56(sp)
    80001ff0:	02813983          	ld	s3,40(sp)
    80001ff4:	02013a03          	ld	s4,32(sp)
    80001ff8:	01813a83          	ld	s5,24(sp)
    80001ffc:	00090513          	mv	a0,s2
    80002000:	03013903          	ld	s2,48(sp)
    80002004:	05010113          	addi	sp,sp,80
    80002008:	00008067          	ret
    8000200c:	00000913          	li	s2,0
    80002010:	fd5ff06f          	j	80001fe4 <consolewrite+0x74>

0000000080002014 <consoleread>:
    80002014:	f9010113          	addi	sp,sp,-112
    80002018:	06813023          	sd	s0,96(sp)
    8000201c:	04913c23          	sd	s1,88(sp)
    80002020:	05213823          	sd	s2,80(sp)
    80002024:	05313423          	sd	s3,72(sp)
    80002028:	05413023          	sd	s4,64(sp)
    8000202c:	03513c23          	sd	s5,56(sp)
    80002030:	03613823          	sd	s6,48(sp)
    80002034:	03713423          	sd	s7,40(sp)
    80002038:	03813023          	sd	s8,32(sp)
    8000203c:	06113423          	sd	ra,104(sp)
    80002040:	01913c23          	sd	s9,24(sp)
    80002044:	07010413          	addi	s0,sp,112
    80002048:	00060b93          	mv	s7,a2
    8000204c:	00050913          	mv	s2,a0
    80002050:	00058c13          	mv	s8,a1
    80002054:	00060b1b          	sext.w	s6,a2
    80002058:	00003497          	auipc	s1,0x3
    8000205c:	69048493          	addi	s1,s1,1680 # 800056e8 <cons>
    80002060:	00400993          	li	s3,4
    80002064:	fff00a13          	li	s4,-1
    80002068:	00a00a93          	li	s5,10
    8000206c:	05705e63          	blez	s7,800020c8 <consoleread+0xb4>
    80002070:	09c4a703          	lw	a4,156(s1)
    80002074:	0984a783          	lw	a5,152(s1)
    80002078:	0007071b          	sext.w	a4,a4
    8000207c:	08e78463          	beq	a5,a4,80002104 <consoleread+0xf0>
    80002080:	07f7f713          	andi	a4,a5,127
    80002084:	00e48733          	add	a4,s1,a4
    80002088:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000208c:	0017869b          	addiw	a3,a5,1
    80002090:	08d4ac23          	sw	a3,152(s1)
    80002094:	00070c9b          	sext.w	s9,a4
    80002098:	0b370663          	beq	a4,s3,80002144 <consoleread+0x130>
    8000209c:	00100693          	li	a3,1
    800020a0:	f9f40613          	addi	a2,s0,-97
    800020a4:	000c0593          	mv	a1,s8
    800020a8:	00090513          	mv	a0,s2
    800020ac:	f8e40fa3          	sb	a4,-97(s0)
    800020b0:	00000097          	auipc	ra,0x0
    800020b4:	8bc080e7          	jalr	-1860(ra) # 8000196c <either_copyout>
    800020b8:	01450863          	beq	a0,s4,800020c8 <consoleread+0xb4>
    800020bc:	001c0c13          	addi	s8,s8,1
    800020c0:	fffb8b9b          	addiw	s7,s7,-1
    800020c4:	fb5c94e3          	bne	s9,s5,8000206c <consoleread+0x58>
    800020c8:	000b851b          	sext.w	a0,s7
    800020cc:	06813083          	ld	ra,104(sp)
    800020d0:	06013403          	ld	s0,96(sp)
    800020d4:	05813483          	ld	s1,88(sp)
    800020d8:	05013903          	ld	s2,80(sp)
    800020dc:	04813983          	ld	s3,72(sp)
    800020e0:	04013a03          	ld	s4,64(sp)
    800020e4:	03813a83          	ld	s5,56(sp)
    800020e8:	02813b83          	ld	s7,40(sp)
    800020ec:	02013c03          	ld	s8,32(sp)
    800020f0:	01813c83          	ld	s9,24(sp)
    800020f4:	40ab053b          	subw	a0,s6,a0
    800020f8:	03013b03          	ld	s6,48(sp)
    800020fc:	07010113          	addi	sp,sp,112
    80002100:	00008067          	ret
    80002104:	00001097          	auipc	ra,0x1
    80002108:	1d8080e7          	jalr	472(ra) # 800032dc <push_on>
    8000210c:	0984a703          	lw	a4,152(s1)
    80002110:	09c4a783          	lw	a5,156(s1)
    80002114:	0007879b          	sext.w	a5,a5
    80002118:	fef70ce3          	beq	a4,a5,80002110 <consoleread+0xfc>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	234080e7          	jalr	564(ra) # 80003350 <pop_on>
    80002124:	0984a783          	lw	a5,152(s1)
    80002128:	07f7f713          	andi	a4,a5,127
    8000212c:	00e48733          	add	a4,s1,a4
    80002130:	01874703          	lbu	a4,24(a4)
    80002134:	0017869b          	addiw	a3,a5,1
    80002138:	08d4ac23          	sw	a3,152(s1)
    8000213c:	00070c9b          	sext.w	s9,a4
    80002140:	f5371ee3          	bne	a4,s3,8000209c <consoleread+0x88>
    80002144:	000b851b          	sext.w	a0,s7
    80002148:	f96bf2e3          	bgeu	s7,s6,800020cc <consoleread+0xb8>
    8000214c:	08f4ac23          	sw	a5,152(s1)
    80002150:	f7dff06f          	j	800020cc <consoleread+0xb8>

0000000080002154 <consputc>:
    80002154:	10000793          	li	a5,256
    80002158:	00f50663          	beq	a0,a5,80002164 <consputc+0x10>
    8000215c:	00001317          	auipc	t1,0x1
    80002160:	9f430067          	jr	-1548(t1) # 80002b50 <uartputc_sync>
    80002164:	ff010113          	addi	sp,sp,-16
    80002168:	00113423          	sd	ra,8(sp)
    8000216c:	00813023          	sd	s0,0(sp)
    80002170:	01010413          	addi	s0,sp,16
    80002174:	00800513          	li	a0,8
    80002178:	00001097          	auipc	ra,0x1
    8000217c:	9d8080e7          	jalr	-1576(ra) # 80002b50 <uartputc_sync>
    80002180:	02000513          	li	a0,32
    80002184:	00001097          	auipc	ra,0x1
    80002188:	9cc080e7          	jalr	-1588(ra) # 80002b50 <uartputc_sync>
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00800513          	li	a0,8
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00001317          	auipc	t1,0x1
    800021a0:	9b430067          	jr	-1612(t1) # 80002b50 <uartputc_sync>

00000000800021a4 <consoleintr>:
    800021a4:	fe010113          	addi	sp,sp,-32
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	01213023          	sd	s2,0(sp)
    800021b4:	00113c23          	sd	ra,24(sp)
    800021b8:	02010413          	addi	s0,sp,32
    800021bc:	00003917          	auipc	s2,0x3
    800021c0:	52c90913          	addi	s2,s2,1324 # 800056e8 <cons>
    800021c4:	00050493          	mv	s1,a0
    800021c8:	00090513          	mv	a0,s2
    800021cc:	00001097          	auipc	ra,0x1
    800021d0:	e40080e7          	jalr	-448(ra) # 8000300c <acquire>
    800021d4:	02048c63          	beqz	s1,8000220c <consoleintr+0x68>
    800021d8:	0a092783          	lw	a5,160(s2)
    800021dc:	09892703          	lw	a4,152(s2)
    800021e0:	07f00693          	li	a3,127
    800021e4:	40e7873b          	subw	a4,a5,a4
    800021e8:	02e6e263          	bltu	a3,a4,8000220c <consoleintr+0x68>
    800021ec:	00d00713          	li	a4,13
    800021f0:	04e48063          	beq	s1,a4,80002230 <consoleintr+0x8c>
    800021f4:	07f7f713          	andi	a4,a5,127
    800021f8:	00e90733          	add	a4,s2,a4
    800021fc:	0017879b          	addiw	a5,a5,1
    80002200:	0af92023          	sw	a5,160(s2)
    80002204:	00970c23          	sb	s1,24(a4)
    80002208:	08f92e23          	sw	a5,156(s2)
    8000220c:	01013403          	ld	s0,16(sp)
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	00013903          	ld	s2,0(sp)
    8000221c:	00003517          	auipc	a0,0x3
    80002220:	4cc50513          	addi	a0,a0,1228 # 800056e8 <cons>
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00001317          	auipc	t1,0x1
    8000222c:	eb030067          	jr	-336(t1) # 800030d8 <release>
    80002230:	00a00493          	li	s1,10
    80002234:	fc1ff06f          	j	800021f4 <consoleintr+0x50>

0000000080002238 <consoleinit>:
    80002238:	fe010113          	addi	sp,sp,-32
    8000223c:	00113c23          	sd	ra,24(sp)
    80002240:	00813823          	sd	s0,16(sp)
    80002244:	00913423          	sd	s1,8(sp)
    80002248:	02010413          	addi	s0,sp,32
    8000224c:	00003497          	auipc	s1,0x3
    80002250:	49c48493          	addi	s1,s1,1180 # 800056e8 <cons>
    80002254:	00048513          	mv	a0,s1
    80002258:	00002597          	auipc	a1,0x2
    8000225c:	f1858593          	addi	a1,a1,-232 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    80002260:	00001097          	auipc	ra,0x1
    80002264:	d88080e7          	jalr	-632(ra) # 80002fe8 <initlock>
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	7ac080e7          	jalr	1964(ra) # 80002a14 <uartinit>
    80002270:	01813083          	ld	ra,24(sp)
    80002274:	01013403          	ld	s0,16(sp)
    80002278:	00000797          	auipc	a5,0x0
    8000227c:	d9c78793          	addi	a5,a5,-612 # 80002014 <consoleread>
    80002280:	0af4bc23          	sd	a5,184(s1)
    80002284:	00000797          	auipc	a5,0x0
    80002288:	cec78793          	addi	a5,a5,-788 # 80001f70 <consolewrite>
    8000228c:	0cf4b023          	sd	a5,192(s1)
    80002290:	00813483          	ld	s1,8(sp)
    80002294:	02010113          	addi	sp,sp,32
    80002298:	00008067          	ret

000000008000229c <console_read>:
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	00813403          	ld	s0,8(sp)
    800022ac:	00003317          	auipc	t1,0x3
    800022b0:	4f433303          	ld	t1,1268(t1) # 800057a0 <devsw+0x10>
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00030067          	jr	t1

00000000800022bc <console_write>:
    800022bc:	ff010113          	addi	sp,sp,-16
    800022c0:	00813423          	sd	s0,8(sp)
    800022c4:	01010413          	addi	s0,sp,16
    800022c8:	00813403          	ld	s0,8(sp)
    800022cc:	00003317          	auipc	t1,0x3
    800022d0:	4dc33303          	ld	t1,1244(t1) # 800057a8 <devsw+0x18>
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00030067          	jr	t1

00000000800022dc <panic>:
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00813823          	sd	s0,16(sp)
    800022e8:	00913423          	sd	s1,8(sp)
    800022ec:	02010413          	addi	s0,sp,32
    800022f0:	00050493          	mv	s1,a0
    800022f4:	00002517          	auipc	a0,0x2
    800022f8:	e8450513          	addi	a0,a0,-380 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    800022fc:	00003797          	auipc	a5,0x3
    80002300:	5407a623          	sw	zero,1356(a5) # 80005848 <pr+0x18>
    80002304:	00000097          	auipc	ra,0x0
    80002308:	034080e7          	jalr	52(ra) # 80002338 <__printf>
    8000230c:	00048513          	mv	a0,s1
    80002310:	00000097          	auipc	ra,0x0
    80002314:	028080e7          	jalr	40(ra) # 80002338 <__printf>
    80002318:	00002517          	auipc	a0,0x2
    8000231c:	e4050513          	addi	a0,a0,-448 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80002320:	00000097          	auipc	ra,0x0
    80002324:	018080e7          	jalr	24(ra) # 80002338 <__printf>
    80002328:	00100793          	li	a5,1
    8000232c:	00002717          	auipc	a4,0x2
    80002330:	2af72623          	sw	a5,684(a4) # 800045d8 <panicked>
    80002334:	0000006f          	j	80002334 <panic+0x58>

0000000080002338 <__printf>:
    80002338:	f3010113          	addi	sp,sp,-208
    8000233c:	08813023          	sd	s0,128(sp)
    80002340:	07313423          	sd	s3,104(sp)
    80002344:	09010413          	addi	s0,sp,144
    80002348:	05813023          	sd	s8,64(sp)
    8000234c:	08113423          	sd	ra,136(sp)
    80002350:	06913c23          	sd	s1,120(sp)
    80002354:	07213823          	sd	s2,112(sp)
    80002358:	07413023          	sd	s4,96(sp)
    8000235c:	05513c23          	sd	s5,88(sp)
    80002360:	05613823          	sd	s6,80(sp)
    80002364:	05713423          	sd	s7,72(sp)
    80002368:	03913c23          	sd	s9,56(sp)
    8000236c:	03a13823          	sd	s10,48(sp)
    80002370:	03b13423          	sd	s11,40(sp)
    80002374:	00003317          	auipc	t1,0x3
    80002378:	4bc30313          	addi	t1,t1,1212 # 80005830 <pr>
    8000237c:	01832c03          	lw	s8,24(t1)
    80002380:	00b43423          	sd	a1,8(s0)
    80002384:	00c43823          	sd	a2,16(s0)
    80002388:	00d43c23          	sd	a3,24(s0)
    8000238c:	02e43023          	sd	a4,32(s0)
    80002390:	02f43423          	sd	a5,40(s0)
    80002394:	03043823          	sd	a6,48(s0)
    80002398:	03143c23          	sd	a7,56(s0)
    8000239c:	00050993          	mv	s3,a0
    800023a0:	4a0c1663          	bnez	s8,8000284c <__printf+0x514>
    800023a4:	60098c63          	beqz	s3,800029bc <__printf+0x684>
    800023a8:	0009c503          	lbu	a0,0(s3)
    800023ac:	00840793          	addi	a5,s0,8
    800023b0:	f6f43c23          	sd	a5,-136(s0)
    800023b4:	00000493          	li	s1,0
    800023b8:	22050063          	beqz	a0,800025d8 <__printf+0x2a0>
    800023bc:	00002a37          	lui	s4,0x2
    800023c0:	00018ab7          	lui	s5,0x18
    800023c4:	000f4b37          	lui	s6,0xf4
    800023c8:	00989bb7          	lui	s7,0x989
    800023cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800023d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800023d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800023d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800023dc:	00148c9b          	addiw	s9,s1,1
    800023e0:	02500793          	li	a5,37
    800023e4:	01998933          	add	s2,s3,s9
    800023e8:	38f51263          	bne	a0,a5,8000276c <__printf+0x434>
    800023ec:	00094783          	lbu	a5,0(s2)
    800023f0:	00078c9b          	sext.w	s9,a5
    800023f4:	1e078263          	beqz	a5,800025d8 <__printf+0x2a0>
    800023f8:	0024849b          	addiw	s1,s1,2
    800023fc:	07000713          	li	a4,112
    80002400:	00998933          	add	s2,s3,s1
    80002404:	38e78a63          	beq	a5,a4,80002798 <__printf+0x460>
    80002408:	20f76863          	bltu	a4,a5,80002618 <__printf+0x2e0>
    8000240c:	42a78863          	beq	a5,a0,8000283c <__printf+0x504>
    80002410:	06400713          	li	a4,100
    80002414:	40e79663          	bne	a5,a4,80002820 <__printf+0x4e8>
    80002418:	f7843783          	ld	a5,-136(s0)
    8000241c:	0007a603          	lw	a2,0(a5)
    80002420:	00878793          	addi	a5,a5,8
    80002424:	f6f43c23          	sd	a5,-136(s0)
    80002428:	42064a63          	bltz	a2,8000285c <__printf+0x524>
    8000242c:	00a00713          	li	a4,10
    80002430:	02e677bb          	remuw	a5,a2,a4
    80002434:	00002d97          	auipc	s11,0x2
    80002438:	d6cd8d93          	addi	s11,s11,-660 # 800041a0 <digits>
    8000243c:	00900593          	li	a1,9
    80002440:	0006051b          	sext.w	a0,a2
    80002444:	00000c93          	li	s9,0
    80002448:	02079793          	slli	a5,a5,0x20
    8000244c:	0207d793          	srli	a5,a5,0x20
    80002450:	00fd87b3          	add	a5,s11,a5
    80002454:	0007c783          	lbu	a5,0(a5)
    80002458:	02e656bb          	divuw	a3,a2,a4
    8000245c:	f8f40023          	sb	a5,-128(s0)
    80002460:	14c5d863          	bge	a1,a2,800025b0 <__printf+0x278>
    80002464:	06300593          	li	a1,99
    80002468:	00100c93          	li	s9,1
    8000246c:	02e6f7bb          	remuw	a5,a3,a4
    80002470:	02079793          	slli	a5,a5,0x20
    80002474:	0207d793          	srli	a5,a5,0x20
    80002478:	00fd87b3          	add	a5,s11,a5
    8000247c:	0007c783          	lbu	a5,0(a5)
    80002480:	02e6d73b          	divuw	a4,a3,a4
    80002484:	f8f400a3          	sb	a5,-127(s0)
    80002488:	12a5f463          	bgeu	a1,a0,800025b0 <__printf+0x278>
    8000248c:	00a00693          	li	a3,10
    80002490:	00900593          	li	a1,9
    80002494:	02d777bb          	remuw	a5,a4,a3
    80002498:	02079793          	slli	a5,a5,0x20
    8000249c:	0207d793          	srli	a5,a5,0x20
    800024a0:	00fd87b3          	add	a5,s11,a5
    800024a4:	0007c503          	lbu	a0,0(a5)
    800024a8:	02d757bb          	divuw	a5,a4,a3
    800024ac:	f8a40123          	sb	a0,-126(s0)
    800024b0:	48e5f263          	bgeu	a1,a4,80002934 <__printf+0x5fc>
    800024b4:	06300513          	li	a0,99
    800024b8:	02d7f5bb          	remuw	a1,a5,a3
    800024bc:	02059593          	slli	a1,a1,0x20
    800024c0:	0205d593          	srli	a1,a1,0x20
    800024c4:	00bd85b3          	add	a1,s11,a1
    800024c8:	0005c583          	lbu	a1,0(a1)
    800024cc:	02d7d7bb          	divuw	a5,a5,a3
    800024d0:	f8b401a3          	sb	a1,-125(s0)
    800024d4:	48e57263          	bgeu	a0,a4,80002958 <__printf+0x620>
    800024d8:	3e700513          	li	a0,999
    800024dc:	02d7f5bb          	remuw	a1,a5,a3
    800024e0:	02059593          	slli	a1,a1,0x20
    800024e4:	0205d593          	srli	a1,a1,0x20
    800024e8:	00bd85b3          	add	a1,s11,a1
    800024ec:	0005c583          	lbu	a1,0(a1)
    800024f0:	02d7d7bb          	divuw	a5,a5,a3
    800024f4:	f8b40223          	sb	a1,-124(s0)
    800024f8:	46e57663          	bgeu	a0,a4,80002964 <__printf+0x62c>
    800024fc:	02d7f5bb          	remuw	a1,a5,a3
    80002500:	02059593          	slli	a1,a1,0x20
    80002504:	0205d593          	srli	a1,a1,0x20
    80002508:	00bd85b3          	add	a1,s11,a1
    8000250c:	0005c583          	lbu	a1,0(a1)
    80002510:	02d7d7bb          	divuw	a5,a5,a3
    80002514:	f8b402a3          	sb	a1,-123(s0)
    80002518:	46ea7863          	bgeu	s4,a4,80002988 <__printf+0x650>
    8000251c:	02d7f5bb          	remuw	a1,a5,a3
    80002520:	02059593          	slli	a1,a1,0x20
    80002524:	0205d593          	srli	a1,a1,0x20
    80002528:	00bd85b3          	add	a1,s11,a1
    8000252c:	0005c583          	lbu	a1,0(a1)
    80002530:	02d7d7bb          	divuw	a5,a5,a3
    80002534:	f8b40323          	sb	a1,-122(s0)
    80002538:	3eeaf863          	bgeu	s5,a4,80002928 <__printf+0x5f0>
    8000253c:	02d7f5bb          	remuw	a1,a5,a3
    80002540:	02059593          	slli	a1,a1,0x20
    80002544:	0205d593          	srli	a1,a1,0x20
    80002548:	00bd85b3          	add	a1,s11,a1
    8000254c:	0005c583          	lbu	a1,0(a1)
    80002550:	02d7d7bb          	divuw	a5,a5,a3
    80002554:	f8b403a3          	sb	a1,-121(s0)
    80002558:	42eb7e63          	bgeu	s6,a4,80002994 <__printf+0x65c>
    8000255c:	02d7f5bb          	remuw	a1,a5,a3
    80002560:	02059593          	slli	a1,a1,0x20
    80002564:	0205d593          	srli	a1,a1,0x20
    80002568:	00bd85b3          	add	a1,s11,a1
    8000256c:	0005c583          	lbu	a1,0(a1)
    80002570:	02d7d7bb          	divuw	a5,a5,a3
    80002574:	f8b40423          	sb	a1,-120(s0)
    80002578:	42ebfc63          	bgeu	s7,a4,800029b0 <__printf+0x678>
    8000257c:	02079793          	slli	a5,a5,0x20
    80002580:	0207d793          	srli	a5,a5,0x20
    80002584:	00fd8db3          	add	s11,s11,a5
    80002588:	000dc703          	lbu	a4,0(s11)
    8000258c:	00a00793          	li	a5,10
    80002590:	00900c93          	li	s9,9
    80002594:	f8e404a3          	sb	a4,-119(s0)
    80002598:	00065c63          	bgez	a2,800025b0 <__printf+0x278>
    8000259c:	f9040713          	addi	a4,s0,-112
    800025a0:	00f70733          	add	a4,a4,a5
    800025a4:	02d00693          	li	a3,45
    800025a8:	fed70823          	sb	a3,-16(a4)
    800025ac:	00078c93          	mv	s9,a5
    800025b0:	f8040793          	addi	a5,s0,-128
    800025b4:	01978cb3          	add	s9,a5,s9
    800025b8:	f7f40d13          	addi	s10,s0,-129
    800025bc:	000cc503          	lbu	a0,0(s9)
    800025c0:	fffc8c93          	addi	s9,s9,-1
    800025c4:	00000097          	auipc	ra,0x0
    800025c8:	b90080e7          	jalr	-1136(ra) # 80002154 <consputc>
    800025cc:	ffac98e3          	bne	s9,s10,800025bc <__printf+0x284>
    800025d0:	00094503          	lbu	a0,0(s2)
    800025d4:	e00514e3          	bnez	a0,800023dc <__printf+0xa4>
    800025d8:	1a0c1663          	bnez	s8,80002784 <__printf+0x44c>
    800025dc:	08813083          	ld	ra,136(sp)
    800025e0:	08013403          	ld	s0,128(sp)
    800025e4:	07813483          	ld	s1,120(sp)
    800025e8:	07013903          	ld	s2,112(sp)
    800025ec:	06813983          	ld	s3,104(sp)
    800025f0:	06013a03          	ld	s4,96(sp)
    800025f4:	05813a83          	ld	s5,88(sp)
    800025f8:	05013b03          	ld	s6,80(sp)
    800025fc:	04813b83          	ld	s7,72(sp)
    80002600:	04013c03          	ld	s8,64(sp)
    80002604:	03813c83          	ld	s9,56(sp)
    80002608:	03013d03          	ld	s10,48(sp)
    8000260c:	02813d83          	ld	s11,40(sp)
    80002610:	0d010113          	addi	sp,sp,208
    80002614:	00008067          	ret
    80002618:	07300713          	li	a4,115
    8000261c:	1ce78a63          	beq	a5,a4,800027f0 <__printf+0x4b8>
    80002620:	07800713          	li	a4,120
    80002624:	1ee79e63          	bne	a5,a4,80002820 <__printf+0x4e8>
    80002628:	f7843783          	ld	a5,-136(s0)
    8000262c:	0007a703          	lw	a4,0(a5)
    80002630:	00878793          	addi	a5,a5,8
    80002634:	f6f43c23          	sd	a5,-136(s0)
    80002638:	28074263          	bltz	a4,800028bc <__printf+0x584>
    8000263c:	00002d97          	auipc	s11,0x2
    80002640:	b64d8d93          	addi	s11,s11,-1180 # 800041a0 <digits>
    80002644:	00f77793          	andi	a5,a4,15
    80002648:	00fd87b3          	add	a5,s11,a5
    8000264c:	0007c683          	lbu	a3,0(a5)
    80002650:	00f00613          	li	a2,15
    80002654:	0007079b          	sext.w	a5,a4
    80002658:	f8d40023          	sb	a3,-128(s0)
    8000265c:	0047559b          	srliw	a1,a4,0x4
    80002660:	0047569b          	srliw	a3,a4,0x4
    80002664:	00000c93          	li	s9,0
    80002668:	0ee65063          	bge	a2,a4,80002748 <__printf+0x410>
    8000266c:	00f6f693          	andi	a3,a3,15
    80002670:	00dd86b3          	add	a3,s11,a3
    80002674:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002678:	0087d79b          	srliw	a5,a5,0x8
    8000267c:	00100c93          	li	s9,1
    80002680:	f8d400a3          	sb	a3,-127(s0)
    80002684:	0cb67263          	bgeu	a2,a1,80002748 <__printf+0x410>
    80002688:	00f7f693          	andi	a3,a5,15
    8000268c:	00dd86b3          	add	a3,s11,a3
    80002690:	0006c583          	lbu	a1,0(a3)
    80002694:	00f00613          	li	a2,15
    80002698:	0047d69b          	srliw	a3,a5,0x4
    8000269c:	f8b40123          	sb	a1,-126(s0)
    800026a0:	0047d593          	srli	a1,a5,0x4
    800026a4:	28f67e63          	bgeu	a2,a5,80002940 <__printf+0x608>
    800026a8:	00f6f693          	andi	a3,a3,15
    800026ac:	00dd86b3          	add	a3,s11,a3
    800026b0:	0006c503          	lbu	a0,0(a3)
    800026b4:	0087d813          	srli	a6,a5,0x8
    800026b8:	0087d69b          	srliw	a3,a5,0x8
    800026bc:	f8a401a3          	sb	a0,-125(s0)
    800026c0:	28b67663          	bgeu	a2,a1,8000294c <__printf+0x614>
    800026c4:	00f6f693          	andi	a3,a3,15
    800026c8:	00dd86b3          	add	a3,s11,a3
    800026cc:	0006c583          	lbu	a1,0(a3)
    800026d0:	00c7d513          	srli	a0,a5,0xc
    800026d4:	00c7d69b          	srliw	a3,a5,0xc
    800026d8:	f8b40223          	sb	a1,-124(s0)
    800026dc:	29067a63          	bgeu	a2,a6,80002970 <__printf+0x638>
    800026e0:	00f6f693          	andi	a3,a3,15
    800026e4:	00dd86b3          	add	a3,s11,a3
    800026e8:	0006c583          	lbu	a1,0(a3)
    800026ec:	0107d813          	srli	a6,a5,0x10
    800026f0:	0107d69b          	srliw	a3,a5,0x10
    800026f4:	f8b402a3          	sb	a1,-123(s0)
    800026f8:	28a67263          	bgeu	a2,a0,8000297c <__printf+0x644>
    800026fc:	00f6f693          	andi	a3,a3,15
    80002700:	00dd86b3          	add	a3,s11,a3
    80002704:	0006c683          	lbu	a3,0(a3)
    80002708:	0147d79b          	srliw	a5,a5,0x14
    8000270c:	f8d40323          	sb	a3,-122(s0)
    80002710:	21067663          	bgeu	a2,a6,8000291c <__printf+0x5e4>
    80002714:	02079793          	slli	a5,a5,0x20
    80002718:	0207d793          	srli	a5,a5,0x20
    8000271c:	00fd8db3          	add	s11,s11,a5
    80002720:	000dc683          	lbu	a3,0(s11)
    80002724:	00800793          	li	a5,8
    80002728:	00700c93          	li	s9,7
    8000272c:	f8d403a3          	sb	a3,-121(s0)
    80002730:	00075c63          	bgez	a4,80002748 <__printf+0x410>
    80002734:	f9040713          	addi	a4,s0,-112
    80002738:	00f70733          	add	a4,a4,a5
    8000273c:	02d00693          	li	a3,45
    80002740:	fed70823          	sb	a3,-16(a4)
    80002744:	00078c93          	mv	s9,a5
    80002748:	f8040793          	addi	a5,s0,-128
    8000274c:	01978cb3          	add	s9,a5,s9
    80002750:	f7f40d13          	addi	s10,s0,-129
    80002754:	000cc503          	lbu	a0,0(s9)
    80002758:	fffc8c93          	addi	s9,s9,-1
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	9f8080e7          	jalr	-1544(ra) # 80002154 <consputc>
    80002764:	ff9d18e3          	bne	s10,s9,80002754 <__printf+0x41c>
    80002768:	0100006f          	j	80002778 <__printf+0x440>
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	9e8080e7          	jalr	-1560(ra) # 80002154 <consputc>
    80002774:	000c8493          	mv	s1,s9
    80002778:	00094503          	lbu	a0,0(s2)
    8000277c:	c60510e3          	bnez	a0,800023dc <__printf+0xa4>
    80002780:	e40c0ee3          	beqz	s8,800025dc <__printf+0x2a4>
    80002784:	00003517          	auipc	a0,0x3
    80002788:	0ac50513          	addi	a0,a0,172 # 80005830 <pr>
    8000278c:	00001097          	auipc	ra,0x1
    80002790:	94c080e7          	jalr	-1716(ra) # 800030d8 <release>
    80002794:	e49ff06f          	j	800025dc <__printf+0x2a4>
    80002798:	f7843783          	ld	a5,-136(s0)
    8000279c:	03000513          	li	a0,48
    800027a0:	01000d13          	li	s10,16
    800027a4:	00878713          	addi	a4,a5,8
    800027a8:	0007bc83          	ld	s9,0(a5)
    800027ac:	f6e43c23          	sd	a4,-136(s0)
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	9a4080e7          	jalr	-1628(ra) # 80002154 <consputc>
    800027b8:	07800513          	li	a0,120
    800027bc:	00000097          	auipc	ra,0x0
    800027c0:	998080e7          	jalr	-1640(ra) # 80002154 <consputc>
    800027c4:	00002d97          	auipc	s11,0x2
    800027c8:	9dcd8d93          	addi	s11,s11,-1572 # 800041a0 <digits>
    800027cc:	03ccd793          	srli	a5,s9,0x3c
    800027d0:	00fd87b3          	add	a5,s11,a5
    800027d4:	0007c503          	lbu	a0,0(a5)
    800027d8:	fffd0d1b          	addiw	s10,s10,-1
    800027dc:	004c9c93          	slli	s9,s9,0x4
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	974080e7          	jalr	-1676(ra) # 80002154 <consputc>
    800027e8:	fe0d12e3          	bnez	s10,800027cc <__printf+0x494>
    800027ec:	f8dff06f          	j	80002778 <__printf+0x440>
    800027f0:	f7843783          	ld	a5,-136(s0)
    800027f4:	0007bc83          	ld	s9,0(a5)
    800027f8:	00878793          	addi	a5,a5,8
    800027fc:	f6f43c23          	sd	a5,-136(s0)
    80002800:	000c9a63          	bnez	s9,80002814 <__printf+0x4dc>
    80002804:	1080006f          	j	8000290c <__printf+0x5d4>
    80002808:	001c8c93          	addi	s9,s9,1
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	948080e7          	jalr	-1720(ra) # 80002154 <consputc>
    80002814:	000cc503          	lbu	a0,0(s9)
    80002818:	fe0518e3          	bnez	a0,80002808 <__printf+0x4d0>
    8000281c:	f5dff06f          	j	80002778 <__printf+0x440>
    80002820:	02500513          	li	a0,37
    80002824:	00000097          	auipc	ra,0x0
    80002828:	930080e7          	jalr	-1744(ra) # 80002154 <consputc>
    8000282c:	000c8513          	mv	a0,s9
    80002830:	00000097          	auipc	ra,0x0
    80002834:	924080e7          	jalr	-1756(ra) # 80002154 <consputc>
    80002838:	f41ff06f          	j	80002778 <__printf+0x440>
    8000283c:	02500513          	li	a0,37
    80002840:	00000097          	auipc	ra,0x0
    80002844:	914080e7          	jalr	-1772(ra) # 80002154 <consputc>
    80002848:	f31ff06f          	j	80002778 <__printf+0x440>
    8000284c:	00030513          	mv	a0,t1
    80002850:	00000097          	auipc	ra,0x0
    80002854:	7bc080e7          	jalr	1980(ra) # 8000300c <acquire>
    80002858:	b4dff06f          	j	800023a4 <__printf+0x6c>
    8000285c:	40c0053b          	negw	a0,a2
    80002860:	00a00713          	li	a4,10
    80002864:	02e576bb          	remuw	a3,a0,a4
    80002868:	00002d97          	auipc	s11,0x2
    8000286c:	938d8d93          	addi	s11,s11,-1736 # 800041a0 <digits>
    80002870:	ff700593          	li	a1,-9
    80002874:	02069693          	slli	a3,a3,0x20
    80002878:	0206d693          	srli	a3,a3,0x20
    8000287c:	00dd86b3          	add	a3,s11,a3
    80002880:	0006c683          	lbu	a3,0(a3)
    80002884:	02e557bb          	divuw	a5,a0,a4
    80002888:	f8d40023          	sb	a3,-128(s0)
    8000288c:	10b65e63          	bge	a2,a1,800029a8 <__printf+0x670>
    80002890:	06300593          	li	a1,99
    80002894:	02e7f6bb          	remuw	a3,a5,a4
    80002898:	02069693          	slli	a3,a3,0x20
    8000289c:	0206d693          	srli	a3,a3,0x20
    800028a0:	00dd86b3          	add	a3,s11,a3
    800028a4:	0006c683          	lbu	a3,0(a3)
    800028a8:	02e7d73b          	divuw	a4,a5,a4
    800028ac:	00200793          	li	a5,2
    800028b0:	f8d400a3          	sb	a3,-127(s0)
    800028b4:	bca5ece3          	bltu	a1,a0,8000248c <__printf+0x154>
    800028b8:	ce5ff06f          	j	8000259c <__printf+0x264>
    800028bc:	40e007bb          	negw	a5,a4
    800028c0:	00002d97          	auipc	s11,0x2
    800028c4:	8e0d8d93          	addi	s11,s11,-1824 # 800041a0 <digits>
    800028c8:	00f7f693          	andi	a3,a5,15
    800028cc:	00dd86b3          	add	a3,s11,a3
    800028d0:	0006c583          	lbu	a1,0(a3)
    800028d4:	ff100613          	li	a2,-15
    800028d8:	0047d69b          	srliw	a3,a5,0x4
    800028dc:	f8b40023          	sb	a1,-128(s0)
    800028e0:	0047d59b          	srliw	a1,a5,0x4
    800028e4:	0ac75e63          	bge	a4,a2,800029a0 <__printf+0x668>
    800028e8:	00f6f693          	andi	a3,a3,15
    800028ec:	00dd86b3          	add	a3,s11,a3
    800028f0:	0006c603          	lbu	a2,0(a3)
    800028f4:	00f00693          	li	a3,15
    800028f8:	0087d79b          	srliw	a5,a5,0x8
    800028fc:	f8c400a3          	sb	a2,-127(s0)
    80002900:	d8b6e4e3          	bltu	a3,a1,80002688 <__printf+0x350>
    80002904:	00200793          	li	a5,2
    80002908:	e2dff06f          	j	80002734 <__printf+0x3fc>
    8000290c:	00002c97          	auipc	s9,0x2
    80002910:	874c8c93          	addi	s9,s9,-1932 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002914:	02800513          	li	a0,40
    80002918:	ef1ff06f          	j	80002808 <__printf+0x4d0>
    8000291c:	00700793          	li	a5,7
    80002920:	00600c93          	li	s9,6
    80002924:	e0dff06f          	j	80002730 <__printf+0x3f8>
    80002928:	00700793          	li	a5,7
    8000292c:	00600c93          	li	s9,6
    80002930:	c69ff06f          	j	80002598 <__printf+0x260>
    80002934:	00300793          	li	a5,3
    80002938:	00200c93          	li	s9,2
    8000293c:	c5dff06f          	j	80002598 <__printf+0x260>
    80002940:	00300793          	li	a5,3
    80002944:	00200c93          	li	s9,2
    80002948:	de9ff06f          	j	80002730 <__printf+0x3f8>
    8000294c:	00400793          	li	a5,4
    80002950:	00300c93          	li	s9,3
    80002954:	dddff06f          	j	80002730 <__printf+0x3f8>
    80002958:	00400793          	li	a5,4
    8000295c:	00300c93          	li	s9,3
    80002960:	c39ff06f          	j	80002598 <__printf+0x260>
    80002964:	00500793          	li	a5,5
    80002968:	00400c93          	li	s9,4
    8000296c:	c2dff06f          	j	80002598 <__printf+0x260>
    80002970:	00500793          	li	a5,5
    80002974:	00400c93          	li	s9,4
    80002978:	db9ff06f          	j	80002730 <__printf+0x3f8>
    8000297c:	00600793          	li	a5,6
    80002980:	00500c93          	li	s9,5
    80002984:	dadff06f          	j	80002730 <__printf+0x3f8>
    80002988:	00600793          	li	a5,6
    8000298c:	00500c93          	li	s9,5
    80002990:	c09ff06f          	j	80002598 <__printf+0x260>
    80002994:	00800793          	li	a5,8
    80002998:	00700c93          	li	s9,7
    8000299c:	bfdff06f          	j	80002598 <__printf+0x260>
    800029a0:	00100793          	li	a5,1
    800029a4:	d91ff06f          	j	80002734 <__printf+0x3fc>
    800029a8:	00100793          	li	a5,1
    800029ac:	bf1ff06f          	j	8000259c <__printf+0x264>
    800029b0:	00900793          	li	a5,9
    800029b4:	00800c93          	li	s9,8
    800029b8:	be1ff06f          	j	80002598 <__printf+0x260>
    800029bc:	00001517          	auipc	a0,0x1
    800029c0:	7cc50513          	addi	a0,a0,1996 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	918080e7          	jalr	-1768(ra) # 800022dc <panic>

00000000800029cc <printfinit>:
    800029cc:	fe010113          	addi	sp,sp,-32
    800029d0:	00813823          	sd	s0,16(sp)
    800029d4:	00913423          	sd	s1,8(sp)
    800029d8:	00113c23          	sd	ra,24(sp)
    800029dc:	02010413          	addi	s0,sp,32
    800029e0:	00003497          	auipc	s1,0x3
    800029e4:	e5048493          	addi	s1,s1,-432 # 80005830 <pr>
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00001597          	auipc	a1,0x1
    800029f0:	7ac58593          	addi	a1,a1,1964 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	5f4080e7          	jalr	1524(ra) # 80002fe8 <initlock>
    800029fc:	01813083          	ld	ra,24(sp)
    80002a00:	01013403          	ld	s0,16(sp)
    80002a04:	0004ac23          	sw	zero,24(s1)
    80002a08:	00813483          	ld	s1,8(sp)
    80002a0c:	02010113          	addi	sp,sp,32
    80002a10:	00008067          	ret

0000000080002a14 <uartinit>:
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00813423          	sd	s0,8(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    80002a20:	100007b7          	lui	a5,0x10000
    80002a24:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a28:	f8000713          	li	a4,-128
    80002a2c:	00e781a3          	sb	a4,3(a5)
    80002a30:	00300713          	li	a4,3
    80002a34:	00e78023          	sb	a4,0(a5)
    80002a38:	000780a3          	sb	zero,1(a5)
    80002a3c:	00e781a3          	sb	a4,3(a5)
    80002a40:	00700693          	li	a3,7
    80002a44:	00d78123          	sb	a3,2(a5)
    80002a48:	00e780a3          	sb	a4,1(a5)
    80002a4c:	00813403          	ld	s0,8(sp)
    80002a50:	01010113          	addi	sp,sp,16
    80002a54:	00008067          	ret

0000000080002a58 <uartputc>:
    80002a58:	00002797          	auipc	a5,0x2
    80002a5c:	b807a783          	lw	a5,-1152(a5) # 800045d8 <panicked>
    80002a60:	00078463          	beqz	a5,80002a68 <uartputc+0x10>
    80002a64:	0000006f          	j	80002a64 <uartputc+0xc>
    80002a68:	fd010113          	addi	sp,sp,-48
    80002a6c:	02813023          	sd	s0,32(sp)
    80002a70:	00913c23          	sd	s1,24(sp)
    80002a74:	01213823          	sd	s2,16(sp)
    80002a78:	01313423          	sd	s3,8(sp)
    80002a7c:	02113423          	sd	ra,40(sp)
    80002a80:	03010413          	addi	s0,sp,48
    80002a84:	00002917          	auipc	s2,0x2
    80002a88:	b5c90913          	addi	s2,s2,-1188 # 800045e0 <uart_tx_r>
    80002a8c:	00093783          	ld	a5,0(s2)
    80002a90:	00002497          	auipc	s1,0x2
    80002a94:	b5848493          	addi	s1,s1,-1192 # 800045e8 <uart_tx_w>
    80002a98:	0004b703          	ld	a4,0(s1)
    80002a9c:	02078693          	addi	a3,a5,32
    80002aa0:	00050993          	mv	s3,a0
    80002aa4:	02e69c63          	bne	a3,a4,80002adc <uartputc+0x84>
    80002aa8:	00001097          	auipc	ra,0x1
    80002aac:	834080e7          	jalr	-1996(ra) # 800032dc <push_on>
    80002ab0:	00093783          	ld	a5,0(s2)
    80002ab4:	0004b703          	ld	a4,0(s1)
    80002ab8:	02078793          	addi	a5,a5,32
    80002abc:	00e79463          	bne	a5,a4,80002ac4 <uartputc+0x6c>
    80002ac0:	0000006f          	j	80002ac0 <uartputc+0x68>
    80002ac4:	00001097          	auipc	ra,0x1
    80002ac8:	88c080e7          	jalr	-1908(ra) # 80003350 <pop_on>
    80002acc:	00093783          	ld	a5,0(s2)
    80002ad0:	0004b703          	ld	a4,0(s1)
    80002ad4:	02078693          	addi	a3,a5,32
    80002ad8:	fce688e3          	beq	a3,a4,80002aa8 <uartputc+0x50>
    80002adc:	01f77693          	andi	a3,a4,31
    80002ae0:	00003597          	auipc	a1,0x3
    80002ae4:	d7058593          	addi	a1,a1,-656 # 80005850 <uart_tx_buf>
    80002ae8:	00d586b3          	add	a3,a1,a3
    80002aec:	00170713          	addi	a4,a4,1
    80002af0:	01368023          	sb	s3,0(a3)
    80002af4:	00e4b023          	sd	a4,0(s1)
    80002af8:	10000637          	lui	a2,0x10000
    80002afc:	02f71063          	bne	a4,a5,80002b1c <uartputc+0xc4>
    80002b00:	0340006f          	j	80002b34 <uartputc+0xdc>
    80002b04:	00074703          	lbu	a4,0(a4)
    80002b08:	00f93023          	sd	a5,0(s2)
    80002b0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b10:	00093783          	ld	a5,0(s2)
    80002b14:	0004b703          	ld	a4,0(s1)
    80002b18:	00f70e63          	beq	a4,a5,80002b34 <uartputc+0xdc>
    80002b1c:	00564683          	lbu	a3,5(a2)
    80002b20:	01f7f713          	andi	a4,a5,31
    80002b24:	00e58733          	add	a4,a1,a4
    80002b28:	0206f693          	andi	a3,a3,32
    80002b2c:	00178793          	addi	a5,a5,1
    80002b30:	fc069ae3          	bnez	a3,80002b04 <uartputc+0xac>
    80002b34:	02813083          	ld	ra,40(sp)
    80002b38:	02013403          	ld	s0,32(sp)
    80002b3c:	01813483          	ld	s1,24(sp)
    80002b40:	01013903          	ld	s2,16(sp)
    80002b44:	00813983          	ld	s3,8(sp)
    80002b48:	03010113          	addi	sp,sp,48
    80002b4c:	00008067          	ret

0000000080002b50 <uartputc_sync>:
    80002b50:	ff010113          	addi	sp,sp,-16
    80002b54:	00813423          	sd	s0,8(sp)
    80002b58:	01010413          	addi	s0,sp,16
    80002b5c:	00002717          	auipc	a4,0x2
    80002b60:	a7c72703          	lw	a4,-1412(a4) # 800045d8 <panicked>
    80002b64:	02071663          	bnez	a4,80002b90 <uartputc_sync+0x40>
    80002b68:	00050793          	mv	a5,a0
    80002b6c:	100006b7          	lui	a3,0x10000
    80002b70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002b74:	02077713          	andi	a4,a4,32
    80002b78:	fe070ce3          	beqz	a4,80002b70 <uartputc_sync+0x20>
    80002b7c:	0ff7f793          	andi	a5,a5,255
    80002b80:	00f68023          	sb	a5,0(a3)
    80002b84:	00813403          	ld	s0,8(sp)
    80002b88:	01010113          	addi	sp,sp,16
    80002b8c:	00008067          	ret
    80002b90:	0000006f          	j	80002b90 <uartputc_sync+0x40>

0000000080002b94 <uartstart>:
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    80002ba0:	00002617          	auipc	a2,0x2
    80002ba4:	a4060613          	addi	a2,a2,-1472 # 800045e0 <uart_tx_r>
    80002ba8:	00002517          	auipc	a0,0x2
    80002bac:	a4050513          	addi	a0,a0,-1472 # 800045e8 <uart_tx_w>
    80002bb0:	00063783          	ld	a5,0(a2)
    80002bb4:	00053703          	ld	a4,0(a0)
    80002bb8:	04f70263          	beq	a4,a5,80002bfc <uartstart+0x68>
    80002bbc:	100005b7          	lui	a1,0x10000
    80002bc0:	00003817          	auipc	a6,0x3
    80002bc4:	c9080813          	addi	a6,a6,-880 # 80005850 <uart_tx_buf>
    80002bc8:	01c0006f          	j	80002be4 <uartstart+0x50>
    80002bcc:	0006c703          	lbu	a4,0(a3)
    80002bd0:	00f63023          	sd	a5,0(a2)
    80002bd4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bd8:	00063783          	ld	a5,0(a2)
    80002bdc:	00053703          	ld	a4,0(a0)
    80002be0:	00f70e63          	beq	a4,a5,80002bfc <uartstart+0x68>
    80002be4:	01f7f713          	andi	a4,a5,31
    80002be8:	00e806b3          	add	a3,a6,a4
    80002bec:	0055c703          	lbu	a4,5(a1)
    80002bf0:	00178793          	addi	a5,a5,1
    80002bf4:	02077713          	andi	a4,a4,32
    80002bf8:	fc071ae3          	bnez	a4,80002bcc <uartstart+0x38>
    80002bfc:	00813403          	ld	s0,8(sp)
    80002c00:	01010113          	addi	sp,sp,16
    80002c04:	00008067          	ret

0000000080002c08 <uartgetc>:
    80002c08:	ff010113          	addi	sp,sp,-16
    80002c0c:	00813423          	sd	s0,8(sp)
    80002c10:	01010413          	addi	s0,sp,16
    80002c14:	10000737          	lui	a4,0x10000
    80002c18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c1c:	0017f793          	andi	a5,a5,1
    80002c20:	00078c63          	beqz	a5,80002c38 <uartgetc+0x30>
    80002c24:	00074503          	lbu	a0,0(a4)
    80002c28:	0ff57513          	andi	a0,a0,255
    80002c2c:	00813403          	ld	s0,8(sp)
    80002c30:	01010113          	addi	sp,sp,16
    80002c34:	00008067          	ret
    80002c38:	fff00513          	li	a0,-1
    80002c3c:	ff1ff06f          	j	80002c2c <uartgetc+0x24>

0000000080002c40 <uartintr>:
    80002c40:	100007b7          	lui	a5,0x10000
    80002c44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c48:	0017f793          	andi	a5,a5,1
    80002c4c:	0a078463          	beqz	a5,80002cf4 <uartintr+0xb4>
    80002c50:	fe010113          	addi	sp,sp,-32
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00913423          	sd	s1,8(sp)
    80002c5c:	00113c23          	sd	ra,24(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	100004b7          	lui	s1,0x10000
    80002c68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c6c:	0ff57513          	andi	a0,a0,255
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	534080e7          	jalr	1332(ra) # 800021a4 <consoleintr>
    80002c78:	0054c783          	lbu	a5,5(s1)
    80002c7c:	0017f793          	andi	a5,a5,1
    80002c80:	fe0794e3          	bnez	a5,80002c68 <uartintr+0x28>
    80002c84:	00002617          	auipc	a2,0x2
    80002c88:	95c60613          	addi	a2,a2,-1700 # 800045e0 <uart_tx_r>
    80002c8c:	00002517          	auipc	a0,0x2
    80002c90:	95c50513          	addi	a0,a0,-1700 # 800045e8 <uart_tx_w>
    80002c94:	00063783          	ld	a5,0(a2)
    80002c98:	00053703          	ld	a4,0(a0)
    80002c9c:	04f70263          	beq	a4,a5,80002ce0 <uartintr+0xa0>
    80002ca0:	100005b7          	lui	a1,0x10000
    80002ca4:	00003817          	auipc	a6,0x3
    80002ca8:	bac80813          	addi	a6,a6,-1108 # 80005850 <uart_tx_buf>
    80002cac:	01c0006f          	j	80002cc8 <uartintr+0x88>
    80002cb0:	0006c703          	lbu	a4,0(a3)
    80002cb4:	00f63023          	sd	a5,0(a2)
    80002cb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cbc:	00063783          	ld	a5,0(a2)
    80002cc0:	00053703          	ld	a4,0(a0)
    80002cc4:	00f70e63          	beq	a4,a5,80002ce0 <uartintr+0xa0>
    80002cc8:	01f7f713          	andi	a4,a5,31
    80002ccc:	00e806b3          	add	a3,a6,a4
    80002cd0:	0055c703          	lbu	a4,5(a1)
    80002cd4:	00178793          	addi	a5,a5,1
    80002cd8:	02077713          	andi	a4,a4,32
    80002cdc:	fc071ae3          	bnez	a4,80002cb0 <uartintr+0x70>
    80002ce0:	01813083          	ld	ra,24(sp)
    80002ce4:	01013403          	ld	s0,16(sp)
    80002ce8:	00813483          	ld	s1,8(sp)
    80002cec:	02010113          	addi	sp,sp,32
    80002cf0:	00008067          	ret
    80002cf4:	00002617          	auipc	a2,0x2
    80002cf8:	8ec60613          	addi	a2,a2,-1812 # 800045e0 <uart_tx_r>
    80002cfc:	00002517          	auipc	a0,0x2
    80002d00:	8ec50513          	addi	a0,a0,-1812 # 800045e8 <uart_tx_w>
    80002d04:	00063783          	ld	a5,0(a2)
    80002d08:	00053703          	ld	a4,0(a0)
    80002d0c:	04f70263          	beq	a4,a5,80002d50 <uartintr+0x110>
    80002d10:	100005b7          	lui	a1,0x10000
    80002d14:	00003817          	auipc	a6,0x3
    80002d18:	b3c80813          	addi	a6,a6,-1220 # 80005850 <uart_tx_buf>
    80002d1c:	01c0006f          	j	80002d38 <uartintr+0xf8>
    80002d20:	0006c703          	lbu	a4,0(a3)
    80002d24:	00f63023          	sd	a5,0(a2)
    80002d28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d2c:	00063783          	ld	a5,0(a2)
    80002d30:	00053703          	ld	a4,0(a0)
    80002d34:	02f70063          	beq	a4,a5,80002d54 <uartintr+0x114>
    80002d38:	01f7f713          	andi	a4,a5,31
    80002d3c:	00e806b3          	add	a3,a6,a4
    80002d40:	0055c703          	lbu	a4,5(a1)
    80002d44:	00178793          	addi	a5,a5,1
    80002d48:	02077713          	andi	a4,a4,32
    80002d4c:	fc071ae3          	bnez	a4,80002d20 <uartintr+0xe0>
    80002d50:	00008067          	ret
    80002d54:	00008067          	ret

0000000080002d58 <kinit>:
    80002d58:	fc010113          	addi	sp,sp,-64
    80002d5c:	02913423          	sd	s1,40(sp)
    80002d60:	fffff7b7          	lui	a5,0xfffff
    80002d64:	00004497          	auipc	s1,0x4
    80002d68:	b1b48493          	addi	s1,s1,-1253 # 8000687f <end+0xfff>
    80002d6c:	02813823          	sd	s0,48(sp)
    80002d70:	01313c23          	sd	s3,24(sp)
    80002d74:	00f4f4b3          	and	s1,s1,a5
    80002d78:	02113c23          	sd	ra,56(sp)
    80002d7c:	03213023          	sd	s2,32(sp)
    80002d80:	01413823          	sd	s4,16(sp)
    80002d84:	01513423          	sd	s5,8(sp)
    80002d88:	04010413          	addi	s0,sp,64
    80002d8c:	000017b7          	lui	a5,0x1
    80002d90:	01100993          	li	s3,17
    80002d94:	00f487b3          	add	a5,s1,a5
    80002d98:	01b99993          	slli	s3,s3,0x1b
    80002d9c:	06f9e063          	bltu	s3,a5,80002dfc <kinit+0xa4>
    80002da0:	00003a97          	auipc	s5,0x3
    80002da4:	ae0a8a93          	addi	s5,s5,-1312 # 80005880 <end>
    80002da8:	0754ec63          	bltu	s1,s5,80002e20 <kinit+0xc8>
    80002dac:	0734fa63          	bgeu	s1,s3,80002e20 <kinit+0xc8>
    80002db0:	00088a37          	lui	s4,0x88
    80002db4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002db8:	00002917          	auipc	s2,0x2
    80002dbc:	83890913          	addi	s2,s2,-1992 # 800045f0 <kmem>
    80002dc0:	00ca1a13          	slli	s4,s4,0xc
    80002dc4:	0140006f          	j	80002dd8 <kinit+0x80>
    80002dc8:	000017b7          	lui	a5,0x1
    80002dcc:	00f484b3          	add	s1,s1,a5
    80002dd0:	0554e863          	bltu	s1,s5,80002e20 <kinit+0xc8>
    80002dd4:	0534f663          	bgeu	s1,s3,80002e20 <kinit+0xc8>
    80002dd8:	00001637          	lui	a2,0x1
    80002ddc:	00100593          	li	a1,1
    80002de0:	00048513          	mv	a0,s1
    80002de4:	00000097          	auipc	ra,0x0
    80002de8:	5e4080e7          	jalr	1508(ra) # 800033c8 <__memset>
    80002dec:	00093783          	ld	a5,0(s2)
    80002df0:	00f4b023          	sd	a5,0(s1)
    80002df4:	00993023          	sd	s1,0(s2)
    80002df8:	fd4498e3          	bne	s1,s4,80002dc8 <kinit+0x70>
    80002dfc:	03813083          	ld	ra,56(sp)
    80002e00:	03013403          	ld	s0,48(sp)
    80002e04:	02813483          	ld	s1,40(sp)
    80002e08:	02013903          	ld	s2,32(sp)
    80002e0c:	01813983          	ld	s3,24(sp)
    80002e10:	01013a03          	ld	s4,16(sp)
    80002e14:	00813a83          	ld	s5,8(sp)
    80002e18:	04010113          	addi	sp,sp,64
    80002e1c:	00008067          	ret
    80002e20:	00001517          	auipc	a0,0x1
    80002e24:	39850513          	addi	a0,a0,920 # 800041b8 <digits+0x18>
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	4b4080e7          	jalr	1204(ra) # 800022dc <panic>

0000000080002e30 <freerange>:
    80002e30:	fc010113          	addi	sp,sp,-64
    80002e34:	000017b7          	lui	a5,0x1
    80002e38:	02913423          	sd	s1,40(sp)
    80002e3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e40:	009504b3          	add	s1,a0,s1
    80002e44:	fffff537          	lui	a0,0xfffff
    80002e48:	02813823          	sd	s0,48(sp)
    80002e4c:	02113c23          	sd	ra,56(sp)
    80002e50:	03213023          	sd	s2,32(sp)
    80002e54:	01313c23          	sd	s3,24(sp)
    80002e58:	01413823          	sd	s4,16(sp)
    80002e5c:	01513423          	sd	s5,8(sp)
    80002e60:	01613023          	sd	s6,0(sp)
    80002e64:	04010413          	addi	s0,sp,64
    80002e68:	00a4f4b3          	and	s1,s1,a0
    80002e6c:	00f487b3          	add	a5,s1,a5
    80002e70:	06f5e463          	bltu	a1,a5,80002ed8 <freerange+0xa8>
    80002e74:	00003a97          	auipc	s5,0x3
    80002e78:	a0ca8a93          	addi	s5,s5,-1524 # 80005880 <end>
    80002e7c:	0954e263          	bltu	s1,s5,80002f00 <freerange+0xd0>
    80002e80:	01100993          	li	s3,17
    80002e84:	01b99993          	slli	s3,s3,0x1b
    80002e88:	0734fc63          	bgeu	s1,s3,80002f00 <freerange+0xd0>
    80002e8c:	00058a13          	mv	s4,a1
    80002e90:	00001917          	auipc	s2,0x1
    80002e94:	76090913          	addi	s2,s2,1888 # 800045f0 <kmem>
    80002e98:	00002b37          	lui	s6,0x2
    80002e9c:	0140006f          	j	80002eb0 <freerange+0x80>
    80002ea0:	000017b7          	lui	a5,0x1
    80002ea4:	00f484b3          	add	s1,s1,a5
    80002ea8:	0554ec63          	bltu	s1,s5,80002f00 <freerange+0xd0>
    80002eac:	0534fa63          	bgeu	s1,s3,80002f00 <freerange+0xd0>
    80002eb0:	00001637          	lui	a2,0x1
    80002eb4:	00100593          	li	a1,1
    80002eb8:	00048513          	mv	a0,s1
    80002ebc:	00000097          	auipc	ra,0x0
    80002ec0:	50c080e7          	jalr	1292(ra) # 800033c8 <__memset>
    80002ec4:	00093703          	ld	a4,0(s2)
    80002ec8:	016487b3          	add	a5,s1,s6
    80002ecc:	00e4b023          	sd	a4,0(s1)
    80002ed0:	00993023          	sd	s1,0(s2)
    80002ed4:	fcfa76e3          	bgeu	s4,a5,80002ea0 <freerange+0x70>
    80002ed8:	03813083          	ld	ra,56(sp)
    80002edc:	03013403          	ld	s0,48(sp)
    80002ee0:	02813483          	ld	s1,40(sp)
    80002ee4:	02013903          	ld	s2,32(sp)
    80002ee8:	01813983          	ld	s3,24(sp)
    80002eec:	01013a03          	ld	s4,16(sp)
    80002ef0:	00813a83          	ld	s5,8(sp)
    80002ef4:	00013b03          	ld	s6,0(sp)
    80002ef8:	04010113          	addi	sp,sp,64
    80002efc:	00008067          	ret
    80002f00:	00001517          	auipc	a0,0x1
    80002f04:	2b850513          	addi	a0,a0,696 # 800041b8 <digits+0x18>
    80002f08:	fffff097          	auipc	ra,0xfffff
    80002f0c:	3d4080e7          	jalr	980(ra) # 800022dc <panic>

0000000080002f10 <kfree>:
    80002f10:	fe010113          	addi	sp,sp,-32
    80002f14:	00813823          	sd	s0,16(sp)
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	00913423          	sd	s1,8(sp)
    80002f20:	02010413          	addi	s0,sp,32
    80002f24:	03451793          	slli	a5,a0,0x34
    80002f28:	04079c63          	bnez	a5,80002f80 <kfree+0x70>
    80002f2c:	00003797          	auipc	a5,0x3
    80002f30:	95478793          	addi	a5,a5,-1708 # 80005880 <end>
    80002f34:	00050493          	mv	s1,a0
    80002f38:	04f56463          	bltu	a0,a5,80002f80 <kfree+0x70>
    80002f3c:	01100793          	li	a5,17
    80002f40:	01b79793          	slli	a5,a5,0x1b
    80002f44:	02f57e63          	bgeu	a0,a5,80002f80 <kfree+0x70>
    80002f48:	00001637          	lui	a2,0x1
    80002f4c:	00100593          	li	a1,1
    80002f50:	00000097          	auipc	ra,0x0
    80002f54:	478080e7          	jalr	1144(ra) # 800033c8 <__memset>
    80002f58:	00001797          	auipc	a5,0x1
    80002f5c:	69878793          	addi	a5,a5,1688 # 800045f0 <kmem>
    80002f60:	0007b703          	ld	a4,0(a5)
    80002f64:	01813083          	ld	ra,24(sp)
    80002f68:	01013403          	ld	s0,16(sp)
    80002f6c:	00e4b023          	sd	a4,0(s1)
    80002f70:	0097b023          	sd	s1,0(a5)
    80002f74:	00813483          	ld	s1,8(sp)
    80002f78:	02010113          	addi	sp,sp,32
    80002f7c:	00008067          	ret
    80002f80:	00001517          	auipc	a0,0x1
    80002f84:	23850513          	addi	a0,a0,568 # 800041b8 <digits+0x18>
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	354080e7          	jalr	852(ra) # 800022dc <panic>

0000000080002f90 <kalloc>:
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00813823          	sd	s0,16(sp)
    80002f98:	00913423          	sd	s1,8(sp)
    80002f9c:	00113c23          	sd	ra,24(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	00001797          	auipc	a5,0x1
    80002fa8:	64c78793          	addi	a5,a5,1612 # 800045f0 <kmem>
    80002fac:	0007b483          	ld	s1,0(a5)
    80002fb0:	02048063          	beqz	s1,80002fd0 <kalloc+0x40>
    80002fb4:	0004b703          	ld	a4,0(s1)
    80002fb8:	00001637          	lui	a2,0x1
    80002fbc:	00500593          	li	a1,5
    80002fc0:	00048513          	mv	a0,s1
    80002fc4:	00e7b023          	sd	a4,0(a5)
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	400080e7          	jalr	1024(ra) # 800033c8 <__memset>
    80002fd0:	01813083          	ld	ra,24(sp)
    80002fd4:	01013403          	ld	s0,16(sp)
    80002fd8:	00048513          	mv	a0,s1
    80002fdc:	00813483          	ld	s1,8(sp)
    80002fe0:	02010113          	addi	sp,sp,32
    80002fe4:	00008067          	ret

0000000080002fe8 <initlock>:
    80002fe8:	ff010113          	addi	sp,sp,-16
    80002fec:	00813423          	sd	s0,8(sp)
    80002ff0:	01010413          	addi	s0,sp,16
    80002ff4:	00813403          	ld	s0,8(sp)
    80002ff8:	00b53423          	sd	a1,8(a0)
    80002ffc:	00052023          	sw	zero,0(a0)
    80003000:	00053823          	sd	zero,16(a0)
    80003004:	01010113          	addi	sp,sp,16
    80003008:	00008067          	ret

000000008000300c <acquire>:
    8000300c:	fe010113          	addi	sp,sp,-32
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	00113c23          	sd	ra,24(sp)
    8000301c:	01213023          	sd	s2,0(sp)
    80003020:	02010413          	addi	s0,sp,32
    80003024:	00050493          	mv	s1,a0
    80003028:	10002973          	csrr	s2,sstatus
    8000302c:	100027f3          	csrr	a5,sstatus
    80003030:	ffd7f793          	andi	a5,a5,-3
    80003034:	10079073          	csrw	sstatus,a5
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	8e8080e7          	jalr	-1816(ra) # 80001920 <mycpu>
    80003040:	07852783          	lw	a5,120(a0)
    80003044:	06078e63          	beqz	a5,800030c0 <acquire+0xb4>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	8d8080e7          	jalr	-1832(ra) # 80001920 <mycpu>
    80003050:	07852783          	lw	a5,120(a0)
    80003054:	0004a703          	lw	a4,0(s1)
    80003058:	0017879b          	addiw	a5,a5,1
    8000305c:	06f52c23          	sw	a5,120(a0)
    80003060:	04071063          	bnez	a4,800030a0 <acquire+0x94>
    80003064:	00100713          	li	a4,1
    80003068:	00070793          	mv	a5,a4
    8000306c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003070:	0007879b          	sext.w	a5,a5
    80003074:	fe079ae3          	bnez	a5,80003068 <acquire+0x5c>
    80003078:	0ff0000f          	fence
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	8a4080e7          	jalr	-1884(ra) # 80001920 <mycpu>
    80003084:	01813083          	ld	ra,24(sp)
    80003088:	01013403          	ld	s0,16(sp)
    8000308c:	00a4b823          	sd	a0,16(s1)
    80003090:	00013903          	ld	s2,0(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret
    800030a0:	0104b903          	ld	s2,16(s1)
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	87c080e7          	jalr	-1924(ra) # 80001920 <mycpu>
    800030ac:	faa91ce3          	bne	s2,a0,80003064 <acquire+0x58>
    800030b0:	00001517          	auipc	a0,0x1
    800030b4:	11050513          	addi	a0,a0,272 # 800041c0 <digits+0x20>
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	224080e7          	jalr	548(ra) # 800022dc <panic>
    800030c0:	00195913          	srli	s2,s2,0x1
    800030c4:	fffff097          	auipc	ra,0xfffff
    800030c8:	85c080e7          	jalr	-1956(ra) # 80001920 <mycpu>
    800030cc:	00197913          	andi	s2,s2,1
    800030d0:	07252e23          	sw	s2,124(a0)
    800030d4:	f75ff06f          	j	80003048 <acquire+0x3c>

00000000800030d8 <release>:
    800030d8:	fe010113          	addi	sp,sp,-32
    800030dc:	00813823          	sd	s0,16(sp)
    800030e0:	00113c23          	sd	ra,24(sp)
    800030e4:	00913423          	sd	s1,8(sp)
    800030e8:	01213023          	sd	s2,0(sp)
    800030ec:	02010413          	addi	s0,sp,32
    800030f0:	00052783          	lw	a5,0(a0)
    800030f4:	00079a63          	bnez	a5,80003108 <release+0x30>
    800030f8:	00001517          	auipc	a0,0x1
    800030fc:	0d050513          	addi	a0,a0,208 # 800041c8 <digits+0x28>
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	1dc080e7          	jalr	476(ra) # 800022dc <panic>
    80003108:	01053903          	ld	s2,16(a0)
    8000310c:	00050493          	mv	s1,a0
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	810080e7          	jalr	-2032(ra) # 80001920 <mycpu>
    80003118:	fea910e3          	bne	s2,a0,800030f8 <release+0x20>
    8000311c:	0004b823          	sd	zero,16(s1)
    80003120:	0ff0000f          	fence
    80003124:	0f50000f          	fence	iorw,ow
    80003128:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	7f4080e7          	jalr	2036(ra) # 80001920 <mycpu>
    80003134:	100027f3          	csrr	a5,sstatus
    80003138:	0027f793          	andi	a5,a5,2
    8000313c:	04079a63          	bnez	a5,80003190 <release+0xb8>
    80003140:	07852783          	lw	a5,120(a0)
    80003144:	02f05e63          	blez	a5,80003180 <release+0xa8>
    80003148:	fff7871b          	addiw	a4,a5,-1
    8000314c:	06e52c23          	sw	a4,120(a0)
    80003150:	00071c63          	bnez	a4,80003168 <release+0x90>
    80003154:	07c52783          	lw	a5,124(a0)
    80003158:	00078863          	beqz	a5,80003168 <release+0x90>
    8000315c:	100027f3          	csrr	a5,sstatus
    80003160:	0027e793          	ori	a5,a5,2
    80003164:	10079073          	csrw	sstatus,a5
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	00013903          	ld	s2,0(sp)
    80003178:	02010113          	addi	sp,sp,32
    8000317c:	00008067          	ret
    80003180:	00001517          	auipc	a0,0x1
    80003184:	06850513          	addi	a0,a0,104 # 800041e8 <digits+0x48>
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	154080e7          	jalr	340(ra) # 800022dc <panic>
    80003190:	00001517          	auipc	a0,0x1
    80003194:	04050513          	addi	a0,a0,64 # 800041d0 <digits+0x30>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	144080e7          	jalr	324(ra) # 800022dc <panic>

00000000800031a0 <holding>:
    800031a0:	00052783          	lw	a5,0(a0)
    800031a4:	00079663          	bnez	a5,800031b0 <holding+0x10>
    800031a8:	00000513          	li	a0,0
    800031ac:	00008067          	ret
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00813823          	sd	s0,16(sp)
    800031b8:	00913423          	sd	s1,8(sp)
    800031bc:	00113c23          	sd	ra,24(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	01053483          	ld	s1,16(a0)
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	758080e7          	jalr	1880(ra) # 80001920 <mycpu>
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	01013403          	ld	s0,16(sp)
    800031d8:	40a48533          	sub	a0,s1,a0
    800031dc:	00153513          	seqz	a0,a0
    800031e0:	00813483          	ld	s1,8(sp)
    800031e4:	02010113          	addi	sp,sp,32
    800031e8:	00008067          	ret

00000000800031ec <push_off>:
    800031ec:	fe010113          	addi	sp,sp,-32
    800031f0:	00813823          	sd	s0,16(sp)
    800031f4:	00113c23          	sd	ra,24(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	02010413          	addi	s0,sp,32
    80003200:	100024f3          	csrr	s1,sstatus
    80003204:	100027f3          	csrr	a5,sstatus
    80003208:	ffd7f793          	andi	a5,a5,-3
    8000320c:	10079073          	csrw	sstatus,a5
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	710080e7          	jalr	1808(ra) # 80001920 <mycpu>
    80003218:	07852783          	lw	a5,120(a0)
    8000321c:	02078663          	beqz	a5,80003248 <push_off+0x5c>
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	700080e7          	jalr	1792(ra) # 80001920 <mycpu>
    80003228:	07852783          	lw	a5,120(a0)
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	0017879b          	addiw	a5,a5,1
    80003238:	06f52c23          	sw	a5,120(a0)
    8000323c:	00813483          	ld	s1,8(sp)
    80003240:	02010113          	addi	sp,sp,32
    80003244:	00008067          	ret
    80003248:	0014d493          	srli	s1,s1,0x1
    8000324c:	ffffe097          	auipc	ra,0xffffe
    80003250:	6d4080e7          	jalr	1748(ra) # 80001920 <mycpu>
    80003254:	0014f493          	andi	s1,s1,1
    80003258:	06952e23          	sw	s1,124(a0)
    8000325c:	fc5ff06f          	j	80003220 <push_off+0x34>

0000000080003260 <pop_off>:
    80003260:	ff010113          	addi	sp,sp,-16
    80003264:	00813023          	sd	s0,0(sp)
    80003268:	00113423          	sd	ra,8(sp)
    8000326c:	01010413          	addi	s0,sp,16
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	6b0080e7          	jalr	1712(ra) # 80001920 <mycpu>
    80003278:	100027f3          	csrr	a5,sstatus
    8000327c:	0027f793          	andi	a5,a5,2
    80003280:	04079663          	bnez	a5,800032cc <pop_off+0x6c>
    80003284:	07852783          	lw	a5,120(a0)
    80003288:	02f05a63          	blez	a5,800032bc <pop_off+0x5c>
    8000328c:	fff7871b          	addiw	a4,a5,-1
    80003290:	06e52c23          	sw	a4,120(a0)
    80003294:	00071c63          	bnez	a4,800032ac <pop_off+0x4c>
    80003298:	07c52783          	lw	a5,124(a0)
    8000329c:	00078863          	beqz	a5,800032ac <pop_off+0x4c>
    800032a0:	100027f3          	csrr	a5,sstatus
    800032a4:	0027e793          	ori	a5,a5,2
    800032a8:	10079073          	csrw	sstatus,a5
    800032ac:	00813083          	ld	ra,8(sp)
    800032b0:	00013403          	ld	s0,0(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret
    800032bc:	00001517          	auipc	a0,0x1
    800032c0:	f2c50513          	addi	a0,a0,-212 # 800041e8 <digits+0x48>
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	018080e7          	jalr	24(ra) # 800022dc <panic>
    800032cc:	00001517          	auipc	a0,0x1
    800032d0:	f0450513          	addi	a0,a0,-252 # 800041d0 <digits+0x30>
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	008080e7          	jalr	8(ra) # 800022dc <panic>

00000000800032dc <push_on>:
    800032dc:	fe010113          	addi	sp,sp,-32
    800032e0:	00813823          	sd	s0,16(sp)
    800032e4:	00113c23          	sd	ra,24(sp)
    800032e8:	00913423          	sd	s1,8(sp)
    800032ec:	02010413          	addi	s0,sp,32
    800032f0:	100024f3          	csrr	s1,sstatus
    800032f4:	100027f3          	csrr	a5,sstatus
    800032f8:	0027e793          	ori	a5,a5,2
    800032fc:	10079073          	csrw	sstatus,a5
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	620080e7          	jalr	1568(ra) # 80001920 <mycpu>
    80003308:	07852783          	lw	a5,120(a0)
    8000330c:	02078663          	beqz	a5,80003338 <push_on+0x5c>
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	610080e7          	jalr	1552(ra) # 80001920 <mycpu>
    80003318:	07852783          	lw	a5,120(a0)
    8000331c:	01813083          	ld	ra,24(sp)
    80003320:	01013403          	ld	s0,16(sp)
    80003324:	0017879b          	addiw	a5,a5,1
    80003328:	06f52c23          	sw	a5,120(a0)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	02010113          	addi	sp,sp,32
    80003334:	00008067          	ret
    80003338:	0014d493          	srli	s1,s1,0x1
    8000333c:	ffffe097          	auipc	ra,0xffffe
    80003340:	5e4080e7          	jalr	1508(ra) # 80001920 <mycpu>
    80003344:	0014f493          	andi	s1,s1,1
    80003348:	06952e23          	sw	s1,124(a0)
    8000334c:	fc5ff06f          	j	80003310 <push_on+0x34>

0000000080003350 <pop_on>:
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813023          	sd	s0,0(sp)
    80003358:	00113423          	sd	ra,8(sp)
    8000335c:	01010413          	addi	s0,sp,16
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	5c0080e7          	jalr	1472(ra) # 80001920 <mycpu>
    80003368:	100027f3          	csrr	a5,sstatus
    8000336c:	0027f793          	andi	a5,a5,2
    80003370:	04078463          	beqz	a5,800033b8 <pop_on+0x68>
    80003374:	07852783          	lw	a5,120(a0)
    80003378:	02f05863          	blez	a5,800033a8 <pop_on+0x58>
    8000337c:	fff7879b          	addiw	a5,a5,-1
    80003380:	06f52c23          	sw	a5,120(a0)
    80003384:	07853783          	ld	a5,120(a0)
    80003388:	00079863          	bnez	a5,80003398 <pop_on+0x48>
    8000338c:	100027f3          	csrr	a5,sstatus
    80003390:	ffd7f793          	andi	a5,a5,-3
    80003394:	10079073          	csrw	sstatus,a5
    80003398:	00813083          	ld	ra,8(sp)
    8000339c:	00013403          	ld	s0,0(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	e6850513          	addi	a0,a0,-408 # 80004210 <digits+0x70>
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	f2c080e7          	jalr	-212(ra) # 800022dc <panic>
    800033b8:	00001517          	auipc	a0,0x1
    800033bc:	e3850513          	addi	a0,a0,-456 # 800041f0 <digits+0x50>
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	f1c080e7          	jalr	-228(ra) # 800022dc <panic>

00000000800033c8 <__memset>:
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00813423          	sd	s0,8(sp)
    800033d0:	01010413          	addi	s0,sp,16
    800033d4:	1a060e63          	beqz	a2,80003590 <__memset+0x1c8>
    800033d8:	40a007b3          	neg	a5,a0
    800033dc:	0077f793          	andi	a5,a5,7
    800033e0:	00778693          	addi	a3,a5,7
    800033e4:	00b00813          	li	a6,11
    800033e8:	0ff5f593          	andi	a1,a1,255
    800033ec:	fff6071b          	addiw	a4,a2,-1
    800033f0:	1b06e663          	bltu	a3,a6,8000359c <__memset+0x1d4>
    800033f4:	1cd76463          	bltu	a4,a3,800035bc <__memset+0x1f4>
    800033f8:	1a078e63          	beqz	a5,800035b4 <__memset+0x1ec>
    800033fc:	00b50023          	sb	a1,0(a0)
    80003400:	00100713          	li	a4,1
    80003404:	1ae78463          	beq	a5,a4,800035ac <__memset+0x1e4>
    80003408:	00b500a3          	sb	a1,1(a0)
    8000340c:	00200713          	li	a4,2
    80003410:	1ae78a63          	beq	a5,a4,800035c4 <__memset+0x1fc>
    80003414:	00b50123          	sb	a1,2(a0)
    80003418:	00300713          	li	a4,3
    8000341c:	18e78463          	beq	a5,a4,800035a4 <__memset+0x1dc>
    80003420:	00b501a3          	sb	a1,3(a0)
    80003424:	00400713          	li	a4,4
    80003428:	1ae78263          	beq	a5,a4,800035cc <__memset+0x204>
    8000342c:	00b50223          	sb	a1,4(a0)
    80003430:	00500713          	li	a4,5
    80003434:	1ae78063          	beq	a5,a4,800035d4 <__memset+0x20c>
    80003438:	00b502a3          	sb	a1,5(a0)
    8000343c:	00700713          	li	a4,7
    80003440:	18e79e63          	bne	a5,a4,800035dc <__memset+0x214>
    80003444:	00b50323          	sb	a1,6(a0)
    80003448:	00700e93          	li	t4,7
    8000344c:	00859713          	slli	a4,a1,0x8
    80003450:	00e5e733          	or	a4,a1,a4
    80003454:	01059e13          	slli	t3,a1,0x10
    80003458:	01c76e33          	or	t3,a4,t3
    8000345c:	01859313          	slli	t1,a1,0x18
    80003460:	006e6333          	or	t1,t3,t1
    80003464:	02059893          	slli	a7,a1,0x20
    80003468:	40f60e3b          	subw	t3,a2,a5
    8000346c:	011368b3          	or	a7,t1,a7
    80003470:	02859813          	slli	a6,a1,0x28
    80003474:	0108e833          	or	a6,a7,a6
    80003478:	03059693          	slli	a3,a1,0x30
    8000347c:	003e589b          	srliw	a7,t3,0x3
    80003480:	00d866b3          	or	a3,a6,a3
    80003484:	03859713          	slli	a4,a1,0x38
    80003488:	00389813          	slli	a6,a7,0x3
    8000348c:	00f507b3          	add	a5,a0,a5
    80003490:	00e6e733          	or	a4,a3,a4
    80003494:	000e089b          	sext.w	a7,t3
    80003498:	00f806b3          	add	a3,a6,a5
    8000349c:	00e7b023          	sd	a4,0(a5)
    800034a0:	00878793          	addi	a5,a5,8
    800034a4:	fed79ce3          	bne	a5,a3,8000349c <__memset+0xd4>
    800034a8:	ff8e7793          	andi	a5,t3,-8
    800034ac:	0007871b          	sext.w	a4,a5
    800034b0:	01d787bb          	addw	a5,a5,t4
    800034b4:	0ce88e63          	beq	a7,a4,80003590 <__memset+0x1c8>
    800034b8:	00f50733          	add	a4,a0,a5
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	0017871b          	addiw	a4,a5,1
    800034c4:	0cc77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	0027871b          	addiw	a4,a5,2
    800034d4:	0ac77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	0037871b          	addiw	a4,a5,3
    800034e4:	0ac77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0047871b          	addiw	a4,a5,4
    800034f4:	08c77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0057871b          	addiw	a4,a5,5
    80003504:	08c77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0067871b          	addiw	a4,a5,6
    80003514:	06c77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0077871b          	addiw	a4,a5,7
    80003524:	06c77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0087871b          	addiw	a4,a5,8
    80003534:	04c77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	0097871b          	addiw	a4,a5,9
    80003544:	04c77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	00a7871b          	addiw	a4,a5,10
    80003554:	02c77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	00b7871b          	addiw	a4,a5,11
    80003564:	02c77663          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	00c7871b          	addiw	a4,a5,12
    80003574:	00c77e63          	bgeu	a4,a2,80003590 <__memset+0x1c8>
    80003578:	00e50733          	add	a4,a0,a4
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	00d7879b          	addiw	a5,a5,13
    80003584:	00c7f663          	bgeu	a5,a2,80003590 <__memset+0x1c8>
    80003588:	00f507b3          	add	a5,a0,a5
    8000358c:	00b78023          	sb	a1,0(a5)
    80003590:	00813403          	ld	s0,8(sp)
    80003594:	01010113          	addi	sp,sp,16
    80003598:	00008067          	ret
    8000359c:	00b00693          	li	a3,11
    800035a0:	e55ff06f          	j	800033f4 <__memset+0x2c>
    800035a4:	00300e93          	li	t4,3
    800035a8:	ea5ff06f          	j	8000344c <__memset+0x84>
    800035ac:	00100e93          	li	t4,1
    800035b0:	e9dff06f          	j	8000344c <__memset+0x84>
    800035b4:	00000e93          	li	t4,0
    800035b8:	e95ff06f          	j	8000344c <__memset+0x84>
    800035bc:	00000793          	li	a5,0
    800035c0:	ef9ff06f          	j	800034b8 <__memset+0xf0>
    800035c4:	00200e93          	li	t4,2
    800035c8:	e85ff06f          	j	8000344c <__memset+0x84>
    800035cc:	00400e93          	li	t4,4
    800035d0:	e7dff06f          	j	8000344c <__memset+0x84>
    800035d4:	00500e93          	li	t4,5
    800035d8:	e75ff06f          	j	8000344c <__memset+0x84>
    800035dc:	00600e93          	li	t4,6
    800035e0:	e6dff06f          	j	8000344c <__memset+0x84>

00000000800035e4 <__memmove>:
    800035e4:	ff010113          	addi	sp,sp,-16
    800035e8:	00813423          	sd	s0,8(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	0e060863          	beqz	a2,800036e0 <__memmove+0xfc>
    800035f4:	fff6069b          	addiw	a3,a2,-1
    800035f8:	0006881b          	sext.w	a6,a3
    800035fc:	0ea5e863          	bltu	a1,a0,800036ec <__memmove+0x108>
    80003600:	00758713          	addi	a4,a1,7
    80003604:	00a5e7b3          	or	a5,a1,a0
    80003608:	40a70733          	sub	a4,a4,a0
    8000360c:	0077f793          	andi	a5,a5,7
    80003610:	00f73713          	sltiu	a4,a4,15
    80003614:	00174713          	xori	a4,a4,1
    80003618:	0017b793          	seqz	a5,a5
    8000361c:	00e7f7b3          	and	a5,a5,a4
    80003620:	10078863          	beqz	a5,80003730 <__memmove+0x14c>
    80003624:	00900793          	li	a5,9
    80003628:	1107f463          	bgeu	a5,a6,80003730 <__memmove+0x14c>
    8000362c:	0036581b          	srliw	a6,a2,0x3
    80003630:	fff8081b          	addiw	a6,a6,-1
    80003634:	02081813          	slli	a6,a6,0x20
    80003638:	01d85893          	srli	a7,a6,0x1d
    8000363c:	00858813          	addi	a6,a1,8
    80003640:	00058793          	mv	a5,a1
    80003644:	00050713          	mv	a4,a0
    80003648:	01088833          	add	a6,a7,a6
    8000364c:	0007b883          	ld	a7,0(a5)
    80003650:	00878793          	addi	a5,a5,8
    80003654:	00870713          	addi	a4,a4,8
    80003658:	ff173c23          	sd	a7,-8(a4)
    8000365c:	ff0798e3          	bne	a5,a6,8000364c <__memmove+0x68>
    80003660:	ff867713          	andi	a4,a2,-8
    80003664:	02071793          	slli	a5,a4,0x20
    80003668:	0207d793          	srli	a5,a5,0x20
    8000366c:	00f585b3          	add	a1,a1,a5
    80003670:	40e686bb          	subw	a3,a3,a4
    80003674:	00f507b3          	add	a5,a0,a5
    80003678:	06e60463          	beq	a2,a4,800036e0 <__memmove+0xfc>
    8000367c:	0005c703          	lbu	a4,0(a1)
    80003680:	00e78023          	sb	a4,0(a5)
    80003684:	04068e63          	beqz	a3,800036e0 <__memmove+0xfc>
    80003688:	0015c603          	lbu	a2,1(a1)
    8000368c:	00100713          	li	a4,1
    80003690:	00c780a3          	sb	a2,1(a5)
    80003694:	04e68663          	beq	a3,a4,800036e0 <__memmove+0xfc>
    80003698:	0025c603          	lbu	a2,2(a1)
    8000369c:	00200713          	li	a4,2
    800036a0:	00c78123          	sb	a2,2(a5)
    800036a4:	02e68e63          	beq	a3,a4,800036e0 <__memmove+0xfc>
    800036a8:	0035c603          	lbu	a2,3(a1)
    800036ac:	00300713          	li	a4,3
    800036b0:	00c781a3          	sb	a2,3(a5)
    800036b4:	02e68663          	beq	a3,a4,800036e0 <__memmove+0xfc>
    800036b8:	0045c603          	lbu	a2,4(a1)
    800036bc:	00400713          	li	a4,4
    800036c0:	00c78223          	sb	a2,4(a5)
    800036c4:	00e68e63          	beq	a3,a4,800036e0 <__memmove+0xfc>
    800036c8:	0055c603          	lbu	a2,5(a1)
    800036cc:	00500713          	li	a4,5
    800036d0:	00c782a3          	sb	a2,5(a5)
    800036d4:	00e68663          	beq	a3,a4,800036e0 <__memmove+0xfc>
    800036d8:	0065c703          	lbu	a4,6(a1)
    800036dc:	00e78323          	sb	a4,6(a5)
    800036e0:	00813403          	ld	s0,8(sp)
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret
    800036ec:	02061713          	slli	a4,a2,0x20
    800036f0:	02075713          	srli	a4,a4,0x20
    800036f4:	00e587b3          	add	a5,a1,a4
    800036f8:	f0f574e3          	bgeu	a0,a5,80003600 <__memmove+0x1c>
    800036fc:	02069613          	slli	a2,a3,0x20
    80003700:	02065613          	srli	a2,a2,0x20
    80003704:	fff64613          	not	a2,a2
    80003708:	00e50733          	add	a4,a0,a4
    8000370c:	00c78633          	add	a2,a5,a2
    80003710:	fff7c683          	lbu	a3,-1(a5)
    80003714:	fff78793          	addi	a5,a5,-1
    80003718:	fff70713          	addi	a4,a4,-1
    8000371c:	00d70023          	sb	a3,0(a4)
    80003720:	fec798e3          	bne	a5,a2,80003710 <__memmove+0x12c>
    80003724:	00813403          	ld	s0,8(sp)
    80003728:	01010113          	addi	sp,sp,16
    8000372c:	00008067          	ret
    80003730:	02069713          	slli	a4,a3,0x20
    80003734:	02075713          	srli	a4,a4,0x20
    80003738:	00170713          	addi	a4,a4,1
    8000373c:	00e50733          	add	a4,a0,a4
    80003740:	00050793          	mv	a5,a0
    80003744:	0005c683          	lbu	a3,0(a1)
    80003748:	00178793          	addi	a5,a5,1
    8000374c:	00158593          	addi	a1,a1,1
    80003750:	fed78fa3          	sb	a3,-1(a5)
    80003754:	fee798e3          	bne	a5,a4,80003744 <__memmove+0x160>
    80003758:	f89ff06f          	j	800036e0 <__memmove+0xfc>

000000008000375c <__mem_free>:
    8000375c:	ff010113          	addi	sp,sp,-16
    80003760:	00813423          	sd	s0,8(sp)
    80003764:	01010413          	addi	s0,sp,16
    80003768:	00001597          	auipc	a1,0x1
    8000376c:	e9058593          	addi	a1,a1,-368 # 800045f8 <freep>
    80003770:	0005b783          	ld	a5,0(a1)
    80003774:	ff050693          	addi	a3,a0,-16
    80003778:	0007b703          	ld	a4,0(a5)
    8000377c:	00d7fc63          	bgeu	a5,a3,80003794 <__mem_free+0x38>
    80003780:	00e6ee63          	bltu	a3,a4,8000379c <__mem_free+0x40>
    80003784:	00e7fc63          	bgeu	a5,a4,8000379c <__mem_free+0x40>
    80003788:	00070793          	mv	a5,a4
    8000378c:	0007b703          	ld	a4,0(a5)
    80003790:	fed7e8e3          	bltu	a5,a3,80003780 <__mem_free+0x24>
    80003794:	fee7eae3          	bltu	a5,a4,80003788 <__mem_free+0x2c>
    80003798:	fee6f8e3          	bgeu	a3,a4,80003788 <__mem_free+0x2c>
    8000379c:	ff852803          	lw	a6,-8(a0)
    800037a0:	02081613          	slli	a2,a6,0x20
    800037a4:	01c65613          	srli	a2,a2,0x1c
    800037a8:	00c68633          	add	a2,a3,a2
    800037ac:	02c70a63          	beq	a4,a2,800037e0 <__mem_free+0x84>
    800037b0:	fee53823          	sd	a4,-16(a0)
    800037b4:	0087a503          	lw	a0,8(a5)
    800037b8:	02051613          	slli	a2,a0,0x20
    800037bc:	01c65613          	srli	a2,a2,0x1c
    800037c0:	00c78633          	add	a2,a5,a2
    800037c4:	04c68263          	beq	a3,a2,80003808 <__mem_free+0xac>
    800037c8:	00813403          	ld	s0,8(sp)
    800037cc:	00d7b023          	sd	a3,0(a5)
    800037d0:	00f5b023          	sd	a5,0(a1)
    800037d4:	00000513          	li	a0,0
    800037d8:	01010113          	addi	sp,sp,16
    800037dc:	00008067          	ret
    800037e0:	00872603          	lw	a2,8(a4)
    800037e4:	00073703          	ld	a4,0(a4)
    800037e8:	0106083b          	addw	a6,a2,a6
    800037ec:	ff052c23          	sw	a6,-8(a0)
    800037f0:	fee53823          	sd	a4,-16(a0)
    800037f4:	0087a503          	lw	a0,8(a5)
    800037f8:	02051613          	slli	a2,a0,0x20
    800037fc:	01c65613          	srli	a2,a2,0x1c
    80003800:	00c78633          	add	a2,a5,a2
    80003804:	fcc692e3          	bne	a3,a2,800037c8 <__mem_free+0x6c>
    80003808:	00813403          	ld	s0,8(sp)
    8000380c:	0105053b          	addw	a0,a0,a6
    80003810:	00a7a423          	sw	a0,8(a5)
    80003814:	00e7b023          	sd	a4,0(a5)
    80003818:	00f5b023          	sd	a5,0(a1)
    8000381c:	00000513          	li	a0,0
    80003820:	01010113          	addi	sp,sp,16
    80003824:	00008067          	ret

0000000080003828 <__mem_alloc>:
    80003828:	fc010113          	addi	sp,sp,-64
    8000382c:	02813823          	sd	s0,48(sp)
    80003830:	02913423          	sd	s1,40(sp)
    80003834:	03213023          	sd	s2,32(sp)
    80003838:	01513423          	sd	s5,8(sp)
    8000383c:	02113c23          	sd	ra,56(sp)
    80003840:	01313c23          	sd	s3,24(sp)
    80003844:	01413823          	sd	s4,16(sp)
    80003848:	01613023          	sd	s6,0(sp)
    8000384c:	04010413          	addi	s0,sp,64
    80003850:	00001a97          	auipc	s5,0x1
    80003854:	da8a8a93          	addi	s5,s5,-600 # 800045f8 <freep>
    80003858:	00f50913          	addi	s2,a0,15
    8000385c:	000ab683          	ld	a3,0(s5)
    80003860:	00495913          	srli	s2,s2,0x4
    80003864:	0019049b          	addiw	s1,s2,1
    80003868:	00048913          	mv	s2,s1
    8000386c:	0c068c63          	beqz	a3,80003944 <__mem_alloc+0x11c>
    80003870:	0006b503          	ld	a0,0(a3)
    80003874:	00852703          	lw	a4,8(a0)
    80003878:	10977063          	bgeu	a4,s1,80003978 <__mem_alloc+0x150>
    8000387c:	000017b7          	lui	a5,0x1
    80003880:	0009099b          	sext.w	s3,s2
    80003884:	0af4e863          	bltu	s1,a5,80003934 <__mem_alloc+0x10c>
    80003888:	02099a13          	slli	s4,s3,0x20
    8000388c:	01ca5a13          	srli	s4,s4,0x1c
    80003890:	fff00b13          	li	s6,-1
    80003894:	0100006f          	j	800038a4 <__mem_alloc+0x7c>
    80003898:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000389c:	00852703          	lw	a4,8(a0)
    800038a0:	04977463          	bgeu	a4,s1,800038e8 <__mem_alloc+0xc0>
    800038a4:	00050793          	mv	a5,a0
    800038a8:	fea698e3          	bne	a3,a0,80003898 <__mem_alloc+0x70>
    800038ac:	000a0513          	mv	a0,s4
    800038b0:	00000097          	auipc	ra,0x0
    800038b4:	1f0080e7          	jalr	496(ra) # 80003aa0 <kvmincrease>
    800038b8:	00050793          	mv	a5,a0
    800038bc:	01050513          	addi	a0,a0,16
    800038c0:	07678e63          	beq	a5,s6,8000393c <__mem_alloc+0x114>
    800038c4:	0137a423          	sw	s3,8(a5)
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	e94080e7          	jalr	-364(ra) # 8000375c <__mem_free>
    800038d0:	000ab783          	ld	a5,0(s5)
    800038d4:	06078463          	beqz	a5,8000393c <__mem_alloc+0x114>
    800038d8:	0007b503          	ld	a0,0(a5)
    800038dc:	00078693          	mv	a3,a5
    800038e0:	00852703          	lw	a4,8(a0)
    800038e4:	fc9760e3          	bltu	a4,s1,800038a4 <__mem_alloc+0x7c>
    800038e8:	08e48263          	beq	s1,a4,8000396c <__mem_alloc+0x144>
    800038ec:	4127073b          	subw	a4,a4,s2
    800038f0:	02071693          	slli	a3,a4,0x20
    800038f4:	01c6d693          	srli	a3,a3,0x1c
    800038f8:	00e52423          	sw	a4,8(a0)
    800038fc:	00d50533          	add	a0,a0,a3
    80003900:	01252423          	sw	s2,8(a0)
    80003904:	00fab023          	sd	a5,0(s5)
    80003908:	01050513          	addi	a0,a0,16
    8000390c:	03813083          	ld	ra,56(sp)
    80003910:	03013403          	ld	s0,48(sp)
    80003914:	02813483          	ld	s1,40(sp)
    80003918:	02013903          	ld	s2,32(sp)
    8000391c:	01813983          	ld	s3,24(sp)
    80003920:	01013a03          	ld	s4,16(sp)
    80003924:	00813a83          	ld	s5,8(sp)
    80003928:	00013b03          	ld	s6,0(sp)
    8000392c:	04010113          	addi	sp,sp,64
    80003930:	00008067          	ret
    80003934:	000019b7          	lui	s3,0x1
    80003938:	f51ff06f          	j	80003888 <__mem_alloc+0x60>
    8000393c:	00000513          	li	a0,0
    80003940:	fcdff06f          	j	8000390c <__mem_alloc+0xe4>
    80003944:	00002797          	auipc	a5,0x2
    80003948:	f2c78793          	addi	a5,a5,-212 # 80005870 <base>
    8000394c:	00078513          	mv	a0,a5
    80003950:	00fab023          	sd	a5,0(s5)
    80003954:	00f7b023          	sd	a5,0(a5)
    80003958:	00000713          	li	a4,0
    8000395c:	00002797          	auipc	a5,0x2
    80003960:	f007ae23          	sw	zero,-228(a5) # 80005878 <base+0x8>
    80003964:	00050693          	mv	a3,a0
    80003968:	f11ff06f          	j	80003878 <__mem_alloc+0x50>
    8000396c:	00053703          	ld	a4,0(a0)
    80003970:	00e7b023          	sd	a4,0(a5)
    80003974:	f91ff06f          	j	80003904 <__mem_alloc+0xdc>
    80003978:	00068793          	mv	a5,a3
    8000397c:	f6dff06f          	j	800038e8 <__mem_alloc+0xc0>

0000000080003980 <__putc>:
    80003980:	fe010113          	addi	sp,sp,-32
    80003984:	00813823          	sd	s0,16(sp)
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050793          	mv	a5,a0
    80003994:	fef40593          	addi	a1,s0,-17
    80003998:	00100613          	li	a2,1
    8000399c:	00000513          	li	a0,0
    800039a0:	fef407a3          	sb	a5,-17(s0)
    800039a4:	fffff097          	auipc	ra,0xfffff
    800039a8:	918080e7          	jalr	-1768(ra) # 800022bc <console_write>
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	02010113          	addi	sp,sp,32
    800039b8:	00008067          	ret

00000000800039bc <__getc>:
    800039bc:	fe010113          	addi	sp,sp,-32
    800039c0:	00813823          	sd	s0,16(sp)
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	02010413          	addi	s0,sp,32
    800039cc:	fe840593          	addi	a1,s0,-24
    800039d0:	00100613          	li	a2,1
    800039d4:	00000513          	li	a0,0
    800039d8:	fffff097          	auipc	ra,0xfffff
    800039dc:	8c4080e7          	jalr	-1852(ra) # 8000229c <console_read>
    800039e0:	fe844503          	lbu	a0,-24(s0)
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	02010113          	addi	sp,sp,32
    800039f0:	00008067          	ret

00000000800039f4 <console_handler>:
    800039f4:	fe010113          	addi	sp,sp,-32
    800039f8:	00813823          	sd	s0,16(sp)
    800039fc:	00113c23          	sd	ra,24(sp)
    80003a00:	00913423          	sd	s1,8(sp)
    80003a04:	02010413          	addi	s0,sp,32
    80003a08:	14202773          	csrr	a4,scause
    80003a0c:	100027f3          	csrr	a5,sstatus
    80003a10:	0027f793          	andi	a5,a5,2
    80003a14:	06079e63          	bnez	a5,80003a90 <console_handler+0x9c>
    80003a18:	00074c63          	bltz	a4,80003a30 <console_handler+0x3c>
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret
    80003a30:	0ff77713          	andi	a4,a4,255
    80003a34:	00900793          	li	a5,9
    80003a38:	fef712e3          	bne	a4,a5,80003a1c <console_handler+0x28>
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	4b8080e7          	jalr	1208(ra) # 80001ef4 <plic_claim>
    80003a44:	00a00793          	li	a5,10
    80003a48:	00050493          	mv	s1,a0
    80003a4c:	02f50c63          	beq	a0,a5,80003a84 <console_handler+0x90>
    80003a50:	fc0506e3          	beqz	a0,80003a1c <console_handler+0x28>
    80003a54:	00050593          	mv	a1,a0
    80003a58:	00000517          	auipc	a0,0x0
    80003a5c:	6c050513          	addi	a0,a0,1728 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	8d8080e7          	jalr	-1832(ra) # 80002338 <__printf>
    80003a68:	01013403          	ld	s0,16(sp)
    80003a6c:	01813083          	ld	ra,24(sp)
    80003a70:	00048513          	mv	a0,s1
    80003a74:	00813483          	ld	s1,8(sp)
    80003a78:	02010113          	addi	sp,sp,32
    80003a7c:	ffffe317          	auipc	t1,0xffffe
    80003a80:	4b030067          	jr	1200(t1) # 80001f2c <plic_complete>
    80003a84:	fffff097          	auipc	ra,0xfffff
    80003a88:	1bc080e7          	jalr	444(ra) # 80002c40 <uartintr>
    80003a8c:	fddff06f          	j	80003a68 <console_handler+0x74>
    80003a90:	00000517          	auipc	a0,0x0
    80003a94:	78850513          	addi	a0,a0,1928 # 80004218 <digits+0x78>
    80003a98:	fffff097          	auipc	ra,0xfffff
    80003a9c:	844080e7          	jalr	-1980(ra) # 800022dc <panic>

0000000080003aa0 <kvmincrease>:
    80003aa0:	fe010113          	addi	sp,sp,-32
    80003aa4:	01213023          	sd	s2,0(sp)
    80003aa8:	00001937          	lui	s2,0x1
    80003aac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003ab0:	00813823          	sd	s0,16(sp)
    80003ab4:	00113c23          	sd	ra,24(sp)
    80003ab8:	00913423          	sd	s1,8(sp)
    80003abc:	02010413          	addi	s0,sp,32
    80003ac0:	01250933          	add	s2,a0,s2
    80003ac4:	00c95913          	srli	s2,s2,0xc
    80003ac8:	02090863          	beqz	s2,80003af8 <kvmincrease+0x58>
    80003acc:	00000493          	li	s1,0
    80003ad0:	00148493          	addi	s1,s1,1
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	4bc080e7          	jalr	1212(ra) # 80002f90 <kalloc>
    80003adc:	fe991ae3          	bne	s2,s1,80003ad0 <kvmincrease+0x30>
    80003ae0:	01813083          	ld	ra,24(sp)
    80003ae4:	01013403          	ld	s0,16(sp)
    80003ae8:	00813483          	ld	s1,8(sp)
    80003aec:	00013903          	ld	s2,0(sp)
    80003af0:	02010113          	addi	sp,sp,32
    80003af4:	00008067          	ret
    80003af8:	01813083          	ld	ra,24(sp)
    80003afc:	01013403          	ld	s0,16(sp)
    80003b00:	00813483          	ld	s1,8(sp)
    80003b04:	00013903          	ld	s2,0(sp)
    80003b08:	00000513          	li	a0,0
    80003b0c:	02010113          	addi	sp,sp,32
    80003b10:	00008067          	ret
	...

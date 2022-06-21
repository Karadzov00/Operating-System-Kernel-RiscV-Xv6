
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	5b813103          	ld	sp,1464(sp) # 800045b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	664010ef          	jal	ra,80001680 <start>

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
    80001084:	2b0000ef          	jal	ra,80001334 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001110 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001110:	fe010113          	addi	sp,sp,-32
    80001114:	00113c23          	sd	ra,24(sp)
    80001118:	00813823          	sd	s0,16(sp)
    8000111c:	00913423          	sd	s1,8(sp)
    80001120:	02010413          	addi	s0,sp,32
    80001124:	00050493          	mv	s1,a0
    //should prepare arguments in registers
    //should call interrupt routine with ecall
    printString("uso u syscall");
    80001128:	00003517          	auipc	a0,0x3
    8000112c:	ed850513          	addi	a0,a0,-296 # 80004000 <kvmincrease+0x580>
    80001130:	00000097          	auipc	ra,0x0
    80001134:	2dc080e7          	jalr	732(ra) # 8000140c <_Z11printStringPKc>

    uint64 arg0 = arg->a0;
    80001138:	0004b703          	ld	a4,0(s1)
    uint64 arg1 = arg->a1;
    8000113c:	0084b783          	ld	a5,8(s1)



    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001140:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001144:	00078593          	mv	a1,a5


//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001148:	00000073          	ecall


}
    8000114c:	01813083          	ld	ra,24(sp)
    80001150:	01013403          	ld	s0,16(sp)
    80001154:	00813483          	ld	s1,8(sp)
    80001158:	02010113          	addi	sp,sp,32
    8000115c:	00008067          	ret

0000000080001160 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001160:	fe010113          	addi	sp,sp,-32
    80001164:	00113c23          	sd	ra,24(sp)
    80001168:	00813823          	sd	s0,16(sp)
    8000116c:	00913423          	sd	s1,8(sp)
    80001170:	02010413          	addi	s0,sp,32
    80001174:	00050493          	mv	s1,a0
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = new args();
    80001178:	02000513          	li	a0,32
    8000117c:	00000097          	auipc	ra,0x0
    80001180:	0a8080e7          	jalr	168(ra) # 80001224 <_Znwm>
    80001184:	00053823          	sd	zero,16(a0)
    80001188:	00053c23          	sd	zero,24(a0)
    arg->a0=0x01;
    8000118c:	00100793          	li	a5,1
    80001190:	00f53023          	sd	a5,0(a0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001194:	0064d793          	srli	a5,s1,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001198:	03f4f493          	andi	s1,s1,63
    8000119c:	00048463          	beqz	s1,800011a4 <_Z9mem_allocm+0x44>
    800011a0:	00178793          	addi	a5,a5,1
    arg->a1=blocks;
    800011a4:	00f53423          	sd	a5,8(a0)

    syscall(arg);
    800011a8:	00000097          	auipc	ra,0x0
    800011ac:	f68080e7          	jalr	-152(ra) # 80001110 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011b0:	00050493          	mv	s1,a0
    printInteger(ret);
    800011b4:	00048513          	mv	a0,s1
    800011b8:	00000097          	auipc	ra,0x0
    800011bc:	2c4080e7          	jalr	708(ra) # 8000147c <_Z12printIntegerm>
    return (void*)ret;
}
    800011c0:	00048513          	mv	a0,s1
    800011c4:	01813083          	ld	ra,24(sp)
    800011c8:	01013403          	ld	s0,16(sp)
    800011cc:	00813483          	ld	s1,8(sp)
    800011d0:	02010113          	addi	sp,sp,32
    800011d4:	00008067          	ret

00000000800011d8 <main>:
#include "../h/List.hpp"
#include "../h/syscall_c.h"



int main(){
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00113423          	sd	ra,8(sp)
    800011e0:	00813023          	sd	s0,0(sp)
    800011e4:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&supervisorTrap);
    800011e8:	00003797          	auipc	a5,0x3
    800011ec:	3c87b783          	ld	a5,968(a5) # 800045b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800011f0:	10579073          	csrw	stvec,a5
    printString("Hello");
    800011f4:	00003517          	auipc	a0,0x3
    800011f8:	e1c50513          	addi	a0,a0,-484 # 80004010 <kvmincrease+0x590>
    800011fc:	00000097          	auipc	ra,0x0
    80001200:	210080e7          	jalr	528(ra) # 8000140c <_Z11printStringPKc>
    mem_alloc(10);
    80001204:	00a00513          	li	a0,10
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	f58080e7          	jalr	-168(ra) # 80001160 <_Z9mem_allocm>

    return 0;
}
    80001210:	00000513          	li	a0,0
    80001214:	00813083          	ld	ra,8(sp)
    80001218:	00013403          	ld	s0,0(sp)
    8000121c:	01010113          	addi	sp,sp,16
    80001220:	00008067          	ret

0000000080001224 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001224:	ff010113          	addi	sp,sp,-16
    80001228:	00113423          	sd	ra,8(sp)
    8000122c:	00813023          	sd	s0,0(sp)
    80001230:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001234:	00000097          	auipc	ra,0x0
    80001238:	188080e7          	jalr	392(ra) # 800013bc <_ZN15MemoryAllocator9mem_allocEm>
}
    8000123c:	00813083          	ld	ra,8(sp)
    80001240:	00013403          	ld	s0,0(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <_Znam>:

void* operator new[](size_t n){
    8000124c:	ff010113          	addi	sp,sp,-16
    80001250:	00113423          	sd	ra,8(sp)
    80001254:	00813023          	sd	s0,0(sp)
    80001258:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	160080e7          	jalr	352(ra) # 800013bc <_ZN15MemoryAllocator9mem_allocEm>
}
    80001264:	00813083          	ld	ra,8(sp)
    80001268:	00013403          	ld	s0,0(sp)
    8000126c:	01010113          	addi	sp,sp,16
    80001270:	00008067          	ret

0000000080001274 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001274:	ff010113          	addi	sp,sp,-16
    80001278:	00113423          	sd	ra,8(sp)
    8000127c:	00813023          	sd	s0,0(sp)
    80001280:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001284:	00000097          	auipc	ra,0x0
    80001288:	160080e7          	jalr	352(ra) # 800013e4 <_ZN15MemoryAllocator8mem_freeEPv>
}
    8000128c:	00813083          	ld	ra,8(sp)
    80001290:	00013403          	ld	s0,0(sp)
    80001294:	01010113          	addi	sp,sp,16
    80001298:	00008067          	ret

000000008000129c <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    8000129c:	ff010113          	addi	sp,sp,-16
    800012a0:	00113423          	sd	ra,8(sp)
    800012a4:	00813023          	sd	s0,0(sp)
    800012a8:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	138080e7          	jalr	312(ra) # 800013e4 <_ZN15MemoryAllocator8mem_freeEPv>

}
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	00013403          	ld	s0,0(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret

00000000800012c4 <_ZN5Riscv14syscallHandlerEv>:

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Print.hpp"

void Riscv::syscallHandler() {
    800012c4:	ff010113          	addi	sp,sp,-16
    800012c8:	00113423          	sd	ra,8(sp)
    800012cc:	00813023          	sd	s0,0(sp)
    800012d0:	01010413          	addi	s0,sp,16
    //read syscall code from register a0
    printString("uso u syscallhandler");
    800012d4:	00003517          	auipc	a0,0x3
    800012d8:	d4450513          	addi	a0,a0,-700 # 80004018 <kvmincrease+0x598>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	130080e7          	jalr	304(ra) # 8000140c <_Z11printStringPKc>
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800012e4:	00050713          	mv	a4,a0
    if(arg0== 0x01 ){
    800012e8:	00100793          	li	a5,1
    800012ec:	00f70a63          	beq	a4,a5,80001300 <_ZN5Riscv14syscallHandlerEv+0x3c>

        //write return value to a0 register
        asm volatile("mv %0, a0" : "=r" (ptr));
    }

}
    800012f0:	00813083          	ld	ra,8(sp)
    800012f4:	00013403          	ld	s0,0(sp)
    800012f8:	01010113          	addi	sp,sp,16
    800012fc:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001300:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    80001304:	00000097          	auipc	ra,0x0
    80001308:	0b8080e7          	jalr	184(ra) # 800013bc <_ZN15MemoryAllocator9mem_allocEm>
        asm volatile("mv %0, a0" : "=r" (ptr));
    8000130c:	00050793          	mv	a5,a0
}
    80001310:	fe1ff06f          	j	800012f0 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001314 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00813423          	sd	s0,8(sp)
    8000131c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001320:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001324:	10200073          	sret
}
    80001328:	00813403          	ld	s0,8(sp)
    8000132c:	01010113          	addi	sp,sp,16
    80001330:	00008067          	ret

0000000080001334 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001334:	fc010113          	addi	sp,sp,-64
    80001338:	02113c23          	sd	ra,56(sp)
    8000133c:	02813823          	sd	s0,48(sp)
    80001340:	02913423          	sd	s1,40(sp)
    80001344:	03213023          	sd	s2,32(sp)
    80001348:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000134c:	142027f3          	csrr	a5,scause
    80001350:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001354:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001358:	ff87879b          	addiw	a5,a5,-8
    8000135c:	00100713          	li	a4,1
    80001360:	00f77e63          	bgeu	a4,a5,8000137c <_ZN5Riscv20handleSupervisorTrapEv+0x48>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001364:	03813083          	ld	ra,56(sp)
    80001368:	03013403          	ld	s0,48(sp)
    8000136c:	02813483          	ld	s1,40(sp)
    80001370:	02013903          	ld	s2,32(sp)
    80001374:	04010113          	addi	sp,sp,64
    80001378:	00008067          	ret
        printString("uso u handleTrap");
    8000137c:	00003517          	auipc	a0,0x3
    80001380:	cb450513          	addi	a0,a0,-844 # 80004030 <kvmincrease+0x5b0>
    80001384:	00000097          	auipc	ra,0x0
    80001388:	088080e7          	jalr	136(ra) # 8000140c <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000138c:	141027f3          	csrr	a5,sepc
    80001390:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001394:	fd843483          	ld	s1,-40(s0)
        uint64  sepc = r_sepc() + 4;
    80001398:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000139c:	100027f3          	csrr	a5,sstatus
    800013a0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800013a4:	fd043903          	ld	s2,-48(s0)
        syscallHandler();
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	f1c080e7          	jalr	-228(ra) # 800012c4 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800013b0:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800013b4:	14149073          	csrw	sepc,s1
}
    800013b8:	fadff06f          	j	80001364 <_ZN5Riscv20handleSupervisorTrapEv+0x30>

00000000800013bc <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00113423          	sd	ra,8(sp)
    800013c4:	00813023          	sd	s0,0(sp)
    800013c8:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800013cc:	00002097          	auipc	ra,0x2
    800013d0:	43c080e7          	jalr	1084(ra) # 80003808 <__mem_alloc>
}
    800013d4:	00813083          	ld	ra,8(sp)
    800013d8:	00013403          	ld	s0,0(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00113423          	sd	ra,8(sp)
    800013ec:	00813023          	sd	s0,0(sp)
    800013f0:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    800013f4:	00002097          	auipc	ra,0x2
    800013f8:	348080e7          	jalr	840(ra) # 8000373c <__mem_free>
    800013fc:	00813083          	ld	ra,8(sp)
    80001400:	00013403          	ld	s0,0(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000140c:	fd010113          	addi	sp,sp,-48
    80001410:	02113423          	sd	ra,40(sp)
    80001414:	02813023          	sd	s0,32(sp)
    80001418:	00913c23          	sd	s1,24(sp)
    8000141c:	01213823          	sd	s2,16(sp)
    80001420:	03010413          	addi	s0,sp,48
    80001424:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001428:	100027f3          	csrr	a5,sstatus
    8000142c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001430:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001434:	00200793          	li	a5,2
    80001438:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    8000143c:	0004c503          	lbu	a0,0(s1)
    80001440:	00050a63          	beqz	a0,80001454 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001444:	00002097          	auipc	ra,0x2
    80001448:	51c080e7          	jalr	1308(ra) # 80003960 <__putc>
        string++;
    8000144c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001450:	fedff06f          	j	8000143c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001454:	0009091b          	sext.w	s2,s2
    80001458:	00297913          	andi	s2,s2,2
    8000145c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001460:	10092073          	csrs	sstatus,s2
}
    80001464:	02813083          	ld	ra,40(sp)
    80001468:	02013403          	ld	s0,32(sp)
    8000146c:	01813483          	ld	s1,24(sp)
    80001470:	01013903          	ld	s2,16(sp)
    80001474:	03010113          	addi	sp,sp,48
    80001478:	00008067          	ret

000000008000147c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000147c:	fc010113          	addi	sp,sp,-64
    80001480:	02113c23          	sd	ra,56(sp)
    80001484:	02813823          	sd	s0,48(sp)
    80001488:	02913423          	sd	s1,40(sp)
    8000148c:	03213023          	sd	s2,32(sp)
    80001490:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001494:	100027f3          	csrr	a5,sstatus
    80001498:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    8000149c:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800014a0:	00200793          	li	a5,2
    800014a4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800014a8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800014ac:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800014b0:	00a00613          	li	a2,10
    800014b4:	02c5773b          	remuw	a4,a0,a2
    800014b8:	02071693          	slli	a3,a4,0x20
    800014bc:	0206d693          	srli	a3,a3,0x20
    800014c0:	00003717          	auipc	a4,0x3
    800014c4:	b8870713          	addi	a4,a4,-1144 # 80004048 <_ZZ12printIntegermE6digits>
    800014c8:	00d70733          	add	a4,a4,a3
    800014cc:	00074703          	lbu	a4,0(a4)
    800014d0:	fe040693          	addi	a3,s0,-32
    800014d4:	009687b3          	add	a5,a3,s1
    800014d8:	0014849b          	addiw	s1,s1,1
    800014dc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800014e0:	0005071b          	sext.w	a4,a0
    800014e4:	02c5553b          	divuw	a0,a0,a2
    800014e8:	00900793          	li	a5,9
    800014ec:	fce7e2e3          	bltu	a5,a4,800014b0 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800014f0:	fff4849b          	addiw	s1,s1,-1
    800014f4:	0004ce63          	bltz	s1,80001510 <_Z12printIntegerm+0x94>
    800014f8:	fe040793          	addi	a5,s0,-32
    800014fc:	009787b3          	add	a5,a5,s1
    80001500:	ff07c503          	lbu	a0,-16(a5)
    80001504:	00002097          	auipc	ra,0x2
    80001508:	45c080e7          	jalr	1116(ra) # 80003960 <__putc>
    8000150c:	fe5ff06f          	j	800014f0 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001510:	0009091b          	sext.w	s2,s2
    80001514:	00297913          	andi	s2,s2,2
    80001518:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000151c:	10092073          	csrs	sstatus,s2
}
    80001520:	03813083          	ld	ra,56(sp)
    80001524:	03013403          	ld	s0,48(sp)
    80001528:	02813483          	ld	s1,40(sp)
    8000152c:	02013903          	ld	s2,32(sp)
    80001530:	04010113          	addi	sp,sp,64
    80001534:	00008067          	ret

0000000080001538 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00813423          	sd	s0,8(sp)
    80001540:	01010413          	addi	s0,sp,16
    80001544:	00100793          	li	a5,1
    80001548:	00f50863          	beq	a0,a5,80001558 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000154c:	00813403          	ld	s0,8(sp)
    80001550:	01010113          	addi	sp,sp,16
    80001554:	00008067          	ret
    80001558:	000107b7          	lui	a5,0x10
    8000155c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001560:	fef596e3          	bne	a1,a5,8000154c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001564:	00003797          	auipc	a5,0x3
    80001568:	0ac78793          	addi	a5,a5,172 # 80004610 <_ZN9Scheduler16readyThreadQueueE>
    8000156c:	0007b023          	sd	zero,0(a5)
    80001570:	0007b423          	sd	zero,8(a5)
    80001574:	fd9ff06f          	j	8000154c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001578 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000158c:	00003517          	auipc	a0,0x3
    80001590:	08453503          	ld	a0,132(a0) # 80004610 <_ZN9Scheduler16readyThreadQueueE>
    80001594:	04050263          	beqz	a0,800015d8 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001598:	00853783          	ld	a5,8(a0)
    8000159c:	00003717          	auipc	a4,0x3
    800015a0:	06f73a23          	sd	a5,116(a4) # 80004610 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800015a4:	02078463          	beqz	a5,800015cc <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800015a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	cc8080e7          	jalr	-824(ra) # 80001274 <_ZdlPv>
}
    800015b4:	00048513          	mv	a0,s1
    800015b8:	01813083          	ld	ra,24(sp)
    800015bc:	01013403          	ld	s0,16(sp)
    800015c0:	00813483          	ld	s1,8(sp)
    800015c4:	02010113          	addi	sp,sp,32
    800015c8:	00008067          	ret
        if (!head) { tail = 0; }
    800015cc:	00003797          	auipc	a5,0x3
    800015d0:	0407b623          	sd	zero,76(a5) # 80004618 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800015d4:	fd5ff06f          	j	800015a8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800015d8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800015dc:	fd9ff06f          	j	800015b4 <_ZN9Scheduler3getEv+0x3c>

00000000800015e0 <_ZN9Scheduler3putEP3TCB>:
{
    800015e0:	fe010113          	addi	sp,sp,-32
    800015e4:	00113c23          	sd	ra,24(sp)
    800015e8:	00813823          	sd	s0,16(sp)
    800015ec:	00913423          	sd	s1,8(sp)
    800015f0:	02010413          	addi	s0,sp,32
    800015f4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800015f8:	01000513          	li	a0,16
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	c28080e7          	jalr	-984(ra) # 80001224 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001604:	00953023          	sd	s1,0(a0)
    80001608:	00053423          	sd	zero,8(a0)
        if (tail)
    8000160c:	00003797          	auipc	a5,0x3
    80001610:	00c7b783          	ld	a5,12(a5) # 80004618 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001614:	02078263          	beqz	a5,80001638 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001618:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000161c:	00003797          	auipc	a5,0x3
    80001620:	fea7be23          	sd	a0,-4(a5) # 80004618 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001624:	01813083          	ld	ra,24(sp)
    80001628:	01013403          	ld	s0,16(sp)
    8000162c:	00813483          	ld	s1,8(sp)
    80001630:	02010113          	addi	sp,sp,32
    80001634:	00008067          	ret
            head = tail = elem;
    80001638:	00003797          	auipc	a5,0x3
    8000163c:	fd878793          	addi	a5,a5,-40 # 80004610 <_ZN9Scheduler16readyThreadQueueE>
    80001640:	00a7b423          	sd	a0,8(a5)
    80001644:	00a7b023          	sd	a0,0(a5)
    80001648:	fddff06f          	j	80001624 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000164c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    8000165c:	000105b7          	lui	a1,0x10
    80001660:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001664:	00100513          	li	a0,1
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	ed0080e7          	jalr	-304(ra) # 80001538 <_Z41__static_initialization_and_destruction_0ii>
    80001670:	00813083          	ld	ra,8(sp)
    80001674:	00013403          	ld	s0,0(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <start>:
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00813423          	sd	s0,8(sp)
    80001688:	01010413          	addi	s0,sp,16
    8000168c:	300027f3          	csrr	a5,mstatus
    80001690:	ffffe737          	lui	a4,0xffffe
    80001694:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8f6f>
    80001698:	00e7f7b3          	and	a5,a5,a4
    8000169c:	00001737          	lui	a4,0x1
    800016a0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016a4:	00e7e7b3          	or	a5,a5,a4
    800016a8:	30079073          	csrw	mstatus,a5
    800016ac:	00000797          	auipc	a5,0x0
    800016b0:	16078793          	addi	a5,a5,352 # 8000180c <system_main>
    800016b4:	34179073          	csrw	mepc,a5
    800016b8:	00000793          	li	a5,0
    800016bc:	18079073          	csrw	satp,a5
    800016c0:	000107b7          	lui	a5,0x10
    800016c4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016c8:	30279073          	csrw	medeleg,a5
    800016cc:	30379073          	csrw	mideleg,a5
    800016d0:	104027f3          	csrr	a5,sie
    800016d4:	2227e793          	ori	a5,a5,546
    800016d8:	10479073          	csrw	sie,a5
    800016dc:	fff00793          	li	a5,-1
    800016e0:	00a7d793          	srli	a5,a5,0xa
    800016e4:	3b079073          	csrw	pmpaddr0,a5
    800016e8:	00f00793          	li	a5,15
    800016ec:	3a079073          	csrw	pmpcfg0,a5
    800016f0:	f14027f3          	csrr	a5,mhartid
    800016f4:	0200c737          	lui	a4,0x200c
    800016f8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800016fc:	0007869b          	sext.w	a3,a5
    80001700:	00269713          	slli	a4,a3,0x2
    80001704:	000f4637          	lui	a2,0xf4
    80001708:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000170c:	00d70733          	add	a4,a4,a3
    80001710:	0037979b          	slliw	a5,a5,0x3
    80001714:	020046b7          	lui	a3,0x2004
    80001718:	00d787b3          	add	a5,a5,a3
    8000171c:	00c585b3          	add	a1,a1,a2
    80001720:	00371693          	slli	a3,a4,0x3
    80001724:	00003717          	auipc	a4,0x3
    80001728:	efc70713          	addi	a4,a4,-260 # 80004620 <timer_scratch>
    8000172c:	00b7b023          	sd	a1,0(a5)
    80001730:	00d70733          	add	a4,a4,a3
    80001734:	00f73c23          	sd	a5,24(a4)
    80001738:	02c73023          	sd	a2,32(a4)
    8000173c:	34071073          	csrw	mscratch,a4
    80001740:	00000797          	auipc	a5,0x0
    80001744:	6e078793          	addi	a5,a5,1760 # 80001e20 <timervec>
    80001748:	30579073          	csrw	mtvec,a5
    8000174c:	300027f3          	csrr	a5,mstatus
    80001750:	0087e793          	ori	a5,a5,8
    80001754:	30079073          	csrw	mstatus,a5
    80001758:	304027f3          	csrr	a5,mie
    8000175c:	0807e793          	ori	a5,a5,128
    80001760:	30479073          	csrw	mie,a5
    80001764:	f14027f3          	csrr	a5,mhartid
    80001768:	0007879b          	sext.w	a5,a5
    8000176c:	00078213          	mv	tp,a5
    80001770:	30200073          	mret
    80001774:	00813403          	ld	s0,8(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <timerinit>:
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00813423          	sd	s0,8(sp)
    80001788:	01010413          	addi	s0,sp,16
    8000178c:	f14027f3          	csrr	a5,mhartid
    80001790:	0200c737          	lui	a4,0x200c
    80001794:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001798:	0007869b          	sext.w	a3,a5
    8000179c:	00269713          	slli	a4,a3,0x2
    800017a0:	000f4637          	lui	a2,0xf4
    800017a4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017a8:	00d70733          	add	a4,a4,a3
    800017ac:	0037979b          	slliw	a5,a5,0x3
    800017b0:	020046b7          	lui	a3,0x2004
    800017b4:	00d787b3          	add	a5,a5,a3
    800017b8:	00c585b3          	add	a1,a1,a2
    800017bc:	00371693          	slli	a3,a4,0x3
    800017c0:	00003717          	auipc	a4,0x3
    800017c4:	e6070713          	addi	a4,a4,-416 # 80004620 <timer_scratch>
    800017c8:	00b7b023          	sd	a1,0(a5)
    800017cc:	00d70733          	add	a4,a4,a3
    800017d0:	00f73c23          	sd	a5,24(a4)
    800017d4:	02c73023          	sd	a2,32(a4)
    800017d8:	34071073          	csrw	mscratch,a4
    800017dc:	00000797          	auipc	a5,0x0
    800017e0:	64478793          	addi	a5,a5,1604 # 80001e20 <timervec>
    800017e4:	30579073          	csrw	mtvec,a5
    800017e8:	300027f3          	csrr	a5,mstatus
    800017ec:	0087e793          	ori	a5,a5,8
    800017f0:	30079073          	csrw	mstatus,a5
    800017f4:	304027f3          	csrr	a5,mie
    800017f8:	0807e793          	ori	a5,a5,128
    800017fc:	30479073          	csrw	mie,a5
    80001800:	00813403          	ld	s0,8(sp)
    80001804:	01010113          	addi	sp,sp,16
    80001808:	00008067          	ret

000000008000180c <system_main>:
    8000180c:	fe010113          	addi	sp,sp,-32
    80001810:	00813823          	sd	s0,16(sp)
    80001814:	00913423          	sd	s1,8(sp)
    80001818:	00113c23          	sd	ra,24(sp)
    8000181c:	02010413          	addi	s0,sp,32
    80001820:	00000097          	auipc	ra,0x0
    80001824:	0c4080e7          	jalr	196(ra) # 800018e4 <cpuid>
    80001828:	00003497          	auipc	s1,0x3
    8000182c:	db848493          	addi	s1,s1,-584 # 800045e0 <started>
    80001830:	02050263          	beqz	a0,80001854 <system_main+0x48>
    80001834:	0004a783          	lw	a5,0(s1)
    80001838:	0007879b          	sext.w	a5,a5
    8000183c:	fe078ce3          	beqz	a5,80001834 <system_main+0x28>
    80001840:	0ff0000f          	fence
    80001844:	00003517          	auipc	a0,0x3
    80001848:	84450513          	addi	a0,a0,-1980 # 80004088 <_ZZ12printIntegermE6digits+0x40>
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	a70080e7          	jalr	-1424(ra) # 800022bc <panic>
    80001854:	00001097          	auipc	ra,0x1
    80001858:	9c4080e7          	jalr	-1596(ra) # 80002218 <consoleinit>
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	150080e7          	jalr	336(ra) # 800029ac <printfinit>
    80001864:	00003517          	auipc	a0,0x3
    80001868:	90450513          	addi	a0,a0,-1788 # 80004168 <_ZZ12printIntegermE6digits+0x120>
    8000186c:	00001097          	auipc	ra,0x1
    80001870:	aac080e7          	jalr	-1364(ra) # 80002318 <__printf>
    80001874:	00002517          	auipc	a0,0x2
    80001878:	7e450513          	addi	a0,a0,2020 # 80004058 <_ZZ12printIntegermE6digits+0x10>
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	a9c080e7          	jalr	-1380(ra) # 80002318 <__printf>
    80001884:	00003517          	auipc	a0,0x3
    80001888:	8e450513          	addi	a0,a0,-1820 # 80004168 <_ZZ12printIntegermE6digits+0x120>
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	a8c080e7          	jalr	-1396(ra) # 80002318 <__printf>
    80001894:	00001097          	auipc	ra,0x1
    80001898:	4a4080e7          	jalr	1188(ra) # 80002d38 <kinit>
    8000189c:	00000097          	auipc	ra,0x0
    800018a0:	148080e7          	jalr	328(ra) # 800019e4 <trapinit>
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	16c080e7          	jalr	364(ra) # 80001a10 <trapinithart>
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	5b4080e7          	jalr	1460(ra) # 80001e60 <plicinit>
    800018b4:	00000097          	auipc	ra,0x0
    800018b8:	5d4080e7          	jalr	1492(ra) # 80001e88 <plicinithart>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	078080e7          	jalr	120(ra) # 80001934 <userinit>
    800018c4:	0ff0000f          	fence
    800018c8:	00100793          	li	a5,1
    800018cc:	00002517          	auipc	a0,0x2
    800018d0:	7a450513          	addi	a0,a0,1956 # 80004070 <_ZZ12printIntegermE6digits+0x28>
    800018d4:	00f4a023          	sw	a5,0(s1)
    800018d8:	00001097          	auipc	ra,0x1
    800018dc:	a40080e7          	jalr	-1472(ra) # 80002318 <__printf>
    800018e0:	0000006f          	j	800018e0 <system_main+0xd4>

00000000800018e4 <cpuid>:
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00813423          	sd	s0,8(sp)
    800018ec:	01010413          	addi	s0,sp,16
    800018f0:	00020513          	mv	a0,tp
    800018f4:	00813403          	ld	s0,8(sp)
    800018f8:	0005051b          	sext.w	a0,a0
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <mycpu>:
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00813423          	sd	s0,8(sp)
    8000190c:	01010413          	addi	s0,sp,16
    80001910:	00020793          	mv	a5,tp
    80001914:	00813403          	ld	s0,8(sp)
    80001918:	0007879b          	sext.w	a5,a5
    8000191c:	00779793          	slli	a5,a5,0x7
    80001920:	00004517          	auipc	a0,0x4
    80001924:	d3050513          	addi	a0,a0,-720 # 80005650 <cpus>
    80001928:	00f50533          	add	a0,a0,a5
    8000192c:	01010113          	addi	sp,sp,16
    80001930:	00008067          	ret

0000000080001934 <userinit>:
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    80001940:	00813403          	ld	s0,8(sp)
    80001944:	01010113          	addi	sp,sp,16
    80001948:	00000317          	auipc	t1,0x0
    8000194c:	89030067          	jr	-1904(t1) # 800011d8 <main>

0000000080001950 <either_copyout>:
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	00113423          	sd	ra,8(sp)
    8000195c:	01010413          	addi	s0,sp,16
    80001960:	02051663          	bnez	a0,8000198c <either_copyout+0x3c>
    80001964:	00058513          	mv	a0,a1
    80001968:	00060593          	mv	a1,a2
    8000196c:	0006861b          	sext.w	a2,a3
    80001970:	00002097          	auipc	ra,0x2
    80001974:	c54080e7          	jalr	-940(ra) # 800035c4 <__memmove>
    80001978:	00813083          	ld	ra,8(sp)
    8000197c:	00013403          	ld	s0,0(sp)
    80001980:	00000513          	li	a0,0
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
    8000198c:	00002517          	auipc	a0,0x2
    80001990:	72450513          	addi	a0,a0,1828 # 800040b0 <_ZZ12printIntegermE6digits+0x68>
    80001994:	00001097          	auipc	ra,0x1
    80001998:	928080e7          	jalr	-1752(ra) # 800022bc <panic>

000000008000199c <either_copyin>:
    8000199c:	ff010113          	addi	sp,sp,-16
    800019a0:	00813023          	sd	s0,0(sp)
    800019a4:	00113423          	sd	ra,8(sp)
    800019a8:	01010413          	addi	s0,sp,16
    800019ac:	02059463          	bnez	a1,800019d4 <either_copyin+0x38>
    800019b0:	00060593          	mv	a1,a2
    800019b4:	0006861b          	sext.w	a2,a3
    800019b8:	00002097          	auipc	ra,0x2
    800019bc:	c0c080e7          	jalr	-1012(ra) # 800035c4 <__memmove>
    800019c0:	00813083          	ld	ra,8(sp)
    800019c4:	00013403          	ld	s0,0(sp)
    800019c8:	00000513          	li	a0,0
    800019cc:	01010113          	addi	sp,sp,16
    800019d0:	00008067          	ret
    800019d4:	00002517          	auipc	a0,0x2
    800019d8:	70450513          	addi	a0,a0,1796 # 800040d8 <_ZZ12printIntegermE6digits+0x90>
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	8e0080e7          	jalr	-1824(ra) # 800022bc <panic>

00000000800019e4 <trapinit>:
    800019e4:	ff010113          	addi	sp,sp,-16
    800019e8:	00813423          	sd	s0,8(sp)
    800019ec:	01010413          	addi	s0,sp,16
    800019f0:	00813403          	ld	s0,8(sp)
    800019f4:	00002597          	auipc	a1,0x2
    800019f8:	70c58593          	addi	a1,a1,1804 # 80004100 <_ZZ12printIntegermE6digits+0xb8>
    800019fc:	00004517          	auipc	a0,0x4
    80001a00:	cd450513          	addi	a0,a0,-812 # 800056d0 <tickslock>
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00001317          	auipc	t1,0x1
    80001a0c:	5c030067          	jr	1472(t1) # 80002fc8 <initlock>

0000000080001a10 <trapinithart>:
    80001a10:	ff010113          	addi	sp,sp,-16
    80001a14:	00813423          	sd	s0,8(sp)
    80001a18:	01010413          	addi	s0,sp,16
    80001a1c:	00000797          	auipc	a5,0x0
    80001a20:	2f478793          	addi	a5,a5,756 # 80001d10 <kernelvec>
    80001a24:	10579073          	csrw	stvec,a5
    80001a28:	00813403          	ld	s0,8(sp)
    80001a2c:	01010113          	addi	sp,sp,16
    80001a30:	00008067          	ret

0000000080001a34 <usertrap>:
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	00813403          	ld	s0,8(sp)
    80001a44:	01010113          	addi	sp,sp,16
    80001a48:	00008067          	ret

0000000080001a4c <usertrapret>:
    80001a4c:	ff010113          	addi	sp,sp,-16
    80001a50:	00813423          	sd	s0,8(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	00813403          	ld	s0,8(sp)
    80001a5c:	01010113          	addi	sp,sp,16
    80001a60:	00008067          	ret

0000000080001a64 <kerneltrap>:
    80001a64:	fe010113          	addi	sp,sp,-32
    80001a68:	00813823          	sd	s0,16(sp)
    80001a6c:	00113c23          	sd	ra,24(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	02010413          	addi	s0,sp,32
    80001a78:	142025f3          	csrr	a1,scause
    80001a7c:	100027f3          	csrr	a5,sstatus
    80001a80:	0027f793          	andi	a5,a5,2
    80001a84:	10079c63          	bnez	a5,80001b9c <kerneltrap+0x138>
    80001a88:	142027f3          	csrr	a5,scause
    80001a8c:	0207ce63          	bltz	a5,80001ac8 <kerneltrap+0x64>
    80001a90:	00002517          	auipc	a0,0x2
    80001a94:	6b850513          	addi	a0,a0,1720 # 80004148 <_ZZ12printIntegermE6digits+0x100>
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	880080e7          	jalr	-1920(ra) # 80002318 <__printf>
    80001aa0:	141025f3          	csrr	a1,sepc
    80001aa4:	14302673          	csrr	a2,stval
    80001aa8:	00002517          	auipc	a0,0x2
    80001aac:	6b050513          	addi	a0,a0,1712 # 80004158 <_ZZ12printIntegermE6digits+0x110>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	868080e7          	jalr	-1944(ra) # 80002318 <__printf>
    80001ab8:	00002517          	auipc	a0,0x2
    80001abc:	6b850513          	addi	a0,a0,1720 # 80004170 <_ZZ12printIntegermE6digits+0x128>
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	7fc080e7          	jalr	2044(ra) # 800022bc <panic>
    80001ac8:	0ff7f713          	andi	a4,a5,255
    80001acc:	00900693          	li	a3,9
    80001ad0:	04d70063          	beq	a4,a3,80001b10 <kerneltrap+0xac>
    80001ad4:	fff00713          	li	a4,-1
    80001ad8:	03f71713          	slli	a4,a4,0x3f
    80001adc:	00170713          	addi	a4,a4,1
    80001ae0:	fae798e3          	bne	a5,a4,80001a90 <kerneltrap+0x2c>
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	e00080e7          	jalr	-512(ra) # 800018e4 <cpuid>
    80001aec:	06050663          	beqz	a0,80001b58 <kerneltrap+0xf4>
    80001af0:	144027f3          	csrr	a5,sip
    80001af4:	ffd7f793          	andi	a5,a5,-3
    80001af8:	14479073          	csrw	sip,a5
    80001afc:	01813083          	ld	ra,24(sp)
    80001b00:	01013403          	ld	s0,16(sp)
    80001b04:	00813483          	ld	s1,8(sp)
    80001b08:	02010113          	addi	sp,sp,32
    80001b0c:	00008067          	ret
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	3c4080e7          	jalr	964(ra) # 80001ed4 <plic_claim>
    80001b18:	00a00793          	li	a5,10
    80001b1c:	00050493          	mv	s1,a0
    80001b20:	06f50863          	beq	a0,a5,80001b90 <kerneltrap+0x12c>
    80001b24:	fc050ce3          	beqz	a0,80001afc <kerneltrap+0x98>
    80001b28:	00050593          	mv	a1,a0
    80001b2c:	00002517          	auipc	a0,0x2
    80001b30:	5fc50513          	addi	a0,a0,1532 # 80004128 <_ZZ12printIntegermE6digits+0xe0>
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	7e4080e7          	jalr	2020(ra) # 80002318 <__printf>
    80001b3c:	01013403          	ld	s0,16(sp)
    80001b40:	01813083          	ld	ra,24(sp)
    80001b44:	00048513          	mv	a0,s1
    80001b48:	00813483          	ld	s1,8(sp)
    80001b4c:	02010113          	addi	sp,sp,32
    80001b50:	00000317          	auipc	t1,0x0
    80001b54:	3bc30067          	jr	956(t1) # 80001f0c <plic_complete>
    80001b58:	00004517          	auipc	a0,0x4
    80001b5c:	b7850513          	addi	a0,a0,-1160 # 800056d0 <tickslock>
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	48c080e7          	jalr	1164(ra) # 80002fec <acquire>
    80001b68:	00003717          	auipc	a4,0x3
    80001b6c:	a7c70713          	addi	a4,a4,-1412 # 800045e4 <ticks>
    80001b70:	00072783          	lw	a5,0(a4)
    80001b74:	00004517          	auipc	a0,0x4
    80001b78:	b5c50513          	addi	a0,a0,-1188 # 800056d0 <tickslock>
    80001b7c:	0017879b          	addiw	a5,a5,1
    80001b80:	00f72023          	sw	a5,0(a4)
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	534080e7          	jalr	1332(ra) # 800030b8 <release>
    80001b8c:	f65ff06f          	j	80001af0 <kerneltrap+0x8c>
    80001b90:	00001097          	auipc	ra,0x1
    80001b94:	090080e7          	jalr	144(ra) # 80002c20 <uartintr>
    80001b98:	fa5ff06f          	j	80001b3c <kerneltrap+0xd8>
    80001b9c:	00002517          	auipc	a0,0x2
    80001ba0:	56c50513          	addi	a0,a0,1388 # 80004108 <_ZZ12printIntegermE6digits+0xc0>
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	718080e7          	jalr	1816(ra) # 800022bc <panic>

0000000080001bac <clockintr>:
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00813823          	sd	s0,16(sp)
    80001bb4:	00913423          	sd	s1,8(sp)
    80001bb8:	00113c23          	sd	ra,24(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    80001bc0:	00004497          	auipc	s1,0x4
    80001bc4:	b1048493          	addi	s1,s1,-1264 # 800056d0 <tickslock>
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00001097          	auipc	ra,0x1
    80001bd0:	420080e7          	jalr	1056(ra) # 80002fec <acquire>
    80001bd4:	00003717          	auipc	a4,0x3
    80001bd8:	a1070713          	addi	a4,a4,-1520 # 800045e4 <ticks>
    80001bdc:	00072783          	lw	a5,0(a4)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	01813083          	ld	ra,24(sp)
    80001be8:	00048513          	mv	a0,s1
    80001bec:	0017879b          	addiw	a5,a5,1
    80001bf0:	00813483          	ld	s1,8(sp)
    80001bf4:	00f72023          	sw	a5,0(a4)
    80001bf8:	02010113          	addi	sp,sp,32
    80001bfc:	00001317          	auipc	t1,0x1
    80001c00:	4bc30067          	jr	1212(t1) # 800030b8 <release>

0000000080001c04 <devintr>:
    80001c04:	142027f3          	csrr	a5,scause
    80001c08:	00000513          	li	a0,0
    80001c0c:	0007c463          	bltz	a5,80001c14 <devintr+0x10>
    80001c10:	00008067          	ret
    80001c14:	fe010113          	addi	sp,sp,-32
    80001c18:	00813823          	sd	s0,16(sp)
    80001c1c:	00113c23          	sd	ra,24(sp)
    80001c20:	00913423          	sd	s1,8(sp)
    80001c24:	02010413          	addi	s0,sp,32
    80001c28:	0ff7f713          	andi	a4,a5,255
    80001c2c:	00900693          	li	a3,9
    80001c30:	04d70c63          	beq	a4,a3,80001c88 <devintr+0x84>
    80001c34:	fff00713          	li	a4,-1
    80001c38:	03f71713          	slli	a4,a4,0x3f
    80001c3c:	00170713          	addi	a4,a4,1
    80001c40:	00e78c63          	beq	a5,a4,80001c58 <devintr+0x54>
    80001c44:	01813083          	ld	ra,24(sp)
    80001c48:	01013403          	ld	s0,16(sp)
    80001c4c:	00813483          	ld	s1,8(sp)
    80001c50:	02010113          	addi	sp,sp,32
    80001c54:	00008067          	ret
    80001c58:	00000097          	auipc	ra,0x0
    80001c5c:	c8c080e7          	jalr	-884(ra) # 800018e4 <cpuid>
    80001c60:	06050663          	beqz	a0,80001ccc <devintr+0xc8>
    80001c64:	144027f3          	csrr	a5,sip
    80001c68:	ffd7f793          	andi	a5,a5,-3
    80001c6c:	14479073          	csrw	sip,a5
    80001c70:	01813083          	ld	ra,24(sp)
    80001c74:	01013403          	ld	s0,16(sp)
    80001c78:	00813483          	ld	s1,8(sp)
    80001c7c:	00200513          	li	a0,2
    80001c80:	02010113          	addi	sp,sp,32
    80001c84:	00008067          	ret
    80001c88:	00000097          	auipc	ra,0x0
    80001c8c:	24c080e7          	jalr	588(ra) # 80001ed4 <plic_claim>
    80001c90:	00a00793          	li	a5,10
    80001c94:	00050493          	mv	s1,a0
    80001c98:	06f50663          	beq	a0,a5,80001d04 <devintr+0x100>
    80001c9c:	00100513          	li	a0,1
    80001ca0:	fa0482e3          	beqz	s1,80001c44 <devintr+0x40>
    80001ca4:	00048593          	mv	a1,s1
    80001ca8:	00002517          	auipc	a0,0x2
    80001cac:	48050513          	addi	a0,a0,1152 # 80004128 <_ZZ12printIntegermE6digits+0xe0>
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	668080e7          	jalr	1640(ra) # 80002318 <__printf>
    80001cb8:	00048513          	mv	a0,s1
    80001cbc:	00000097          	auipc	ra,0x0
    80001cc0:	250080e7          	jalr	592(ra) # 80001f0c <plic_complete>
    80001cc4:	00100513          	li	a0,1
    80001cc8:	f7dff06f          	j	80001c44 <devintr+0x40>
    80001ccc:	00004517          	auipc	a0,0x4
    80001cd0:	a0450513          	addi	a0,a0,-1532 # 800056d0 <tickslock>
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	318080e7          	jalr	792(ra) # 80002fec <acquire>
    80001cdc:	00003717          	auipc	a4,0x3
    80001ce0:	90870713          	addi	a4,a4,-1784 # 800045e4 <ticks>
    80001ce4:	00072783          	lw	a5,0(a4)
    80001ce8:	00004517          	auipc	a0,0x4
    80001cec:	9e850513          	addi	a0,a0,-1560 # 800056d0 <tickslock>
    80001cf0:	0017879b          	addiw	a5,a5,1
    80001cf4:	00f72023          	sw	a5,0(a4)
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	3c0080e7          	jalr	960(ra) # 800030b8 <release>
    80001d00:	f65ff06f          	j	80001c64 <devintr+0x60>
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	f1c080e7          	jalr	-228(ra) # 80002c20 <uartintr>
    80001d0c:	fadff06f          	j	80001cb8 <devintr+0xb4>

0000000080001d10 <kernelvec>:
    80001d10:	f0010113          	addi	sp,sp,-256
    80001d14:	00113023          	sd	ra,0(sp)
    80001d18:	00213423          	sd	sp,8(sp)
    80001d1c:	00313823          	sd	gp,16(sp)
    80001d20:	00413c23          	sd	tp,24(sp)
    80001d24:	02513023          	sd	t0,32(sp)
    80001d28:	02613423          	sd	t1,40(sp)
    80001d2c:	02713823          	sd	t2,48(sp)
    80001d30:	02813c23          	sd	s0,56(sp)
    80001d34:	04913023          	sd	s1,64(sp)
    80001d38:	04a13423          	sd	a0,72(sp)
    80001d3c:	04b13823          	sd	a1,80(sp)
    80001d40:	04c13c23          	sd	a2,88(sp)
    80001d44:	06d13023          	sd	a3,96(sp)
    80001d48:	06e13423          	sd	a4,104(sp)
    80001d4c:	06f13823          	sd	a5,112(sp)
    80001d50:	07013c23          	sd	a6,120(sp)
    80001d54:	09113023          	sd	a7,128(sp)
    80001d58:	09213423          	sd	s2,136(sp)
    80001d5c:	09313823          	sd	s3,144(sp)
    80001d60:	09413c23          	sd	s4,152(sp)
    80001d64:	0b513023          	sd	s5,160(sp)
    80001d68:	0b613423          	sd	s6,168(sp)
    80001d6c:	0b713823          	sd	s7,176(sp)
    80001d70:	0b813c23          	sd	s8,184(sp)
    80001d74:	0d913023          	sd	s9,192(sp)
    80001d78:	0da13423          	sd	s10,200(sp)
    80001d7c:	0db13823          	sd	s11,208(sp)
    80001d80:	0dc13c23          	sd	t3,216(sp)
    80001d84:	0fd13023          	sd	t4,224(sp)
    80001d88:	0fe13423          	sd	t5,232(sp)
    80001d8c:	0ff13823          	sd	t6,240(sp)
    80001d90:	cd5ff0ef          	jal	ra,80001a64 <kerneltrap>
    80001d94:	00013083          	ld	ra,0(sp)
    80001d98:	00813103          	ld	sp,8(sp)
    80001d9c:	01013183          	ld	gp,16(sp)
    80001da0:	02013283          	ld	t0,32(sp)
    80001da4:	02813303          	ld	t1,40(sp)
    80001da8:	03013383          	ld	t2,48(sp)
    80001dac:	03813403          	ld	s0,56(sp)
    80001db0:	04013483          	ld	s1,64(sp)
    80001db4:	04813503          	ld	a0,72(sp)
    80001db8:	05013583          	ld	a1,80(sp)
    80001dbc:	05813603          	ld	a2,88(sp)
    80001dc0:	06013683          	ld	a3,96(sp)
    80001dc4:	06813703          	ld	a4,104(sp)
    80001dc8:	07013783          	ld	a5,112(sp)
    80001dcc:	07813803          	ld	a6,120(sp)
    80001dd0:	08013883          	ld	a7,128(sp)
    80001dd4:	08813903          	ld	s2,136(sp)
    80001dd8:	09013983          	ld	s3,144(sp)
    80001ddc:	09813a03          	ld	s4,152(sp)
    80001de0:	0a013a83          	ld	s5,160(sp)
    80001de4:	0a813b03          	ld	s6,168(sp)
    80001de8:	0b013b83          	ld	s7,176(sp)
    80001dec:	0b813c03          	ld	s8,184(sp)
    80001df0:	0c013c83          	ld	s9,192(sp)
    80001df4:	0c813d03          	ld	s10,200(sp)
    80001df8:	0d013d83          	ld	s11,208(sp)
    80001dfc:	0d813e03          	ld	t3,216(sp)
    80001e00:	0e013e83          	ld	t4,224(sp)
    80001e04:	0e813f03          	ld	t5,232(sp)
    80001e08:	0f013f83          	ld	t6,240(sp)
    80001e0c:	10010113          	addi	sp,sp,256
    80001e10:	10200073          	sret
    80001e14:	00000013          	nop
    80001e18:	00000013          	nop
    80001e1c:	00000013          	nop

0000000080001e20 <timervec>:
    80001e20:	34051573          	csrrw	a0,mscratch,a0
    80001e24:	00b53023          	sd	a1,0(a0)
    80001e28:	00c53423          	sd	a2,8(a0)
    80001e2c:	00d53823          	sd	a3,16(a0)
    80001e30:	01853583          	ld	a1,24(a0)
    80001e34:	02053603          	ld	a2,32(a0)
    80001e38:	0005b683          	ld	a3,0(a1)
    80001e3c:	00c686b3          	add	a3,a3,a2
    80001e40:	00d5b023          	sd	a3,0(a1)
    80001e44:	00200593          	li	a1,2
    80001e48:	14459073          	csrw	sip,a1
    80001e4c:	01053683          	ld	a3,16(a0)
    80001e50:	00853603          	ld	a2,8(a0)
    80001e54:	00053583          	ld	a1,0(a0)
    80001e58:	34051573          	csrrw	a0,mscratch,a0
    80001e5c:	30200073          	mret

0000000080001e60 <plicinit>:
    80001e60:	ff010113          	addi	sp,sp,-16
    80001e64:	00813423          	sd	s0,8(sp)
    80001e68:	01010413          	addi	s0,sp,16
    80001e6c:	00813403          	ld	s0,8(sp)
    80001e70:	0c0007b7          	lui	a5,0xc000
    80001e74:	00100713          	li	a4,1
    80001e78:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e7c:	00e7a223          	sw	a4,4(a5)
    80001e80:	01010113          	addi	sp,sp,16
    80001e84:	00008067          	ret

0000000080001e88 <plicinithart>:
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00813023          	sd	s0,0(sp)
    80001e90:	00113423          	sd	ra,8(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	00000097          	auipc	ra,0x0
    80001e9c:	a4c080e7          	jalr	-1460(ra) # 800018e4 <cpuid>
    80001ea0:	0085171b          	slliw	a4,a0,0x8
    80001ea4:	0c0027b7          	lui	a5,0xc002
    80001ea8:	00e787b3          	add	a5,a5,a4
    80001eac:	40200713          	li	a4,1026
    80001eb0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001eb4:	00813083          	ld	ra,8(sp)
    80001eb8:	00013403          	ld	s0,0(sp)
    80001ebc:	00d5151b          	slliw	a0,a0,0xd
    80001ec0:	0c2017b7          	lui	a5,0xc201
    80001ec4:	00a78533          	add	a0,a5,a0
    80001ec8:	00052023          	sw	zero,0(a0)
    80001ecc:	01010113          	addi	sp,sp,16
    80001ed0:	00008067          	ret

0000000080001ed4 <plic_claim>:
    80001ed4:	ff010113          	addi	sp,sp,-16
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	00113423          	sd	ra,8(sp)
    80001ee0:	01010413          	addi	s0,sp,16
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	a00080e7          	jalr	-1536(ra) # 800018e4 <cpuid>
    80001eec:	00813083          	ld	ra,8(sp)
    80001ef0:	00013403          	ld	s0,0(sp)
    80001ef4:	00d5151b          	slliw	a0,a0,0xd
    80001ef8:	0c2017b7          	lui	a5,0xc201
    80001efc:	00a78533          	add	a0,a5,a0
    80001f00:	00452503          	lw	a0,4(a0)
    80001f04:	01010113          	addi	sp,sp,16
    80001f08:	00008067          	ret

0000000080001f0c <plic_complete>:
    80001f0c:	fe010113          	addi	sp,sp,-32
    80001f10:	00813823          	sd	s0,16(sp)
    80001f14:	00913423          	sd	s1,8(sp)
    80001f18:	00113c23          	sd	ra,24(sp)
    80001f1c:	02010413          	addi	s0,sp,32
    80001f20:	00050493          	mv	s1,a0
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	9c0080e7          	jalr	-1600(ra) # 800018e4 <cpuid>
    80001f2c:	01813083          	ld	ra,24(sp)
    80001f30:	01013403          	ld	s0,16(sp)
    80001f34:	00d5179b          	slliw	a5,a0,0xd
    80001f38:	0c201737          	lui	a4,0xc201
    80001f3c:	00f707b3          	add	a5,a4,a5
    80001f40:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	02010113          	addi	sp,sp,32
    80001f4c:	00008067          	ret

0000000080001f50 <consolewrite>:
    80001f50:	fb010113          	addi	sp,sp,-80
    80001f54:	04813023          	sd	s0,64(sp)
    80001f58:	04113423          	sd	ra,72(sp)
    80001f5c:	02913c23          	sd	s1,56(sp)
    80001f60:	03213823          	sd	s2,48(sp)
    80001f64:	03313423          	sd	s3,40(sp)
    80001f68:	03413023          	sd	s4,32(sp)
    80001f6c:	01513c23          	sd	s5,24(sp)
    80001f70:	05010413          	addi	s0,sp,80
    80001f74:	06c05c63          	blez	a2,80001fec <consolewrite+0x9c>
    80001f78:	00060993          	mv	s3,a2
    80001f7c:	00050a13          	mv	s4,a0
    80001f80:	00058493          	mv	s1,a1
    80001f84:	00000913          	li	s2,0
    80001f88:	fff00a93          	li	s5,-1
    80001f8c:	01c0006f          	j	80001fa8 <consolewrite+0x58>
    80001f90:	fbf44503          	lbu	a0,-65(s0)
    80001f94:	0019091b          	addiw	s2,s2,1
    80001f98:	00148493          	addi	s1,s1,1
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	a9c080e7          	jalr	-1380(ra) # 80002a38 <uartputc>
    80001fa4:	03298063          	beq	s3,s2,80001fc4 <consolewrite+0x74>
    80001fa8:	00048613          	mv	a2,s1
    80001fac:	00100693          	li	a3,1
    80001fb0:	000a0593          	mv	a1,s4
    80001fb4:	fbf40513          	addi	a0,s0,-65
    80001fb8:	00000097          	auipc	ra,0x0
    80001fbc:	9e4080e7          	jalr	-1564(ra) # 8000199c <either_copyin>
    80001fc0:	fd5518e3          	bne	a0,s5,80001f90 <consolewrite+0x40>
    80001fc4:	04813083          	ld	ra,72(sp)
    80001fc8:	04013403          	ld	s0,64(sp)
    80001fcc:	03813483          	ld	s1,56(sp)
    80001fd0:	02813983          	ld	s3,40(sp)
    80001fd4:	02013a03          	ld	s4,32(sp)
    80001fd8:	01813a83          	ld	s5,24(sp)
    80001fdc:	00090513          	mv	a0,s2
    80001fe0:	03013903          	ld	s2,48(sp)
    80001fe4:	05010113          	addi	sp,sp,80
    80001fe8:	00008067          	ret
    80001fec:	00000913          	li	s2,0
    80001ff0:	fd5ff06f          	j	80001fc4 <consolewrite+0x74>

0000000080001ff4 <consoleread>:
    80001ff4:	f9010113          	addi	sp,sp,-112
    80001ff8:	06813023          	sd	s0,96(sp)
    80001ffc:	04913c23          	sd	s1,88(sp)
    80002000:	05213823          	sd	s2,80(sp)
    80002004:	05313423          	sd	s3,72(sp)
    80002008:	05413023          	sd	s4,64(sp)
    8000200c:	03513c23          	sd	s5,56(sp)
    80002010:	03613823          	sd	s6,48(sp)
    80002014:	03713423          	sd	s7,40(sp)
    80002018:	03813023          	sd	s8,32(sp)
    8000201c:	06113423          	sd	ra,104(sp)
    80002020:	01913c23          	sd	s9,24(sp)
    80002024:	07010413          	addi	s0,sp,112
    80002028:	00060b93          	mv	s7,a2
    8000202c:	00050913          	mv	s2,a0
    80002030:	00058c13          	mv	s8,a1
    80002034:	00060b1b          	sext.w	s6,a2
    80002038:	00003497          	auipc	s1,0x3
    8000203c:	6c048493          	addi	s1,s1,1728 # 800056f8 <cons>
    80002040:	00400993          	li	s3,4
    80002044:	fff00a13          	li	s4,-1
    80002048:	00a00a93          	li	s5,10
    8000204c:	05705e63          	blez	s7,800020a8 <consoleread+0xb4>
    80002050:	09c4a703          	lw	a4,156(s1)
    80002054:	0984a783          	lw	a5,152(s1)
    80002058:	0007071b          	sext.w	a4,a4
    8000205c:	08e78463          	beq	a5,a4,800020e4 <consoleread+0xf0>
    80002060:	07f7f713          	andi	a4,a5,127
    80002064:	00e48733          	add	a4,s1,a4
    80002068:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000206c:	0017869b          	addiw	a3,a5,1
    80002070:	08d4ac23          	sw	a3,152(s1)
    80002074:	00070c9b          	sext.w	s9,a4
    80002078:	0b370663          	beq	a4,s3,80002124 <consoleread+0x130>
    8000207c:	00100693          	li	a3,1
    80002080:	f9f40613          	addi	a2,s0,-97
    80002084:	000c0593          	mv	a1,s8
    80002088:	00090513          	mv	a0,s2
    8000208c:	f8e40fa3          	sb	a4,-97(s0)
    80002090:	00000097          	auipc	ra,0x0
    80002094:	8c0080e7          	jalr	-1856(ra) # 80001950 <either_copyout>
    80002098:	01450863          	beq	a0,s4,800020a8 <consoleread+0xb4>
    8000209c:	001c0c13          	addi	s8,s8,1
    800020a0:	fffb8b9b          	addiw	s7,s7,-1
    800020a4:	fb5c94e3          	bne	s9,s5,8000204c <consoleread+0x58>
    800020a8:	000b851b          	sext.w	a0,s7
    800020ac:	06813083          	ld	ra,104(sp)
    800020b0:	06013403          	ld	s0,96(sp)
    800020b4:	05813483          	ld	s1,88(sp)
    800020b8:	05013903          	ld	s2,80(sp)
    800020bc:	04813983          	ld	s3,72(sp)
    800020c0:	04013a03          	ld	s4,64(sp)
    800020c4:	03813a83          	ld	s5,56(sp)
    800020c8:	02813b83          	ld	s7,40(sp)
    800020cc:	02013c03          	ld	s8,32(sp)
    800020d0:	01813c83          	ld	s9,24(sp)
    800020d4:	40ab053b          	subw	a0,s6,a0
    800020d8:	03013b03          	ld	s6,48(sp)
    800020dc:	07010113          	addi	sp,sp,112
    800020e0:	00008067          	ret
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	1d8080e7          	jalr	472(ra) # 800032bc <push_on>
    800020ec:	0984a703          	lw	a4,152(s1)
    800020f0:	09c4a783          	lw	a5,156(s1)
    800020f4:	0007879b          	sext.w	a5,a5
    800020f8:	fef70ce3          	beq	a4,a5,800020f0 <consoleread+0xfc>
    800020fc:	00001097          	auipc	ra,0x1
    80002100:	234080e7          	jalr	564(ra) # 80003330 <pop_on>
    80002104:	0984a783          	lw	a5,152(s1)
    80002108:	07f7f713          	andi	a4,a5,127
    8000210c:	00e48733          	add	a4,s1,a4
    80002110:	01874703          	lbu	a4,24(a4)
    80002114:	0017869b          	addiw	a3,a5,1
    80002118:	08d4ac23          	sw	a3,152(s1)
    8000211c:	00070c9b          	sext.w	s9,a4
    80002120:	f5371ee3          	bne	a4,s3,8000207c <consoleread+0x88>
    80002124:	000b851b          	sext.w	a0,s7
    80002128:	f96bf2e3          	bgeu	s7,s6,800020ac <consoleread+0xb8>
    8000212c:	08f4ac23          	sw	a5,152(s1)
    80002130:	f7dff06f          	j	800020ac <consoleread+0xb8>

0000000080002134 <consputc>:
    80002134:	10000793          	li	a5,256
    80002138:	00f50663          	beq	a0,a5,80002144 <consputc+0x10>
    8000213c:	00001317          	auipc	t1,0x1
    80002140:	9f430067          	jr	-1548(t1) # 80002b30 <uartputc_sync>
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00113423          	sd	ra,8(sp)
    8000214c:	00813023          	sd	s0,0(sp)
    80002150:	01010413          	addi	s0,sp,16
    80002154:	00800513          	li	a0,8
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	9d8080e7          	jalr	-1576(ra) # 80002b30 <uartputc_sync>
    80002160:	02000513          	li	a0,32
    80002164:	00001097          	auipc	ra,0x1
    80002168:	9cc080e7          	jalr	-1588(ra) # 80002b30 <uartputc_sync>
    8000216c:	00013403          	ld	s0,0(sp)
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00800513          	li	a0,8
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00001317          	auipc	t1,0x1
    80002180:	9b430067          	jr	-1612(t1) # 80002b30 <uartputc_sync>

0000000080002184 <consoleintr>:
    80002184:	fe010113          	addi	sp,sp,-32
    80002188:	00813823          	sd	s0,16(sp)
    8000218c:	00913423          	sd	s1,8(sp)
    80002190:	01213023          	sd	s2,0(sp)
    80002194:	00113c23          	sd	ra,24(sp)
    80002198:	02010413          	addi	s0,sp,32
    8000219c:	00003917          	auipc	s2,0x3
    800021a0:	55c90913          	addi	s2,s2,1372 # 800056f8 <cons>
    800021a4:	00050493          	mv	s1,a0
    800021a8:	00090513          	mv	a0,s2
    800021ac:	00001097          	auipc	ra,0x1
    800021b0:	e40080e7          	jalr	-448(ra) # 80002fec <acquire>
    800021b4:	02048c63          	beqz	s1,800021ec <consoleintr+0x68>
    800021b8:	0a092783          	lw	a5,160(s2)
    800021bc:	09892703          	lw	a4,152(s2)
    800021c0:	07f00693          	li	a3,127
    800021c4:	40e7873b          	subw	a4,a5,a4
    800021c8:	02e6e263          	bltu	a3,a4,800021ec <consoleintr+0x68>
    800021cc:	00d00713          	li	a4,13
    800021d0:	04e48063          	beq	s1,a4,80002210 <consoleintr+0x8c>
    800021d4:	07f7f713          	andi	a4,a5,127
    800021d8:	00e90733          	add	a4,s2,a4
    800021dc:	0017879b          	addiw	a5,a5,1
    800021e0:	0af92023          	sw	a5,160(s2)
    800021e4:	00970c23          	sb	s1,24(a4)
    800021e8:	08f92e23          	sw	a5,156(s2)
    800021ec:	01013403          	ld	s0,16(sp)
    800021f0:	01813083          	ld	ra,24(sp)
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	00013903          	ld	s2,0(sp)
    800021fc:	00003517          	auipc	a0,0x3
    80002200:	4fc50513          	addi	a0,a0,1276 # 800056f8 <cons>
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00001317          	auipc	t1,0x1
    8000220c:	eb030067          	jr	-336(t1) # 800030b8 <release>
    80002210:	00a00493          	li	s1,10
    80002214:	fc1ff06f          	j	800021d4 <consoleintr+0x50>

0000000080002218 <consoleinit>:
    80002218:	fe010113          	addi	sp,sp,-32
    8000221c:	00113c23          	sd	ra,24(sp)
    80002220:	00813823          	sd	s0,16(sp)
    80002224:	00913423          	sd	s1,8(sp)
    80002228:	02010413          	addi	s0,sp,32
    8000222c:	00003497          	auipc	s1,0x3
    80002230:	4cc48493          	addi	s1,s1,1228 # 800056f8 <cons>
    80002234:	00048513          	mv	a0,s1
    80002238:	00002597          	auipc	a1,0x2
    8000223c:	f4858593          	addi	a1,a1,-184 # 80004180 <_ZZ12printIntegermE6digits+0x138>
    80002240:	00001097          	auipc	ra,0x1
    80002244:	d88080e7          	jalr	-632(ra) # 80002fc8 <initlock>
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	7ac080e7          	jalr	1964(ra) # 800029f4 <uartinit>
    80002250:	01813083          	ld	ra,24(sp)
    80002254:	01013403          	ld	s0,16(sp)
    80002258:	00000797          	auipc	a5,0x0
    8000225c:	d9c78793          	addi	a5,a5,-612 # 80001ff4 <consoleread>
    80002260:	0af4bc23          	sd	a5,184(s1)
    80002264:	00000797          	auipc	a5,0x0
    80002268:	cec78793          	addi	a5,a5,-788 # 80001f50 <consolewrite>
    8000226c:	0cf4b023          	sd	a5,192(s1)
    80002270:	00813483          	ld	s1,8(sp)
    80002274:	02010113          	addi	sp,sp,32
    80002278:	00008067          	ret

000000008000227c <console_read>:
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00813423          	sd	s0,8(sp)
    80002284:	01010413          	addi	s0,sp,16
    80002288:	00813403          	ld	s0,8(sp)
    8000228c:	00003317          	auipc	t1,0x3
    80002290:	52433303          	ld	t1,1316(t1) # 800057b0 <devsw+0x10>
    80002294:	01010113          	addi	sp,sp,16
    80002298:	00030067          	jr	t1

000000008000229c <console_write>:
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00813423          	sd	s0,8(sp)
    800022a4:	01010413          	addi	s0,sp,16
    800022a8:	00813403          	ld	s0,8(sp)
    800022ac:	00003317          	auipc	t1,0x3
    800022b0:	50c33303          	ld	t1,1292(t1) # 800057b8 <devsw+0x18>
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00030067          	jr	t1

00000000800022bc <panic>:
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	00813823          	sd	s0,16(sp)
    800022c8:	00913423          	sd	s1,8(sp)
    800022cc:	02010413          	addi	s0,sp,32
    800022d0:	00050493          	mv	s1,a0
    800022d4:	00002517          	auipc	a0,0x2
    800022d8:	eb450513          	addi	a0,a0,-332 # 80004188 <_ZZ12printIntegermE6digits+0x140>
    800022dc:	00003797          	auipc	a5,0x3
    800022e0:	5607ae23          	sw	zero,1404(a5) # 80005858 <pr+0x18>
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	034080e7          	jalr	52(ra) # 80002318 <__printf>
    800022ec:	00048513          	mv	a0,s1
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	028080e7          	jalr	40(ra) # 80002318 <__printf>
    800022f8:	00002517          	auipc	a0,0x2
    800022fc:	e7050513          	addi	a0,a0,-400 # 80004168 <_ZZ12printIntegermE6digits+0x120>
    80002300:	00000097          	auipc	ra,0x0
    80002304:	018080e7          	jalr	24(ra) # 80002318 <__printf>
    80002308:	00100793          	li	a5,1
    8000230c:	00002717          	auipc	a4,0x2
    80002310:	2cf72e23          	sw	a5,732(a4) # 800045e8 <panicked>
    80002314:	0000006f          	j	80002314 <panic+0x58>

0000000080002318 <__printf>:
    80002318:	f3010113          	addi	sp,sp,-208
    8000231c:	08813023          	sd	s0,128(sp)
    80002320:	07313423          	sd	s3,104(sp)
    80002324:	09010413          	addi	s0,sp,144
    80002328:	05813023          	sd	s8,64(sp)
    8000232c:	08113423          	sd	ra,136(sp)
    80002330:	06913c23          	sd	s1,120(sp)
    80002334:	07213823          	sd	s2,112(sp)
    80002338:	07413023          	sd	s4,96(sp)
    8000233c:	05513c23          	sd	s5,88(sp)
    80002340:	05613823          	sd	s6,80(sp)
    80002344:	05713423          	sd	s7,72(sp)
    80002348:	03913c23          	sd	s9,56(sp)
    8000234c:	03a13823          	sd	s10,48(sp)
    80002350:	03b13423          	sd	s11,40(sp)
    80002354:	00003317          	auipc	t1,0x3
    80002358:	4ec30313          	addi	t1,t1,1260 # 80005840 <pr>
    8000235c:	01832c03          	lw	s8,24(t1)
    80002360:	00b43423          	sd	a1,8(s0)
    80002364:	00c43823          	sd	a2,16(s0)
    80002368:	00d43c23          	sd	a3,24(s0)
    8000236c:	02e43023          	sd	a4,32(s0)
    80002370:	02f43423          	sd	a5,40(s0)
    80002374:	03043823          	sd	a6,48(s0)
    80002378:	03143c23          	sd	a7,56(s0)
    8000237c:	00050993          	mv	s3,a0
    80002380:	4a0c1663          	bnez	s8,8000282c <__printf+0x514>
    80002384:	60098c63          	beqz	s3,8000299c <__printf+0x684>
    80002388:	0009c503          	lbu	a0,0(s3)
    8000238c:	00840793          	addi	a5,s0,8
    80002390:	f6f43c23          	sd	a5,-136(s0)
    80002394:	00000493          	li	s1,0
    80002398:	22050063          	beqz	a0,800025b8 <__printf+0x2a0>
    8000239c:	00002a37          	lui	s4,0x2
    800023a0:	00018ab7          	lui	s5,0x18
    800023a4:	000f4b37          	lui	s6,0xf4
    800023a8:	00989bb7          	lui	s7,0x989
    800023ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800023b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800023b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800023b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800023bc:	00148c9b          	addiw	s9,s1,1
    800023c0:	02500793          	li	a5,37
    800023c4:	01998933          	add	s2,s3,s9
    800023c8:	38f51263          	bne	a0,a5,8000274c <__printf+0x434>
    800023cc:	00094783          	lbu	a5,0(s2)
    800023d0:	00078c9b          	sext.w	s9,a5
    800023d4:	1e078263          	beqz	a5,800025b8 <__printf+0x2a0>
    800023d8:	0024849b          	addiw	s1,s1,2
    800023dc:	07000713          	li	a4,112
    800023e0:	00998933          	add	s2,s3,s1
    800023e4:	38e78a63          	beq	a5,a4,80002778 <__printf+0x460>
    800023e8:	20f76863          	bltu	a4,a5,800025f8 <__printf+0x2e0>
    800023ec:	42a78863          	beq	a5,a0,8000281c <__printf+0x504>
    800023f0:	06400713          	li	a4,100
    800023f4:	40e79663          	bne	a5,a4,80002800 <__printf+0x4e8>
    800023f8:	f7843783          	ld	a5,-136(s0)
    800023fc:	0007a603          	lw	a2,0(a5)
    80002400:	00878793          	addi	a5,a5,8
    80002404:	f6f43c23          	sd	a5,-136(s0)
    80002408:	42064a63          	bltz	a2,8000283c <__printf+0x524>
    8000240c:	00a00713          	li	a4,10
    80002410:	02e677bb          	remuw	a5,a2,a4
    80002414:	00002d97          	auipc	s11,0x2
    80002418:	d9cd8d93          	addi	s11,s11,-612 # 800041b0 <digits>
    8000241c:	00900593          	li	a1,9
    80002420:	0006051b          	sext.w	a0,a2
    80002424:	00000c93          	li	s9,0
    80002428:	02079793          	slli	a5,a5,0x20
    8000242c:	0207d793          	srli	a5,a5,0x20
    80002430:	00fd87b3          	add	a5,s11,a5
    80002434:	0007c783          	lbu	a5,0(a5)
    80002438:	02e656bb          	divuw	a3,a2,a4
    8000243c:	f8f40023          	sb	a5,-128(s0)
    80002440:	14c5d863          	bge	a1,a2,80002590 <__printf+0x278>
    80002444:	06300593          	li	a1,99
    80002448:	00100c93          	li	s9,1
    8000244c:	02e6f7bb          	remuw	a5,a3,a4
    80002450:	02079793          	slli	a5,a5,0x20
    80002454:	0207d793          	srli	a5,a5,0x20
    80002458:	00fd87b3          	add	a5,s11,a5
    8000245c:	0007c783          	lbu	a5,0(a5)
    80002460:	02e6d73b          	divuw	a4,a3,a4
    80002464:	f8f400a3          	sb	a5,-127(s0)
    80002468:	12a5f463          	bgeu	a1,a0,80002590 <__printf+0x278>
    8000246c:	00a00693          	li	a3,10
    80002470:	00900593          	li	a1,9
    80002474:	02d777bb          	remuw	a5,a4,a3
    80002478:	02079793          	slli	a5,a5,0x20
    8000247c:	0207d793          	srli	a5,a5,0x20
    80002480:	00fd87b3          	add	a5,s11,a5
    80002484:	0007c503          	lbu	a0,0(a5)
    80002488:	02d757bb          	divuw	a5,a4,a3
    8000248c:	f8a40123          	sb	a0,-126(s0)
    80002490:	48e5f263          	bgeu	a1,a4,80002914 <__printf+0x5fc>
    80002494:	06300513          	li	a0,99
    80002498:	02d7f5bb          	remuw	a1,a5,a3
    8000249c:	02059593          	slli	a1,a1,0x20
    800024a0:	0205d593          	srli	a1,a1,0x20
    800024a4:	00bd85b3          	add	a1,s11,a1
    800024a8:	0005c583          	lbu	a1,0(a1)
    800024ac:	02d7d7bb          	divuw	a5,a5,a3
    800024b0:	f8b401a3          	sb	a1,-125(s0)
    800024b4:	48e57263          	bgeu	a0,a4,80002938 <__printf+0x620>
    800024b8:	3e700513          	li	a0,999
    800024bc:	02d7f5bb          	remuw	a1,a5,a3
    800024c0:	02059593          	slli	a1,a1,0x20
    800024c4:	0205d593          	srli	a1,a1,0x20
    800024c8:	00bd85b3          	add	a1,s11,a1
    800024cc:	0005c583          	lbu	a1,0(a1)
    800024d0:	02d7d7bb          	divuw	a5,a5,a3
    800024d4:	f8b40223          	sb	a1,-124(s0)
    800024d8:	46e57663          	bgeu	a0,a4,80002944 <__printf+0x62c>
    800024dc:	02d7f5bb          	remuw	a1,a5,a3
    800024e0:	02059593          	slli	a1,a1,0x20
    800024e4:	0205d593          	srli	a1,a1,0x20
    800024e8:	00bd85b3          	add	a1,s11,a1
    800024ec:	0005c583          	lbu	a1,0(a1)
    800024f0:	02d7d7bb          	divuw	a5,a5,a3
    800024f4:	f8b402a3          	sb	a1,-123(s0)
    800024f8:	46ea7863          	bgeu	s4,a4,80002968 <__printf+0x650>
    800024fc:	02d7f5bb          	remuw	a1,a5,a3
    80002500:	02059593          	slli	a1,a1,0x20
    80002504:	0205d593          	srli	a1,a1,0x20
    80002508:	00bd85b3          	add	a1,s11,a1
    8000250c:	0005c583          	lbu	a1,0(a1)
    80002510:	02d7d7bb          	divuw	a5,a5,a3
    80002514:	f8b40323          	sb	a1,-122(s0)
    80002518:	3eeaf863          	bgeu	s5,a4,80002908 <__printf+0x5f0>
    8000251c:	02d7f5bb          	remuw	a1,a5,a3
    80002520:	02059593          	slli	a1,a1,0x20
    80002524:	0205d593          	srli	a1,a1,0x20
    80002528:	00bd85b3          	add	a1,s11,a1
    8000252c:	0005c583          	lbu	a1,0(a1)
    80002530:	02d7d7bb          	divuw	a5,a5,a3
    80002534:	f8b403a3          	sb	a1,-121(s0)
    80002538:	42eb7e63          	bgeu	s6,a4,80002974 <__printf+0x65c>
    8000253c:	02d7f5bb          	remuw	a1,a5,a3
    80002540:	02059593          	slli	a1,a1,0x20
    80002544:	0205d593          	srli	a1,a1,0x20
    80002548:	00bd85b3          	add	a1,s11,a1
    8000254c:	0005c583          	lbu	a1,0(a1)
    80002550:	02d7d7bb          	divuw	a5,a5,a3
    80002554:	f8b40423          	sb	a1,-120(s0)
    80002558:	42ebfc63          	bgeu	s7,a4,80002990 <__printf+0x678>
    8000255c:	02079793          	slli	a5,a5,0x20
    80002560:	0207d793          	srli	a5,a5,0x20
    80002564:	00fd8db3          	add	s11,s11,a5
    80002568:	000dc703          	lbu	a4,0(s11)
    8000256c:	00a00793          	li	a5,10
    80002570:	00900c93          	li	s9,9
    80002574:	f8e404a3          	sb	a4,-119(s0)
    80002578:	00065c63          	bgez	a2,80002590 <__printf+0x278>
    8000257c:	f9040713          	addi	a4,s0,-112
    80002580:	00f70733          	add	a4,a4,a5
    80002584:	02d00693          	li	a3,45
    80002588:	fed70823          	sb	a3,-16(a4)
    8000258c:	00078c93          	mv	s9,a5
    80002590:	f8040793          	addi	a5,s0,-128
    80002594:	01978cb3          	add	s9,a5,s9
    80002598:	f7f40d13          	addi	s10,s0,-129
    8000259c:	000cc503          	lbu	a0,0(s9)
    800025a0:	fffc8c93          	addi	s9,s9,-1
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	b90080e7          	jalr	-1136(ra) # 80002134 <consputc>
    800025ac:	ffac98e3          	bne	s9,s10,8000259c <__printf+0x284>
    800025b0:	00094503          	lbu	a0,0(s2)
    800025b4:	e00514e3          	bnez	a0,800023bc <__printf+0xa4>
    800025b8:	1a0c1663          	bnez	s8,80002764 <__printf+0x44c>
    800025bc:	08813083          	ld	ra,136(sp)
    800025c0:	08013403          	ld	s0,128(sp)
    800025c4:	07813483          	ld	s1,120(sp)
    800025c8:	07013903          	ld	s2,112(sp)
    800025cc:	06813983          	ld	s3,104(sp)
    800025d0:	06013a03          	ld	s4,96(sp)
    800025d4:	05813a83          	ld	s5,88(sp)
    800025d8:	05013b03          	ld	s6,80(sp)
    800025dc:	04813b83          	ld	s7,72(sp)
    800025e0:	04013c03          	ld	s8,64(sp)
    800025e4:	03813c83          	ld	s9,56(sp)
    800025e8:	03013d03          	ld	s10,48(sp)
    800025ec:	02813d83          	ld	s11,40(sp)
    800025f0:	0d010113          	addi	sp,sp,208
    800025f4:	00008067          	ret
    800025f8:	07300713          	li	a4,115
    800025fc:	1ce78a63          	beq	a5,a4,800027d0 <__printf+0x4b8>
    80002600:	07800713          	li	a4,120
    80002604:	1ee79e63          	bne	a5,a4,80002800 <__printf+0x4e8>
    80002608:	f7843783          	ld	a5,-136(s0)
    8000260c:	0007a703          	lw	a4,0(a5)
    80002610:	00878793          	addi	a5,a5,8
    80002614:	f6f43c23          	sd	a5,-136(s0)
    80002618:	28074263          	bltz	a4,8000289c <__printf+0x584>
    8000261c:	00002d97          	auipc	s11,0x2
    80002620:	b94d8d93          	addi	s11,s11,-1132 # 800041b0 <digits>
    80002624:	00f77793          	andi	a5,a4,15
    80002628:	00fd87b3          	add	a5,s11,a5
    8000262c:	0007c683          	lbu	a3,0(a5)
    80002630:	00f00613          	li	a2,15
    80002634:	0007079b          	sext.w	a5,a4
    80002638:	f8d40023          	sb	a3,-128(s0)
    8000263c:	0047559b          	srliw	a1,a4,0x4
    80002640:	0047569b          	srliw	a3,a4,0x4
    80002644:	00000c93          	li	s9,0
    80002648:	0ee65063          	bge	a2,a4,80002728 <__printf+0x410>
    8000264c:	00f6f693          	andi	a3,a3,15
    80002650:	00dd86b3          	add	a3,s11,a3
    80002654:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002658:	0087d79b          	srliw	a5,a5,0x8
    8000265c:	00100c93          	li	s9,1
    80002660:	f8d400a3          	sb	a3,-127(s0)
    80002664:	0cb67263          	bgeu	a2,a1,80002728 <__printf+0x410>
    80002668:	00f7f693          	andi	a3,a5,15
    8000266c:	00dd86b3          	add	a3,s11,a3
    80002670:	0006c583          	lbu	a1,0(a3)
    80002674:	00f00613          	li	a2,15
    80002678:	0047d69b          	srliw	a3,a5,0x4
    8000267c:	f8b40123          	sb	a1,-126(s0)
    80002680:	0047d593          	srli	a1,a5,0x4
    80002684:	28f67e63          	bgeu	a2,a5,80002920 <__printf+0x608>
    80002688:	00f6f693          	andi	a3,a3,15
    8000268c:	00dd86b3          	add	a3,s11,a3
    80002690:	0006c503          	lbu	a0,0(a3)
    80002694:	0087d813          	srli	a6,a5,0x8
    80002698:	0087d69b          	srliw	a3,a5,0x8
    8000269c:	f8a401a3          	sb	a0,-125(s0)
    800026a0:	28b67663          	bgeu	a2,a1,8000292c <__printf+0x614>
    800026a4:	00f6f693          	andi	a3,a3,15
    800026a8:	00dd86b3          	add	a3,s11,a3
    800026ac:	0006c583          	lbu	a1,0(a3)
    800026b0:	00c7d513          	srli	a0,a5,0xc
    800026b4:	00c7d69b          	srliw	a3,a5,0xc
    800026b8:	f8b40223          	sb	a1,-124(s0)
    800026bc:	29067a63          	bgeu	a2,a6,80002950 <__printf+0x638>
    800026c0:	00f6f693          	andi	a3,a3,15
    800026c4:	00dd86b3          	add	a3,s11,a3
    800026c8:	0006c583          	lbu	a1,0(a3)
    800026cc:	0107d813          	srli	a6,a5,0x10
    800026d0:	0107d69b          	srliw	a3,a5,0x10
    800026d4:	f8b402a3          	sb	a1,-123(s0)
    800026d8:	28a67263          	bgeu	a2,a0,8000295c <__printf+0x644>
    800026dc:	00f6f693          	andi	a3,a3,15
    800026e0:	00dd86b3          	add	a3,s11,a3
    800026e4:	0006c683          	lbu	a3,0(a3)
    800026e8:	0147d79b          	srliw	a5,a5,0x14
    800026ec:	f8d40323          	sb	a3,-122(s0)
    800026f0:	21067663          	bgeu	a2,a6,800028fc <__printf+0x5e4>
    800026f4:	02079793          	slli	a5,a5,0x20
    800026f8:	0207d793          	srli	a5,a5,0x20
    800026fc:	00fd8db3          	add	s11,s11,a5
    80002700:	000dc683          	lbu	a3,0(s11)
    80002704:	00800793          	li	a5,8
    80002708:	00700c93          	li	s9,7
    8000270c:	f8d403a3          	sb	a3,-121(s0)
    80002710:	00075c63          	bgez	a4,80002728 <__printf+0x410>
    80002714:	f9040713          	addi	a4,s0,-112
    80002718:	00f70733          	add	a4,a4,a5
    8000271c:	02d00693          	li	a3,45
    80002720:	fed70823          	sb	a3,-16(a4)
    80002724:	00078c93          	mv	s9,a5
    80002728:	f8040793          	addi	a5,s0,-128
    8000272c:	01978cb3          	add	s9,a5,s9
    80002730:	f7f40d13          	addi	s10,s0,-129
    80002734:	000cc503          	lbu	a0,0(s9)
    80002738:	fffc8c93          	addi	s9,s9,-1
    8000273c:	00000097          	auipc	ra,0x0
    80002740:	9f8080e7          	jalr	-1544(ra) # 80002134 <consputc>
    80002744:	ff9d18e3          	bne	s10,s9,80002734 <__printf+0x41c>
    80002748:	0100006f          	j	80002758 <__printf+0x440>
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	9e8080e7          	jalr	-1560(ra) # 80002134 <consputc>
    80002754:	000c8493          	mv	s1,s9
    80002758:	00094503          	lbu	a0,0(s2)
    8000275c:	c60510e3          	bnez	a0,800023bc <__printf+0xa4>
    80002760:	e40c0ee3          	beqz	s8,800025bc <__printf+0x2a4>
    80002764:	00003517          	auipc	a0,0x3
    80002768:	0dc50513          	addi	a0,a0,220 # 80005840 <pr>
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	94c080e7          	jalr	-1716(ra) # 800030b8 <release>
    80002774:	e49ff06f          	j	800025bc <__printf+0x2a4>
    80002778:	f7843783          	ld	a5,-136(s0)
    8000277c:	03000513          	li	a0,48
    80002780:	01000d13          	li	s10,16
    80002784:	00878713          	addi	a4,a5,8
    80002788:	0007bc83          	ld	s9,0(a5)
    8000278c:	f6e43c23          	sd	a4,-136(s0)
    80002790:	00000097          	auipc	ra,0x0
    80002794:	9a4080e7          	jalr	-1628(ra) # 80002134 <consputc>
    80002798:	07800513          	li	a0,120
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	998080e7          	jalr	-1640(ra) # 80002134 <consputc>
    800027a4:	00002d97          	auipc	s11,0x2
    800027a8:	a0cd8d93          	addi	s11,s11,-1524 # 800041b0 <digits>
    800027ac:	03ccd793          	srli	a5,s9,0x3c
    800027b0:	00fd87b3          	add	a5,s11,a5
    800027b4:	0007c503          	lbu	a0,0(a5)
    800027b8:	fffd0d1b          	addiw	s10,s10,-1
    800027bc:	004c9c93          	slli	s9,s9,0x4
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	974080e7          	jalr	-1676(ra) # 80002134 <consputc>
    800027c8:	fe0d12e3          	bnez	s10,800027ac <__printf+0x494>
    800027cc:	f8dff06f          	j	80002758 <__printf+0x440>
    800027d0:	f7843783          	ld	a5,-136(s0)
    800027d4:	0007bc83          	ld	s9,0(a5)
    800027d8:	00878793          	addi	a5,a5,8
    800027dc:	f6f43c23          	sd	a5,-136(s0)
    800027e0:	000c9a63          	bnez	s9,800027f4 <__printf+0x4dc>
    800027e4:	1080006f          	j	800028ec <__printf+0x5d4>
    800027e8:	001c8c93          	addi	s9,s9,1
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	948080e7          	jalr	-1720(ra) # 80002134 <consputc>
    800027f4:	000cc503          	lbu	a0,0(s9)
    800027f8:	fe0518e3          	bnez	a0,800027e8 <__printf+0x4d0>
    800027fc:	f5dff06f          	j	80002758 <__printf+0x440>
    80002800:	02500513          	li	a0,37
    80002804:	00000097          	auipc	ra,0x0
    80002808:	930080e7          	jalr	-1744(ra) # 80002134 <consputc>
    8000280c:	000c8513          	mv	a0,s9
    80002810:	00000097          	auipc	ra,0x0
    80002814:	924080e7          	jalr	-1756(ra) # 80002134 <consputc>
    80002818:	f41ff06f          	j	80002758 <__printf+0x440>
    8000281c:	02500513          	li	a0,37
    80002820:	00000097          	auipc	ra,0x0
    80002824:	914080e7          	jalr	-1772(ra) # 80002134 <consputc>
    80002828:	f31ff06f          	j	80002758 <__printf+0x440>
    8000282c:	00030513          	mv	a0,t1
    80002830:	00000097          	auipc	ra,0x0
    80002834:	7bc080e7          	jalr	1980(ra) # 80002fec <acquire>
    80002838:	b4dff06f          	j	80002384 <__printf+0x6c>
    8000283c:	40c0053b          	negw	a0,a2
    80002840:	00a00713          	li	a4,10
    80002844:	02e576bb          	remuw	a3,a0,a4
    80002848:	00002d97          	auipc	s11,0x2
    8000284c:	968d8d93          	addi	s11,s11,-1688 # 800041b0 <digits>
    80002850:	ff700593          	li	a1,-9
    80002854:	02069693          	slli	a3,a3,0x20
    80002858:	0206d693          	srli	a3,a3,0x20
    8000285c:	00dd86b3          	add	a3,s11,a3
    80002860:	0006c683          	lbu	a3,0(a3)
    80002864:	02e557bb          	divuw	a5,a0,a4
    80002868:	f8d40023          	sb	a3,-128(s0)
    8000286c:	10b65e63          	bge	a2,a1,80002988 <__printf+0x670>
    80002870:	06300593          	li	a1,99
    80002874:	02e7f6bb          	remuw	a3,a5,a4
    80002878:	02069693          	slli	a3,a3,0x20
    8000287c:	0206d693          	srli	a3,a3,0x20
    80002880:	00dd86b3          	add	a3,s11,a3
    80002884:	0006c683          	lbu	a3,0(a3)
    80002888:	02e7d73b          	divuw	a4,a5,a4
    8000288c:	00200793          	li	a5,2
    80002890:	f8d400a3          	sb	a3,-127(s0)
    80002894:	bca5ece3          	bltu	a1,a0,8000246c <__printf+0x154>
    80002898:	ce5ff06f          	j	8000257c <__printf+0x264>
    8000289c:	40e007bb          	negw	a5,a4
    800028a0:	00002d97          	auipc	s11,0x2
    800028a4:	910d8d93          	addi	s11,s11,-1776 # 800041b0 <digits>
    800028a8:	00f7f693          	andi	a3,a5,15
    800028ac:	00dd86b3          	add	a3,s11,a3
    800028b0:	0006c583          	lbu	a1,0(a3)
    800028b4:	ff100613          	li	a2,-15
    800028b8:	0047d69b          	srliw	a3,a5,0x4
    800028bc:	f8b40023          	sb	a1,-128(s0)
    800028c0:	0047d59b          	srliw	a1,a5,0x4
    800028c4:	0ac75e63          	bge	a4,a2,80002980 <__printf+0x668>
    800028c8:	00f6f693          	andi	a3,a3,15
    800028cc:	00dd86b3          	add	a3,s11,a3
    800028d0:	0006c603          	lbu	a2,0(a3)
    800028d4:	00f00693          	li	a3,15
    800028d8:	0087d79b          	srliw	a5,a5,0x8
    800028dc:	f8c400a3          	sb	a2,-127(s0)
    800028e0:	d8b6e4e3          	bltu	a3,a1,80002668 <__printf+0x350>
    800028e4:	00200793          	li	a5,2
    800028e8:	e2dff06f          	j	80002714 <__printf+0x3fc>
    800028ec:	00002c97          	auipc	s9,0x2
    800028f0:	8a4c8c93          	addi	s9,s9,-1884 # 80004190 <_ZZ12printIntegermE6digits+0x148>
    800028f4:	02800513          	li	a0,40
    800028f8:	ef1ff06f          	j	800027e8 <__printf+0x4d0>
    800028fc:	00700793          	li	a5,7
    80002900:	00600c93          	li	s9,6
    80002904:	e0dff06f          	j	80002710 <__printf+0x3f8>
    80002908:	00700793          	li	a5,7
    8000290c:	00600c93          	li	s9,6
    80002910:	c69ff06f          	j	80002578 <__printf+0x260>
    80002914:	00300793          	li	a5,3
    80002918:	00200c93          	li	s9,2
    8000291c:	c5dff06f          	j	80002578 <__printf+0x260>
    80002920:	00300793          	li	a5,3
    80002924:	00200c93          	li	s9,2
    80002928:	de9ff06f          	j	80002710 <__printf+0x3f8>
    8000292c:	00400793          	li	a5,4
    80002930:	00300c93          	li	s9,3
    80002934:	dddff06f          	j	80002710 <__printf+0x3f8>
    80002938:	00400793          	li	a5,4
    8000293c:	00300c93          	li	s9,3
    80002940:	c39ff06f          	j	80002578 <__printf+0x260>
    80002944:	00500793          	li	a5,5
    80002948:	00400c93          	li	s9,4
    8000294c:	c2dff06f          	j	80002578 <__printf+0x260>
    80002950:	00500793          	li	a5,5
    80002954:	00400c93          	li	s9,4
    80002958:	db9ff06f          	j	80002710 <__printf+0x3f8>
    8000295c:	00600793          	li	a5,6
    80002960:	00500c93          	li	s9,5
    80002964:	dadff06f          	j	80002710 <__printf+0x3f8>
    80002968:	00600793          	li	a5,6
    8000296c:	00500c93          	li	s9,5
    80002970:	c09ff06f          	j	80002578 <__printf+0x260>
    80002974:	00800793          	li	a5,8
    80002978:	00700c93          	li	s9,7
    8000297c:	bfdff06f          	j	80002578 <__printf+0x260>
    80002980:	00100793          	li	a5,1
    80002984:	d91ff06f          	j	80002714 <__printf+0x3fc>
    80002988:	00100793          	li	a5,1
    8000298c:	bf1ff06f          	j	8000257c <__printf+0x264>
    80002990:	00900793          	li	a5,9
    80002994:	00800c93          	li	s9,8
    80002998:	be1ff06f          	j	80002578 <__printf+0x260>
    8000299c:	00001517          	auipc	a0,0x1
    800029a0:	7fc50513          	addi	a0,a0,2044 # 80004198 <_ZZ12printIntegermE6digits+0x150>
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	918080e7          	jalr	-1768(ra) # 800022bc <panic>

00000000800029ac <printfinit>:
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00813823          	sd	s0,16(sp)
    800029b4:	00913423          	sd	s1,8(sp)
    800029b8:	00113c23          	sd	ra,24(sp)
    800029bc:	02010413          	addi	s0,sp,32
    800029c0:	00003497          	auipc	s1,0x3
    800029c4:	e8048493          	addi	s1,s1,-384 # 80005840 <pr>
    800029c8:	00048513          	mv	a0,s1
    800029cc:	00001597          	auipc	a1,0x1
    800029d0:	7dc58593          	addi	a1,a1,2012 # 800041a8 <_ZZ12printIntegermE6digits+0x160>
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	5f4080e7          	jalr	1524(ra) # 80002fc8 <initlock>
    800029dc:	01813083          	ld	ra,24(sp)
    800029e0:	01013403          	ld	s0,16(sp)
    800029e4:	0004ac23          	sw	zero,24(s1)
    800029e8:	00813483          	ld	s1,8(sp)
    800029ec:	02010113          	addi	sp,sp,32
    800029f0:	00008067          	ret

00000000800029f4 <uartinit>:
    800029f4:	ff010113          	addi	sp,sp,-16
    800029f8:	00813423          	sd	s0,8(sp)
    800029fc:	01010413          	addi	s0,sp,16
    80002a00:	100007b7          	lui	a5,0x10000
    80002a04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a08:	f8000713          	li	a4,-128
    80002a0c:	00e781a3          	sb	a4,3(a5)
    80002a10:	00300713          	li	a4,3
    80002a14:	00e78023          	sb	a4,0(a5)
    80002a18:	000780a3          	sb	zero,1(a5)
    80002a1c:	00e781a3          	sb	a4,3(a5)
    80002a20:	00700693          	li	a3,7
    80002a24:	00d78123          	sb	a3,2(a5)
    80002a28:	00e780a3          	sb	a4,1(a5)
    80002a2c:	00813403          	ld	s0,8(sp)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret

0000000080002a38 <uartputc>:
    80002a38:	00002797          	auipc	a5,0x2
    80002a3c:	bb07a783          	lw	a5,-1104(a5) # 800045e8 <panicked>
    80002a40:	00078463          	beqz	a5,80002a48 <uartputc+0x10>
    80002a44:	0000006f          	j	80002a44 <uartputc+0xc>
    80002a48:	fd010113          	addi	sp,sp,-48
    80002a4c:	02813023          	sd	s0,32(sp)
    80002a50:	00913c23          	sd	s1,24(sp)
    80002a54:	01213823          	sd	s2,16(sp)
    80002a58:	01313423          	sd	s3,8(sp)
    80002a5c:	02113423          	sd	ra,40(sp)
    80002a60:	03010413          	addi	s0,sp,48
    80002a64:	00002917          	auipc	s2,0x2
    80002a68:	b8c90913          	addi	s2,s2,-1140 # 800045f0 <uart_tx_r>
    80002a6c:	00093783          	ld	a5,0(s2)
    80002a70:	00002497          	auipc	s1,0x2
    80002a74:	b8848493          	addi	s1,s1,-1144 # 800045f8 <uart_tx_w>
    80002a78:	0004b703          	ld	a4,0(s1)
    80002a7c:	02078693          	addi	a3,a5,32
    80002a80:	00050993          	mv	s3,a0
    80002a84:	02e69c63          	bne	a3,a4,80002abc <uartputc+0x84>
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	834080e7          	jalr	-1996(ra) # 800032bc <push_on>
    80002a90:	00093783          	ld	a5,0(s2)
    80002a94:	0004b703          	ld	a4,0(s1)
    80002a98:	02078793          	addi	a5,a5,32
    80002a9c:	00e79463          	bne	a5,a4,80002aa4 <uartputc+0x6c>
    80002aa0:	0000006f          	j	80002aa0 <uartputc+0x68>
    80002aa4:	00001097          	auipc	ra,0x1
    80002aa8:	88c080e7          	jalr	-1908(ra) # 80003330 <pop_on>
    80002aac:	00093783          	ld	a5,0(s2)
    80002ab0:	0004b703          	ld	a4,0(s1)
    80002ab4:	02078693          	addi	a3,a5,32
    80002ab8:	fce688e3          	beq	a3,a4,80002a88 <uartputc+0x50>
    80002abc:	01f77693          	andi	a3,a4,31
    80002ac0:	00003597          	auipc	a1,0x3
    80002ac4:	da058593          	addi	a1,a1,-608 # 80005860 <uart_tx_buf>
    80002ac8:	00d586b3          	add	a3,a1,a3
    80002acc:	00170713          	addi	a4,a4,1
    80002ad0:	01368023          	sb	s3,0(a3)
    80002ad4:	00e4b023          	sd	a4,0(s1)
    80002ad8:	10000637          	lui	a2,0x10000
    80002adc:	02f71063          	bne	a4,a5,80002afc <uartputc+0xc4>
    80002ae0:	0340006f          	j	80002b14 <uartputc+0xdc>
    80002ae4:	00074703          	lbu	a4,0(a4)
    80002ae8:	00f93023          	sd	a5,0(s2)
    80002aec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002af0:	00093783          	ld	a5,0(s2)
    80002af4:	0004b703          	ld	a4,0(s1)
    80002af8:	00f70e63          	beq	a4,a5,80002b14 <uartputc+0xdc>
    80002afc:	00564683          	lbu	a3,5(a2)
    80002b00:	01f7f713          	andi	a4,a5,31
    80002b04:	00e58733          	add	a4,a1,a4
    80002b08:	0206f693          	andi	a3,a3,32
    80002b0c:	00178793          	addi	a5,a5,1
    80002b10:	fc069ae3          	bnez	a3,80002ae4 <uartputc+0xac>
    80002b14:	02813083          	ld	ra,40(sp)
    80002b18:	02013403          	ld	s0,32(sp)
    80002b1c:	01813483          	ld	s1,24(sp)
    80002b20:	01013903          	ld	s2,16(sp)
    80002b24:	00813983          	ld	s3,8(sp)
    80002b28:	03010113          	addi	sp,sp,48
    80002b2c:	00008067          	ret

0000000080002b30 <uartputc_sync>:
    80002b30:	ff010113          	addi	sp,sp,-16
    80002b34:	00813423          	sd	s0,8(sp)
    80002b38:	01010413          	addi	s0,sp,16
    80002b3c:	00002717          	auipc	a4,0x2
    80002b40:	aac72703          	lw	a4,-1364(a4) # 800045e8 <panicked>
    80002b44:	02071663          	bnez	a4,80002b70 <uartputc_sync+0x40>
    80002b48:	00050793          	mv	a5,a0
    80002b4c:	100006b7          	lui	a3,0x10000
    80002b50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002b54:	02077713          	andi	a4,a4,32
    80002b58:	fe070ce3          	beqz	a4,80002b50 <uartputc_sync+0x20>
    80002b5c:	0ff7f793          	andi	a5,a5,255
    80002b60:	00f68023          	sb	a5,0(a3)
    80002b64:	00813403          	ld	s0,8(sp)
    80002b68:	01010113          	addi	sp,sp,16
    80002b6c:	00008067          	ret
    80002b70:	0000006f          	j	80002b70 <uartputc_sync+0x40>

0000000080002b74 <uartstart>:
    80002b74:	ff010113          	addi	sp,sp,-16
    80002b78:	00813423          	sd	s0,8(sp)
    80002b7c:	01010413          	addi	s0,sp,16
    80002b80:	00002617          	auipc	a2,0x2
    80002b84:	a7060613          	addi	a2,a2,-1424 # 800045f0 <uart_tx_r>
    80002b88:	00002517          	auipc	a0,0x2
    80002b8c:	a7050513          	addi	a0,a0,-1424 # 800045f8 <uart_tx_w>
    80002b90:	00063783          	ld	a5,0(a2)
    80002b94:	00053703          	ld	a4,0(a0)
    80002b98:	04f70263          	beq	a4,a5,80002bdc <uartstart+0x68>
    80002b9c:	100005b7          	lui	a1,0x10000
    80002ba0:	00003817          	auipc	a6,0x3
    80002ba4:	cc080813          	addi	a6,a6,-832 # 80005860 <uart_tx_buf>
    80002ba8:	01c0006f          	j	80002bc4 <uartstart+0x50>
    80002bac:	0006c703          	lbu	a4,0(a3)
    80002bb0:	00f63023          	sd	a5,0(a2)
    80002bb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bb8:	00063783          	ld	a5,0(a2)
    80002bbc:	00053703          	ld	a4,0(a0)
    80002bc0:	00f70e63          	beq	a4,a5,80002bdc <uartstart+0x68>
    80002bc4:	01f7f713          	andi	a4,a5,31
    80002bc8:	00e806b3          	add	a3,a6,a4
    80002bcc:	0055c703          	lbu	a4,5(a1)
    80002bd0:	00178793          	addi	a5,a5,1
    80002bd4:	02077713          	andi	a4,a4,32
    80002bd8:	fc071ae3          	bnez	a4,80002bac <uartstart+0x38>
    80002bdc:	00813403          	ld	s0,8(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <uartgetc>:
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00813423          	sd	s0,8(sp)
    80002bf0:	01010413          	addi	s0,sp,16
    80002bf4:	10000737          	lui	a4,0x10000
    80002bf8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002bfc:	0017f793          	andi	a5,a5,1
    80002c00:	00078c63          	beqz	a5,80002c18 <uartgetc+0x30>
    80002c04:	00074503          	lbu	a0,0(a4)
    80002c08:	0ff57513          	andi	a0,a0,255
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret
    80002c18:	fff00513          	li	a0,-1
    80002c1c:	ff1ff06f          	j	80002c0c <uartgetc+0x24>

0000000080002c20 <uartintr>:
    80002c20:	100007b7          	lui	a5,0x10000
    80002c24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c28:	0017f793          	andi	a5,a5,1
    80002c2c:	0a078463          	beqz	a5,80002cd4 <uartintr+0xb4>
    80002c30:	fe010113          	addi	sp,sp,-32
    80002c34:	00813823          	sd	s0,16(sp)
    80002c38:	00913423          	sd	s1,8(sp)
    80002c3c:	00113c23          	sd	ra,24(sp)
    80002c40:	02010413          	addi	s0,sp,32
    80002c44:	100004b7          	lui	s1,0x10000
    80002c48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c4c:	0ff57513          	andi	a0,a0,255
    80002c50:	fffff097          	auipc	ra,0xfffff
    80002c54:	534080e7          	jalr	1332(ra) # 80002184 <consoleintr>
    80002c58:	0054c783          	lbu	a5,5(s1)
    80002c5c:	0017f793          	andi	a5,a5,1
    80002c60:	fe0794e3          	bnez	a5,80002c48 <uartintr+0x28>
    80002c64:	00002617          	auipc	a2,0x2
    80002c68:	98c60613          	addi	a2,a2,-1652 # 800045f0 <uart_tx_r>
    80002c6c:	00002517          	auipc	a0,0x2
    80002c70:	98c50513          	addi	a0,a0,-1652 # 800045f8 <uart_tx_w>
    80002c74:	00063783          	ld	a5,0(a2)
    80002c78:	00053703          	ld	a4,0(a0)
    80002c7c:	04f70263          	beq	a4,a5,80002cc0 <uartintr+0xa0>
    80002c80:	100005b7          	lui	a1,0x10000
    80002c84:	00003817          	auipc	a6,0x3
    80002c88:	bdc80813          	addi	a6,a6,-1060 # 80005860 <uart_tx_buf>
    80002c8c:	01c0006f          	j	80002ca8 <uartintr+0x88>
    80002c90:	0006c703          	lbu	a4,0(a3)
    80002c94:	00f63023          	sd	a5,0(a2)
    80002c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c9c:	00063783          	ld	a5,0(a2)
    80002ca0:	00053703          	ld	a4,0(a0)
    80002ca4:	00f70e63          	beq	a4,a5,80002cc0 <uartintr+0xa0>
    80002ca8:	01f7f713          	andi	a4,a5,31
    80002cac:	00e806b3          	add	a3,a6,a4
    80002cb0:	0055c703          	lbu	a4,5(a1)
    80002cb4:	00178793          	addi	a5,a5,1
    80002cb8:	02077713          	andi	a4,a4,32
    80002cbc:	fc071ae3          	bnez	a4,80002c90 <uartintr+0x70>
    80002cc0:	01813083          	ld	ra,24(sp)
    80002cc4:	01013403          	ld	s0,16(sp)
    80002cc8:	00813483          	ld	s1,8(sp)
    80002ccc:	02010113          	addi	sp,sp,32
    80002cd0:	00008067          	ret
    80002cd4:	00002617          	auipc	a2,0x2
    80002cd8:	91c60613          	addi	a2,a2,-1764 # 800045f0 <uart_tx_r>
    80002cdc:	00002517          	auipc	a0,0x2
    80002ce0:	91c50513          	addi	a0,a0,-1764 # 800045f8 <uart_tx_w>
    80002ce4:	00063783          	ld	a5,0(a2)
    80002ce8:	00053703          	ld	a4,0(a0)
    80002cec:	04f70263          	beq	a4,a5,80002d30 <uartintr+0x110>
    80002cf0:	100005b7          	lui	a1,0x10000
    80002cf4:	00003817          	auipc	a6,0x3
    80002cf8:	b6c80813          	addi	a6,a6,-1172 # 80005860 <uart_tx_buf>
    80002cfc:	01c0006f          	j	80002d18 <uartintr+0xf8>
    80002d00:	0006c703          	lbu	a4,0(a3)
    80002d04:	00f63023          	sd	a5,0(a2)
    80002d08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d0c:	00063783          	ld	a5,0(a2)
    80002d10:	00053703          	ld	a4,0(a0)
    80002d14:	02f70063          	beq	a4,a5,80002d34 <uartintr+0x114>
    80002d18:	01f7f713          	andi	a4,a5,31
    80002d1c:	00e806b3          	add	a3,a6,a4
    80002d20:	0055c703          	lbu	a4,5(a1)
    80002d24:	00178793          	addi	a5,a5,1
    80002d28:	02077713          	andi	a4,a4,32
    80002d2c:	fc071ae3          	bnez	a4,80002d00 <uartintr+0xe0>
    80002d30:	00008067          	ret
    80002d34:	00008067          	ret

0000000080002d38 <kinit>:
    80002d38:	fc010113          	addi	sp,sp,-64
    80002d3c:	02913423          	sd	s1,40(sp)
    80002d40:	fffff7b7          	lui	a5,0xfffff
    80002d44:	00004497          	auipc	s1,0x4
    80002d48:	b4b48493          	addi	s1,s1,-1205 # 8000688f <end+0xfff>
    80002d4c:	02813823          	sd	s0,48(sp)
    80002d50:	01313c23          	sd	s3,24(sp)
    80002d54:	00f4f4b3          	and	s1,s1,a5
    80002d58:	02113c23          	sd	ra,56(sp)
    80002d5c:	03213023          	sd	s2,32(sp)
    80002d60:	01413823          	sd	s4,16(sp)
    80002d64:	01513423          	sd	s5,8(sp)
    80002d68:	04010413          	addi	s0,sp,64
    80002d6c:	000017b7          	lui	a5,0x1
    80002d70:	01100993          	li	s3,17
    80002d74:	00f487b3          	add	a5,s1,a5
    80002d78:	01b99993          	slli	s3,s3,0x1b
    80002d7c:	06f9e063          	bltu	s3,a5,80002ddc <kinit+0xa4>
    80002d80:	00003a97          	auipc	s5,0x3
    80002d84:	b10a8a93          	addi	s5,s5,-1264 # 80005890 <end>
    80002d88:	0754ec63          	bltu	s1,s5,80002e00 <kinit+0xc8>
    80002d8c:	0734fa63          	bgeu	s1,s3,80002e00 <kinit+0xc8>
    80002d90:	00088a37          	lui	s4,0x88
    80002d94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002d98:	00002917          	auipc	s2,0x2
    80002d9c:	86890913          	addi	s2,s2,-1944 # 80004600 <kmem>
    80002da0:	00ca1a13          	slli	s4,s4,0xc
    80002da4:	0140006f          	j	80002db8 <kinit+0x80>
    80002da8:	000017b7          	lui	a5,0x1
    80002dac:	00f484b3          	add	s1,s1,a5
    80002db0:	0554e863          	bltu	s1,s5,80002e00 <kinit+0xc8>
    80002db4:	0534f663          	bgeu	s1,s3,80002e00 <kinit+0xc8>
    80002db8:	00001637          	lui	a2,0x1
    80002dbc:	00100593          	li	a1,1
    80002dc0:	00048513          	mv	a0,s1
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	5e4080e7          	jalr	1508(ra) # 800033a8 <__memset>
    80002dcc:	00093783          	ld	a5,0(s2)
    80002dd0:	00f4b023          	sd	a5,0(s1)
    80002dd4:	00993023          	sd	s1,0(s2)
    80002dd8:	fd4498e3          	bne	s1,s4,80002da8 <kinit+0x70>
    80002ddc:	03813083          	ld	ra,56(sp)
    80002de0:	03013403          	ld	s0,48(sp)
    80002de4:	02813483          	ld	s1,40(sp)
    80002de8:	02013903          	ld	s2,32(sp)
    80002dec:	01813983          	ld	s3,24(sp)
    80002df0:	01013a03          	ld	s4,16(sp)
    80002df4:	00813a83          	ld	s5,8(sp)
    80002df8:	04010113          	addi	sp,sp,64
    80002dfc:	00008067          	ret
    80002e00:	00001517          	auipc	a0,0x1
    80002e04:	3c850513          	addi	a0,a0,968 # 800041c8 <digits+0x18>
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	4b4080e7          	jalr	1204(ra) # 800022bc <panic>

0000000080002e10 <freerange>:
    80002e10:	fc010113          	addi	sp,sp,-64
    80002e14:	000017b7          	lui	a5,0x1
    80002e18:	02913423          	sd	s1,40(sp)
    80002e1c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e20:	009504b3          	add	s1,a0,s1
    80002e24:	fffff537          	lui	a0,0xfffff
    80002e28:	02813823          	sd	s0,48(sp)
    80002e2c:	02113c23          	sd	ra,56(sp)
    80002e30:	03213023          	sd	s2,32(sp)
    80002e34:	01313c23          	sd	s3,24(sp)
    80002e38:	01413823          	sd	s4,16(sp)
    80002e3c:	01513423          	sd	s5,8(sp)
    80002e40:	01613023          	sd	s6,0(sp)
    80002e44:	04010413          	addi	s0,sp,64
    80002e48:	00a4f4b3          	and	s1,s1,a0
    80002e4c:	00f487b3          	add	a5,s1,a5
    80002e50:	06f5e463          	bltu	a1,a5,80002eb8 <freerange+0xa8>
    80002e54:	00003a97          	auipc	s5,0x3
    80002e58:	a3ca8a93          	addi	s5,s5,-1476 # 80005890 <end>
    80002e5c:	0954e263          	bltu	s1,s5,80002ee0 <freerange+0xd0>
    80002e60:	01100993          	li	s3,17
    80002e64:	01b99993          	slli	s3,s3,0x1b
    80002e68:	0734fc63          	bgeu	s1,s3,80002ee0 <freerange+0xd0>
    80002e6c:	00058a13          	mv	s4,a1
    80002e70:	00001917          	auipc	s2,0x1
    80002e74:	79090913          	addi	s2,s2,1936 # 80004600 <kmem>
    80002e78:	00002b37          	lui	s6,0x2
    80002e7c:	0140006f          	j	80002e90 <freerange+0x80>
    80002e80:	000017b7          	lui	a5,0x1
    80002e84:	00f484b3          	add	s1,s1,a5
    80002e88:	0554ec63          	bltu	s1,s5,80002ee0 <freerange+0xd0>
    80002e8c:	0534fa63          	bgeu	s1,s3,80002ee0 <freerange+0xd0>
    80002e90:	00001637          	lui	a2,0x1
    80002e94:	00100593          	li	a1,1
    80002e98:	00048513          	mv	a0,s1
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	50c080e7          	jalr	1292(ra) # 800033a8 <__memset>
    80002ea4:	00093703          	ld	a4,0(s2)
    80002ea8:	016487b3          	add	a5,s1,s6
    80002eac:	00e4b023          	sd	a4,0(s1)
    80002eb0:	00993023          	sd	s1,0(s2)
    80002eb4:	fcfa76e3          	bgeu	s4,a5,80002e80 <freerange+0x70>
    80002eb8:	03813083          	ld	ra,56(sp)
    80002ebc:	03013403          	ld	s0,48(sp)
    80002ec0:	02813483          	ld	s1,40(sp)
    80002ec4:	02013903          	ld	s2,32(sp)
    80002ec8:	01813983          	ld	s3,24(sp)
    80002ecc:	01013a03          	ld	s4,16(sp)
    80002ed0:	00813a83          	ld	s5,8(sp)
    80002ed4:	00013b03          	ld	s6,0(sp)
    80002ed8:	04010113          	addi	sp,sp,64
    80002edc:	00008067          	ret
    80002ee0:	00001517          	auipc	a0,0x1
    80002ee4:	2e850513          	addi	a0,a0,744 # 800041c8 <digits+0x18>
    80002ee8:	fffff097          	auipc	ra,0xfffff
    80002eec:	3d4080e7          	jalr	980(ra) # 800022bc <panic>

0000000080002ef0 <kfree>:
    80002ef0:	fe010113          	addi	sp,sp,-32
    80002ef4:	00813823          	sd	s0,16(sp)
    80002ef8:	00113c23          	sd	ra,24(sp)
    80002efc:	00913423          	sd	s1,8(sp)
    80002f00:	02010413          	addi	s0,sp,32
    80002f04:	03451793          	slli	a5,a0,0x34
    80002f08:	04079c63          	bnez	a5,80002f60 <kfree+0x70>
    80002f0c:	00003797          	auipc	a5,0x3
    80002f10:	98478793          	addi	a5,a5,-1660 # 80005890 <end>
    80002f14:	00050493          	mv	s1,a0
    80002f18:	04f56463          	bltu	a0,a5,80002f60 <kfree+0x70>
    80002f1c:	01100793          	li	a5,17
    80002f20:	01b79793          	slli	a5,a5,0x1b
    80002f24:	02f57e63          	bgeu	a0,a5,80002f60 <kfree+0x70>
    80002f28:	00001637          	lui	a2,0x1
    80002f2c:	00100593          	li	a1,1
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	478080e7          	jalr	1144(ra) # 800033a8 <__memset>
    80002f38:	00001797          	auipc	a5,0x1
    80002f3c:	6c878793          	addi	a5,a5,1736 # 80004600 <kmem>
    80002f40:	0007b703          	ld	a4,0(a5)
    80002f44:	01813083          	ld	ra,24(sp)
    80002f48:	01013403          	ld	s0,16(sp)
    80002f4c:	00e4b023          	sd	a4,0(s1)
    80002f50:	0097b023          	sd	s1,0(a5)
    80002f54:	00813483          	ld	s1,8(sp)
    80002f58:	02010113          	addi	sp,sp,32
    80002f5c:	00008067          	ret
    80002f60:	00001517          	auipc	a0,0x1
    80002f64:	26850513          	addi	a0,a0,616 # 800041c8 <digits+0x18>
    80002f68:	fffff097          	auipc	ra,0xfffff
    80002f6c:	354080e7          	jalr	852(ra) # 800022bc <panic>

0000000080002f70 <kalloc>:
    80002f70:	fe010113          	addi	sp,sp,-32
    80002f74:	00813823          	sd	s0,16(sp)
    80002f78:	00913423          	sd	s1,8(sp)
    80002f7c:	00113c23          	sd	ra,24(sp)
    80002f80:	02010413          	addi	s0,sp,32
    80002f84:	00001797          	auipc	a5,0x1
    80002f88:	67c78793          	addi	a5,a5,1660 # 80004600 <kmem>
    80002f8c:	0007b483          	ld	s1,0(a5)
    80002f90:	02048063          	beqz	s1,80002fb0 <kalloc+0x40>
    80002f94:	0004b703          	ld	a4,0(s1)
    80002f98:	00001637          	lui	a2,0x1
    80002f9c:	00500593          	li	a1,5
    80002fa0:	00048513          	mv	a0,s1
    80002fa4:	00e7b023          	sd	a4,0(a5)
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	400080e7          	jalr	1024(ra) # 800033a8 <__memset>
    80002fb0:	01813083          	ld	ra,24(sp)
    80002fb4:	01013403          	ld	s0,16(sp)
    80002fb8:	00048513          	mv	a0,s1
    80002fbc:	00813483          	ld	s1,8(sp)
    80002fc0:	02010113          	addi	sp,sp,32
    80002fc4:	00008067          	ret

0000000080002fc8 <initlock>:
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813423          	sd	s0,8(sp)
    80002fd0:	01010413          	addi	s0,sp,16
    80002fd4:	00813403          	ld	s0,8(sp)
    80002fd8:	00b53423          	sd	a1,8(a0)
    80002fdc:	00052023          	sw	zero,0(a0)
    80002fe0:	00053823          	sd	zero,16(a0)
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00008067          	ret

0000000080002fec <acquire>:
    80002fec:	fe010113          	addi	sp,sp,-32
    80002ff0:	00813823          	sd	s0,16(sp)
    80002ff4:	00913423          	sd	s1,8(sp)
    80002ff8:	00113c23          	sd	ra,24(sp)
    80002ffc:	01213023          	sd	s2,0(sp)
    80003000:	02010413          	addi	s0,sp,32
    80003004:	00050493          	mv	s1,a0
    80003008:	10002973          	csrr	s2,sstatus
    8000300c:	100027f3          	csrr	a5,sstatus
    80003010:	ffd7f793          	andi	a5,a5,-3
    80003014:	10079073          	csrw	sstatus,a5
    80003018:	fffff097          	auipc	ra,0xfffff
    8000301c:	8ec080e7          	jalr	-1812(ra) # 80001904 <mycpu>
    80003020:	07852783          	lw	a5,120(a0)
    80003024:	06078e63          	beqz	a5,800030a0 <acquire+0xb4>
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	8dc080e7          	jalr	-1828(ra) # 80001904 <mycpu>
    80003030:	07852783          	lw	a5,120(a0)
    80003034:	0004a703          	lw	a4,0(s1)
    80003038:	0017879b          	addiw	a5,a5,1
    8000303c:	06f52c23          	sw	a5,120(a0)
    80003040:	04071063          	bnez	a4,80003080 <acquire+0x94>
    80003044:	00100713          	li	a4,1
    80003048:	00070793          	mv	a5,a4
    8000304c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003050:	0007879b          	sext.w	a5,a5
    80003054:	fe079ae3          	bnez	a5,80003048 <acquire+0x5c>
    80003058:	0ff0000f          	fence
    8000305c:	fffff097          	auipc	ra,0xfffff
    80003060:	8a8080e7          	jalr	-1880(ra) # 80001904 <mycpu>
    80003064:	01813083          	ld	ra,24(sp)
    80003068:	01013403          	ld	s0,16(sp)
    8000306c:	00a4b823          	sd	a0,16(s1)
    80003070:	00013903          	ld	s2,0(sp)
    80003074:	00813483          	ld	s1,8(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret
    80003080:	0104b903          	ld	s2,16(s1)
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	880080e7          	jalr	-1920(ra) # 80001904 <mycpu>
    8000308c:	faa91ce3          	bne	s2,a0,80003044 <acquire+0x58>
    80003090:	00001517          	auipc	a0,0x1
    80003094:	14050513          	addi	a0,a0,320 # 800041d0 <digits+0x20>
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	224080e7          	jalr	548(ra) # 800022bc <panic>
    800030a0:	00195913          	srli	s2,s2,0x1
    800030a4:	fffff097          	auipc	ra,0xfffff
    800030a8:	860080e7          	jalr	-1952(ra) # 80001904 <mycpu>
    800030ac:	00197913          	andi	s2,s2,1
    800030b0:	07252e23          	sw	s2,124(a0)
    800030b4:	f75ff06f          	j	80003028 <acquire+0x3c>

00000000800030b8 <release>:
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00813823          	sd	s0,16(sp)
    800030c0:	00113c23          	sd	ra,24(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	01213023          	sd	s2,0(sp)
    800030cc:	02010413          	addi	s0,sp,32
    800030d0:	00052783          	lw	a5,0(a0)
    800030d4:	00079a63          	bnez	a5,800030e8 <release+0x30>
    800030d8:	00001517          	auipc	a0,0x1
    800030dc:	10050513          	addi	a0,a0,256 # 800041d8 <digits+0x28>
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	1dc080e7          	jalr	476(ra) # 800022bc <panic>
    800030e8:	01053903          	ld	s2,16(a0)
    800030ec:	00050493          	mv	s1,a0
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	814080e7          	jalr	-2028(ra) # 80001904 <mycpu>
    800030f8:	fea910e3          	bne	s2,a0,800030d8 <release+0x20>
    800030fc:	0004b823          	sd	zero,16(s1)
    80003100:	0ff0000f          	fence
    80003104:	0f50000f          	fence	iorw,ow
    80003108:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000310c:	ffffe097          	auipc	ra,0xffffe
    80003110:	7f8080e7          	jalr	2040(ra) # 80001904 <mycpu>
    80003114:	100027f3          	csrr	a5,sstatus
    80003118:	0027f793          	andi	a5,a5,2
    8000311c:	04079a63          	bnez	a5,80003170 <release+0xb8>
    80003120:	07852783          	lw	a5,120(a0)
    80003124:	02f05e63          	blez	a5,80003160 <release+0xa8>
    80003128:	fff7871b          	addiw	a4,a5,-1
    8000312c:	06e52c23          	sw	a4,120(a0)
    80003130:	00071c63          	bnez	a4,80003148 <release+0x90>
    80003134:	07c52783          	lw	a5,124(a0)
    80003138:	00078863          	beqz	a5,80003148 <release+0x90>
    8000313c:	100027f3          	csrr	a5,sstatus
    80003140:	0027e793          	ori	a5,a5,2
    80003144:	10079073          	csrw	sstatus,a5
    80003148:	01813083          	ld	ra,24(sp)
    8000314c:	01013403          	ld	s0,16(sp)
    80003150:	00813483          	ld	s1,8(sp)
    80003154:	00013903          	ld	s2,0(sp)
    80003158:	02010113          	addi	sp,sp,32
    8000315c:	00008067          	ret
    80003160:	00001517          	auipc	a0,0x1
    80003164:	09850513          	addi	a0,a0,152 # 800041f8 <digits+0x48>
    80003168:	fffff097          	auipc	ra,0xfffff
    8000316c:	154080e7          	jalr	340(ra) # 800022bc <panic>
    80003170:	00001517          	auipc	a0,0x1
    80003174:	07050513          	addi	a0,a0,112 # 800041e0 <digits+0x30>
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	144080e7          	jalr	324(ra) # 800022bc <panic>

0000000080003180 <holding>:
    80003180:	00052783          	lw	a5,0(a0)
    80003184:	00079663          	bnez	a5,80003190 <holding+0x10>
    80003188:	00000513          	li	a0,0
    8000318c:	00008067          	ret
    80003190:	fe010113          	addi	sp,sp,-32
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00913423          	sd	s1,8(sp)
    8000319c:	00113c23          	sd	ra,24(sp)
    800031a0:	02010413          	addi	s0,sp,32
    800031a4:	01053483          	ld	s1,16(a0)
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	75c080e7          	jalr	1884(ra) # 80001904 <mycpu>
    800031b0:	01813083          	ld	ra,24(sp)
    800031b4:	01013403          	ld	s0,16(sp)
    800031b8:	40a48533          	sub	a0,s1,a0
    800031bc:	00153513          	seqz	a0,a0
    800031c0:	00813483          	ld	s1,8(sp)
    800031c4:	02010113          	addi	sp,sp,32
    800031c8:	00008067          	ret

00000000800031cc <push_off>:
    800031cc:	fe010113          	addi	sp,sp,-32
    800031d0:	00813823          	sd	s0,16(sp)
    800031d4:	00113c23          	sd	ra,24(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	02010413          	addi	s0,sp,32
    800031e0:	100024f3          	csrr	s1,sstatus
    800031e4:	100027f3          	csrr	a5,sstatus
    800031e8:	ffd7f793          	andi	a5,a5,-3
    800031ec:	10079073          	csrw	sstatus,a5
    800031f0:	ffffe097          	auipc	ra,0xffffe
    800031f4:	714080e7          	jalr	1812(ra) # 80001904 <mycpu>
    800031f8:	07852783          	lw	a5,120(a0)
    800031fc:	02078663          	beqz	a5,80003228 <push_off+0x5c>
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	704080e7          	jalr	1796(ra) # 80001904 <mycpu>
    80003208:	07852783          	lw	a5,120(a0)
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	0017879b          	addiw	a5,a5,1
    80003218:	06f52c23          	sw	a5,120(a0)
    8000321c:	00813483          	ld	s1,8(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret
    80003228:	0014d493          	srli	s1,s1,0x1
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	6d8080e7          	jalr	1752(ra) # 80001904 <mycpu>
    80003234:	0014f493          	andi	s1,s1,1
    80003238:	06952e23          	sw	s1,124(a0)
    8000323c:	fc5ff06f          	j	80003200 <push_off+0x34>

0000000080003240 <pop_off>:
    80003240:	ff010113          	addi	sp,sp,-16
    80003244:	00813023          	sd	s0,0(sp)
    80003248:	00113423          	sd	ra,8(sp)
    8000324c:	01010413          	addi	s0,sp,16
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	6b4080e7          	jalr	1716(ra) # 80001904 <mycpu>
    80003258:	100027f3          	csrr	a5,sstatus
    8000325c:	0027f793          	andi	a5,a5,2
    80003260:	04079663          	bnez	a5,800032ac <pop_off+0x6c>
    80003264:	07852783          	lw	a5,120(a0)
    80003268:	02f05a63          	blez	a5,8000329c <pop_off+0x5c>
    8000326c:	fff7871b          	addiw	a4,a5,-1
    80003270:	06e52c23          	sw	a4,120(a0)
    80003274:	00071c63          	bnez	a4,8000328c <pop_off+0x4c>
    80003278:	07c52783          	lw	a5,124(a0)
    8000327c:	00078863          	beqz	a5,8000328c <pop_off+0x4c>
    80003280:	100027f3          	csrr	a5,sstatus
    80003284:	0027e793          	ori	a5,a5,2
    80003288:	10079073          	csrw	sstatus,a5
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret
    8000329c:	00001517          	auipc	a0,0x1
    800032a0:	f5c50513          	addi	a0,a0,-164 # 800041f8 <digits+0x48>
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	018080e7          	jalr	24(ra) # 800022bc <panic>
    800032ac:	00001517          	auipc	a0,0x1
    800032b0:	f3450513          	addi	a0,a0,-204 # 800041e0 <digits+0x30>
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	008080e7          	jalr	8(ra) # 800022bc <panic>

00000000800032bc <push_on>:
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00113c23          	sd	ra,24(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	100024f3          	csrr	s1,sstatus
    800032d4:	100027f3          	csrr	a5,sstatus
    800032d8:	0027e793          	ori	a5,a5,2
    800032dc:	10079073          	csrw	sstatus,a5
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	624080e7          	jalr	1572(ra) # 80001904 <mycpu>
    800032e8:	07852783          	lw	a5,120(a0)
    800032ec:	02078663          	beqz	a5,80003318 <push_on+0x5c>
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	614080e7          	jalr	1556(ra) # 80001904 <mycpu>
    800032f8:	07852783          	lw	a5,120(a0)
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	0017879b          	addiw	a5,a5,1
    80003308:	06f52c23          	sw	a5,120(a0)
    8000330c:	00813483          	ld	s1,8(sp)
    80003310:	02010113          	addi	sp,sp,32
    80003314:	00008067          	ret
    80003318:	0014d493          	srli	s1,s1,0x1
    8000331c:	ffffe097          	auipc	ra,0xffffe
    80003320:	5e8080e7          	jalr	1512(ra) # 80001904 <mycpu>
    80003324:	0014f493          	andi	s1,s1,1
    80003328:	06952e23          	sw	s1,124(a0)
    8000332c:	fc5ff06f          	j	800032f0 <push_on+0x34>

0000000080003330 <pop_on>:
    80003330:	ff010113          	addi	sp,sp,-16
    80003334:	00813023          	sd	s0,0(sp)
    80003338:	00113423          	sd	ra,8(sp)
    8000333c:	01010413          	addi	s0,sp,16
    80003340:	ffffe097          	auipc	ra,0xffffe
    80003344:	5c4080e7          	jalr	1476(ra) # 80001904 <mycpu>
    80003348:	100027f3          	csrr	a5,sstatus
    8000334c:	0027f793          	andi	a5,a5,2
    80003350:	04078463          	beqz	a5,80003398 <pop_on+0x68>
    80003354:	07852783          	lw	a5,120(a0)
    80003358:	02f05863          	blez	a5,80003388 <pop_on+0x58>
    8000335c:	fff7879b          	addiw	a5,a5,-1
    80003360:	06f52c23          	sw	a5,120(a0)
    80003364:	07853783          	ld	a5,120(a0)
    80003368:	00079863          	bnez	a5,80003378 <pop_on+0x48>
    8000336c:	100027f3          	csrr	a5,sstatus
    80003370:	ffd7f793          	andi	a5,a5,-3
    80003374:	10079073          	csrw	sstatus,a5
    80003378:	00813083          	ld	ra,8(sp)
    8000337c:	00013403          	ld	s0,0(sp)
    80003380:	01010113          	addi	sp,sp,16
    80003384:	00008067          	ret
    80003388:	00001517          	auipc	a0,0x1
    8000338c:	e9850513          	addi	a0,a0,-360 # 80004220 <digits+0x70>
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	f2c080e7          	jalr	-212(ra) # 800022bc <panic>
    80003398:	00001517          	auipc	a0,0x1
    8000339c:	e6850513          	addi	a0,a0,-408 # 80004200 <digits+0x50>
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	f1c080e7          	jalr	-228(ra) # 800022bc <panic>

00000000800033a8 <__memset>:
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	1a060e63          	beqz	a2,80003570 <__memset+0x1c8>
    800033b8:	40a007b3          	neg	a5,a0
    800033bc:	0077f793          	andi	a5,a5,7
    800033c0:	00778693          	addi	a3,a5,7
    800033c4:	00b00813          	li	a6,11
    800033c8:	0ff5f593          	andi	a1,a1,255
    800033cc:	fff6071b          	addiw	a4,a2,-1
    800033d0:	1b06e663          	bltu	a3,a6,8000357c <__memset+0x1d4>
    800033d4:	1cd76463          	bltu	a4,a3,8000359c <__memset+0x1f4>
    800033d8:	1a078e63          	beqz	a5,80003594 <__memset+0x1ec>
    800033dc:	00b50023          	sb	a1,0(a0)
    800033e0:	00100713          	li	a4,1
    800033e4:	1ae78463          	beq	a5,a4,8000358c <__memset+0x1e4>
    800033e8:	00b500a3          	sb	a1,1(a0)
    800033ec:	00200713          	li	a4,2
    800033f0:	1ae78a63          	beq	a5,a4,800035a4 <__memset+0x1fc>
    800033f4:	00b50123          	sb	a1,2(a0)
    800033f8:	00300713          	li	a4,3
    800033fc:	18e78463          	beq	a5,a4,80003584 <__memset+0x1dc>
    80003400:	00b501a3          	sb	a1,3(a0)
    80003404:	00400713          	li	a4,4
    80003408:	1ae78263          	beq	a5,a4,800035ac <__memset+0x204>
    8000340c:	00b50223          	sb	a1,4(a0)
    80003410:	00500713          	li	a4,5
    80003414:	1ae78063          	beq	a5,a4,800035b4 <__memset+0x20c>
    80003418:	00b502a3          	sb	a1,5(a0)
    8000341c:	00700713          	li	a4,7
    80003420:	18e79e63          	bne	a5,a4,800035bc <__memset+0x214>
    80003424:	00b50323          	sb	a1,6(a0)
    80003428:	00700e93          	li	t4,7
    8000342c:	00859713          	slli	a4,a1,0x8
    80003430:	00e5e733          	or	a4,a1,a4
    80003434:	01059e13          	slli	t3,a1,0x10
    80003438:	01c76e33          	or	t3,a4,t3
    8000343c:	01859313          	slli	t1,a1,0x18
    80003440:	006e6333          	or	t1,t3,t1
    80003444:	02059893          	slli	a7,a1,0x20
    80003448:	40f60e3b          	subw	t3,a2,a5
    8000344c:	011368b3          	or	a7,t1,a7
    80003450:	02859813          	slli	a6,a1,0x28
    80003454:	0108e833          	or	a6,a7,a6
    80003458:	03059693          	slli	a3,a1,0x30
    8000345c:	003e589b          	srliw	a7,t3,0x3
    80003460:	00d866b3          	or	a3,a6,a3
    80003464:	03859713          	slli	a4,a1,0x38
    80003468:	00389813          	slli	a6,a7,0x3
    8000346c:	00f507b3          	add	a5,a0,a5
    80003470:	00e6e733          	or	a4,a3,a4
    80003474:	000e089b          	sext.w	a7,t3
    80003478:	00f806b3          	add	a3,a6,a5
    8000347c:	00e7b023          	sd	a4,0(a5)
    80003480:	00878793          	addi	a5,a5,8
    80003484:	fed79ce3          	bne	a5,a3,8000347c <__memset+0xd4>
    80003488:	ff8e7793          	andi	a5,t3,-8
    8000348c:	0007871b          	sext.w	a4,a5
    80003490:	01d787bb          	addw	a5,a5,t4
    80003494:	0ce88e63          	beq	a7,a4,80003570 <__memset+0x1c8>
    80003498:	00f50733          	add	a4,a0,a5
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	0017871b          	addiw	a4,a5,1
    800034a4:	0cc77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034a8:	00e50733          	add	a4,a0,a4
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	0027871b          	addiw	a4,a5,2
    800034b4:	0ac77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	0037871b          	addiw	a4,a5,3
    800034c4:	0ac77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	0047871b          	addiw	a4,a5,4
    800034d4:	08c77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	0057871b          	addiw	a4,a5,5
    800034e4:	08c77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0067871b          	addiw	a4,a5,6
    800034f4:	06c77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0077871b          	addiw	a4,a5,7
    80003504:	06c77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0087871b          	addiw	a4,a5,8
    80003514:	04c77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0097871b          	addiw	a4,a5,9
    80003524:	04c77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	00a7871b          	addiw	a4,a5,10
    80003534:	02c77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	00b7871b          	addiw	a4,a5,11
    80003544:	02c77663          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	00c7871b          	addiw	a4,a5,12
    80003554:	00c77e63          	bgeu	a4,a2,80003570 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	00d7879b          	addiw	a5,a5,13
    80003564:	00c7f663          	bgeu	a5,a2,80003570 <__memset+0x1c8>
    80003568:	00f507b3          	add	a5,a0,a5
    8000356c:	00b78023          	sb	a1,0(a5)
    80003570:	00813403          	ld	s0,8(sp)
    80003574:	01010113          	addi	sp,sp,16
    80003578:	00008067          	ret
    8000357c:	00b00693          	li	a3,11
    80003580:	e55ff06f          	j	800033d4 <__memset+0x2c>
    80003584:	00300e93          	li	t4,3
    80003588:	ea5ff06f          	j	8000342c <__memset+0x84>
    8000358c:	00100e93          	li	t4,1
    80003590:	e9dff06f          	j	8000342c <__memset+0x84>
    80003594:	00000e93          	li	t4,0
    80003598:	e95ff06f          	j	8000342c <__memset+0x84>
    8000359c:	00000793          	li	a5,0
    800035a0:	ef9ff06f          	j	80003498 <__memset+0xf0>
    800035a4:	00200e93          	li	t4,2
    800035a8:	e85ff06f          	j	8000342c <__memset+0x84>
    800035ac:	00400e93          	li	t4,4
    800035b0:	e7dff06f          	j	8000342c <__memset+0x84>
    800035b4:	00500e93          	li	t4,5
    800035b8:	e75ff06f          	j	8000342c <__memset+0x84>
    800035bc:	00600e93          	li	t4,6
    800035c0:	e6dff06f          	j	8000342c <__memset+0x84>

00000000800035c4 <__memmove>:
    800035c4:	ff010113          	addi	sp,sp,-16
    800035c8:	00813423          	sd	s0,8(sp)
    800035cc:	01010413          	addi	s0,sp,16
    800035d0:	0e060863          	beqz	a2,800036c0 <__memmove+0xfc>
    800035d4:	fff6069b          	addiw	a3,a2,-1
    800035d8:	0006881b          	sext.w	a6,a3
    800035dc:	0ea5e863          	bltu	a1,a0,800036cc <__memmove+0x108>
    800035e0:	00758713          	addi	a4,a1,7
    800035e4:	00a5e7b3          	or	a5,a1,a0
    800035e8:	40a70733          	sub	a4,a4,a0
    800035ec:	0077f793          	andi	a5,a5,7
    800035f0:	00f73713          	sltiu	a4,a4,15
    800035f4:	00174713          	xori	a4,a4,1
    800035f8:	0017b793          	seqz	a5,a5
    800035fc:	00e7f7b3          	and	a5,a5,a4
    80003600:	10078863          	beqz	a5,80003710 <__memmove+0x14c>
    80003604:	00900793          	li	a5,9
    80003608:	1107f463          	bgeu	a5,a6,80003710 <__memmove+0x14c>
    8000360c:	0036581b          	srliw	a6,a2,0x3
    80003610:	fff8081b          	addiw	a6,a6,-1
    80003614:	02081813          	slli	a6,a6,0x20
    80003618:	01d85893          	srli	a7,a6,0x1d
    8000361c:	00858813          	addi	a6,a1,8
    80003620:	00058793          	mv	a5,a1
    80003624:	00050713          	mv	a4,a0
    80003628:	01088833          	add	a6,a7,a6
    8000362c:	0007b883          	ld	a7,0(a5)
    80003630:	00878793          	addi	a5,a5,8
    80003634:	00870713          	addi	a4,a4,8
    80003638:	ff173c23          	sd	a7,-8(a4)
    8000363c:	ff0798e3          	bne	a5,a6,8000362c <__memmove+0x68>
    80003640:	ff867713          	andi	a4,a2,-8
    80003644:	02071793          	slli	a5,a4,0x20
    80003648:	0207d793          	srli	a5,a5,0x20
    8000364c:	00f585b3          	add	a1,a1,a5
    80003650:	40e686bb          	subw	a3,a3,a4
    80003654:	00f507b3          	add	a5,a0,a5
    80003658:	06e60463          	beq	a2,a4,800036c0 <__memmove+0xfc>
    8000365c:	0005c703          	lbu	a4,0(a1)
    80003660:	00e78023          	sb	a4,0(a5)
    80003664:	04068e63          	beqz	a3,800036c0 <__memmove+0xfc>
    80003668:	0015c603          	lbu	a2,1(a1)
    8000366c:	00100713          	li	a4,1
    80003670:	00c780a3          	sb	a2,1(a5)
    80003674:	04e68663          	beq	a3,a4,800036c0 <__memmove+0xfc>
    80003678:	0025c603          	lbu	a2,2(a1)
    8000367c:	00200713          	li	a4,2
    80003680:	00c78123          	sb	a2,2(a5)
    80003684:	02e68e63          	beq	a3,a4,800036c0 <__memmove+0xfc>
    80003688:	0035c603          	lbu	a2,3(a1)
    8000368c:	00300713          	li	a4,3
    80003690:	00c781a3          	sb	a2,3(a5)
    80003694:	02e68663          	beq	a3,a4,800036c0 <__memmove+0xfc>
    80003698:	0045c603          	lbu	a2,4(a1)
    8000369c:	00400713          	li	a4,4
    800036a0:	00c78223          	sb	a2,4(a5)
    800036a4:	00e68e63          	beq	a3,a4,800036c0 <__memmove+0xfc>
    800036a8:	0055c603          	lbu	a2,5(a1)
    800036ac:	00500713          	li	a4,5
    800036b0:	00c782a3          	sb	a2,5(a5)
    800036b4:	00e68663          	beq	a3,a4,800036c0 <__memmove+0xfc>
    800036b8:	0065c703          	lbu	a4,6(a1)
    800036bc:	00e78323          	sb	a4,6(a5)
    800036c0:	00813403          	ld	s0,8(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret
    800036cc:	02061713          	slli	a4,a2,0x20
    800036d0:	02075713          	srli	a4,a4,0x20
    800036d4:	00e587b3          	add	a5,a1,a4
    800036d8:	f0f574e3          	bgeu	a0,a5,800035e0 <__memmove+0x1c>
    800036dc:	02069613          	slli	a2,a3,0x20
    800036e0:	02065613          	srli	a2,a2,0x20
    800036e4:	fff64613          	not	a2,a2
    800036e8:	00e50733          	add	a4,a0,a4
    800036ec:	00c78633          	add	a2,a5,a2
    800036f0:	fff7c683          	lbu	a3,-1(a5)
    800036f4:	fff78793          	addi	a5,a5,-1
    800036f8:	fff70713          	addi	a4,a4,-1
    800036fc:	00d70023          	sb	a3,0(a4)
    80003700:	fec798e3          	bne	a5,a2,800036f0 <__memmove+0x12c>
    80003704:	00813403          	ld	s0,8(sp)
    80003708:	01010113          	addi	sp,sp,16
    8000370c:	00008067          	ret
    80003710:	02069713          	slli	a4,a3,0x20
    80003714:	02075713          	srli	a4,a4,0x20
    80003718:	00170713          	addi	a4,a4,1
    8000371c:	00e50733          	add	a4,a0,a4
    80003720:	00050793          	mv	a5,a0
    80003724:	0005c683          	lbu	a3,0(a1)
    80003728:	00178793          	addi	a5,a5,1
    8000372c:	00158593          	addi	a1,a1,1
    80003730:	fed78fa3          	sb	a3,-1(a5)
    80003734:	fee798e3          	bne	a5,a4,80003724 <__memmove+0x160>
    80003738:	f89ff06f          	j	800036c0 <__memmove+0xfc>

000000008000373c <__mem_free>:
    8000373c:	ff010113          	addi	sp,sp,-16
    80003740:	00813423          	sd	s0,8(sp)
    80003744:	01010413          	addi	s0,sp,16
    80003748:	00001597          	auipc	a1,0x1
    8000374c:	ec058593          	addi	a1,a1,-320 # 80004608 <freep>
    80003750:	0005b783          	ld	a5,0(a1)
    80003754:	ff050693          	addi	a3,a0,-16
    80003758:	0007b703          	ld	a4,0(a5)
    8000375c:	00d7fc63          	bgeu	a5,a3,80003774 <__mem_free+0x38>
    80003760:	00e6ee63          	bltu	a3,a4,8000377c <__mem_free+0x40>
    80003764:	00e7fc63          	bgeu	a5,a4,8000377c <__mem_free+0x40>
    80003768:	00070793          	mv	a5,a4
    8000376c:	0007b703          	ld	a4,0(a5)
    80003770:	fed7e8e3          	bltu	a5,a3,80003760 <__mem_free+0x24>
    80003774:	fee7eae3          	bltu	a5,a4,80003768 <__mem_free+0x2c>
    80003778:	fee6f8e3          	bgeu	a3,a4,80003768 <__mem_free+0x2c>
    8000377c:	ff852803          	lw	a6,-8(a0)
    80003780:	02081613          	slli	a2,a6,0x20
    80003784:	01c65613          	srli	a2,a2,0x1c
    80003788:	00c68633          	add	a2,a3,a2
    8000378c:	02c70a63          	beq	a4,a2,800037c0 <__mem_free+0x84>
    80003790:	fee53823          	sd	a4,-16(a0)
    80003794:	0087a503          	lw	a0,8(a5)
    80003798:	02051613          	slli	a2,a0,0x20
    8000379c:	01c65613          	srli	a2,a2,0x1c
    800037a0:	00c78633          	add	a2,a5,a2
    800037a4:	04c68263          	beq	a3,a2,800037e8 <__mem_free+0xac>
    800037a8:	00813403          	ld	s0,8(sp)
    800037ac:	00d7b023          	sd	a3,0(a5)
    800037b0:	00f5b023          	sd	a5,0(a1)
    800037b4:	00000513          	li	a0,0
    800037b8:	01010113          	addi	sp,sp,16
    800037bc:	00008067          	ret
    800037c0:	00872603          	lw	a2,8(a4)
    800037c4:	00073703          	ld	a4,0(a4)
    800037c8:	0106083b          	addw	a6,a2,a6
    800037cc:	ff052c23          	sw	a6,-8(a0)
    800037d0:	fee53823          	sd	a4,-16(a0)
    800037d4:	0087a503          	lw	a0,8(a5)
    800037d8:	02051613          	slli	a2,a0,0x20
    800037dc:	01c65613          	srli	a2,a2,0x1c
    800037e0:	00c78633          	add	a2,a5,a2
    800037e4:	fcc692e3          	bne	a3,a2,800037a8 <__mem_free+0x6c>
    800037e8:	00813403          	ld	s0,8(sp)
    800037ec:	0105053b          	addw	a0,a0,a6
    800037f0:	00a7a423          	sw	a0,8(a5)
    800037f4:	00e7b023          	sd	a4,0(a5)
    800037f8:	00f5b023          	sd	a5,0(a1)
    800037fc:	00000513          	li	a0,0
    80003800:	01010113          	addi	sp,sp,16
    80003804:	00008067          	ret

0000000080003808 <__mem_alloc>:
    80003808:	fc010113          	addi	sp,sp,-64
    8000380c:	02813823          	sd	s0,48(sp)
    80003810:	02913423          	sd	s1,40(sp)
    80003814:	03213023          	sd	s2,32(sp)
    80003818:	01513423          	sd	s5,8(sp)
    8000381c:	02113c23          	sd	ra,56(sp)
    80003820:	01313c23          	sd	s3,24(sp)
    80003824:	01413823          	sd	s4,16(sp)
    80003828:	01613023          	sd	s6,0(sp)
    8000382c:	04010413          	addi	s0,sp,64
    80003830:	00001a97          	auipc	s5,0x1
    80003834:	dd8a8a93          	addi	s5,s5,-552 # 80004608 <freep>
    80003838:	00f50913          	addi	s2,a0,15
    8000383c:	000ab683          	ld	a3,0(s5)
    80003840:	00495913          	srli	s2,s2,0x4
    80003844:	0019049b          	addiw	s1,s2,1
    80003848:	00048913          	mv	s2,s1
    8000384c:	0c068c63          	beqz	a3,80003924 <__mem_alloc+0x11c>
    80003850:	0006b503          	ld	a0,0(a3)
    80003854:	00852703          	lw	a4,8(a0)
    80003858:	10977063          	bgeu	a4,s1,80003958 <__mem_alloc+0x150>
    8000385c:	000017b7          	lui	a5,0x1
    80003860:	0009099b          	sext.w	s3,s2
    80003864:	0af4e863          	bltu	s1,a5,80003914 <__mem_alloc+0x10c>
    80003868:	02099a13          	slli	s4,s3,0x20
    8000386c:	01ca5a13          	srli	s4,s4,0x1c
    80003870:	fff00b13          	li	s6,-1
    80003874:	0100006f          	j	80003884 <__mem_alloc+0x7c>
    80003878:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000387c:	00852703          	lw	a4,8(a0)
    80003880:	04977463          	bgeu	a4,s1,800038c8 <__mem_alloc+0xc0>
    80003884:	00050793          	mv	a5,a0
    80003888:	fea698e3          	bne	a3,a0,80003878 <__mem_alloc+0x70>
    8000388c:	000a0513          	mv	a0,s4
    80003890:	00000097          	auipc	ra,0x0
    80003894:	1f0080e7          	jalr	496(ra) # 80003a80 <kvmincrease>
    80003898:	00050793          	mv	a5,a0
    8000389c:	01050513          	addi	a0,a0,16
    800038a0:	07678e63          	beq	a5,s6,8000391c <__mem_alloc+0x114>
    800038a4:	0137a423          	sw	s3,8(a5)
    800038a8:	00000097          	auipc	ra,0x0
    800038ac:	e94080e7          	jalr	-364(ra) # 8000373c <__mem_free>
    800038b0:	000ab783          	ld	a5,0(s5)
    800038b4:	06078463          	beqz	a5,8000391c <__mem_alloc+0x114>
    800038b8:	0007b503          	ld	a0,0(a5)
    800038bc:	00078693          	mv	a3,a5
    800038c0:	00852703          	lw	a4,8(a0)
    800038c4:	fc9760e3          	bltu	a4,s1,80003884 <__mem_alloc+0x7c>
    800038c8:	08e48263          	beq	s1,a4,8000394c <__mem_alloc+0x144>
    800038cc:	4127073b          	subw	a4,a4,s2
    800038d0:	02071693          	slli	a3,a4,0x20
    800038d4:	01c6d693          	srli	a3,a3,0x1c
    800038d8:	00e52423          	sw	a4,8(a0)
    800038dc:	00d50533          	add	a0,a0,a3
    800038e0:	01252423          	sw	s2,8(a0)
    800038e4:	00fab023          	sd	a5,0(s5)
    800038e8:	01050513          	addi	a0,a0,16
    800038ec:	03813083          	ld	ra,56(sp)
    800038f0:	03013403          	ld	s0,48(sp)
    800038f4:	02813483          	ld	s1,40(sp)
    800038f8:	02013903          	ld	s2,32(sp)
    800038fc:	01813983          	ld	s3,24(sp)
    80003900:	01013a03          	ld	s4,16(sp)
    80003904:	00813a83          	ld	s5,8(sp)
    80003908:	00013b03          	ld	s6,0(sp)
    8000390c:	04010113          	addi	sp,sp,64
    80003910:	00008067          	ret
    80003914:	000019b7          	lui	s3,0x1
    80003918:	f51ff06f          	j	80003868 <__mem_alloc+0x60>
    8000391c:	00000513          	li	a0,0
    80003920:	fcdff06f          	j	800038ec <__mem_alloc+0xe4>
    80003924:	00002797          	auipc	a5,0x2
    80003928:	f5c78793          	addi	a5,a5,-164 # 80005880 <base>
    8000392c:	00078513          	mv	a0,a5
    80003930:	00fab023          	sd	a5,0(s5)
    80003934:	00f7b023          	sd	a5,0(a5)
    80003938:	00000713          	li	a4,0
    8000393c:	00002797          	auipc	a5,0x2
    80003940:	f407a623          	sw	zero,-180(a5) # 80005888 <base+0x8>
    80003944:	00050693          	mv	a3,a0
    80003948:	f11ff06f          	j	80003858 <__mem_alloc+0x50>
    8000394c:	00053703          	ld	a4,0(a0)
    80003950:	00e7b023          	sd	a4,0(a5)
    80003954:	f91ff06f          	j	800038e4 <__mem_alloc+0xdc>
    80003958:	00068793          	mv	a5,a3
    8000395c:	f6dff06f          	j	800038c8 <__mem_alloc+0xc0>

0000000080003960 <__putc>:
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00813823          	sd	s0,16(sp)
    80003968:	00113c23          	sd	ra,24(sp)
    8000396c:	02010413          	addi	s0,sp,32
    80003970:	00050793          	mv	a5,a0
    80003974:	fef40593          	addi	a1,s0,-17
    80003978:	00100613          	li	a2,1
    8000397c:	00000513          	li	a0,0
    80003980:	fef407a3          	sb	a5,-17(s0)
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	918080e7          	jalr	-1768(ra) # 8000229c <console_write>
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	02010113          	addi	sp,sp,32
    80003998:	00008067          	ret

000000008000399c <__getc>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00113c23          	sd	ra,24(sp)
    800039a8:	02010413          	addi	s0,sp,32
    800039ac:	fe840593          	addi	a1,s0,-24
    800039b0:	00100613          	li	a2,1
    800039b4:	00000513          	li	a0,0
    800039b8:	fffff097          	auipc	ra,0xfffff
    800039bc:	8c4080e7          	jalr	-1852(ra) # 8000227c <console_read>
    800039c0:	fe844503          	lbu	a0,-24(s0)
    800039c4:	01813083          	ld	ra,24(sp)
    800039c8:	01013403          	ld	s0,16(sp)
    800039cc:	02010113          	addi	sp,sp,32
    800039d0:	00008067          	ret

00000000800039d4 <console_handler>:
    800039d4:	fe010113          	addi	sp,sp,-32
    800039d8:	00813823          	sd	s0,16(sp)
    800039dc:	00113c23          	sd	ra,24(sp)
    800039e0:	00913423          	sd	s1,8(sp)
    800039e4:	02010413          	addi	s0,sp,32
    800039e8:	14202773          	csrr	a4,scause
    800039ec:	100027f3          	csrr	a5,sstatus
    800039f0:	0027f793          	andi	a5,a5,2
    800039f4:	06079e63          	bnez	a5,80003a70 <console_handler+0x9c>
    800039f8:	00074c63          	bltz	a4,80003a10 <console_handler+0x3c>
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	00813483          	ld	s1,8(sp)
    80003a08:	02010113          	addi	sp,sp,32
    80003a0c:	00008067          	ret
    80003a10:	0ff77713          	andi	a4,a4,255
    80003a14:	00900793          	li	a5,9
    80003a18:	fef712e3          	bne	a4,a5,800039fc <console_handler+0x28>
    80003a1c:	ffffe097          	auipc	ra,0xffffe
    80003a20:	4b8080e7          	jalr	1208(ra) # 80001ed4 <plic_claim>
    80003a24:	00a00793          	li	a5,10
    80003a28:	00050493          	mv	s1,a0
    80003a2c:	02f50c63          	beq	a0,a5,80003a64 <console_handler+0x90>
    80003a30:	fc0506e3          	beqz	a0,800039fc <console_handler+0x28>
    80003a34:	00050593          	mv	a1,a0
    80003a38:	00000517          	auipc	a0,0x0
    80003a3c:	6f050513          	addi	a0,a0,1776 # 80004128 <_ZZ12printIntegermE6digits+0xe0>
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	8d8080e7          	jalr	-1832(ra) # 80002318 <__printf>
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	00048513          	mv	a0,s1
    80003a54:	00813483          	ld	s1,8(sp)
    80003a58:	02010113          	addi	sp,sp,32
    80003a5c:	ffffe317          	auipc	t1,0xffffe
    80003a60:	4b030067          	jr	1200(t1) # 80001f0c <plic_complete>
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	1bc080e7          	jalr	444(ra) # 80002c20 <uartintr>
    80003a6c:	fddff06f          	j	80003a48 <console_handler+0x74>
    80003a70:	00000517          	auipc	a0,0x0
    80003a74:	7b850513          	addi	a0,a0,1976 # 80004228 <digits+0x78>
    80003a78:	fffff097          	auipc	ra,0xfffff
    80003a7c:	844080e7          	jalr	-1980(ra) # 800022bc <panic>

0000000080003a80 <kvmincrease>:
    80003a80:	fe010113          	addi	sp,sp,-32
    80003a84:	01213023          	sd	s2,0(sp)
    80003a88:	00001937          	lui	s2,0x1
    80003a8c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	01250933          	add	s2,a0,s2
    80003aa4:	00c95913          	srli	s2,s2,0xc
    80003aa8:	02090863          	beqz	s2,80003ad8 <kvmincrease+0x58>
    80003aac:	00000493          	li	s1,0
    80003ab0:	00148493          	addi	s1,s1,1
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	4bc080e7          	jalr	1212(ra) # 80002f70 <kalloc>
    80003abc:	fe991ae3          	bne	s2,s1,80003ab0 <kvmincrease+0x30>
    80003ac0:	01813083          	ld	ra,24(sp)
    80003ac4:	01013403          	ld	s0,16(sp)
    80003ac8:	00813483          	ld	s1,8(sp)
    80003acc:	00013903          	ld	s2,0(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret
    80003ad8:	01813083          	ld	ra,24(sp)
    80003adc:	01013403          	ld	s0,16(sp)
    80003ae0:	00813483          	ld	s1,8(sp)
    80003ae4:	00013903          	ld	s2,0(sp)
    80003ae8:	00000513          	li	a0,0
    80003aec:	02010113          	addi	sp,sp,32
    80003af0:	00008067          	ret
	...

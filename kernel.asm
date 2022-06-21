
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	56813103          	ld	sp,1384(sp) # 80004568 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5e8010ef          	jal	ra,80001604 <start>

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
    80001080:	260000ef          	jal	ra,800012e0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    uint64  ra = 0;

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
    8000115c:	088080e7          	jalr	136(ra) # 800011e0 <_Znwm>
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

00000000800011a4 <main>:
#include "../h/List.hpp"
#include "../h/syscall_c.h"



int main(){
    800011a4:	ff010113          	addi	sp,sp,-16
    800011a8:	00113423          	sd	ra,8(sp)
    800011ac:	00813023          	sd	s0,0(sp)
    800011b0:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    800011b4:	00003797          	auipc	a5,0x3
    800011b8:	3ac7b783          	ld	a5,940(a5) # 80004560 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800011bc:	10579073          	csrw	stvec,a5

    mem_alloc(300);
    800011c0:	12c00513          	li	a0,300
    800011c4:	00000097          	auipc	ra,0x0
    800011c8:	f78080e7          	jalr	-136(ra) # 8000113c <_Z9mem_allocm>

    return 0;
}
    800011cc:	00000513          	li	a0,0
    800011d0:	00813083          	ld	ra,8(sp)
    800011d4:	00013403          	ld	s0,0(sp)
    800011d8:	01010113          	addi	sp,sp,16
    800011dc:	00008067          	ret

00000000800011e0 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800011e0:	ff010113          	addi	sp,sp,-16
    800011e4:	00113423          	sd	ra,8(sp)
    800011e8:	00813023          	sd	s0,0(sp)
    800011ec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	150080e7          	jalr	336(ra) # 80001340 <_ZN15MemoryAllocator9mem_allocEm>
}
    800011f8:	00813083          	ld	ra,8(sp)
    800011fc:	00013403          	ld	s0,0(sp)
    80001200:	01010113          	addi	sp,sp,16
    80001204:	00008067          	ret

0000000080001208 <_Znam>:

void* operator new[](size_t n){
    80001208:	ff010113          	addi	sp,sp,-16
    8000120c:	00113423          	sd	ra,8(sp)
    80001210:	00813023          	sd	s0,0(sp)
    80001214:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001218:	00000097          	auipc	ra,0x0
    8000121c:	128080e7          	jalr	296(ra) # 80001340 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001220:	00813083          	ld	ra,8(sp)
    80001224:	00013403          	ld	s0,0(sp)
    80001228:	01010113          	addi	sp,sp,16
    8000122c:	00008067          	ret

0000000080001230 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001230:	ff010113          	addi	sp,sp,-16
    80001234:	00113423          	sd	ra,8(sp)
    80001238:	00813023          	sd	s0,0(sp)
    8000123c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001240:	00000097          	auipc	ra,0x0
    80001244:	128080e7          	jalr	296(ra) # 80001368 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001248:	00813083          	ld	ra,8(sp)
    8000124c:	00013403          	ld	s0,0(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00113423          	sd	ra,8(sp)
    80001260:	00813023          	sd	s0,0(sp)
    80001264:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	100080e7          	jalr	256(ra) # 80001368 <_ZN15MemoryAllocator8mem_freeEPv>

}
    80001270:	00813083          	ld	ra,8(sp)
    80001274:	00013403          	ld	s0,0(sp)
    80001278:	01010113          	addi	sp,sp,16
    8000127c:	00008067          	ret

0000000080001280 <_ZN5Riscv14syscallHandlerEv>:
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001280:	00050713          	mv	a4,a0
    if(arg0== 0x01 ){
    80001284:	00100793          	li	a5,1
    80001288:	00f70463          	beq	a4,a5,80001290 <_ZN5Riscv14syscallHandlerEv+0x10>
    8000128c:	00008067          	ret
void Riscv::syscallHandler() {
    80001290:	ff010113          	addi	sp,sp,-16
    80001294:	00113423          	sd	ra,8(sp)
    80001298:	00813023          	sd	s0,0(sp)
    8000129c:	01010413          	addi	s0,sp,16
        //mem_alloc
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800012a0:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	09c080e7          	jalr	156(ra) # 80001340 <_ZN15MemoryAllocator9mem_allocEm>

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800012ac:	00050513          	mv	a0,a0
    }

}
    800012b0:	00813083          	ld	ra,8(sp)
    800012b4:	00013403          	ld	s0,0(sp)
    800012b8:	01010113          	addi	sp,sp,16
    800012bc:	00008067          	ret

00000000800012c0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800012c0:	ff010113          	addi	sp,sp,-16
    800012c4:	00813423          	sd	s0,8(sp)
    800012c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800012cc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800012d0:	10200073          	sret
}
    800012d4:	00813403          	ld	s0,8(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    800012e0:	fd010113          	addi	sp,sp,-48
    800012e4:	02113423          	sd	ra,40(sp)
    800012e8:	02813023          	sd	s0,32(sp)
    800012ec:	00913c23          	sd	s1,24(sp)
    800012f0:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    800012f4:	142027f3          	csrr	a5,scause
    800012f8:	fcf43823          	sd	a5,-48(s0)
    return scause;
    800012fc:	fd043783          	ld	a5,-48(s0)
    uint scause = r_scause();

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001300:	ff87879b          	addiw	a5,a5,-8
    80001304:	00100713          	li	a4,1
    80001308:	00f77c63          	bgeu	a4,a5,80001320 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
        //print(sepc)
        //print(stval) //trap value

    }

}
    8000130c:	02813083          	ld	ra,40(sp)
    80001310:	02013403          	ld	s0,32(sp)
    80001314:	01813483          	ld	s1,24(sp)
    80001318:	03010113          	addi	sp,sp,48
    8000131c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001320:	141027f3          	csrr	a5,sepc
    80001324:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001328:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    8000132c:	00448493          	addi	s1,s1,4
        syscallHandler();
    80001330:	00000097          	auipc	ra,0x0
    80001334:	f50080e7          	jalr	-176(ra) # 80001280 <_ZN5Riscv14syscallHandlerEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001338:	14149073          	csrw	sepc,s1
}
    8000133c:	fd1ff06f          	j	8000130c <_ZN5Riscv20handleSupervisorTrapEv+0x2c>

0000000080001340 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001350:	00002097          	auipc	ra,0x2
    80001354:	448080e7          	jalr	1096(ra) # 80003798 <__mem_alloc>
}
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00113423          	sd	ra,8(sp)
    80001370:	00813023          	sd	s0,0(sp)
    80001374:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	354080e7          	jalr	852(ra) # 800036cc <__mem_free>
    80001380:	00813083          	ld	ra,8(sp)
    80001384:	00013403          	ld	s0,0(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001390:	fd010113          	addi	sp,sp,-48
    80001394:	02113423          	sd	ra,40(sp)
    80001398:	02813023          	sd	s0,32(sp)
    8000139c:	00913c23          	sd	s1,24(sp)
    800013a0:	01213823          	sd	s2,16(sp)
    800013a4:	03010413          	addi	s0,sp,48
    800013a8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800013ac:	100027f3          	csrr	a5,sstatus
    800013b0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800013b4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800013b8:	00200793          	li	a5,2
    800013bc:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    800013c0:	0004c503          	lbu	a0,0(s1)
    800013c4:	00050a63          	beqz	a0,800013d8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800013c8:	00002097          	auipc	ra,0x2
    800013cc:	528080e7          	jalr	1320(ra) # 800038f0 <__putc>
        string++;
    800013d0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800013d4:	fedff06f          	j	800013c0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    800013d8:	0009091b          	sext.w	s2,s2
    800013dc:	00297913          	andi	s2,s2,2
    800013e0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800013e4:	10092073          	csrs	sstatus,s2
}
    800013e8:	02813083          	ld	ra,40(sp)
    800013ec:	02013403          	ld	s0,32(sp)
    800013f0:	01813483          	ld	s1,24(sp)
    800013f4:	01013903          	ld	s2,16(sp)
    800013f8:	03010113          	addi	sp,sp,48
    800013fc:	00008067          	ret

0000000080001400 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001400:	fc010113          	addi	sp,sp,-64
    80001404:	02113c23          	sd	ra,56(sp)
    80001408:	02813823          	sd	s0,48(sp)
    8000140c:	02913423          	sd	s1,40(sp)
    80001410:	03213023          	sd	s2,32(sp)
    80001414:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001418:	100027f3          	csrr	a5,sstatus
    8000141c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001420:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001424:	00200793          	li	a5,2
    80001428:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000142c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001430:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001434:	00a00613          	li	a2,10
    80001438:	02c5773b          	remuw	a4,a0,a2
    8000143c:	02071693          	slli	a3,a4,0x20
    80001440:	0206d693          	srli	a3,a3,0x20
    80001444:	00003717          	auipc	a4,0x3
    80001448:	bbc70713          	addi	a4,a4,-1092 # 80004000 <_ZZ12printIntegermE6digits>
    8000144c:	00d70733          	add	a4,a4,a3
    80001450:	00074703          	lbu	a4,0(a4)
    80001454:	fe040693          	addi	a3,s0,-32
    80001458:	009687b3          	add	a5,a3,s1
    8000145c:	0014849b          	addiw	s1,s1,1
    80001460:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001464:	0005071b          	sext.w	a4,a0
    80001468:	02c5553b          	divuw	a0,a0,a2
    8000146c:	00900793          	li	a5,9
    80001470:	fce7e2e3          	bltu	a5,a4,80001434 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001474:	fff4849b          	addiw	s1,s1,-1
    80001478:	0004ce63          	bltz	s1,80001494 <_Z12printIntegerm+0x94>
    8000147c:	fe040793          	addi	a5,s0,-32
    80001480:	009787b3          	add	a5,a5,s1
    80001484:	ff07c503          	lbu	a0,-16(a5)
    80001488:	00002097          	auipc	ra,0x2
    8000148c:	468080e7          	jalr	1128(ra) # 800038f0 <__putc>
    80001490:	fe5ff06f          	j	80001474 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001494:	0009091b          	sext.w	s2,s2
    80001498:	00297913          	andi	s2,s2,2
    8000149c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014a0:	10092073          	csrs	sstatus,s2
}
    800014a4:	03813083          	ld	ra,56(sp)
    800014a8:	03013403          	ld	s0,48(sp)
    800014ac:	02813483          	ld	s1,40(sp)
    800014b0:	02013903          	ld	s2,32(sp)
    800014b4:	04010113          	addi	sp,sp,64
    800014b8:	00008067          	ret

00000000800014bc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800014bc:	ff010113          	addi	sp,sp,-16
    800014c0:	00813423          	sd	s0,8(sp)
    800014c4:	01010413          	addi	s0,sp,16
    800014c8:	00100793          	li	a5,1
    800014cc:	00f50863          	beq	a0,a5,800014dc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014d0:	00813403          	ld	s0,8(sp)
    800014d4:	01010113          	addi	sp,sp,16
    800014d8:	00008067          	ret
    800014dc:	000107b7          	lui	a5,0x10
    800014e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014e4:	fef596e3          	bne	a1,a5,800014d0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800014e8:	00003797          	auipc	a5,0x3
    800014ec:	0d878793          	addi	a5,a5,216 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    800014f0:	0007b023          	sd	zero,0(a5)
    800014f4:	0007b423          	sd	zero,8(a5)
    800014f8:	fd9ff06f          	j	800014d0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800014fc <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001510:	00003517          	auipc	a0,0x3
    80001514:	0b053503          	ld	a0,176(a0) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    80001518:	04050263          	beqz	a0,8000155c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000151c:	00853783          	ld	a5,8(a0)
    80001520:	00003717          	auipc	a4,0x3
    80001524:	0af73023          	sd	a5,160(a4) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001528:	02078463          	beqz	a5,80001550 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000152c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001530:	00000097          	auipc	ra,0x0
    80001534:	d00080e7          	jalr	-768(ra) # 80001230 <_ZdlPv>
}
    80001538:	00048513          	mv	a0,s1
    8000153c:	01813083          	ld	ra,24(sp)
    80001540:	01013403          	ld	s0,16(sp)
    80001544:	00813483          	ld	s1,8(sp)
    80001548:	02010113          	addi	sp,sp,32
    8000154c:	00008067          	ret
        if (!head) { tail = 0; }
    80001550:	00003797          	auipc	a5,0x3
    80001554:	0607bc23          	sd	zero,120(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001558:	fd5ff06f          	j	8000152c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000155c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001560:	fd9ff06f          	j	80001538 <_ZN9Scheduler3getEv+0x3c>

0000000080001564 <_ZN9Scheduler3putEP3TCB>:
{
    80001564:	fe010113          	addi	sp,sp,-32
    80001568:	00113c23          	sd	ra,24(sp)
    8000156c:	00813823          	sd	s0,16(sp)
    80001570:	00913423          	sd	s1,8(sp)
    80001574:	02010413          	addi	s0,sp,32
    80001578:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000157c:	01000513          	li	a0,16
    80001580:	00000097          	auipc	ra,0x0
    80001584:	c60080e7          	jalr	-928(ra) # 800011e0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001588:	00953023          	sd	s1,0(a0)
    8000158c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001590:	00003797          	auipc	a5,0x3
    80001594:	0387b783          	ld	a5,56(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001598:	02078263          	beqz	a5,800015bc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    8000159c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015a0:	00003797          	auipc	a5,0x3
    800015a4:	02a7b423          	sd	a0,40(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800015a8:	01813083          	ld	ra,24(sp)
    800015ac:	01013403          	ld	s0,16(sp)
    800015b0:	00813483          	ld	s1,8(sp)
    800015b4:	02010113          	addi	sp,sp,32
    800015b8:	00008067          	ret
            head = tail = elem;
    800015bc:	00003797          	auipc	a5,0x3
    800015c0:	00478793          	addi	a5,a5,4 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    800015c4:	00a7b423          	sd	a0,8(a5)
    800015c8:	00a7b023          	sd	a0,0(a5)
    800015cc:	fddff06f          	j	800015a8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800015d0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
    800015e0:	000105b7          	lui	a1,0x10
    800015e4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800015e8:	00100513          	li	a0,1
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	ed0080e7          	jalr	-304(ra) # 800014bc <_Z41__static_initialization_and_destruction_0ii>
    800015f4:	00813083          	ld	ra,8(sp)
    800015f8:	00013403          	ld	s0,0(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <start>:
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    80001610:	300027f3          	csrr	a5,mstatus
    80001614:	ffffe737          	lui	a4,0xffffe
    80001618:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8fbf>
    8000161c:	00e7f7b3          	and	a5,a5,a4
    80001620:	00001737          	lui	a4,0x1
    80001624:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001628:	00e7e7b3          	or	a5,a5,a4
    8000162c:	30079073          	csrw	mstatus,a5
    80001630:	00000797          	auipc	a5,0x0
    80001634:	16078793          	addi	a5,a5,352 # 80001790 <system_main>
    80001638:	34179073          	csrw	mepc,a5
    8000163c:	00000793          	li	a5,0
    80001640:	18079073          	csrw	satp,a5
    80001644:	000107b7          	lui	a5,0x10
    80001648:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000164c:	30279073          	csrw	medeleg,a5
    80001650:	30379073          	csrw	mideleg,a5
    80001654:	104027f3          	csrr	a5,sie
    80001658:	2227e793          	ori	a5,a5,546
    8000165c:	10479073          	csrw	sie,a5
    80001660:	fff00793          	li	a5,-1
    80001664:	00a7d793          	srli	a5,a5,0xa
    80001668:	3b079073          	csrw	pmpaddr0,a5
    8000166c:	00f00793          	li	a5,15
    80001670:	3a079073          	csrw	pmpcfg0,a5
    80001674:	f14027f3          	csrr	a5,mhartid
    80001678:	0200c737          	lui	a4,0x200c
    8000167c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001680:	0007869b          	sext.w	a3,a5
    80001684:	00269713          	slli	a4,a3,0x2
    80001688:	000f4637          	lui	a2,0xf4
    8000168c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001690:	00d70733          	add	a4,a4,a3
    80001694:	0037979b          	slliw	a5,a5,0x3
    80001698:	020046b7          	lui	a3,0x2004
    8000169c:	00d787b3          	add	a5,a5,a3
    800016a0:	00c585b3          	add	a1,a1,a2
    800016a4:	00371693          	slli	a3,a4,0x3
    800016a8:	00003717          	auipc	a4,0x3
    800016ac:	f2870713          	addi	a4,a4,-216 # 800045d0 <timer_scratch>
    800016b0:	00b7b023          	sd	a1,0(a5)
    800016b4:	00d70733          	add	a4,a4,a3
    800016b8:	00f73c23          	sd	a5,24(a4)
    800016bc:	02c73023          	sd	a2,32(a4)
    800016c0:	34071073          	csrw	mscratch,a4
    800016c4:	00000797          	auipc	a5,0x0
    800016c8:	6ec78793          	addi	a5,a5,1772 # 80001db0 <timervec>
    800016cc:	30579073          	csrw	mtvec,a5
    800016d0:	300027f3          	csrr	a5,mstatus
    800016d4:	0087e793          	ori	a5,a5,8
    800016d8:	30079073          	csrw	mstatus,a5
    800016dc:	304027f3          	csrr	a5,mie
    800016e0:	0807e793          	ori	a5,a5,128
    800016e4:	30479073          	csrw	mie,a5
    800016e8:	f14027f3          	csrr	a5,mhartid
    800016ec:	0007879b          	sext.w	a5,a5
    800016f0:	00078213          	mv	tp,a5
    800016f4:	30200073          	mret
    800016f8:	00813403          	ld	s0,8(sp)
    800016fc:	01010113          	addi	sp,sp,16
    80001700:	00008067          	ret

0000000080001704 <timerinit>:
    80001704:	ff010113          	addi	sp,sp,-16
    80001708:	00813423          	sd	s0,8(sp)
    8000170c:	01010413          	addi	s0,sp,16
    80001710:	f14027f3          	csrr	a5,mhartid
    80001714:	0200c737          	lui	a4,0x200c
    80001718:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000171c:	0007869b          	sext.w	a3,a5
    80001720:	00269713          	slli	a4,a3,0x2
    80001724:	000f4637          	lui	a2,0xf4
    80001728:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000172c:	00d70733          	add	a4,a4,a3
    80001730:	0037979b          	slliw	a5,a5,0x3
    80001734:	020046b7          	lui	a3,0x2004
    80001738:	00d787b3          	add	a5,a5,a3
    8000173c:	00c585b3          	add	a1,a1,a2
    80001740:	00371693          	slli	a3,a4,0x3
    80001744:	00003717          	auipc	a4,0x3
    80001748:	e8c70713          	addi	a4,a4,-372 # 800045d0 <timer_scratch>
    8000174c:	00b7b023          	sd	a1,0(a5)
    80001750:	00d70733          	add	a4,a4,a3
    80001754:	00f73c23          	sd	a5,24(a4)
    80001758:	02c73023          	sd	a2,32(a4)
    8000175c:	34071073          	csrw	mscratch,a4
    80001760:	00000797          	auipc	a5,0x0
    80001764:	65078793          	addi	a5,a5,1616 # 80001db0 <timervec>
    80001768:	30579073          	csrw	mtvec,a5
    8000176c:	300027f3          	csrr	a5,mstatus
    80001770:	0087e793          	ori	a5,a5,8
    80001774:	30079073          	csrw	mstatus,a5
    80001778:	304027f3          	csrr	a5,mie
    8000177c:	0807e793          	ori	a5,a5,128
    80001780:	30479073          	csrw	mie,a5
    80001784:	00813403          	ld	s0,8(sp)
    80001788:	01010113          	addi	sp,sp,16
    8000178c:	00008067          	ret

0000000080001790 <system_main>:
    80001790:	fe010113          	addi	sp,sp,-32
    80001794:	00813823          	sd	s0,16(sp)
    80001798:	00913423          	sd	s1,8(sp)
    8000179c:	00113c23          	sd	ra,24(sp)
    800017a0:	02010413          	addi	s0,sp,32
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	0c4080e7          	jalr	196(ra) # 80001868 <cpuid>
    800017ac:	00003497          	auipc	s1,0x3
    800017b0:	de448493          	addi	s1,s1,-540 # 80004590 <started>
    800017b4:	02050263          	beqz	a0,800017d8 <system_main+0x48>
    800017b8:	0004a783          	lw	a5,0(s1)
    800017bc:	0007879b          	sext.w	a5,a5
    800017c0:	fe078ce3          	beqz	a5,800017b8 <system_main+0x28>
    800017c4:	0ff0000f          	fence
    800017c8:	00003517          	auipc	a0,0x3
    800017cc:	87850513          	addi	a0,a0,-1928 # 80004040 <_ZZ12printIntegermE6digits+0x40>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	a7c080e7          	jalr	-1412(ra) # 8000224c <panic>
    800017d8:	00001097          	auipc	ra,0x1
    800017dc:	9d0080e7          	jalr	-1584(ra) # 800021a8 <consoleinit>
    800017e0:	00001097          	auipc	ra,0x1
    800017e4:	15c080e7          	jalr	348(ra) # 8000293c <printfinit>
    800017e8:	00003517          	auipc	a0,0x3
    800017ec:	93850513          	addi	a0,a0,-1736 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	ab8080e7          	jalr	-1352(ra) # 800022a8 <__printf>
    800017f8:	00003517          	auipc	a0,0x3
    800017fc:	81850513          	addi	a0,a0,-2024 # 80004010 <_ZZ12printIntegermE6digits+0x10>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	aa8080e7          	jalr	-1368(ra) # 800022a8 <__printf>
    80001808:	00003517          	auipc	a0,0x3
    8000180c:	91850513          	addi	a0,a0,-1768 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80001810:	00001097          	auipc	ra,0x1
    80001814:	a98080e7          	jalr	-1384(ra) # 800022a8 <__printf>
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	4b0080e7          	jalr	1200(ra) # 80002cc8 <kinit>
    80001820:	00000097          	auipc	ra,0x0
    80001824:	148080e7          	jalr	328(ra) # 80001968 <trapinit>
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	16c080e7          	jalr	364(ra) # 80001994 <trapinithart>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	5c0080e7          	jalr	1472(ra) # 80001df0 <plicinit>
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	5e0080e7          	jalr	1504(ra) # 80001e18 <plicinithart>
    80001840:	00000097          	auipc	ra,0x0
    80001844:	078080e7          	jalr	120(ra) # 800018b8 <userinit>
    80001848:	0ff0000f          	fence
    8000184c:	00100793          	li	a5,1
    80001850:	00002517          	auipc	a0,0x2
    80001854:	7d850513          	addi	a0,a0,2008 # 80004028 <_ZZ12printIntegermE6digits+0x28>
    80001858:	00f4a023          	sw	a5,0(s1)
    8000185c:	00001097          	auipc	ra,0x1
    80001860:	a4c080e7          	jalr	-1460(ra) # 800022a8 <__printf>
    80001864:	0000006f          	j	80001864 <system_main+0xd4>

0000000080001868 <cpuid>:
    80001868:	ff010113          	addi	sp,sp,-16
    8000186c:	00813423          	sd	s0,8(sp)
    80001870:	01010413          	addi	s0,sp,16
    80001874:	00020513          	mv	a0,tp
    80001878:	00813403          	ld	s0,8(sp)
    8000187c:	0005051b          	sext.w	a0,a0
    80001880:	01010113          	addi	sp,sp,16
    80001884:	00008067          	ret

0000000080001888 <mycpu>:
    80001888:	ff010113          	addi	sp,sp,-16
    8000188c:	00813423          	sd	s0,8(sp)
    80001890:	01010413          	addi	s0,sp,16
    80001894:	00020793          	mv	a5,tp
    80001898:	00813403          	ld	s0,8(sp)
    8000189c:	0007879b          	sext.w	a5,a5
    800018a0:	00779793          	slli	a5,a5,0x7
    800018a4:	00004517          	auipc	a0,0x4
    800018a8:	d5c50513          	addi	a0,a0,-676 # 80005600 <cpus>
    800018ac:	00f50533          	add	a0,a0,a5
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <userinit>:
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813423          	sd	s0,8(sp)
    800018c0:	01010413          	addi	s0,sp,16
    800018c4:	00813403          	ld	s0,8(sp)
    800018c8:	01010113          	addi	sp,sp,16
    800018cc:	00000317          	auipc	t1,0x0
    800018d0:	8d830067          	jr	-1832(t1) # 800011a4 <main>

00000000800018d4 <either_copyout>:
    800018d4:	ff010113          	addi	sp,sp,-16
    800018d8:	00813023          	sd	s0,0(sp)
    800018dc:	00113423          	sd	ra,8(sp)
    800018e0:	01010413          	addi	s0,sp,16
    800018e4:	02051663          	bnez	a0,80001910 <either_copyout+0x3c>
    800018e8:	00058513          	mv	a0,a1
    800018ec:	00060593          	mv	a1,a2
    800018f0:	0006861b          	sext.w	a2,a3
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	c60080e7          	jalr	-928(ra) # 80003554 <__memmove>
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	00000513          	li	a0,0
    80001908:	01010113          	addi	sp,sp,16
    8000190c:	00008067          	ret
    80001910:	00002517          	auipc	a0,0x2
    80001914:	75850513          	addi	a0,a0,1880 # 80004068 <_ZZ12printIntegermE6digits+0x68>
    80001918:	00001097          	auipc	ra,0x1
    8000191c:	934080e7          	jalr	-1740(ra) # 8000224c <panic>

0000000080001920 <either_copyin>:
    80001920:	ff010113          	addi	sp,sp,-16
    80001924:	00813023          	sd	s0,0(sp)
    80001928:	00113423          	sd	ra,8(sp)
    8000192c:	01010413          	addi	s0,sp,16
    80001930:	02059463          	bnez	a1,80001958 <either_copyin+0x38>
    80001934:	00060593          	mv	a1,a2
    80001938:	0006861b          	sext.w	a2,a3
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	c18080e7          	jalr	-1000(ra) # 80003554 <__memmove>
    80001944:	00813083          	ld	ra,8(sp)
    80001948:	00013403          	ld	s0,0(sp)
    8000194c:	00000513          	li	a0,0
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret
    80001958:	00002517          	auipc	a0,0x2
    8000195c:	73850513          	addi	a0,a0,1848 # 80004090 <_ZZ12printIntegermE6digits+0x90>
    80001960:	00001097          	auipc	ra,0x1
    80001964:	8ec080e7          	jalr	-1812(ra) # 8000224c <panic>

0000000080001968 <trapinit>:
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00813423          	sd	s0,8(sp)
    80001970:	01010413          	addi	s0,sp,16
    80001974:	00813403          	ld	s0,8(sp)
    80001978:	00002597          	auipc	a1,0x2
    8000197c:	74058593          	addi	a1,a1,1856 # 800040b8 <_ZZ12printIntegermE6digits+0xb8>
    80001980:	00004517          	auipc	a0,0x4
    80001984:	d0050513          	addi	a0,a0,-768 # 80005680 <tickslock>
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00001317          	auipc	t1,0x1
    80001990:	5cc30067          	jr	1484(t1) # 80002f58 <initlock>

0000000080001994 <trapinithart>:
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00813423          	sd	s0,8(sp)
    8000199c:	01010413          	addi	s0,sp,16
    800019a0:	00000797          	auipc	a5,0x0
    800019a4:	30078793          	addi	a5,a5,768 # 80001ca0 <kernelvec>
    800019a8:	10579073          	csrw	stvec,a5
    800019ac:	00813403          	ld	s0,8(sp)
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00008067          	ret

00000000800019b8 <usertrap>:
    800019b8:	ff010113          	addi	sp,sp,-16
    800019bc:	00813423          	sd	s0,8(sp)
    800019c0:	01010413          	addi	s0,sp,16
    800019c4:	00813403          	ld	s0,8(sp)
    800019c8:	01010113          	addi	sp,sp,16
    800019cc:	00008067          	ret

00000000800019d0 <usertrapret>:
    800019d0:	ff010113          	addi	sp,sp,-16
    800019d4:	00813423          	sd	s0,8(sp)
    800019d8:	01010413          	addi	s0,sp,16
    800019dc:	00813403          	ld	s0,8(sp)
    800019e0:	01010113          	addi	sp,sp,16
    800019e4:	00008067          	ret

00000000800019e8 <kerneltrap>:
    800019e8:	fe010113          	addi	sp,sp,-32
    800019ec:	00813823          	sd	s0,16(sp)
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00913423          	sd	s1,8(sp)
    800019f8:	02010413          	addi	s0,sp,32
    800019fc:	142025f3          	csrr	a1,scause
    80001a00:	100027f3          	csrr	a5,sstatus
    80001a04:	0027f793          	andi	a5,a5,2
    80001a08:	10079c63          	bnez	a5,80001b20 <kerneltrap+0x138>
    80001a0c:	142027f3          	csrr	a5,scause
    80001a10:	0207ce63          	bltz	a5,80001a4c <kerneltrap+0x64>
    80001a14:	00002517          	auipc	a0,0x2
    80001a18:	6ec50513          	addi	a0,a0,1772 # 80004100 <_ZZ12printIntegermE6digits+0x100>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	88c080e7          	jalr	-1908(ra) # 800022a8 <__printf>
    80001a24:	141025f3          	csrr	a1,sepc
    80001a28:	14302673          	csrr	a2,stval
    80001a2c:	00002517          	auipc	a0,0x2
    80001a30:	6e450513          	addi	a0,a0,1764 # 80004110 <_ZZ12printIntegermE6digits+0x110>
    80001a34:	00001097          	auipc	ra,0x1
    80001a38:	874080e7          	jalr	-1932(ra) # 800022a8 <__printf>
    80001a3c:	00002517          	auipc	a0,0x2
    80001a40:	6ec50513          	addi	a0,a0,1772 # 80004128 <_ZZ12printIntegermE6digits+0x128>
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	808080e7          	jalr	-2040(ra) # 8000224c <panic>
    80001a4c:	0ff7f713          	andi	a4,a5,255
    80001a50:	00900693          	li	a3,9
    80001a54:	04d70063          	beq	a4,a3,80001a94 <kerneltrap+0xac>
    80001a58:	fff00713          	li	a4,-1
    80001a5c:	03f71713          	slli	a4,a4,0x3f
    80001a60:	00170713          	addi	a4,a4,1
    80001a64:	fae798e3          	bne	a5,a4,80001a14 <kerneltrap+0x2c>
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	e00080e7          	jalr	-512(ra) # 80001868 <cpuid>
    80001a70:	06050663          	beqz	a0,80001adc <kerneltrap+0xf4>
    80001a74:	144027f3          	csrr	a5,sip
    80001a78:	ffd7f793          	andi	a5,a5,-3
    80001a7c:	14479073          	csrw	sip,a5
    80001a80:	01813083          	ld	ra,24(sp)
    80001a84:	01013403          	ld	s0,16(sp)
    80001a88:	00813483          	ld	s1,8(sp)
    80001a8c:	02010113          	addi	sp,sp,32
    80001a90:	00008067          	ret
    80001a94:	00000097          	auipc	ra,0x0
    80001a98:	3d0080e7          	jalr	976(ra) # 80001e64 <plic_claim>
    80001a9c:	00a00793          	li	a5,10
    80001aa0:	00050493          	mv	s1,a0
    80001aa4:	06f50863          	beq	a0,a5,80001b14 <kerneltrap+0x12c>
    80001aa8:	fc050ce3          	beqz	a0,80001a80 <kerneltrap+0x98>
    80001aac:	00050593          	mv	a1,a0
    80001ab0:	00002517          	auipc	a0,0x2
    80001ab4:	63050513          	addi	a0,a0,1584 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	7f0080e7          	jalr	2032(ra) # 800022a8 <__printf>
    80001ac0:	01013403          	ld	s0,16(sp)
    80001ac4:	01813083          	ld	ra,24(sp)
    80001ac8:	00048513          	mv	a0,s1
    80001acc:	00813483          	ld	s1,8(sp)
    80001ad0:	02010113          	addi	sp,sp,32
    80001ad4:	00000317          	auipc	t1,0x0
    80001ad8:	3c830067          	jr	968(t1) # 80001e9c <plic_complete>
    80001adc:	00004517          	auipc	a0,0x4
    80001ae0:	ba450513          	addi	a0,a0,-1116 # 80005680 <tickslock>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	498080e7          	jalr	1176(ra) # 80002f7c <acquire>
    80001aec:	00003717          	auipc	a4,0x3
    80001af0:	aa870713          	addi	a4,a4,-1368 # 80004594 <ticks>
    80001af4:	00072783          	lw	a5,0(a4)
    80001af8:	00004517          	auipc	a0,0x4
    80001afc:	b8850513          	addi	a0,a0,-1144 # 80005680 <tickslock>
    80001b00:	0017879b          	addiw	a5,a5,1
    80001b04:	00f72023          	sw	a5,0(a4)
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	540080e7          	jalr	1344(ra) # 80003048 <release>
    80001b10:	f65ff06f          	j	80001a74 <kerneltrap+0x8c>
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	09c080e7          	jalr	156(ra) # 80002bb0 <uartintr>
    80001b1c:	fa5ff06f          	j	80001ac0 <kerneltrap+0xd8>
    80001b20:	00002517          	auipc	a0,0x2
    80001b24:	5a050513          	addi	a0,a0,1440 # 800040c0 <_ZZ12printIntegermE6digits+0xc0>
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	724080e7          	jalr	1828(ra) # 8000224c <panic>

0000000080001b30 <clockintr>:
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00913423          	sd	s1,8(sp)
    80001b3c:	00113c23          	sd	ra,24(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	00004497          	auipc	s1,0x4
    80001b48:	b3c48493          	addi	s1,s1,-1220 # 80005680 <tickslock>
    80001b4c:	00048513          	mv	a0,s1
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	42c080e7          	jalr	1068(ra) # 80002f7c <acquire>
    80001b58:	00003717          	auipc	a4,0x3
    80001b5c:	a3c70713          	addi	a4,a4,-1476 # 80004594 <ticks>
    80001b60:	00072783          	lw	a5,0(a4)
    80001b64:	01013403          	ld	s0,16(sp)
    80001b68:	01813083          	ld	ra,24(sp)
    80001b6c:	00048513          	mv	a0,s1
    80001b70:	0017879b          	addiw	a5,a5,1
    80001b74:	00813483          	ld	s1,8(sp)
    80001b78:	00f72023          	sw	a5,0(a4)
    80001b7c:	02010113          	addi	sp,sp,32
    80001b80:	00001317          	auipc	t1,0x1
    80001b84:	4c830067          	jr	1224(t1) # 80003048 <release>

0000000080001b88 <devintr>:
    80001b88:	142027f3          	csrr	a5,scause
    80001b8c:	00000513          	li	a0,0
    80001b90:	0007c463          	bltz	a5,80001b98 <devintr+0x10>
    80001b94:	00008067          	ret
    80001b98:	fe010113          	addi	sp,sp,-32
    80001b9c:	00813823          	sd	s0,16(sp)
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00913423          	sd	s1,8(sp)
    80001ba8:	02010413          	addi	s0,sp,32
    80001bac:	0ff7f713          	andi	a4,a5,255
    80001bb0:	00900693          	li	a3,9
    80001bb4:	04d70c63          	beq	a4,a3,80001c0c <devintr+0x84>
    80001bb8:	fff00713          	li	a4,-1
    80001bbc:	03f71713          	slli	a4,a4,0x3f
    80001bc0:	00170713          	addi	a4,a4,1
    80001bc4:	00e78c63          	beq	a5,a4,80001bdc <devintr+0x54>
    80001bc8:	01813083          	ld	ra,24(sp)
    80001bcc:	01013403          	ld	s0,16(sp)
    80001bd0:	00813483          	ld	s1,8(sp)
    80001bd4:	02010113          	addi	sp,sp,32
    80001bd8:	00008067          	ret
    80001bdc:	00000097          	auipc	ra,0x0
    80001be0:	c8c080e7          	jalr	-884(ra) # 80001868 <cpuid>
    80001be4:	06050663          	beqz	a0,80001c50 <devintr+0xc8>
    80001be8:	144027f3          	csrr	a5,sip
    80001bec:	ffd7f793          	andi	a5,a5,-3
    80001bf0:	14479073          	csrw	sip,a5
    80001bf4:	01813083          	ld	ra,24(sp)
    80001bf8:	01013403          	ld	s0,16(sp)
    80001bfc:	00813483          	ld	s1,8(sp)
    80001c00:	00200513          	li	a0,2
    80001c04:	02010113          	addi	sp,sp,32
    80001c08:	00008067          	ret
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	258080e7          	jalr	600(ra) # 80001e64 <plic_claim>
    80001c14:	00a00793          	li	a5,10
    80001c18:	00050493          	mv	s1,a0
    80001c1c:	06f50663          	beq	a0,a5,80001c88 <devintr+0x100>
    80001c20:	00100513          	li	a0,1
    80001c24:	fa0482e3          	beqz	s1,80001bc8 <devintr+0x40>
    80001c28:	00048593          	mv	a1,s1
    80001c2c:	00002517          	auipc	a0,0x2
    80001c30:	4b450513          	addi	a0,a0,1204 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	674080e7          	jalr	1652(ra) # 800022a8 <__printf>
    80001c3c:	00048513          	mv	a0,s1
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	25c080e7          	jalr	604(ra) # 80001e9c <plic_complete>
    80001c48:	00100513          	li	a0,1
    80001c4c:	f7dff06f          	j	80001bc8 <devintr+0x40>
    80001c50:	00004517          	auipc	a0,0x4
    80001c54:	a3050513          	addi	a0,a0,-1488 # 80005680 <tickslock>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	324080e7          	jalr	804(ra) # 80002f7c <acquire>
    80001c60:	00003717          	auipc	a4,0x3
    80001c64:	93470713          	addi	a4,a4,-1740 # 80004594 <ticks>
    80001c68:	00072783          	lw	a5,0(a4)
    80001c6c:	00004517          	auipc	a0,0x4
    80001c70:	a1450513          	addi	a0,a0,-1516 # 80005680 <tickslock>
    80001c74:	0017879b          	addiw	a5,a5,1
    80001c78:	00f72023          	sw	a5,0(a4)
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	3cc080e7          	jalr	972(ra) # 80003048 <release>
    80001c84:	f65ff06f          	j	80001be8 <devintr+0x60>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	f28080e7          	jalr	-216(ra) # 80002bb0 <uartintr>
    80001c90:	fadff06f          	j	80001c3c <devintr+0xb4>
	...

0000000080001ca0 <kernelvec>:
    80001ca0:	f0010113          	addi	sp,sp,-256
    80001ca4:	00113023          	sd	ra,0(sp)
    80001ca8:	00213423          	sd	sp,8(sp)
    80001cac:	00313823          	sd	gp,16(sp)
    80001cb0:	00413c23          	sd	tp,24(sp)
    80001cb4:	02513023          	sd	t0,32(sp)
    80001cb8:	02613423          	sd	t1,40(sp)
    80001cbc:	02713823          	sd	t2,48(sp)
    80001cc0:	02813c23          	sd	s0,56(sp)
    80001cc4:	04913023          	sd	s1,64(sp)
    80001cc8:	04a13423          	sd	a0,72(sp)
    80001ccc:	04b13823          	sd	a1,80(sp)
    80001cd0:	04c13c23          	sd	a2,88(sp)
    80001cd4:	06d13023          	sd	a3,96(sp)
    80001cd8:	06e13423          	sd	a4,104(sp)
    80001cdc:	06f13823          	sd	a5,112(sp)
    80001ce0:	07013c23          	sd	a6,120(sp)
    80001ce4:	09113023          	sd	a7,128(sp)
    80001ce8:	09213423          	sd	s2,136(sp)
    80001cec:	09313823          	sd	s3,144(sp)
    80001cf0:	09413c23          	sd	s4,152(sp)
    80001cf4:	0b513023          	sd	s5,160(sp)
    80001cf8:	0b613423          	sd	s6,168(sp)
    80001cfc:	0b713823          	sd	s7,176(sp)
    80001d00:	0b813c23          	sd	s8,184(sp)
    80001d04:	0d913023          	sd	s9,192(sp)
    80001d08:	0da13423          	sd	s10,200(sp)
    80001d0c:	0db13823          	sd	s11,208(sp)
    80001d10:	0dc13c23          	sd	t3,216(sp)
    80001d14:	0fd13023          	sd	t4,224(sp)
    80001d18:	0fe13423          	sd	t5,232(sp)
    80001d1c:	0ff13823          	sd	t6,240(sp)
    80001d20:	cc9ff0ef          	jal	ra,800019e8 <kerneltrap>
    80001d24:	00013083          	ld	ra,0(sp)
    80001d28:	00813103          	ld	sp,8(sp)
    80001d2c:	01013183          	ld	gp,16(sp)
    80001d30:	02013283          	ld	t0,32(sp)
    80001d34:	02813303          	ld	t1,40(sp)
    80001d38:	03013383          	ld	t2,48(sp)
    80001d3c:	03813403          	ld	s0,56(sp)
    80001d40:	04013483          	ld	s1,64(sp)
    80001d44:	04813503          	ld	a0,72(sp)
    80001d48:	05013583          	ld	a1,80(sp)
    80001d4c:	05813603          	ld	a2,88(sp)
    80001d50:	06013683          	ld	a3,96(sp)
    80001d54:	06813703          	ld	a4,104(sp)
    80001d58:	07013783          	ld	a5,112(sp)
    80001d5c:	07813803          	ld	a6,120(sp)
    80001d60:	08013883          	ld	a7,128(sp)
    80001d64:	08813903          	ld	s2,136(sp)
    80001d68:	09013983          	ld	s3,144(sp)
    80001d6c:	09813a03          	ld	s4,152(sp)
    80001d70:	0a013a83          	ld	s5,160(sp)
    80001d74:	0a813b03          	ld	s6,168(sp)
    80001d78:	0b013b83          	ld	s7,176(sp)
    80001d7c:	0b813c03          	ld	s8,184(sp)
    80001d80:	0c013c83          	ld	s9,192(sp)
    80001d84:	0c813d03          	ld	s10,200(sp)
    80001d88:	0d013d83          	ld	s11,208(sp)
    80001d8c:	0d813e03          	ld	t3,216(sp)
    80001d90:	0e013e83          	ld	t4,224(sp)
    80001d94:	0e813f03          	ld	t5,232(sp)
    80001d98:	0f013f83          	ld	t6,240(sp)
    80001d9c:	10010113          	addi	sp,sp,256
    80001da0:	10200073          	sret
    80001da4:	00000013          	nop
    80001da8:	00000013          	nop
    80001dac:	00000013          	nop

0000000080001db0 <timervec>:
    80001db0:	34051573          	csrrw	a0,mscratch,a0
    80001db4:	00b53023          	sd	a1,0(a0)
    80001db8:	00c53423          	sd	a2,8(a0)
    80001dbc:	00d53823          	sd	a3,16(a0)
    80001dc0:	01853583          	ld	a1,24(a0)
    80001dc4:	02053603          	ld	a2,32(a0)
    80001dc8:	0005b683          	ld	a3,0(a1)
    80001dcc:	00c686b3          	add	a3,a3,a2
    80001dd0:	00d5b023          	sd	a3,0(a1)
    80001dd4:	00200593          	li	a1,2
    80001dd8:	14459073          	csrw	sip,a1
    80001ddc:	01053683          	ld	a3,16(a0)
    80001de0:	00853603          	ld	a2,8(a0)
    80001de4:	00053583          	ld	a1,0(a0)
    80001de8:	34051573          	csrrw	a0,mscratch,a0
    80001dec:	30200073          	mret

0000000080001df0 <plicinit>:
    80001df0:	ff010113          	addi	sp,sp,-16
    80001df4:	00813423          	sd	s0,8(sp)
    80001df8:	01010413          	addi	s0,sp,16
    80001dfc:	00813403          	ld	s0,8(sp)
    80001e00:	0c0007b7          	lui	a5,0xc000
    80001e04:	00100713          	li	a4,1
    80001e08:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e0c:	00e7a223          	sw	a4,4(a5)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <plicinithart>:
    80001e18:	ff010113          	addi	sp,sp,-16
    80001e1c:	00813023          	sd	s0,0(sp)
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	01010413          	addi	s0,sp,16
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	a40080e7          	jalr	-1472(ra) # 80001868 <cpuid>
    80001e30:	0085171b          	slliw	a4,a0,0x8
    80001e34:	0c0027b7          	lui	a5,0xc002
    80001e38:	00e787b3          	add	a5,a5,a4
    80001e3c:	40200713          	li	a4,1026
    80001e40:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001e44:	00813083          	ld	ra,8(sp)
    80001e48:	00013403          	ld	s0,0(sp)
    80001e4c:	00d5151b          	slliw	a0,a0,0xd
    80001e50:	0c2017b7          	lui	a5,0xc201
    80001e54:	00a78533          	add	a0,a5,a0
    80001e58:	00052023          	sw	zero,0(a0)
    80001e5c:	01010113          	addi	sp,sp,16
    80001e60:	00008067          	ret

0000000080001e64 <plic_claim>:
    80001e64:	ff010113          	addi	sp,sp,-16
    80001e68:	00813023          	sd	s0,0(sp)
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	01010413          	addi	s0,sp,16
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	9f4080e7          	jalr	-1548(ra) # 80001868 <cpuid>
    80001e7c:	00813083          	ld	ra,8(sp)
    80001e80:	00013403          	ld	s0,0(sp)
    80001e84:	00d5151b          	slliw	a0,a0,0xd
    80001e88:	0c2017b7          	lui	a5,0xc201
    80001e8c:	00a78533          	add	a0,a5,a0
    80001e90:	00452503          	lw	a0,4(a0)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <plic_complete>:
    80001e9c:	fe010113          	addi	sp,sp,-32
    80001ea0:	00813823          	sd	s0,16(sp)
    80001ea4:	00913423          	sd	s1,8(sp)
    80001ea8:	00113c23          	sd	ra,24(sp)
    80001eac:	02010413          	addi	s0,sp,32
    80001eb0:	00050493          	mv	s1,a0
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	9b4080e7          	jalr	-1612(ra) # 80001868 <cpuid>
    80001ebc:	01813083          	ld	ra,24(sp)
    80001ec0:	01013403          	ld	s0,16(sp)
    80001ec4:	00d5179b          	slliw	a5,a0,0xd
    80001ec8:	0c201737          	lui	a4,0xc201
    80001ecc:	00f707b3          	add	a5,a4,a5
    80001ed0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001ed4:	00813483          	ld	s1,8(sp)
    80001ed8:	02010113          	addi	sp,sp,32
    80001edc:	00008067          	ret

0000000080001ee0 <consolewrite>:
    80001ee0:	fb010113          	addi	sp,sp,-80
    80001ee4:	04813023          	sd	s0,64(sp)
    80001ee8:	04113423          	sd	ra,72(sp)
    80001eec:	02913c23          	sd	s1,56(sp)
    80001ef0:	03213823          	sd	s2,48(sp)
    80001ef4:	03313423          	sd	s3,40(sp)
    80001ef8:	03413023          	sd	s4,32(sp)
    80001efc:	01513c23          	sd	s5,24(sp)
    80001f00:	05010413          	addi	s0,sp,80
    80001f04:	06c05c63          	blez	a2,80001f7c <consolewrite+0x9c>
    80001f08:	00060993          	mv	s3,a2
    80001f0c:	00050a13          	mv	s4,a0
    80001f10:	00058493          	mv	s1,a1
    80001f14:	00000913          	li	s2,0
    80001f18:	fff00a93          	li	s5,-1
    80001f1c:	01c0006f          	j	80001f38 <consolewrite+0x58>
    80001f20:	fbf44503          	lbu	a0,-65(s0)
    80001f24:	0019091b          	addiw	s2,s2,1
    80001f28:	00148493          	addi	s1,s1,1
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	a9c080e7          	jalr	-1380(ra) # 800029c8 <uartputc>
    80001f34:	03298063          	beq	s3,s2,80001f54 <consolewrite+0x74>
    80001f38:	00048613          	mv	a2,s1
    80001f3c:	00100693          	li	a3,1
    80001f40:	000a0593          	mv	a1,s4
    80001f44:	fbf40513          	addi	a0,s0,-65
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	9d8080e7          	jalr	-1576(ra) # 80001920 <either_copyin>
    80001f50:	fd5518e3          	bne	a0,s5,80001f20 <consolewrite+0x40>
    80001f54:	04813083          	ld	ra,72(sp)
    80001f58:	04013403          	ld	s0,64(sp)
    80001f5c:	03813483          	ld	s1,56(sp)
    80001f60:	02813983          	ld	s3,40(sp)
    80001f64:	02013a03          	ld	s4,32(sp)
    80001f68:	01813a83          	ld	s5,24(sp)
    80001f6c:	00090513          	mv	a0,s2
    80001f70:	03013903          	ld	s2,48(sp)
    80001f74:	05010113          	addi	sp,sp,80
    80001f78:	00008067          	ret
    80001f7c:	00000913          	li	s2,0
    80001f80:	fd5ff06f          	j	80001f54 <consolewrite+0x74>

0000000080001f84 <consoleread>:
    80001f84:	f9010113          	addi	sp,sp,-112
    80001f88:	06813023          	sd	s0,96(sp)
    80001f8c:	04913c23          	sd	s1,88(sp)
    80001f90:	05213823          	sd	s2,80(sp)
    80001f94:	05313423          	sd	s3,72(sp)
    80001f98:	05413023          	sd	s4,64(sp)
    80001f9c:	03513c23          	sd	s5,56(sp)
    80001fa0:	03613823          	sd	s6,48(sp)
    80001fa4:	03713423          	sd	s7,40(sp)
    80001fa8:	03813023          	sd	s8,32(sp)
    80001fac:	06113423          	sd	ra,104(sp)
    80001fb0:	01913c23          	sd	s9,24(sp)
    80001fb4:	07010413          	addi	s0,sp,112
    80001fb8:	00060b93          	mv	s7,a2
    80001fbc:	00050913          	mv	s2,a0
    80001fc0:	00058c13          	mv	s8,a1
    80001fc4:	00060b1b          	sext.w	s6,a2
    80001fc8:	00003497          	auipc	s1,0x3
    80001fcc:	6e048493          	addi	s1,s1,1760 # 800056a8 <cons>
    80001fd0:	00400993          	li	s3,4
    80001fd4:	fff00a13          	li	s4,-1
    80001fd8:	00a00a93          	li	s5,10
    80001fdc:	05705e63          	blez	s7,80002038 <consoleread+0xb4>
    80001fe0:	09c4a703          	lw	a4,156(s1)
    80001fe4:	0984a783          	lw	a5,152(s1)
    80001fe8:	0007071b          	sext.w	a4,a4
    80001fec:	08e78463          	beq	a5,a4,80002074 <consoleread+0xf0>
    80001ff0:	07f7f713          	andi	a4,a5,127
    80001ff4:	00e48733          	add	a4,s1,a4
    80001ff8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001ffc:	0017869b          	addiw	a3,a5,1
    80002000:	08d4ac23          	sw	a3,152(s1)
    80002004:	00070c9b          	sext.w	s9,a4
    80002008:	0b370663          	beq	a4,s3,800020b4 <consoleread+0x130>
    8000200c:	00100693          	li	a3,1
    80002010:	f9f40613          	addi	a2,s0,-97
    80002014:	000c0593          	mv	a1,s8
    80002018:	00090513          	mv	a0,s2
    8000201c:	f8e40fa3          	sb	a4,-97(s0)
    80002020:	00000097          	auipc	ra,0x0
    80002024:	8b4080e7          	jalr	-1868(ra) # 800018d4 <either_copyout>
    80002028:	01450863          	beq	a0,s4,80002038 <consoleread+0xb4>
    8000202c:	001c0c13          	addi	s8,s8,1
    80002030:	fffb8b9b          	addiw	s7,s7,-1
    80002034:	fb5c94e3          	bne	s9,s5,80001fdc <consoleread+0x58>
    80002038:	000b851b          	sext.w	a0,s7
    8000203c:	06813083          	ld	ra,104(sp)
    80002040:	06013403          	ld	s0,96(sp)
    80002044:	05813483          	ld	s1,88(sp)
    80002048:	05013903          	ld	s2,80(sp)
    8000204c:	04813983          	ld	s3,72(sp)
    80002050:	04013a03          	ld	s4,64(sp)
    80002054:	03813a83          	ld	s5,56(sp)
    80002058:	02813b83          	ld	s7,40(sp)
    8000205c:	02013c03          	ld	s8,32(sp)
    80002060:	01813c83          	ld	s9,24(sp)
    80002064:	40ab053b          	subw	a0,s6,a0
    80002068:	03013b03          	ld	s6,48(sp)
    8000206c:	07010113          	addi	sp,sp,112
    80002070:	00008067          	ret
    80002074:	00001097          	auipc	ra,0x1
    80002078:	1d8080e7          	jalr	472(ra) # 8000324c <push_on>
    8000207c:	0984a703          	lw	a4,152(s1)
    80002080:	09c4a783          	lw	a5,156(s1)
    80002084:	0007879b          	sext.w	a5,a5
    80002088:	fef70ce3          	beq	a4,a5,80002080 <consoleread+0xfc>
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	234080e7          	jalr	564(ra) # 800032c0 <pop_on>
    80002094:	0984a783          	lw	a5,152(s1)
    80002098:	07f7f713          	andi	a4,a5,127
    8000209c:	00e48733          	add	a4,s1,a4
    800020a0:	01874703          	lbu	a4,24(a4)
    800020a4:	0017869b          	addiw	a3,a5,1
    800020a8:	08d4ac23          	sw	a3,152(s1)
    800020ac:	00070c9b          	sext.w	s9,a4
    800020b0:	f5371ee3          	bne	a4,s3,8000200c <consoleread+0x88>
    800020b4:	000b851b          	sext.w	a0,s7
    800020b8:	f96bf2e3          	bgeu	s7,s6,8000203c <consoleread+0xb8>
    800020bc:	08f4ac23          	sw	a5,152(s1)
    800020c0:	f7dff06f          	j	8000203c <consoleread+0xb8>

00000000800020c4 <consputc>:
    800020c4:	10000793          	li	a5,256
    800020c8:	00f50663          	beq	a0,a5,800020d4 <consputc+0x10>
    800020cc:	00001317          	auipc	t1,0x1
    800020d0:	9f430067          	jr	-1548(t1) # 80002ac0 <uartputc_sync>
    800020d4:	ff010113          	addi	sp,sp,-16
    800020d8:	00113423          	sd	ra,8(sp)
    800020dc:	00813023          	sd	s0,0(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	00800513          	li	a0,8
    800020e8:	00001097          	auipc	ra,0x1
    800020ec:	9d8080e7          	jalr	-1576(ra) # 80002ac0 <uartputc_sync>
    800020f0:	02000513          	li	a0,32
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	9cc080e7          	jalr	-1588(ra) # 80002ac0 <uartputc_sync>
    800020fc:	00013403          	ld	s0,0(sp)
    80002100:	00813083          	ld	ra,8(sp)
    80002104:	00800513          	li	a0,8
    80002108:	01010113          	addi	sp,sp,16
    8000210c:	00001317          	auipc	t1,0x1
    80002110:	9b430067          	jr	-1612(t1) # 80002ac0 <uartputc_sync>

0000000080002114 <consoleintr>:
    80002114:	fe010113          	addi	sp,sp,-32
    80002118:	00813823          	sd	s0,16(sp)
    8000211c:	00913423          	sd	s1,8(sp)
    80002120:	01213023          	sd	s2,0(sp)
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	02010413          	addi	s0,sp,32
    8000212c:	00003917          	auipc	s2,0x3
    80002130:	57c90913          	addi	s2,s2,1404 # 800056a8 <cons>
    80002134:	00050493          	mv	s1,a0
    80002138:	00090513          	mv	a0,s2
    8000213c:	00001097          	auipc	ra,0x1
    80002140:	e40080e7          	jalr	-448(ra) # 80002f7c <acquire>
    80002144:	02048c63          	beqz	s1,8000217c <consoleintr+0x68>
    80002148:	0a092783          	lw	a5,160(s2)
    8000214c:	09892703          	lw	a4,152(s2)
    80002150:	07f00693          	li	a3,127
    80002154:	40e7873b          	subw	a4,a5,a4
    80002158:	02e6e263          	bltu	a3,a4,8000217c <consoleintr+0x68>
    8000215c:	00d00713          	li	a4,13
    80002160:	04e48063          	beq	s1,a4,800021a0 <consoleintr+0x8c>
    80002164:	07f7f713          	andi	a4,a5,127
    80002168:	00e90733          	add	a4,s2,a4
    8000216c:	0017879b          	addiw	a5,a5,1
    80002170:	0af92023          	sw	a5,160(s2)
    80002174:	00970c23          	sb	s1,24(a4)
    80002178:	08f92e23          	sw	a5,156(s2)
    8000217c:	01013403          	ld	s0,16(sp)
    80002180:	01813083          	ld	ra,24(sp)
    80002184:	00813483          	ld	s1,8(sp)
    80002188:	00013903          	ld	s2,0(sp)
    8000218c:	00003517          	auipc	a0,0x3
    80002190:	51c50513          	addi	a0,a0,1308 # 800056a8 <cons>
    80002194:	02010113          	addi	sp,sp,32
    80002198:	00001317          	auipc	t1,0x1
    8000219c:	eb030067          	jr	-336(t1) # 80003048 <release>
    800021a0:	00a00493          	li	s1,10
    800021a4:	fc1ff06f          	j	80002164 <consoleintr+0x50>

00000000800021a8 <consoleinit>:
    800021a8:	fe010113          	addi	sp,sp,-32
    800021ac:	00113c23          	sd	ra,24(sp)
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	02010413          	addi	s0,sp,32
    800021bc:	00003497          	auipc	s1,0x3
    800021c0:	4ec48493          	addi	s1,s1,1260 # 800056a8 <cons>
    800021c4:	00048513          	mv	a0,s1
    800021c8:	00002597          	auipc	a1,0x2
    800021cc:	f7058593          	addi	a1,a1,-144 # 80004138 <_ZZ12printIntegermE6digits+0x138>
    800021d0:	00001097          	auipc	ra,0x1
    800021d4:	d88080e7          	jalr	-632(ra) # 80002f58 <initlock>
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	7ac080e7          	jalr	1964(ra) # 80002984 <uartinit>
    800021e0:	01813083          	ld	ra,24(sp)
    800021e4:	01013403          	ld	s0,16(sp)
    800021e8:	00000797          	auipc	a5,0x0
    800021ec:	d9c78793          	addi	a5,a5,-612 # 80001f84 <consoleread>
    800021f0:	0af4bc23          	sd	a5,184(s1)
    800021f4:	00000797          	auipc	a5,0x0
    800021f8:	cec78793          	addi	a5,a5,-788 # 80001ee0 <consolewrite>
    800021fc:	0cf4b023          	sd	a5,192(s1)
    80002200:	00813483          	ld	s1,8(sp)
    80002204:	02010113          	addi	sp,sp,32
    80002208:	00008067          	ret

000000008000220c <console_read>:
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00813423          	sd	s0,8(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00813403          	ld	s0,8(sp)
    8000221c:	00003317          	auipc	t1,0x3
    80002220:	54433303          	ld	t1,1348(t1) # 80005760 <devsw+0x10>
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00030067          	jr	t1

000000008000222c <console_write>:
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	00003317          	auipc	t1,0x3
    80002240:	52c33303          	ld	t1,1324(t1) # 80005768 <devsw+0x18>
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00030067          	jr	t1

000000008000224c <panic>:
    8000224c:	fe010113          	addi	sp,sp,-32
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	00913423          	sd	s1,8(sp)
    8000225c:	02010413          	addi	s0,sp,32
    80002260:	00050493          	mv	s1,a0
    80002264:	00002517          	auipc	a0,0x2
    80002268:	edc50513          	addi	a0,a0,-292 # 80004140 <_ZZ12printIntegermE6digits+0x140>
    8000226c:	00003797          	auipc	a5,0x3
    80002270:	5807ae23          	sw	zero,1436(a5) # 80005808 <pr+0x18>
    80002274:	00000097          	auipc	ra,0x0
    80002278:	034080e7          	jalr	52(ra) # 800022a8 <__printf>
    8000227c:	00048513          	mv	a0,s1
    80002280:	00000097          	auipc	ra,0x0
    80002284:	028080e7          	jalr	40(ra) # 800022a8 <__printf>
    80002288:	00002517          	auipc	a0,0x2
    8000228c:	e9850513          	addi	a0,a0,-360 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80002290:	00000097          	auipc	ra,0x0
    80002294:	018080e7          	jalr	24(ra) # 800022a8 <__printf>
    80002298:	00100793          	li	a5,1
    8000229c:	00002717          	auipc	a4,0x2
    800022a0:	2ef72e23          	sw	a5,764(a4) # 80004598 <panicked>
    800022a4:	0000006f          	j	800022a4 <panic+0x58>

00000000800022a8 <__printf>:
    800022a8:	f3010113          	addi	sp,sp,-208
    800022ac:	08813023          	sd	s0,128(sp)
    800022b0:	07313423          	sd	s3,104(sp)
    800022b4:	09010413          	addi	s0,sp,144
    800022b8:	05813023          	sd	s8,64(sp)
    800022bc:	08113423          	sd	ra,136(sp)
    800022c0:	06913c23          	sd	s1,120(sp)
    800022c4:	07213823          	sd	s2,112(sp)
    800022c8:	07413023          	sd	s4,96(sp)
    800022cc:	05513c23          	sd	s5,88(sp)
    800022d0:	05613823          	sd	s6,80(sp)
    800022d4:	05713423          	sd	s7,72(sp)
    800022d8:	03913c23          	sd	s9,56(sp)
    800022dc:	03a13823          	sd	s10,48(sp)
    800022e0:	03b13423          	sd	s11,40(sp)
    800022e4:	00003317          	auipc	t1,0x3
    800022e8:	50c30313          	addi	t1,t1,1292 # 800057f0 <pr>
    800022ec:	01832c03          	lw	s8,24(t1)
    800022f0:	00b43423          	sd	a1,8(s0)
    800022f4:	00c43823          	sd	a2,16(s0)
    800022f8:	00d43c23          	sd	a3,24(s0)
    800022fc:	02e43023          	sd	a4,32(s0)
    80002300:	02f43423          	sd	a5,40(s0)
    80002304:	03043823          	sd	a6,48(s0)
    80002308:	03143c23          	sd	a7,56(s0)
    8000230c:	00050993          	mv	s3,a0
    80002310:	4a0c1663          	bnez	s8,800027bc <__printf+0x514>
    80002314:	60098c63          	beqz	s3,8000292c <__printf+0x684>
    80002318:	0009c503          	lbu	a0,0(s3)
    8000231c:	00840793          	addi	a5,s0,8
    80002320:	f6f43c23          	sd	a5,-136(s0)
    80002324:	00000493          	li	s1,0
    80002328:	22050063          	beqz	a0,80002548 <__printf+0x2a0>
    8000232c:	00002a37          	lui	s4,0x2
    80002330:	00018ab7          	lui	s5,0x18
    80002334:	000f4b37          	lui	s6,0xf4
    80002338:	00989bb7          	lui	s7,0x989
    8000233c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002340:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002344:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002348:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000234c:	00148c9b          	addiw	s9,s1,1
    80002350:	02500793          	li	a5,37
    80002354:	01998933          	add	s2,s3,s9
    80002358:	38f51263          	bne	a0,a5,800026dc <__printf+0x434>
    8000235c:	00094783          	lbu	a5,0(s2)
    80002360:	00078c9b          	sext.w	s9,a5
    80002364:	1e078263          	beqz	a5,80002548 <__printf+0x2a0>
    80002368:	0024849b          	addiw	s1,s1,2
    8000236c:	07000713          	li	a4,112
    80002370:	00998933          	add	s2,s3,s1
    80002374:	38e78a63          	beq	a5,a4,80002708 <__printf+0x460>
    80002378:	20f76863          	bltu	a4,a5,80002588 <__printf+0x2e0>
    8000237c:	42a78863          	beq	a5,a0,800027ac <__printf+0x504>
    80002380:	06400713          	li	a4,100
    80002384:	40e79663          	bne	a5,a4,80002790 <__printf+0x4e8>
    80002388:	f7843783          	ld	a5,-136(s0)
    8000238c:	0007a603          	lw	a2,0(a5)
    80002390:	00878793          	addi	a5,a5,8
    80002394:	f6f43c23          	sd	a5,-136(s0)
    80002398:	42064a63          	bltz	a2,800027cc <__printf+0x524>
    8000239c:	00a00713          	li	a4,10
    800023a0:	02e677bb          	remuw	a5,a2,a4
    800023a4:	00002d97          	auipc	s11,0x2
    800023a8:	dc4d8d93          	addi	s11,s11,-572 # 80004168 <digits>
    800023ac:	00900593          	li	a1,9
    800023b0:	0006051b          	sext.w	a0,a2
    800023b4:	00000c93          	li	s9,0
    800023b8:	02079793          	slli	a5,a5,0x20
    800023bc:	0207d793          	srli	a5,a5,0x20
    800023c0:	00fd87b3          	add	a5,s11,a5
    800023c4:	0007c783          	lbu	a5,0(a5)
    800023c8:	02e656bb          	divuw	a3,a2,a4
    800023cc:	f8f40023          	sb	a5,-128(s0)
    800023d0:	14c5d863          	bge	a1,a2,80002520 <__printf+0x278>
    800023d4:	06300593          	li	a1,99
    800023d8:	00100c93          	li	s9,1
    800023dc:	02e6f7bb          	remuw	a5,a3,a4
    800023e0:	02079793          	slli	a5,a5,0x20
    800023e4:	0207d793          	srli	a5,a5,0x20
    800023e8:	00fd87b3          	add	a5,s11,a5
    800023ec:	0007c783          	lbu	a5,0(a5)
    800023f0:	02e6d73b          	divuw	a4,a3,a4
    800023f4:	f8f400a3          	sb	a5,-127(s0)
    800023f8:	12a5f463          	bgeu	a1,a0,80002520 <__printf+0x278>
    800023fc:	00a00693          	li	a3,10
    80002400:	00900593          	li	a1,9
    80002404:	02d777bb          	remuw	a5,a4,a3
    80002408:	02079793          	slli	a5,a5,0x20
    8000240c:	0207d793          	srli	a5,a5,0x20
    80002410:	00fd87b3          	add	a5,s11,a5
    80002414:	0007c503          	lbu	a0,0(a5)
    80002418:	02d757bb          	divuw	a5,a4,a3
    8000241c:	f8a40123          	sb	a0,-126(s0)
    80002420:	48e5f263          	bgeu	a1,a4,800028a4 <__printf+0x5fc>
    80002424:	06300513          	li	a0,99
    80002428:	02d7f5bb          	remuw	a1,a5,a3
    8000242c:	02059593          	slli	a1,a1,0x20
    80002430:	0205d593          	srli	a1,a1,0x20
    80002434:	00bd85b3          	add	a1,s11,a1
    80002438:	0005c583          	lbu	a1,0(a1)
    8000243c:	02d7d7bb          	divuw	a5,a5,a3
    80002440:	f8b401a3          	sb	a1,-125(s0)
    80002444:	48e57263          	bgeu	a0,a4,800028c8 <__printf+0x620>
    80002448:	3e700513          	li	a0,999
    8000244c:	02d7f5bb          	remuw	a1,a5,a3
    80002450:	02059593          	slli	a1,a1,0x20
    80002454:	0205d593          	srli	a1,a1,0x20
    80002458:	00bd85b3          	add	a1,s11,a1
    8000245c:	0005c583          	lbu	a1,0(a1)
    80002460:	02d7d7bb          	divuw	a5,a5,a3
    80002464:	f8b40223          	sb	a1,-124(s0)
    80002468:	46e57663          	bgeu	a0,a4,800028d4 <__printf+0x62c>
    8000246c:	02d7f5bb          	remuw	a1,a5,a3
    80002470:	02059593          	slli	a1,a1,0x20
    80002474:	0205d593          	srli	a1,a1,0x20
    80002478:	00bd85b3          	add	a1,s11,a1
    8000247c:	0005c583          	lbu	a1,0(a1)
    80002480:	02d7d7bb          	divuw	a5,a5,a3
    80002484:	f8b402a3          	sb	a1,-123(s0)
    80002488:	46ea7863          	bgeu	s4,a4,800028f8 <__printf+0x650>
    8000248c:	02d7f5bb          	remuw	a1,a5,a3
    80002490:	02059593          	slli	a1,a1,0x20
    80002494:	0205d593          	srli	a1,a1,0x20
    80002498:	00bd85b3          	add	a1,s11,a1
    8000249c:	0005c583          	lbu	a1,0(a1)
    800024a0:	02d7d7bb          	divuw	a5,a5,a3
    800024a4:	f8b40323          	sb	a1,-122(s0)
    800024a8:	3eeaf863          	bgeu	s5,a4,80002898 <__printf+0x5f0>
    800024ac:	02d7f5bb          	remuw	a1,a5,a3
    800024b0:	02059593          	slli	a1,a1,0x20
    800024b4:	0205d593          	srli	a1,a1,0x20
    800024b8:	00bd85b3          	add	a1,s11,a1
    800024bc:	0005c583          	lbu	a1,0(a1)
    800024c0:	02d7d7bb          	divuw	a5,a5,a3
    800024c4:	f8b403a3          	sb	a1,-121(s0)
    800024c8:	42eb7e63          	bgeu	s6,a4,80002904 <__printf+0x65c>
    800024cc:	02d7f5bb          	remuw	a1,a5,a3
    800024d0:	02059593          	slli	a1,a1,0x20
    800024d4:	0205d593          	srli	a1,a1,0x20
    800024d8:	00bd85b3          	add	a1,s11,a1
    800024dc:	0005c583          	lbu	a1,0(a1)
    800024e0:	02d7d7bb          	divuw	a5,a5,a3
    800024e4:	f8b40423          	sb	a1,-120(s0)
    800024e8:	42ebfc63          	bgeu	s7,a4,80002920 <__printf+0x678>
    800024ec:	02079793          	slli	a5,a5,0x20
    800024f0:	0207d793          	srli	a5,a5,0x20
    800024f4:	00fd8db3          	add	s11,s11,a5
    800024f8:	000dc703          	lbu	a4,0(s11)
    800024fc:	00a00793          	li	a5,10
    80002500:	00900c93          	li	s9,9
    80002504:	f8e404a3          	sb	a4,-119(s0)
    80002508:	00065c63          	bgez	a2,80002520 <__printf+0x278>
    8000250c:	f9040713          	addi	a4,s0,-112
    80002510:	00f70733          	add	a4,a4,a5
    80002514:	02d00693          	li	a3,45
    80002518:	fed70823          	sb	a3,-16(a4)
    8000251c:	00078c93          	mv	s9,a5
    80002520:	f8040793          	addi	a5,s0,-128
    80002524:	01978cb3          	add	s9,a5,s9
    80002528:	f7f40d13          	addi	s10,s0,-129
    8000252c:	000cc503          	lbu	a0,0(s9)
    80002530:	fffc8c93          	addi	s9,s9,-1
    80002534:	00000097          	auipc	ra,0x0
    80002538:	b90080e7          	jalr	-1136(ra) # 800020c4 <consputc>
    8000253c:	ffac98e3          	bne	s9,s10,8000252c <__printf+0x284>
    80002540:	00094503          	lbu	a0,0(s2)
    80002544:	e00514e3          	bnez	a0,8000234c <__printf+0xa4>
    80002548:	1a0c1663          	bnez	s8,800026f4 <__printf+0x44c>
    8000254c:	08813083          	ld	ra,136(sp)
    80002550:	08013403          	ld	s0,128(sp)
    80002554:	07813483          	ld	s1,120(sp)
    80002558:	07013903          	ld	s2,112(sp)
    8000255c:	06813983          	ld	s3,104(sp)
    80002560:	06013a03          	ld	s4,96(sp)
    80002564:	05813a83          	ld	s5,88(sp)
    80002568:	05013b03          	ld	s6,80(sp)
    8000256c:	04813b83          	ld	s7,72(sp)
    80002570:	04013c03          	ld	s8,64(sp)
    80002574:	03813c83          	ld	s9,56(sp)
    80002578:	03013d03          	ld	s10,48(sp)
    8000257c:	02813d83          	ld	s11,40(sp)
    80002580:	0d010113          	addi	sp,sp,208
    80002584:	00008067          	ret
    80002588:	07300713          	li	a4,115
    8000258c:	1ce78a63          	beq	a5,a4,80002760 <__printf+0x4b8>
    80002590:	07800713          	li	a4,120
    80002594:	1ee79e63          	bne	a5,a4,80002790 <__printf+0x4e8>
    80002598:	f7843783          	ld	a5,-136(s0)
    8000259c:	0007a703          	lw	a4,0(a5)
    800025a0:	00878793          	addi	a5,a5,8
    800025a4:	f6f43c23          	sd	a5,-136(s0)
    800025a8:	28074263          	bltz	a4,8000282c <__printf+0x584>
    800025ac:	00002d97          	auipc	s11,0x2
    800025b0:	bbcd8d93          	addi	s11,s11,-1092 # 80004168 <digits>
    800025b4:	00f77793          	andi	a5,a4,15
    800025b8:	00fd87b3          	add	a5,s11,a5
    800025bc:	0007c683          	lbu	a3,0(a5)
    800025c0:	00f00613          	li	a2,15
    800025c4:	0007079b          	sext.w	a5,a4
    800025c8:	f8d40023          	sb	a3,-128(s0)
    800025cc:	0047559b          	srliw	a1,a4,0x4
    800025d0:	0047569b          	srliw	a3,a4,0x4
    800025d4:	00000c93          	li	s9,0
    800025d8:	0ee65063          	bge	a2,a4,800026b8 <__printf+0x410>
    800025dc:	00f6f693          	andi	a3,a3,15
    800025e0:	00dd86b3          	add	a3,s11,a3
    800025e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800025e8:	0087d79b          	srliw	a5,a5,0x8
    800025ec:	00100c93          	li	s9,1
    800025f0:	f8d400a3          	sb	a3,-127(s0)
    800025f4:	0cb67263          	bgeu	a2,a1,800026b8 <__printf+0x410>
    800025f8:	00f7f693          	andi	a3,a5,15
    800025fc:	00dd86b3          	add	a3,s11,a3
    80002600:	0006c583          	lbu	a1,0(a3)
    80002604:	00f00613          	li	a2,15
    80002608:	0047d69b          	srliw	a3,a5,0x4
    8000260c:	f8b40123          	sb	a1,-126(s0)
    80002610:	0047d593          	srli	a1,a5,0x4
    80002614:	28f67e63          	bgeu	a2,a5,800028b0 <__printf+0x608>
    80002618:	00f6f693          	andi	a3,a3,15
    8000261c:	00dd86b3          	add	a3,s11,a3
    80002620:	0006c503          	lbu	a0,0(a3)
    80002624:	0087d813          	srli	a6,a5,0x8
    80002628:	0087d69b          	srliw	a3,a5,0x8
    8000262c:	f8a401a3          	sb	a0,-125(s0)
    80002630:	28b67663          	bgeu	a2,a1,800028bc <__printf+0x614>
    80002634:	00f6f693          	andi	a3,a3,15
    80002638:	00dd86b3          	add	a3,s11,a3
    8000263c:	0006c583          	lbu	a1,0(a3)
    80002640:	00c7d513          	srli	a0,a5,0xc
    80002644:	00c7d69b          	srliw	a3,a5,0xc
    80002648:	f8b40223          	sb	a1,-124(s0)
    8000264c:	29067a63          	bgeu	a2,a6,800028e0 <__printf+0x638>
    80002650:	00f6f693          	andi	a3,a3,15
    80002654:	00dd86b3          	add	a3,s11,a3
    80002658:	0006c583          	lbu	a1,0(a3)
    8000265c:	0107d813          	srli	a6,a5,0x10
    80002660:	0107d69b          	srliw	a3,a5,0x10
    80002664:	f8b402a3          	sb	a1,-123(s0)
    80002668:	28a67263          	bgeu	a2,a0,800028ec <__printf+0x644>
    8000266c:	00f6f693          	andi	a3,a3,15
    80002670:	00dd86b3          	add	a3,s11,a3
    80002674:	0006c683          	lbu	a3,0(a3)
    80002678:	0147d79b          	srliw	a5,a5,0x14
    8000267c:	f8d40323          	sb	a3,-122(s0)
    80002680:	21067663          	bgeu	a2,a6,8000288c <__printf+0x5e4>
    80002684:	02079793          	slli	a5,a5,0x20
    80002688:	0207d793          	srli	a5,a5,0x20
    8000268c:	00fd8db3          	add	s11,s11,a5
    80002690:	000dc683          	lbu	a3,0(s11)
    80002694:	00800793          	li	a5,8
    80002698:	00700c93          	li	s9,7
    8000269c:	f8d403a3          	sb	a3,-121(s0)
    800026a0:	00075c63          	bgez	a4,800026b8 <__printf+0x410>
    800026a4:	f9040713          	addi	a4,s0,-112
    800026a8:	00f70733          	add	a4,a4,a5
    800026ac:	02d00693          	li	a3,45
    800026b0:	fed70823          	sb	a3,-16(a4)
    800026b4:	00078c93          	mv	s9,a5
    800026b8:	f8040793          	addi	a5,s0,-128
    800026bc:	01978cb3          	add	s9,a5,s9
    800026c0:	f7f40d13          	addi	s10,s0,-129
    800026c4:	000cc503          	lbu	a0,0(s9)
    800026c8:	fffc8c93          	addi	s9,s9,-1
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	9f8080e7          	jalr	-1544(ra) # 800020c4 <consputc>
    800026d4:	ff9d18e3          	bne	s10,s9,800026c4 <__printf+0x41c>
    800026d8:	0100006f          	j	800026e8 <__printf+0x440>
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	9e8080e7          	jalr	-1560(ra) # 800020c4 <consputc>
    800026e4:	000c8493          	mv	s1,s9
    800026e8:	00094503          	lbu	a0,0(s2)
    800026ec:	c60510e3          	bnez	a0,8000234c <__printf+0xa4>
    800026f0:	e40c0ee3          	beqz	s8,8000254c <__printf+0x2a4>
    800026f4:	00003517          	auipc	a0,0x3
    800026f8:	0fc50513          	addi	a0,a0,252 # 800057f0 <pr>
    800026fc:	00001097          	auipc	ra,0x1
    80002700:	94c080e7          	jalr	-1716(ra) # 80003048 <release>
    80002704:	e49ff06f          	j	8000254c <__printf+0x2a4>
    80002708:	f7843783          	ld	a5,-136(s0)
    8000270c:	03000513          	li	a0,48
    80002710:	01000d13          	li	s10,16
    80002714:	00878713          	addi	a4,a5,8
    80002718:	0007bc83          	ld	s9,0(a5)
    8000271c:	f6e43c23          	sd	a4,-136(s0)
    80002720:	00000097          	auipc	ra,0x0
    80002724:	9a4080e7          	jalr	-1628(ra) # 800020c4 <consputc>
    80002728:	07800513          	li	a0,120
    8000272c:	00000097          	auipc	ra,0x0
    80002730:	998080e7          	jalr	-1640(ra) # 800020c4 <consputc>
    80002734:	00002d97          	auipc	s11,0x2
    80002738:	a34d8d93          	addi	s11,s11,-1484 # 80004168 <digits>
    8000273c:	03ccd793          	srli	a5,s9,0x3c
    80002740:	00fd87b3          	add	a5,s11,a5
    80002744:	0007c503          	lbu	a0,0(a5)
    80002748:	fffd0d1b          	addiw	s10,s10,-1
    8000274c:	004c9c93          	slli	s9,s9,0x4
    80002750:	00000097          	auipc	ra,0x0
    80002754:	974080e7          	jalr	-1676(ra) # 800020c4 <consputc>
    80002758:	fe0d12e3          	bnez	s10,8000273c <__printf+0x494>
    8000275c:	f8dff06f          	j	800026e8 <__printf+0x440>
    80002760:	f7843783          	ld	a5,-136(s0)
    80002764:	0007bc83          	ld	s9,0(a5)
    80002768:	00878793          	addi	a5,a5,8
    8000276c:	f6f43c23          	sd	a5,-136(s0)
    80002770:	000c9a63          	bnez	s9,80002784 <__printf+0x4dc>
    80002774:	1080006f          	j	8000287c <__printf+0x5d4>
    80002778:	001c8c93          	addi	s9,s9,1
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	948080e7          	jalr	-1720(ra) # 800020c4 <consputc>
    80002784:	000cc503          	lbu	a0,0(s9)
    80002788:	fe0518e3          	bnez	a0,80002778 <__printf+0x4d0>
    8000278c:	f5dff06f          	j	800026e8 <__printf+0x440>
    80002790:	02500513          	li	a0,37
    80002794:	00000097          	auipc	ra,0x0
    80002798:	930080e7          	jalr	-1744(ra) # 800020c4 <consputc>
    8000279c:	000c8513          	mv	a0,s9
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	924080e7          	jalr	-1756(ra) # 800020c4 <consputc>
    800027a8:	f41ff06f          	j	800026e8 <__printf+0x440>
    800027ac:	02500513          	li	a0,37
    800027b0:	00000097          	auipc	ra,0x0
    800027b4:	914080e7          	jalr	-1772(ra) # 800020c4 <consputc>
    800027b8:	f31ff06f          	j	800026e8 <__printf+0x440>
    800027bc:	00030513          	mv	a0,t1
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	7bc080e7          	jalr	1980(ra) # 80002f7c <acquire>
    800027c8:	b4dff06f          	j	80002314 <__printf+0x6c>
    800027cc:	40c0053b          	negw	a0,a2
    800027d0:	00a00713          	li	a4,10
    800027d4:	02e576bb          	remuw	a3,a0,a4
    800027d8:	00002d97          	auipc	s11,0x2
    800027dc:	990d8d93          	addi	s11,s11,-1648 # 80004168 <digits>
    800027e0:	ff700593          	li	a1,-9
    800027e4:	02069693          	slli	a3,a3,0x20
    800027e8:	0206d693          	srli	a3,a3,0x20
    800027ec:	00dd86b3          	add	a3,s11,a3
    800027f0:	0006c683          	lbu	a3,0(a3)
    800027f4:	02e557bb          	divuw	a5,a0,a4
    800027f8:	f8d40023          	sb	a3,-128(s0)
    800027fc:	10b65e63          	bge	a2,a1,80002918 <__printf+0x670>
    80002800:	06300593          	li	a1,99
    80002804:	02e7f6bb          	remuw	a3,a5,a4
    80002808:	02069693          	slli	a3,a3,0x20
    8000280c:	0206d693          	srli	a3,a3,0x20
    80002810:	00dd86b3          	add	a3,s11,a3
    80002814:	0006c683          	lbu	a3,0(a3)
    80002818:	02e7d73b          	divuw	a4,a5,a4
    8000281c:	00200793          	li	a5,2
    80002820:	f8d400a3          	sb	a3,-127(s0)
    80002824:	bca5ece3          	bltu	a1,a0,800023fc <__printf+0x154>
    80002828:	ce5ff06f          	j	8000250c <__printf+0x264>
    8000282c:	40e007bb          	negw	a5,a4
    80002830:	00002d97          	auipc	s11,0x2
    80002834:	938d8d93          	addi	s11,s11,-1736 # 80004168 <digits>
    80002838:	00f7f693          	andi	a3,a5,15
    8000283c:	00dd86b3          	add	a3,s11,a3
    80002840:	0006c583          	lbu	a1,0(a3)
    80002844:	ff100613          	li	a2,-15
    80002848:	0047d69b          	srliw	a3,a5,0x4
    8000284c:	f8b40023          	sb	a1,-128(s0)
    80002850:	0047d59b          	srliw	a1,a5,0x4
    80002854:	0ac75e63          	bge	a4,a2,80002910 <__printf+0x668>
    80002858:	00f6f693          	andi	a3,a3,15
    8000285c:	00dd86b3          	add	a3,s11,a3
    80002860:	0006c603          	lbu	a2,0(a3)
    80002864:	00f00693          	li	a3,15
    80002868:	0087d79b          	srliw	a5,a5,0x8
    8000286c:	f8c400a3          	sb	a2,-127(s0)
    80002870:	d8b6e4e3          	bltu	a3,a1,800025f8 <__printf+0x350>
    80002874:	00200793          	li	a5,2
    80002878:	e2dff06f          	j	800026a4 <__printf+0x3fc>
    8000287c:	00002c97          	auipc	s9,0x2
    80002880:	8ccc8c93          	addi	s9,s9,-1844 # 80004148 <_ZZ12printIntegermE6digits+0x148>
    80002884:	02800513          	li	a0,40
    80002888:	ef1ff06f          	j	80002778 <__printf+0x4d0>
    8000288c:	00700793          	li	a5,7
    80002890:	00600c93          	li	s9,6
    80002894:	e0dff06f          	j	800026a0 <__printf+0x3f8>
    80002898:	00700793          	li	a5,7
    8000289c:	00600c93          	li	s9,6
    800028a0:	c69ff06f          	j	80002508 <__printf+0x260>
    800028a4:	00300793          	li	a5,3
    800028a8:	00200c93          	li	s9,2
    800028ac:	c5dff06f          	j	80002508 <__printf+0x260>
    800028b0:	00300793          	li	a5,3
    800028b4:	00200c93          	li	s9,2
    800028b8:	de9ff06f          	j	800026a0 <__printf+0x3f8>
    800028bc:	00400793          	li	a5,4
    800028c0:	00300c93          	li	s9,3
    800028c4:	dddff06f          	j	800026a0 <__printf+0x3f8>
    800028c8:	00400793          	li	a5,4
    800028cc:	00300c93          	li	s9,3
    800028d0:	c39ff06f          	j	80002508 <__printf+0x260>
    800028d4:	00500793          	li	a5,5
    800028d8:	00400c93          	li	s9,4
    800028dc:	c2dff06f          	j	80002508 <__printf+0x260>
    800028e0:	00500793          	li	a5,5
    800028e4:	00400c93          	li	s9,4
    800028e8:	db9ff06f          	j	800026a0 <__printf+0x3f8>
    800028ec:	00600793          	li	a5,6
    800028f0:	00500c93          	li	s9,5
    800028f4:	dadff06f          	j	800026a0 <__printf+0x3f8>
    800028f8:	00600793          	li	a5,6
    800028fc:	00500c93          	li	s9,5
    80002900:	c09ff06f          	j	80002508 <__printf+0x260>
    80002904:	00800793          	li	a5,8
    80002908:	00700c93          	li	s9,7
    8000290c:	bfdff06f          	j	80002508 <__printf+0x260>
    80002910:	00100793          	li	a5,1
    80002914:	d91ff06f          	j	800026a4 <__printf+0x3fc>
    80002918:	00100793          	li	a5,1
    8000291c:	bf1ff06f          	j	8000250c <__printf+0x264>
    80002920:	00900793          	li	a5,9
    80002924:	00800c93          	li	s9,8
    80002928:	be1ff06f          	j	80002508 <__printf+0x260>
    8000292c:	00002517          	auipc	a0,0x2
    80002930:	82450513          	addi	a0,a0,-2012 # 80004150 <_ZZ12printIntegermE6digits+0x150>
    80002934:	00000097          	auipc	ra,0x0
    80002938:	918080e7          	jalr	-1768(ra) # 8000224c <panic>

000000008000293c <printfinit>:
    8000293c:	fe010113          	addi	sp,sp,-32
    80002940:	00813823          	sd	s0,16(sp)
    80002944:	00913423          	sd	s1,8(sp)
    80002948:	00113c23          	sd	ra,24(sp)
    8000294c:	02010413          	addi	s0,sp,32
    80002950:	00003497          	auipc	s1,0x3
    80002954:	ea048493          	addi	s1,s1,-352 # 800057f0 <pr>
    80002958:	00048513          	mv	a0,s1
    8000295c:	00002597          	auipc	a1,0x2
    80002960:	80458593          	addi	a1,a1,-2044 # 80004160 <_ZZ12printIntegermE6digits+0x160>
    80002964:	00000097          	auipc	ra,0x0
    80002968:	5f4080e7          	jalr	1524(ra) # 80002f58 <initlock>
    8000296c:	01813083          	ld	ra,24(sp)
    80002970:	01013403          	ld	s0,16(sp)
    80002974:	0004ac23          	sw	zero,24(s1)
    80002978:	00813483          	ld	s1,8(sp)
    8000297c:	02010113          	addi	sp,sp,32
    80002980:	00008067          	ret

0000000080002984 <uartinit>:
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
    80002990:	100007b7          	lui	a5,0x10000
    80002994:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002998:	f8000713          	li	a4,-128
    8000299c:	00e781a3          	sb	a4,3(a5)
    800029a0:	00300713          	li	a4,3
    800029a4:	00e78023          	sb	a4,0(a5)
    800029a8:	000780a3          	sb	zero,1(a5)
    800029ac:	00e781a3          	sb	a4,3(a5)
    800029b0:	00700693          	li	a3,7
    800029b4:	00d78123          	sb	a3,2(a5)
    800029b8:	00e780a3          	sb	a4,1(a5)
    800029bc:	00813403          	ld	s0,8(sp)
    800029c0:	01010113          	addi	sp,sp,16
    800029c4:	00008067          	ret

00000000800029c8 <uartputc>:
    800029c8:	00002797          	auipc	a5,0x2
    800029cc:	bd07a783          	lw	a5,-1072(a5) # 80004598 <panicked>
    800029d0:	00078463          	beqz	a5,800029d8 <uartputc+0x10>
    800029d4:	0000006f          	j	800029d4 <uartputc+0xc>
    800029d8:	fd010113          	addi	sp,sp,-48
    800029dc:	02813023          	sd	s0,32(sp)
    800029e0:	00913c23          	sd	s1,24(sp)
    800029e4:	01213823          	sd	s2,16(sp)
    800029e8:	01313423          	sd	s3,8(sp)
    800029ec:	02113423          	sd	ra,40(sp)
    800029f0:	03010413          	addi	s0,sp,48
    800029f4:	00002917          	auipc	s2,0x2
    800029f8:	bac90913          	addi	s2,s2,-1108 # 800045a0 <uart_tx_r>
    800029fc:	00093783          	ld	a5,0(s2)
    80002a00:	00002497          	auipc	s1,0x2
    80002a04:	ba848493          	addi	s1,s1,-1112 # 800045a8 <uart_tx_w>
    80002a08:	0004b703          	ld	a4,0(s1)
    80002a0c:	02078693          	addi	a3,a5,32
    80002a10:	00050993          	mv	s3,a0
    80002a14:	02e69c63          	bne	a3,a4,80002a4c <uartputc+0x84>
    80002a18:	00001097          	auipc	ra,0x1
    80002a1c:	834080e7          	jalr	-1996(ra) # 8000324c <push_on>
    80002a20:	00093783          	ld	a5,0(s2)
    80002a24:	0004b703          	ld	a4,0(s1)
    80002a28:	02078793          	addi	a5,a5,32
    80002a2c:	00e79463          	bne	a5,a4,80002a34 <uartputc+0x6c>
    80002a30:	0000006f          	j	80002a30 <uartputc+0x68>
    80002a34:	00001097          	auipc	ra,0x1
    80002a38:	88c080e7          	jalr	-1908(ra) # 800032c0 <pop_on>
    80002a3c:	00093783          	ld	a5,0(s2)
    80002a40:	0004b703          	ld	a4,0(s1)
    80002a44:	02078693          	addi	a3,a5,32
    80002a48:	fce688e3          	beq	a3,a4,80002a18 <uartputc+0x50>
    80002a4c:	01f77693          	andi	a3,a4,31
    80002a50:	00003597          	auipc	a1,0x3
    80002a54:	dc058593          	addi	a1,a1,-576 # 80005810 <uart_tx_buf>
    80002a58:	00d586b3          	add	a3,a1,a3
    80002a5c:	00170713          	addi	a4,a4,1
    80002a60:	01368023          	sb	s3,0(a3)
    80002a64:	00e4b023          	sd	a4,0(s1)
    80002a68:	10000637          	lui	a2,0x10000
    80002a6c:	02f71063          	bne	a4,a5,80002a8c <uartputc+0xc4>
    80002a70:	0340006f          	j	80002aa4 <uartputc+0xdc>
    80002a74:	00074703          	lbu	a4,0(a4)
    80002a78:	00f93023          	sd	a5,0(s2)
    80002a7c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002a80:	00093783          	ld	a5,0(s2)
    80002a84:	0004b703          	ld	a4,0(s1)
    80002a88:	00f70e63          	beq	a4,a5,80002aa4 <uartputc+0xdc>
    80002a8c:	00564683          	lbu	a3,5(a2)
    80002a90:	01f7f713          	andi	a4,a5,31
    80002a94:	00e58733          	add	a4,a1,a4
    80002a98:	0206f693          	andi	a3,a3,32
    80002a9c:	00178793          	addi	a5,a5,1
    80002aa0:	fc069ae3          	bnez	a3,80002a74 <uartputc+0xac>
    80002aa4:	02813083          	ld	ra,40(sp)
    80002aa8:	02013403          	ld	s0,32(sp)
    80002aac:	01813483          	ld	s1,24(sp)
    80002ab0:	01013903          	ld	s2,16(sp)
    80002ab4:	00813983          	ld	s3,8(sp)
    80002ab8:	03010113          	addi	sp,sp,48
    80002abc:	00008067          	ret

0000000080002ac0 <uartputc_sync>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813423          	sd	s0,8(sp)
    80002ac8:	01010413          	addi	s0,sp,16
    80002acc:	00002717          	auipc	a4,0x2
    80002ad0:	acc72703          	lw	a4,-1332(a4) # 80004598 <panicked>
    80002ad4:	02071663          	bnez	a4,80002b00 <uartputc_sync+0x40>
    80002ad8:	00050793          	mv	a5,a0
    80002adc:	100006b7          	lui	a3,0x10000
    80002ae0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002ae4:	02077713          	andi	a4,a4,32
    80002ae8:	fe070ce3          	beqz	a4,80002ae0 <uartputc_sync+0x20>
    80002aec:	0ff7f793          	andi	a5,a5,255
    80002af0:	00f68023          	sb	a5,0(a3)
    80002af4:	00813403          	ld	s0,8(sp)
    80002af8:	01010113          	addi	sp,sp,16
    80002afc:	00008067          	ret
    80002b00:	0000006f          	j	80002b00 <uartputc_sync+0x40>

0000000080002b04 <uartstart>:
    80002b04:	ff010113          	addi	sp,sp,-16
    80002b08:	00813423          	sd	s0,8(sp)
    80002b0c:	01010413          	addi	s0,sp,16
    80002b10:	00002617          	auipc	a2,0x2
    80002b14:	a9060613          	addi	a2,a2,-1392 # 800045a0 <uart_tx_r>
    80002b18:	00002517          	auipc	a0,0x2
    80002b1c:	a9050513          	addi	a0,a0,-1392 # 800045a8 <uart_tx_w>
    80002b20:	00063783          	ld	a5,0(a2)
    80002b24:	00053703          	ld	a4,0(a0)
    80002b28:	04f70263          	beq	a4,a5,80002b6c <uartstart+0x68>
    80002b2c:	100005b7          	lui	a1,0x10000
    80002b30:	00003817          	auipc	a6,0x3
    80002b34:	ce080813          	addi	a6,a6,-800 # 80005810 <uart_tx_buf>
    80002b38:	01c0006f          	j	80002b54 <uartstart+0x50>
    80002b3c:	0006c703          	lbu	a4,0(a3)
    80002b40:	00f63023          	sd	a5,0(a2)
    80002b44:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b48:	00063783          	ld	a5,0(a2)
    80002b4c:	00053703          	ld	a4,0(a0)
    80002b50:	00f70e63          	beq	a4,a5,80002b6c <uartstart+0x68>
    80002b54:	01f7f713          	andi	a4,a5,31
    80002b58:	00e806b3          	add	a3,a6,a4
    80002b5c:	0055c703          	lbu	a4,5(a1)
    80002b60:	00178793          	addi	a5,a5,1
    80002b64:	02077713          	andi	a4,a4,32
    80002b68:	fc071ae3          	bnez	a4,80002b3c <uartstart+0x38>
    80002b6c:	00813403          	ld	s0,8(sp)
    80002b70:	01010113          	addi	sp,sp,16
    80002b74:	00008067          	ret

0000000080002b78 <uartgetc>:
    80002b78:	ff010113          	addi	sp,sp,-16
    80002b7c:	00813423          	sd	s0,8(sp)
    80002b80:	01010413          	addi	s0,sp,16
    80002b84:	10000737          	lui	a4,0x10000
    80002b88:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002b8c:	0017f793          	andi	a5,a5,1
    80002b90:	00078c63          	beqz	a5,80002ba8 <uartgetc+0x30>
    80002b94:	00074503          	lbu	a0,0(a4)
    80002b98:	0ff57513          	andi	a0,a0,255
    80002b9c:	00813403          	ld	s0,8(sp)
    80002ba0:	01010113          	addi	sp,sp,16
    80002ba4:	00008067          	ret
    80002ba8:	fff00513          	li	a0,-1
    80002bac:	ff1ff06f          	j	80002b9c <uartgetc+0x24>

0000000080002bb0 <uartintr>:
    80002bb0:	100007b7          	lui	a5,0x10000
    80002bb4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002bb8:	0017f793          	andi	a5,a5,1
    80002bbc:	0a078463          	beqz	a5,80002c64 <uartintr+0xb4>
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    80002bd4:	100004b7          	lui	s1,0x10000
    80002bd8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002bdc:	0ff57513          	andi	a0,a0,255
    80002be0:	fffff097          	auipc	ra,0xfffff
    80002be4:	534080e7          	jalr	1332(ra) # 80002114 <consoleintr>
    80002be8:	0054c783          	lbu	a5,5(s1)
    80002bec:	0017f793          	andi	a5,a5,1
    80002bf0:	fe0794e3          	bnez	a5,80002bd8 <uartintr+0x28>
    80002bf4:	00002617          	auipc	a2,0x2
    80002bf8:	9ac60613          	addi	a2,a2,-1620 # 800045a0 <uart_tx_r>
    80002bfc:	00002517          	auipc	a0,0x2
    80002c00:	9ac50513          	addi	a0,a0,-1620 # 800045a8 <uart_tx_w>
    80002c04:	00063783          	ld	a5,0(a2)
    80002c08:	00053703          	ld	a4,0(a0)
    80002c0c:	04f70263          	beq	a4,a5,80002c50 <uartintr+0xa0>
    80002c10:	100005b7          	lui	a1,0x10000
    80002c14:	00003817          	auipc	a6,0x3
    80002c18:	bfc80813          	addi	a6,a6,-1028 # 80005810 <uart_tx_buf>
    80002c1c:	01c0006f          	j	80002c38 <uartintr+0x88>
    80002c20:	0006c703          	lbu	a4,0(a3)
    80002c24:	00f63023          	sd	a5,0(a2)
    80002c28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c2c:	00063783          	ld	a5,0(a2)
    80002c30:	00053703          	ld	a4,0(a0)
    80002c34:	00f70e63          	beq	a4,a5,80002c50 <uartintr+0xa0>
    80002c38:	01f7f713          	andi	a4,a5,31
    80002c3c:	00e806b3          	add	a3,a6,a4
    80002c40:	0055c703          	lbu	a4,5(a1)
    80002c44:	00178793          	addi	a5,a5,1
    80002c48:	02077713          	andi	a4,a4,32
    80002c4c:	fc071ae3          	bnez	a4,80002c20 <uartintr+0x70>
    80002c50:	01813083          	ld	ra,24(sp)
    80002c54:	01013403          	ld	s0,16(sp)
    80002c58:	00813483          	ld	s1,8(sp)
    80002c5c:	02010113          	addi	sp,sp,32
    80002c60:	00008067          	ret
    80002c64:	00002617          	auipc	a2,0x2
    80002c68:	93c60613          	addi	a2,a2,-1732 # 800045a0 <uart_tx_r>
    80002c6c:	00002517          	auipc	a0,0x2
    80002c70:	93c50513          	addi	a0,a0,-1732 # 800045a8 <uart_tx_w>
    80002c74:	00063783          	ld	a5,0(a2)
    80002c78:	00053703          	ld	a4,0(a0)
    80002c7c:	04f70263          	beq	a4,a5,80002cc0 <uartintr+0x110>
    80002c80:	100005b7          	lui	a1,0x10000
    80002c84:	00003817          	auipc	a6,0x3
    80002c88:	b8c80813          	addi	a6,a6,-1140 # 80005810 <uart_tx_buf>
    80002c8c:	01c0006f          	j	80002ca8 <uartintr+0xf8>
    80002c90:	0006c703          	lbu	a4,0(a3)
    80002c94:	00f63023          	sd	a5,0(a2)
    80002c98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c9c:	00063783          	ld	a5,0(a2)
    80002ca0:	00053703          	ld	a4,0(a0)
    80002ca4:	02f70063          	beq	a4,a5,80002cc4 <uartintr+0x114>
    80002ca8:	01f7f713          	andi	a4,a5,31
    80002cac:	00e806b3          	add	a3,a6,a4
    80002cb0:	0055c703          	lbu	a4,5(a1)
    80002cb4:	00178793          	addi	a5,a5,1
    80002cb8:	02077713          	andi	a4,a4,32
    80002cbc:	fc071ae3          	bnez	a4,80002c90 <uartintr+0xe0>
    80002cc0:	00008067          	ret
    80002cc4:	00008067          	ret

0000000080002cc8 <kinit>:
    80002cc8:	fc010113          	addi	sp,sp,-64
    80002ccc:	02913423          	sd	s1,40(sp)
    80002cd0:	fffff7b7          	lui	a5,0xfffff
    80002cd4:	00004497          	auipc	s1,0x4
    80002cd8:	b6b48493          	addi	s1,s1,-1173 # 8000683f <end+0xfff>
    80002cdc:	02813823          	sd	s0,48(sp)
    80002ce0:	01313c23          	sd	s3,24(sp)
    80002ce4:	00f4f4b3          	and	s1,s1,a5
    80002ce8:	02113c23          	sd	ra,56(sp)
    80002cec:	03213023          	sd	s2,32(sp)
    80002cf0:	01413823          	sd	s4,16(sp)
    80002cf4:	01513423          	sd	s5,8(sp)
    80002cf8:	04010413          	addi	s0,sp,64
    80002cfc:	000017b7          	lui	a5,0x1
    80002d00:	01100993          	li	s3,17
    80002d04:	00f487b3          	add	a5,s1,a5
    80002d08:	01b99993          	slli	s3,s3,0x1b
    80002d0c:	06f9e063          	bltu	s3,a5,80002d6c <kinit+0xa4>
    80002d10:	00003a97          	auipc	s5,0x3
    80002d14:	b30a8a93          	addi	s5,s5,-1232 # 80005840 <end>
    80002d18:	0754ec63          	bltu	s1,s5,80002d90 <kinit+0xc8>
    80002d1c:	0734fa63          	bgeu	s1,s3,80002d90 <kinit+0xc8>
    80002d20:	00088a37          	lui	s4,0x88
    80002d24:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002d28:	00002917          	auipc	s2,0x2
    80002d2c:	88890913          	addi	s2,s2,-1912 # 800045b0 <kmem>
    80002d30:	00ca1a13          	slli	s4,s4,0xc
    80002d34:	0140006f          	j	80002d48 <kinit+0x80>
    80002d38:	000017b7          	lui	a5,0x1
    80002d3c:	00f484b3          	add	s1,s1,a5
    80002d40:	0554e863          	bltu	s1,s5,80002d90 <kinit+0xc8>
    80002d44:	0534f663          	bgeu	s1,s3,80002d90 <kinit+0xc8>
    80002d48:	00001637          	lui	a2,0x1
    80002d4c:	00100593          	li	a1,1
    80002d50:	00048513          	mv	a0,s1
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	5e4080e7          	jalr	1508(ra) # 80003338 <__memset>
    80002d5c:	00093783          	ld	a5,0(s2)
    80002d60:	00f4b023          	sd	a5,0(s1)
    80002d64:	00993023          	sd	s1,0(s2)
    80002d68:	fd4498e3          	bne	s1,s4,80002d38 <kinit+0x70>
    80002d6c:	03813083          	ld	ra,56(sp)
    80002d70:	03013403          	ld	s0,48(sp)
    80002d74:	02813483          	ld	s1,40(sp)
    80002d78:	02013903          	ld	s2,32(sp)
    80002d7c:	01813983          	ld	s3,24(sp)
    80002d80:	01013a03          	ld	s4,16(sp)
    80002d84:	00813a83          	ld	s5,8(sp)
    80002d88:	04010113          	addi	sp,sp,64
    80002d8c:	00008067          	ret
    80002d90:	00001517          	auipc	a0,0x1
    80002d94:	3f050513          	addi	a0,a0,1008 # 80004180 <digits+0x18>
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	4b4080e7          	jalr	1204(ra) # 8000224c <panic>

0000000080002da0 <freerange>:
    80002da0:	fc010113          	addi	sp,sp,-64
    80002da4:	000017b7          	lui	a5,0x1
    80002da8:	02913423          	sd	s1,40(sp)
    80002dac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002db0:	009504b3          	add	s1,a0,s1
    80002db4:	fffff537          	lui	a0,0xfffff
    80002db8:	02813823          	sd	s0,48(sp)
    80002dbc:	02113c23          	sd	ra,56(sp)
    80002dc0:	03213023          	sd	s2,32(sp)
    80002dc4:	01313c23          	sd	s3,24(sp)
    80002dc8:	01413823          	sd	s4,16(sp)
    80002dcc:	01513423          	sd	s5,8(sp)
    80002dd0:	01613023          	sd	s6,0(sp)
    80002dd4:	04010413          	addi	s0,sp,64
    80002dd8:	00a4f4b3          	and	s1,s1,a0
    80002ddc:	00f487b3          	add	a5,s1,a5
    80002de0:	06f5e463          	bltu	a1,a5,80002e48 <freerange+0xa8>
    80002de4:	00003a97          	auipc	s5,0x3
    80002de8:	a5ca8a93          	addi	s5,s5,-1444 # 80005840 <end>
    80002dec:	0954e263          	bltu	s1,s5,80002e70 <freerange+0xd0>
    80002df0:	01100993          	li	s3,17
    80002df4:	01b99993          	slli	s3,s3,0x1b
    80002df8:	0734fc63          	bgeu	s1,s3,80002e70 <freerange+0xd0>
    80002dfc:	00058a13          	mv	s4,a1
    80002e00:	00001917          	auipc	s2,0x1
    80002e04:	7b090913          	addi	s2,s2,1968 # 800045b0 <kmem>
    80002e08:	00002b37          	lui	s6,0x2
    80002e0c:	0140006f          	j	80002e20 <freerange+0x80>
    80002e10:	000017b7          	lui	a5,0x1
    80002e14:	00f484b3          	add	s1,s1,a5
    80002e18:	0554ec63          	bltu	s1,s5,80002e70 <freerange+0xd0>
    80002e1c:	0534fa63          	bgeu	s1,s3,80002e70 <freerange+0xd0>
    80002e20:	00001637          	lui	a2,0x1
    80002e24:	00100593          	li	a1,1
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	50c080e7          	jalr	1292(ra) # 80003338 <__memset>
    80002e34:	00093703          	ld	a4,0(s2)
    80002e38:	016487b3          	add	a5,s1,s6
    80002e3c:	00e4b023          	sd	a4,0(s1)
    80002e40:	00993023          	sd	s1,0(s2)
    80002e44:	fcfa76e3          	bgeu	s4,a5,80002e10 <freerange+0x70>
    80002e48:	03813083          	ld	ra,56(sp)
    80002e4c:	03013403          	ld	s0,48(sp)
    80002e50:	02813483          	ld	s1,40(sp)
    80002e54:	02013903          	ld	s2,32(sp)
    80002e58:	01813983          	ld	s3,24(sp)
    80002e5c:	01013a03          	ld	s4,16(sp)
    80002e60:	00813a83          	ld	s5,8(sp)
    80002e64:	00013b03          	ld	s6,0(sp)
    80002e68:	04010113          	addi	sp,sp,64
    80002e6c:	00008067          	ret
    80002e70:	00001517          	auipc	a0,0x1
    80002e74:	31050513          	addi	a0,a0,784 # 80004180 <digits+0x18>
    80002e78:	fffff097          	auipc	ra,0xfffff
    80002e7c:	3d4080e7          	jalr	980(ra) # 8000224c <panic>

0000000080002e80 <kfree>:
    80002e80:	fe010113          	addi	sp,sp,-32
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00113c23          	sd	ra,24(sp)
    80002e8c:	00913423          	sd	s1,8(sp)
    80002e90:	02010413          	addi	s0,sp,32
    80002e94:	03451793          	slli	a5,a0,0x34
    80002e98:	04079c63          	bnez	a5,80002ef0 <kfree+0x70>
    80002e9c:	00003797          	auipc	a5,0x3
    80002ea0:	9a478793          	addi	a5,a5,-1628 # 80005840 <end>
    80002ea4:	00050493          	mv	s1,a0
    80002ea8:	04f56463          	bltu	a0,a5,80002ef0 <kfree+0x70>
    80002eac:	01100793          	li	a5,17
    80002eb0:	01b79793          	slli	a5,a5,0x1b
    80002eb4:	02f57e63          	bgeu	a0,a5,80002ef0 <kfree+0x70>
    80002eb8:	00001637          	lui	a2,0x1
    80002ebc:	00100593          	li	a1,1
    80002ec0:	00000097          	auipc	ra,0x0
    80002ec4:	478080e7          	jalr	1144(ra) # 80003338 <__memset>
    80002ec8:	00001797          	auipc	a5,0x1
    80002ecc:	6e878793          	addi	a5,a5,1768 # 800045b0 <kmem>
    80002ed0:	0007b703          	ld	a4,0(a5)
    80002ed4:	01813083          	ld	ra,24(sp)
    80002ed8:	01013403          	ld	s0,16(sp)
    80002edc:	00e4b023          	sd	a4,0(s1)
    80002ee0:	0097b023          	sd	s1,0(a5)
    80002ee4:	00813483          	ld	s1,8(sp)
    80002ee8:	02010113          	addi	sp,sp,32
    80002eec:	00008067          	ret
    80002ef0:	00001517          	auipc	a0,0x1
    80002ef4:	29050513          	addi	a0,a0,656 # 80004180 <digits+0x18>
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	354080e7          	jalr	852(ra) # 8000224c <panic>

0000000080002f00 <kalloc>:
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00813823          	sd	s0,16(sp)
    80002f08:	00913423          	sd	s1,8(sp)
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	02010413          	addi	s0,sp,32
    80002f14:	00001797          	auipc	a5,0x1
    80002f18:	69c78793          	addi	a5,a5,1692 # 800045b0 <kmem>
    80002f1c:	0007b483          	ld	s1,0(a5)
    80002f20:	02048063          	beqz	s1,80002f40 <kalloc+0x40>
    80002f24:	0004b703          	ld	a4,0(s1)
    80002f28:	00001637          	lui	a2,0x1
    80002f2c:	00500593          	li	a1,5
    80002f30:	00048513          	mv	a0,s1
    80002f34:	00e7b023          	sd	a4,0(a5)
    80002f38:	00000097          	auipc	ra,0x0
    80002f3c:	400080e7          	jalr	1024(ra) # 80003338 <__memset>
    80002f40:	01813083          	ld	ra,24(sp)
    80002f44:	01013403          	ld	s0,16(sp)
    80002f48:	00048513          	mv	a0,s1
    80002f4c:	00813483          	ld	s1,8(sp)
    80002f50:	02010113          	addi	sp,sp,32
    80002f54:	00008067          	ret

0000000080002f58 <initlock>:
    80002f58:	ff010113          	addi	sp,sp,-16
    80002f5c:	00813423          	sd	s0,8(sp)
    80002f60:	01010413          	addi	s0,sp,16
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	00b53423          	sd	a1,8(a0)
    80002f6c:	00052023          	sw	zero,0(a0)
    80002f70:	00053823          	sd	zero,16(a0)
    80002f74:	01010113          	addi	sp,sp,16
    80002f78:	00008067          	ret

0000000080002f7c <acquire>:
    80002f7c:	fe010113          	addi	sp,sp,-32
    80002f80:	00813823          	sd	s0,16(sp)
    80002f84:	00913423          	sd	s1,8(sp)
    80002f88:	00113c23          	sd	ra,24(sp)
    80002f8c:	01213023          	sd	s2,0(sp)
    80002f90:	02010413          	addi	s0,sp,32
    80002f94:	00050493          	mv	s1,a0
    80002f98:	10002973          	csrr	s2,sstatus
    80002f9c:	100027f3          	csrr	a5,sstatus
    80002fa0:	ffd7f793          	andi	a5,a5,-3
    80002fa4:	10079073          	csrw	sstatus,a5
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	8e0080e7          	jalr	-1824(ra) # 80001888 <mycpu>
    80002fb0:	07852783          	lw	a5,120(a0)
    80002fb4:	06078e63          	beqz	a5,80003030 <acquire+0xb4>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	8d0080e7          	jalr	-1840(ra) # 80001888 <mycpu>
    80002fc0:	07852783          	lw	a5,120(a0)
    80002fc4:	0004a703          	lw	a4,0(s1)
    80002fc8:	0017879b          	addiw	a5,a5,1
    80002fcc:	06f52c23          	sw	a5,120(a0)
    80002fd0:	04071063          	bnez	a4,80003010 <acquire+0x94>
    80002fd4:	00100713          	li	a4,1
    80002fd8:	00070793          	mv	a5,a4
    80002fdc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002fe0:	0007879b          	sext.w	a5,a5
    80002fe4:	fe079ae3          	bnez	a5,80002fd8 <acquire+0x5c>
    80002fe8:	0ff0000f          	fence
    80002fec:	fffff097          	auipc	ra,0xfffff
    80002ff0:	89c080e7          	jalr	-1892(ra) # 80001888 <mycpu>
    80002ff4:	01813083          	ld	ra,24(sp)
    80002ff8:	01013403          	ld	s0,16(sp)
    80002ffc:	00a4b823          	sd	a0,16(s1)
    80003000:	00013903          	ld	s2,0(sp)
    80003004:	00813483          	ld	s1,8(sp)
    80003008:	02010113          	addi	sp,sp,32
    8000300c:	00008067          	ret
    80003010:	0104b903          	ld	s2,16(s1)
    80003014:	fffff097          	auipc	ra,0xfffff
    80003018:	874080e7          	jalr	-1932(ra) # 80001888 <mycpu>
    8000301c:	faa91ce3          	bne	s2,a0,80002fd4 <acquire+0x58>
    80003020:	00001517          	auipc	a0,0x1
    80003024:	16850513          	addi	a0,a0,360 # 80004188 <digits+0x20>
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	224080e7          	jalr	548(ra) # 8000224c <panic>
    80003030:	00195913          	srli	s2,s2,0x1
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	854080e7          	jalr	-1964(ra) # 80001888 <mycpu>
    8000303c:	00197913          	andi	s2,s2,1
    80003040:	07252e23          	sw	s2,124(a0)
    80003044:	f75ff06f          	j	80002fb8 <acquire+0x3c>

0000000080003048 <release>:
    80003048:	fe010113          	addi	sp,sp,-32
    8000304c:	00813823          	sd	s0,16(sp)
    80003050:	00113c23          	sd	ra,24(sp)
    80003054:	00913423          	sd	s1,8(sp)
    80003058:	01213023          	sd	s2,0(sp)
    8000305c:	02010413          	addi	s0,sp,32
    80003060:	00052783          	lw	a5,0(a0)
    80003064:	00079a63          	bnez	a5,80003078 <release+0x30>
    80003068:	00001517          	auipc	a0,0x1
    8000306c:	12850513          	addi	a0,a0,296 # 80004190 <digits+0x28>
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	1dc080e7          	jalr	476(ra) # 8000224c <panic>
    80003078:	01053903          	ld	s2,16(a0)
    8000307c:	00050493          	mv	s1,a0
    80003080:	fffff097          	auipc	ra,0xfffff
    80003084:	808080e7          	jalr	-2040(ra) # 80001888 <mycpu>
    80003088:	fea910e3          	bne	s2,a0,80003068 <release+0x20>
    8000308c:	0004b823          	sd	zero,16(s1)
    80003090:	0ff0000f          	fence
    80003094:	0f50000f          	fence	iorw,ow
    80003098:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000309c:	ffffe097          	auipc	ra,0xffffe
    800030a0:	7ec080e7          	jalr	2028(ra) # 80001888 <mycpu>
    800030a4:	100027f3          	csrr	a5,sstatus
    800030a8:	0027f793          	andi	a5,a5,2
    800030ac:	04079a63          	bnez	a5,80003100 <release+0xb8>
    800030b0:	07852783          	lw	a5,120(a0)
    800030b4:	02f05e63          	blez	a5,800030f0 <release+0xa8>
    800030b8:	fff7871b          	addiw	a4,a5,-1
    800030bc:	06e52c23          	sw	a4,120(a0)
    800030c0:	00071c63          	bnez	a4,800030d8 <release+0x90>
    800030c4:	07c52783          	lw	a5,124(a0)
    800030c8:	00078863          	beqz	a5,800030d8 <release+0x90>
    800030cc:	100027f3          	csrr	a5,sstatus
    800030d0:	0027e793          	ori	a5,a5,2
    800030d4:	10079073          	csrw	sstatus,a5
    800030d8:	01813083          	ld	ra,24(sp)
    800030dc:	01013403          	ld	s0,16(sp)
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	00013903          	ld	s2,0(sp)
    800030e8:	02010113          	addi	sp,sp,32
    800030ec:	00008067          	ret
    800030f0:	00001517          	auipc	a0,0x1
    800030f4:	0c050513          	addi	a0,a0,192 # 800041b0 <digits+0x48>
    800030f8:	fffff097          	auipc	ra,0xfffff
    800030fc:	154080e7          	jalr	340(ra) # 8000224c <panic>
    80003100:	00001517          	auipc	a0,0x1
    80003104:	09850513          	addi	a0,a0,152 # 80004198 <digits+0x30>
    80003108:	fffff097          	auipc	ra,0xfffff
    8000310c:	144080e7          	jalr	324(ra) # 8000224c <panic>

0000000080003110 <holding>:
    80003110:	00052783          	lw	a5,0(a0)
    80003114:	00079663          	bnez	a5,80003120 <holding+0x10>
    80003118:	00000513          	li	a0,0
    8000311c:	00008067          	ret
    80003120:	fe010113          	addi	sp,sp,-32
    80003124:	00813823          	sd	s0,16(sp)
    80003128:	00913423          	sd	s1,8(sp)
    8000312c:	00113c23          	sd	ra,24(sp)
    80003130:	02010413          	addi	s0,sp,32
    80003134:	01053483          	ld	s1,16(a0)
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	750080e7          	jalr	1872(ra) # 80001888 <mycpu>
    80003140:	01813083          	ld	ra,24(sp)
    80003144:	01013403          	ld	s0,16(sp)
    80003148:	40a48533          	sub	a0,s1,a0
    8000314c:	00153513          	seqz	a0,a0
    80003150:	00813483          	ld	s1,8(sp)
    80003154:	02010113          	addi	sp,sp,32
    80003158:	00008067          	ret

000000008000315c <push_off>:
    8000315c:	fe010113          	addi	sp,sp,-32
    80003160:	00813823          	sd	s0,16(sp)
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00913423          	sd	s1,8(sp)
    8000316c:	02010413          	addi	s0,sp,32
    80003170:	100024f3          	csrr	s1,sstatus
    80003174:	100027f3          	csrr	a5,sstatus
    80003178:	ffd7f793          	andi	a5,a5,-3
    8000317c:	10079073          	csrw	sstatus,a5
    80003180:	ffffe097          	auipc	ra,0xffffe
    80003184:	708080e7          	jalr	1800(ra) # 80001888 <mycpu>
    80003188:	07852783          	lw	a5,120(a0)
    8000318c:	02078663          	beqz	a5,800031b8 <push_off+0x5c>
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	6f8080e7          	jalr	1784(ra) # 80001888 <mycpu>
    80003198:	07852783          	lw	a5,120(a0)
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	0017879b          	addiw	a5,a5,1
    800031a8:	06f52c23          	sw	a5,120(a0)
    800031ac:	00813483          	ld	s1,8(sp)
    800031b0:	02010113          	addi	sp,sp,32
    800031b4:	00008067          	ret
    800031b8:	0014d493          	srli	s1,s1,0x1
    800031bc:	ffffe097          	auipc	ra,0xffffe
    800031c0:	6cc080e7          	jalr	1740(ra) # 80001888 <mycpu>
    800031c4:	0014f493          	andi	s1,s1,1
    800031c8:	06952e23          	sw	s1,124(a0)
    800031cc:	fc5ff06f          	j	80003190 <push_off+0x34>

00000000800031d0 <pop_off>:
    800031d0:	ff010113          	addi	sp,sp,-16
    800031d4:	00813023          	sd	s0,0(sp)
    800031d8:	00113423          	sd	ra,8(sp)
    800031dc:	01010413          	addi	s0,sp,16
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	6a8080e7          	jalr	1704(ra) # 80001888 <mycpu>
    800031e8:	100027f3          	csrr	a5,sstatus
    800031ec:	0027f793          	andi	a5,a5,2
    800031f0:	04079663          	bnez	a5,8000323c <pop_off+0x6c>
    800031f4:	07852783          	lw	a5,120(a0)
    800031f8:	02f05a63          	blez	a5,8000322c <pop_off+0x5c>
    800031fc:	fff7871b          	addiw	a4,a5,-1
    80003200:	06e52c23          	sw	a4,120(a0)
    80003204:	00071c63          	bnez	a4,8000321c <pop_off+0x4c>
    80003208:	07c52783          	lw	a5,124(a0)
    8000320c:	00078863          	beqz	a5,8000321c <pop_off+0x4c>
    80003210:	100027f3          	csrr	a5,sstatus
    80003214:	0027e793          	ori	a5,a5,2
    80003218:	10079073          	csrw	sstatus,a5
    8000321c:	00813083          	ld	ra,8(sp)
    80003220:	00013403          	ld	s0,0(sp)
    80003224:	01010113          	addi	sp,sp,16
    80003228:	00008067          	ret
    8000322c:	00001517          	auipc	a0,0x1
    80003230:	f8450513          	addi	a0,a0,-124 # 800041b0 <digits+0x48>
    80003234:	fffff097          	auipc	ra,0xfffff
    80003238:	018080e7          	jalr	24(ra) # 8000224c <panic>
    8000323c:	00001517          	auipc	a0,0x1
    80003240:	f5c50513          	addi	a0,a0,-164 # 80004198 <digits+0x30>
    80003244:	fffff097          	auipc	ra,0xfffff
    80003248:	008080e7          	jalr	8(ra) # 8000224c <panic>

000000008000324c <push_on>:
    8000324c:	fe010113          	addi	sp,sp,-32
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00113c23          	sd	ra,24(sp)
    80003258:	00913423          	sd	s1,8(sp)
    8000325c:	02010413          	addi	s0,sp,32
    80003260:	100024f3          	csrr	s1,sstatus
    80003264:	100027f3          	csrr	a5,sstatus
    80003268:	0027e793          	ori	a5,a5,2
    8000326c:	10079073          	csrw	sstatus,a5
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	618080e7          	jalr	1560(ra) # 80001888 <mycpu>
    80003278:	07852783          	lw	a5,120(a0)
    8000327c:	02078663          	beqz	a5,800032a8 <push_on+0x5c>
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	608080e7          	jalr	1544(ra) # 80001888 <mycpu>
    80003288:	07852783          	lw	a5,120(a0)
    8000328c:	01813083          	ld	ra,24(sp)
    80003290:	01013403          	ld	s0,16(sp)
    80003294:	0017879b          	addiw	a5,a5,1
    80003298:	06f52c23          	sw	a5,120(a0)
    8000329c:	00813483          	ld	s1,8(sp)
    800032a0:	02010113          	addi	sp,sp,32
    800032a4:	00008067          	ret
    800032a8:	0014d493          	srli	s1,s1,0x1
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	5dc080e7          	jalr	1500(ra) # 80001888 <mycpu>
    800032b4:	0014f493          	andi	s1,s1,1
    800032b8:	06952e23          	sw	s1,124(a0)
    800032bc:	fc5ff06f          	j	80003280 <push_on+0x34>

00000000800032c0 <pop_on>:
    800032c0:	ff010113          	addi	sp,sp,-16
    800032c4:	00813023          	sd	s0,0(sp)
    800032c8:	00113423          	sd	ra,8(sp)
    800032cc:	01010413          	addi	s0,sp,16
    800032d0:	ffffe097          	auipc	ra,0xffffe
    800032d4:	5b8080e7          	jalr	1464(ra) # 80001888 <mycpu>
    800032d8:	100027f3          	csrr	a5,sstatus
    800032dc:	0027f793          	andi	a5,a5,2
    800032e0:	04078463          	beqz	a5,80003328 <pop_on+0x68>
    800032e4:	07852783          	lw	a5,120(a0)
    800032e8:	02f05863          	blez	a5,80003318 <pop_on+0x58>
    800032ec:	fff7879b          	addiw	a5,a5,-1
    800032f0:	06f52c23          	sw	a5,120(a0)
    800032f4:	07853783          	ld	a5,120(a0)
    800032f8:	00079863          	bnez	a5,80003308 <pop_on+0x48>
    800032fc:	100027f3          	csrr	a5,sstatus
    80003300:	ffd7f793          	andi	a5,a5,-3
    80003304:	10079073          	csrw	sstatus,a5
    80003308:	00813083          	ld	ra,8(sp)
    8000330c:	00013403          	ld	s0,0(sp)
    80003310:	01010113          	addi	sp,sp,16
    80003314:	00008067          	ret
    80003318:	00001517          	auipc	a0,0x1
    8000331c:	ec050513          	addi	a0,a0,-320 # 800041d8 <digits+0x70>
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	f2c080e7          	jalr	-212(ra) # 8000224c <panic>
    80003328:	00001517          	auipc	a0,0x1
    8000332c:	e9050513          	addi	a0,a0,-368 # 800041b8 <digits+0x50>
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	f1c080e7          	jalr	-228(ra) # 8000224c <panic>

0000000080003338 <__memset>:
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00813423          	sd	s0,8(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	1a060e63          	beqz	a2,80003500 <__memset+0x1c8>
    80003348:	40a007b3          	neg	a5,a0
    8000334c:	0077f793          	andi	a5,a5,7
    80003350:	00778693          	addi	a3,a5,7
    80003354:	00b00813          	li	a6,11
    80003358:	0ff5f593          	andi	a1,a1,255
    8000335c:	fff6071b          	addiw	a4,a2,-1
    80003360:	1b06e663          	bltu	a3,a6,8000350c <__memset+0x1d4>
    80003364:	1cd76463          	bltu	a4,a3,8000352c <__memset+0x1f4>
    80003368:	1a078e63          	beqz	a5,80003524 <__memset+0x1ec>
    8000336c:	00b50023          	sb	a1,0(a0)
    80003370:	00100713          	li	a4,1
    80003374:	1ae78463          	beq	a5,a4,8000351c <__memset+0x1e4>
    80003378:	00b500a3          	sb	a1,1(a0)
    8000337c:	00200713          	li	a4,2
    80003380:	1ae78a63          	beq	a5,a4,80003534 <__memset+0x1fc>
    80003384:	00b50123          	sb	a1,2(a0)
    80003388:	00300713          	li	a4,3
    8000338c:	18e78463          	beq	a5,a4,80003514 <__memset+0x1dc>
    80003390:	00b501a3          	sb	a1,3(a0)
    80003394:	00400713          	li	a4,4
    80003398:	1ae78263          	beq	a5,a4,8000353c <__memset+0x204>
    8000339c:	00b50223          	sb	a1,4(a0)
    800033a0:	00500713          	li	a4,5
    800033a4:	1ae78063          	beq	a5,a4,80003544 <__memset+0x20c>
    800033a8:	00b502a3          	sb	a1,5(a0)
    800033ac:	00700713          	li	a4,7
    800033b0:	18e79e63          	bne	a5,a4,8000354c <__memset+0x214>
    800033b4:	00b50323          	sb	a1,6(a0)
    800033b8:	00700e93          	li	t4,7
    800033bc:	00859713          	slli	a4,a1,0x8
    800033c0:	00e5e733          	or	a4,a1,a4
    800033c4:	01059e13          	slli	t3,a1,0x10
    800033c8:	01c76e33          	or	t3,a4,t3
    800033cc:	01859313          	slli	t1,a1,0x18
    800033d0:	006e6333          	or	t1,t3,t1
    800033d4:	02059893          	slli	a7,a1,0x20
    800033d8:	40f60e3b          	subw	t3,a2,a5
    800033dc:	011368b3          	or	a7,t1,a7
    800033e0:	02859813          	slli	a6,a1,0x28
    800033e4:	0108e833          	or	a6,a7,a6
    800033e8:	03059693          	slli	a3,a1,0x30
    800033ec:	003e589b          	srliw	a7,t3,0x3
    800033f0:	00d866b3          	or	a3,a6,a3
    800033f4:	03859713          	slli	a4,a1,0x38
    800033f8:	00389813          	slli	a6,a7,0x3
    800033fc:	00f507b3          	add	a5,a0,a5
    80003400:	00e6e733          	or	a4,a3,a4
    80003404:	000e089b          	sext.w	a7,t3
    80003408:	00f806b3          	add	a3,a6,a5
    8000340c:	00e7b023          	sd	a4,0(a5)
    80003410:	00878793          	addi	a5,a5,8
    80003414:	fed79ce3          	bne	a5,a3,8000340c <__memset+0xd4>
    80003418:	ff8e7793          	andi	a5,t3,-8
    8000341c:	0007871b          	sext.w	a4,a5
    80003420:	01d787bb          	addw	a5,a5,t4
    80003424:	0ce88e63          	beq	a7,a4,80003500 <__memset+0x1c8>
    80003428:	00f50733          	add	a4,a0,a5
    8000342c:	00b70023          	sb	a1,0(a4)
    80003430:	0017871b          	addiw	a4,a5,1
    80003434:	0cc77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003438:	00e50733          	add	a4,a0,a4
    8000343c:	00b70023          	sb	a1,0(a4)
    80003440:	0027871b          	addiw	a4,a5,2
    80003444:	0ac77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003448:	00e50733          	add	a4,a0,a4
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	0037871b          	addiw	a4,a5,3
    80003454:	0ac77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	0047871b          	addiw	a4,a5,4
    80003464:	08c77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	0057871b          	addiw	a4,a5,5
    80003474:	08c77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	0067871b          	addiw	a4,a5,6
    80003484:	06c77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003488:	00e50733          	add	a4,a0,a4
    8000348c:	00b70023          	sb	a1,0(a4)
    80003490:	0077871b          	addiw	a4,a5,7
    80003494:	06c77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    80003498:	00e50733          	add	a4,a0,a4
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	0087871b          	addiw	a4,a5,8
    800034a4:	04c77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    800034a8:	00e50733          	add	a4,a0,a4
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	0097871b          	addiw	a4,a5,9
    800034b4:	04c77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	00a7871b          	addiw	a4,a5,10
    800034c4:	02c77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	00b7871b          	addiw	a4,a5,11
    800034d4:	02c77663          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	00c7871b          	addiw	a4,a5,12
    800034e4:	00c77e63          	bgeu	a4,a2,80003500 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	00d7879b          	addiw	a5,a5,13
    800034f4:	00c7f663          	bgeu	a5,a2,80003500 <__memset+0x1c8>
    800034f8:	00f507b3          	add	a5,a0,a5
    800034fc:	00b78023          	sb	a1,0(a5)
    80003500:	00813403          	ld	s0,8(sp)
    80003504:	01010113          	addi	sp,sp,16
    80003508:	00008067          	ret
    8000350c:	00b00693          	li	a3,11
    80003510:	e55ff06f          	j	80003364 <__memset+0x2c>
    80003514:	00300e93          	li	t4,3
    80003518:	ea5ff06f          	j	800033bc <__memset+0x84>
    8000351c:	00100e93          	li	t4,1
    80003520:	e9dff06f          	j	800033bc <__memset+0x84>
    80003524:	00000e93          	li	t4,0
    80003528:	e95ff06f          	j	800033bc <__memset+0x84>
    8000352c:	00000793          	li	a5,0
    80003530:	ef9ff06f          	j	80003428 <__memset+0xf0>
    80003534:	00200e93          	li	t4,2
    80003538:	e85ff06f          	j	800033bc <__memset+0x84>
    8000353c:	00400e93          	li	t4,4
    80003540:	e7dff06f          	j	800033bc <__memset+0x84>
    80003544:	00500e93          	li	t4,5
    80003548:	e75ff06f          	j	800033bc <__memset+0x84>
    8000354c:	00600e93          	li	t4,6
    80003550:	e6dff06f          	j	800033bc <__memset+0x84>

0000000080003554 <__memmove>:
    80003554:	ff010113          	addi	sp,sp,-16
    80003558:	00813423          	sd	s0,8(sp)
    8000355c:	01010413          	addi	s0,sp,16
    80003560:	0e060863          	beqz	a2,80003650 <__memmove+0xfc>
    80003564:	fff6069b          	addiw	a3,a2,-1
    80003568:	0006881b          	sext.w	a6,a3
    8000356c:	0ea5e863          	bltu	a1,a0,8000365c <__memmove+0x108>
    80003570:	00758713          	addi	a4,a1,7
    80003574:	00a5e7b3          	or	a5,a1,a0
    80003578:	40a70733          	sub	a4,a4,a0
    8000357c:	0077f793          	andi	a5,a5,7
    80003580:	00f73713          	sltiu	a4,a4,15
    80003584:	00174713          	xori	a4,a4,1
    80003588:	0017b793          	seqz	a5,a5
    8000358c:	00e7f7b3          	and	a5,a5,a4
    80003590:	10078863          	beqz	a5,800036a0 <__memmove+0x14c>
    80003594:	00900793          	li	a5,9
    80003598:	1107f463          	bgeu	a5,a6,800036a0 <__memmove+0x14c>
    8000359c:	0036581b          	srliw	a6,a2,0x3
    800035a0:	fff8081b          	addiw	a6,a6,-1
    800035a4:	02081813          	slli	a6,a6,0x20
    800035a8:	01d85893          	srli	a7,a6,0x1d
    800035ac:	00858813          	addi	a6,a1,8
    800035b0:	00058793          	mv	a5,a1
    800035b4:	00050713          	mv	a4,a0
    800035b8:	01088833          	add	a6,a7,a6
    800035bc:	0007b883          	ld	a7,0(a5)
    800035c0:	00878793          	addi	a5,a5,8
    800035c4:	00870713          	addi	a4,a4,8
    800035c8:	ff173c23          	sd	a7,-8(a4)
    800035cc:	ff0798e3          	bne	a5,a6,800035bc <__memmove+0x68>
    800035d0:	ff867713          	andi	a4,a2,-8
    800035d4:	02071793          	slli	a5,a4,0x20
    800035d8:	0207d793          	srli	a5,a5,0x20
    800035dc:	00f585b3          	add	a1,a1,a5
    800035e0:	40e686bb          	subw	a3,a3,a4
    800035e4:	00f507b3          	add	a5,a0,a5
    800035e8:	06e60463          	beq	a2,a4,80003650 <__memmove+0xfc>
    800035ec:	0005c703          	lbu	a4,0(a1)
    800035f0:	00e78023          	sb	a4,0(a5)
    800035f4:	04068e63          	beqz	a3,80003650 <__memmove+0xfc>
    800035f8:	0015c603          	lbu	a2,1(a1)
    800035fc:	00100713          	li	a4,1
    80003600:	00c780a3          	sb	a2,1(a5)
    80003604:	04e68663          	beq	a3,a4,80003650 <__memmove+0xfc>
    80003608:	0025c603          	lbu	a2,2(a1)
    8000360c:	00200713          	li	a4,2
    80003610:	00c78123          	sb	a2,2(a5)
    80003614:	02e68e63          	beq	a3,a4,80003650 <__memmove+0xfc>
    80003618:	0035c603          	lbu	a2,3(a1)
    8000361c:	00300713          	li	a4,3
    80003620:	00c781a3          	sb	a2,3(a5)
    80003624:	02e68663          	beq	a3,a4,80003650 <__memmove+0xfc>
    80003628:	0045c603          	lbu	a2,4(a1)
    8000362c:	00400713          	li	a4,4
    80003630:	00c78223          	sb	a2,4(a5)
    80003634:	00e68e63          	beq	a3,a4,80003650 <__memmove+0xfc>
    80003638:	0055c603          	lbu	a2,5(a1)
    8000363c:	00500713          	li	a4,5
    80003640:	00c782a3          	sb	a2,5(a5)
    80003644:	00e68663          	beq	a3,a4,80003650 <__memmove+0xfc>
    80003648:	0065c703          	lbu	a4,6(a1)
    8000364c:	00e78323          	sb	a4,6(a5)
    80003650:	00813403          	ld	s0,8(sp)
    80003654:	01010113          	addi	sp,sp,16
    80003658:	00008067          	ret
    8000365c:	02061713          	slli	a4,a2,0x20
    80003660:	02075713          	srli	a4,a4,0x20
    80003664:	00e587b3          	add	a5,a1,a4
    80003668:	f0f574e3          	bgeu	a0,a5,80003570 <__memmove+0x1c>
    8000366c:	02069613          	slli	a2,a3,0x20
    80003670:	02065613          	srli	a2,a2,0x20
    80003674:	fff64613          	not	a2,a2
    80003678:	00e50733          	add	a4,a0,a4
    8000367c:	00c78633          	add	a2,a5,a2
    80003680:	fff7c683          	lbu	a3,-1(a5)
    80003684:	fff78793          	addi	a5,a5,-1
    80003688:	fff70713          	addi	a4,a4,-1
    8000368c:	00d70023          	sb	a3,0(a4)
    80003690:	fec798e3          	bne	a5,a2,80003680 <__memmove+0x12c>
    80003694:	00813403          	ld	s0,8(sp)
    80003698:	01010113          	addi	sp,sp,16
    8000369c:	00008067          	ret
    800036a0:	02069713          	slli	a4,a3,0x20
    800036a4:	02075713          	srli	a4,a4,0x20
    800036a8:	00170713          	addi	a4,a4,1
    800036ac:	00e50733          	add	a4,a0,a4
    800036b0:	00050793          	mv	a5,a0
    800036b4:	0005c683          	lbu	a3,0(a1)
    800036b8:	00178793          	addi	a5,a5,1
    800036bc:	00158593          	addi	a1,a1,1
    800036c0:	fed78fa3          	sb	a3,-1(a5)
    800036c4:	fee798e3          	bne	a5,a4,800036b4 <__memmove+0x160>
    800036c8:	f89ff06f          	j	80003650 <__memmove+0xfc>

00000000800036cc <__mem_free>:
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00813423          	sd	s0,8(sp)
    800036d4:	01010413          	addi	s0,sp,16
    800036d8:	00001597          	auipc	a1,0x1
    800036dc:	ee058593          	addi	a1,a1,-288 # 800045b8 <freep>
    800036e0:	0005b783          	ld	a5,0(a1)
    800036e4:	ff050693          	addi	a3,a0,-16
    800036e8:	0007b703          	ld	a4,0(a5)
    800036ec:	00d7fc63          	bgeu	a5,a3,80003704 <__mem_free+0x38>
    800036f0:	00e6ee63          	bltu	a3,a4,8000370c <__mem_free+0x40>
    800036f4:	00e7fc63          	bgeu	a5,a4,8000370c <__mem_free+0x40>
    800036f8:	00070793          	mv	a5,a4
    800036fc:	0007b703          	ld	a4,0(a5)
    80003700:	fed7e8e3          	bltu	a5,a3,800036f0 <__mem_free+0x24>
    80003704:	fee7eae3          	bltu	a5,a4,800036f8 <__mem_free+0x2c>
    80003708:	fee6f8e3          	bgeu	a3,a4,800036f8 <__mem_free+0x2c>
    8000370c:	ff852803          	lw	a6,-8(a0)
    80003710:	02081613          	slli	a2,a6,0x20
    80003714:	01c65613          	srli	a2,a2,0x1c
    80003718:	00c68633          	add	a2,a3,a2
    8000371c:	02c70a63          	beq	a4,a2,80003750 <__mem_free+0x84>
    80003720:	fee53823          	sd	a4,-16(a0)
    80003724:	0087a503          	lw	a0,8(a5)
    80003728:	02051613          	slli	a2,a0,0x20
    8000372c:	01c65613          	srli	a2,a2,0x1c
    80003730:	00c78633          	add	a2,a5,a2
    80003734:	04c68263          	beq	a3,a2,80003778 <__mem_free+0xac>
    80003738:	00813403          	ld	s0,8(sp)
    8000373c:	00d7b023          	sd	a3,0(a5)
    80003740:	00f5b023          	sd	a5,0(a1)
    80003744:	00000513          	li	a0,0
    80003748:	01010113          	addi	sp,sp,16
    8000374c:	00008067          	ret
    80003750:	00872603          	lw	a2,8(a4)
    80003754:	00073703          	ld	a4,0(a4)
    80003758:	0106083b          	addw	a6,a2,a6
    8000375c:	ff052c23          	sw	a6,-8(a0)
    80003760:	fee53823          	sd	a4,-16(a0)
    80003764:	0087a503          	lw	a0,8(a5)
    80003768:	02051613          	slli	a2,a0,0x20
    8000376c:	01c65613          	srli	a2,a2,0x1c
    80003770:	00c78633          	add	a2,a5,a2
    80003774:	fcc692e3          	bne	a3,a2,80003738 <__mem_free+0x6c>
    80003778:	00813403          	ld	s0,8(sp)
    8000377c:	0105053b          	addw	a0,a0,a6
    80003780:	00a7a423          	sw	a0,8(a5)
    80003784:	00e7b023          	sd	a4,0(a5)
    80003788:	00f5b023          	sd	a5,0(a1)
    8000378c:	00000513          	li	a0,0
    80003790:	01010113          	addi	sp,sp,16
    80003794:	00008067          	ret

0000000080003798 <__mem_alloc>:
    80003798:	fc010113          	addi	sp,sp,-64
    8000379c:	02813823          	sd	s0,48(sp)
    800037a0:	02913423          	sd	s1,40(sp)
    800037a4:	03213023          	sd	s2,32(sp)
    800037a8:	01513423          	sd	s5,8(sp)
    800037ac:	02113c23          	sd	ra,56(sp)
    800037b0:	01313c23          	sd	s3,24(sp)
    800037b4:	01413823          	sd	s4,16(sp)
    800037b8:	01613023          	sd	s6,0(sp)
    800037bc:	04010413          	addi	s0,sp,64
    800037c0:	00001a97          	auipc	s5,0x1
    800037c4:	df8a8a93          	addi	s5,s5,-520 # 800045b8 <freep>
    800037c8:	00f50913          	addi	s2,a0,15
    800037cc:	000ab683          	ld	a3,0(s5)
    800037d0:	00495913          	srli	s2,s2,0x4
    800037d4:	0019049b          	addiw	s1,s2,1
    800037d8:	00048913          	mv	s2,s1
    800037dc:	0c068c63          	beqz	a3,800038b4 <__mem_alloc+0x11c>
    800037e0:	0006b503          	ld	a0,0(a3)
    800037e4:	00852703          	lw	a4,8(a0)
    800037e8:	10977063          	bgeu	a4,s1,800038e8 <__mem_alloc+0x150>
    800037ec:	000017b7          	lui	a5,0x1
    800037f0:	0009099b          	sext.w	s3,s2
    800037f4:	0af4e863          	bltu	s1,a5,800038a4 <__mem_alloc+0x10c>
    800037f8:	02099a13          	slli	s4,s3,0x20
    800037fc:	01ca5a13          	srli	s4,s4,0x1c
    80003800:	fff00b13          	li	s6,-1
    80003804:	0100006f          	j	80003814 <__mem_alloc+0x7c>
    80003808:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000380c:	00852703          	lw	a4,8(a0)
    80003810:	04977463          	bgeu	a4,s1,80003858 <__mem_alloc+0xc0>
    80003814:	00050793          	mv	a5,a0
    80003818:	fea698e3          	bne	a3,a0,80003808 <__mem_alloc+0x70>
    8000381c:	000a0513          	mv	a0,s4
    80003820:	00000097          	auipc	ra,0x0
    80003824:	1f0080e7          	jalr	496(ra) # 80003a10 <kvmincrease>
    80003828:	00050793          	mv	a5,a0
    8000382c:	01050513          	addi	a0,a0,16
    80003830:	07678e63          	beq	a5,s6,800038ac <__mem_alloc+0x114>
    80003834:	0137a423          	sw	s3,8(a5)
    80003838:	00000097          	auipc	ra,0x0
    8000383c:	e94080e7          	jalr	-364(ra) # 800036cc <__mem_free>
    80003840:	000ab783          	ld	a5,0(s5)
    80003844:	06078463          	beqz	a5,800038ac <__mem_alloc+0x114>
    80003848:	0007b503          	ld	a0,0(a5)
    8000384c:	00078693          	mv	a3,a5
    80003850:	00852703          	lw	a4,8(a0)
    80003854:	fc9760e3          	bltu	a4,s1,80003814 <__mem_alloc+0x7c>
    80003858:	08e48263          	beq	s1,a4,800038dc <__mem_alloc+0x144>
    8000385c:	4127073b          	subw	a4,a4,s2
    80003860:	02071693          	slli	a3,a4,0x20
    80003864:	01c6d693          	srli	a3,a3,0x1c
    80003868:	00e52423          	sw	a4,8(a0)
    8000386c:	00d50533          	add	a0,a0,a3
    80003870:	01252423          	sw	s2,8(a0)
    80003874:	00fab023          	sd	a5,0(s5)
    80003878:	01050513          	addi	a0,a0,16
    8000387c:	03813083          	ld	ra,56(sp)
    80003880:	03013403          	ld	s0,48(sp)
    80003884:	02813483          	ld	s1,40(sp)
    80003888:	02013903          	ld	s2,32(sp)
    8000388c:	01813983          	ld	s3,24(sp)
    80003890:	01013a03          	ld	s4,16(sp)
    80003894:	00813a83          	ld	s5,8(sp)
    80003898:	00013b03          	ld	s6,0(sp)
    8000389c:	04010113          	addi	sp,sp,64
    800038a0:	00008067          	ret
    800038a4:	000019b7          	lui	s3,0x1
    800038a8:	f51ff06f          	j	800037f8 <__mem_alloc+0x60>
    800038ac:	00000513          	li	a0,0
    800038b0:	fcdff06f          	j	8000387c <__mem_alloc+0xe4>
    800038b4:	00002797          	auipc	a5,0x2
    800038b8:	f7c78793          	addi	a5,a5,-132 # 80005830 <base>
    800038bc:	00078513          	mv	a0,a5
    800038c0:	00fab023          	sd	a5,0(s5)
    800038c4:	00f7b023          	sd	a5,0(a5)
    800038c8:	00000713          	li	a4,0
    800038cc:	00002797          	auipc	a5,0x2
    800038d0:	f607a623          	sw	zero,-148(a5) # 80005838 <base+0x8>
    800038d4:	00050693          	mv	a3,a0
    800038d8:	f11ff06f          	j	800037e8 <__mem_alloc+0x50>
    800038dc:	00053703          	ld	a4,0(a0)
    800038e0:	00e7b023          	sd	a4,0(a5)
    800038e4:	f91ff06f          	j	80003874 <__mem_alloc+0xdc>
    800038e8:	00068793          	mv	a5,a3
    800038ec:	f6dff06f          	j	80003858 <__mem_alloc+0xc0>

00000000800038f0 <__putc>:
    800038f0:	fe010113          	addi	sp,sp,-32
    800038f4:	00813823          	sd	s0,16(sp)
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	02010413          	addi	s0,sp,32
    80003900:	00050793          	mv	a5,a0
    80003904:	fef40593          	addi	a1,s0,-17
    80003908:	00100613          	li	a2,1
    8000390c:	00000513          	li	a0,0
    80003910:	fef407a3          	sb	a5,-17(s0)
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	918080e7          	jalr	-1768(ra) # 8000222c <console_write>
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	02010113          	addi	sp,sp,32
    80003928:	00008067          	ret

000000008000392c <__getc>:
    8000392c:	fe010113          	addi	sp,sp,-32
    80003930:	00813823          	sd	s0,16(sp)
    80003934:	00113c23          	sd	ra,24(sp)
    80003938:	02010413          	addi	s0,sp,32
    8000393c:	fe840593          	addi	a1,s0,-24
    80003940:	00100613          	li	a2,1
    80003944:	00000513          	li	a0,0
    80003948:	fffff097          	auipc	ra,0xfffff
    8000394c:	8c4080e7          	jalr	-1852(ra) # 8000220c <console_read>
    80003950:	fe844503          	lbu	a0,-24(s0)
    80003954:	01813083          	ld	ra,24(sp)
    80003958:	01013403          	ld	s0,16(sp)
    8000395c:	02010113          	addi	sp,sp,32
    80003960:	00008067          	ret

0000000080003964 <console_handler>:
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00113c23          	sd	ra,24(sp)
    80003970:	00913423          	sd	s1,8(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	14202773          	csrr	a4,scause
    8000397c:	100027f3          	csrr	a5,sstatus
    80003980:	0027f793          	andi	a5,a5,2
    80003984:	06079e63          	bnez	a5,80003a00 <console_handler+0x9c>
    80003988:	00074c63          	bltz	a4,800039a0 <console_handler+0x3c>
    8000398c:	01813083          	ld	ra,24(sp)
    80003990:	01013403          	ld	s0,16(sp)
    80003994:	00813483          	ld	s1,8(sp)
    80003998:	02010113          	addi	sp,sp,32
    8000399c:	00008067          	ret
    800039a0:	0ff77713          	andi	a4,a4,255
    800039a4:	00900793          	li	a5,9
    800039a8:	fef712e3          	bne	a4,a5,8000398c <console_handler+0x28>
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	4b8080e7          	jalr	1208(ra) # 80001e64 <plic_claim>
    800039b4:	00a00793          	li	a5,10
    800039b8:	00050493          	mv	s1,a0
    800039bc:	02f50c63          	beq	a0,a5,800039f4 <console_handler+0x90>
    800039c0:	fc0506e3          	beqz	a0,8000398c <console_handler+0x28>
    800039c4:	00050593          	mv	a1,a0
    800039c8:	00000517          	auipc	a0,0x0
    800039cc:	71850513          	addi	a0,a0,1816 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    800039d0:	fffff097          	auipc	ra,0xfffff
    800039d4:	8d8080e7          	jalr	-1832(ra) # 800022a8 <__printf>
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	01813083          	ld	ra,24(sp)
    800039e0:	00048513          	mv	a0,s1
    800039e4:	00813483          	ld	s1,8(sp)
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	ffffe317          	auipc	t1,0xffffe
    800039f0:	4b030067          	jr	1200(t1) # 80001e9c <plic_complete>
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	1bc080e7          	jalr	444(ra) # 80002bb0 <uartintr>
    800039fc:	fddff06f          	j	800039d8 <console_handler+0x74>
    80003a00:	00000517          	auipc	a0,0x0
    80003a04:	7e050513          	addi	a0,a0,2016 # 800041e0 <digits+0x78>
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	844080e7          	jalr	-1980(ra) # 8000224c <panic>

0000000080003a10 <kvmincrease>:
    80003a10:	fe010113          	addi	sp,sp,-32
    80003a14:	01213023          	sd	s2,0(sp)
    80003a18:	00001937          	lui	s2,0x1
    80003a1c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003a20:	00813823          	sd	s0,16(sp)
    80003a24:	00113c23          	sd	ra,24(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	02010413          	addi	s0,sp,32
    80003a30:	01250933          	add	s2,a0,s2
    80003a34:	00c95913          	srli	s2,s2,0xc
    80003a38:	02090863          	beqz	s2,80003a68 <kvmincrease+0x58>
    80003a3c:	00000493          	li	s1,0
    80003a40:	00148493          	addi	s1,s1,1
    80003a44:	fffff097          	auipc	ra,0xfffff
    80003a48:	4bc080e7          	jalr	1212(ra) # 80002f00 <kalloc>
    80003a4c:	fe991ae3          	bne	s2,s1,80003a40 <kvmincrease+0x30>
    80003a50:	01813083          	ld	ra,24(sp)
    80003a54:	01013403          	ld	s0,16(sp)
    80003a58:	00813483          	ld	s1,8(sp)
    80003a5c:	00013903          	ld	s2,0(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret
    80003a68:	01813083          	ld	ra,24(sp)
    80003a6c:	01013403          	ld	s0,16(sp)
    80003a70:	00813483          	ld	s1,8(sp)
    80003a74:	00013903          	ld	s2,0(sp)
    80003a78:	00000513          	li	a0,0
    80003a7c:	02010113          	addi	sp,sp,32
    80003a80:	00008067          	ret
	...

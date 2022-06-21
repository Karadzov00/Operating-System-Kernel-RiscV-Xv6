
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	57813103          	ld	sp,1400(sp) # 80004578 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	610010ef          	jal	ra,8000162c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:

.global supervisorTrap
.type supervisorTrap, @function
supervisorTrap:
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
    80001080:	2a4000ef          	jal	ra,80001324 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001110:	fe010113          	addi	sp,sp,-32
    80001114:	00113c23          	sd	ra,24(sp)
    80001118:	00813823          	sd	s0,16(sp)
    8000111c:	00913423          	sd	s1,8(sp)
    80001120:	02010413          	addi	s0,sp,32
    80001124:	00050493          	mv	s1,a0
    //should prepare arguments in registers
    //should call interrupt routine with ecall

    80001128:	00003517          	auipc	a0,0x3
    8000112c:	ed850513          	addi	a0,a0,-296 # 80004000 <kvmincrease+0x5d0>
    80001130:	00000097          	auipc	ra,0x0
    80001134:	288080e7          	jalr	648(ra) # 800013b8 <_Z11printStringPKc>

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

    800011b4:	00048513          	mv	a0,s1
    800011b8:	00000097          	auipc	ra,0x0
    800011bc:	270080e7          	jalr	624(ra) # 80001428 <_Z12printIntegerm>
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
    800011ec:	3887b783          	ld	a5,904(a5) # 80004570 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800011f0:	10579073          	csrw	stvec,a5
    printString("Hello");
    800011f4:	00003517          	auipc	a0,0x3
    800011f8:	e1c50513          	addi	a0,a0,-484 # 80004010 <kvmincrease+0x5e0>
    800011fc:	00000097          	auipc	ra,0x0
    80001200:	1bc080e7          	jalr	444(ra) # 800013b8 <_Z11printStringPKc>
    mem_alloc(300);
    80001204:	12c00513          	li	a0,300
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
    80001238:	134080e7          	jalr	308(ra) # 80001368 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001260:	10c080e7          	jalr	268(ra) # 80001368 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001288:	10c080e7          	jalr	268(ra) # 80001390 <_ZN15MemoryAllocator8mem_freeEPv>
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
    800012b0:	0e4080e7          	jalr	228(ra) # 80001390 <_ZN15MemoryAllocator8mem_freeEPv>

}
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	00013403          	ld	s0,0(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret

00000000800012c4 <_ZN5Riscv14syscallHandlerEv>:
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800012c4:	00050713          	mv	a4,a0
    if(arg0== 0x01 ){
    800012c8:	00100793          	li	a5,1
    800012cc:	00f70463          	beq	a4,a5,800012d4 <_ZN5Riscv14syscallHandlerEv+0x10>
    800012d0:	00008067          	ret
void Riscv::syscallHandler() {
    800012d4:	ff010113          	addi	sp,sp,-16
    800012d8:	00113423          	sd	ra,8(sp)
    800012dc:	00813023          	sd	s0,0(sp)
    800012e0:	01010413          	addi	s0,sp,16
        //mem_alloc
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800012e4:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	080080e7          	jalr	128(ra) # 80001368 <_ZN15MemoryAllocator9mem_allocEm>

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800012f0:	00050513          	mv	a0,a0
    }

}
    800012f4:	00813083          	ld	ra,8(sp)
    800012f8:	00013403          	ld	s0,0(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001310:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001314:	10200073          	sret
}
    80001318:	00813403          	ld	s0,8(sp)
    8000131c:	01010113          	addi	sp,sp,16
    80001320:	00008067          	ret

0000000080001324 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001324:	fe010113          	addi	sp,sp,-32
    80001328:	00113c23          	sd	ra,24(sp)
    8000132c:	00813823          	sd	s0,16(sp)
    80001330:	02010413          	addi	s0,sp,32
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001334:	142027f3          	csrr	a5,scause
    80001338:	fef43423          	sd	a5,-24(s0)
    return scause;
    8000133c:	fe843783          	ld	a5,-24(s0)
    uint scause = r_scause();

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001340:	ff87879b          	addiw	a5,a5,-8
    80001344:	00100713          	li	a4,1
    80001348:	00f77a63          	bgeu	a4,a5,8000135c <_ZN5Riscv20handleSupervisorTrapEv+0x38>
        //print(sepc)
        //print(stval) //trap value

    }

}
    8000134c:	01813083          	ld	ra,24(sp)
    80001350:	01013403          	ld	s0,16(sp)
    80001354:	02010113          	addi	sp,sp,32
    80001358:	00008067          	ret
        syscallHandler();
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	f68080e7          	jalr	-152(ra) # 800012c4 <_ZN5Riscv14syscallHandlerEv>
}
    80001364:	fe9ff06f          	j	8000134c <_ZN5Riscv20handleSupervisorTrapEv+0x28>

0000000080001368 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00113423          	sd	ra,8(sp)
    80001370:	00813023          	sd	s0,0(sp)
    80001374:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	440080e7          	jalr	1088(ra) # 800037b8 <__mem_alloc>
}
    80001380:	00813083          	ld	ra,8(sp)
    80001384:	00013403          	ld	s0,0(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00113423          	sd	ra,8(sp)
    80001398:	00813023          	sd	s0,0(sp)
    8000139c:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    800013a0:	00002097          	auipc	ra,0x2
    800013a4:	34c080e7          	jalr	844(ra) # 800036ec <__mem_free>
    800013a8:	00813083          	ld	ra,8(sp)
    800013ac:	00013403          	ld	s0,0(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800013b8:	fd010113          	addi	sp,sp,-48
    800013bc:	02113423          	sd	ra,40(sp)
    800013c0:	02813023          	sd	s0,32(sp)
    800013c4:	00913c23          	sd	s1,24(sp)
    800013c8:	01213823          	sd	s2,16(sp)
    800013cc:	03010413          	addi	s0,sp,48
    800013d0:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800013d4:	100027f3          	csrr	a5,sstatus
    800013d8:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800013dc:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800013e0:	00200793          	li	a5,2
    800013e4:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    800013e8:	0004c503          	lbu	a0,0(s1)
    800013ec:	00050a63          	beqz	a0,80001400 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800013f0:	00002097          	auipc	ra,0x2
    800013f4:	520080e7          	jalr	1312(ra) # 80003910 <__putc>
        string++;
    800013f8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800013fc:	fedff06f          	j	800013e8 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001400:	0009091b          	sext.w	s2,s2
    80001404:	00297913          	andi	s2,s2,2
    80001408:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000140c:	10092073          	csrs	sstatus,s2
}
    80001410:	02813083          	ld	ra,40(sp)
    80001414:	02013403          	ld	s0,32(sp)
    80001418:	01813483          	ld	s1,24(sp)
    8000141c:	01013903          	ld	s2,16(sp)
    80001420:	03010113          	addi	sp,sp,48
    80001424:	00008067          	ret

0000000080001428 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001428:	fc010113          	addi	sp,sp,-64
    8000142c:	02113c23          	sd	ra,56(sp)
    80001430:	02813823          	sd	s0,48(sp)
    80001434:	02913423          	sd	s1,40(sp)
    80001438:	03213023          	sd	s2,32(sp)
    8000143c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001440:	100027f3          	csrr	a5,sstatus
    80001444:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001448:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000144c:	00200793          	li	a5,2
    80001450:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001454:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001458:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    8000145c:	00a00613          	li	a2,10
    80001460:	02c5773b          	remuw	a4,a0,a2
    80001464:	02071693          	slli	a3,a4,0x20
    80001468:	0206d693          	srli	a3,a3,0x20
    8000146c:	00003717          	auipc	a4,0x3
    80001470:	bac70713          	addi	a4,a4,-1108 # 80004018 <_ZZ12printIntegermE6digits>
    80001474:	00d70733          	add	a4,a4,a3
    80001478:	00074703          	lbu	a4,0(a4)
    8000147c:	fe040693          	addi	a3,s0,-32
    80001480:	009687b3          	add	a5,a3,s1
    80001484:	0014849b          	addiw	s1,s1,1
    80001488:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000148c:	0005071b          	sext.w	a4,a0
    80001490:	02c5553b          	divuw	a0,a0,a2
    80001494:	00900793          	li	a5,9
    80001498:	fce7e2e3          	bltu	a5,a4,8000145c <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000149c:	fff4849b          	addiw	s1,s1,-1
    800014a0:	0004ce63          	bltz	s1,800014bc <_Z12printIntegerm+0x94>
    800014a4:	fe040793          	addi	a5,s0,-32
    800014a8:	009787b3          	add	a5,a5,s1
    800014ac:	ff07c503          	lbu	a0,-16(a5)
    800014b0:	00002097          	auipc	ra,0x2
    800014b4:	460080e7          	jalr	1120(ra) # 80003910 <__putc>
    800014b8:	fe5ff06f          	j	8000149c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800014bc:	0009091b          	sext.w	s2,s2
    800014c0:	00297913          	andi	s2,s2,2
    800014c4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014c8:	10092073          	csrs	sstatus,s2
}
    800014cc:	03813083          	ld	ra,56(sp)
    800014d0:	03013403          	ld	s0,48(sp)
    800014d4:	02813483          	ld	s1,40(sp)
    800014d8:	02013903          	ld	s2,32(sp)
    800014dc:	04010113          	addi	sp,sp,64
    800014e0:	00008067          	ret

00000000800014e4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800014e4:	ff010113          	addi	sp,sp,-16
    800014e8:	00813423          	sd	s0,8(sp)
    800014ec:	01010413          	addi	s0,sp,16
    800014f0:	00100793          	li	a5,1
    800014f4:	00f50863          	beq	a0,a5,80001504 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014f8:	00813403          	ld	s0,8(sp)
    800014fc:	01010113          	addi	sp,sp,16
    80001500:	00008067          	ret
    80001504:	000107b7          	lui	a5,0x10
    80001508:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000150c:	fef596e3          	bne	a1,a5,800014f8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001510:	00003797          	auipc	a5,0x3
    80001514:	0c078793          	addi	a5,a5,192 # 800045d0 <_ZN9Scheduler16readyThreadQueueE>
    80001518:	0007b023          	sd	zero,0(a5)
    8000151c:	0007b423          	sd	zero,8(a5)
    80001520:	fd9ff06f          	j	800014f8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001524 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001524:	fe010113          	addi	sp,sp,-32
    80001528:	00113c23          	sd	ra,24(sp)
    8000152c:	00813823          	sd	s0,16(sp)
    80001530:	00913423          	sd	s1,8(sp)
    80001534:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001538:	00003517          	auipc	a0,0x3
    8000153c:	09853503          	ld	a0,152(a0) # 800045d0 <_ZN9Scheduler16readyThreadQueueE>
    80001540:	04050263          	beqz	a0,80001584 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001544:	00853783          	ld	a5,8(a0)
    80001548:	00003717          	auipc	a4,0x3
    8000154c:	08f73423          	sd	a5,136(a4) # 800045d0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001550:	02078463          	beqz	a5,80001578 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001554:	00053483          	ld	s1,0(a0)
        delete elem;
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	d1c080e7          	jalr	-740(ra) # 80001274 <_ZdlPv>
}
    80001560:	00048513          	mv	a0,s1
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret
        if (!head) { tail = 0; }
    80001578:	00003797          	auipc	a5,0x3
    8000157c:	0607b023          	sd	zero,96(a5) # 800045d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001580:	fd5ff06f          	j	80001554 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001584:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001588:	fd9ff06f          	j	80001560 <_ZN9Scheduler3getEv+0x3c>

000000008000158c <_ZN9Scheduler3putEP3TCB>:
{
    8000158c:	fe010113          	addi	sp,sp,-32
    80001590:	00113c23          	sd	ra,24(sp)
    80001594:	00813823          	sd	s0,16(sp)
    80001598:	00913423          	sd	s1,8(sp)
    8000159c:	02010413          	addi	s0,sp,32
    800015a0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800015a4:	01000513          	li	a0,16
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	c7c080e7          	jalr	-900(ra) # 80001224 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800015b0:	00953023          	sd	s1,0(a0)
    800015b4:	00053423          	sd	zero,8(a0)
        if (tail)
    800015b8:	00003797          	auipc	a5,0x3
    800015bc:	0207b783          	ld	a5,32(a5) # 800045d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800015c0:	02078263          	beqz	a5,800015e4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800015c4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800015c8:	00003797          	auipc	a5,0x3
    800015cc:	00a7b823          	sd	a0,16(a5) # 800045d8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800015d0:	01813083          	ld	ra,24(sp)
    800015d4:	01013403          	ld	s0,16(sp)
    800015d8:	00813483          	ld	s1,8(sp)
    800015dc:	02010113          	addi	sp,sp,32
    800015e0:	00008067          	ret
            head = tail = elem;
    800015e4:	00003797          	auipc	a5,0x3
    800015e8:	fec78793          	addi	a5,a5,-20 # 800045d0 <_ZN9Scheduler16readyThreadQueueE>
    800015ec:	00a7b423          	sd	a0,8(a5)
    800015f0:	00a7b023          	sd	a0,0(a5)
    800015f4:	fddff06f          	j	800015d0 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800015f8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800015f8:	ff010113          	addi	sp,sp,-16
    800015fc:	00113423          	sd	ra,8(sp)
    80001600:	00813023          	sd	s0,0(sp)
    80001604:	01010413          	addi	s0,sp,16
    80001608:	000105b7          	lui	a1,0x10
    8000160c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001610:	00100513          	li	a0,1
    80001614:	00000097          	auipc	ra,0x0
    80001618:	ed0080e7          	jalr	-304(ra) # 800014e4 <_Z41__static_initialization_and_destruction_0ii>
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <start>:
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    80001638:	300027f3          	csrr	a5,mstatus
    8000163c:	ffffe737          	lui	a4,0xffffe
    80001640:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8faf>
    80001644:	00e7f7b3          	and	a5,a5,a4
    80001648:	00001737          	lui	a4,0x1
    8000164c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001650:	00e7e7b3          	or	a5,a5,a4
    80001654:	30079073          	csrw	mstatus,a5
    80001658:	00000797          	auipc	a5,0x0
    8000165c:	16078793          	addi	a5,a5,352 # 800017b8 <system_main>
    80001660:	34179073          	csrw	mepc,a5
    80001664:	00000793          	li	a5,0
    80001668:	18079073          	csrw	satp,a5
    8000166c:	000107b7          	lui	a5,0x10
    80001670:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001674:	30279073          	csrw	medeleg,a5
    80001678:	30379073          	csrw	mideleg,a5
    8000167c:	104027f3          	csrr	a5,sie
    80001680:	2227e793          	ori	a5,a5,546
    80001684:	10479073          	csrw	sie,a5
    80001688:	fff00793          	li	a5,-1
    8000168c:	00a7d793          	srli	a5,a5,0xa
    80001690:	3b079073          	csrw	pmpaddr0,a5
    80001694:	00f00793          	li	a5,15
    80001698:	3a079073          	csrw	pmpcfg0,a5
    8000169c:	f14027f3          	csrr	a5,mhartid
    800016a0:	0200c737          	lui	a4,0x200c
    800016a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800016a8:	0007869b          	sext.w	a3,a5
    800016ac:	00269713          	slli	a4,a3,0x2
    800016b0:	000f4637          	lui	a2,0xf4
    800016b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800016b8:	00d70733          	add	a4,a4,a3
    800016bc:	0037979b          	slliw	a5,a5,0x3
    800016c0:	020046b7          	lui	a3,0x2004
    800016c4:	00d787b3          	add	a5,a5,a3
    800016c8:	00c585b3          	add	a1,a1,a2
    800016cc:	00371693          	slli	a3,a4,0x3
    800016d0:	00003717          	auipc	a4,0x3
    800016d4:	f1070713          	addi	a4,a4,-240 # 800045e0 <timer_scratch>
    800016d8:	00b7b023          	sd	a1,0(a5)
    800016dc:	00d70733          	add	a4,a4,a3
    800016e0:	00f73c23          	sd	a5,24(a4)
    800016e4:	02c73023          	sd	a2,32(a4)
    800016e8:	34071073          	csrw	mscratch,a4
    800016ec:	00000797          	auipc	a5,0x0
    800016f0:	6e478793          	addi	a5,a5,1764 # 80001dd0 <timervec>
    800016f4:	30579073          	csrw	mtvec,a5
    800016f8:	300027f3          	csrr	a5,mstatus
    800016fc:	0087e793          	ori	a5,a5,8
    80001700:	30079073          	csrw	mstatus,a5
    80001704:	304027f3          	csrr	a5,mie
    80001708:	0807e793          	ori	a5,a5,128
    8000170c:	30479073          	csrw	mie,a5
    80001710:	f14027f3          	csrr	a5,mhartid
    80001714:	0007879b          	sext.w	a5,a5
    80001718:	00078213          	mv	tp,a5
    8000171c:	30200073          	mret
    80001720:	00813403          	ld	s0,8(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <timerinit>:
    8000172c:	ff010113          	addi	sp,sp,-16
    80001730:	00813423          	sd	s0,8(sp)
    80001734:	01010413          	addi	s0,sp,16
    80001738:	f14027f3          	csrr	a5,mhartid
    8000173c:	0200c737          	lui	a4,0x200c
    80001740:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001744:	0007869b          	sext.w	a3,a5
    80001748:	00269713          	slli	a4,a3,0x2
    8000174c:	000f4637          	lui	a2,0xf4
    80001750:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001754:	00d70733          	add	a4,a4,a3
    80001758:	0037979b          	slliw	a5,a5,0x3
    8000175c:	020046b7          	lui	a3,0x2004
    80001760:	00d787b3          	add	a5,a5,a3
    80001764:	00c585b3          	add	a1,a1,a2
    80001768:	00371693          	slli	a3,a4,0x3
    8000176c:	00003717          	auipc	a4,0x3
    80001770:	e7470713          	addi	a4,a4,-396 # 800045e0 <timer_scratch>
    80001774:	00b7b023          	sd	a1,0(a5)
    80001778:	00d70733          	add	a4,a4,a3
    8000177c:	00f73c23          	sd	a5,24(a4)
    80001780:	02c73023          	sd	a2,32(a4)
    80001784:	34071073          	csrw	mscratch,a4
    80001788:	00000797          	auipc	a5,0x0
    8000178c:	64878793          	addi	a5,a5,1608 # 80001dd0 <timervec>
    80001790:	30579073          	csrw	mtvec,a5
    80001794:	300027f3          	csrr	a5,mstatus
    80001798:	0087e793          	ori	a5,a5,8
    8000179c:	30079073          	csrw	mstatus,a5
    800017a0:	304027f3          	csrr	a5,mie
    800017a4:	0807e793          	ori	a5,a5,128
    800017a8:	30479073          	csrw	mie,a5
    800017ac:	00813403          	ld	s0,8(sp)
    800017b0:	01010113          	addi	sp,sp,16
    800017b4:	00008067          	ret

00000000800017b8 <system_main>:
    800017b8:	fe010113          	addi	sp,sp,-32
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	00113c23          	sd	ra,24(sp)
    800017c8:	02010413          	addi	s0,sp,32
    800017cc:	00000097          	auipc	ra,0x0
    800017d0:	0c4080e7          	jalr	196(ra) # 80001890 <cpuid>
    800017d4:	00003497          	auipc	s1,0x3
    800017d8:	dcc48493          	addi	s1,s1,-564 # 800045a0 <started>
    800017dc:	02050263          	beqz	a0,80001800 <system_main+0x48>
    800017e0:	0004a783          	lw	a5,0(s1)
    800017e4:	0007879b          	sext.w	a5,a5
    800017e8:	fe078ce3          	beqz	a5,800017e0 <system_main+0x28>
    800017ec:	0ff0000f          	fence
    800017f0:	00003517          	auipc	a0,0x3
    800017f4:	86850513          	addi	a0,a0,-1944 # 80004058 <_ZZ12printIntegermE6digits+0x40>
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	a74080e7          	jalr	-1420(ra) # 8000226c <panic>
    80001800:	00001097          	auipc	ra,0x1
    80001804:	9c8080e7          	jalr	-1592(ra) # 800021c8 <consoleinit>
    80001808:	00001097          	auipc	ra,0x1
    8000180c:	154080e7          	jalr	340(ra) # 8000295c <printfinit>
    80001810:	00003517          	auipc	a0,0x3
    80001814:	92850513          	addi	a0,a0,-1752 # 80004138 <_ZZ12printIntegermE6digits+0x120>
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	ab0080e7          	jalr	-1360(ra) # 800022c8 <__printf>
    80001820:	00003517          	auipc	a0,0x3
    80001824:	80850513          	addi	a0,a0,-2040 # 80004028 <_ZZ12printIntegermE6digits+0x10>
    80001828:	00001097          	auipc	ra,0x1
    8000182c:	aa0080e7          	jalr	-1376(ra) # 800022c8 <__printf>
    80001830:	00003517          	auipc	a0,0x3
    80001834:	90850513          	addi	a0,a0,-1784 # 80004138 <_ZZ12printIntegermE6digits+0x120>
    80001838:	00001097          	auipc	ra,0x1
    8000183c:	a90080e7          	jalr	-1392(ra) # 800022c8 <__printf>
    80001840:	00001097          	auipc	ra,0x1
    80001844:	4a8080e7          	jalr	1192(ra) # 80002ce8 <kinit>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	148080e7          	jalr	328(ra) # 80001990 <trapinit>
    80001850:	00000097          	auipc	ra,0x0
    80001854:	16c080e7          	jalr	364(ra) # 800019bc <trapinithart>
    80001858:	00000097          	auipc	ra,0x0
    8000185c:	5b8080e7          	jalr	1464(ra) # 80001e10 <plicinit>
    80001860:	00000097          	auipc	ra,0x0
    80001864:	5d8080e7          	jalr	1496(ra) # 80001e38 <plicinithart>
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	078080e7          	jalr	120(ra) # 800018e0 <userinit>
    80001870:	0ff0000f          	fence
    80001874:	00100793          	li	a5,1
    80001878:	00002517          	auipc	a0,0x2
    8000187c:	7c850513          	addi	a0,a0,1992 # 80004040 <_ZZ12printIntegermE6digits+0x28>
    80001880:	00f4a023          	sw	a5,0(s1)
    80001884:	00001097          	auipc	ra,0x1
    80001888:	a44080e7          	jalr	-1468(ra) # 800022c8 <__printf>
    8000188c:	0000006f          	j	8000188c <system_main+0xd4>

0000000080001890 <cpuid>:
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00813423          	sd	s0,8(sp)
    80001898:	01010413          	addi	s0,sp,16
    8000189c:	00020513          	mv	a0,tp
    800018a0:	00813403          	ld	s0,8(sp)
    800018a4:	0005051b          	sext.w	a0,a0
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <mycpu>:
    800018b0:	ff010113          	addi	sp,sp,-16
    800018b4:	00813423          	sd	s0,8(sp)
    800018b8:	01010413          	addi	s0,sp,16
    800018bc:	00020793          	mv	a5,tp
    800018c0:	00813403          	ld	s0,8(sp)
    800018c4:	0007879b          	sext.w	a5,a5
    800018c8:	00779793          	slli	a5,a5,0x7
    800018cc:	00004517          	auipc	a0,0x4
    800018d0:	d4450513          	addi	a0,a0,-700 # 80005610 <cpus>
    800018d4:	00f50533          	add	a0,a0,a5
    800018d8:	01010113          	addi	sp,sp,16
    800018dc:	00008067          	ret

00000000800018e0 <userinit>:
    800018e0:	ff010113          	addi	sp,sp,-16
    800018e4:	00813423          	sd	s0,8(sp)
    800018e8:	01010413          	addi	s0,sp,16
    800018ec:	00813403          	ld	s0,8(sp)
    800018f0:	01010113          	addi	sp,sp,16
    800018f4:	00000317          	auipc	t1,0x0
    800018f8:	8e430067          	jr	-1820(t1) # 800011d8 <main>

00000000800018fc <either_copyout>:
    800018fc:	ff010113          	addi	sp,sp,-16
    80001900:	00813023          	sd	s0,0(sp)
    80001904:	00113423          	sd	ra,8(sp)
    80001908:	01010413          	addi	s0,sp,16
    8000190c:	02051663          	bnez	a0,80001938 <either_copyout+0x3c>
    80001910:	00058513          	mv	a0,a1
    80001914:	00060593          	mv	a1,a2
    80001918:	0006861b          	sext.w	a2,a3
    8000191c:	00002097          	auipc	ra,0x2
    80001920:	c58080e7          	jalr	-936(ra) # 80003574 <__memmove>
    80001924:	00813083          	ld	ra,8(sp)
    80001928:	00013403          	ld	s0,0(sp)
    8000192c:	00000513          	li	a0,0
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret
    80001938:	00002517          	auipc	a0,0x2
    8000193c:	74850513          	addi	a0,a0,1864 # 80004080 <_ZZ12printIntegermE6digits+0x68>
    80001940:	00001097          	auipc	ra,0x1
    80001944:	92c080e7          	jalr	-1748(ra) # 8000226c <panic>

0000000080001948 <either_copyin>:
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00813023          	sd	s0,0(sp)
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	01010413          	addi	s0,sp,16
    80001958:	02059463          	bnez	a1,80001980 <either_copyin+0x38>
    8000195c:	00060593          	mv	a1,a2
    80001960:	0006861b          	sext.w	a2,a3
    80001964:	00002097          	auipc	ra,0x2
    80001968:	c10080e7          	jalr	-1008(ra) # 80003574 <__memmove>
    8000196c:	00813083          	ld	ra,8(sp)
    80001970:	00013403          	ld	s0,0(sp)
    80001974:	00000513          	li	a0,0
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret
    80001980:	00002517          	auipc	a0,0x2
    80001984:	72850513          	addi	a0,a0,1832 # 800040a8 <_ZZ12printIntegermE6digits+0x90>
    80001988:	00001097          	auipc	ra,0x1
    8000198c:	8e4080e7          	jalr	-1820(ra) # 8000226c <panic>

0000000080001990 <trapinit>:
    80001990:	ff010113          	addi	sp,sp,-16
    80001994:	00813423          	sd	s0,8(sp)
    80001998:	01010413          	addi	s0,sp,16
    8000199c:	00813403          	ld	s0,8(sp)
    800019a0:	00002597          	auipc	a1,0x2
    800019a4:	73058593          	addi	a1,a1,1840 # 800040d0 <_ZZ12printIntegermE6digits+0xb8>
    800019a8:	00004517          	auipc	a0,0x4
    800019ac:	ce850513          	addi	a0,a0,-792 # 80005690 <tickslock>
    800019b0:	01010113          	addi	sp,sp,16
    800019b4:	00001317          	auipc	t1,0x1
    800019b8:	5c430067          	jr	1476(t1) # 80002f78 <initlock>

00000000800019bc <trapinithart>:
    800019bc:	ff010113          	addi	sp,sp,-16
    800019c0:	00813423          	sd	s0,8(sp)
    800019c4:	01010413          	addi	s0,sp,16
    800019c8:	00000797          	auipc	a5,0x0
    800019cc:	2f878793          	addi	a5,a5,760 # 80001cc0 <kernelvec>
    800019d0:	10579073          	csrw	stvec,a5
    800019d4:	00813403          	ld	s0,8(sp)
    800019d8:	01010113          	addi	sp,sp,16
    800019dc:	00008067          	ret

00000000800019e0 <usertrap>:
    800019e0:	ff010113          	addi	sp,sp,-16
    800019e4:	00813423          	sd	s0,8(sp)
    800019e8:	01010413          	addi	s0,sp,16
    800019ec:	00813403          	ld	s0,8(sp)
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret

00000000800019f8 <usertrapret>:
    800019f8:	ff010113          	addi	sp,sp,-16
    800019fc:	00813423          	sd	s0,8(sp)
    80001a00:	01010413          	addi	s0,sp,16
    80001a04:	00813403          	ld	s0,8(sp)
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00008067          	ret

0000000080001a10 <kerneltrap>:
    80001a10:	fe010113          	addi	sp,sp,-32
    80001a14:	00813823          	sd	s0,16(sp)
    80001a18:	00113c23          	sd	ra,24(sp)
    80001a1c:	00913423          	sd	s1,8(sp)
    80001a20:	02010413          	addi	s0,sp,32
    80001a24:	142025f3          	csrr	a1,scause
    80001a28:	100027f3          	csrr	a5,sstatus
    80001a2c:	0027f793          	andi	a5,a5,2
    80001a30:	10079c63          	bnez	a5,80001b48 <kerneltrap+0x138>
    80001a34:	142027f3          	csrr	a5,scause
    80001a38:	0207ce63          	bltz	a5,80001a74 <kerneltrap+0x64>
    80001a3c:	00002517          	auipc	a0,0x2
    80001a40:	6dc50513          	addi	a0,a0,1756 # 80004118 <_ZZ12printIntegermE6digits+0x100>
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	884080e7          	jalr	-1916(ra) # 800022c8 <__printf>
    80001a4c:	141025f3          	csrr	a1,sepc
    80001a50:	14302673          	csrr	a2,stval
    80001a54:	00002517          	auipc	a0,0x2
    80001a58:	6d450513          	addi	a0,a0,1748 # 80004128 <_ZZ12printIntegermE6digits+0x110>
    80001a5c:	00001097          	auipc	ra,0x1
    80001a60:	86c080e7          	jalr	-1940(ra) # 800022c8 <__printf>
    80001a64:	00002517          	auipc	a0,0x2
    80001a68:	6dc50513          	addi	a0,a0,1756 # 80004140 <_ZZ12printIntegermE6digits+0x128>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	800080e7          	jalr	-2048(ra) # 8000226c <panic>
    80001a74:	0ff7f713          	andi	a4,a5,255
    80001a78:	00900693          	li	a3,9
    80001a7c:	04d70063          	beq	a4,a3,80001abc <kerneltrap+0xac>
    80001a80:	fff00713          	li	a4,-1
    80001a84:	03f71713          	slli	a4,a4,0x3f
    80001a88:	00170713          	addi	a4,a4,1
    80001a8c:	fae798e3          	bne	a5,a4,80001a3c <kerneltrap+0x2c>
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	e00080e7          	jalr	-512(ra) # 80001890 <cpuid>
    80001a98:	06050663          	beqz	a0,80001b04 <kerneltrap+0xf4>
    80001a9c:	144027f3          	csrr	a5,sip
    80001aa0:	ffd7f793          	andi	a5,a5,-3
    80001aa4:	14479073          	csrw	sip,a5
    80001aa8:	01813083          	ld	ra,24(sp)
    80001aac:	01013403          	ld	s0,16(sp)
    80001ab0:	00813483          	ld	s1,8(sp)
    80001ab4:	02010113          	addi	sp,sp,32
    80001ab8:	00008067          	ret
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	3c8080e7          	jalr	968(ra) # 80001e84 <plic_claim>
    80001ac4:	00a00793          	li	a5,10
    80001ac8:	00050493          	mv	s1,a0
    80001acc:	06f50863          	beq	a0,a5,80001b3c <kerneltrap+0x12c>
    80001ad0:	fc050ce3          	beqz	a0,80001aa8 <kerneltrap+0x98>
    80001ad4:	00050593          	mv	a1,a0
    80001ad8:	00002517          	auipc	a0,0x2
    80001adc:	62050513          	addi	a0,a0,1568 # 800040f8 <_ZZ12printIntegermE6digits+0xe0>
    80001ae0:	00000097          	auipc	ra,0x0
    80001ae4:	7e8080e7          	jalr	2024(ra) # 800022c8 <__printf>
    80001ae8:	01013403          	ld	s0,16(sp)
    80001aec:	01813083          	ld	ra,24(sp)
    80001af0:	00048513          	mv	a0,s1
    80001af4:	00813483          	ld	s1,8(sp)
    80001af8:	02010113          	addi	sp,sp,32
    80001afc:	00000317          	auipc	t1,0x0
    80001b00:	3c030067          	jr	960(t1) # 80001ebc <plic_complete>
    80001b04:	00004517          	auipc	a0,0x4
    80001b08:	b8c50513          	addi	a0,a0,-1140 # 80005690 <tickslock>
    80001b0c:	00001097          	auipc	ra,0x1
    80001b10:	490080e7          	jalr	1168(ra) # 80002f9c <acquire>
    80001b14:	00003717          	auipc	a4,0x3
    80001b18:	a9070713          	addi	a4,a4,-1392 # 800045a4 <ticks>
    80001b1c:	00072783          	lw	a5,0(a4)
    80001b20:	00004517          	auipc	a0,0x4
    80001b24:	b7050513          	addi	a0,a0,-1168 # 80005690 <tickslock>
    80001b28:	0017879b          	addiw	a5,a5,1
    80001b2c:	00f72023          	sw	a5,0(a4)
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	538080e7          	jalr	1336(ra) # 80003068 <release>
    80001b38:	f65ff06f          	j	80001a9c <kerneltrap+0x8c>
    80001b3c:	00001097          	auipc	ra,0x1
    80001b40:	094080e7          	jalr	148(ra) # 80002bd0 <uartintr>
    80001b44:	fa5ff06f          	j	80001ae8 <kerneltrap+0xd8>
    80001b48:	00002517          	auipc	a0,0x2
    80001b4c:	59050513          	addi	a0,a0,1424 # 800040d8 <_ZZ12printIntegermE6digits+0xc0>
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	71c080e7          	jalr	1820(ra) # 8000226c <panic>

0000000080001b58 <clockintr>:
    80001b58:	fe010113          	addi	sp,sp,-32
    80001b5c:	00813823          	sd	s0,16(sp)
    80001b60:	00913423          	sd	s1,8(sp)
    80001b64:	00113c23          	sd	ra,24(sp)
    80001b68:	02010413          	addi	s0,sp,32
    80001b6c:	00004497          	auipc	s1,0x4
    80001b70:	b2448493          	addi	s1,s1,-1244 # 80005690 <tickslock>
    80001b74:	00048513          	mv	a0,s1
    80001b78:	00001097          	auipc	ra,0x1
    80001b7c:	424080e7          	jalr	1060(ra) # 80002f9c <acquire>
    80001b80:	00003717          	auipc	a4,0x3
    80001b84:	a2470713          	addi	a4,a4,-1500 # 800045a4 <ticks>
    80001b88:	00072783          	lw	a5,0(a4)
    80001b8c:	01013403          	ld	s0,16(sp)
    80001b90:	01813083          	ld	ra,24(sp)
    80001b94:	00048513          	mv	a0,s1
    80001b98:	0017879b          	addiw	a5,a5,1
    80001b9c:	00813483          	ld	s1,8(sp)
    80001ba0:	00f72023          	sw	a5,0(a4)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00001317          	auipc	t1,0x1
    80001bac:	4c030067          	jr	1216(t1) # 80003068 <release>

0000000080001bb0 <devintr>:
    80001bb0:	142027f3          	csrr	a5,scause
    80001bb4:	00000513          	li	a0,0
    80001bb8:	0007c463          	bltz	a5,80001bc0 <devintr+0x10>
    80001bbc:	00008067          	ret
    80001bc0:	fe010113          	addi	sp,sp,-32
    80001bc4:	00813823          	sd	s0,16(sp)
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	00913423          	sd	s1,8(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    80001bd4:	0ff7f713          	andi	a4,a5,255
    80001bd8:	00900693          	li	a3,9
    80001bdc:	04d70c63          	beq	a4,a3,80001c34 <devintr+0x84>
    80001be0:	fff00713          	li	a4,-1
    80001be4:	03f71713          	slli	a4,a4,0x3f
    80001be8:	00170713          	addi	a4,a4,1
    80001bec:	00e78c63          	beq	a5,a4,80001c04 <devintr+0x54>
    80001bf0:	01813083          	ld	ra,24(sp)
    80001bf4:	01013403          	ld	s0,16(sp)
    80001bf8:	00813483          	ld	s1,8(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	c8c080e7          	jalr	-884(ra) # 80001890 <cpuid>
    80001c0c:	06050663          	beqz	a0,80001c78 <devintr+0xc8>
    80001c10:	144027f3          	csrr	a5,sip
    80001c14:	ffd7f793          	andi	a5,a5,-3
    80001c18:	14479073          	csrw	sip,a5
    80001c1c:	01813083          	ld	ra,24(sp)
    80001c20:	01013403          	ld	s0,16(sp)
    80001c24:	00813483          	ld	s1,8(sp)
    80001c28:	00200513          	li	a0,2
    80001c2c:	02010113          	addi	sp,sp,32
    80001c30:	00008067          	ret
    80001c34:	00000097          	auipc	ra,0x0
    80001c38:	250080e7          	jalr	592(ra) # 80001e84 <plic_claim>
    80001c3c:	00a00793          	li	a5,10
    80001c40:	00050493          	mv	s1,a0
    80001c44:	06f50663          	beq	a0,a5,80001cb0 <devintr+0x100>
    80001c48:	00100513          	li	a0,1
    80001c4c:	fa0482e3          	beqz	s1,80001bf0 <devintr+0x40>
    80001c50:	00048593          	mv	a1,s1
    80001c54:	00002517          	auipc	a0,0x2
    80001c58:	4a450513          	addi	a0,a0,1188 # 800040f8 <_ZZ12printIntegermE6digits+0xe0>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	66c080e7          	jalr	1644(ra) # 800022c8 <__printf>
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	254080e7          	jalr	596(ra) # 80001ebc <plic_complete>
    80001c70:	00100513          	li	a0,1
    80001c74:	f7dff06f          	j	80001bf0 <devintr+0x40>
    80001c78:	00004517          	auipc	a0,0x4
    80001c7c:	a1850513          	addi	a0,a0,-1512 # 80005690 <tickslock>
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	31c080e7          	jalr	796(ra) # 80002f9c <acquire>
    80001c88:	00003717          	auipc	a4,0x3
    80001c8c:	91c70713          	addi	a4,a4,-1764 # 800045a4 <ticks>
    80001c90:	00072783          	lw	a5,0(a4)
    80001c94:	00004517          	auipc	a0,0x4
    80001c98:	9fc50513          	addi	a0,a0,-1540 # 80005690 <tickslock>
    80001c9c:	0017879b          	addiw	a5,a5,1
    80001ca0:	00f72023          	sw	a5,0(a4)
    80001ca4:	00001097          	auipc	ra,0x1
    80001ca8:	3c4080e7          	jalr	964(ra) # 80003068 <release>
    80001cac:	f65ff06f          	j	80001c10 <devintr+0x60>
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	f20080e7          	jalr	-224(ra) # 80002bd0 <uartintr>
    80001cb8:	fadff06f          	j	80001c64 <devintr+0xb4>
    80001cbc:	0000                	unimp
	...

0000000080001cc0 <kernelvec>:
    80001cc0:	f0010113          	addi	sp,sp,-256
    80001cc4:	00113023          	sd	ra,0(sp)
    80001cc8:	00213423          	sd	sp,8(sp)
    80001ccc:	00313823          	sd	gp,16(sp)
    80001cd0:	00413c23          	sd	tp,24(sp)
    80001cd4:	02513023          	sd	t0,32(sp)
    80001cd8:	02613423          	sd	t1,40(sp)
    80001cdc:	02713823          	sd	t2,48(sp)
    80001ce0:	02813c23          	sd	s0,56(sp)
    80001ce4:	04913023          	sd	s1,64(sp)
    80001ce8:	04a13423          	sd	a0,72(sp)
    80001cec:	04b13823          	sd	a1,80(sp)
    80001cf0:	04c13c23          	sd	a2,88(sp)
    80001cf4:	06d13023          	sd	a3,96(sp)
    80001cf8:	06e13423          	sd	a4,104(sp)
    80001cfc:	06f13823          	sd	a5,112(sp)
    80001d00:	07013c23          	sd	a6,120(sp)
    80001d04:	09113023          	sd	a7,128(sp)
    80001d08:	09213423          	sd	s2,136(sp)
    80001d0c:	09313823          	sd	s3,144(sp)
    80001d10:	09413c23          	sd	s4,152(sp)
    80001d14:	0b513023          	sd	s5,160(sp)
    80001d18:	0b613423          	sd	s6,168(sp)
    80001d1c:	0b713823          	sd	s7,176(sp)
    80001d20:	0b813c23          	sd	s8,184(sp)
    80001d24:	0d913023          	sd	s9,192(sp)
    80001d28:	0da13423          	sd	s10,200(sp)
    80001d2c:	0db13823          	sd	s11,208(sp)
    80001d30:	0dc13c23          	sd	t3,216(sp)
    80001d34:	0fd13023          	sd	t4,224(sp)
    80001d38:	0fe13423          	sd	t5,232(sp)
    80001d3c:	0ff13823          	sd	t6,240(sp)
    80001d40:	cd1ff0ef          	jal	ra,80001a10 <kerneltrap>
    80001d44:	00013083          	ld	ra,0(sp)
    80001d48:	00813103          	ld	sp,8(sp)
    80001d4c:	01013183          	ld	gp,16(sp)
    80001d50:	02013283          	ld	t0,32(sp)
    80001d54:	02813303          	ld	t1,40(sp)
    80001d58:	03013383          	ld	t2,48(sp)
    80001d5c:	03813403          	ld	s0,56(sp)
    80001d60:	04013483          	ld	s1,64(sp)
    80001d64:	04813503          	ld	a0,72(sp)
    80001d68:	05013583          	ld	a1,80(sp)
    80001d6c:	05813603          	ld	a2,88(sp)
    80001d70:	06013683          	ld	a3,96(sp)
    80001d74:	06813703          	ld	a4,104(sp)
    80001d78:	07013783          	ld	a5,112(sp)
    80001d7c:	07813803          	ld	a6,120(sp)
    80001d80:	08013883          	ld	a7,128(sp)
    80001d84:	08813903          	ld	s2,136(sp)
    80001d88:	09013983          	ld	s3,144(sp)
    80001d8c:	09813a03          	ld	s4,152(sp)
    80001d90:	0a013a83          	ld	s5,160(sp)
    80001d94:	0a813b03          	ld	s6,168(sp)
    80001d98:	0b013b83          	ld	s7,176(sp)
    80001d9c:	0b813c03          	ld	s8,184(sp)
    80001da0:	0c013c83          	ld	s9,192(sp)
    80001da4:	0c813d03          	ld	s10,200(sp)
    80001da8:	0d013d83          	ld	s11,208(sp)
    80001dac:	0d813e03          	ld	t3,216(sp)
    80001db0:	0e013e83          	ld	t4,224(sp)
    80001db4:	0e813f03          	ld	t5,232(sp)
    80001db8:	0f013f83          	ld	t6,240(sp)
    80001dbc:	10010113          	addi	sp,sp,256
    80001dc0:	10200073          	sret
    80001dc4:	00000013          	nop
    80001dc8:	00000013          	nop
    80001dcc:	00000013          	nop

0000000080001dd0 <timervec>:
    80001dd0:	34051573          	csrrw	a0,mscratch,a0
    80001dd4:	00b53023          	sd	a1,0(a0)
    80001dd8:	00c53423          	sd	a2,8(a0)
    80001ddc:	00d53823          	sd	a3,16(a0)
    80001de0:	01853583          	ld	a1,24(a0)
    80001de4:	02053603          	ld	a2,32(a0)
    80001de8:	0005b683          	ld	a3,0(a1)
    80001dec:	00c686b3          	add	a3,a3,a2
    80001df0:	00d5b023          	sd	a3,0(a1)
    80001df4:	00200593          	li	a1,2
    80001df8:	14459073          	csrw	sip,a1
    80001dfc:	01053683          	ld	a3,16(a0)
    80001e00:	00853603          	ld	a2,8(a0)
    80001e04:	00053583          	ld	a1,0(a0)
    80001e08:	34051573          	csrrw	a0,mscratch,a0
    80001e0c:	30200073          	mret

0000000080001e10 <plicinit>:
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00813423          	sd	s0,8(sp)
    80001e18:	01010413          	addi	s0,sp,16
    80001e1c:	00813403          	ld	s0,8(sp)
    80001e20:	0c0007b7          	lui	a5,0xc000
    80001e24:	00100713          	li	a4,1
    80001e28:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e2c:	00e7a223          	sw	a4,4(a5)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <plicinithart>:
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	00113423          	sd	ra,8(sp)
    80001e44:	01010413          	addi	s0,sp,16
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	a48080e7          	jalr	-1464(ra) # 80001890 <cpuid>
    80001e50:	0085171b          	slliw	a4,a0,0x8
    80001e54:	0c0027b7          	lui	a5,0xc002
    80001e58:	00e787b3          	add	a5,a5,a4
    80001e5c:	40200713          	li	a4,1026
    80001e60:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001e64:	00813083          	ld	ra,8(sp)
    80001e68:	00013403          	ld	s0,0(sp)
    80001e6c:	00d5151b          	slliw	a0,a0,0xd
    80001e70:	0c2017b7          	lui	a5,0xc201
    80001e74:	00a78533          	add	a0,a5,a0
    80001e78:	00052023          	sw	zero,0(a0)
    80001e7c:	01010113          	addi	sp,sp,16
    80001e80:	00008067          	ret

0000000080001e84 <plic_claim>:
    80001e84:	ff010113          	addi	sp,sp,-16
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	01010413          	addi	s0,sp,16
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	9fc080e7          	jalr	-1540(ra) # 80001890 <cpuid>
    80001e9c:	00813083          	ld	ra,8(sp)
    80001ea0:	00013403          	ld	s0,0(sp)
    80001ea4:	00d5151b          	slliw	a0,a0,0xd
    80001ea8:	0c2017b7          	lui	a5,0xc201
    80001eac:	00a78533          	add	a0,a5,a0
    80001eb0:	00452503          	lw	a0,4(a0)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <plic_complete>:
    80001ebc:	fe010113          	addi	sp,sp,-32
    80001ec0:	00813823          	sd	s0,16(sp)
    80001ec4:	00913423          	sd	s1,8(sp)
    80001ec8:	00113c23          	sd	ra,24(sp)
    80001ecc:	02010413          	addi	s0,sp,32
    80001ed0:	00050493          	mv	s1,a0
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	9bc080e7          	jalr	-1604(ra) # 80001890 <cpuid>
    80001edc:	01813083          	ld	ra,24(sp)
    80001ee0:	01013403          	ld	s0,16(sp)
    80001ee4:	00d5179b          	slliw	a5,a0,0xd
    80001ee8:	0c201737          	lui	a4,0xc201
    80001eec:	00f707b3          	add	a5,a4,a5
    80001ef0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001ef4:	00813483          	ld	s1,8(sp)
    80001ef8:	02010113          	addi	sp,sp,32
    80001efc:	00008067          	ret

0000000080001f00 <consolewrite>:
    80001f00:	fb010113          	addi	sp,sp,-80
    80001f04:	04813023          	sd	s0,64(sp)
    80001f08:	04113423          	sd	ra,72(sp)
    80001f0c:	02913c23          	sd	s1,56(sp)
    80001f10:	03213823          	sd	s2,48(sp)
    80001f14:	03313423          	sd	s3,40(sp)
    80001f18:	03413023          	sd	s4,32(sp)
    80001f1c:	01513c23          	sd	s5,24(sp)
    80001f20:	05010413          	addi	s0,sp,80
    80001f24:	06c05c63          	blez	a2,80001f9c <consolewrite+0x9c>
    80001f28:	00060993          	mv	s3,a2
    80001f2c:	00050a13          	mv	s4,a0
    80001f30:	00058493          	mv	s1,a1
    80001f34:	00000913          	li	s2,0
    80001f38:	fff00a93          	li	s5,-1
    80001f3c:	01c0006f          	j	80001f58 <consolewrite+0x58>
    80001f40:	fbf44503          	lbu	a0,-65(s0)
    80001f44:	0019091b          	addiw	s2,s2,1
    80001f48:	00148493          	addi	s1,s1,1
    80001f4c:	00001097          	auipc	ra,0x1
    80001f50:	a9c080e7          	jalr	-1380(ra) # 800029e8 <uartputc>
    80001f54:	03298063          	beq	s3,s2,80001f74 <consolewrite+0x74>
    80001f58:	00048613          	mv	a2,s1
    80001f5c:	00100693          	li	a3,1
    80001f60:	000a0593          	mv	a1,s4
    80001f64:	fbf40513          	addi	a0,s0,-65
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	9e0080e7          	jalr	-1568(ra) # 80001948 <either_copyin>
    80001f70:	fd5518e3          	bne	a0,s5,80001f40 <consolewrite+0x40>
    80001f74:	04813083          	ld	ra,72(sp)
    80001f78:	04013403          	ld	s0,64(sp)
    80001f7c:	03813483          	ld	s1,56(sp)
    80001f80:	02813983          	ld	s3,40(sp)
    80001f84:	02013a03          	ld	s4,32(sp)
    80001f88:	01813a83          	ld	s5,24(sp)
    80001f8c:	00090513          	mv	a0,s2
    80001f90:	03013903          	ld	s2,48(sp)
    80001f94:	05010113          	addi	sp,sp,80
    80001f98:	00008067          	ret
    80001f9c:	00000913          	li	s2,0
    80001fa0:	fd5ff06f          	j	80001f74 <consolewrite+0x74>

0000000080001fa4 <consoleread>:
    80001fa4:	f9010113          	addi	sp,sp,-112
    80001fa8:	06813023          	sd	s0,96(sp)
    80001fac:	04913c23          	sd	s1,88(sp)
    80001fb0:	05213823          	sd	s2,80(sp)
    80001fb4:	05313423          	sd	s3,72(sp)
    80001fb8:	05413023          	sd	s4,64(sp)
    80001fbc:	03513c23          	sd	s5,56(sp)
    80001fc0:	03613823          	sd	s6,48(sp)
    80001fc4:	03713423          	sd	s7,40(sp)
    80001fc8:	03813023          	sd	s8,32(sp)
    80001fcc:	06113423          	sd	ra,104(sp)
    80001fd0:	01913c23          	sd	s9,24(sp)
    80001fd4:	07010413          	addi	s0,sp,112
    80001fd8:	00060b93          	mv	s7,a2
    80001fdc:	00050913          	mv	s2,a0
    80001fe0:	00058c13          	mv	s8,a1
    80001fe4:	00060b1b          	sext.w	s6,a2
    80001fe8:	00003497          	auipc	s1,0x3
    80001fec:	6d048493          	addi	s1,s1,1744 # 800056b8 <cons>
    80001ff0:	00400993          	li	s3,4
    80001ff4:	fff00a13          	li	s4,-1
    80001ff8:	00a00a93          	li	s5,10
    80001ffc:	05705e63          	blez	s7,80002058 <consoleread+0xb4>
    80002000:	09c4a703          	lw	a4,156(s1)
    80002004:	0984a783          	lw	a5,152(s1)
    80002008:	0007071b          	sext.w	a4,a4
    8000200c:	08e78463          	beq	a5,a4,80002094 <consoleread+0xf0>
    80002010:	07f7f713          	andi	a4,a5,127
    80002014:	00e48733          	add	a4,s1,a4
    80002018:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000201c:	0017869b          	addiw	a3,a5,1
    80002020:	08d4ac23          	sw	a3,152(s1)
    80002024:	00070c9b          	sext.w	s9,a4
    80002028:	0b370663          	beq	a4,s3,800020d4 <consoleread+0x130>
    8000202c:	00100693          	li	a3,1
    80002030:	f9f40613          	addi	a2,s0,-97
    80002034:	000c0593          	mv	a1,s8
    80002038:	00090513          	mv	a0,s2
    8000203c:	f8e40fa3          	sb	a4,-97(s0)
    80002040:	00000097          	auipc	ra,0x0
    80002044:	8bc080e7          	jalr	-1860(ra) # 800018fc <either_copyout>
    80002048:	01450863          	beq	a0,s4,80002058 <consoleread+0xb4>
    8000204c:	001c0c13          	addi	s8,s8,1
    80002050:	fffb8b9b          	addiw	s7,s7,-1
    80002054:	fb5c94e3          	bne	s9,s5,80001ffc <consoleread+0x58>
    80002058:	000b851b          	sext.w	a0,s7
    8000205c:	06813083          	ld	ra,104(sp)
    80002060:	06013403          	ld	s0,96(sp)
    80002064:	05813483          	ld	s1,88(sp)
    80002068:	05013903          	ld	s2,80(sp)
    8000206c:	04813983          	ld	s3,72(sp)
    80002070:	04013a03          	ld	s4,64(sp)
    80002074:	03813a83          	ld	s5,56(sp)
    80002078:	02813b83          	ld	s7,40(sp)
    8000207c:	02013c03          	ld	s8,32(sp)
    80002080:	01813c83          	ld	s9,24(sp)
    80002084:	40ab053b          	subw	a0,s6,a0
    80002088:	03013b03          	ld	s6,48(sp)
    8000208c:	07010113          	addi	sp,sp,112
    80002090:	00008067          	ret
    80002094:	00001097          	auipc	ra,0x1
    80002098:	1d8080e7          	jalr	472(ra) # 8000326c <push_on>
    8000209c:	0984a703          	lw	a4,152(s1)
    800020a0:	09c4a783          	lw	a5,156(s1)
    800020a4:	0007879b          	sext.w	a5,a5
    800020a8:	fef70ce3          	beq	a4,a5,800020a0 <consoleread+0xfc>
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	234080e7          	jalr	564(ra) # 800032e0 <pop_on>
    800020b4:	0984a783          	lw	a5,152(s1)
    800020b8:	07f7f713          	andi	a4,a5,127
    800020bc:	00e48733          	add	a4,s1,a4
    800020c0:	01874703          	lbu	a4,24(a4)
    800020c4:	0017869b          	addiw	a3,a5,1
    800020c8:	08d4ac23          	sw	a3,152(s1)
    800020cc:	00070c9b          	sext.w	s9,a4
    800020d0:	f5371ee3          	bne	a4,s3,8000202c <consoleread+0x88>
    800020d4:	000b851b          	sext.w	a0,s7
    800020d8:	f96bf2e3          	bgeu	s7,s6,8000205c <consoleread+0xb8>
    800020dc:	08f4ac23          	sw	a5,152(s1)
    800020e0:	f7dff06f          	j	8000205c <consoleread+0xb8>

00000000800020e4 <consputc>:
    800020e4:	10000793          	li	a5,256
    800020e8:	00f50663          	beq	a0,a5,800020f4 <consputc+0x10>
    800020ec:	00001317          	auipc	t1,0x1
    800020f0:	9f430067          	jr	-1548(t1) # 80002ae0 <uartputc_sync>
    800020f4:	ff010113          	addi	sp,sp,-16
    800020f8:	00113423          	sd	ra,8(sp)
    800020fc:	00813023          	sd	s0,0(sp)
    80002100:	01010413          	addi	s0,sp,16
    80002104:	00800513          	li	a0,8
    80002108:	00001097          	auipc	ra,0x1
    8000210c:	9d8080e7          	jalr	-1576(ra) # 80002ae0 <uartputc_sync>
    80002110:	02000513          	li	a0,32
    80002114:	00001097          	auipc	ra,0x1
    80002118:	9cc080e7          	jalr	-1588(ra) # 80002ae0 <uartputc_sync>
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	00813083          	ld	ra,8(sp)
    80002124:	00800513          	li	a0,8
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00001317          	auipc	t1,0x1
    80002130:	9b430067          	jr	-1612(t1) # 80002ae0 <uartputc_sync>

0000000080002134 <consoleintr>:
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00813823          	sd	s0,16(sp)
    8000213c:	00913423          	sd	s1,8(sp)
    80002140:	01213023          	sd	s2,0(sp)
    80002144:	00113c23          	sd	ra,24(sp)
    80002148:	02010413          	addi	s0,sp,32
    8000214c:	00003917          	auipc	s2,0x3
    80002150:	56c90913          	addi	s2,s2,1388 # 800056b8 <cons>
    80002154:	00050493          	mv	s1,a0
    80002158:	00090513          	mv	a0,s2
    8000215c:	00001097          	auipc	ra,0x1
    80002160:	e40080e7          	jalr	-448(ra) # 80002f9c <acquire>
    80002164:	02048c63          	beqz	s1,8000219c <consoleintr+0x68>
    80002168:	0a092783          	lw	a5,160(s2)
    8000216c:	09892703          	lw	a4,152(s2)
    80002170:	07f00693          	li	a3,127
    80002174:	40e7873b          	subw	a4,a5,a4
    80002178:	02e6e263          	bltu	a3,a4,8000219c <consoleintr+0x68>
    8000217c:	00d00713          	li	a4,13
    80002180:	04e48063          	beq	s1,a4,800021c0 <consoleintr+0x8c>
    80002184:	07f7f713          	andi	a4,a5,127
    80002188:	00e90733          	add	a4,s2,a4
    8000218c:	0017879b          	addiw	a5,a5,1
    80002190:	0af92023          	sw	a5,160(s2)
    80002194:	00970c23          	sb	s1,24(a4)
    80002198:	08f92e23          	sw	a5,156(s2)
    8000219c:	01013403          	ld	s0,16(sp)
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	00013903          	ld	s2,0(sp)
    800021ac:	00003517          	auipc	a0,0x3
    800021b0:	50c50513          	addi	a0,a0,1292 # 800056b8 <cons>
    800021b4:	02010113          	addi	sp,sp,32
    800021b8:	00001317          	auipc	t1,0x1
    800021bc:	eb030067          	jr	-336(t1) # 80003068 <release>
    800021c0:	00a00493          	li	s1,10
    800021c4:	fc1ff06f          	j	80002184 <consoleintr+0x50>

00000000800021c8 <consoleinit>:
    800021c8:	fe010113          	addi	sp,sp,-32
    800021cc:	00113c23          	sd	ra,24(sp)
    800021d0:	00813823          	sd	s0,16(sp)
    800021d4:	00913423          	sd	s1,8(sp)
    800021d8:	02010413          	addi	s0,sp,32
    800021dc:	00003497          	auipc	s1,0x3
    800021e0:	4dc48493          	addi	s1,s1,1244 # 800056b8 <cons>
    800021e4:	00048513          	mv	a0,s1
    800021e8:	00002597          	auipc	a1,0x2
    800021ec:	f6858593          	addi	a1,a1,-152 # 80004150 <_ZZ12printIntegermE6digits+0x138>
    800021f0:	00001097          	auipc	ra,0x1
    800021f4:	d88080e7          	jalr	-632(ra) # 80002f78 <initlock>
    800021f8:	00000097          	auipc	ra,0x0
    800021fc:	7ac080e7          	jalr	1964(ra) # 800029a4 <uartinit>
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00000797          	auipc	a5,0x0
    8000220c:	d9c78793          	addi	a5,a5,-612 # 80001fa4 <consoleread>
    80002210:	0af4bc23          	sd	a5,184(s1)
    80002214:	00000797          	auipc	a5,0x0
    80002218:	cec78793          	addi	a5,a5,-788 # 80001f00 <consolewrite>
    8000221c:	0cf4b023          	sd	a5,192(s1)
    80002220:	00813483          	ld	s1,8(sp)
    80002224:	02010113          	addi	sp,sp,32
    80002228:	00008067          	ret

000000008000222c <console_read>:
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00813423          	sd	s0,8(sp)
    80002234:	01010413          	addi	s0,sp,16
    80002238:	00813403          	ld	s0,8(sp)
    8000223c:	00003317          	auipc	t1,0x3
    80002240:	53433303          	ld	t1,1332(t1) # 80005770 <devsw+0x10>
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00030067          	jr	t1

000000008000224c <console_write>:
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00813423          	sd	s0,8(sp)
    80002254:	01010413          	addi	s0,sp,16
    80002258:	00813403          	ld	s0,8(sp)
    8000225c:	00003317          	auipc	t1,0x3
    80002260:	51c33303          	ld	t1,1308(t1) # 80005778 <devsw+0x18>
    80002264:	01010113          	addi	sp,sp,16
    80002268:	00030067          	jr	t1

000000008000226c <panic>:
    8000226c:	fe010113          	addi	sp,sp,-32
    80002270:	00113c23          	sd	ra,24(sp)
    80002274:	00813823          	sd	s0,16(sp)
    80002278:	00913423          	sd	s1,8(sp)
    8000227c:	02010413          	addi	s0,sp,32
    80002280:	00050493          	mv	s1,a0
    80002284:	00002517          	auipc	a0,0x2
    80002288:	ed450513          	addi	a0,a0,-300 # 80004158 <_ZZ12printIntegermE6digits+0x140>
    8000228c:	00003797          	auipc	a5,0x3
    80002290:	5807a623          	sw	zero,1420(a5) # 80005818 <pr+0x18>
    80002294:	00000097          	auipc	ra,0x0
    80002298:	034080e7          	jalr	52(ra) # 800022c8 <__printf>
    8000229c:	00048513          	mv	a0,s1
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	028080e7          	jalr	40(ra) # 800022c8 <__printf>
    800022a8:	00002517          	auipc	a0,0x2
    800022ac:	e9050513          	addi	a0,a0,-368 # 80004138 <_ZZ12printIntegermE6digits+0x120>
    800022b0:	00000097          	auipc	ra,0x0
    800022b4:	018080e7          	jalr	24(ra) # 800022c8 <__printf>
    800022b8:	00100793          	li	a5,1
    800022bc:	00002717          	auipc	a4,0x2
    800022c0:	2ef72623          	sw	a5,748(a4) # 800045a8 <panicked>
    800022c4:	0000006f          	j	800022c4 <panic+0x58>

00000000800022c8 <__printf>:
    800022c8:	f3010113          	addi	sp,sp,-208
    800022cc:	08813023          	sd	s0,128(sp)
    800022d0:	07313423          	sd	s3,104(sp)
    800022d4:	09010413          	addi	s0,sp,144
    800022d8:	05813023          	sd	s8,64(sp)
    800022dc:	08113423          	sd	ra,136(sp)
    800022e0:	06913c23          	sd	s1,120(sp)
    800022e4:	07213823          	sd	s2,112(sp)
    800022e8:	07413023          	sd	s4,96(sp)
    800022ec:	05513c23          	sd	s5,88(sp)
    800022f0:	05613823          	sd	s6,80(sp)
    800022f4:	05713423          	sd	s7,72(sp)
    800022f8:	03913c23          	sd	s9,56(sp)
    800022fc:	03a13823          	sd	s10,48(sp)
    80002300:	03b13423          	sd	s11,40(sp)
    80002304:	00003317          	auipc	t1,0x3
    80002308:	4fc30313          	addi	t1,t1,1276 # 80005800 <pr>
    8000230c:	01832c03          	lw	s8,24(t1)
    80002310:	00b43423          	sd	a1,8(s0)
    80002314:	00c43823          	sd	a2,16(s0)
    80002318:	00d43c23          	sd	a3,24(s0)
    8000231c:	02e43023          	sd	a4,32(s0)
    80002320:	02f43423          	sd	a5,40(s0)
    80002324:	03043823          	sd	a6,48(s0)
    80002328:	03143c23          	sd	a7,56(s0)
    8000232c:	00050993          	mv	s3,a0
    80002330:	4a0c1663          	bnez	s8,800027dc <__printf+0x514>
    80002334:	60098c63          	beqz	s3,8000294c <__printf+0x684>
    80002338:	0009c503          	lbu	a0,0(s3)
    8000233c:	00840793          	addi	a5,s0,8
    80002340:	f6f43c23          	sd	a5,-136(s0)
    80002344:	00000493          	li	s1,0
    80002348:	22050063          	beqz	a0,80002568 <__printf+0x2a0>
    8000234c:	00002a37          	lui	s4,0x2
    80002350:	00018ab7          	lui	s5,0x18
    80002354:	000f4b37          	lui	s6,0xf4
    80002358:	00989bb7          	lui	s7,0x989
    8000235c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002360:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002364:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002368:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000236c:	00148c9b          	addiw	s9,s1,1
    80002370:	02500793          	li	a5,37
    80002374:	01998933          	add	s2,s3,s9
    80002378:	38f51263          	bne	a0,a5,800026fc <__printf+0x434>
    8000237c:	00094783          	lbu	a5,0(s2)
    80002380:	00078c9b          	sext.w	s9,a5
    80002384:	1e078263          	beqz	a5,80002568 <__printf+0x2a0>
    80002388:	0024849b          	addiw	s1,s1,2
    8000238c:	07000713          	li	a4,112
    80002390:	00998933          	add	s2,s3,s1
    80002394:	38e78a63          	beq	a5,a4,80002728 <__printf+0x460>
    80002398:	20f76863          	bltu	a4,a5,800025a8 <__printf+0x2e0>
    8000239c:	42a78863          	beq	a5,a0,800027cc <__printf+0x504>
    800023a0:	06400713          	li	a4,100
    800023a4:	40e79663          	bne	a5,a4,800027b0 <__printf+0x4e8>
    800023a8:	f7843783          	ld	a5,-136(s0)
    800023ac:	0007a603          	lw	a2,0(a5)
    800023b0:	00878793          	addi	a5,a5,8
    800023b4:	f6f43c23          	sd	a5,-136(s0)
    800023b8:	42064a63          	bltz	a2,800027ec <__printf+0x524>
    800023bc:	00a00713          	li	a4,10
    800023c0:	02e677bb          	remuw	a5,a2,a4
    800023c4:	00002d97          	auipc	s11,0x2
    800023c8:	dbcd8d93          	addi	s11,s11,-580 # 80004180 <digits>
    800023cc:	00900593          	li	a1,9
    800023d0:	0006051b          	sext.w	a0,a2
    800023d4:	00000c93          	li	s9,0
    800023d8:	02079793          	slli	a5,a5,0x20
    800023dc:	0207d793          	srli	a5,a5,0x20
    800023e0:	00fd87b3          	add	a5,s11,a5
    800023e4:	0007c783          	lbu	a5,0(a5)
    800023e8:	02e656bb          	divuw	a3,a2,a4
    800023ec:	f8f40023          	sb	a5,-128(s0)
    800023f0:	14c5d863          	bge	a1,a2,80002540 <__printf+0x278>
    800023f4:	06300593          	li	a1,99
    800023f8:	00100c93          	li	s9,1
    800023fc:	02e6f7bb          	remuw	a5,a3,a4
    80002400:	02079793          	slli	a5,a5,0x20
    80002404:	0207d793          	srli	a5,a5,0x20
    80002408:	00fd87b3          	add	a5,s11,a5
    8000240c:	0007c783          	lbu	a5,0(a5)
    80002410:	02e6d73b          	divuw	a4,a3,a4
    80002414:	f8f400a3          	sb	a5,-127(s0)
    80002418:	12a5f463          	bgeu	a1,a0,80002540 <__printf+0x278>
    8000241c:	00a00693          	li	a3,10
    80002420:	00900593          	li	a1,9
    80002424:	02d777bb          	remuw	a5,a4,a3
    80002428:	02079793          	slli	a5,a5,0x20
    8000242c:	0207d793          	srli	a5,a5,0x20
    80002430:	00fd87b3          	add	a5,s11,a5
    80002434:	0007c503          	lbu	a0,0(a5)
    80002438:	02d757bb          	divuw	a5,a4,a3
    8000243c:	f8a40123          	sb	a0,-126(s0)
    80002440:	48e5f263          	bgeu	a1,a4,800028c4 <__printf+0x5fc>
    80002444:	06300513          	li	a0,99
    80002448:	02d7f5bb          	remuw	a1,a5,a3
    8000244c:	02059593          	slli	a1,a1,0x20
    80002450:	0205d593          	srli	a1,a1,0x20
    80002454:	00bd85b3          	add	a1,s11,a1
    80002458:	0005c583          	lbu	a1,0(a1)
    8000245c:	02d7d7bb          	divuw	a5,a5,a3
    80002460:	f8b401a3          	sb	a1,-125(s0)
    80002464:	48e57263          	bgeu	a0,a4,800028e8 <__printf+0x620>
    80002468:	3e700513          	li	a0,999
    8000246c:	02d7f5bb          	remuw	a1,a5,a3
    80002470:	02059593          	slli	a1,a1,0x20
    80002474:	0205d593          	srli	a1,a1,0x20
    80002478:	00bd85b3          	add	a1,s11,a1
    8000247c:	0005c583          	lbu	a1,0(a1)
    80002480:	02d7d7bb          	divuw	a5,a5,a3
    80002484:	f8b40223          	sb	a1,-124(s0)
    80002488:	46e57663          	bgeu	a0,a4,800028f4 <__printf+0x62c>
    8000248c:	02d7f5bb          	remuw	a1,a5,a3
    80002490:	02059593          	slli	a1,a1,0x20
    80002494:	0205d593          	srli	a1,a1,0x20
    80002498:	00bd85b3          	add	a1,s11,a1
    8000249c:	0005c583          	lbu	a1,0(a1)
    800024a0:	02d7d7bb          	divuw	a5,a5,a3
    800024a4:	f8b402a3          	sb	a1,-123(s0)
    800024a8:	46ea7863          	bgeu	s4,a4,80002918 <__printf+0x650>
    800024ac:	02d7f5bb          	remuw	a1,a5,a3
    800024b0:	02059593          	slli	a1,a1,0x20
    800024b4:	0205d593          	srli	a1,a1,0x20
    800024b8:	00bd85b3          	add	a1,s11,a1
    800024bc:	0005c583          	lbu	a1,0(a1)
    800024c0:	02d7d7bb          	divuw	a5,a5,a3
    800024c4:	f8b40323          	sb	a1,-122(s0)
    800024c8:	3eeaf863          	bgeu	s5,a4,800028b8 <__printf+0x5f0>
    800024cc:	02d7f5bb          	remuw	a1,a5,a3
    800024d0:	02059593          	slli	a1,a1,0x20
    800024d4:	0205d593          	srli	a1,a1,0x20
    800024d8:	00bd85b3          	add	a1,s11,a1
    800024dc:	0005c583          	lbu	a1,0(a1)
    800024e0:	02d7d7bb          	divuw	a5,a5,a3
    800024e4:	f8b403a3          	sb	a1,-121(s0)
    800024e8:	42eb7e63          	bgeu	s6,a4,80002924 <__printf+0x65c>
    800024ec:	02d7f5bb          	remuw	a1,a5,a3
    800024f0:	02059593          	slli	a1,a1,0x20
    800024f4:	0205d593          	srli	a1,a1,0x20
    800024f8:	00bd85b3          	add	a1,s11,a1
    800024fc:	0005c583          	lbu	a1,0(a1)
    80002500:	02d7d7bb          	divuw	a5,a5,a3
    80002504:	f8b40423          	sb	a1,-120(s0)
    80002508:	42ebfc63          	bgeu	s7,a4,80002940 <__printf+0x678>
    8000250c:	02079793          	slli	a5,a5,0x20
    80002510:	0207d793          	srli	a5,a5,0x20
    80002514:	00fd8db3          	add	s11,s11,a5
    80002518:	000dc703          	lbu	a4,0(s11)
    8000251c:	00a00793          	li	a5,10
    80002520:	00900c93          	li	s9,9
    80002524:	f8e404a3          	sb	a4,-119(s0)
    80002528:	00065c63          	bgez	a2,80002540 <__printf+0x278>
    8000252c:	f9040713          	addi	a4,s0,-112
    80002530:	00f70733          	add	a4,a4,a5
    80002534:	02d00693          	li	a3,45
    80002538:	fed70823          	sb	a3,-16(a4)
    8000253c:	00078c93          	mv	s9,a5
    80002540:	f8040793          	addi	a5,s0,-128
    80002544:	01978cb3          	add	s9,a5,s9
    80002548:	f7f40d13          	addi	s10,s0,-129
    8000254c:	000cc503          	lbu	a0,0(s9)
    80002550:	fffc8c93          	addi	s9,s9,-1
    80002554:	00000097          	auipc	ra,0x0
    80002558:	b90080e7          	jalr	-1136(ra) # 800020e4 <consputc>
    8000255c:	ffac98e3          	bne	s9,s10,8000254c <__printf+0x284>
    80002560:	00094503          	lbu	a0,0(s2)
    80002564:	e00514e3          	bnez	a0,8000236c <__printf+0xa4>
    80002568:	1a0c1663          	bnez	s8,80002714 <__printf+0x44c>
    8000256c:	08813083          	ld	ra,136(sp)
    80002570:	08013403          	ld	s0,128(sp)
    80002574:	07813483          	ld	s1,120(sp)
    80002578:	07013903          	ld	s2,112(sp)
    8000257c:	06813983          	ld	s3,104(sp)
    80002580:	06013a03          	ld	s4,96(sp)
    80002584:	05813a83          	ld	s5,88(sp)
    80002588:	05013b03          	ld	s6,80(sp)
    8000258c:	04813b83          	ld	s7,72(sp)
    80002590:	04013c03          	ld	s8,64(sp)
    80002594:	03813c83          	ld	s9,56(sp)
    80002598:	03013d03          	ld	s10,48(sp)
    8000259c:	02813d83          	ld	s11,40(sp)
    800025a0:	0d010113          	addi	sp,sp,208
    800025a4:	00008067          	ret
    800025a8:	07300713          	li	a4,115
    800025ac:	1ce78a63          	beq	a5,a4,80002780 <__printf+0x4b8>
    800025b0:	07800713          	li	a4,120
    800025b4:	1ee79e63          	bne	a5,a4,800027b0 <__printf+0x4e8>
    800025b8:	f7843783          	ld	a5,-136(s0)
    800025bc:	0007a703          	lw	a4,0(a5)
    800025c0:	00878793          	addi	a5,a5,8
    800025c4:	f6f43c23          	sd	a5,-136(s0)
    800025c8:	28074263          	bltz	a4,8000284c <__printf+0x584>
    800025cc:	00002d97          	auipc	s11,0x2
    800025d0:	bb4d8d93          	addi	s11,s11,-1100 # 80004180 <digits>
    800025d4:	00f77793          	andi	a5,a4,15
    800025d8:	00fd87b3          	add	a5,s11,a5
    800025dc:	0007c683          	lbu	a3,0(a5)
    800025e0:	00f00613          	li	a2,15
    800025e4:	0007079b          	sext.w	a5,a4
    800025e8:	f8d40023          	sb	a3,-128(s0)
    800025ec:	0047559b          	srliw	a1,a4,0x4
    800025f0:	0047569b          	srliw	a3,a4,0x4
    800025f4:	00000c93          	li	s9,0
    800025f8:	0ee65063          	bge	a2,a4,800026d8 <__printf+0x410>
    800025fc:	00f6f693          	andi	a3,a3,15
    80002600:	00dd86b3          	add	a3,s11,a3
    80002604:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002608:	0087d79b          	srliw	a5,a5,0x8
    8000260c:	00100c93          	li	s9,1
    80002610:	f8d400a3          	sb	a3,-127(s0)
    80002614:	0cb67263          	bgeu	a2,a1,800026d8 <__printf+0x410>
    80002618:	00f7f693          	andi	a3,a5,15
    8000261c:	00dd86b3          	add	a3,s11,a3
    80002620:	0006c583          	lbu	a1,0(a3)
    80002624:	00f00613          	li	a2,15
    80002628:	0047d69b          	srliw	a3,a5,0x4
    8000262c:	f8b40123          	sb	a1,-126(s0)
    80002630:	0047d593          	srli	a1,a5,0x4
    80002634:	28f67e63          	bgeu	a2,a5,800028d0 <__printf+0x608>
    80002638:	00f6f693          	andi	a3,a3,15
    8000263c:	00dd86b3          	add	a3,s11,a3
    80002640:	0006c503          	lbu	a0,0(a3)
    80002644:	0087d813          	srli	a6,a5,0x8
    80002648:	0087d69b          	srliw	a3,a5,0x8
    8000264c:	f8a401a3          	sb	a0,-125(s0)
    80002650:	28b67663          	bgeu	a2,a1,800028dc <__printf+0x614>
    80002654:	00f6f693          	andi	a3,a3,15
    80002658:	00dd86b3          	add	a3,s11,a3
    8000265c:	0006c583          	lbu	a1,0(a3)
    80002660:	00c7d513          	srli	a0,a5,0xc
    80002664:	00c7d69b          	srliw	a3,a5,0xc
    80002668:	f8b40223          	sb	a1,-124(s0)
    8000266c:	29067a63          	bgeu	a2,a6,80002900 <__printf+0x638>
    80002670:	00f6f693          	andi	a3,a3,15
    80002674:	00dd86b3          	add	a3,s11,a3
    80002678:	0006c583          	lbu	a1,0(a3)
    8000267c:	0107d813          	srli	a6,a5,0x10
    80002680:	0107d69b          	srliw	a3,a5,0x10
    80002684:	f8b402a3          	sb	a1,-123(s0)
    80002688:	28a67263          	bgeu	a2,a0,8000290c <__printf+0x644>
    8000268c:	00f6f693          	andi	a3,a3,15
    80002690:	00dd86b3          	add	a3,s11,a3
    80002694:	0006c683          	lbu	a3,0(a3)
    80002698:	0147d79b          	srliw	a5,a5,0x14
    8000269c:	f8d40323          	sb	a3,-122(s0)
    800026a0:	21067663          	bgeu	a2,a6,800028ac <__printf+0x5e4>
    800026a4:	02079793          	slli	a5,a5,0x20
    800026a8:	0207d793          	srli	a5,a5,0x20
    800026ac:	00fd8db3          	add	s11,s11,a5
    800026b0:	000dc683          	lbu	a3,0(s11)
    800026b4:	00800793          	li	a5,8
    800026b8:	00700c93          	li	s9,7
    800026bc:	f8d403a3          	sb	a3,-121(s0)
    800026c0:	00075c63          	bgez	a4,800026d8 <__printf+0x410>
    800026c4:	f9040713          	addi	a4,s0,-112
    800026c8:	00f70733          	add	a4,a4,a5
    800026cc:	02d00693          	li	a3,45
    800026d0:	fed70823          	sb	a3,-16(a4)
    800026d4:	00078c93          	mv	s9,a5
    800026d8:	f8040793          	addi	a5,s0,-128
    800026dc:	01978cb3          	add	s9,a5,s9
    800026e0:	f7f40d13          	addi	s10,s0,-129
    800026e4:	000cc503          	lbu	a0,0(s9)
    800026e8:	fffc8c93          	addi	s9,s9,-1
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	9f8080e7          	jalr	-1544(ra) # 800020e4 <consputc>
    800026f4:	ff9d18e3          	bne	s10,s9,800026e4 <__printf+0x41c>
    800026f8:	0100006f          	j	80002708 <__printf+0x440>
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	9e8080e7          	jalr	-1560(ra) # 800020e4 <consputc>
    80002704:	000c8493          	mv	s1,s9
    80002708:	00094503          	lbu	a0,0(s2)
    8000270c:	c60510e3          	bnez	a0,8000236c <__printf+0xa4>
    80002710:	e40c0ee3          	beqz	s8,8000256c <__printf+0x2a4>
    80002714:	00003517          	auipc	a0,0x3
    80002718:	0ec50513          	addi	a0,a0,236 # 80005800 <pr>
    8000271c:	00001097          	auipc	ra,0x1
    80002720:	94c080e7          	jalr	-1716(ra) # 80003068 <release>
    80002724:	e49ff06f          	j	8000256c <__printf+0x2a4>
    80002728:	f7843783          	ld	a5,-136(s0)
    8000272c:	03000513          	li	a0,48
    80002730:	01000d13          	li	s10,16
    80002734:	00878713          	addi	a4,a5,8
    80002738:	0007bc83          	ld	s9,0(a5)
    8000273c:	f6e43c23          	sd	a4,-136(s0)
    80002740:	00000097          	auipc	ra,0x0
    80002744:	9a4080e7          	jalr	-1628(ra) # 800020e4 <consputc>
    80002748:	07800513          	li	a0,120
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	998080e7          	jalr	-1640(ra) # 800020e4 <consputc>
    80002754:	00002d97          	auipc	s11,0x2
    80002758:	a2cd8d93          	addi	s11,s11,-1492 # 80004180 <digits>
    8000275c:	03ccd793          	srli	a5,s9,0x3c
    80002760:	00fd87b3          	add	a5,s11,a5
    80002764:	0007c503          	lbu	a0,0(a5)
    80002768:	fffd0d1b          	addiw	s10,s10,-1
    8000276c:	004c9c93          	slli	s9,s9,0x4
    80002770:	00000097          	auipc	ra,0x0
    80002774:	974080e7          	jalr	-1676(ra) # 800020e4 <consputc>
    80002778:	fe0d12e3          	bnez	s10,8000275c <__printf+0x494>
    8000277c:	f8dff06f          	j	80002708 <__printf+0x440>
    80002780:	f7843783          	ld	a5,-136(s0)
    80002784:	0007bc83          	ld	s9,0(a5)
    80002788:	00878793          	addi	a5,a5,8
    8000278c:	f6f43c23          	sd	a5,-136(s0)
    80002790:	000c9a63          	bnez	s9,800027a4 <__printf+0x4dc>
    80002794:	1080006f          	j	8000289c <__printf+0x5d4>
    80002798:	001c8c93          	addi	s9,s9,1
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	948080e7          	jalr	-1720(ra) # 800020e4 <consputc>
    800027a4:	000cc503          	lbu	a0,0(s9)
    800027a8:	fe0518e3          	bnez	a0,80002798 <__printf+0x4d0>
    800027ac:	f5dff06f          	j	80002708 <__printf+0x440>
    800027b0:	02500513          	li	a0,37
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	930080e7          	jalr	-1744(ra) # 800020e4 <consputc>
    800027bc:	000c8513          	mv	a0,s9
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	924080e7          	jalr	-1756(ra) # 800020e4 <consputc>
    800027c8:	f41ff06f          	j	80002708 <__printf+0x440>
    800027cc:	02500513          	li	a0,37
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	914080e7          	jalr	-1772(ra) # 800020e4 <consputc>
    800027d8:	f31ff06f          	j	80002708 <__printf+0x440>
    800027dc:	00030513          	mv	a0,t1
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	7bc080e7          	jalr	1980(ra) # 80002f9c <acquire>
    800027e8:	b4dff06f          	j	80002334 <__printf+0x6c>
    800027ec:	40c0053b          	negw	a0,a2
    800027f0:	00a00713          	li	a4,10
    800027f4:	02e576bb          	remuw	a3,a0,a4
    800027f8:	00002d97          	auipc	s11,0x2
    800027fc:	988d8d93          	addi	s11,s11,-1656 # 80004180 <digits>
    80002800:	ff700593          	li	a1,-9
    80002804:	02069693          	slli	a3,a3,0x20
    80002808:	0206d693          	srli	a3,a3,0x20
    8000280c:	00dd86b3          	add	a3,s11,a3
    80002810:	0006c683          	lbu	a3,0(a3)
    80002814:	02e557bb          	divuw	a5,a0,a4
    80002818:	f8d40023          	sb	a3,-128(s0)
    8000281c:	10b65e63          	bge	a2,a1,80002938 <__printf+0x670>
    80002820:	06300593          	li	a1,99
    80002824:	02e7f6bb          	remuw	a3,a5,a4
    80002828:	02069693          	slli	a3,a3,0x20
    8000282c:	0206d693          	srli	a3,a3,0x20
    80002830:	00dd86b3          	add	a3,s11,a3
    80002834:	0006c683          	lbu	a3,0(a3)
    80002838:	02e7d73b          	divuw	a4,a5,a4
    8000283c:	00200793          	li	a5,2
    80002840:	f8d400a3          	sb	a3,-127(s0)
    80002844:	bca5ece3          	bltu	a1,a0,8000241c <__printf+0x154>
    80002848:	ce5ff06f          	j	8000252c <__printf+0x264>
    8000284c:	40e007bb          	negw	a5,a4
    80002850:	00002d97          	auipc	s11,0x2
    80002854:	930d8d93          	addi	s11,s11,-1744 # 80004180 <digits>
    80002858:	00f7f693          	andi	a3,a5,15
    8000285c:	00dd86b3          	add	a3,s11,a3
    80002860:	0006c583          	lbu	a1,0(a3)
    80002864:	ff100613          	li	a2,-15
    80002868:	0047d69b          	srliw	a3,a5,0x4
    8000286c:	f8b40023          	sb	a1,-128(s0)
    80002870:	0047d59b          	srliw	a1,a5,0x4
    80002874:	0ac75e63          	bge	a4,a2,80002930 <__printf+0x668>
    80002878:	00f6f693          	andi	a3,a3,15
    8000287c:	00dd86b3          	add	a3,s11,a3
    80002880:	0006c603          	lbu	a2,0(a3)
    80002884:	00f00693          	li	a3,15
    80002888:	0087d79b          	srliw	a5,a5,0x8
    8000288c:	f8c400a3          	sb	a2,-127(s0)
    80002890:	d8b6e4e3          	bltu	a3,a1,80002618 <__printf+0x350>
    80002894:	00200793          	li	a5,2
    80002898:	e2dff06f          	j	800026c4 <__printf+0x3fc>
    8000289c:	00002c97          	auipc	s9,0x2
    800028a0:	8c4c8c93          	addi	s9,s9,-1852 # 80004160 <_ZZ12printIntegermE6digits+0x148>
    800028a4:	02800513          	li	a0,40
    800028a8:	ef1ff06f          	j	80002798 <__printf+0x4d0>
    800028ac:	00700793          	li	a5,7
    800028b0:	00600c93          	li	s9,6
    800028b4:	e0dff06f          	j	800026c0 <__printf+0x3f8>
    800028b8:	00700793          	li	a5,7
    800028bc:	00600c93          	li	s9,6
    800028c0:	c69ff06f          	j	80002528 <__printf+0x260>
    800028c4:	00300793          	li	a5,3
    800028c8:	00200c93          	li	s9,2
    800028cc:	c5dff06f          	j	80002528 <__printf+0x260>
    800028d0:	00300793          	li	a5,3
    800028d4:	00200c93          	li	s9,2
    800028d8:	de9ff06f          	j	800026c0 <__printf+0x3f8>
    800028dc:	00400793          	li	a5,4
    800028e0:	00300c93          	li	s9,3
    800028e4:	dddff06f          	j	800026c0 <__printf+0x3f8>
    800028e8:	00400793          	li	a5,4
    800028ec:	00300c93          	li	s9,3
    800028f0:	c39ff06f          	j	80002528 <__printf+0x260>
    800028f4:	00500793          	li	a5,5
    800028f8:	00400c93          	li	s9,4
    800028fc:	c2dff06f          	j	80002528 <__printf+0x260>
    80002900:	00500793          	li	a5,5
    80002904:	00400c93          	li	s9,4
    80002908:	db9ff06f          	j	800026c0 <__printf+0x3f8>
    8000290c:	00600793          	li	a5,6
    80002910:	00500c93          	li	s9,5
    80002914:	dadff06f          	j	800026c0 <__printf+0x3f8>
    80002918:	00600793          	li	a5,6
    8000291c:	00500c93          	li	s9,5
    80002920:	c09ff06f          	j	80002528 <__printf+0x260>
    80002924:	00800793          	li	a5,8
    80002928:	00700c93          	li	s9,7
    8000292c:	bfdff06f          	j	80002528 <__printf+0x260>
    80002930:	00100793          	li	a5,1
    80002934:	d91ff06f          	j	800026c4 <__printf+0x3fc>
    80002938:	00100793          	li	a5,1
    8000293c:	bf1ff06f          	j	8000252c <__printf+0x264>
    80002940:	00900793          	li	a5,9
    80002944:	00800c93          	li	s9,8
    80002948:	be1ff06f          	j	80002528 <__printf+0x260>
    8000294c:	00002517          	auipc	a0,0x2
    80002950:	81c50513          	addi	a0,a0,-2020 # 80004168 <_ZZ12printIntegermE6digits+0x150>
    80002954:	00000097          	auipc	ra,0x0
    80002958:	918080e7          	jalr	-1768(ra) # 8000226c <panic>

000000008000295c <printfinit>:
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00813823          	sd	s0,16(sp)
    80002964:	00913423          	sd	s1,8(sp)
    80002968:	00113c23          	sd	ra,24(sp)
    8000296c:	02010413          	addi	s0,sp,32
    80002970:	00003497          	auipc	s1,0x3
    80002974:	e9048493          	addi	s1,s1,-368 # 80005800 <pr>
    80002978:	00048513          	mv	a0,s1
    8000297c:	00001597          	auipc	a1,0x1
    80002980:	7fc58593          	addi	a1,a1,2044 # 80004178 <_ZZ12printIntegermE6digits+0x160>
    80002984:	00000097          	auipc	ra,0x0
    80002988:	5f4080e7          	jalr	1524(ra) # 80002f78 <initlock>
    8000298c:	01813083          	ld	ra,24(sp)
    80002990:	01013403          	ld	s0,16(sp)
    80002994:	0004ac23          	sw	zero,24(s1)
    80002998:	00813483          	ld	s1,8(sp)
    8000299c:	02010113          	addi	sp,sp,32
    800029a0:	00008067          	ret

00000000800029a4 <uartinit>:
    800029a4:	ff010113          	addi	sp,sp,-16
    800029a8:	00813423          	sd	s0,8(sp)
    800029ac:	01010413          	addi	s0,sp,16
    800029b0:	100007b7          	lui	a5,0x10000
    800029b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800029b8:	f8000713          	li	a4,-128
    800029bc:	00e781a3          	sb	a4,3(a5)
    800029c0:	00300713          	li	a4,3
    800029c4:	00e78023          	sb	a4,0(a5)
    800029c8:	000780a3          	sb	zero,1(a5)
    800029cc:	00e781a3          	sb	a4,3(a5)
    800029d0:	00700693          	li	a3,7
    800029d4:	00d78123          	sb	a3,2(a5)
    800029d8:	00e780a3          	sb	a4,1(a5)
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	01010113          	addi	sp,sp,16
    800029e4:	00008067          	ret

00000000800029e8 <uartputc>:
    800029e8:	00002797          	auipc	a5,0x2
    800029ec:	bc07a783          	lw	a5,-1088(a5) # 800045a8 <panicked>
    800029f0:	00078463          	beqz	a5,800029f8 <uartputc+0x10>
    800029f4:	0000006f          	j	800029f4 <uartputc+0xc>
    800029f8:	fd010113          	addi	sp,sp,-48
    800029fc:	02813023          	sd	s0,32(sp)
    80002a00:	00913c23          	sd	s1,24(sp)
    80002a04:	01213823          	sd	s2,16(sp)
    80002a08:	01313423          	sd	s3,8(sp)
    80002a0c:	02113423          	sd	ra,40(sp)
    80002a10:	03010413          	addi	s0,sp,48
    80002a14:	00002917          	auipc	s2,0x2
    80002a18:	b9c90913          	addi	s2,s2,-1124 # 800045b0 <uart_tx_r>
    80002a1c:	00093783          	ld	a5,0(s2)
    80002a20:	00002497          	auipc	s1,0x2
    80002a24:	b9848493          	addi	s1,s1,-1128 # 800045b8 <uart_tx_w>
    80002a28:	0004b703          	ld	a4,0(s1)
    80002a2c:	02078693          	addi	a3,a5,32
    80002a30:	00050993          	mv	s3,a0
    80002a34:	02e69c63          	bne	a3,a4,80002a6c <uartputc+0x84>
    80002a38:	00001097          	auipc	ra,0x1
    80002a3c:	834080e7          	jalr	-1996(ra) # 8000326c <push_on>
    80002a40:	00093783          	ld	a5,0(s2)
    80002a44:	0004b703          	ld	a4,0(s1)
    80002a48:	02078793          	addi	a5,a5,32
    80002a4c:	00e79463          	bne	a5,a4,80002a54 <uartputc+0x6c>
    80002a50:	0000006f          	j	80002a50 <uartputc+0x68>
    80002a54:	00001097          	auipc	ra,0x1
    80002a58:	88c080e7          	jalr	-1908(ra) # 800032e0 <pop_on>
    80002a5c:	00093783          	ld	a5,0(s2)
    80002a60:	0004b703          	ld	a4,0(s1)
    80002a64:	02078693          	addi	a3,a5,32
    80002a68:	fce688e3          	beq	a3,a4,80002a38 <uartputc+0x50>
    80002a6c:	01f77693          	andi	a3,a4,31
    80002a70:	00003597          	auipc	a1,0x3
    80002a74:	db058593          	addi	a1,a1,-592 # 80005820 <uart_tx_buf>
    80002a78:	00d586b3          	add	a3,a1,a3
    80002a7c:	00170713          	addi	a4,a4,1
    80002a80:	01368023          	sb	s3,0(a3)
    80002a84:	00e4b023          	sd	a4,0(s1)
    80002a88:	10000637          	lui	a2,0x10000
    80002a8c:	02f71063          	bne	a4,a5,80002aac <uartputc+0xc4>
    80002a90:	0340006f          	j	80002ac4 <uartputc+0xdc>
    80002a94:	00074703          	lbu	a4,0(a4)
    80002a98:	00f93023          	sd	a5,0(s2)
    80002a9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002aa0:	00093783          	ld	a5,0(s2)
    80002aa4:	0004b703          	ld	a4,0(s1)
    80002aa8:	00f70e63          	beq	a4,a5,80002ac4 <uartputc+0xdc>
    80002aac:	00564683          	lbu	a3,5(a2)
    80002ab0:	01f7f713          	andi	a4,a5,31
    80002ab4:	00e58733          	add	a4,a1,a4
    80002ab8:	0206f693          	andi	a3,a3,32
    80002abc:	00178793          	addi	a5,a5,1
    80002ac0:	fc069ae3          	bnez	a3,80002a94 <uartputc+0xac>
    80002ac4:	02813083          	ld	ra,40(sp)
    80002ac8:	02013403          	ld	s0,32(sp)
    80002acc:	01813483          	ld	s1,24(sp)
    80002ad0:	01013903          	ld	s2,16(sp)
    80002ad4:	00813983          	ld	s3,8(sp)
    80002ad8:	03010113          	addi	sp,sp,48
    80002adc:	00008067          	ret

0000000080002ae0 <uartputc_sync>:
    80002ae0:	ff010113          	addi	sp,sp,-16
    80002ae4:	00813423          	sd	s0,8(sp)
    80002ae8:	01010413          	addi	s0,sp,16
    80002aec:	00002717          	auipc	a4,0x2
    80002af0:	abc72703          	lw	a4,-1348(a4) # 800045a8 <panicked>
    80002af4:	02071663          	bnez	a4,80002b20 <uartputc_sync+0x40>
    80002af8:	00050793          	mv	a5,a0
    80002afc:	100006b7          	lui	a3,0x10000
    80002b00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002b04:	02077713          	andi	a4,a4,32
    80002b08:	fe070ce3          	beqz	a4,80002b00 <uartputc_sync+0x20>
    80002b0c:	0ff7f793          	andi	a5,a5,255
    80002b10:	00f68023          	sb	a5,0(a3)
    80002b14:	00813403          	ld	s0,8(sp)
    80002b18:	01010113          	addi	sp,sp,16
    80002b1c:	00008067          	ret
    80002b20:	0000006f          	j	80002b20 <uartputc_sync+0x40>

0000000080002b24 <uartstart>:
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00813423          	sd	s0,8(sp)
    80002b2c:	01010413          	addi	s0,sp,16
    80002b30:	00002617          	auipc	a2,0x2
    80002b34:	a8060613          	addi	a2,a2,-1408 # 800045b0 <uart_tx_r>
    80002b38:	00002517          	auipc	a0,0x2
    80002b3c:	a8050513          	addi	a0,a0,-1408 # 800045b8 <uart_tx_w>
    80002b40:	00063783          	ld	a5,0(a2)
    80002b44:	00053703          	ld	a4,0(a0)
    80002b48:	04f70263          	beq	a4,a5,80002b8c <uartstart+0x68>
    80002b4c:	100005b7          	lui	a1,0x10000
    80002b50:	00003817          	auipc	a6,0x3
    80002b54:	cd080813          	addi	a6,a6,-816 # 80005820 <uart_tx_buf>
    80002b58:	01c0006f          	j	80002b74 <uartstart+0x50>
    80002b5c:	0006c703          	lbu	a4,0(a3)
    80002b60:	00f63023          	sd	a5,0(a2)
    80002b64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002b68:	00063783          	ld	a5,0(a2)
    80002b6c:	00053703          	ld	a4,0(a0)
    80002b70:	00f70e63          	beq	a4,a5,80002b8c <uartstart+0x68>
    80002b74:	01f7f713          	andi	a4,a5,31
    80002b78:	00e806b3          	add	a3,a6,a4
    80002b7c:	0055c703          	lbu	a4,5(a1)
    80002b80:	00178793          	addi	a5,a5,1
    80002b84:	02077713          	andi	a4,a4,32
    80002b88:	fc071ae3          	bnez	a4,80002b5c <uartstart+0x38>
    80002b8c:	00813403          	ld	s0,8(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret

0000000080002b98 <uartgetc>:
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00813423          	sd	s0,8(sp)
    80002ba0:	01010413          	addi	s0,sp,16
    80002ba4:	10000737          	lui	a4,0x10000
    80002ba8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002bac:	0017f793          	andi	a5,a5,1
    80002bb0:	00078c63          	beqz	a5,80002bc8 <uartgetc+0x30>
    80002bb4:	00074503          	lbu	a0,0(a4)
    80002bb8:	0ff57513          	andi	a0,a0,255
    80002bbc:	00813403          	ld	s0,8(sp)
    80002bc0:	01010113          	addi	sp,sp,16
    80002bc4:	00008067          	ret
    80002bc8:	fff00513          	li	a0,-1
    80002bcc:	ff1ff06f          	j	80002bbc <uartgetc+0x24>

0000000080002bd0 <uartintr>:
    80002bd0:	100007b7          	lui	a5,0x10000
    80002bd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002bd8:	0017f793          	andi	a5,a5,1
    80002bdc:	0a078463          	beqz	a5,80002c84 <uartintr+0xb4>
    80002be0:	fe010113          	addi	sp,sp,-32
    80002be4:	00813823          	sd	s0,16(sp)
    80002be8:	00913423          	sd	s1,8(sp)
    80002bec:	00113c23          	sd	ra,24(sp)
    80002bf0:	02010413          	addi	s0,sp,32
    80002bf4:	100004b7          	lui	s1,0x10000
    80002bf8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002bfc:	0ff57513          	andi	a0,a0,255
    80002c00:	fffff097          	auipc	ra,0xfffff
    80002c04:	534080e7          	jalr	1332(ra) # 80002134 <consoleintr>
    80002c08:	0054c783          	lbu	a5,5(s1)
    80002c0c:	0017f793          	andi	a5,a5,1
    80002c10:	fe0794e3          	bnez	a5,80002bf8 <uartintr+0x28>
    80002c14:	00002617          	auipc	a2,0x2
    80002c18:	99c60613          	addi	a2,a2,-1636 # 800045b0 <uart_tx_r>
    80002c1c:	00002517          	auipc	a0,0x2
    80002c20:	99c50513          	addi	a0,a0,-1636 # 800045b8 <uart_tx_w>
    80002c24:	00063783          	ld	a5,0(a2)
    80002c28:	00053703          	ld	a4,0(a0)
    80002c2c:	04f70263          	beq	a4,a5,80002c70 <uartintr+0xa0>
    80002c30:	100005b7          	lui	a1,0x10000
    80002c34:	00003817          	auipc	a6,0x3
    80002c38:	bec80813          	addi	a6,a6,-1044 # 80005820 <uart_tx_buf>
    80002c3c:	01c0006f          	j	80002c58 <uartintr+0x88>
    80002c40:	0006c703          	lbu	a4,0(a3)
    80002c44:	00f63023          	sd	a5,0(a2)
    80002c48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c4c:	00063783          	ld	a5,0(a2)
    80002c50:	00053703          	ld	a4,0(a0)
    80002c54:	00f70e63          	beq	a4,a5,80002c70 <uartintr+0xa0>
    80002c58:	01f7f713          	andi	a4,a5,31
    80002c5c:	00e806b3          	add	a3,a6,a4
    80002c60:	0055c703          	lbu	a4,5(a1)
    80002c64:	00178793          	addi	a5,a5,1
    80002c68:	02077713          	andi	a4,a4,32
    80002c6c:	fc071ae3          	bnez	a4,80002c40 <uartintr+0x70>
    80002c70:	01813083          	ld	ra,24(sp)
    80002c74:	01013403          	ld	s0,16(sp)
    80002c78:	00813483          	ld	s1,8(sp)
    80002c7c:	02010113          	addi	sp,sp,32
    80002c80:	00008067          	ret
    80002c84:	00002617          	auipc	a2,0x2
    80002c88:	92c60613          	addi	a2,a2,-1748 # 800045b0 <uart_tx_r>
    80002c8c:	00002517          	auipc	a0,0x2
    80002c90:	92c50513          	addi	a0,a0,-1748 # 800045b8 <uart_tx_w>
    80002c94:	00063783          	ld	a5,0(a2)
    80002c98:	00053703          	ld	a4,0(a0)
    80002c9c:	04f70263          	beq	a4,a5,80002ce0 <uartintr+0x110>
    80002ca0:	100005b7          	lui	a1,0x10000
    80002ca4:	00003817          	auipc	a6,0x3
    80002ca8:	b7c80813          	addi	a6,a6,-1156 # 80005820 <uart_tx_buf>
    80002cac:	01c0006f          	j	80002cc8 <uartintr+0xf8>
    80002cb0:	0006c703          	lbu	a4,0(a3)
    80002cb4:	00f63023          	sd	a5,0(a2)
    80002cb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cbc:	00063783          	ld	a5,0(a2)
    80002cc0:	00053703          	ld	a4,0(a0)
    80002cc4:	02f70063          	beq	a4,a5,80002ce4 <uartintr+0x114>
    80002cc8:	01f7f713          	andi	a4,a5,31
    80002ccc:	00e806b3          	add	a3,a6,a4
    80002cd0:	0055c703          	lbu	a4,5(a1)
    80002cd4:	00178793          	addi	a5,a5,1
    80002cd8:	02077713          	andi	a4,a4,32
    80002cdc:	fc071ae3          	bnez	a4,80002cb0 <uartintr+0xe0>
    80002ce0:	00008067          	ret
    80002ce4:	00008067          	ret

0000000080002ce8 <kinit>:
    80002ce8:	fc010113          	addi	sp,sp,-64
    80002cec:	02913423          	sd	s1,40(sp)
    80002cf0:	fffff7b7          	lui	a5,0xfffff
    80002cf4:	00004497          	auipc	s1,0x4
    80002cf8:	b5b48493          	addi	s1,s1,-1189 # 8000684f <end+0xfff>
    80002cfc:	02813823          	sd	s0,48(sp)
    80002d00:	01313c23          	sd	s3,24(sp)
    80002d04:	00f4f4b3          	and	s1,s1,a5
    80002d08:	02113c23          	sd	ra,56(sp)
    80002d0c:	03213023          	sd	s2,32(sp)
    80002d10:	01413823          	sd	s4,16(sp)
    80002d14:	01513423          	sd	s5,8(sp)
    80002d18:	04010413          	addi	s0,sp,64
    80002d1c:	000017b7          	lui	a5,0x1
    80002d20:	01100993          	li	s3,17
    80002d24:	00f487b3          	add	a5,s1,a5
    80002d28:	01b99993          	slli	s3,s3,0x1b
    80002d2c:	06f9e063          	bltu	s3,a5,80002d8c <kinit+0xa4>
    80002d30:	00003a97          	auipc	s5,0x3
    80002d34:	b20a8a93          	addi	s5,s5,-1248 # 80005850 <end>
    80002d38:	0754ec63          	bltu	s1,s5,80002db0 <kinit+0xc8>
    80002d3c:	0734fa63          	bgeu	s1,s3,80002db0 <kinit+0xc8>
    80002d40:	00088a37          	lui	s4,0x88
    80002d44:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002d48:	00002917          	auipc	s2,0x2
    80002d4c:	87890913          	addi	s2,s2,-1928 # 800045c0 <kmem>
    80002d50:	00ca1a13          	slli	s4,s4,0xc
    80002d54:	0140006f          	j	80002d68 <kinit+0x80>
    80002d58:	000017b7          	lui	a5,0x1
    80002d5c:	00f484b3          	add	s1,s1,a5
    80002d60:	0554e863          	bltu	s1,s5,80002db0 <kinit+0xc8>
    80002d64:	0534f663          	bgeu	s1,s3,80002db0 <kinit+0xc8>
    80002d68:	00001637          	lui	a2,0x1
    80002d6c:	00100593          	li	a1,1
    80002d70:	00048513          	mv	a0,s1
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	5e4080e7          	jalr	1508(ra) # 80003358 <__memset>
    80002d7c:	00093783          	ld	a5,0(s2)
    80002d80:	00f4b023          	sd	a5,0(s1)
    80002d84:	00993023          	sd	s1,0(s2)
    80002d88:	fd4498e3          	bne	s1,s4,80002d58 <kinit+0x70>
    80002d8c:	03813083          	ld	ra,56(sp)
    80002d90:	03013403          	ld	s0,48(sp)
    80002d94:	02813483          	ld	s1,40(sp)
    80002d98:	02013903          	ld	s2,32(sp)
    80002d9c:	01813983          	ld	s3,24(sp)
    80002da0:	01013a03          	ld	s4,16(sp)
    80002da4:	00813a83          	ld	s5,8(sp)
    80002da8:	04010113          	addi	sp,sp,64
    80002dac:	00008067          	ret
    80002db0:	00001517          	auipc	a0,0x1
    80002db4:	3e850513          	addi	a0,a0,1000 # 80004198 <digits+0x18>
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	4b4080e7          	jalr	1204(ra) # 8000226c <panic>

0000000080002dc0 <freerange>:
    80002dc0:	fc010113          	addi	sp,sp,-64
    80002dc4:	000017b7          	lui	a5,0x1
    80002dc8:	02913423          	sd	s1,40(sp)
    80002dcc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002dd0:	009504b3          	add	s1,a0,s1
    80002dd4:	fffff537          	lui	a0,0xfffff
    80002dd8:	02813823          	sd	s0,48(sp)
    80002ddc:	02113c23          	sd	ra,56(sp)
    80002de0:	03213023          	sd	s2,32(sp)
    80002de4:	01313c23          	sd	s3,24(sp)
    80002de8:	01413823          	sd	s4,16(sp)
    80002dec:	01513423          	sd	s5,8(sp)
    80002df0:	01613023          	sd	s6,0(sp)
    80002df4:	04010413          	addi	s0,sp,64
    80002df8:	00a4f4b3          	and	s1,s1,a0
    80002dfc:	00f487b3          	add	a5,s1,a5
    80002e00:	06f5e463          	bltu	a1,a5,80002e68 <freerange+0xa8>
    80002e04:	00003a97          	auipc	s5,0x3
    80002e08:	a4ca8a93          	addi	s5,s5,-1460 # 80005850 <end>
    80002e0c:	0954e263          	bltu	s1,s5,80002e90 <freerange+0xd0>
    80002e10:	01100993          	li	s3,17
    80002e14:	01b99993          	slli	s3,s3,0x1b
    80002e18:	0734fc63          	bgeu	s1,s3,80002e90 <freerange+0xd0>
    80002e1c:	00058a13          	mv	s4,a1
    80002e20:	00001917          	auipc	s2,0x1
    80002e24:	7a090913          	addi	s2,s2,1952 # 800045c0 <kmem>
    80002e28:	00002b37          	lui	s6,0x2
    80002e2c:	0140006f          	j	80002e40 <freerange+0x80>
    80002e30:	000017b7          	lui	a5,0x1
    80002e34:	00f484b3          	add	s1,s1,a5
    80002e38:	0554ec63          	bltu	s1,s5,80002e90 <freerange+0xd0>
    80002e3c:	0534fa63          	bgeu	s1,s3,80002e90 <freerange+0xd0>
    80002e40:	00001637          	lui	a2,0x1
    80002e44:	00100593          	li	a1,1
    80002e48:	00048513          	mv	a0,s1
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	50c080e7          	jalr	1292(ra) # 80003358 <__memset>
    80002e54:	00093703          	ld	a4,0(s2)
    80002e58:	016487b3          	add	a5,s1,s6
    80002e5c:	00e4b023          	sd	a4,0(s1)
    80002e60:	00993023          	sd	s1,0(s2)
    80002e64:	fcfa76e3          	bgeu	s4,a5,80002e30 <freerange+0x70>
    80002e68:	03813083          	ld	ra,56(sp)
    80002e6c:	03013403          	ld	s0,48(sp)
    80002e70:	02813483          	ld	s1,40(sp)
    80002e74:	02013903          	ld	s2,32(sp)
    80002e78:	01813983          	ld	s3,24(sp)
    80002e7c:	01013a03          	ld	s4,16(sp)
    80002e80:	00813a83          	ld	s5,8(sp)
    80002e84:	00013b03          	ld	s6,0(sp)
    80002e88:	04010113          	addi	sp,sp,64
    80002e8c:	00008067          	ret
    80002e90:	00001517          	auipc	a0,0x1
    80002e94:	30850513          	addi	a0,a0,776 # 80004198 <digits+0x18>
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	3d4080e7          	jalr	980(ra) # 8000226c <panic>

0000000080002ea0 <kfree>:
    80002ea0:	fe010113          	addi	sp,sp,-32
    80002ea4:	00813823          	sd	s0,16(sp)
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00913423          	sd	s1,8(sp)
    80002eb0:	02010413          	addi	s0,sp,32
    80002eb4:	03451793          	slli	a5,a0,0x34
    80002eb8:	04079c63          	bnez	a5,80002f10 <kfree+0x70>
    80002ebc:	00003797          	auipc	a5,0x3
    80002ec0:	99478793          	addi	a5,a5,-1644 # 80005850 <end>
    80002ec4:	00050493          	mv	s1,a0
    80002ec8:	04f56463          	bltu	a0,a5,80002f10 <kfree+0x70>
    80002ecc:	01100793          	li	a5,17
    80002ed0:	01b79793          	slli	a5,a5,0x1b
    80002ed4:	02f57e63          	bgeu	a0,a5,80002f10 <kfree+0x70>
    80002ed8:	00001637          	lui	a2,0x1
    80002edc:	00100593          	li	a1,1
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	478080e7          	jalr	1144(ra) # 80003358 <__memset>
    80002ee8:	00001797          	auipc	a5,0x1
    80002eec:	6d878793          	addi	a5,a5,1752 # 800045c0 <kmem>
    80002ef0:	0007b703          	ld	a4,0(a5)
    80002ef4:	01813083          	ld	ra,24(sp)
    80002ef8:	01013403          	ld	s0,16(sp)
    80002efc:	00e4b023          	sd	a4,0(s1)
    80002f00:	0097b023          	sd	s1,0(a5)
    80002f04:	00813483          	ld	s1,8(sp)
    80002f08:	02010113          	addi	sp,sp,32
    80002f0c:	00008067          	ret
    80002f10:	00001517          	auipc	a0,0x1
    80002f14:	28850513          	addi	a0,a0,648 # 80004198 <digits+0x18>
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	354080e7          	jalr	852(ra) # 8000226c <panic>

0000000080002f20 <kalloc>:
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	00113c23          	sd	ra,24(sp)
    80002f30:	02010413          	addi	s0,sp,32
    80002f34:	00001797          	auipc	a5,0x1
    80002f38:	68c78793          	addi	a5,a5,1676 # 800045c0 <kmem>
    80002f3c:	0007b483          	ld	s1,0(a5)
    80002f40:	02048063          	beqz	s1,80002f60 <kalloc+0x40>
    80002f44:	0004b703          	ld	a4,0(s1)
    80002f48:	00001637          	lui	a2,0x1
    80002f4c:	00500593          	li	a1,5
    80002f50:	00048513          	mv	a0,s1
    80002f54:	00e7b023          	sd	a4,0(a5)
    80002f58:	00000097          	auipc	ra,0x0
    80002f5c:	400080e7          	jalr	1024(ra) # 80003358 <__memset>
    80002f60:	01813083          	ld	ra,24(sp)
    80002f64:	01013403          	ld	s0,16(sp)
    80002f68:	00048513          	mv	a0,s1
    80002f6c:	00813483          	ld	s1,8(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret

0000000080002f78 <initlock>:
    80002f78:	ff010113          	addi	sp,sp,-16
    80002f7c:	00813423          	sd	s0,8(sp)
    80002f80:	01010413          	addi	s0,sp,16
    80002f84:	00813403          	ld	s0,8(sp)
    80002f88:	00b53423          	sd	a1,8(a0)
    80002f8c:	00052023          	sw	zero,0(a0)
    80002f90:	00053823          	sd	zero,16(a0)
    80002f94:	01010113          	addi	sp,sp,16
    80002f98:	00008067          	ret

0000000080002f9c <acquire>:
    80002f9c:	fe010113          	addi	sp,sp,-32
    80002fa0:	00813823          	sd	s0,16(sp)
    80002fa4:	00913423          	sd	s1,8(sp)
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	01213023          	sd	s2,0(sp)
    80002fb0:	02010413          	addi	s0,sp,32
    80002fb4:	00050493          	mv	s1,a0
    80002fb8:	10002973          	csrr	s2,sstatus
    80002fbc:	100027f3          	csrr	a5,sstatus
    80002fc0:	ffd7f793          	andi	a5,a5,-3
    80002fc4:	10079073          	csrw	sstatus,a5
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	8e8080e7          	jalr	-1816(ra) # 800018b0 <mycpu>
    80002fd0:	07852783          	lw	a5,120(a0)
    80002fd4:	06078e63          	beqz	a5,80003050 <acquire+0xb4>
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	8d8080e7          	jalr	-1832(ra) # 800018b0 <mycpu>
    80002fe0:	07852783          	lw	a5,120(a0)
    80002fe4:	0004a703          	lw	a4,0(s1)
    80002fe8:	0017879b          	addiw	a5,a5,1
    80002fec:	06f52c23          	sw	a5,120(a0)
    80002ff0:	04071063          	bnez	a4,80003030 <acquire+0x94>
    80002ff4:	00100713          	li	a4,1
    80002ff8:	00070793          	mv	a5,a4
    80002ffc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003000:	0007879b          	sext.w	a5,a5
    80003004:	fe079ae3          	bnez	a5,80002ff8 <acquire+0x5c>
    80003008:	0ff0000f          	fence
    8000300c:	fffff097          	auipc	ra,0xfffff
    80003010:	8a4080e7          	jalr	-1884(ra) # 800018b0 <mycpu>
    80003014:	01813083          	ld	ra,24(sp)
    80003018:	01013403          	ld	s0,16(sp)
    8000301c:	00a4b823          	sd	a0,16(s1)
    80003020:	00013903          	ld	s2,0(sp)
    80003024:	00813483          	ld	s1,8(sp)
    80003028:	02010113          	addi	sp,sp,32
    8000302c:	00008067          	ret
    80003030:	0104b903          	ld	s2,16(s1)
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	87c080e7          	jalr	-1924(ra) # 800018b0 <mycpu>
    8000303c:	faa91ce3          	bne	s2,a0,80002ff4 <acquire+0x58>
    80003040:	00001517          	auipc	a0,0x1
    80003044:	16050513          	addi	a0,a0,352 # 800041a0 <digits+0x20>
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	224080e7          	jalr	548(ra) # 8000226c <panic>
    80003050:	00195913          	srli	s2,s2,0x1
    80003054:	fffff097          	auipc	ra,0xfffff
    80003058:	85c080e7          	jalr	-1956(ra) # 800018b0 <mycpu>
    8000305c:	00197913          	andi	s2,s2,1
    80003060:	07252e23          	sw	s2,124(a0)
    80003064:	f75ff06f          	j	80002fd8 <acquire+0x3c>

0000000080003068 <release>:
    80003068:	fe010113          	addi	sp,sp,-32
    8000306c:	00813823          	sd	s0,16(sp)
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00913423          	sd	s1,8(sp)
    80003078:	01213023          	sd	s2,0(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00052783          	lw	a5,0(a0)
    80003084:	00079a63          	bnez	a5,80003098 <release+0x30>
    80003088:	00001517          	auipc	a0,0x1
    8000308c:	12050513          	addi	a0,a0,288 # 800041a8 <digits+0x28>
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	1dc080e7          	jalr	476(ra) # 8000226c <panic>
    80003098:	01053903          	ld	s2,16(a0)
    8000309c:	00050493          	mv	s1,a0
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	810080e7          	jalr	-2032(ra) # 800018b0 <mycpu>
    800030a8:	fea910e3          	bne	s2,a0,80003088 <release+0x20>
    800030ac:	0004b823          	sd	zero,16(s1)
    800030b0:	0ff0000f          	fence
    800030b4:	0f50000f          	fence	iorw,ow
    800030b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800030bc:	ffffe097          	auipc	ra,0xffffe
    800030c0:	7f4080e7          	jalr	2036(ra) # 800018b0 <mycpu>
    800030c4:	100027f3          	csrr	a5,sstatus
    800030c8:	0027f793          	andi	a5,a5,2
    800030cc:	04079a63          	bnez	a5,80003120 <release+0xb8>
    800030d0:	07852783          	lw	a5,120(a0)
    800030d4:	02f05e63          	blez	a5,80003110 <release+0xa8>
    800030d8:	fff7871b          	addiw	a4,a5,-1
    800030dc:	06e52c23          	sw	a4,120(a0)
    800030e0:	00071c63          	bnez	a4,800030f8 <release+0x90>
    800030e4:	07c52783          	lw	a5,124(a0)
    800030e8:	00078863          	beqz	a5,800030f8 <release+0x90>
    800030ec:	100027f3          	csrr	a5,sstatus
    800030f0:	0027e793          	ori	a5,a5,2
    800030f4:	10079073          	csrw	sstatus,a5
    800030f8:	01813083          	ld	ra,24(sp)
    800030fc:	01013403          	ld	s0,16(sp)
    80003100:	00813483          	ld	s1,8(sp)
    80003104:	00013903          	ld	s2,0(sp)
    80003108:	02010113          	addi	sp,sp,32
    8000310c:	00008067          	ret
    80003110:	00001517          	auipc	a0,0x1
    80003114:	0b850513          	addi	a0,a0,184 # 800041c8 <digits+0x48>
    80003118:	fffff097          	auipc	ra,0xfffff
    8000311c:	154080e7          	jalr	340(ra) # 8000226c <panic>
    80003120:	00001517          	auipc	a0,0x1
    80003124:	09050513          	addi	a0,a0,144 # 800041b0 <digits+0x30>
    80003128:	fffff097          	auipc	ra,0xfffff
    8000312c:	144080e7          	jalr	324(ra) # 8000226c <panic>

0000000080003130 <holding>:
    80003130:	00052783          	lw	a5,0(a0)
    80003134:	00079663          	bnez	a5,80003140 <holding+0x10>
    80003138:	00000513          	li	a0,0
    8000313c:	00008067          	ret
    80003140:	fe010113          	addi	sp,sp,-32
    80003144:	00813823          	sd	s0,16(sp)
    80003148:	00913423          	sd	s1,8(sp)
    8000314c:	00113c23          	sd	ra,24(sp)
    80003150:	02010413          	addi	s0,sp,32
    80003154:	01053483          	ld	s1,16(a0)
    80003158:	ffffe097          	auipc	ra,0xffffe
    8000315c:	758080e7          	jalr	1880(ra) # 800018b0 <mycpu>
    80003160:	01813083          	ld	ra,24(sp)
    80003164:	01013403          	ld	s0,16(sp)
    80003168:	40a48533          	sub	a0,s1,a0
    8000316c:	00153513          	seqz	a0,a0
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret

000000008000317c <push_off>:
    8000317c:	fe010113          	addi	sp,sp,-32
    80003180:	00813823          	sd	s0,16(sp)
    80003184:	00113c23          	sd	ra,24(sp)
    80003188:	00913423          	sd	s1,8(sp)
    8000318c:	02010413          	addi	s0,sp,32
    80003190:	100024f3          	csrr	s1,sstatus
    80003194:	100027f3          	csrr	a5,sstatus
    80003198:	ffd7f793          	andi	a5,a5,-3
    8000319c:	10079073          	csrw	sstatus,a5
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	710080e7          	jalr	1808(ra) # 800018b0 <mycpu>
    800031a8:	07852783          	lw	a5,120(a0)
    800031ac:	02078663          	beqz	a5,800031d8 <push_off+0x5c>
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	700080e7          	jalr	1792(ra) # 800018b0 <mycpu>
    800031b8:	07852783          	lw	a5,120(a0)
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	0017879b          	addiw	a5,a5,1
    800031c8:	06f52c23          	sw	a5,120(a0)
    800031cc:	00813483          	ld	s1,8(sp)
    800031d0:	02010113          	addi	sp,sp,32
    800031d4:	00008067          	ret
    800031d8:	0014d493          	srli	s1,s1,0x1
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	6d4080e7          	jalr	1748(ra) # 800018b0 <mycpu>
    800031e4:	0014f493          	andi	s1,s1,1
    800031e8:	06952e23          	sw	s1,124(a0)
    800031ec:	fc5ff06f          	j	800031b0 <push_off+0x34>

00000000800031f0 <pop_off>:
    800031f0:	ff010113          	addi	sp,sp,-16
    800031f4:	00813023          	sd	s0,0(sp)
    800031f8:	00113423          	sd	ra,8(sp)
    800031fc:	01010413          	addi	s0,sp,16
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	6b0080e7          	jalr	1712(ra) # 800018b0 <mycpu>
    80003208:	100027f3          	csrr	a5,sstatus
    8000320c:	0027f793          	andi	a5,a5,2
    80003210:	04079663          	bnez	a5,8000325c <pop_off+0x6c>
    80003214:	07852783          	lw	a5,120(a0)
    80003218:	02f05a63          	blez	a5,8000324c <pop_off+0x5c>
    8000321c:	fff7871b          	addiw	a4,a5,-1
    80003220:	06e52c23          	sw	a4,120(a0)
    80003224:	00071c63          	bnez	a4,8000323c <pop_off+0x4c>
    80003228:	07c52783          	lw	a5,124(a0)
    8000322c:	00078863          	beqz	a5,8000323c <pop_off+0x4c>
    80003230:	100027f3          	csrr	a5,sstatus
    80003234:	0027e793          	ori	a5,a5,2
    80003238:	10079073          	csrw	sstatus,a5
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret
    8000324c:	00001517          	auipc	a0,0x1
    80003250:	f7c50513          	addi	a0,a0,-132 # 800041c8 <digits+0x48>
    80003254:	fffff097          	auipc	ra,0xfffff
    80003258:	018080e7          	jalr	24(ra) # 8000226c <panic>
    8000325c:	00001517          	auipc	a0,0x1
    80003260:	f5450513          	addi	a0,a0,-172 # 800041b0 <digits+0x30>
    80003264:	fffff097          	auipc	ra,0xfffff
    80003268:	008080e7          	jalr	8(ra) # 8000226c <panic>

000000008000326c <push_on>:
    8000326c:	fe010113          	addi	sp,sp,-32
    80003270:	00813823          	sd	s0,16(sp)
    80003274:	00113c23          	sd	ra,24(sp)
    80003278:	00913423          	sd	s1,8(sp)
    8000327c:	02010413          	addi	s0,sp,32
    80003280:	100024f3          	csrr	s1,sstatus
    80003284:	100027f3          	csrr	a5,sstatus
    80003288:	0027e793          	ori	a5,a5,2
    8000328c:	10079073          	csrw	sstatus,a5
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	620080e7          	jalr	1568(ra) # 800018b0 <mycpu>
    80003298:	07852783          	lw	a5,120(a0)
    8000329c:	02078663          	beqz	a5,800032c8 <push_on+0x5c>
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	610080e7          	jalr	1552(ra) # 800018b0 <mycpu>
    800032a8:	07852783          	lw	a5,120(a0)
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	0017879b          	addiw	a5,a5,1
    800032b8:	06f52c23          	sw	a5,120(a0)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	02010113          	addi	sp,sp,32
    800032c4:	00008067          	ret
    800032c8:	0014d493          	srli	s1,s1,0x1
    800032cc:	ffffe097          	auipc	ra,0xffffe
    800032d0:	5e4080e7          	jalr	1508(ra) # 800018b0 <mycpu>
    800032d4:	0014f493          	andi	s1,s1,1
    800032d8:	06952e23          	sw	s1,124(a0)
    800032dc:	fc5ff06f          	j	800032a0 <push_on+0x34>

00000000800032e0 <pop_on>:
    800032e0:	ff010113          	addi	sp,sp,-16
    800032e4:	00813023          	sd	s0,0(sp)
    800032e8:	00113423          	sd	ra,8(sp)
    800032ec:	01010413          	addi	s0,sp,16
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	5c0080e7          	jalr	1472(ra) # 800018b0 <mycpu>
    800032f8:	100027f3          	csrr	a5,sstatus
    800032fc:	0027f793          	andi	a5,a5,2
    80003300:	04078463          	beqz	a5,80003348 <pop_on+0x68>
    80003304:	07852783          	lw	a5,120(a0)
    80003308:	02f05863          	blez	a5,80003338 <pop_on+0x58>
    8000330c:	fff7879b          	addiw	a5,a5,-1
    80003310:	06f52c23          	sw	a5,120(a0)
    80003314:	07853783          	ld	a5,120(a0)
    80003318:	00079863          	bnez	a5,80003328 <pop_on+0x48>
    8000331c:	100027f3          	csrr	a5,sstatus
    80003320:	ffd7f793          	andi	a5,a5,-3
    80003324:	10079073          	csrw	sstatus,a5
    80003328:	00813083          	ld	ra,8(sp)
    8000332c:	00013403          	ld	s0,0(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret
    80003338:	00001517          	auipc	a0,0x1
    8000333c:	eb850513          	addi	a0,a0,-328 # 800041f0 <digits+0x70>
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	f2c080e7          	jalr	-212(ra) # 8000226c <panic>
    80003348:	00001517          	auipc	a0,0x1
    8000334c:	e8850513          	addi	a0,a0,-376 # 800041d0 <digits+0x50>
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	f1c080e7          	jalr	-228(ra) # 8000226c <panic>

0000000080003358 <__memset>:
    80003358:	ff010113          	addi	sp,sp,-16
    8000335c:	00813423          	sd	s0,8(sp)
    80003360:	01010413          	addi	s0,sp,16
    80003364:	1a060e63          	beqz	a2,80003520 <__memset+0x1c8>
    80003368:	40a007b3          	neg	a5,a0
    8000336c:	0077f793          	andi	a5,a5,7
    80003370:	00778693          	addi	a3,a5,7
    80003374:	00b00813          	li	a6,11
    80003378:	0ff5f593          	andi	a1,a1,255
    8000337c:	fff6071b          	addiw	a4,a2,-1
    80003380:	1b06e663          	bltu	a3,a6,8000352c <__memset+0x1d4>
    80003384:	1cd76463          	bltu	a4,a3,8000354c <__memset+0x1f4>
    80003388:	1a078e63          	beqz	a5,80003544 <__memset+0x1ec>
    8000338c:	00b50023          	sb	a1,0(a0)
    80003390:	00100713          	li	a4,1
    80003394:	1ae78463          	beq	a5,a4,8000353c <__memset+0x1e4>
    80003398:	00b500a3          	sb	a1,1(a0)
    8000339c:	00200713          	li	a4,2
    800033a0:	1ae78a63          	beq	a5,a4,80003554 <__memset+0x1fc>
    800033a4:	00b50123          	sb	a1,2(a0)
    800033a8:	00300713          	li	a4,3
    800033ac:	18e78463          	beq	a5,a4,80003534 <__memset+0x1dc>
    800033b0:	00b501a3          	sb	a1,3(a0)
    800033b4:	00400713          	li	a4,4
    800033b8:	1ae78263          	beq	a5,a4,8000355c <__memset+0x204>
    800033bc:	00b50223          	sb	a1,4(a0)
    800033c0:	00500713          	li	a4,5
    800033c4:	1ae78063          	beq	a5,a4,80003564 <__memset+0x20c>
    800033c8:	00b502a3          	sb	a1,5(a0)
    800033cc:	00700713          	li	a4,7
    800033d0:	18e79e63          	bne	a5,a4,8000356c <__memset+0x214>
    800033d4:	00b50323          	sb	a1,6(a0)
    800033d8:	00700e93          	li	t4,7
    800033dc:	00859713          	slli	a4,a1,0x8
    800033e0:	00e5e733          	or	a4,a1,a4
    800033e4:	01059e13          	slli	t3,a1,0x10
    800033e8:	01c76e33          	or	t3,a4,t3
    800033ec:	01859313          	slli	t1,a1,0x18
    800033f0:	006e6333          	or	t1,t3,t1
    800033f4:	02059893          	slli	a7,a1,0x20
    800033f8:	40f60e3b          	subw	t3,a2,a5
    800033fc:	011368b3          	or	a7,t1,a7
    80003400:	02859813          	slli	a6,a1,0x28
    80003404:	0108e833          	or	a6,a7,a6
    80003408:	03059693          	slli	a3,a1,0x30
    8000340c:	003e589b          	srliw	a7,t3,0x3
    80003410:	00d866b3          	or	a3,a6,a3
    80003414:	03859713          	slli	a4,a1,0x38
    80003418:	00389813          	slli	a6,a7,0x3
    8000341c:	00f507b3          	add	a5,a0,a5
    80003420:	00e6e733          	or	a4,a3,a4
    80003424:	000e089b          	sext.w	a7,t3
    80003428:	00f806b3          	add	a3,a6,a5
    8000342c:	00e7b023          	sd	a4,0(a5)
    80003430:	00878793          	addi	a5,a5,8
    80003434:	fed79ce3          	bne	a5,a3,8000342c <__memset+0xd4>
    80003438:	ff8e7793          	andi	a5,t3,-8
    8000343c:	0007871b          	sext.w	a4,a5
    80003440:	01d787bb          	addw	a5,a5,t4
    80003444:	0ce88e63          	beq	a7,a4,80003520 <__memset+0x1c8>
    80003448:	00f50733          	add	a4,a0,a5
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	0017871b          	addiw	a4,a5,1
    80003454:	0cc77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	0027871b          	addiw	a4,a5,2
    80003464:	0ac77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	0037871b          	addiw	a4,a5,3
    80003474:	0ac77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	0047871b          	addiw	a4,a5,4
    80003484:	08c77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003488:	00e50733          	add	a4,a0,a4
    8000348c:	00b70023          	sb	a1,0(a4)
    80003490:	0057871b          	addiw	a4,a5,5
    80003494:	08c77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003498:	00e50733          	add	a4,a0,a4
    8000349c:	00b70023          	sb	a1,0(a4)
    800034a0:	0067871b          	addiw	a4,a5,6
    800034a4:	06c77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034a8:	00e50733          	add	a4,a0,a4
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	0077871b          	addiw	a4,a5,7
    800034b4:	06c77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	0087871b          	addiw	a4,a5,8
    800034c4:	04c77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	0097871b          	addiw	a4,a5,9
    800034d4:	04c77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	00a7871b          	addiw	a4,a5,10
    800034e4:	02c77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	00b7871b          	addiw	a4,a5,11
    800034f4:	02c77663          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	00c7871b          	addiw	a4,a5,12
    80003504:	00c77e63          	bgeu	a4,a2,80003520 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	00d7879b          	addiw	a5,a5,13
    80003514:	00c7f663          	bgeu	a5,a2,80003520 <__memset+0x1c8>
    80003518:	00f507b3          	add	a5,a0,a5
    8000351c:	00b78023          	sb	a1,0(a5)
    80003520:	00813403          	ld	s0,8(sp)
    80003524:	01010113          	addi	sp,sp,16
    80003528:	00008067          	ret
    8000352c:	00b00693          	li	a3,11
    80003530:	e55ff06f          	j	80003384 <__memset+0x2c>
    80003534:	00300e93          	li	t4,3
    80003538:	ea5ff06f          	j	800033dc <__memset+0x84>
    8000353c:	00100e93          	li	t4,1
    80003540:	e9dff06f          	j	800033dc <__memset+0x84>
    80003544:	00000e93          	li	t4,0
    80003548:	e95ff06f          	j	800033dc <__memset+0x84>
    8000354c:	00000793          	li	a5,0
    80003550:	ef9ff06f          	j	80003448 <__memset+0xf0>
    80003554:	00200e93          	li	t4,2
    80003558:	e85ff06f          	j	800033dc <__memset+0x84>
    8000355c:	00400e93          	li	t4,4
    80003560:	e7dff06f          	j	800033dc <__memset+0x84>
    80003564:	00500e93          	li	t4,5
    80003568:	e75ff06f          	j	800033dc <__memset+0x84>
    8000356c:	00600e93          	li	t4,6
    80003570:	e6dff06f          	j	800033dc <__memset+0x84>

0000000080003574 <__memmove>:
    80003574:	ff010113          	addi	sp,sp,-16
    80003578:	00813423          	sd	s0,8(sp)
    8000357c:	01010413          	addi	s0,sp,16
    80003580:	0e060863          	beqz	a2,80003670 <__memmove+0xfc>
    80003584:	fff6069b          	addiw	a3,a2,-1
    80003588:	0006881b          	sext.w	a6,a3
    8000358c:	0ea5e863          	bltu	a1,a0,8000367c <__memmove+0x108>
    80003590:	00758713          	addi	a4,a1,7
    80003594:	00a5e7b3          	or	a5,a1,a0
    80003598:	40a70733          	sub	a4,a4,a0
    8000359c:	0077f793          	andi	a5,a5,7
    800035a0:	00f73713          	sltiu	a4,a4,15
    800035a4:	00174713          	xori	a4,a4,1
    800035a8:	0017b793          	seqz	a5,a5
    800035ac:	00e7f7b3          	and	a5,a5,a4
    800035b0:	10078863          	beqz	a5,800036c0 <__memmove+0x14c>
    800035b4:	00900793          	li	a5,9
    800035b8:	1107f463          	bgeu	a5,a6,800036c0 <__memmove+0x14c>
    800035bc:	0036581b          	srliw	a6,a2,0x3
    800035c0:	fff8081b          	addiw	a6,a6,-1
    800035c4:	02081813          	slli	a6,a6,0x20
    800035c8:	01d85893          	srli	a7,a6,0x1d
    800035cc:	00858813          	addi	a6,a1,8
    800035d0:	00058793          	mv	a5,a1
    800035d4:	00050713          	mv	a4,a0
    800035d8:	01088833          	add	a6,a7,a6
    800035dc:	0007b883          	ld	a7,0(a5)
    800035e0:	00878793          	addi	a5,a5,8
    800035e4:	00870713          	addi	a4,a4,8
    800035e8:	ff173c23          	sd	a7,-8(a4)
    800035ec:	ff0798e3          	bne	a5,a6,800035dc <__memmove+0x68>
    800035f0:	ff867713          	andi	a4,a2,-8
    800035f4:	02071793          	slli	a5,a4,0x20
    800035f8:	0207d793          	srli	a5,a5,0x20
    800035fc:	00f585b3          	add	a1,a1,a5
    80003600:	40e686bb          	subw	a3,a3,a4
    80003604:	00f507b3          	add	a5,a0,a5
    80003608:	06e60463          	beq	a2,a4,80003670 <__memmove+0xfc>
    8000360c:	0005c703          	lbu	a4,0(a1)
    80003610:	00e78023          	sb	a4,0(a5)
    80003614:	04068e63          	beqz	a3,80003670 <__memmove+0xfc>
    80003618:	0015c603          	lbu	a2,1(a1)
    8000361c:	00100713          	li	a4,1
    80003620:	00c780a3          	sb	a2,1(a5)
    80003624:	04e68663          	beq	a3,a4,80003670 <__memmove+0xfc>
    80003628:	0025c603          	lbu	a2,2(a1)
    8000362c:	00200713          	li	a4,2
    80003630:	00c78123          	sb	a2,2(a5)
    80003634:	02e68e63          	beq	a3,a4,80003670 <__memmove+0xfc>
    80003638:	0035c603          	lbu	a2,3(a1)
    8000363c:	00300713          	li	a4,3
    80003640:	00c781a3          	sb	a2,3(a5)
    80003644:	02e68663          	beq	a3,a4,80003670 <__memmove+0xfc>
    80003648:	0045c603          	lbu	a2,4(a1)
    8000364c:	00400713          	li	a4,4
    80003650:	00c78223          	sb	a2,4(a5)
    80003654:	00e68e63          	beq	a3,a4,80003670 <__memmove+0xfc>
    80003658:	0055c603          	lbu	a2,5(a1)
    8000365c:	00500713          	li	a4,5
    80003660:	00c782a3          	sb	a2,5(a5)
    80003664:	00e68663          	beq	a3,a4,80003670 <__memmove+0xfc>
    80003668:	0065c703          	lbu	a4,6(a1)
    8000366c:	00e78323          	sb	a4,6(a5)
    80003670:	00813403          	ld	s0,8(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret
    8000367c:	02061713          	slli	a4,a2,0x20
    80003680:	02075713          	srli	a4,a4,0x20
    80003684:	00e587b3          	add	a5,a1,a4
    80003688:	f0f574e3          	bgeu	a0,a5,80003590 <__memmove+0x1c>
    8000368c:	02069613          	slli	a2,a3,0x20
    80003690:	02065613          	srli	a2,a2,0x20
    80003694:	fff64613          	not	a2,a2
    80003698:	00e50733          	add	a4,a0,a4
    8000369c:	00c78633          	add	a2,a5,a2
    800036a0:	fff7c683          	lbu	a3,-1(a5)
    800036a4:	fff78793          	addi	a5,a5,-1
    800036a8:	fff70713          	addi	a4,a4,-1
    800036ac:	00d70023          	sb	a3,0(a4)
    800036b0:	fec798e3          	bne	a5,a2,800036a0 <__memmove+0x12c>
    800036b4:	00813403          	ld	s0,8(sp)
    800036b8:	01010113          	addi	sp,sp,16
    800036bc:	00008067          	ret
    800036c0:	02069713          	slli	a4,a3,0x20
    800036c4:	02075713          	srli	a4,a4,0x20
    800036c8:	00170713          	addi	a4,a4,1
    800036cc:	00e50733          	add	a4,a0,a4
    800036d0:	00050793          	mv	a5,a0
    800036d4:	0005c683          	lbu	a3,0(a1)
    800036d8:	00178793          	addi	a5,a5,1
    800036dc:	00158593          	addi	a1,a1,1
    800036e0:	fed78fa3          	sb	a3,-1(a5)
    800036e4:	fee798e3          	bne	a5,a4,800036d4 <__memmove+0x160>
    800036e8:	f89ff06f          	j	80003670 <__memmove+0xfc>

00000000800036ec <__mem_free>:
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00813423          	sd	s0,8(sp)
    800036f4:	01010413          	addi	s0,sp,16
    800036f8:	00001597          	auipc	a1,0x1
    800036fc:	ed058593          	addi	a1,a1,-304 # 800045c8 <freep>
    80003700:	0005b783          	ld	a5,0(a1)
    80003704:	ff050693          	addi	a3,a0,-16
    80003708:	0007b703          	ld	a4,0(a5)
    8000370c:	00d7fc63          	bgeu	a5,a3,80003724 <__mem_free+0x38>
    80003710:	00e6ee63          	bltu	a3,a4,8000372c <__mem_free+0x40>
    80003714:	00e7fc63          	bgeu	a5,a4,8000372c <__mem_free+0x40>
    80003718:	00070793          	mv	a5,a4
    8000371c:	0007b703          	ld	a4,0(a5)
    80003720:	fed7e8e3          	bltu	a5,a3,80003710 <__mem_free+0x24>
    80003724:	fee7eae3          	bltu	a5,a4,80003718 <__mem_free+0x2c>
    80003728:	fee6f8e3          	bgeu	a3,a4,80003718 <__mem_free+0x2c>
    8000372c:	ff852803          	lw	a6,-8(a0)
    80003730:	02081613          	slli	a2,a6,0x20
    80003734:	01c65613          	srli	a2,a2,0x1c
    80003738:	00c68633          	add	a2,a3,a2
    8000373c:	02c70a63          	beq	a4,a2,80003770 <__mem_free+0x84>
    80003740:	fee53823          	sd	a4,-16(a0)
    80003744:	0087a503          	lw	a0,8(a5)
    80003748:	02051613          	slli	a2,a0,0x20
    8000374c:	01c65613          	srli	a2,a2,0x1c
    80003750:	00c78633          	add	a2,a5,a2
    80003754:	04c68263          	beq	a3,a2,80003798 <__mem_free+0xac>
    80003758:	00813403          	ld	s0,8(sp)
    8000375c:	00d7b023          	sd	a3,0(a5)
    80003760:	00f5b023          	sd	a5,0(a1)
    80003764:	00000513          	li	a0,0
    80003768:	01010113          	addi	sp,sp,16
    8000376c:	00008067          	ret
    80003770:	00872603          	lw	a2,8(a4)
    80003774:	00073703          	ld	a4,0(a4)
    80003778:	0106083b          	addw	a6,a2,a6
    8000377c:	ff052c23          	sw	a6,-8(a0)
    80003780:	fee53823          	sd	a4,-16(a0)
    80003784:	0087a503          	lw	a0,8(a5)
    80003788:	02051613          	slli	a2,a0,0x20
    8000378c:	01c65613          	srli	a2,a2,0x1c
    80003790:	00c78633          	add	a2,a5,a2
    80003794:	fcc692e3          	bne	a3,a2,80003758 <__mem_free+0x6c>
    80003798:	00813403          	ld	s0,8(sp)
    8000379c:	0105053b          	addw	a0,a0,a6
    800037a0:	00a7a423          	sw	a0,8(a5)
    800037a4:	00e7b023          	sd	a4,0(a5)
    800037a8:	00f5b023          	sd	a5,0(a1)
    800037ac:	00000513          	li	a0,0
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret

00000000800037b8 <__mem_alloc>:
    800037b8:	fc010113          	addi	sp,sp,-64
    800037bc:	02813823          	sd	s0,48(sp)
    800037c0:	02913423          	sd	s1,40(sp)
    800037c4:	03213023          	sd	s2,32(sp)
    800037c8:	01513423          	sd	s5,8(sp)
    800037cc:	02113c23          	sd	ra,56(sp)
    800037d0:	01313c23          	sd	s3,24(sp)
    800037d4:	01413823          	sd	s4,16(sp)
    800037d8:	01613023          	sd	s6,0(sp)
    800037dc:	04010413          	addi	s0,sp,64
    800037e0:	00001a97          	auipc	s5,0x1
    800037e4:	de8a8a93          	addi	s5,s5,-536 # 800045c8 <freep>
    800037e8:	00f50913          	addi	s2,a0,15
    800037ec:	000ab683          	ld	a3,0(s5)
    800037f0:	00495913          	srli	s2,s2,0x4
    800037f4:	0019049b          	addiw	s1,s2,1
    800037f8:	00048913          	mv	s2,s1
    800037fc:	0c068c63          	beqz	a3,800038d4 <__mem_alloc+0x11c>
    80003800:	0006b503          	ld	a0,0(a3)
    80003804:	00852703          	lw	a4,8(a0)
    80003808:	10977063          	bgeu	a4,s1,80003908 <__mem_alloc+0x150>
    8000380c:	000017b7          	lui	a5,0x1
    80003810:	0009099b          	sext.w	s3,s2
    80003814:	0af4e863          	bltu	s1,a5,800038c4 <__mem_alloc+0x10c>
    80003818:	02099a13          	slli	s4,s3,0x20
    8000381c:	01ca5a13          	srli	s4,s4,0x1c
    80003820:	fff00b13          	li	s6,-1
    80003824:	0100006f          	j	80003834 <__mem_alloc+0x7c>
    80003828:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000382c:	00852703          	lw	a4,8(a0)
    80003830:	04977463          	bgeu	a4,s1,80003878 <__mem_alloc+0xc0>
    80003834:	00050793          	mv	a5,a0
    80003838:	fea698e3          	bne	a3,a0,80003828 <__mem_alloc+0x70>
    8000383c:	000a0513          	mv	a0,s4
    80003840:	00000097          	auipc	ra,0x0
    80003844:	1f0080e7          	jalr	496(ra) # 80003a30 <kvmincrease>
    80003848:	00050793          	mv	a5,a0
    8000384c:	01050513          	addi	a0,a0,16
    80003850:	07678e63          	beq	a5,s6,800038cc <__mem_alloc+0x114>
    80003854:	0137a423          	sw	s3,8(a5)
    80003858:	00000097          	auipc	ra,0x0
    8000385c:	e94080e7          	jalr	-364(ra) # 800036ec <__mem_free>
    80003860:	000ab783          	ld	a5,0(s5)
    80003864:	06078463          	beqz	a5,800038cc <__mem_alloc+0x114>
    80003868:	0007b503          	ld	a0,0(a5)
    8000386c:	00078693          	mv	a3,a5
    80003870:	00852703          	lw	a4,8(a0)
    80003874:	fc9760e3          	bltu	a4,s1,80003834 <__mem_alloc+0x7c>
    80003878:	08e48263          	beq	s1,a4,800038fc <__mem_alloc+0x144>
    8000387c:	4127073b          	subw	a4,a4,s2
    80003880:	02071693          	slli	a3,a4,0x20
    80003884:	01c6d693          	srli	a3,a3,0x1c
    80003888:	00e52423          	sw	a4,8(a0)
    8000388c:	00d50533          	add	a0,a0,a3
    80003890:	01252423          	sw	s2,8(a0)
    80003894:	00fab023          	sd	a5,0(s5)
    80003898:	01050513          	addi	a0,a0,16
    8000389c:	03813083          	ld	ra,56(sp)
    800038a0:	03013403          	ld	s0,48(sp)
    800038a4:	02813483          	ld	s1,40(sp)
    800038a8:	02013903          	ld	s2,32(sp)
    800038ac:	01813983          	ld	s3,24(sp)
    800038b0:	01013a03          	ld	s4,16(sp)
    800038b4:	00813a83          	ld	s5,8(sp)
    800038b8:	00013b03          	ld	s6,0(sp)
    800038bc:	04010113          	addi	sp,sp,64
    800038c0:	00008067          	ret
    800038c4:	000019b7          	lui	s3,0x1
    800038c8:	f51ff06f          	j	80003818 <__mem_alloc+0x60>
    800038cc:	00000513          	li	a0,0
    800038d0:	fcdff06f          	j	8000389c <__mem_alloc+0xe4>
    800038d4:	00002797          	auipc	a5,0x2
    800038d8:	f6c78793          	addi	a5,a5,-148 # 80005840 <base>
    800038dc:	00078513          	mv	a0,a5
    800038e0:	00fab023          	sd	a5,0(s5)
    800038e4:	00f7b023          	sd	a5,0(a5)
    800038e8:	00000713          	li	a4,0
    800038ec:	00002797          	auipc	a5,0x2
    800038f0:	f407ae23          	sw	zero,-164(a5) # 80005848 <base+0x8>
    800038f4:	00050693          	mv	a3,a0
    800038f8:	f11ff06f          	j	80003808 <__mem_alloc+0x50>
    800038fc:	00053703          	ld	a4,0(a0)
    80003900:	00e7b023          	sd	a4,0(a5)
    80003904:	f91ff06f          	j	80003894 <__mem_alloc+0xdc>
    80003908:	00068793          	mv	a5,a3
    8000390c:	f6dff06f          	j	80003878 <__mem_alloc+0xc0>

0000000080003910 <__putc>:
    80003910:	fe010113          	addi	sp,sp,-32
    80003914:	00813823          	sd	s0,16(sp)
    80003918:	00113c23          	sd	ra,24(sp)
    8000391c:	02010413          	addi	s0,sp,32
    80003920:	00050793          	mv	a5,a0
    80003924:	fef40593          	addi	a1,s0,-17
    80003928:	00100613          	li	a2,1
    8000392c:	00000513          	li	a0,0
    80003930:	fef407a3          	sb	a5,-17(s0)
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	918080e7          	jalr	-1768(ra) # 8000224c <console_write>
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	02010113          	addi	sp,sp,32
    80003948:	00008067          	ret

000000008000394c <__getc>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00813823          	sd	s0,16(sp)
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	02010413          	addi	s0,sp,32
    8000395c:	fe840593          	addi	a1,s0,-24
    80003960:	00100613          	li	a2,1
    80003964:	00000513          	li	a0,0
    80003968:	fffff097          	auipc	ra,0xfffff
    8000396c:	8c4080e7          	jalr	-1852(ra) # 8000222c <console_read>
    80003970:	fe844503          	lbu	a0,-24(s0)
    80003974:	01813083          	ld	ra,24(sp)
    80003978:	01013403          	ld	s0,16(sp)
    8000397c:	02010113          	addi	sp,sp,32
    80003980:	00008067          	ret

0000000080003984 <console_handler>:
    80003984:	fe010113          	addi	sp,sp,-32
    80003988:	00813823          	sd	s0,16(sp)
    8000398c:	00113c23          	sd	ra,24(sp)
    80003990:	00913423          	sd	s1,8(sp)
    80003994:	02010413          	addi	s0,sp,32
    80003998:	14202773          	csrr	a4,scause
    8000399c:	100027f3          	csrr	a5,sstatus
    800039a0:	0027f793          	andi	a5,a5,2
    800039a4:	06079e63          	bnez	a5,80003a20 <console_handler+0x9c>
    800039a8:	00074c63          	bltz	a4,800039c0 <console_handler+0x3c>
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret
    800039c0:	0ff77713          	andi	a4,a4,255
    800039c4:	00900793          	li	a5,9
    800039c8:	fef712e3          	bne	a4,a5,800039ac <console_handler+0x28>
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	4b8080e7          	jalr	1208(ra) # 80001e84 <plic_claim>
    800039d4:	00a00793          	li	a5,10
    800039d8:	00050493          	mv	s1,a0
    800039dc:	02f50c63          	beq	a0,a5,80003a14 <console_handler+0x90>
    800039e0:	fc0506e3          	beqz	a0,800039ac <console_handler+0x28>
    800039e4:	00050593          	mv	a1,a0
    800039e8:	00000517          	auipc	a0,0x0
    800039ec:	71050513          	addi	a0,a0,1808 # 800040f8 <_ZZ12printIntegermE6digits+0xe0>
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	8d8080e7          	jalr	-1832(ra) # 800022c8 <__printf>
    800039f8:	01013403          	ld	s0,16(sp)
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	00048513          	mv	a0,s1
    80003a04:	00813483          	ld	s1,8(sp)
    80003a08:	02010113          	addi	sp,sp,32
    80003a0c:	ffffe317          	auipc	t1,0xffffe
    80003a10:	4b030067          	jr	1200(t1) # 80001ebc <plic_complete>
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	1bc080e7          	jalr	444(ra) # 80002bd0 <uartintr>
    80003a1c:	fddff06f          	j	800039f8 <console_handler+0x74>
    80003a20:	00000517          	auipc	a0,0x0
    80003a24:	7d850513          	addi	a0,a0,2008 # 800041f8 <digits+0x78>
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	844080e7          	jalr	-1980(ra) # 8000226c <panic>

0000000080003a30 <kvmincrease>:
    80003a30:	fe010113          	addi	sp,sp,-32
    80003a34:	01213023          	sd	s2,0(sp)
    80003a38:	00001937          	lui	s2,0x1
    80003a3c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003a40:	00813823          	sd	s0,16(sp)
    80003a44:	00113c23          	sd	ra,24(sp)
    80003a48:	00913423          	sd	s1,8(sp)
    80003a4c:	02010413          	addi	s0,sp,32
    80003a50:	01250933          	add	s2,a0,s2
    80003a54:	00c95913          	srli	s2,s2,0xc
    80003a58:	02090863          	beqz	s2,80003a88 <kvmincrease+0x58>
    80003a5c:	00000493          	li	s1,0
    80003a60:	00148493          	addi	s1,s1,1
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	4bc080e7          	jalr	1212(ra) # 80002f20 <kalloc>
    80003a6c:	fe991ae3          	bne	s2,s1,80003a60 <kvmincrease+0x30>
    80003a70:	01813083          	ld	ra,24(sp)
    80003a74:	01013403          	ld	s0,16(sp)
    80003a78:	00813483          	ld	s1,8(sp)
    80003a7c:	00013903          	ld	s2,0(sp)
    80003a80:	02010113          	addi	sp,sp,32
    80003a84:	00008067          	ret
    80003a88:	01813083          	ld	ra,24(sp)
    80003a8c:	01013403          	ld	s0,16(sp)
    80003a90:	00813483          	ld	s1,8(sp)
    80003a94:	00013903          	ld	s2,0(sp)
    80003a98:	00000513          	li	a0,0
    80003a9c:	02010113          	addi	sp,sp,32
    80003aa0:	00008067          	ret
	...

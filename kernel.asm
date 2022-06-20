
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
    8000001c:	580010ef          	jal	ra,8000159c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.global supervisorTrap
.type supervisorTrap, @function
supervisorTrap:


        call _ZN5Riscv20handleSupervisorTrapEv
    80001000:	210000ef          	jal	ra,80001210 <_ZN5Riscv20handleSupervisorTrapEv>



        sret
    80001004:	10200073          	sret
	...

0000000080001010 <_Z7syscallPv>:
    uint64 a5;
    uint64 a6;
    uint64 a7;
};

void syscall(void* arg){
    80001010:	ff010113          	addi	sp,sp,-16
    80001014:	00813423          	sd	s0,8(sp)
    80001018:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall

    args* ar = (args*)arg;
    uint64 arg0 = ar->a0;
    8000101c:	00053303          	ld	t1,0(a0) # 1000 <_entry-0x7ffff000>
    uint64 arg1 = ar->a1;
    80001020:	00853883          	ld	a7,8(a0)
    uint64 arg2 = ar->a2;
    80001024:	01053803          	ld	a6,16(a0)
    uint64 arg3 = ar->a3;
    80001028:	01853583          	ld	a1,24(a0)
    uint64 arg4 = ar->a4;
    8000102c:	02053603          	ld	a2,32(a0)
    uint64 arg5 = ar->a5;
    80001030:	02853683          	ld	a3,40(a0)
    uint64 arg6 = ar->a6;
    80001034:	03053703          	ld	a4,48(a0)
    uint64 arg7 = ar->a7;
    80001038:	03853783          	ld	a5,56(a0)

    asm volatile("mv a0, %0" : : "r" (arg0));
    8000103c:	00030513          	mv	a0,t1
    asm volatile("mv a1, %0" : : "r" (arg1));
    80001040:	00088593          	mv	a1,a7
    asm volatile("mv a2, %0" : : "r" (arg2));
    80001044:	00080613          	mv	a2,a6
    asm volatile("mv a3, %0" : : "r" (arg3));
    80001048:	00058693          	mv	a3,a1
    asm volatile("mv a4, %0" : : "r" (arg4));
    8000104c:	00060713          	mv	a4,a2
    asm volatile("mv a5, %0" : : "r" (arg5));
    80001050:	00068793          	mv	a5,a3
    asm volatile("mv a6, %0" : : "r" (arg6));
    80001054:	00070813          	mv	a6,a4
    asm volatile("mv a7, %0" : : "r" (arg7));
    80001058:	00078893          	mv	a7,a5

    Riscv::w_stvec((uint64)&supervisorTrap);
    8000105c:	00003797          	auipc	a5,0x3
    80001060:	5047b783          	ld	a5,1284(a5) # 80004560 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001064:	10579073          	csrw	stvec,a5
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001068:	00000073          	ecall


}
    8000106c:	00813403          	ld	s0,8(sp)
    80001070:	01010113          	addi	sp,sp,16
    80001074:	00008067          	ret

0000000080001078 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001078:	fe010113          	addi	sp,sp,-32
    8000107c:	00113c23          	sd	ra,24(sp)
    80001080:	00813823          	sd	s0,16(sp)
    80001084:	00913423          	sd	s1,8(sp)
    80001088:	02010413          	addi	s0,sp,32
    8000108c:	00050493          	mv	s1,a0
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = new args();
    80001090:	04000513          	li	a0,64
    80001094:	00000097          	auipc	ra,0x0
    80001098:	09c080e7          	jalr	156(ra) # 80001130 <_Znwm>
    8000109c:	00053823          	sd	zero,16(a0)
    800010a0:	00053c23          	sd	zero,24(a0)
    800010a4:	02053023          	sd	zero,32(a0)
    800010a8:	02053423          	sd	zero,40(a0)
    800010ac:	02053823          	sd	zero,48(a0)
    800010b0:	02053c23          	sd	zero,56(a0)
    arg->a0=0x01;
    800010b4:	00100793          	li	a5,1
    800010b8:	00f53023          	sd	a5,0(a0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    800010bc:	0064d793          	srli	a5,s1,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    800010c0:	03f4f493          	andi	s1,s1,63
    800010c4:	00048463          	beqz	s1,800010cc <_Z9mem_allocm+0x54>
    800010c8:	00178793          	addi	a5,a5,1
    arg->a1=blocks;
    800010cc:	00f53423          	sd	a5,8(a0)

    syscall(arg);
    800010d0:	00000097          	auipc	ra,0x0
    800010d4:	f40080e7          	jalr	-192(ra) # 80001010 <_Z7syscallPv>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800010d8:	00050493          	mv	s1,a0
    printInteger(ret);
    800010dc:	00048513          	mv	a0,s1
    800010e0:	00000097          	auipc	ra,0x0
    800010e4:	2b8080e7          	jalr	696(ra) # 80001398 <_Z12printIntegerm>
    return (void*)ret;
}
    800010e8:	00048513          	mv	a0,s1
    800010ec:	01813083          	ld	ra,24(sp)
    800010f0:	01013403          	ld	s0,16(sp)
    800010f4:	00813483          	ld	s1,8(sp)
    800010f8:	02010113          	addi	sp,sp,32
    800010fc:	00008067          	ret

0000000080001100 <main>:
#include "../h/List.hpp"
#include "../h/syscall_c.h"



int main(){
    80001100:	ff010113          	addi	sp,sp,-16
    80001104:	00113423          	sd	ra,8(sp)
    80001108:	00813023          	sd	s0,0(sp)
    8000110c:	01010413          	addi	s0,sp,16

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");

    mem_alloc(10);
    80001110:	00a00513          	li	a0,10
    80001114:	00000097          	auipc	ra,0x0
    80001118:	f64080e7          	jalr	-156(ra) # 80001078 <_Z9mem_allocm>

    return 0;
}
    8000111c:	00000513          	li	a0,0
    80001120:	00813083          	ld	ra,8(sp)
    80001124:	00013403          	ld	s0,0(sp)
    80001128:	01010113          	addi	sp,sp,16
    8000112c:	00008067          	ret

0000000080001130 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001130:	ff010113          	addi	sp,sp,-16
    80001134:	00113423          	sd	ra,8(sp)
    80001138:	00813023          	sd	s0,0(sp)
    8000113c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001140:	00000097          	auipc	ra,0x0
    80001144:	198080e7          	jalr	408(ra) # 800012d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001148:	00813083          	ld	ra,8(sp)
    8000114c:	00013403          	ld	s0,0(sp)
    80001150:	01010113          	addi	sp,sp,16
    80001154:	00008067          	ret

0000000080001158 <_Znam>:

void* operator new[](size_t n){
    80001158:	ff010113          	addi	sp,sp,-16
    8000115c:	00113423          	sd	ra,8(sp)
    80001160:	00813023          	sd	s0,0(sp)
    80001164:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	170080e7          	jalr	368(ra) # 800012d8 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001170:	00813083          	ld	ra,8(sp)
    80001174:	00013403          	ld	s0,0(sp)
    80001178:	01010113          	addi	sp,sp,16
    8000117c:	00008067          	ret

0000000080001180 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001180:	ff010113          	addi	sp,sp,-16
    80001184:	00113423          	sd	ra,8(sp)
    80001188:	00813023          	sd	s0,0(sp)
    8000118c:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001190:	00000097          	auipc	ra,0x0
    80001194:	170080e7          	jalr	368(ra) # 80001300 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001198:	00813083          	ld	ra,8(sp)
    8000119c:	00013403          	ld	s0,0(sp)
    800011a0:	01010113          	addi	sp,sp,16
    800011a4:	00008067          	ret

00000000800011a8 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    800011a8:	ff010113          	addi	sp,sp,-16
    800011ac:	00113423          	sd	ra,8(sp)
    800011b0:	00813023          	sd	s0,0(sp)
    800011b4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    800011b8:	00000097          	auipc	ra,0x0
    800011bc:	148080e7          	jalr	328(ra) # 80001300 <_ZN15MemoryAllocator8mem_freeEPv>

}
    800011c0:	00813083          	ld	ra,8(sp)
    800011c4:	00013403          	ld	s0,0(sp)
    800011c8:	01010113          	addi	sp,sp,16
    800011cc:	00008067          	ret

00000000800011d0 <_ZN5Riscv14syscallHandlerEv>:
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800011d0:	00050713          	mv	a4,a0
    if(arg0== 0x01 ){
    800011d4:	00100793          	li	a5,1
    800011d8:	00f70463          	beq	a4,a5,800011e0 <_ZN5Riscv14syscallHandlerEv+0x10>
    800011dc:	00008067          	ret
void Riscv::syscallHandler() {
    800011e0:	ff010113          	addi	sp,sp,-16
    800011e4:	00113423          	sd	ra,8(sp)
    800011e8:	00813023          	sd	s0,0(sp)
    800011ec:	01010413          	addi	s0,sp,16
        //mem_alloc
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800011f0:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    800011f4:	00000097          	auipc	ra,0x0
    800011f8:	0e4080e7          	jalr	228(ra) # 800012d8 <_ZN15MemoryAllocator9mem_allocEm>

        //write return value to a0 register
        asm volatile("mv %0, a0" : "=r" (ptr));
    800011fc:	00050793          	mv	a5,a0
    }

}
    80001200:	00813083          	ld	ra,8(sp)
    80001204:	00013403          	ld	s0,0(sp)
    80001208:	01010113          	addi	sp,sp,16
    8000120c:	00008067          	ret

0000000080001210 <_ZN5Riscv20handleSupervisorTrapEv>:
void Riscv::handleSupervisorTrap(){
    80001210:	fb010113          	addi	sp,sp,-80
    80001214:	04113423          	sd	ra,72(sp)
    80001218:	04813023          	sd	s0,64(sp)
    8000121c:	02913c23          	sd	s1,56(sp)
    80001220:	03213823          	sd	s2,48(sp)
    80001224:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001228:	142027f3          	csrr	a5,scause
    8000122c:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001230:	fb843783          	ld	a5,-72(s0)
    uint scause = r_scause();
    80001234:	0007879b          	sext.w	a5,a5
    if (scause == 0x0000000000000008UL ){
    80001238:	00800713          	li	a4,8
    8000123c:	02e78263          	beq	a5,a4,80001260 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
    else if(scause == 0x0000000000000009UL){
    80001240:	00900713          	li	a4,9
    80001244:	04e78663          	beq	a5,a4,80001290 <_ZN5Riscv20handleSupervisorTrapEv+0x80>
}
    80001248:	04813083          	ld	ra,72(sp)
    8000124c:	04013403          	ld	s0,64(sp)
    80001250:	03813483          	ld	s1,56(sp)
    80001254:	03013903          	ld	s2,48(sp)
    80001258:	05010113          	addi	sp,sp,80
    8000125c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001260:	141027f3          	csrr	a5,sepc
    80001264:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001268:	fc843483          	ld	s1,-56(s0)
        uint64  sepc = r_sepc() + 4;
    8000126c:	00448493          	addi	s1,s1,4
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

inline uint64 Riscv::r_sstatus()
{
    80001270:	100027f3          	csrr	a5,sstatus
    80001274:	fcf43023          	sd	a5,-64(s0)
    uint64 volatile sstatus;
    80001278:	fc043903          	ld	s2,-64(s0)
        syscallHandler();
    8000127c:	00000097          	auipc	ra,0x0
    80001280:	f54080e7          	jalr	-172(ra) # 800011d0 <_ZN5Riscv14syscallHandlerEv>
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    return sstatus;
}

inline void Riscv::w_sstatus(uint64 sstatus)
    80001284:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001288:	14149073          	csrw	sepc,s1
}
    8000128c:	fbdff06f          	j	80001248 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001290:	141027f3          	csrr	a5,sepc
    80001294:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001298:	fd843783          	ld	a5,-40(s0)
        uint64  sepc = r_sepc() + 4;
    8000129c:	00478793          	addi	a5,a5,4
{
    800012a0:	10002773          	csrr	a4,sstatus
    800012a4:	fce43823          	sd	a4,-48(s0)
    uint64 volatile sstatus;
    800012a8:	fd043703          	ld	a4,-48(s0)
inline void Riscv::w_sstatus(uint64 sstatus)
    800012ac:	10071073          	csrw	sstatus,a4
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800012b0:	14179073          	csrw	sepc,a5
}
    800012b4:	f95ff06f          	j	80001248 <_ZN5Riscv20handleSupervisorTrapEv+0x38>

00000000800012b8 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800012c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800012c8:	10200073          	sret
    800012cc:	00813403          	ld	s0,8(sp)
    800012d0:	01010113          	addi	sp,sp,16
    800012d4:	00008067          	ret

00000000800012d8 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00113423          	sd	ra,8(sp)
    800012e0:	00813023          	sd	s0,0(sp)
    800012e4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800012e8:	00002097          	auipc	ra,0x2
    800012ec:	440080e7          	jalr	1088(ra) # 80003728 <__mem_alloc>
}
    800012f0:	00813083          	ld	ra,8(sp)
    800012f4:	00013403          	ld	s0,0(sp)
    800012f8:	01010113          	addi	sp,sp,16
    800012fc:	00008067          	ret

0000000080001300 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001300:	ff010113          	addi	sp,sp,-16
    80001304:	00113423          	sd	ra,8(sp)
    80001308:	00813023          	sd	s0,0(sp)
    8000130c:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001310:	00002097          	auipc	ra,0x2
    80001314:	34c080e7          	jalr	844(ra) # 8000365c <__mem_free>
    80001318:	00813083          	ld	ra,8(sp)
    8000131c:	00013403          	ld	s0,0(sp)
    80001320:	01010113          	addi	sp,sp,16
    80001324:	00008067          	ret

0000000080001328 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001328:	fd010113          	addi	sp,sp,-48
    8000132c:	02113423          	sd	ra,40(sp)
    80001330:	02813023          	sd	s0,32(sp)
    80001334:	00913c23          	sd	s1,24(sp)
    80001338:	01213823          	sd	s2,16(sp)
    8000133c:	03010413          	addi	s0,sp,48
    80001340:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001344:	100027f3          	csrr	a5,sstatus
    80001348:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000134c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001350:	00200793          	li	a5,2
    80001354:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001358:	0004c503          	lbu	a0,0(s1)
    8000135c:	00050a63          	beqz	a0,80001370 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001360:	00002097          	auipc	ra,0x2
    80001364:	520080e7          	jalr	1312(ra) # 80003880 <__putc>
        string++;
    80001368:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000136c:	fedff06f          	j	80001358 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001370:	0009091b          	sext.w	s2,s2
    80001374:	00297913          	andi	s2,s2,2
    80001378:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000137c:	10092073          	csrs	sstatus,s2
}
    80001380:	02813083          	ld	ra,40(sp)
    80001384:	02013403          	ld	s0,32(sp)
    80001388:	01813483          	ld	s1,24(sp)
    8000138c:	01013903          	ld	s2,16(sp)
    80001390:	03010113          	addi	sp,sp,48
    80001394:	00008067          	ret

0000000080001398 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001398:	fc010113          	addi	sp,sp,-64
    8000139c:	02113c23          	sd	ra,56(sp)
    800013a0:	02813823          	sd	s0,48(sp)
    800013a4:	02913423          	sd	s1,40(sp)
    800013a8:	03213023          	sd	s2,32(sp)
    800013ac:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800013b0:	100027f3          	csrr	a5,sstatus
    800013b4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800013b8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800013bc:	00200793          	li	a5,2
    800013c0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800013c4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800013c8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800013cc:	00a00613          	li	a2,10
    800013d0:	02c5773b          	remuw	a4,a0,a2
    800013d4:	02071693          	slli	a3,a4,0x20
    800013d8:	0206d693          	srli	a3,a3,0x20
    800013dc:	00003717          	auipc	a4,0x3
    800013e0:	c2470713          	addi	a4,a4,-988 # 80004000 <_ZZ12printIntegermE6digits>
    800013e4:	00d70733          	add	a4,a4,a3
    800013e8:	00074703          	lbu	a4,0(a4)
    800013ec:	fe040693          	addi	a3,s0,-32
    800013f0:	009687b3          	add	a5,a3,s1
    800013f4:	0014849b          	addiw	s1,s1,1
    800013f8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800013fc:	0005071b          	sext.w	a4,a0
    80001400:	02c5553b          	divuw	a0,a0,a2
    80001404:	00900793          	li	a5,9
    80001408:	fce7e2e3          	bltu	a5,a4,800013cc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000140c:	fff4849b          	addiw	s1,s1,-1
    80001410:	0004ce63          	bltz	s1,8000142c <_Z12printIntegerm+0x94>
    80001414:	fe040793          	addi	a5,s0,-32
    80001418:	009787b3          	add	a5,a5,s1
    8000141c:	ff07c503          	lbu	a0,-16(a5)
    80001420:	00002097          	auipc	ra,0x2
    80001424:	460080e7          	jalr	1120(ra) # 80003880 <__putc>
    80001428:	fe5ff06f          	j	8000140c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000142c:	0009091b          	sext.w	s2,s2
    80001430:	00297913          	andi	s2,s2,2
    80001434:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001438:	10092073          	csrs	sstatus,s2
}
    8000143c:	03813083          	ld	ra,56(sp)
    80001440:	03013403          	ld	s0,48(sp)
    80001444:	02813483          	ld	s1,40(sp)
    80001448:	02013903          	ld	s2,32(sp)
    8000144c:	04010113          	addi	sp,sp,64
    80001450:	00008067          	ret

0000000080001454 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00813423          	sd	s0,8(sp)
    8000145c:	01010413          	addi	s0,sp,16
    80001460:	00100793          	li	a5,1
    80001464:	00f50863          	beq	a0,a5,80001474 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret
    80001474:	000107b7          	lui	a5,0x10
    80001478:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000147c:	fef596e3          	bne	a1,a5,80001468 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001480:	00003797          	auipc	a5,0x3
    80001484:	14078793          	addi	a5,a5,320 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    80001488:	0007b023          	sd	zero,0(a5)
    8000148c:	0007b423          	sd	zero,8(a5)
    80001490:	fd9ff06f          	j	80001468 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001494 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    80001494:	fe010113          	addi	sp,sp,-32
    80001498:	00113c23          	sd	ra,24(sp)
    8000149c:	00813823          	sd	s0,16(sp)
    800014a0:	00913423          	sd	s1,8(sp)
    800014a4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800014a8:	00003517          	auipc	a0,0x3
    800014ac:	11853503          	ld	a0,280(a0) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    800014b0:	04050263          	beqz	a0,800014f4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800014b4:	00853783          	ld	a5,8(a0)
    800014b8:	00003717          	auipc	a4,0x3
    800014bc:	10f73423          	sd	a5,264(a4) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800014c0:	02078463          	beqz	a5,800014e8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800014c4:	00053483          	ld	s1,0(a0)
        delete elem;
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	cb8080e7          	jalr	-840(ra) # 80001180 <_ZdlPv>
}
    800014d0:	00048513          	mv	a0,s1
    800014d4:	01813083          	ld	ra,24(sp)
    800014d8:	01013403          	ld	s0,16(sp)
    800014dc:	00813483          	ld	s1,8(sp)
    800014e0:	02010113          	addi	sp,sp,32
    800014e4:	00008067          	ret
        if (!head) { tail = 0; }
    800014e8:	00003797          	auipc	a5,0x3
    800014ec:	0e07b023          	sd	zero,224(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800014f0:	fd5ff06f          	j	800014c4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800014f4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800014f8:	fd9ff06f          	j	800014d0 <_ZN9Scheduler3getEv+0x3c>

00000000800014fc <_ZN9Scheduler3putEP3TCB>:
{
    800014fc:	fe010113          	addi	sp,sp,-32
    80001500:	00113c23          	sd	ra,24(sp)
    80001504:	00813823          	sd	s0,16(sp)
    80001508:	00913423          	sd	s1,8(sp)
    8000150c:	02010413          	addi	s0,sp,32
    80001510:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001514:	01000513          	li	a0,16
    80001518:	00000097          	auipc	ra,0x0
    8000151c:	c18080e7          	jalr	-1000(ra) # 80001130 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001520:	00953023          	sd	s1,0(a0)
    80001524:	00053423          	sd	zero,8(a0)
        if (tail)
    80001528:	00003797          	auipc	a5,0x3
    8000152c:	0a07b783          	ld	a5,160(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001530:	02078263          	beqz	a5,80001554 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001534:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001538:	00003797          	auipc	a5,0x3
    8000153c:	08a7b823          	sd	a0,144(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001540:	01813083          	ld	ra,24(sp)
    80001544:	01013403          	ld	s0,16(sp)
    80001548:	00813483          	ld	s1,8(sp)
    8000154c:	02010113          	addi	sp,sp,32
    80001550:	00008067          	ret
            head = tail = elem;
    80001554:	00003797          	auipc	a5,0x3
    80001558:	06c78793          	addi	a5,a5,108 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    8000155c:	00a7b423          	sd	a0,8(a5)
    80001560:	00a7b023          	sd	a0,0(a5)
    80001564:	fddff06f          	j	80001540 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001568 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001568:	ff010113          	addi	sp,sp,-16
    8000156c:	00113423          	sd	ra,8(sp)
    80001570:	00813023          	sd	s0,0(sp)
    80001574:	01010413          	addi	s0,sp,16
    80001578:	000105b7          	lui	a1,0x10
    8000157c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001580:	00100513          	li	a0,1
    80001584:	00000097          	auipc	ra,0x0
    80001588:	ed0080e7          	jalr	-304(ra) # 80001454 <_Z41__static_initialization_and_destruction_0ii>
    8000158c:	00813083          	ld	ra,8(sp)
    80001590:	00013403          	ld	s0,0(sp)
    80001594:	01010113          	addi	sp,sp,16
    80001598:	00008067          	ret

000000008000159c <start>:
    8000159c:	ff010113          	addi	sp,sp,-16
    800015a0:	00813423          	sd	s0,8(sp)
    800015a4:	01010413          	addi	s0,sp,16
    800015a8:	300027f3          	csrr	a5,mstatus
    800015ac:	ffffe737          	lui	a4,0xffffe
    800015b0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8fbf>
    800015b4:	00e7f7b3          	and	a5,a5,a4
    800015b8:	00001737          	lui	a4,0x1
    800015bc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800015c0:	00e7e7b3          	or	a5,a5,a4
    800015c4:	30079073          	csrw	mstatus,a5
    800015c8:	00000797          	auipc	a5,0x0
    800015cc:	16078793          	addi	a5,a5,352 # 80001728 <system_main>
    800015d0:	34179073          	csrw	mepc,a5
    800015d4:	00000793          	li	a5,0
    800015d8:	18079073          	csrw	satp,a5
    800015dc:	000107b7          	lui	a5,0x10
    800015e0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015e4:	30279073          	csrw	medeleg,a5
    800015e8:	30379073          	csrw	mideleg,a5
    800015ec:	104027f3          	csrr	a5,sie
    800015f0:	2227e793          	ori	a5,a5,546
    800015f4:	10479073          	csrw	sie,a5
    800015f8:	fff00793          	li	a5,-1
    800015fc:	00a7d793          	srli	a5,a5,0xa
    80001600:	3b079073          	csrw	pmpaddr0,a5
    80001604:	00f00793          	li	a5,15
    80001608:	3a079073          	csrw	pmpcfg0,a5
    8000160c:	f14027f3          	csrr	a5,mhartid
    80001610:	0200c737          	lui	a4,0x200c
    80001614:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001618:	0007869b          	sext.w	a3,a5
    8000161c:	00269713          	slli	a4,a3,0x2
    80001620:	000f4637          	lui	a2,0xf4
    80001624:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001628:	00d70733          	add	a4,a4,a3
    8000162c:	0037979b          	slliw	a5,a5,0x3
    80001630:	020046b7          	lui	a3,0x2004
    80001634:	00d787b3          	add	a5,a5,a3
    80001638:	00c585b3          	add	a1,a1,a2
    8000163c:	00371693          	slli	a3,a4,0x3
    80001640:	00003717          	auipc	a4,0x3
    80001644:	f9070713          	addi	a4,a4,-112 # 800045d0 <timer_scratch>
    80001648:	00b7b023          	sd	a1,0(a5)
    8000164c:	00d70733          	add	a4,a4,a3
    80001650:	00f73c23          	sd	a5,24(a4)
    80001654:	02c73023          	sd	a2,32(a4)
    80001658:	34071073          	csrw	mscratch,a4
    8000165c:	00000797          	auipc	a5,0x0
    80001660:	6e478793          	addi	a5,a5,1764 # 80001d40 <timervec>
    80001664:	30579073          	csrw	mtvec,a5
    80001668:	300027f3          	csrr	a5,mstatus
    8000166c:	0087e793          	ori	a5,a5,8
    80001670:	30079073          	csrw	mstatus,a5
    80001674:	304027f3          	csrr	a5,mie
    80001678:	0807e793          	ori	a5,a5,128
    8000167c:	30479073          	csrw	mie,a5
    80001680:	f14027f3          	csrr	a5,mhartid
    80001684:	0007879b          	sext.w	a5,a5
    80001688:	00078213          	mv	tp,a5
    8000168c:	30200073          	mret
    80001690:	00813403          	ld	s0,8(sp)
    80001694:	01010113          	addi	sp,sp,16
    80001698:	00008067          	ret

000000008000169c <timerinit>:
    8000169c:	ff010113          	addi	sp,sp,-16
    800016a0:	00813423          	sd	s0,8(sp)
    800016a4:	01010413          	addi	s0,sp,16
    800016a8:	f14027f3          	csrr	a5,mhartid
    800016ac:	0200c737          	lui	a4,0x200c
    800016b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800016b4:	0007869b          	sext.w	a3,a5
    800016b8:	00269713          	slli	a4,a3,0x2
    800016bc:	000f4637          	lui	a2,0xf4
    800016c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800016c4:	00d70733          	add	a4,a4,a3
    800016c8:	0037979b          	slliw	a5,a5,0x3
    800016cc:	020046b7          	lui	a3,0x2004
    800016d0:	00d787b3          	add	a5,a5,a3
    800016d4:	00c585b3          	add	a1,a1,a2
    800016d8:	00371693          	slli	a3,a4,0x3
    800016dc:	00003717          	auipc	a4,0x3
    800016e0:	ef470713          	addi	a4,a4,-268 # 800045d0 <timer_scratch>
    800016e4:	00b7b023          	sd	a1,0(a5)
    800016e8:	00d70733          	add	a4,a4,a3
    800016ec:	00f73c23          	sd	a5,24(a4)
    800016f0:	02c73023          	sd	a2,32(a4)
    800016f4:	34071073          	csrw	mscratch,a4
    800016f8:	00000797          	auipc	a5,0x0
    800016fc:	64878793          	addi	a5,a5,1608 # 80001d40 <timervec>
    80001700:	30579073          	csrw	mtvec,a5
    80001704:	300027f3          	csrr	a5,mstatus
    80001708:	0087e793          	ori	a5,a5,8
    8000170c:	30079073          	csrw	mstatus,a5
    80001710:	304027f3          	csrr	a5,mie
    80001714:	0807e793          	ori	a5,a5,128
    80001718:	30479073          	csrw	mie,a5
    8000171c:	00813403          	ld	s0,8(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <system_main>:
    80001728:	fe010113          	addi	sp,sp,-32
    8000172c:	00813823          	sd	s0,16(sp)
    80001730:	00913423          	sd	s1,8(sp)
    80001734:	00113c23          	sd	ra,24(sp)
    80001738:	02010413          	addi	s0,sp,32
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	0c4080e7          	jalr	196(ra) # 80001800 <cpuid>
    80001744:	00003497          	auipc	s1,0x3
    80001748:	e4c48493          	addi	s1,s1,-436 # 80004590 <started>
    8000174c:	02050263          	beqz	a0,80001770 <system_main+0x48>
    80001750:	0004a783          	lw	a5,0(s1)
    80001754:	0007879b          	sext.w	a5,a5
    80001758:	fe078ce3          	beqz	a5,80001750 <system_main+0x28>
    8000175c:	0ff0000f          	fence
    80001760:	00003517          	auipc	a0,0x3
    80001764:	8e050513          	addi	a0,a0,-1824 # 80004040 <_ZZ12printIntegermE6digits+0x40>
    80001768:	00001097          	auipc	ra,0x1
    8000176c:	a74080e7          	jalr	-1420(ra) # 800021dc <panic>
    80001770:	00001097          	auipc	ra,0x1
    80001774:	9c8080e7          	jalr	-1592(ra) # 80002138 <consoleinit>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	154080e7          	jalr	340(ra) # 800028cc <printfinit>
    80001780:	00003517          	auipc	a0,0x3
    80001784:	9a050513          	addi	a0,a0,-1632 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	ab0080e7          	jalr	-1360(ra) # 80002238 <__printf>
    80001790:	00003517          	auipc	a0,0x3
    80001794:	88050513          	addi	a0,a0,-1920 # 80004010 <_ZZ12printIntegermE6digits+0x10>
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	aa0080e7          	jalr	-1376(ra) # 80002238 <__printf>
    800017a0:	00003517          	auipc	a0,0x3
    800017a4:	98050513          	addi	a0,a0,-1664 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    800017a8:	00001097          	auipc	ra,0x1
    800017ac:	a90080e7          	jalr	-1392(ra) # 80002238 <__printf>
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	4a8080e7          	jalr	1192(ra) # 80002c58 <kinit>
    800017b8:	00000097          	auipc	ra,0x0
    800017bc:	148080e7          	jalr	328(ra) # 80001900 <trapinit>
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	16c080e7          	jalr	364(ra) # 8000192c <trapinithart>
    800017c8:	00000097          	auipc	ra,0x0
    800017cc:	5b8080e7          	jalr	1464(ra) # 80001d80 <plicinit>
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	5d8080e7          	jalr	1496(ra) # 80001da8 <plicinithart>
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	078080e7          	jalr	120(ra) # 80001850 <userinit>
    800017e0:	0ff0000f          	fence
    800017e4:	00100793          	li	a5,1
    800017e8:	00003517          	auipc	a0,0x3
    800017ec:	84050513          	addi	a0,a0,-1984 # 80004028 <_ZZ12printIntegermE6digits+0x28>
    800017f0:	00f4a023          	sw	a5,0(s1)
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	a44080e7          	jalr	-1468(ra) # 80002238 <__printf>
    800017fc:	0000006f          	j	800017fc <system_main+0xd4>

0000000080001800 <cpuid>:
    80001800:	ff010113          	addi	sp,sp,-16
    80001804:	00813423          	sd	s0,8(sp)
    80001808:	01010413          	addi	s0,sp,16
    8000180c:	00020513          	mv	a0,tp
    80001810:	00813403          	ld	s0,8(sp)
    80001814:	0005051b          	sext.w	a0,a0
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <mycpu>:
    80001820:	ff010113          	addi	sp,sp,-16
    80001824:	00813423          	sd	s0,8(sp)
    80001828:	01010413          	addi	s0,sp,16
    8000182c:	00020793          	mv	a5,tp
    80001830:	00813403          	ld	s0,8(sp)
    80001834:	0007879b          	sext.w	a5,a5
    80001838:	00779793          	slli	a5,a5,0x7
    8000183c:	00004517          	auipc	a0,0x4
    80001840:	dc450513          	addi	a0,a0,-572 # 80005600 <cpus>
    80001844:	00f50533          	add	a0,a0,a5
    80001848:	01010113          	addi	sp,sp,16
    8000184c:	00008067          	ret

0000000080001850 <userinit>:
    80001850:	ff010113          	addi	sp,sp,-16
    80001854:	00813423          	sd	s0,8(sp)
    80001858:	01010413          	addi	s0,sp,16
    8000185c:	00813403          	ld	s0,8(sp)
    80001860:	01010113          	addi	sp,sp,16
    80001864:	00000317          	auipc	t1,0x0
    80001868:	89c30067          	jr	-1892(t1) # 80001100 <main>

000000008000186c <either_copyout>:
    8000186c:	ff010113          	addi	sp,sp,-16
    80001870:	00813023          	sd	s0,0(sp)
    80001874:	00113423          	sd	ra,8(sp)
    80001878:	01010413          	addi	s0,sp,16
    8000187c:	02051663          	bnez	a0,800018a8 <either_copyout+0x3c>
    80001880:	00058513          	mv	a0,a1
    80001884:	00060593          	mv	a1,a2
    80001888:	0006861b          	sext.w	a2,a3
    8000188c:	00002097          	auipc	ra,0x2
    80001890:	c58080e7          	jalr	-936(ra) # 800034e4 <__memmove>
    80001894:	00813083          	ld	ra,8(sp)
    80001898:	00013403          	ld	s0,0(sp)
    8000189c:	00000513          	li	a0,0
    800018a0:	01010113          	addi	sp,sp,16
    800018a4:	00008067          	ret
    800018a8:	00002517          	auipc	a0,0x2
    800018ac:	7c050513          	addi	a0,a0,1984 # 80004068 <_ZZ12printIntegermE6digits+0x68>
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	92c080e7          	jalr	-1748(ra) # 800021dc <panic>

00000000800018b8 <either_copyin>:
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813023          	sd	s0,0(sp)
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	01010413          	addi	s0,sp,16
    800018c8:	02059463          	bnez	a1,800018f0 <either_copyin+0x38>
    800018cc:	00060593          	mv	a1,a2
    800018d0:	0006861b          	sext.w	a2,a3
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	c10080e7          	jalr	-1008(ra) # 800034e4 <__memmove>
    800018dc:	00813083          	ld	ra,8(sp)
    800018e0:	00013403          	ld	s0,0(sp)
    800018e4:	00000513          	li	a0,0
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret
    800018f0:	00002517          	auipc	a0,0x2
    800018f4:	7a050513          	addi	a0,a0,1952 # 80004090 <_ZZ12printIntegermE6digits+0x90>
    800018f8:	00001097          	auipc	ra,0x1
    800018fc:	8e4080e7          	jalr	-1820(ra) # 800021dc <panic>

0000000080001900 <trapinit>:
    80001900:	ff010113          	addi	sp,sp,-16
    80001904:	00813423          	sd	s0,8(sp)
    80001908:	01010413          	addi	s0,sp,16
    8000190c:	00813403          	ld	s0,8(sp)
    80001910:	00002597          	auipc	a1,0x2
    80001914:	7a858593          	addi	a1,a1,1960 # 800040b8 <_ZZ12printIntegermE6digits+0xb8>
    80001918:	00004517          	auipc	a0,0x4
    8000191c:	d6850513          	addi	a0,a0,-664 # 80005680 <tickslock>
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00001317          	auipc	t1,0x1
    80001928:	5c430067          	jr	1476(t1) # 80002ee8 <initlock>

000000008000192c <trapinithart>:
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00813423          	sd	s0,8(sp)
    80001934:	01010413          	addi	s0,sp,16
    80001938:	00000797          	auipc	a5,0x0
    8000193c:	2f878793          	addi	a5,a5,760 # 80001c30 <kernelvec>
    80001940:	10579073          	csrw	stvec,a5
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	00008067          	ret

0000000080001950 <usertrap>:
    80001950:	ff010113          	addi	sp,sp,-16
    80001954:	00813423          	sd	s0,8(sp)
    80001958:	01010413          	addi	s0,sp,16
    8000195c:	00813403          	ld	s0,8(sp)
    80001960:	01010113          	addi	sp,sp,16
    80001964:	00008067          	ret

0000000080001968 <usertrapret>:
    80001968:	ff010113          	addi	sp,sp,-16
    8000196c:	00813423          	sd	s0,8(sp)
    80001970:	01010413          	addi	s0,sp,16
    80001974:	00813403          	ld	s0,8(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <kerneltrap>:
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00813823          	sd	s0,16(sp)
    80001988:	00113c23          	sd	ra,24(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
    80001994:	142025f3          	csrr	a1,scause
    80001998:	100027f3          	csrr	a5,sstatus
    8000199c:	0027f793          	andi	a5,a5,2
    800019a0:	10079c63          	bnez	a5,80001ab8 <kerneltrap+0x138>
    800019a4:	142027f3          	csrr	a5,scause
    800019a8:	0207ce63          	bltz	a5,800019e4 <kerneltrap+0x64>
    800019ac:	00002517          	auipc	a0,0x2
    800019b0:	75450513          	addi	a0,a0,1876 # 80004100 <_ZZ12printIntegermE6digits+0x100>
    800019b4:	00001097          	auipc	ra,0x1
    800019b8:	884080e7          	jalr	-1916(ra) # 80002238 <__printf>
    800019bc:	141025f3          	csrr	a1,sepc
    800019c0:	14302673          	csrr	a2,stval
    800019c4:	00002517          	auipc	a0,0x2
    800019c8:	74c50513          	addi	a0,a0,1868 # 80004110 <_ZZ12printIntegermE6digits+0x110>
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	86c080e7          	jalr	-1940(ra) # 80002238 <__printf>
    800019d4:	00002517          	auipc	a0,0x2
    800019d8:	75450513          	addi	a0,a0,1876 # 80004128 <_ZZ12printIntegermE6digits+0x128>
    800019dc:	00001097          	auipc	ra,0x1
    800019e0:	800080e7          	jalr	-2048(ra) # 800021dc <panic>
    800019e4:	0ff7f713          	andi	a4,a5,255
    800019e8:	00900693          	li	a3,9
    800019ec:	04d70063          	beq	a4,a3,80001a2c <kerneltrap+0xac>
    800019f0:	fff00713          	li	a4,-1
    800019f4:	03f71713          	slli	a4,a4,0x3f
    800019f8:	00170713          	addi	a4,a4,1
    800019fc:	fae798e3          	bne	a5,a4,800019ac <kerneltrap+0x2c>
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	e00080e7          	jalr	-512(ra) # 80001800 <cpuid>
    80001a08:	06050663          	beqz	a0,80001a74 <kerneltrap+0xf4>
    80001a0c:	144027f3          	csrr	a5,sip
    80001a10:	ffd7f793          	andi	a5,a5,-3
    80001a14:	14479073          	csrw	sip,a5
    80001a18:	01813083          	ld	ra,24(sp)
    80001a1c:	01013403          	ld	s0,16(sp)
    80001a20:	00813483          	ld	s1,8(sp)
    80001a24:	02010113          	addi	sp,sp,32
    80001a28:	00008067          	ret
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	3c8080e7          	jalr	968(ra) # 80001df4 <plic_claim>
    80001a34:	00a00793          	li	a5,10
    80001a38:	00050493          	mv	s1,a0
    80001a3c:	06f50863          	beq	a0,a5,80001aac <kerneltrap+0x12c>
    80001a40:	fc050ce3          	beqz	a0,80001a18 <kerneltrap+0x98>
    80001a44:	00050593          	mv	a1,a0
    80001a48:	00002517          	auipc	a0,0x2
    80001a4c:	69850513          	addi	a0,a0,1688 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	7e8080e7          	jalr	2024(ra) # 80002238 <__printf>
    80001a58:	01013403          	ld	s0,16(sp)
    80001a5c:	01813083          	ld	ra,24(sp)
    80001a60:	00048513          	mv	a0,s1
    80001a64:	00813483          	ld	s1,8(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00000317          	auipc	t1,0x0
    80001a70:	3c030067          	jr	960(t1) # 80001e2c <plic_complete>
    80001a74:	00004517          	auipc	a0,0x4
    80001a78:	c0c50513          	addi	a0,a0,-1012 # 80005680 <tickslock>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	490080e7          	jalr	1168(ra) # 80002f0c <acquire>
    80001a84:	00003717          	auipc	a4,0x3
    80001a88:	b1070713          	addi	a4,a4,-1264 # 80004594 <ticks>
    80001a8c:	00072783          	lw	a5,0(a4)
    80001a90:	00004517          	auipc	a0,0x4
    80001a94:	bf050513          	addi	a0,a0,-1040 # 80005680 <tickslock>
    80001a98:	0017879b          	addiw	a5,a5,1
    80001a9c:	00f72023          	sw	a5,0(a4)
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	538080e7          	jalr	1336(ra) # 80002fd8 <release>
    80001aa8:	f65ff06f          	j	80001a0c <kerneltrap+0x8c>
    80001aac:	00001097          	auipc	ra,0x1
    80001ab0:	094080e7          	jalr	148(ra) # 80002b40 <uartintr>
    80001ab4:	fa5ff06f          	j	80001a58 <kerneltrap+0xd8>
    80001ab8:	00002517          	auipc	a0,0x2
    80001abc:	60850513          	addi	a0,a0,1544 # 800040c0 <_ZZ12printIntegermE6digits+0xc0>
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	71c080e7          	jalr	1820(ra) # 800021dc <panic>

0000000080001ac8 <clockintr>:
    80001ac8:	fe010113          	addi	sp,sp,-32
    80001acc:	00813823          	sd	s0,16(sp)
    80001ad0:	00913423          	sd	s1,8(sp)
    80001ad4:	00113c23          	sd	ra,24(sp)
    80001ad8:	02010413          	addi	s0,sp,32
    80001adc:	00004497          	auipc	s1,0x4
    80001ae0:	ba448493          	addi	s1,s1,-1116 # 80005680 <tickslock>
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	424080e7          	jalr	1060(ra) # 80002f0c <acquire>
    80001af0:	00003717          	auipc	a4,0x3
    80001af4:	aa470713          	addi	a4,a4,-1372 # 80004594 <ticks>
    80001af8:	00072783          	lw	a5,0(a4)
    80001afc:	01013403          	ld	s0,16(sp)
    80001b00:	01813083          	ld	ra,24(sp)
    80001b04:	00048513          	mv	a0,s1
    80001b08:	0017879b          	addiw	a5,a5,1
    80001b0c:	00813483          	ld	s1,8(sp)
    80001b10:	00f72023          	sw	a5,0(a4)
    80001b14:	02010113          	addi	sp,sp,32
    80001b18:	00001317          	auipc	t1,0x1
    80001b1c:	4c030067          	jr	1216(t1) # 80002fd8 <release>

0000000080001b20 <devintr>:
    80001b20:	142027f3          	csrr	a5,scause
    80001b24:	00000513          	li	a0,0
    80001b28:	0007c463          	bltz	a5,80001b30 <devintr+0x10>
    80001b2c:	00008067          	ret
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00813823          	sd	s0,16(sp)
    80001b38:	00113c23          	sd	ra,24(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	02010413          	addi	s0,sp,32
    80001b44:	0ff7f713          	andi	a4,a5,255
    80001b48:	00900693          	li	a3,9
    80001b4c:	04d70c63          	beq	a4,a3,80001ba4 <devintr+0x84>
    80001b50:	fff00713          	li	a4,-1
    80001b54:	03f71713          	slli	a4,a4,0x3f
    80001b58:	00170713          	addi	a4,a4,1
    80001b5c:	00e78c63          	beq	a5,a4,80001b74 <devintr+0x54>
    80001b60:	01813083          	ld	ra,24(sp)
    80001b64:	01013403          	ld	s0,16(sp)
    80001b68:	00813483          	ld	s1,8(sp)
    80001b6c:	02010113          	addi	sp,sp,32
    80001b70:	00008067          	ret
    80001b74:	00000097          	auipc	ra,0x0
    80001b78:	c8c080e7          	jalr	-884(ra) # 80001800 <cpuid>
    80001b7c:	06050663          	beqz	a0,80001be8 <devintr+0xc8>
    80001b80:	144027f3          	csrr	a5,sip
    80001b84:	ffd7f793          	andi	a5,a5,-3
    80001b88:	14479073          	csrw	sip,a5
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	00200513          	li	a0,2
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	250080e7          	jalr	592(ra) # 80001df4 <plic_claim>
    80001bac:	00a00793          	li	a5,10
    80001bb0:	00050493          	mv	s1,a0
    80001bb4:	06f50663          	beq	a0,a5,80001c20 <devintr+0x100>
    80001bb8:	00100513          	li	a0,1
    80001bbc:	fa0482e3          	beqz	s1,80001b60 <devintr+0x40>
    80001bc0:	00048593          	mv	a1,s1
    80001bc4:	00002517          	auipc	a0,0x2
    80001bc8:	51c50513          	addi	a0,a0,1308 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	66c080e7          	jalr	1644(ra) # 80002238 <__printf>
    80001bd4:	00048513          	mv	a0,s1
    80001bd8:	00000097          	auipc	ra,0x0
    80001bdc:	254080e7          	jalr	596(ra) # 80001e2c <plic_complete>
    80001be0:	00100513          	li	a0,1
    80001be4:	f7dff06f          	j	80001b60 <devintr+0x40>
    80001be8:	00004517          	auipc	a0,0x4
    80001bec:	a9850513          	addi	a0,a0,-1384 # 80005680 <tickslock>
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	31c080e7          	jalr	796(ra) # 80002f0c <acquire>
    80001bf8:	00003717          	auipc	a4,0x3
    80001bfc:	99c70713          	addi	a4,a4,-1636 # 80004594 <ticks>
    80001c00:	00072783          	lw	a5,0(a4)
    80001c04:	00004517          	auipc	a0,0x4
    80001c08:	a7c50513          	addi	a0,a0,-1412 # 80005680 <tickslock>
    80001c0c:	0017879b          	addiw	a5,a5,1
    80001c10:	00f72023          	sw	a5,0(a4)
    80001c14:	00001097          	auipc	ra,0x1
    80001c18:	3c4080e7          	jalr	964(ra) # 80002fd8 <release>
    80001c1c:	f65ff06f          	j	80001b80 <devintr+0x60>
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	f20080e7          	jalr	-224(ra) # 80002b40 <uartintr>
    80001c28:	fadff06f          	j	80001bd4 <devintr+0xb4>
    80001c2c:	0000                	unimp
	...

0000000080001c30 <kernelvec>:
    80001c30:	f0010113          	addi	sp,sp,-256
    80001c34:	00113023          	sd	ra,0(sp)
    80001c38:	00213423          	sd	sp,8(sp)
    80001c3c:	00313823          	sd	gp,16(sp)
    80001c40:	00413c23          	sd	tp,24(sp)
    80001c44:	02513023          	sd	t0,32(sp)
    80001c48:	02613423          	sd	t1,40(sp)
    80001c4c:	02713823          	sd	t2,48(sp)
    80001c50:	02813c23          	sd	s0,56(sp)
    80001c54:	04913023          	sd	s1,64(sp)
    80001c58:	04a13423          	sd	a0,72(sp)
    80001c5c:	04b13823          	sd	a1,80(sp)
    80001c60:	04c13c23          	sd	a2,88(sp)
    80001c64:	06d13023          	sd	a3,96(sp)
    80001c68:	06e13423          	sd	a4,104(sp)
    80001c6c:	06f13823          	sd	a5,112(sp)
    80001c70:	07013c23          	sd	a6,120(sp)
    80001c74:	09113023          	sd	a7,128(sp)
    80001c78:	09213423          	sd	s2,136(sp)
    80001c7c:	09313823          	sd	s3,144(sp)
    80001c80:	09413c23          	sd	s4,152(sp)
    80001c84:	0b513023          	sd	s5,160(sp)
    80001c88:	0b613423          	sd	s6,168(sp)
    80001c8c:	0b713823          	sd	s7,176(sp)
    80001c90:	0b813c23          	sd	s8,184(sp)
    80001c94:	0d913023          	sd	s9,192(sp)
    80001c98:	0da13423          	sd	s10,200(sp)
    80001c9c:	0db13823          	sd	s11,208(sp)
    80001ca0:	0dc13c23          	sd	t3,216(sp)
    80001ca4:	0fd13023          	sd	t4,224(sp)
    80001ca8:	0fe13423          	sd	t5,232(sp)
    80001cac:	0ff13823          	sd	t6,240(sp)
    80001cb0:	cd1ff0ef          	jal	ra,80001980 <kerneltrap>
    80001cb4:	00013083          	ld	ra,0(sp)
    80001cb8:	00813103          	ld	sp,8(sp)
    80001cbc:	01013183          	ld	gp,16(sp)
    80001cc0:	02013283          	ld	t0,32(sp)
    80001cc4:	02813303          	ld	t1,40(sp)
    80001cc8:	03013383          	ld	t2,48(sp)
    80001ccc:	03813403          	ld	s0,56(sp)
    80001cd0:	04013483          	ld	s1,64(sp)
    80001cd4:	04813503          	ld	a0,72(sp)
    80001cd8:	05013583          	ld	a1,80(sp)
    80001cdc:	05813603          	ld	a2,88(sp)
    80001ce0:	06013683          	ld	a3,96(sp)
    80001ce4:	06813703          	ld	a4,104(sp)
    80001ce8:	07013783          	ld	a5,112(sp)
    80001cec:	07813803          	ld	a6,120(sp)
    80001cf0:	08013883          	ld	a7,128(sp)
    80001cf4:	08813903          	ld	s2,136(sp)
    80001cf8:	09013983          	ld	s3,144(sp)
    80001cfc:	09813a03          	ld	s4,152(sp)
    80001d00:	0a013a83          	ld	s5,160(sp)
    80001d04:	0a813b03          	ld	s6,168(sp)
    80001d08:	0b013b83          	ld	s7,176(sp)
    80001d0c:	0b813c03          	ld	s8,184(sp)
    80001d10:	0c013c83          	ld	s9,192(sp)
    80001d14:	0c813d03          	ld	s10,200(sp)
    80001d18:	0d013d83          	ld	s11,208(sp)
    80001d1c:	0d813e03          	ld	t3,216(sp)
    80001d20:	0e013e83          	ld	t4,224(sp)
    80001d24:	0e813f03          	ld	t5,232(sp)
    80001d28:	0f013f83          	ld	t6,240(sp)
    80001d2c:	10010113          	addi	sp,sp,256
    80001d30:	10200073          	sret
    80001d34:	00000013          	nop
    80001d38:	00000013          	nop
    80001d3c:	00000013          	nop

0000000080001d40 <timervec>:
    80001d40:	34051573          	csrrw	a0,mscratch,a0
    80001d44:	00b53023          	sd	a1,0(a0)
    80001d48:	00c53423          	sd	a2,8(a0)
    80001d4c:	00d53823          	sd	a3,16(a0)
    80001d50:	01853583          	ld	a1,24(a0)
    80001d54:	02053603          	ld	a2,32(a0)
    80001d58:	0005b683          	ld	a3,0(a1)
    80001d5c:	00c686b3          	add	a3,a3,a2
    80001d60:	00d5b023          	sd	a3,0(a1)
    80001d64:	00200593          	li	a1,2
    80001d68:	14459073          	csrw	sip,a1
    80001d6c:	01053683          	ld	a3,16(a0)
    80001d70:	00853603          	ld	a2,8(a0)
    80001d74:	00053583          	ld	a1,0(a0)
    80001d78:	34051573          	csrrw	a0,mscratch,a0
    80001d7c:	30200073          	mret

0000000080001d80 <plicinit>:
    80001d80:	ff010113          	addi	sp,sp,-16
    80001d84:	00813423          	sd	s0,8(sp)
    80001d88:	01010413          	addi	s0,sp,16
    80001d8c:	00813403          	ld	s0,8(sp)
    80001d90:	0c0007b7          	lui	a5,0xc000
    80001d94:	00100713          	li	a4,1
    80001d98:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001d9c:	00e7a223          	sw	a4,4(a5)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <plicinithart>:
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	00113423          	sd	ra,8(sp)
    80001db4:	01010413          	addi	s0,sp,16
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	a48080e7          	jalr	-1464(ra) # 80001800 <cpuid>
    80001dc0:	0085171b          	slliw	a4,a0,0x8
    80001dc4:	0c0027b7          	lui	a5,0xc002
    80001dc8:	00e787b3          	add	a5,a5,a4
    80001dcc:	40200713          	li	a4,1026
    80001dd0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001dd4:	00813083          	ld	ra,8(sp)
    80001dd8:	00013403          	ld	s0,0(sp)
    80001ddc:	00d5151b          	slliw	a0,a0,0xd
    80001de0:	0c2017b7          	lui	a5,0xc201
    80001de4:	00a78533          	add	a0,a5,a0
    80001de8:	00052023          	sw	zero,0(a0)
    80001dec:	01010113          	addi	sp,sp,16
    80001df0:	00008067          	ret

0000000080001df4 <plic_claim>:
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813023          	sd	s0,0(sp)
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	01010413          	addi	s0,sp,16
    80001e04:	00000097          	auipc	ra,0x0
    80001e08:	9fc080e7          	jalr	-1540(ra) # 80001800 <cpuid>
    80001e0c:	00813083          	ld	ra,8(sp)
    80001e10:	00013403          	ld	s0,0(sp)
    80001e14:	00d5151b          	slliw	a0,a0,0xd
    80001e18:	0c2017b7          	lui	a5,0xc201
    80001e1c:	00a78533          	add	a0,a5,a0
    80001e20:	00452503          	lw	a0,4(a0)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret

0000000080001e2c <plic_complete>:
    80001e2c:	fe010113          	addi	sp,sp,-32
    80001e30:	00813823          	sd	s0,16(sp)
    80001e34:	00913423          	sd	s1,8(sp)
    80001e38:	00113c23          	sd	ra,24(sp)
    80001e3c:	02010413          	addi	s0,sp,32
    80001e40:	00050493          	mv	s1,a0
    80001e44:	00000097          	auipc	ra,0x0
    80001e48:	9bc080e7          	jalr	-1604(ra) # 80001800 <cpuid>
    80001e4c:	01813083          	ld	ra,24(sp)
    80001e50:	01013403          	ld	s0,16(sp)
    80001e54:	00d5179b          	slliw	a5,a0,0xd
    80001e58:	0c201737          	lui	a4,0xc201
    80001e5c:	00f707b3          	add	a5,a4,a5
    80001e60:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001e64:	00813483          	ld	s1,8(sp)
    80001e68:	02010113          	addi	sp,sp,32
    80001e6c:	00008067          	ret

0000000080001e70 <consolewrite>:
    80001e70:	fb010113          	addi	sp,sp,-80
    80001e74:	04813023          	sd	s0,64(sp)
    80001e78:	04113423          	sd	ra,72(sp)
    80001e7c:	02913c23          	sd	s1,56(sp)
    80001e80:	03213823          	sd	s2,48(sp)
    80001e84:	03313423          	sd	s3,40(sp)
    80001e88:	03413023          	sd	s4,32(sp)
    80001e8c:	01513c23          	sd	s5,24(sp)
    80001e90:	05010413          	addi	s0,sp,80
    80001e94:	06c05c63          	blez	a2,80001f0c <consolewrite+0x9c>
    80001e98:	00060993          	mv	s3,a2
    80001e9c:	00050a13          	mv	s4,a0
    80001ea0:	00058493          	mv	s1,a1
    80001ea4:	00000913          	li	s2,0
    80001ea8:	fff00a93          	li	s5,-1
    80001eac:	01c0006f          	j	80001ec8 <consolewrite+0x58>
    80001eb0:	fbf44503          	lbu	a0,-65(s0)
    80001eb4:	0019091b          	addiw	s2,s2,1
    80001eb8:	00148493          	addi	s1,s1,1
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	a9c080e7          	jalr	-1380(ra) # 80002958 <uartputc>
    80001ec4:	03298063          	beq	s3,s2,80001ee4 <consolewrite+0x74>
    80001ec8:	00048613          	mv	a2,s1
    80001ecc:	00100693          	li	a3,1
    80001ed0:	000a0593          	mv	a1,s4
    80001ed4:	fbf40513          	addi	a0,s0,-65
    80001ed8:	00000097          	auipc	ra,0x0
    80001edc:	9e0080e7          	jalr	-1568(ra) # 800018b8 <either_copyin>
    80001ee0:	fd5518e3          	bne	a0,s5,80001eb0 <consolewrite+0x40>
    80001ee4:	04813083          	ld	ra,72(sp)
    80001ee8:	04013403          	ld	s0,64(sp)
    80001eec:	03813483          	ld	s1,56(sp)
    80001ef0:	02813983          	ld	s3,40(sp)
    80001ef4:	02013a03          	ld	s4,32(sp)
    80001ef8:	01813a83          	ld	s5,24(sp)
    80001efc:	00090513          	mv	a0,s2
    80001f00:	03013903          	ld	s2,48(sp)
    80001f04:	05010113          	addi	sp,sp,80
    80001f08:	00008067          	ret
    80001f0c:	00000913          	li	s2,0
    80001f10:	fd5ff06f          	j	80001ee4 <consolewrite+0x74>

0000000080001f14 <consoleread>:
    80001f14:	f9010113          	addi	sp,sp,-112
    80001f18:	06813023          	sd	s0,96(sp)
    80001f1c:	04913c23          	sd	s1,88(sp)
    80001f20:	05213823          	sd	s2,80(sp)
    80001f24:	05313423          	sd	s3,72(sp)
    80001f28:	05413023          	sd	s4,64(sp)
    80001f2c:	03513c23          	sd	s5,56(sp)
    80001f30:	03613823          	sd	s6,48(sp)
    80001f34:	03713423          	sd	s7,40(sp)
    80001f38:	03813023          	sd	s8,32(sp)
    80001f3c:	06113423          	sd	ra,104(sp)
    80001f40:	01913c23          	sd	s9,24(sp)
    80001f44:	07010413          	addi	s0,sp,112
    80001f48:	00060b93          	mv	s7,a2
    80001f4c:	00050913          	mv	s2,a0
    80001f50:	00058c13          	mv	s8,a1
    80001f54:	00060b1b          	sext.w	s6,a2
    80001f58:	00003497          	auipc	s1,0x3
    80001f5c:	75048493          	addi	s1,s1,1872 # 800056a8 <cons>
    80001f60:	00400993          	li	s3,4
    80001f64:	fff00a13          	li	s4,-1
    80001f68:	00a00a93          	li	s5,10
    80001f6c:	05705e63          	blez	s7,80001fc8 <consoleread+0xb4>
    80001f70:	09c4a703          	lw	a4,156(s1)
    80001f74:	0984a783          	lw	a5,152(s1)
    80001f78:	0007071b          	sext.w	a4,a4
    80001f7c:	08e78463          	beq	a5,a4,80002004 <consoleread+0xf0>
    80001f80:	07f7f713          	andi	a4,a5,127
    80001f84:	00e48733          	add	a4,s1,a4
    80001f88:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001f8c:	0017869b          	addiw	a3,a5,1
    80001f90:	08d4ac23          	sw	a3,152(s1)
    80001f94:	00070c9b          	sext.w	s9,a4
    80001f98:	0b370663          	beq	a4,s3,80002044 <consoleread+0x130>
    80001f9c:	00100693          	li	a3,1
    80001fa0:	f9f40613          	addi	a2,s0,-97
    80001fa4:	000c0593          	mv	a1,s8
    80001fa8:	00090513          	mv	a0,s2
    80001fac:	f8e40fa3          	sb	a4,-97(s0)
    80001fb0:	00000097          	auipc	ra,0x0
    80001fb4:	8bc080e7          	jalr	-1860(ra) # 8000186c <either_copyout>
    80001fb8:	01450863          	beq	a0,s4,80001fc8 <consoleread+0xb4>
    80001fbc:	001c0c13          	addi	s8,s8,1
    80001fc0:	fffb8b9b          	addiw	s7,s7,-1
    80001fc4:	fb5c94e3          	bne	s9,s5,80001f6c <consoleread+0x58>
    80001fc8:	000b851b          	sext.w	a0,s7
    80001fcc:	06813083          	ld	ra,104(sp)
    80001fd0:	06013403          	ld	s0,96(sp)
    80001fd4:	05813483          	ld	s1,88(sp)
    80001fd8:	05013903          	ld	s2,80(sp)
    80001fdc:	04813983          	ld	s3,72(sp)
    80001fe0:	04013a03          	ld	s4,64(sp)
    80001fe4:	03813a83          	ld	s5,56(sp)
    80001fe8:	02813b83          	ld	s7,40(sp)
    80001fec:	02013c03          	ld	s8,32(sp)
    80001ff0:	01813c83          	ld	s9,24(sp)
    80001ff4:	40ab053b          	subw	a0,s6,a0
    80001ff8:	03013b03          	ld	s6,48(sp)
    80001ffc:	07010113          	addi	sp,sp,112
    80002000:	00008067          	ret
    80002004:	00001097          	auipc	ra,0x1
    80002008:	1d8080e7          	jalr	472(ra) # 800031dc <push_on>
    8000200c:	0984a703          	lw	a4,152(s1)
    80002010:	09c4a783          	lw	a5,156(s1)
    80002014:	0007879b          	sext.w	a5,a5
    80002018:	fef70ce3          	beq	a4,a5,80002010 <consoleread+0xfc>
    8000201c:	00001097          	auipc	ra,0x1
    80002020:	234080e7          	jalr	564(ra) # 80003250 <pop_on>
    80002024:	0984a783          	lw	a5,152(s1)
    80002028:	07f7f713          	andi	a4,a5,127
    8000202c:	00e48733          	add	a4,s1,a4
    80002030:	01874703          	lbu	a4,24(a4)
    80002034:	0017869b          	addiw	a3,a5,1
    80002038:	08d4ac23          	sw	a3,152(s1)
    8000203c:	00070c9b          	sext.w	s9,a4
    80002040:	f5371ee3          	bne	a4,s3,80001f9c <consoleread+0x88>
    80002044:	000b851b          	sext.w	a0,s7
    80002048:	f96bf2e3          	bgeu	s7,s6,80001fcc <consoleread+0xb8>
    8000204c:	08f4ac23          	sw	a5,152(s1)
    80002050:	f7dff06f          	j	80001fcc <consoleread+0xb8>

0000000080002054 <consputc>:
    80002054:	10000793          	li	a5,256
    80002058:	00f50663          	beq	a0,a5,80002064 <consputc+0x10>
    8000205c:	00001317          	auipc	t1,0x1
    80002060:	9f430067          	jr	-1548(t1) # 80002a50 <uartputc_sync>
    80002064:	ff010113          	addi	sp,sp,-16
    80002068:	00113423          	sd	ra,8(sp)
    8000206c:	00813023          	sd	s0,0(sp)
    80002070:	01010413          	addi	s0,sp,16
    80002074:	00800513          	li	a0,8
    80002078:	00001097          	auipc	ra,0x1
    8000207c:	9d8080e7          	jalr	-1576(ra) # 80002a50 <uartputc_sync>
    80002080:	02000513          	li	a0,32
    80002084:	00001097          	auipc	ra,0x1
    80002088:	9cc080e7          	jalr	-1588(ra) # 80002a50 <uartputc_sync>
    8000208c:	00013403          	ld	s0,0(sp)
    80002090:	00813083          	ld	ra,8(sp)
    80002094:	00800513          	li	a0,8
    80002098:	01010113          	addi	sp,sp,16
    8000209c:	00001317          	auipc	t1,0x1
    800020a0:	9b430067          	jr	-1612(t1) # 80002a50 <uartputc_sync>

00000000800020a4 <consoleintr>:
    800020a4:	fe010113          	addi	sp,sp,-32
    800020a8:	00813823          	sd	s0,16(sp)
    800020ac:	00913423          	sd	s1,8(sp)
    800020b0:	01213023          	sd	s2,0(sp)
    800020b4:	00113c23          	sd	ra,24(sp)
    800020b8:	02010413          	addi	s0,sp,32
    800020bc:	00003917          	auipc	s2,0x3
    800020c0:	5ec90913          	addi	s2,s2,1516 # 800056a8 <cons>
    800020c4:	00050493          	mv	s1,a0
    800020c8:	00090513          	mv	a0,s2
    800020cc:	00001097          	auipc	ra,0x1
    800020d0:	e40080e7          	jalr	-448(ra) # 80002f0c <acquire>
    800020d4:	02048c63          	beqz	s1,8000210c <consoleintr+0x68>
    800020d8:	0a092783          	lw	a5,160(s2)
    800020dc:	09892703          	lw	a4,152(s2)
    800020e0:	07f00693          	li	a3,127
    800020e4:	40e7873b          	subw	a4,a5,a4
    800020e8:	02e6e263          	bltu	a3,a4,8000210c <consoleintr+0x68>
    800020ec:	00d00713          	li	a4,13
    800020f0:	04e48063          	beq	s1,a4,80002130 <consoleintr+0x8c>
    800020f4:	07f7f713          	andi	a4,a5,127
    800020f8:	00e90733          	add	a4,s2,a4
    800020fc:	0017879b          	addiw	a5,a5,1
    80002100:	0af92023          	sw	a5,160(s2)
    80002104:	00970c23          	sb	s1,24(a4)
    80002108:	08f92e23          	sw	a5,156(s2)
    8000210c:	01013403          	ld	s0,16(sp)
    80002110:	01813083          	ld	ra,24(sp)
    80002114:	00813483          	ld	s1,8(sp)
    80002118:	00013903          	ld	s2,0(sp)
    8000211c:	00003517          	auipc	a0,0x3
    80002120:	58c50513          	addi	a0,a0,1420 # 800056a8 <cons>
    80002124:	02010113          	addi	sp,sp,32
    80002128:	00001317          	auipc	t1,0x1
    8000212c:	eb030067          	jr	-336(t1) # 80002fd8 <release>
    80002130:	00a00493          	li	s1,10
    80002134:	fc1ff06f          	j	800020f4 <consoleintr+0x50>

0000000080002138 <consoleinit>:
    80002138:	fe010113          	addi	sp,sp,-32
    8000213c:	00113c23          	sd	ra,24(sp)
    80002140:	00813823          	sd	s0,16(sp)
    80002144:	00913423          	sd	s1,8(sp)
    80002148:	02010413          	addi	s0,sp,32
    8000214c:	00003497          	auipc	s1,0x3
    80002150:	55c48493          	addi	s1,s1,1372 # 800056a8 <cons>
    80002154:	00048513          	mv	a0,s1
    80002158:	00002597          	auipc	a1,0x2
    8000215c:	fe058593          	addi	a1,a1,-32 # 80004138 <_ZZ12printIntegermE6digits+0x138>
    80002160:	00001097          	auipc	ra,0x1
    80002164:	d88080e7          	jalr	-632(ra) # 80002ee8 <initlock>
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	7ac080e7          	jalr	1964(ra) # 80002914 <uartinit>
    80002170:	01813083          	ld	ra,24(sp)
    80002174:	01013403          	ld	s0,16(sp)
    80002178:	00000797          	auipc	a5,0x0
    8000217c:	d9c78793          	addi	a5,a5,-612 # 80001f14 <consoleread>
    80002180:	0af4bc23          	sd	a5,184(s1)
    80002184:	00000797          	auipc	a5,0x0
    80002188:	cec78793          	addi	a5,a5,-788 # 80001e70 <consolewrite>
    8000218c:	0cf4b023          	sd	a5,192(s1)
    80002190:	00813483          	ld	s1,8(sp)
    80002194:	02010113          	addi	sp,sp,32
    80002198:	00008067          	ret

000000008000219c <console_read>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	00003317          	auipc	t1,0x3
    800021b0:	5b433303          	ld	t1,1460(t1) # 80005760 <devsw+0x10>
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00030067          	jr	t1

00000000800021bc <console_write>:
    800021bc:	ff010113          	addi	sp,sp,-16
    800021c0:	00813423          	sd	s0,8(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00813403          	ld	s0,8(sp)
    800021cc:	00003317          	auipc	t1,0x3
    800021d0:	59c33303          	ld	t1,1436(t1) # 80005768 <devsw+0x18>
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00030067          	jr	t1

00000000800021dc <panic>:
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00113c23          	sd	ra,24(sp)
    800021e4:	00813823          	sd	s0,16(sp)
    800021e8:	00913423          	sd	s1,8(sp)
    800021ec:	02010413          	addi	s0,sp,32
    800021f0:	00050493          	mv	s1,a0
    800021f4:	00002517          	auipc	a0,0x2
    800021f8:	f4c50513          	addi	a0,a0,-180 # 80004140 <_ZZ12printIntegermE6digits+0x140>
    800021fc:	00003797          	auipc	a5,0x3
    80002200:	6007a623          	sw	zero,1548(a5) # 80005808 <pr+0x18>
    80002204:	00000097          	auipc	ra,0x0
    80002208:	034080e7          	jalr	52(ra) # 80002238 <__printf>
    8000220c:	00048513          	mv	a0,s1
    80002210:	00000097          	auipc	ra,0x0
    80002214:	028080e7          	jalr	40(ra) # 80002238 <__printf>
    80002218:	00002517          	auipc	a0,0x2
    8000221c:	f0850513          	addi	a0,a0,-248 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80002220:	00000097          	auipc	ra,0x0
    80002224:	018080e7          	jalr	24(ra) # 80002238 <__printf>
    80002228:	00100793          	li	a5,1
    8000222c:	00002717          	auipc	a4,0x2
    80002230:	36f72623          	sw	a5,876(a4) # 80004598 <panicked>
    80002234:	0000006f          	j	80002234 <panic+0x58>

0000000080002238 <__printf>:
    80002238:	f3010113          	addi	sp,sp,-208
    8000223c:	08813023          	sd	s0,128(sp)
    80002240:	07313423          	sd	s3,104(sp)
    80002244:	09010413          	addi	s0,sp,144
    80002248:	05813023          	sd	s8,64(sp)
    8000224c:	08113423          	sd	ra,136(sp)
    80002250:	06913c23          	sd	s1,120(sp)
    80002254:	07213823          	sd	s2,112(sp)
    80002258:	07413023          	sd	s4,96(sp)
    8000225c:	05513c23          	sd	s5,88(sp)
    80002260:	05613823          	sd	s6,80(sp)
    80002264:	05713423          	sd	s7,72(sp)
    80002268:	03913c23          	sd	s9,56(sp)
    8000226c:	03a13823          	sd	s10,48(sp)
    80002270:	03b13423          	sd	s11,40(sp)
    80002274:	00003317          	auipc	t1,0x3
    80002278:	57c30313          	addi	t1,t1,1404 # 800057f0 <pr>
    8000227c:	01832c03          	lw	s8,24(t1)
    80002280:	00b43423          	sd	a1,8(s0)
    80002284:	00c43823          	sd	a2,16(s0)
    80002288:	00d43c23          	sd	a3,24(s0)
    8000228c:	02e43023          	sd	a4,32(s0)
    80002290:	02f43423          	sd	a5,40(s0)
    80002294:	03043823          	sd	a6,48(s0)
    80002298:	03143c23          	sd	a7,56(s0)
    8000229c:	00050993          	mv	s3,a0
    800022a0:	4a0c1663          	bnez	s8,8000274c <__printf+0x514>
    800022a4:	60098c63          	beqz	s3,800028bc <__printf+0x684>
    800022a8:	0009c503          	lbu	a0,0(s3)
    800022ac:	00840793          	addi	a5,s0,8
    800022b0:	f6f43c23          	sd	a5,-136(s0)
    800022b4:	00000493          	li	s1,0
    800022b8:	22050063          	beqz	a0,800024d8 <__printf+0x2a0>
    800022bc:	00002a37          	lui	s4,0x2
    800022c0:	00018ab7          	lui	s5,0x18
    800022c4:	000f4b37          	lui	s6,0xf4
    800022c8:	00989bb7          	lui	s7,0x989
    800022cc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800022d0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800022d4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800022d8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800022dc:	00148c9b          	addiw	s9,s1,1
    800022e0:	02500793          	li	a5,37
    800022e4:	01998933          	add	s2,s3,s9
    800022e8:	38f51263          	bne	a0,a5,8000266c <__printf+0x434>
    800022ec:	00094783          	lbu	a5,0(s2)
    800022f0:	00078c9b          	sext.w	s9,a5
    800022f4:	1e078263          	beqz	a5,800024d8 <__printf+0x2a0>
    800022f8:	0024849b          	addiw	s1,s1,2
    800022fc:	07000713          	li	a4,112
    80002300:	00998933          	add	s2,s3,s1
    80002304:	38e78a63          	beq	a5,a4,80002698 <__printf+0x460>
    80002308:	20f76863          	bltu	a4,a5,80002518 <__printf+0x2e0>
    8000230c:	42a78863          	beq	a5,a0,8000273c <__printf+0x504>
    80002310:	06400713          	li	a4,100
    80002314:	40e79663          	bne	a5,a4,80002720 <__printf+0x4e8>
    80002318:	f7843783          	ld	a5,-136(s0)
    8000231c:	0007a603          	lw	a2,0(a5)
    80002320:	00878793          	addi	a5,a5,8
    80002324:	f6f43c23          	sd	a5,-136(s0)
    80002328:	42064a63          	bltz	a2,8000275c <__printf+0x524>
    8000232c:	00a00713          	li	a4,10
    80002330:	02e677bb          	remuw	a5,a2,a4
    80002334:	00002d97          	auipc	s11,0x2
    80002338:	e34d8d93          	addi	s11,s11,-460 # 80004168 <digits>
    8000233c:	00900593          	li	a1,9
    80002340:	0006051b          	sext.w	a0,a2
    80002344:	00000c93          	li	s9,0
    80002348:	02079793          	slli	a5,a5,0x20
    8000234c:	0207d793          	srli	a5,a5,0x20
    80002350:	00fd87b3          	add	a5,s11,a5
    80002354:	0007c783          	lbu	a5,0(a5)
    80002358:	02e656bb          	divuw	a3,a2,a4
    8000235c:	f8f40023          	sb	a5,-128(s0)
    80002360:	14c5d863          	bge	a1,a2,800024b0 <__printf+0x278>
    80002364:	06300593          	li	a1,99
    80002368:	00100c93          	li	s9,1
    8000236c:	02e6f7bb          	remuw	a5,a3,a4
    80002370:	02079793          	slli	a5,a5,0x20
    80002374:	0207d793          	srli	a5,a5,0x20
    80002378:	00fd87b3          	add	a5,s11,a5
    8000237c:	0007c783          	lbu	a5,0(a5)
    80002380:	02e6d73b          	divuw	a4,a3,a4
    80002384:	f8f400a3          	sb	a5,-127(s0)
    80002388:	12a5f463          	bgeu	a1,a0,800024b0 <__printf+0x278>
    8000238c:	00a00693          	li	a3,10
    80002390:	00900593          	li	a1,9
    80002394:	02d777bb          	remuw	a5,a4,a3
    80002398:	02079793          	slli	a5,a5,0x20
    8000239c:	0207d793          	srli	a5,a5,0x20
    800023a0:	00fd87b3          	add	a5,s11,a5
    800023a4:	0007c503          	lbu	a0,0(a5)
    800023a8:	02d757bb          	divuw	a5,a4,a3
    800023ac:	f8a40123          	sb	a0,-126(s0)
    800023b0:	48e5f263          	bgeu	a1,a4,80002834 <__printf+0x5fc>
    800023b4:	06300513          	li	a0,99
    800023b8:	02d7f5bb          	remuw	a1,a5,a3
    800023bc:	02059593          	slli	a1,a1,0x20
    800023c0:	0205d593          	srli	a1,a1,0x20
    800023c4:	00bd85b3          	add	a1,s11,a1
    800023c8:	0005c583          	lbu	a1,0(a1)
    800023cc:	02d7d7bb          	divuw	a5,a5,a3
    800023d0:	f8b401a3          	sb	a1,-125(s0)
    800023d4:	48e57263          	bgeu	a0,a4,80002858 <__printf+0x620>
    800023d8:	3e700513          	li	a0,999
    800023dc:	02d7f5bb          	remuw	a1,a5,a3
    800023e0:	02059593          	slli	a1,a1,0x20
    800023e4:	0205d593          	srli	a1,a1,0x20
    800023e8:	00bd85b3          	add	a1,s11,a1
    800023ec:	0005c583          	lbu	a1,0(a1)
    800023f0:	02d7d7bb          	divuw	a5,a5,a3
    800023f4:	f8b40223          	sb	a1,-124(s0)
    800023f8:	46e57663          	bgeu	a0,a4,80002864 <__printf+0x62c>
    800023fc:	02d7f5bb          	remuw	a1,a5,a3
    80002400:	02059593          	slli	a1,a1,0x20
    80002404:	0205d593          	srli	a1,a1,0x20
    80002408:	00bd85b3          	add	a1,s11,a1
    8000240c:	0005c583          	lbu	a1,0(a1)
    80002410:	02d7d7bb          	divuw	a5,a5,a3
    80002414:	f8b402a3          	sb	a1,-123(s0)
    80002418:	46ea7863          	bgeu	s4,a4,80002888 <__printf+0x650>
    8000241c:	02d7f5bb          	remuw	a1,a5,a3
    80002420:	02059593          	slli	a1,a1,0x20
    80002424:	0205d593          	srli	a1,a1,0x20
    80002428:	00bd85b3          	add	a1,s11,a1
    8000242c:	0005c583          	lbu	a1,0(a1)
    80002430:	02d7d7bb          	divuw	a5,a5,a3
    80002434:	f8b40323          	sb	a1,-122(s0)
    80002438:	3eeaf863          	bgeu	s5,a4,80002828 <__printf+0x5f0>
    8000243c:	02d7f5bb          	remuw	a1,a5,a3
    80002440:	02059593          	slli	a1,a1,0x20
    80002444:	0205d593          	srli	a1,a1,0x20
    80002448:	00bd85b3          	add	a1,s11,a1
    8000244c:	0005c583          	lbu	a1,0(a1)
    80002450:	02d7d7bb          	divuw	a5,a5,a3
    80002454:	f8b403a3          	sb	a1,-121(s0)
    80002458:	42eb7e63          	bgeu	s6,a4,80002894 <__printf+0x65c>
    8000245c:	02d7f5bb          	remuw	a1,a5,a3
    80002460:	02059593          	slli	a1,a1,0x20
    80002464:	0205d593          	srli	a1,a1,0x20
    80002468:	00bd85b3          	add	a1,s11,a1
    8000246c:	0005c583          	lbu	a1,0(a1)
    80002470:	02d7d7bb          	divuw	a5,a5,a3
    80002474:	f8b40423          	sb	a1,-120(s0)
    80002478:	42ebfc63          	bgeu	s7,a4,800028b0 <__printf+0x678>
    8000247c:	02079793          	slli	a5,a5,0x20
    80002480:	0207d793          	srli	a5,a5,0x20
    80002484:	00fd8db3          	add	s11,s11,a5
    80002488:	000dc703          	lbu	a4,0(s11)
    8000248c:	00a00793          	li	a5,10
    80002490:	00900c93          	li	s9,9
    80002494:	f8e404a3          	sb	a4,-119(s0)
    80002498:	00065c63          	bgez	a2,800024b0 <__printf+0x278>
    8000249c:	f9040713          	addi	a4,s0,-112
    800024a0:	00f70733          	add	a4,a4,a5
    800024a4:	02d00693          	li	a3,45
    800024a8:	fed70823          	sb	a3,-16(a4)
    800024ac:	00078c93          	mv	s9,a5
    800024b0:	f8040793          	addi	a5,s0,-128
    800024b4:	01978cb3          	add	s9,a5,s9
    800024b8:	f7f40d13          	addi	s10,s0,-129
    800024bc:	000cc503          	lbu	a0,0(s9)
    800024c0:	fffc8c93          	addi	s9,s9,-1
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	b90080e7          	jalr	-1136(ra) # 80002054 <consputc>
    800024cc:	ffac98e3          	bne	s9,s10,800024bc <__printf+0x284>
    800024d0:	00094503          	lbu	a0,0(s2)
    800024d4:	e00514e3          	bnez	a0,800022dc <__printf+0xa4>
    800024d8:	1a0c1663          	bnez	s8,80002684 <__printf+0x44c>
    800024dc:	08813083          	ld	ra,136(sp)
    800024e0:	08013403          	ld	s0,128(sp)
    800024e4:	07813483          	ld	s1,120(sp)
    800024e8:	07013903          	ld	s2,112(sp)
    800024ec:	06813983          	ld	s3,104(sp)
    800024f0:	06013a03          	ld	s4,96(sp)
    800024f4:	05813a83          	ld	s5,88(sp)
    800024f8:	05013b03          	ld	s6,80(sp)
    800024fc:	04813b83          	ld	s7,72(sp)
    80002500:	04013c03          	ld	s8,64(sp)
    80002504:	03813c83          	ld	s9,56(sp)
    80002508:	03013d03          	ld	s10,48(sp)
    8000250c:	02813d83          	ld	s11,40(sp)
    80002510:	0d010113          	addi	sp,sp,208
    80002514:	00008067          	ret
    80002518:	07300713          	li	a4,115
    8000251c:	1ce78a63          	beq	a5,a4,800026f0 <__printf+0x4b8>
    80002520:	07800713          	li	a4,120
    80002524:	1ee79e63          	bne	a5,a4,80002720 <__printf+0x4e8>
    80002528:	f7843783          	ld	a5,-136(s0)
    8000252c:	0007a703          	lw	a4,0(a5)
    80002530:	00878793          	addi	a5,a5,8
    80002534:	f6f43c23          	sd	a5,-136(s0)
    80002538:	28074263          	bltz	a4,800027bc <__printf+0x584>
    8000253c:	00002d97          	auipc	s11,0x2
    80002540:	c2cd8d93          	addi	s11,s11,-980 # 80004168 <digits>
    80002544:	00f77793          	andi	a5,a4,15
    80002548:	00fd87b3          	add	a5,s11,a5
    8000254c:	0007c683          	lbu	a3,0(a5)
    80002550:	00f00613          	li	a2,15
    80002554:	0007079b          	sext.w	a5,a4
    80002558:	f8d40023          	sb	a3,-128(s0)
    8000255c:	0047559b          	srliw	a1,a4,0x4
    80002560:	0047569b          	srliw	a3,a4,0x4
    80002564:	00000c93          	li	s9,0
    80002568:	0ee65063          	bge	a2,a4,80002648 <__printf+0x410>
    8000256c:	00f6f693          	andi	a3,a3,15
    80002570:	00dd86b3          	add	a3,s11,a3
    80002574:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002578:	0087d79b          	srliw	a5,a5,0x8
    8000257c:	00100c93          	li	s9,1
    80002580:	f8d400a3          	sb	a3,-127(s0)
    80002584:	0cb67263          	bgeu	a2,a1,80002648 <__printf+0x410>
    80002588:	00f7f693          	andi	a3,a5,15
    8000258c:	00dd86b3          	add	a3,s11,a3
    80002590:	0006c583          	lbu	a1,0(a3)
    80002594:	00f00613          	li	a2,15
    80002598:	0047d69b          	srliw	a3,a5,0x4
    8000259c:	f8b40123          	sb	a1,-126(s0)
    800025a0:	0047d593          	srli	a1,a5,0x4
    800025a4:	28f67e63          	bgeu	a2,a5,80002840 <__printf+0x608>
    800025a8:	00f6f693          	andi	a3,a3,15
    800025ac:	00dd86b3          	add	a3,s11,a3
    800025b0:	0006c503          	lbu	a0,0(a3)
    800025b4:	0087d813          	srli	a6,a5,0x8
    800025b8:	0087d69b          	srliw	a3,a5,0x8
    800025bc:	f8a401a3          	sb	a0,-125(s0)
    800025c0:	28b67663          	bgeu	a2,a1,8000284c <__printf+0x614>
    800025c4:	00f6f693          	andi	a3,a3,15
    800025c8:	00dd86b3          	add	a3,s11,a3
    800025cc:	0006c583          	lbu	a1,0(a3)
    800025d0:	00c7d513          	srli	a0,a5,0xc
    800025d4:	00c7d69b          	srliw	a3,a5,0xc
    800025d8:	f8b40223          	sb	a1,-124(s0)
    800025dc:	29067a63          	bgeu	a2,a6,80002870 <__printf+0x638>
    800025e0:	00f6f693          	andi	a3,a3,15
    800025e4:	00dd86b3          	add	a3,s11,a3
    800025e8:	0006c583          	lbu	a1,0(a3)
    800025ec:	0107d813          	srli	a6,a5,0x10
    800025f0:	0107d69b          	srliw	a3,a5,0x10
    800025f4:	f8b402a3          	sb	a1,-123(s0)
    800025f8:	28a67263          	bgeu	a2,a0,8000287c <__printf+0x644>
    800025fc:	00f6f693          	andi	a3,a3,15
    80002600:	00dd86b3          	add	a3,s11,a3
    80002604:	0006c683          	lbu	a3,0(a3)
    80002608:	0147d79b          	srliw	a5,a5,0x14
    8000260c:	f8d40323          	sb	a3,-122(s0)
    80002610:	21067663          	bgeu	a2,a6,8000281c <__printf+0x5e4>
    80002614:	02079793          	slli	a5,a5,0x20
    80002618:	0207d793          	srli	a5,a5,0x20
    8000261c:	00fd8db3          	add	s11,s11,a5
    80002620:	000dc683          	lbu	a3,0(s11)
    80002624:	00800793          	li	a5,8
    80002628:	00700c93          	li	s9,7
    8000262c:	f8d403a3          	sb	a3,-121(s0)
    80002630:	00075c63          	bgez	a4,80002648 <__printf+0x410>
    80002634:	f9040713          	addi	a4,s0,-112
    80002638:	00f70733          	add	a4,a4,a5
    8000263c:	02d00693          	li	a3,45
    80002640:	fed70823          	sb	a3,-16(a4)
    80002644:	00078c93          	mv	s9,a5
    80002648:	f8040793          	addi	a5,s0,-128
    8000264c:	01978cb3          	add	s9,a5,s9
    80002650:	f7f40d13          	addi	s10,s0,-129
    80002654:	000cc503          	lbu	a0,0(s9)
    80002658:	fffc8c93          	addi	s9,s9,-1
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	9f8080e7          	jalr	-1544(ra) # 80002054 <consputc>
    80002664:	ff9d18e3          	bne	s10,s9,80002654 <__printf+0x41c>
    80002668:	0100006f          	j	80002678 <__printf+0x440>
    8000266c:	00000097          	auipc	ra,0x0
    80002670:	9e8080e7          	jalr	-1560(ra) # 80002054 <consputc>
    80002674:	000c8493          	mv	s1,s9
    80002678:	00094503          	lbu	a0,0(s2)
    8000267c:	c60510e3          	bnez	a0,800022dc <__printf+0xa4>
    80002680:	e40c0ee3          	beqz	s8,800024dc <__printf+0x2a4>
    80002684:	00003517          	auipc	a0,0x3
    80002688:	16c50513          	addi	a0,a0,364 # 800057f0 <pr>
    8000268c:	00001097          	auipc	ra,0x1
    80002690:	94c080e7          	jalr	-1716(ra) # 80002fd8 <release>
    80002694:	e49ff06f          	j	800024dc <__printf+0x2a4>
    80002698:	f7843783          	ld	a5,-136(s0)
    8000269c:	03000513          	li	a0,48
    800026a0:	01000d13          	li	s10,16
    800026a4:	00878713          	addi	a4,a5,8
    800026a8:	0007bc83          	ld	s9,0(a5)
    800026ac:	f6e43c23          	sd	a4,-136(s0)
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	9a4080e7          	jalr	-1628(ra) # 80002054 <consputc>
    800026b8:	07800513          	li	a0,120
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	998080e7          	jalr	-1640(ra) # 80002054 <consputc>
    800026c4:	00002d97          	auipc	s11,0x2
    800026c8:	aa4d8d93          	addi	s11,s11,-1372 # 80004168 <digits>
    800026cc:	03ccd793          	srli	a5,s9,0x3c
    800026d0:	00fd87b3          	add	a5,s11,a5
    800026d4:	0007c503          	lbu	a0,0(a5)
    800026d8:	fffd0d1b          	addiw	s10,s10,-1
    800026dc:	004c9c93          	slli	s9,s9,0x4
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	974080e7          	jalr	-1676(ra) # 80002054 <consputc>
    800026e8:	fe0d12e3          	bnez	s10,800026cc <__printf+0x494>
    800026ec:	f8dff06f          	j	80002678 <__printf+0x440>
    800026f0:	f7843783          	ld	a5,-136(s0)
    800026f4:	0007bc83          	ld	s9,0(a5)
    800026f8:	00878793          	addi	a5,a5,8
    800026fc:	f6f43c23          	sd	a5,-136(s0)
    80002700:	000c9a63          	bnez	s9,80002714 <__printf+0x4dc>
    80002704:	1080006f          	j	8000280c <__printf+0x5d4>
    80002708:	001c8c93          	addi	s9,s9,1
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	948080e7          	jalr	-1720(ra) # 80002054 <consputc>
    80002714:	000cc503          	lbu	a0,0(s9)
    80002718:	fe0518e3          	bnez	a0,80002708 <__printf+0x4d0>
    8000271c:	f5dff06f          	j	80002678 <__printf+0x440>
    80002720:	02500513          	li	a0,37
    80002724:	00000097          	auipc	ra,0x0
    80002728:	930080e7          	jalr	-1744(ra) # 80002054 <consputc>
    8000272c:	000c8513          	mv	a0,s9
    80002730:	00000097          	auipc	ra,0x0
    80002734:	924080e7          	jalr	-1756(ra) # 80002054 <consputc>
    80002738:	f41ff06f          	j	80002678 <__printf+0x440>
    8000273c:	02500513          	li	a0,37
    80002740:	00000097          	auipc	ra,0x0
    80002744:	914080e7          	jalr	-1772(ra) # 80002054 <consputc>
    80002748:	f31ff06f          	j	80002678 <__printf+0x440>
    8000274c:	00030513          	mv	a0,t1
    80002750:	00000097          	auipc	ra,0x0
    80002754:	7bc080e7          	jalr	1980(ra) # 80002f0c <acquire>
    80002758:	b4dff06f          	j	800022a4 <__printf+0x6c>
    8000275c:	40c0053b          	negw	a0,a2
    80002760:	00a00713          	li	a4,10
    80002764:	02e576bb          	remuw	a3,a0,a4
    80002768:	00002d97          	auipc	s11,0x2
    8000276c:	a00d8d93          	addi	s11,s11,-1536 # 80004168 <digits>
    80002770:	ff700593          	li	a1,-9
    80002774:	02069693          	slli	a3,a3,0x20
    80002778:	0206d693          	srli	a3,a3,0x20
    8000277c:	00dd86b3          	add	a3,s11,a3
    80002780:	0006c683          	lbu	a3,0(a3)
    80002784:	02e557bb          	divuw	a5,a0,a4
    80002788:	f8d40023          	sb	a3,-128(s0)
    8000278c:	10b65e63          	bge	a2,a1,800028a8 <__printf+0x670>
    80002790:	06300593          	li	a1,99
    80002794:	02e7f6bb          	remuw	a3,a5,a4
    80002798:	02069693          	slli	a3,a3,0x20
    8000279c:	0206d693          	srli	a3,a3,0x20
    800027a0:	00dd86b3          	add	a3,s11,a3
    800027a4:	0006c683          	lbu	a3,0(a3)
    800027a8:	02e7d73b          	divuw	a4,a5,a4
    800027ac:	00200793          	li	a5,2
    800027b0:	f8d400a3          	sb	a3,-127(s0)
    800027b4:	bca5ece3          	bltu	a1,a0,8000238c <__printf+0x154>
    800027b8:	ce5ff06f          	j	8000249c <__printf+0x264>
    800027bc:	40e007bb          	negw	a5,a4
    800027c0:	00002d97          	auipc	s11,0x2
    800027c4:	9a8d8d93          	addi	s11,s11,-1624 # 80004168 <digits>
    800027c8:	00f7f693          	andi	a3,a5,15
    800027cc:	00dd86b3          	add	a3,s11,a3
    800027d0:	0006c583          	lbu	a1,0(a3)
    800027d4:	ff100613          	li	a2,-15
    800027d8:	0047d69b          	srliw	a3,a5,0x4
    800027dc:	f8b40023          	sb	a1,-128(s0)
    800027e0:	0047d59b          	srliw	a1,a5,0x4
    800027e4:	0ac75e63          	bge	a4,a2,800028a0 <__printf+0x668>
    800027e8:	00f6f693          	andi	a3,a3,15
    800027ec:	00dd86b3          	add	a3,s11,a3
    800027f0:	0006c603          	lbu	a2,0(a3)
    800027f4:	00f00693          	li	a3,15
    800027f8:	0087d79b          	srliw	a5,a5,0x8
    800027fc:	f8c400a3          	sb	a2,-127(s0)
    80002800:	d8b6e4e3          	bltu	a3,a1,80002588 <__printf+0x350>
    80002804:	00200793          	li	a5,2
    80002808:	e2dff06f          	j	80002634 <__printf+0x3fc>
    8000280c:	00002c97          	auipc	s9,0x2
    80002810:	93cc8c93          	addi	s9,s9,-1732 # 80004148 <_ZZ12printIntegermE6digits+0x148>
    80002814:	02800513          	li	a0,40
    80002818:	ef1ff06f          	j	80002708 <__printf+0x4d0>
    8000281c:	00700793          	li	a5,7
    80002820:	00600c93          	li	s9,6
    80002824:	e0dff06f          	j	80002630 <__printf+0x3f8>
    80002828:	00700793          	li	a5,7
    8000282c:	00600c93          	li	s9,6
    80002830:	c69ff06f          	j	80002498 <__printf+0x260>
    80002834:	00300793          	li	a5,3
    80002838:	00200c93          	li	s9,2
    8000283c:	c5dff06f          	j	80002498 <__printf+0x260>
    80002840:	00300793          	li	a5,3
    80002844:	00200c93          	li	s9,2
    80002848:	de9ff06f          	j	80002630 <__printf+0x3f8>
    8000284c:	00400793          	li	a5,4
    80002850:	00300c93          	li	s9,3
    80002854:	dddff06f          	j	80002630 <__printf+0x3f8>
    80002858:	00400793          	li	a5,4
    8000285c:	00300c93          	li	s9,3
    80002860:	c39ff06f          	j	80002498 <__printf+0x260>
    80002864:	00500793          	li	a5,5
    80002868:	00400c93          	li	s9,4
    8000286c:	c2dff06f          	j	80002498 <__printf+0x260>
    80002870:	00500793          	li	a5,5
    80002874:	00400c93          	li	s9,4
    80002878:	db9ff06f          	j	80002630 <__printf+0x3f8>
    8000287c:	00600793          	li	a5,6
    80002880:	00500c93          	li	s9,5
    80002884:	dadff06f          	j	80002630 <__printf+0x3f8>
    80002888:	00600793          	li	a5,6
    8000288c:	00500c93          	li	s9,5
    80002890:	c09ff06f          	j	80002498 <__printf+0x260>
    80002894:	00800793          	li	a5,8
    80002898:	00700c93          	li	s9,7
    8000289c:	bfdff06f          	j	80002498 <__printf+0x260>
    800028a0:	00100793          	li	a5,1
    800028a4:	d91ff06f          	j	80002634 <__printf+0x3fc>
    800028a8:	00100793          	li	a5,1
    800028ac:	bf1ff06f          	j	8000249c <__printf+0x264>
    800028b0:	00900793          	li	a5,9
    800028b4:	00800c93          	li	s9,8
    800028b8:	be1ff06f          	j	80002498 <__printf+0x260>
    800028bc:	00002517          	auipc	a0,0x2
    800028c0:	89450513          	addi	a0,a0,-1900 # 80004150 <_ZZ12printIntegermE6digits+0x150>
    800028c4:	00000097          	auipc	ra,0x0
    800028c8:	918080e7          	jalr	-1768(ra) # 800021dc <panic>

00000000800028cc <printfinit>:
    800028cc:	fe010113          	addi	sp,sp,-32
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	00113c23          	sd	ra,24(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00003497          	auipc	s1,0x3
    800028e4:	f1048493          	addi	s1,s1,-240 # 800057f0 <pr>
    800028e8:	00048513          	mv	a0,s1
    800028ec:	00002597          	auipc	a1,0x2
    800028f0:	87458593          	addi	a1,a1,-1932 # 80004160 <_ZZ12printIntegermE6digits+0x160>
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	5f4080e7          	jalr	1524(ra) # 80002ee8 <initlock>
    800028fc:	01813083          	ld	ra,24(sp)
    80002900:	01013403          	ld	s0,16(sp)
    80002904:	0004ac23          	sw	zero,24(s1)
    80002908:	00813483          	ld	s1,8(sp)
    8000290c:	02010113          	addi	sp,sp,32
    80002910:	00008067          	ret

0000000080002914 <uartinit>:
    80002914:	ff010113          	addi	sp,sp,-16
    80002918:	00813423          	sd	s0,8(sp)
    8000291c:	01010413          	addi	s0,sp,16
    80002920:	100007b7          	lui	a5,0x10000
    80002924:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002928:	f8000713          	li	a4,-128
    8000292c:	00e781a3          	sb	a4,3(a5)
    80002930:	00300713          	li	a4,3
    80002934:	00e78023          	sb	a4,0(a5)
    80002938:	000780a3          	sb	zero,1(a5)
    8000293c:	00e781a3          	sb	a4,3(a5)
    80002940:	00700693          	li	a3,7
    80002944:	00d78123          	sb	a3,2(a5)
    80002948:	00e780a3          	sb	a4,1(a5)
    8000294c:	00813403          	ld	s0,8(sp)
    80002950:	01010113          	addi	sp,sp,16
    80002954:	00008067          	ret

0000000080002958 <uartputc>:
    80002958:	00002797          	auipc	a5,0x2
    8000295c:	c407a783          	lw	a5,-960(a5) # 80004598 <panicked>
    80002960:	00078463          	beqz	a5,80002968 <uartputc+0x10>
    80002964:	0000006f          	j	80002964 <uartputc+0xc>
    80002968:	fd010113          	addi	sp,sp,-48
    8000296c:	02813023          	sd	s0,32(sp)
    80002970:	00913c23          	sd	s1,24(sp)
    80002974:	01213823          	sd	s2,16(sp)
    80002978:	01313423          	sd	s3,8(sp)
    8000297c:	02113423          	sd	ra,40(sp)
    80002980:	03010413          	addi	s0,sp,48
    80002984:	00002917          	auipc	s2,0x2
    80002988:	c1c90913          	addi	s2,s2,-996 # 800045a0 <uart_tx_r>
    8000298c:	00093783          	ld	a5,0(s2)
    80002990:	00002497          	auipc	s1,0x2
    80002994:	c1848493          	addi	s1,s1,-1000 # 800045a8 <uart_tx_w>
    80002998:	0004b703          	ld	a4,0(s1)
    8000299c:	02078693          	addi	a3,a5,32
    800029a0:	00050993          	mv	s3,a0
    800029a4:	02e69c63          	bne	a3,a4,800029dc <uartputc+0x84>
    800029a8:	00001097          	auipc	ra,0x1
    800029ac:	834080e7          	jalr	-1996(ra) # 800031dc <push_on>
    800029b0:	00093783          	ld	a5,0(s2)
    800029b4:	0004b703          	ld	a4,0(s1)
    800029b8:	02078793          	addi	a5,a5,32
    800029bc:	00e79463          	bne	a5,a4,800029c4 <uartputc+0x6c>
    800029c0:	0000006f          	j	800029c0 <uartputc+0x68>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	88c080e7          	jalr	-1908(ra) # 80003250 <pop_on>
    800029cc:	00093783          	ld	a5,0(s2)
    800029d0:	0004b703          	ld	a4,0(s1)
    800029d4:	02078693          	addi	a3,a5,32
    800029d8:	fce688e3          	beq	a3,a4,800029a8 <uartputc+0x50>
    800029dc:	01f77693          	andi	a3,a4,31
    800029e0:	00003597          	auipc	a1,0x3
    800029e4:	e3058593          	addi	a1,a1,-464 # 80005810 <uart_tx_buf>
    800029e8:	00d586b3          	add	a3,a1,a3
    800029ec:	00170713          	addi	a4,a4,1
    800029f0:	01368023          	sb	s3,0(a3)
    800029f4:	00e4b023          	sd	a4,0(s1)
    800029f8:	10000637          	lui	a2,0x10000
    800029fc:	02f71063          	bne	a4,a5,80002a1c <uartputc+0xc4>
    80002a00:	0340006f          	j	80002a34 <uartputc+0xdc>
    80002a04:	00074703          	lbu	a4,0(a4)
    80002a08:	00f93023          	sd	a5,0(s2)
    80002a0c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002a10:	00093783          	ld	a5,0(s2)
    80002a14:	0004b703          	ld	a4,0(s1)
    80002a18:	00f70e63          	beq	a4,a5,80002a34 <uartputc+0xdc>
    80002a1c:	00564683          	lbu	a3,5(a2)
    80002a20:	01f7f713          	andi	a4,a5,31
    80002a24:	00e58733          	add	a4,a1,a4
    80002a28:	0206f693          	andi	a3,a3,32
    80002a2c:	00178793          	addi	a5,a5,1
    80002a30:	fc069ae3          	bnez	a3,80002a04 <uartputc+0xac>
    80002a34:	02813083          	ld	ra,40(sp)
    80002a38:	02013403          	ld	s0,32(sp)
    80002a3c:	01813483          	ld	s1,24(sp)
    80002a40:	01013903          	ld	s2,16(sp)
    80002a44:	00813983          	ld	s3,8(sp)
    80002a48:	03010113          	addi	sp,sp,48
    80002a4c:	00008067          	ret

0000000080002a50 <uartputc_sync>:
    80002a50:	ff010113          	addi	sp,sp,-16
    80002a54:	00813423          	sd	s0,8(sp)
    80002a58:	01010413          	addi	s0,sp,16
    80002a5c:	00002717          	auipc	a4,0x2
    80002a60:	b3c72703          	lw	a4,-1220(a4) # 80004598 <panicked>
    80002a64:	02071663          	bnez	a4,80002a90 <uartputc_sync+0x40>
    80002a68:	00050793          	mv	a5,a0
    80002a6c:	100006b7          	lui	a3,0x10000
    80002a70:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002a74:	02077713          	andi	a4,a4,32
    80002a78:	fe070ce3          	beqz	a4,80002a70 <uartputc_sync+0x20>
    80002a7c:	0ff7f793          	andi	a5,a5,255
    80002a80:	00f68023          	sb	a5,0(a3)
    80002a84:	00813403          	ld	s0,8(sp)
    80002a88:	01010113          	addi	sp,sp,16
    80002a8c:	00008067          	ret
    80002a90:	0000006f          	j	80002a90 <uartputc_sync+0x40>

0000000080002a94 <uartstart>:
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00813423          	sd	s0,8(sp)
    80002a9c:	01010413          	addi	s0,sp,16
    80002aa0:	00002617          	auipc	a2,0x2
    80002aa4:	b0060613          	addi	a2,a2,-1280 # 800045a0 <uart_tx_r>
    80002aa8:	00002517          	auipc	a0,0x2
    80002aac:	b0050513          	addi	a0,a0,-1280 # 800045a8 <uart_tx_w>
    80002ab0:	00063783          	ld	a5,0(a2)
    80002ab4:	00053703          	ld	a4,0(a0)
    80002ab8:	04f70263          	beq	a4,a5,80002afc <uartstart+0x68>
    80002abc:	100005b7          	lui	a1,0x10000
    80002ac0:	00003817          	auipc	a6,0x3
    80002ac4:	d5080813          	addi	a6,a6,-688 # 80005810 <uart_tx_buf>
    80002ac8:	01c0006f          	j	80002ae4 <uartstart+0x50>
    80002acc:	0006c703          	lbu	a4,0(a3)
    80002ad0:	00f63023          	sd	a5,0(a2)
    80002ad4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002ad8:	00063783          	ld	a5,0(a2)
    80002adc:	00053703          	ld	a4,0(a0)
    80002ae0:	00f70e63          	beq	a4,a5,80002afc <uartstart+0x68>
    80002ae4:	01f7f713          	andi	a4,a5,31
    80002ae8:	00e806b3          	add	a3,a6,a4
    80002aec:	0055c703          	lbu	a4,5(a1)
    80002af0:	00178793          	addi	a5,a5,1
    80002af4:	02077713          	andi	a4,a4,32
    80002af8:	fc071ae3          	bnez	a4,80002acc <uartstart+0x38>
    80002afc:	00813403          	ld	s0,8(sp)
    80002b00:	01010113          	addi	sp,sp,16
    80002b04:	00008067          	ret

0000000080002b08 <uartgetc>:
    80002b08:	ff010113          	addi	sp,sp,-16
    80002b0c:	00813423          	sd	s0,8(sp)
    80002b10:	01010413          	addi	s0,sp,16
    80002b14:	10000737          	lui	a4,0x10000
    80002b18:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002b1c:	0017f793          	andi	a5,a5,1
    80002b20:	00078c63          	beqz	a5,80002b38 <uartgetc+0x30>
    80002b24:	00074503          	lbu	a0,0(a4)
    80002b28:	0ff57513          	andi	a0,a0,255
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret
    80002b38:	fff00513          	li	a0,-1
    80002b3c:	ff1ff06f          	j	80002b2c <uartgetc+0x24>

0000000080002b40 <uartintr>:
    80002b40:	100007b7          	lui	a5,0x10000
    80002b44:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002b48:	0017f793          	andi	a5,a5,1
    80002b4c:	0a078463          	beqz	a5,80002bf4 <uartintr+0xb4>
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00913423          	sd	s1,8(sp)
    80002b5c:	00113c23          	sd	ra,24(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	100004b7          	lui	s1,0x10000
    80002b68:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002b6c:	0ff57513          	andi	a0,a0,255
    80002b70:	fffff097          	auipc	ra,0xfffff
    80002b74:	534080e7          	jalr	1332(ra) # 800020a4 <consoleintr>
    80002b78:	0054c783          	lbu	a5,5(s1)
    80002b7c:	0017f793          	andi	a5,a5,1
    80002b80:	fe0794e3          	bnez	a5,80002b68 <uartintr+0x28>
    80002b84:	00002617          	auipc	a2,0x2
    80002b88:	a1c60613          	addi	a2,a2,-1508 # 800045a0 <uart_tx_r>
    80002b8c:	00002517          	auipc	a0,0x2
    80002b90:	a1c50513          	addi	a0,a0,-1508 # 800045a8 <uart_tx_w>
    80002b94:	00063783          	ld	a5,0(a2)
    80002b98:	00053703          	ld	a4,0(a0)
    80002b9c:	04f70263          	beq	a4,a5,80002be0 <uartintr+0xa0>
    80002ba0:	100005b7          	lui	a1,0x10000
    80002ba4:	00003817          	auipc	a6,0x3
    80002ba8:	c6c80813          	addi	a6,a6,-916 # 80005810 <uart_tx_buf>
    80002bac:	01c0006f          	j	80002bc8 <uartintr+0x88>
    80002bb0:	0006c703          	lbu	a4,0(a3)
    80002bb4:	00f63023          	sd	a5,0(a2)
    80002bb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bbc:	00063783          	ld	a5,0(a2)
    80002bc0:	00053703          	ld	a4,0(a0)
    80002bc4:	00f70e63          	beq	a4,a5,80002be0 <uartintr+0xa0>
    80002bc8:	01f7f713          	andi	a4,a5,31
    80002bcc:	00e806b3          	add	a3,a6,a4
    80002bd0:	0055c703          	lbu	a4,5(a1)
    80002bd4:	00178793          	addi	a5,a5,1
    80002bd8:	02077713          	andi	a4,a4,32
    80002bdc:	fc071ae3          	bnez	a4,80002bb0 <uartintr+0x70>
    80002be0:	01813083          	ld	ra,24(sp)
    80002be4:	01013403          	ld	s0,16(sp)
    80002be8:	00813483          	ld	s1,8(sp)
    80002bec:	02010113          	addi	sp,sp,32
    80002bf0:	00008067          	ret
    80002bf4:	00002617          	auipc	a2,0x2
    80002bf8:	9ac60613          	addi	a2,a2,-1620 # 800045a0 <uart_tx_r>
    80002bfc:	00002517          	auipc	a0,0x2
    80002c00:	9ac50513          	addi	a0,a0,-1620 # 800045a8 <uart_tx_w>
    80002c04:	00063783          	ld	a5,0(a2)
    80002c08:	00053703          	ld	a4,0(a0)
    80002c0c:	04f70263          	beq	a4,a5,80002c50 <uartintr+0x110>
    80002c10:	100005b7          	lui	a1,0x10000
    80002c14:	00003817          	auipc	a6,0x3
    80002c18:	bfc80813          	addi	a6,a6,-1028 # 80005810 <uart_tx_buf>
    80002c1c:	01c0006f          	j	80002c38 <uartintr+0xf8>
    80002c20:	0006c703          	lbu	a4,0(a3)
    80002c24:	00f63023          	sd	a5,0(a2)
    80002c28:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002c2c:	00063783          	ld	a5,0(a2)
    80002c30:	00053703          	ld	a4,0(a0)
    80002c34:	02f70063          	beq	a4,a5,80002c54 <uartintr+0x114>
    80002c38:	01f7f713          	andi	a4,a5,31
    80002c3c:	00e806b3          	add	a3,a6,a4
    80002c40:	0055c703          	lbu	a4,5(a1)
    80002c44:	00178793          	addi	a5,a5,1
    80002c48:	02077713          	andi	a4,a4,32
    80002c4c:	fc071ae3          	bnez	a4,80002c20 <uartintr+0xe0>
    80002c50:	00008067          	ret
    80002c54:	00008067          	ret

0000000080002c58 <kinit>:
    80002c58:	fc010113          	addi	sp,sp,-64
    80002c5c:	02913423          	sd	s1,40(sp)
    80002c60:	fffff7b7          	lui	a5,0xfffff
    80002c64:	00004497          	auipc	s1,0x4
    80002c68:	bdb48493          	addi	s1,s1,-1061 # 8000683f <end+0xfff>
    80002c6c:	02813823          	sd	s0,48(sp)
    80002c70:	01313c23          	sd	s3,24(sp)
    80002c74:	00f4f4b3          	and	s1,s1,a5
    80002c78:	02113c23          	sd	ra,56(sp)
    80002c7c:	03213023          	sd	s2,32(sp)
    80002c80:	01413823          	sd	s4,16(sp)
    80002c84:	01513423          	sd	s5,8(sp)
    80002c88:	04010413          	addi	s0,sp,64
    80002c8c:	000017b7          	lui	a5,0x1
    80002c90:	01100993          	li	s3,17
    80002c94:	00f487b3          	add	a5,s1,a5
    80002c98:	01b99993          	slli	s3,s3,0x1b
    80002c9c:	06f9e063          	bltu	s3,a5,80002cfc <kinit+0xa4>
    80002ca0:	00003a97          	auipc	s5,0x3
    80002ca4:	ba0a8a93          	addi	s5,s5,-1120 # 80005840 <end>
    80002ca8:	0754ec63          	bltu	s1,s5,80002d20 <kinit+0xc8>
    80002cac:	0734fa63          	bgeu	s1,s3,80002d20 <kinit+0xc8>
    80002cb0:	00088a37          	lui	s4,0x88
    80002cb4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002cb8:	00002917          	auipc	s2,0x2
    80002cbc:	8f890913          	addi	s2,s2,-1800 # 800045b0 <kmem>
    80002cc0:	00ca1a13          	slli	s4,s4,0xc
    80002cc4:	0140006f          	j	80002cd8 <kinit+0x80>
    80002cc8:	000017b7          	lui	a5,0x1
    80002ccc:	00f484b3          	add	s1,s1,a5
    80002cd0:	0554e863          	bltu	s1,s5,80002d20 <kinit+0xc8>
    80002cd4:	0534f663          	bgeu	s1,s3,80002d20 <kinit+0xc8>
    80002cd8:	00001637          	lui	a2,0x1
    80002cdc:	00100593          	li	a1,1
    80002ce0:	00048513          	mv	a0,s1
    80002ce4:	00000097          	auipc	ra,0x0
    80002ce8:	5e4080e7          	jalr	1508(ra) # 800032c8 <__memset>
    80002cec:	00093783          	ld	a5,0(s2)
    80002cf0:	00f4b023          	sd	a5,0(s1)
    80002cf4:	00993023          	sd	s1,0(s2)
    80002cf8:	fd4498e3          	bne	s1,s4,80002cc8 <kinit+0x70>
    80002cfc:	03813083          	ld	ra,56(sp)
    80002d00:	03013403          	ld	s0,48(sp)
    80002d04:	02813483          	ld	s1,40(sp)
    80002d08:	02013903          	ld	s2,32(sp)
    80002d0c:	01813983          	ld	s3,24(sp)
    80002d10:	01013a03          	ld	s4,16(sp)
    80002d14:	00813a83          	ld	s5,8(sp)
    80002d18:	04010113          	addi	sp,sp,64
    80002d1c:	00008067          	ret
    80002d20:	00001517          	auipc	a0,0x1
    80002d24:	46050513          	addi	a0,a0,1120 # 80004180 <digits+0x18>
    80002d28:	fffff097          	auipc	ra,0xfffff
    80002d2c:	4b4080e7          	jalr	1204(ra) # 800021dc <panic>

0000000080002d30 <freerange>:
    80002d30:	fc010113          	addi	sp,sp,-64
    80002d34:	000017b7          	lui	a5,0x1
    80002d38:	02913423          	sd	s1,40(sp)
    80002d3c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002d40:	009504b3          	add	s1,a0,s1
    80002d44:	fffff537          	lui	a0,0xfffff
    80002d48:	02813823          	sd	s0,48(sp)
    80002d4c:	02113c23          	sd	ra,56(sp)
    80002d50:	03213023          	sd	s2,32(sp)
    80002d54:	01313c23          	sd	s3,24(sp)
    80002d58:	01413823          	sd	s4,16(sp)
    80002d5c:	01513423          	sd	s5,8(sp)
    80002d60:	01613023          	sd	s6,0(sp)
    80002d64:	04010413          	addi	s0,sp,64
    80002d68:	00a4f4b3          	and	s1,s1,a0
    80002d6c:	00f487b3          	add	a5,s1,a5
    80002d70:	06f5e463          	bltu	a1,a5,80002dd8 <freerange+0xa8>
    80002d74:	00003a97          	auipc	s5,0x3
    80002d78:	acca8a93          	addi	s5,s5,-1332 # 80005840 <end>
    80002d7c:	0954e263          	bltu	s1,s5,80002e00 <freerange+0xd0>
    80002d80:	01100993          	li	s3,17
    80002d84:	01b99993          	slli	s3,s3,0x1b
    80002d88:	0734fc63          	bgeu	s1,s3,80002e00 <freerange+0xd0>
    80002d8c:	00058a13          	mv	s4,a1
    80002d90:	00002917          	auipc	s2,0x2
    80002d94:	82090913          	addi	s2,s2,-2016 # 800045b0 <kmem>
    80002d98:	00002b37          	lui	s6,0x2
    80002d9c:	0140006f          	j	80002db0 <freerange+0x80>
    80002da0:	000017b7          	lui	a5,0x1
    80002da4:	00f484b3          	add	s1,s1,a5
    80002da8:	0554ec63          	bltu	s1,s5,80002e00 <freerange+0xd0>
    80002dac:	0534fa63          	bgeu	s1,s3,80002e00 <freerange+0xd0>
    80002db0:	00001637          	lui	a2,0x1
    80002db4:	00100593          	li	a1,1
    80002db8:	00048513          	mv	a0,s1
    80002dbc:	00000097          	auipc	ra,0x0
    80002dc0:	50c080e7          	jalr	1292(ra) # 800032c8 <__memset>
    80002dc4:	00093703          	ld	a4,0(s2)
    80002dc8:	016487b3          	add	a5,s1,s6
    80002dcc:	00e4b023          	sd	a4,0(s1)
    80002dd0:	00993023          	sd	s1,0(s2)
    80002dd4:	fcfa76e3          	bgeu	s4,a5,80002da0 <freerange+0x70>
    80002dd8:	03813083          	ld	ra,56(sp)
    80002ddc:	03013403          	ld	s0,48(sp)
    80002de0:	02813483          	ld	s1,40(sp)
    80002de4:	02013903          	ld	s2,32(sp)
    80002de8:	01813983          	ld	s3,24(sp)
    80002dec:	01013a03          	ld	s4,16(sp)
    80002df0:	00813a83          	ld	s5,8(sp)
    80002df4:	00013b03          	ld	s6,0(sp)
    80002df8:	04010113          	addi	sp,sp,64
    80002dfc:	00008067          	ret
    80002e00:	00001517          	auipc	a0,0x1
    80002e04:	38050513          	addi	a0,a0,896 # 80004180 <digits+0x18>
    80002e08:	fffff097          	auipc	ra,0xfffff
    80002e0c:	3d4080e7          	jalr	980(ra) # 800021dc <panic>

0000000080002e10 <kfree>:
    80002e10:	fe010113          	addi	sp,sp,-32
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00113c23          	sd	ra,24(sp)
    80002e1c:	00913423          	sd	s1,8(sp)
    80002e20:	02010413          	addi	s0,sp,32
    80002e24:	03451793          	slli	a5,a0,0x34
    80002e28:	04079c63          	bnez	a5,80002e80 <kfree+0x70>
    80002e2c:	00003797          	auipc	a5,0x3
    80002e30:	a1478793          	addi	a5,a5,-1516 # 80005840 <end>
    80002e34:	00050493          	mv	s1,a0
    80002e38:	04f56463          	bltu	a0,a5,80002e80 <kfree+0x70>
    80002e3c:	01100793          	li	a5,17
    80002e40:	01b79793          	slli	a5,a5,0x1b
    80002e44:	02f57e63          	bgeu	a0,a5,80002e80 <kfree+0x70>
    80002e48:	00001637          	lui	a2,0x1
    80002e4c:	00100593          	li	a1,1
    80002e50:	00000097          	auipc	ra,0x0
    80002e54:	478080e7          	jalr	1144(ra) # 800032c8 <__memset>
    80002e58:	00001797          	auipc	a5,0x1
    80002e5c:	75878793          	addi	a5,a5,1880 # 800045b0 <kmem>
    80002e60:	0007b703          	ld	a4,0(a5)
    80002e64:	01813083          	ld	ra,24(sp)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	00e4b023          	sd	a4,0(s1)
    80002e70:	0097b023          	sd	s1,0(a5)
    80002e74:	00813483          	ld	s1,8(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret
    80002e80:	00001517          	auipc	a0,0x1
    80002e84:	30050513          	addi	a0,a0,768 # 80004180 <digits+0x18>
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	354080e7          	jalr	852(ra) # 800021dc <panic>

0000000080002e90 <kalloc>:
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00913423          	sd	s1,8(sp)
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	00001797          	auipc	a5,0x1
    80002ea8:	70c78793          	addi	a5,a5,1804 # 800045b0 <kmem>
    80002eac:	0007b483          	ld	s1,0(a5)
    80002eb0:	02048063          	beqz	s1,80002ed0 <kalloc+0x40>
    80002eb4:	0004b703          	ld	a4,0(s1)
    80002eb8:	00001637          	lui	a2,0x1
    80002ebc:	00500593          	li	a1,5
    80002ec0:	00048513          	mv	a0,s1
    80002ec4:	00e7b023          	sd	a4,0(a5)
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	400080e7          	jalr	1024(ra) # 800032c8 <__memset>
    80002ed0:	01813083          	ld	ra,24(sp)
    80002ed4:	01013403          	ld	s0,16(sp)
    80002ed8:	00048513          	mv	a0,s1
    80002edc:	00813483          	ld	s1,8(sp)
    80002ee0:	02010113          	addi	sp,sp,32
    80002ee4:	00008067          	ret

0000000080002ee8 <initlock>:
    80002ee8:	ff010113          	addi	sp,sp,-16
    80002eec:	00813423          	sd	s0,8(sp)
    80002ef0:	01010413          	addi	s0,sp,16
    80002ef4:	00813403          	ld	s0,8(sp)
    80002ef8:	00b53423          	sd	a1,8(a0)
    80002efc:	00052023          	sw	zero,0(a0)
    80002f00:	00053823          	sd	zero,16(a0)
    80002f04:	01010113          	addi	sp,sp,16
    80002f08:	00008067          	ret

0000000080002f0c <acquire>:
    80002f0c:	fe010113          	addi	sp,sp,-32
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	00113c23          	sd	ra,24(sp)
    80002f1c:	01213023          	sd	s2,0(sp)
    80002f20:	02010413          	addi	s0,sp,32
    80002f24:	00050493          	mv	s1,a0
    80002f28:	10002973          	csrr	s2,sstatus
    80002f2c:	100027f3          	csrr	a5,sstatus
    80002f30:	ffd7f793          	andi	a5,a5,-3
    80002f34:	10079073          	csrw	sstatus,a5
    80002f38:	fffff097          	auipc	ra,0xfffff
    80002f3c:	8e8080e7          	jalr	-1816(ra) # 80001820 <mycpu>
    80002f40:	07852783          	lw	a5,120(a0)
    80002f44:	06078e63          	beqz	a5,80002fc0 <acquire+0xb4>
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	8d8080e7          	jalr	-1832(ra) # 80001820 <mycpu>
    80002f50:	07852783          	lw	a5,120(a0)
    80002f54:	0004a703          	lw	a4,0(s1)
    80002f58:	0017879b          	addiw	a5,a5,1
    80002f5c:	06f52c23          	sw	a5,120(a0)
    80002f60:	04071063          	bnez	a4,80002fa0 <acquire+0x94>
    80002f64:	00100713          	li	a4,1
    80002f68:	00070793          	mv	a5,a4
    80002f6c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002f70:	0007879b          	sext.w	a5,a5
    80002f74:	fe079ae3          	bnez	a5,80002f68 <acquire+0x5c>
    80002f78:	0ff0000f          	fence
    80002f7c:	fffff097          	auipc	ra,0xfffff
    80002f80:	8a4080e7          	jalr	-1884(ra) # 80001820 <mycpu>
    80002f84:	01813083          	ld	ra,24(sp)
    80002f88:	01013403          	ld	s0,16(sp)
    80002f8c:	00a4b823          	sd	a0,16(s1)
    80002f90:	00013903          	ld	s2,0(sp)
    80002f94:	00813483          	ld	s1,8(sp)
    80002f98:	02010113          	addi	sp,sp,32
    80002f9c:	00008067          	ret
    80002fa0:	0104b903          	ld	s2,16(s1)
    80002fa4:	fffff097          	auipc	ra,0xfffff
    80002fa8:	87c080e7          	jalr	-1924(ra) # 80001820 <mycpu>
    80002fac:	faa91ce3          	bne	s2,a0,80002f64 <acquire+0x58>
    80002fb0:	00001517          	auipc	a0,0x1
    80002fb4:	1d850513          	addi	a0,a0,472 # 80004188 <digits+0x20>
    80002fb8:	fffff097          	auipc	ra,0xfffff
    80002fbc:	224080e7          	jalr	548(ra) # 800021dc <panic>
    80002fc0:	00195913          	srli	s2,s2,0x1
    80002fc4:	fffff097          	auipc	ra,0xfffff
    80002fc8:	85c080e7          	jalr	-1956(ra) # 80001820 <mycpu>
    80002fcc:	00197913          	andi	s2,s2,1
    80002fd0:	07252e23          	sw	s2,124(a0)
    80002fd4:	f75ff06f          	j	80002f48 <acquire+0x3c>

0000000080002fd8 <release>:
    80002fd8:	fe010113          	addi	sp,sp,-32
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00113c23          	sd	ra,24(sp)
    80002fe4:	00913423          	sd	s1,8(sp)
    80002fe8:	01213023          	sd	s2,0(sp)
    80002fec:	02010413          	addi	s0,sp,32
    80002ff0:	00052783          	lw	a5,0(a0)
    80002ff4:	00079a63          	bnez	a5,80003008 <release+0x30>
    80002ff8:	00001517          	auipc	a0,0x1
    80002ffc:	19850513          	addi	a0,a0,408 # 80004190 <digits+0x28>
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	1dc080e7          	jalr	476(ra) # 800021dc <panic>
    80003008:	01053903          	ld	s2,16(a0)
    8000300c:	00050493          	mv	s1,a0
    80003010:	fffff097          	auipc	ra,0xfffff
    80003014:	810080e7          	jalr	-2032(ra) # 80001820 <mycpu>
    80003018:	fea910e3          	bne	s2,a0,80002ff8 <release+0x20>
    8000301c:	0004b823          	sd	zero,16(s1)
    80003020:	0ff0000f          	fence
    80003024:	0f50000f          	fence	iorw,ow
    80003028:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	7f4080e7          	jalr	2036(ra) # 80001820 <mycpu>
    80003034:	100027f3          	csrr	a5,sstatus
    80003038:	0027f793          	andi	a5,a5,2
    8000303c:	04079a63          	bnez	a5,80003090 <release+0xb8>
    80003040:	07852783          	lw	a5,120(a0)
    80003044:	02f05e63          	blez	a5,80003080 <release+0xa8>
    80003048:	fff7871b          	addiw	a4,a5,-1
    8000304c:	06e52c23          	sw	a4,120(a0)
    80003050:	00071c63          	bnez	a4,80003068 <release+0x90>
    80003054:	07c52783          	lw	a5,124(a0)
    80003058:	00078863          	beqz	a5,80003068 <release+0x90>
    8000305c:	100027f3          	csrr	a5,sstatus
    80003060:	0027e793          	ori	a5,a5,2
    80003064:	10079073          	csrw	sstatus,a5
    80003068:	01813083          	ld	ra,24(sp)
    8000306c:	01013403          	ld	s0,16(sp)
    80003070:	00813483          	ld	s1,8(sp)
    80003074:	00013903          	ld	s2,0(sp)
    80003078:	02010113          	addi	sp,sp,32
    8000307c:	00008067          	ret
    80003080:	00001517          	auipc	a0,0x1
    80003084:	13050513          	addi	a0,a0,304 # 800041b0 <digits+0x48>
    80003088:	fffff097          	auipc	ra,0xfffff
    8000308c:	154080e7          	jalr	340(ra) # 800021dc <panic>
    80003090:	00001517          	auipc	a0,0x1
    80003094:	10850513          	addi	a0,a0,264 # 80004198 <digits+0x30>
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	144080e7          	jalr	324(ra) # 800021dc <panic>

00000000800030a0 <holding>:
    800030a0:	00052783          	lw	a5,0(a0)
    800030a4:	00079663          	bnez	a5,800030b0 <holding+0x10>
    800030a8:	00000513          	li	a0,0
    800030ac:	00008067          	ret
    800030b0:	fe010113          	addi	sp,sp,-32
    800030b4:	00813823          	sd	s0,16(sp)
    800030b8:	00913423          	sd	s1,8(sp)
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	01053483          	ld	s1,16(a0)
    800030c8:	ffffe097          	auipc	ra,0xffffe
    800030cc:	758080e7          	jalr	1880(ra) # 80001820 <mycpu>
    800030d0:	01813083          	ld	ra,24(sp)
    800030d4:	01013403          	ld	s0,16(sp)
    800030d8:	40a48533          	sub	a0,s1,a0
    800030dc:	00153513          	seqz	a0,a0
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	02010113          	addi	sp,sp,32
    800030e8:	00008067          	ret

00000000800030ec <push_off>:
    800030ec:	fe010113          	addi	sp,sp,-32
    800030f0:	00813823          	sd	s0,16(sp)
    800030f4:	00113c23          	sd	ra,24(sp)
    800030f8:	00913423          	sd	s1,8(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	100024f3          	csrr	s1,sstatus
    80003104:	100027f3          	csrr	a5,sstatus
    80003108:	ffd7f793          	andi	a5,a5,-3
    8000310c:	10079073          	csrw	sstatus,a5
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	710080e7          	jalr	1808(ra) # 80001820 <mycpu>
    80003118:	07852783          	lw	a5,120(a0)
    8000311c:	02078663          	beqz	a5,80003148 <push_off+0x5c>
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	700080e7          	jalr	1792(ra) # 80001820 <mycpu>
    80003128:	07852783          	lw	a5,120(a0)
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	0017879b          	addiw	a5,a5,1
    80003138:	06f52c23          	sw	a5,120(a0)
    8000313c:	00813483          	ld	s1,8(sp)
    80003140:	02010113          	addi	sp,sp,32
    80003144:	00008067          	ret
    80003148:	0014d493          	srli	s1,s1,0x1
    8000314c:	ffffe097          	auipc	ra,0xffffe
    80003150:	6d4080e7          	jalr	1748(ra) # 80001820 <mycpu>
    80003154:	0014f493          	andi	s1,s1,1
    80003158:	06952e23          	sw	s1,124(a0)
    8000315c:	fc5ff06f          	j	80003120 <push_off+0x34>

0000000080003160 <pop_off>:
    80003160:	ff010113          	addi	sp,sp,-16
    80003164:	00813023          	sd	s0,0(sp)
    80003168:	00113423          	sd	ra,8(sp)
    8000316c:	01010413          	addi	s0,sp,16
    80003170:	ffffe097          	auipc	ra,0xffffe
    80003174:	6b0080e7          	jalr	1712(ra) # 80001820 <mycpu>
    80003178:	100027f3          	csrr	a5,sstatus
    8000317c:	0027f793          	andi	a5,a5,2
    80003180:	04079663          	bnez	a5,800031cc <pop_off+0x6c>
    80003184:	07852783          	lw	a5,120(a0)
    80003188:	02f05a63          	blez	a5,800031bc <pop_off+0x5c>
    8000318c:	fff7871b          	addiw	a4,a5,-1
    80003190:	06e52c23          	sw	a4,120(a0)
    80003194:	00071c63          	bnez	a4,800031ac <pop_off+0x4c>
    80003198:	07c52783          	lw	a5,124(a0)
    8000319c:	00078863          	beqz	a5,800031ac <pop_off+0x4c>
    800031a0:	100027f3          	csrr	a5,sstatus
    800031a4:	0027e793          	ori	a5,a5,2
    800031a8:	10079073          	csrw	sstatus,a5
    800031ac:	00813083          	ld	ra,8(sp)
    800031b0:	00013403          	ld	s0,0(sp)
    800031b4:	01010113          	addi	sp,sp,16
    800031b8:	00008067          	ret
    800031bc:	00001517          	auipc	a0,0x1
    800031c0:	ff450513          	addi	a0,a0,-12 # 800041b0 <digits+0x48>
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	018080e7          	jalr	24(ra) # 800021dc <panic>
    800031cc:	00001517          	auipc	a0,0x1
    800031d0:	fcc50513          	addi	a0,a0,-52 # 80004198 <digits+0x30>
    800031d4:	fffff097          	auipc	ra,0xfffff
    800031d8:	008080e7          	jalr	8(ra) # 800021dc <panic>

00000000800031dc <push_on>:
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	02010413          	addi	s0,sp,32
    800031f0:	100024f3          	csrr	s1,sstatus
    800031f4:	100027f3          	csrr	a5,sstatus
    800031f8:	0027e793          	ori	a5,a5,2
    800031fc:	10079073          	csrw	sstatus,a5
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	620080e7          	jalr	1568(ra) # 80001820 <mycpu>
    80003208:	07852783          	lw	a5,120(a0)
    8000320c:	02078663          	beqz	a5,80003238 <push_on+0x5c>
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	610080e7          	jalr	1552(ra) # 80001820 <mycpu>
    80003218:	07852783          	lw	a5,120(a0)
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	0017879b          	addiw	a5,a5,1
    80003228:	06f52c23          	sw	a5,120(a0)
    8000322c:	00813483          	ld	s1,8(sp)
    80003230:	02010113          	addi	sp,sp,32
    80003234:	00008067          	ret
    80003238:	0014d493          	srli	s1,s1,0x1
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	5e4080e7          	jalr	1508(ra) # 80001820 <mycpu>
    80003244:	0014f493          	andi	s1,s1,1
    80003248:	06952e23          	sw	s1,124(a0)
    8000324c:	fc5ff06f          	j	80003210 <push_on+0x34>

0000000080003250 <pop_on>:
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813023          	sd	s0,0(sp)
    80003258:	00113423          	sd	ra,8(sp)
    8000325c:	01010413          	addi	s0,sp,16
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	5c0080e7          	jalr	1472(ra) # 80001820 <mycpu>
    80003268:	100027f3          	csrr	a5,sstatus
    8000326c:	0027f793          	andi	a5,a5,2
    80003270:	04078463          	beqz	a5,800032b8 <pop_on+0x68>
    80003274:	07852783          	lw	a5,120(a0)
    80003278:	02f05863          	blez	a5,800032a8 <pop_on+0x58>
    8000327c:	fff7879b          	addiw	a5,a5,-1
    80003280:	06f52c23          	sw	a5,120(a0)
    80003284:	07853783          	ld	a5,120(a0)
    80003288:	00079863          	bnez	a5,80003298 <pop_on+0x48>
    8000328c:	100027f3          	csrr	a5,sstatus
    80003290:	ffd7f793          	andi	a5,a5,-3
    80003294:	10079073          	csrw	sstatus,a5
    80003298:	00813083          	ld	ra,8(sp)
    8000329c:	00013403          	ld	s0,0(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret
    800032a8:	00001517          	auipc	a0,0x1
    800032ac:	f3050513          	addi	a0,a0,-208 # 800041d8 <digits+0x70>
    800032b0:	fffff097          	auipc	ra,0xfffff
    800032b4:	f2c080e7          	jalr	-212(ra) # 800021dc <panic>
    800032b8:	00001517          	auipc	a0,0x1
    800032bc:	f0050513          	addi	a0,a0,-256 # 800041b8 <digits+0x50>
    800032c0:	fffff097          	auipc	ra,0xfffff
    800032c4:	f1c080e7          	jalr	-228(ra) # 800021dc <panic>

00000000800032c8 <__memset>:
    800032c8:	ff010113          	addi	sp,sp,-16
    800032cc:	00813423          	sd	s0,8(sp)
    800032d0:	01010413          	addi	s0,sp,16
    800032d4:	1a060e63          	beqz	a2,80003490 <__memset+0x1c8>
    800032d8:	40a007b3          	neg	a5,a0
    800032dc:	0077f793          	andi	a5,a5,7
    800032e0:	00778693          	addi	a3,a5,7
    800032e4:	00b00813          	li	a6,11
    800032e8:	0ff5f593          	andi	a1,a1,255
    800032ec:	fff6071b          	addiw	a4,a2,-1
    800032f0:	1b06e663          	bltu	a3,a6,8000349c <__memset+0x1d4>
    800032f4:	1cd76463          	bltu	a4,a3,800034bc <__memset+0x1f4>
    800032f8:	1a078e63          	beqz	a5,800034b4 <__memset+0x1ec>
    800032fc:	00b50023          	sb	a1,0(a0)
    80003300:	00100713          	li	a4,1
    80003304:	1ae78463          	beq	a5,a4,800034ac <__memset+0x1e4>
    80003308:	00b500a3          	sb	a1,1(a0)
    8000330c:	00200713          	li	a4,2
    80003310:	1ae78a63          	beq	a5,a4,800034c4 <__memset+0x1fc>
    80003314:	00b50123          	sb	a1,2(a0)
    80003318:	00300713          	li	a4,3
    8000331c:	18e78463          	beq	a5,a4,800034a4 <__memset+0x1dc>
    80003320:	00b501a3          	sb	a1,3(a0)
    80003324:	00400713          	li	a4,4
    80003328:	1ae78263          	beq	a5,a4,800034cc <__memset+0x204>
    8000332c:	00b50223          	sb	a1,4(a0)
    80003330:	00500713          	li	a4,5
    80003334:	1ae78063          	beq	a5,a4,800034d4 <__memset+0x20c>
    80003338:	00b502a3          	sb	a1,5(a0)
    8000333c:	00700713          	li	a4,7
    80003340:	18e79e63          	bne	a5,a4,800034dc <__memset+0x214>
    80003344:	00b50323          	sb	a1,6(a0)
    80003348:	00700e93          	li	t4,7
    8000334c:	00859713          	slli	a4,a1,0x8
    80003350:	00e5e733          	or	a4,a1,a4
    80003354:	01059e13          	slli	t3,a1,0x10
    80003358:	01c76e33          	or	t3,a4,t3
    8000335c:	01859313          	slli	t1,a1,0x18
    80003360:	006e6333          	or	t1,t3,t1
    80003364:	02059893          	slli	a7,a1,0x20
    80003368:	40f60e3b          	subw	t3,a2,a5
    8000336c:	011368b3          	or	a7,t1,a7
    80003370:	02859813          	slli	a6,a1,0x28
    80003374:	0108e833          	or	a6,a7,a6
    80003378:	03059693          	slli	a3,a1,0x30
    8000337c:	003e589b          	srliw	a7,t3,0x3
    80003380:	00d866b3          	or	a3,a6,a3
    80003384:	03859713          	slli	a4,a1,0x38
    80003388:	00389813          	slli	a6,a7,0x3
    8000338c:	00f507b3          	add	a5,a0,a5
    80003390:	00e6e733          	or	a4,a3,a4
    80003394:	000e089b          	sext.w	a7,t3
    80003398:	00f806b3          	add	a3,a6,a5
    8000339c:	00e7b023          	sd	a4,0(a5)
    800033a0:	00878793          	addi	a5,a5,8
    800033a4:	fed79ce3          	bne	a5,a3,8000339c <__memset+0xd4>
    800033a8:	ff8e7793          	andi	a5,t3,-8
    800033ac:	0007871b          	sext.w	a4,a5
    800033b0:	01d787bb          	addw	a5,a5,t4
    800033b4:	0ce88e63          	beq	a7,a4,80003490 <__memset+0x1c8>
    800033b8:	00f50733          	add	a4,a0,a5
    800033bc:	00b70023          	sb	a1,0(a4)
    800033c0:	0017871b          	addiw	a4,a5,1
    800033c4:	0cc77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    800033c8:	00e50733          	add	a4,a0,a4
    800033cc:	00b70023          	sb	a1,0(a4)
    800033d0:	0027871b          	addiw	a4,a5,2
    800033d4:	0ac77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    800033d8:	00e50733          	add	a4,a0,a4
    800033dc:	00b70023          	sb	a1,0(a4)
    800033e0:	0037871b          	addiw	a4,a5,3
    800033e4:	0ac77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    800033e8:	00e50733          	add	a4,a0,a4
    800033ec:	00b70023          	sb	a1,0(a4)
    800033f0:	0047871b          	addiw	a4,a5,4
    800033f4:	08c77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    800033f8:	00e50733          	add	a4,a0,a4
    800033fc:	00b70023          	sb	a1,0(a4)
    80003400:	0057871b          	addiw	a4,a5,5
    80003404:	08c77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003408:	00e50733          	add	a4,a0,a4
    8000340c:	00b70023          	sb	a1,0(a4)
    80003410:	0067871b          	addiw	a4,a5,6
    80003414:	06c77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003418:	00e50733          	add	a4,a0,a4
    8000341c:	00b70023          	sb	a1,0(a4)
    80003420:	0077871b          	addiw	a4,a5,7
    80003424:	06c77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003428:	00e50733          	add	a4,a0,a4
    8000342c:	00b70023          	sb	a1,0(a4)
    80003430:	0087871b          	addiw	a4,a5,8
    80003434:	04c77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003438:	00e50733          	add	a4,a0,a4
    8000343c:	00b70023          	sb	a1,0(a4)
    80003440:	0097871b          	addiw	a4,a5,9
    80003444:	04c77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003448:	00e50733          	add	a4,a0,a4
    8000344c:	00b70023          	sb	a1,0(a4)
    80003450:	00a7871b          	addiw	a4,a5,10
    80003454:	02c77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003458:	00e50733          	add	a4,a0,a4
    8000345c:	00b70023          	sb	a1,0(a4)
    80003460:	00b7871b          	addiw	a4,a5,11
    80003464:	02c77663          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003468:	00e50733          	add	a4,a0,a4
    8000346c:	00b70023          	sb	a1,0(a4)
    80003470:	00c7871b          	addiw	a4,a5,12
    80003474:	00c77e63          	bgeu	a4,a2,80003490 <__memset+0x1c8>
    80003478:	00e50733          	add	a4,a0,a4
    8000347c:	00b70023          	sb	a1,0(a4)
    80003480:	00d7879b          	addiw	a5,a5,13
    80003484:	00c7f663          	bgeu	a5,a2,80003490 <__memset+0x1c8>
    80003488:	00f507b3          	add	a5,a0,a5
    8000348c:	00b78023          	sb	a1,0(a5)
    80003490:	00813403          	ld	s0,8(sp)
    80003494:	01010113          	addi	sp,sp,16
    80003498:	00008067          	ret
    8000349c:	00b00693          	li	a3,11
    800034a0:	e55ff06f          	j	800032f4 <__memset+0x2c>
    800034a4:	00300e93          	li	t4,3
    800034a8:	ea5ff06f          	j	8000334c <__memset+0x84>
    800034ac:	00100e93          	li	t4,1
    800034b0:	e9dff06f          	j	8000334c <__memset+0x84>
    800034b4:	00000e93          	li	t4,0
    800034b8:	e95ff06f          	j	8000334c <__memset+0x84>
    800034bc:	00000793          	li	a5,0
    800034c0:	ef9ff06f          	j	800033b8 <__memset+0xf0>
    800034c4:	00200e93          	li	t4,2
    800034c8:	e85ff06f          	j	8000334c <__memset+0x84>
    800034cc:	00400e93          	li	t4,4
    800034d0:	e7dff06f          	j	8000334c <__memset+0x84>
    800034d4:	00500e93          	li	t4,5
    800034d8:	e75ff06f          	j	8000334c <__memset+0x84>
    800034dc:	00600e93          	li	t4,6
    800034e0:	e6dff06f          	j	8000334c <__memset+0x84>

00000000800034e4 <__memmove>:
    800034e4:	ff010113          	addi	sp,sp,-16
    800034e8:	00813423          	sd	s0,8(sp)
    800034ec:	01010413          	addi	s0,sp,16
    800034f0:	0e060863          	beqz	a2,800035e0 <__memmove+0xfc>
    800034f4:	fff6069b          	addiw	a3,a2,-1
    800034f8:	0006881b          	sext.w	a6,a3
    800034fc:	0ea5e863          	bltu	a1,a0,800035ec <__memmove+0x108>
    80003500:	00758713          	addi	a4,a1,7
    80003504:	00a5e7b3          	or	a5,a1,a0
    80003508:	40a70733          	sub	a4,a4,a0
    8000350c:	0077f793          	andi	a5,a5,7
    80003510:	00f73713          	sltiu	a4,a4,15
    80003514:	00174713          	xori	a4,a4,1
    80003518:	0017b793          	seqz	a5,a5
    8000351c:	00e7f7b3          	and	a5,a5,a4
    80003520:	10078863          	beqz	a5,80003630 <__memmove+0x14c>
    80003524:	00900793          	li	a5,9
    80003528:	1107f463          	bgeu	a5,a6,80003630 <__memmove+0x14c>
    8000352c:	0036581b          	srliw	a6,a2,0x3
    80003530:	fff8081b          	addiw	a6,a6,-1
    80003534:	02081813          	slli	a6,a6,0x20
    80003538:	01d85893          	srli	a7,a6,0x1d
    8000353c:	00858813          	addi	a6,a1,8
    80003540:	00058793          	mv	a5,a1
    80003544:	00050713          	mv	a4,a0
    80003548:	01088833          	add	a6,a7,a6
    8000354c:	0007b883          	ld	a7,0(a5)
    80003550:	00878793          	addi	a5,a5,8
    80003554:	00870713          	addi	a4,a4,8
    80003558:	ff173c23          	sd	a7,-8(a4)
    8000355c:	ff0798e3          	bne	a5,a6,8000354c <__memmove+0x68>
    80003560:	ff867713          	andi	a4,a2,-8
    80003564:	02071793          	slli	a5,a4,0x20
    80003568:	0207d793          	srli	a5,a5,0x20
    8000356c:	00f585b3          	add	a1,a1,a5
    80003570:	40e686bb          	subw	a3,a3,a4
    80003574:	00f507b3          	add	a5,a0,a5
    80003578:	06e60463          	beq	a2,a4,800035e0 <__memmove+0xfc>
    8000357c:	0005c703          	lbu	a4,0(a1)
    80003580:	00e78023          	sb	a4,0(a5)
    80003584:	04068e63          	beqz	a3,800035e0 <__memmove+0xfc>
    80003588:	0015c603          	lbu	a2,1(a1)
    8000358c:	00100713          	li	a4,1
    80003590:	00c780a3          	sb	a2,1(a5)
    80003594:	04e68663          	beq	a3,a4,800035e0 <__memmove+0xfc>
    80003598:	0025c603          	lbu	a2,2(a1)
    8000359c:	00200713          	li	a4,2
    800035a0:	00c78123          	sb	a2,2(a5)
    800035a4:	02e68e63          	beq	a3,a4,800035e0 <__memmove+0xfc>
    800035a8:	0035c603          	lbu	a2,3(a1)
    800035ac:	00300713          	li	a4,3
    800035b0:	00c781a3          	sb	a2,3(a5)
    800035b4:	02e68663          	beq	a3,a4,800035e0 <__memmove+0xfc>
    800035b8:	0045c603          	lbu	a2,4(a1)
    800035bc:	00400713          	li	a4,4
    800035c0:	00c78223          	sb	a2,4(a5)
    800035c4:	00e68e63          	beq	a3,a4,800035e0 <__memmove+0xfc>
    800035c8:	0055c603          	lbu	a2,5(a1)
    800035cc:	00500713          	li	a4,5
    800035d0:	00c782a3          	sb	a2,5(a5)
    800035d4:	00e68663          	beq	a3,a4,800035e0 <__memmove+0xfc>
    800035d8:	0065c703          	lbu	a4,6(a1)
    800035dc:	00e78323          	sb	a4,6(a5)
    800035e0:	00813403          	ld	s0,8(sp)
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00008067          	ret
    800035ec:	02061713          	slli	a4,a2,0x20
    800035f0:	02075713          	srli	a4,a4,0x20
    800035f4:	00e587b3          	add	a5,a1,a4
    800035f8:	f0f574e3          	bgeu	a0,a5,80003500 <__memmove+0x1c>
    800035fc:	02069613          	slli	a2,a3,0x20
    80003600:	02065613          	srli	a2,a2,0x20
    80003604:	fff64613          	not	a2,a2
    80003608:	00e50733          	add	a4,a0,a4
    8000360c:	00c78633          	add	a2,a5,a2
    80003610:	fff7c683          	lbu	a3,-1(a5)
    80003614:	fff78793          	addi	a5,a5,-1
    80003618:	fff70713          	addi	a4,a4,-1
    8000361c:	00d70023          	sb	a3,0(a4)
    80003620:	fec798e3          	bne	a5,a2,80003610 <__memmove+0x12c>
    80003624:	00813403          	ld	s0,8(sp)
    80003628:	01010113          	addi	sp,sp,16
    8000362c:	00008067          	ret
    80003630:	02069713          	slli	a4,a3,0x20
    80003634:	02075713          	srli	a4,a4,0x20
    80003638:	00170713          	addi	a4,a4,1
    8000363c:	00e50733          	add	a4,a0,a4
    80003640:	00050793          	mv	a5,a0
    80003644:	0005c683          	lbu	a3,0(a1)
    80003648:	00178793          	addi	a5,a5,1
    8000364c:	00158593          	addi	a1,a1,1
    80003650:	fed78fa3          	sb	a3,-1(a5)
    80003654:	fee798e3          	bne	a5,a4,80003644 <__memmove+0x160>
    80003658:	f89ff06f          	j	800035e0 <__memmove+0xfc>

000000008000365c <__mem_free>:
    8000365c:	ff010113          	addi	sp,sp,-16
    80003660:	00813423          	sd	s0,8(sp)
    80003664:	01010413          	addi	s0,sp,16
    80003668:	00001597          	auipc	a1,0x1
    8000366c:	f5058593          	addi	a1,a1,-176 # 800045b8 <freep>
    80003670:	0005b783          	ld	a5,0(a1)
    80003674:	ff050693          	addi	a3,a0,-16
    80003678:	0007b703          	ld	a4,0(a5)
    8000367c:	00d7fc63          	bgeu	a5,a3,80003694 <__mem_free+0x38>
    80003680:	00e6ee63          	bltu	a3,a4,8000369c <__mem_free+0x40>
    80003684:	00e7fc63          	bgeu	a5,a4,8000369c <__mem_free+0x40>
    80003688:	00070793          	mv	a5,a4
    8000368c:	0007b703          	ld	a4,0(a5)
    80003690:	fed7e8e3          	bltu	a5,a3,80003680 <__mem_free+0x24>
    80003694:	fee7eae3          	bltu	a5,a4,80003688 <__mem_free+0x2c>
    80003698:	fee6f8e3          	bgeu	a3,a4,80003688 <__mem_free+0x2c>
    8000369c:	ff852803          	lw	a6,-8(a0)
    800036a0:	02081613          	slli	a2,a6,0x20
    800036a4:	01c65613          	srli	a2,a2,0x1c
    800036a8:	00c68633          	add	a2,a3,a2
    800036ac:	02c70a63          	beq	a4,a2,800036e0 <__mem_free+0x84>
    800036b0:	fee53823          	sd	a4,-16(a0)
    800036b4:	0087a503          	lw	a0,8(a5)
    800036b8:	02051613          	slli	a2,a0,0x20
    800036bc:	01c65613          	srli	a2,a2,0x1c
    800036c0:	00c78633          	add	a2,a5,a2
    800036c4:	04c68263          	beq	a3,a2,80003708 <__mem_free+0xac>
    800036c8:	00813403          	ld	s0,8(sp)
    800036cc:	00d7b023          	sd	a3,0(a5)
    800036d0:	00f5b023          	sd	a5,0(a1)
    800036d4:	00000513          	li	a0,0
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret
    800036e0:	00872603          	lw	a2,8(a4)
    800036e4:	00073703          	ld	a4,0(a4)
    800036e8:	0106083b          	addw	a6,a2,a6
    800036ec:	ff052c23          	sw	a6,-8(a0)
    800036f0:	fee53823          	sd	a4,-16(a0)
    800036f4:	0087a503          	lw	a0,8(a5)
    800036f8:	02051613          	slli	a2,a0,0x20
    800036fc:	01c65613          	srli	a2,a2,0x1c
    80003700:	00c78633          	add	a2,a5,a2
    80003704:	fcc692e3          	bne	a3,a2,800036c8 <__mem_free+0x6c>
    80003708:	00813403          	ld	s0,8(sp)
    8000370c:	0105053b          	addw	a0,a0,a6
    80003710:	00a7a423          	sw	a0,8(a5)
    80003714:	00e7b023          	sd	a4,0(a5)
    80003718:	00f5b023          	sd	a5,0(a1)
    8000371c:	00000513          	li	a0,0
    80003720:	01010113          	addi	sp,sp,16
    80003724:	00008067          	ret

0000000080003728 <__mem_alloc>:
    80003728:	fc010113          	addi	sp,sp,-64
    8000372c:	02813823          	sd	s0,48(sp)
    80003730:	02913423          	sd	s1,40(sp)
    80003734:	03213023          	sd	s2,32(sp)
    80003738:	01513423          	sd	s5,8(sp)
    8000373c:	02113c23          	sd	ra,56(sp)
    80003740:	01313c23          	sd	s3,24(sp)
    80003744:	01413823          	sd	s4,16(sp)
    80003748:	01613023          	sd	s6,0(sp)
    8000374c:	04010413          	addi	s0,sp,64
    80003750:	00001a97          	auipc	s5,0x1
    80003754:	e68a8a93          	addi	s5,s5,-408 # 800045b8 <freep>
    80003758:	00f50913          	addi	s2,a0,15
    8000375c:	000ab683          	ld	a3,0(s5)
    80003760:	00495913          	srli	s2,s2,0x4
    80003764:	0019049b          	addiw	s1,s2,1
    80003768:	00048913          	mv	s2,s1
    8000376c:	0c068c63          	beqz	a3,80003844 <__mem_alloc+0x11c>
    80003770:	0006b503          	ld	a0,0(a3)
    80003774:	00852703          	lw	a4,8(a0)
    80003778:	10977063          	bgeu	a4,s1,80003878 <__mem_alloc+0x150>
    8000377c:	000017b7          	lui	a5,0x1
    80003780:	0009099b          	sext.w	s3,s2
    80003784:	0af4e863          	bltu	s1,a5,80003834 <__mem_alloc+0x10c>
    80003788:	02099a13          	slli	s4,s3,0x20
    8000378c:	01ca5a13          	srli	s4,s4,0x1c
    80003790:	fff00b13          	li	s6,-1
    80003794:	0100006f          	j	800037a4 <__mem_alloc+0x7c>
    80003798:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000379c:	00852703          	lw	a4,8(a0)
    800037a0:	04977463          	bgeu	a4,s1,800037e8 <__mem_alloc+0xc0>
    800037a4:	00050793          	mv	a5,a0
    800037a8:	fea698e3          	bne	a3,a0,80003798 <__mem_alloc+0x70>
    800037ac:	000a0513          	mv	a0,s4
    800037b0:	00000097          	auipc	ra,0x0
    800037b4:	1f0080e7          	jalr	496(ra) # 800039a0 <kvmincrease>
    800037b8:	00050793          	mv	a5,a0
    800037bc:	01050513          	addi	a0,a0,16
    800037c0:	07678e63          	beq	a5,s6,8000383c <__mem_alloc+0x114>
    800037c4:	0137a423          	sw	s3,8(a5)
    800037c8:	00000097          	auipc	ra,0x0
    800037cc:	e94080e7          	jalr	-364(ra) # 8000365c <__mem_free>
    800037d0:	000ab783          	ld	a5,0(s5)
    800037d4:	06078463          	beqz	a5,8000383c <__mem_alloc+0x114>
    800037d8:	0007b503          	ld	a0,0(a5)
    800037dc:	00078693          	mv	a3,a5
    800037e0:	00852703          	lw	a4,8(a0)
    800037e4:	fc9760e3          	bltu	a4,s1,800037a4 <__mem_alloc+0x7c>
    800037e8:	08e48263          	beq	s1,a4,8000386c <__mem_alloc+0x144>
    800037ec:	4127073b          	subw	a4,a4,s2
    800037f0:	02071693          	slli	a3,a4,0x20
    800037f4:	01c6d693          	srli	a3,a3,0x1c
    800037f8:	00e52423          	sw	a4,8(a0)
    800037fc:	00d50533          	add	a0,a0,a3
    80003800:	01252423          	sw	s2,8(a0)
    80003804:	00fab023          	sd	a5,0(s5)
    80003808:	01050513          	addi	a0,a0,16
    8000380c:	03813083          	ld	ra,56(sp)
    80003810:	03013403          	ld	s0,48(sp)
    80003814:	02813483          	ld	s1,40(sp)
    80003818:	02013903          	ld	s2,32(sp)
    8000381c:	01813983          	ld	s3,24(sp)
    80003820:	01013a03          	ld	s4,16(sp)
    80003824:	00813a83          	ld	s5,8(sp)
    80003828:	00013b03          	ld	s6,0(sp)
    8000382c:	04010113          	addi	sp,sp,64
    80003830:	00008067          	ret
    80003834:	000019b7          	lui	s3,0x1
    80003838:	f51ff06f          	j	80003788 <__mem_alloc+0x60>
    8000383c:	00000513          	li	a0,0
    80003840:	fcdff06f          	j	8000380c <__mem_alloc+0xe4>
    80003844:	00002797          	auipc	a5,0x2
    80003848:	fec78793          	addi	a5,a5,-20 # 80005830 <base>
    8000384c:	00078513          	mv	a0,a5
    80003850:	00fab023          	sd	a5,0(s5)
    80003854:	00f7b023          	sd	a5,0(a5)
    80003858:	00000713          	li	a4,0
    8000385c:	00002797          	auipc	a5,0x2
    80003860:	fc07ae23          	sw	zero,-36(a5) # 80005838 <base+0x8>
    80003864:	00050693          	mv	a3,a0
    80003868:	f11ff06f          	j	80003778 <__mem_alloc+0x50>
    8000386c:	00053703          	ld	a4,0(a0)
    80003870:	00e7b023          	sd	a4,0(a5)
    80003874:	f91ff06f          	j	80003804 <__mem_alloc+0xdc>
    80003878:	00068793          	mv	a5,a3
    8000387c:	f6dff06f          	j	800037e8 <__mem_alloc+0xc0>

0000000080003880 <__putc>:
    80003880:	fe010113          	addi	sp,sp,-32
    80003884:	00813823          	sd	s0,16(sp)
    80003888:	00113c23          	sd	ra,24(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	00050793          	mv	a5,a0
    80003894:	fef40593          	addi	a1,s0,-17
    80003898:	00100613          	li	a2,1
    8000389c:	00000513          	li	a0,0
    800038a0:	fef407a3          	sb	a5,-17(s0)
    800038a4:	fffff097          	auipc	ra,0xfffff
    800038a8:	918080e7          	jalr	-1768(ra) # 800021bc <console_write>
    800038ac:	01813083          	ld	ra,24(sp)
    800038b0:	01013403          	ld	s0,16(sp)
    800038b4:	02010113          	addi	sp,sp,32
    800038b8:	00008067          	ret

00000000800038bc <__getc>:
    800038bc:	fe010113          	addi	sp,sp,-32
    800038c0:	00813823          	sd	s0,16(sp)
    800038c4:	00113c23          	sd	ra,24(sp)
    800038c8:	02010413          	addi	s0,sp,32
    800038cc:	fe840593          	addi	a1,s0,-24
    800038d0:	00100613          	li	a2,1
    800038d4:	00000513          	li	a0,0
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	8c4080e7          	jalr	-1852(ra) # 8000219c <console_read>
    800038e0:	fe844503          	lbu	a0,-24(s0)
    800038e4:	01813083          	ld	ra,24(sp)
    800038e8:	01013403          	ld	s0,16(sp)
    800038ec:	02010113          	addi	sp,sp,32
    800038f0:	00008067          	ret

00000000800038f4 <console_handler>:
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00813823          	sd	s0,16(sp)
    800038fc:	00113c23          	sd	ra,24(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	02010413          	addi	s0,sp,32
    80003908:	14202773          	csrr	a4,scause
    8000390c:	100027f3          	csrr	a5,sstatus
    80003910:	0027f793          	andi	a5,a5,2
    80003914:	06079e63          	bnez	a5,80003990 <console_handler+0x9c>
    80003918:	00074c63          	bltz	a4,80003930 <console_handler+0x3c>
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	00813483          	ld	s1,8(sp)
    80003928:	02010113          	addi	sp,sp,32
    8000392c:	00008067          	ret
    80003930:	0ff77713          	andi	a4,a4,255
    80003934:	00900793          	li	a5,9
    80003938:	fef712e3          	bne	a4,a5,8000391c <console_handler+0x28>
    8000393c:	ffffe097          	auipc	ra,0xffffe
    80003940:	4b8080e7          	jalr	1208(ra) # 80001df4 <plic_claim>
    80003944:	00a00793          	li	a5,10
    80003948:	00050493          	mv	s1,a0
    8000394c:	02f50c63          	beq	a0,a5,80003984 <console_handler+0x90>
    80003950:	fc0506e3          	beqz	a0,8000391c <console_handler+0x28>
    80003954:	00050593          	mv	a1,a0
    80003958:	00000517          	auipc	a0,0x0
    8000395c:	78850513          	addi	a0,a0,1928 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	8d8080e7          	jalr	-1832(ra) # 80002238 <__printf>
    80003968:	01013403          	ld	s0,16(sp)
    8000396c:	01813083          	ld	ra,24(sp)
    80003970:	00048513          	mv	a0,s1
    80003974:	00813483          	ld	s1,8(sp)
    80003978:	02010113          	addi	sp,sp,32
    8000397c:	ffffe317          	auipc	t1,0xffffe
    80003980:	4b030067          	jr	1200(t1) # 80001e2c <plic_complete>
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	1bc080e7          	jalr	444(ra) # 80002b40 <uartintr>
    8000398c:	fddff06f          	j	80003968 <console_handler+0x74>
    80003990:	00001517          	auipc	a0,0x1
    80003994:	85050513          	addi	a0,a0,-1968 # 800041e0 <digits+0x78>
    80003998:	fffff097          	auipc	ra,0xfffff
    8000399c:	844080e7          	jalr	-1980(ra) # 800021dc <panic>

00000000800039a0 <kvmincrease>:
    800039a0:	fe010113          	addi	sp,sp,-32
    800039a4:	01213023          	sd	s2,0(sp)
    800039a8:	00001937          	lui	s2,0x1
    800039ac:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00113c23          	sd	ra,24(sp)
    800039b8:	00913423          	sd	s1,8(sp)
    800039bc:	02010413          	addi	s0,sp,32
    800039c0:	01250933          	add	s2,a0,s2
    800039c4:	00c95913          	srli	s2,s2,0xc
    800039c8:	02090863          	beqz	s2,800039f8 <kvmincrease+0x58>
    800039cc:	00000493          	li	s1,0
    800039d0:	00148493          	addi	s1,s1,1
    800039d4:	fffff097          	auipc	ra,0xfffff
    800039d8:	4bc080e7          	jalr	1212(ra) # 80002e90 <kalloc>
    800039dc:	fe991ae3          	bne	s2,s1,800039d0 <kvmincrease+0x30>
    800039e0:	01813083          	ld	ra,24(sp)
    800039e4:	01013403          	ld	s0,16(sp)
    800039e8:	00813483          	ld	s1,8(sp)
    800039ec:	00013903          	ld	s2,0(sp)
    800039f0:	02010113          	addi	sp,sp,32
    800039f4:	00008067          	ret
    800039f8:	01813083          	ld	ra,24(sp)
    800039fc:	01013403          	ld	s0,16(sp)
    80003a00:	00813483          	ld	s1,8(sp)
    80003a04:	00013903          	ld	s2,0(sp)
    80003a08:	00000513          	li	a0,0
    80003a0c:	02010113          	addi	sp,sp,32
    80003a10:	00008067          	ret
	...

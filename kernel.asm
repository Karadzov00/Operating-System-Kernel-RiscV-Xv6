
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	71013103          	ld	sp,1808(sp) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	111010ef          	jal	ra,8000192c <start>

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
    80001080:	690000ef          	jal	ra,80001710 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001130:	00053703          	ld	a4,0(a0)
    uint64 arg1 = arg->a1;
    80001134:	00853783          	ld	a5,8(a0)



    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001138:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    8000113c:	00078593          	mv	a1,a5


//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001140:	00000073          	ecall


}
    80001144:	00813403          	ld	s0,8(sp)
    80001148:	01010113          	addi	sp,sp,16
    8000114c:	00008067          	ret

0000000080001150 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001150:	fe010113          	addi	sp,sp,-32
    80001154:	00113c23          	sd	ra,24(sp)
    80001158:	00813823          	sd	s0,16(sp)
    8000115c:	00913423          	sd	s1,8(sp)
    80001160:	02010413          	addi	s0,sp,32
    80001164:	00050493          	mv	s1,a0
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = new args();
    80001168:	02000513          	li	a0,32
    8000116c:	00000097          	auipc	ra,0x0
    80001170:	280080e7          	jalr	640(ra) # 800013ec <_Znwm>
    80001174:	00053823          	sd	zero,16(a0)
    80001178:	00053c23          	sd	zero,24(a0)
    arg->a0=0x01;
    8000117c:	00100793          	li	a5,1
    80001180:	00f53023          	sd	a5,0(a0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001184:	0064d793          	srli	a5,s1,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001188:	03f4f493          	andi	s1,s1,63
    8000118c:	00048463          	beqz	s1,80001194 <_Z9mem_allocm+0x44>
    80001190:	00178793          	addi	a5,a5,1
    arg->a1=blocks;
    80001194:	00f53423          	sd	a5,8(a0)

    syscall(arg);
    80001198:	00000097          	auipc	ra,0x0
    8000119c:	f8c080e7          	jalr	-116(ra) # 80001124 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011a0:	00050513          	mv	a0,a0

    return (void*)ret;
}
    800011a4:	01813083          	ld	ra,24(sp)
    800011a8:	01013403          	ld	s0,16(sp)
    800011ac:	00813483          	ld	s1,8(sp)
    800011b0:	02010113          	addi	sp,sp,32
    800011b4:	00008067          	ret

00000000800011b8 <_Z8mem_freePv>:

int mem_free (void* p){
    800011b8:	fe010113          	addi	sp,sp,-32
    800011bc:	00113c23          	sd	ra,24(sp)
    800011c0:	00813823          	sd	s0,16(sp)
    800011c4:	00913423          	sd	s1,8(sp)
    800011c8:	02010413          	addi	s0,sp,32
    800011cc:	00050493          	mv	s1,a0
    args* arg = new args();
    800011d0:	02000513          	li	a0,32
    800011d4:	00000097          	auipc	ra,0x0
    800011d8:	218080e7          	jalr	536(ra) # 800013ec <_Znwm>
    800011dc:	00053823          	sd	zero,16(a0)
    800011e0:	00053c23          	sd	zero,24(a0)
    arg->a0=0x02;
    800011e4:	00200713          	li	a4,2
    800011e8:	00e53023          	sd	a4,0(a0)
    arg->a1=(uint64)p;
    800011ec:	00953423          	sd	s1,8(a0)

    syscall(arg);
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	f34080e7          	jalr	-204(ra) # 80001124 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800011f8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800011fc:	0005051b          	sext.w	a0,a0
    80001200:	01813083          	ld	ra,24(sp)
    80001204:	01013403          	ld	s0,16(sp)
    80001208:	00813483          	ld	s1,8(sp)
    8000120c:	02010113          	addi	sp,sp,32
    80001210:	00008067          	ret

0000000080001214 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"



int main(){
    80001214:	fe010113          	addi	sp,sp,-32
    80001218:	00113c23          	sd	ra,24(sp)
    8000121c:	00813823          	sd	s0,16(sp)
    80001220:	00913423          	sd	s1,8(sp)
    80001224:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001228:	00003797          	auipc	a5,0x3
    8000122c:	4d87b783          	ld	a5,1240(a5) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001230:	10579073          	csrw	stvec,a5

    void* ptr;
    ptr = mem_alloc(300);
    80001234:	12c00513          	li	a0,300
    80001238:	00000097          	auipc	ra,0x0
    8000123c:	f18080e7          	jalr	-232(ra) # 80001150 <_Z9mem_allocm>
    80001240:	00050493          	mv	s1,a0
    if(ptr!=nullptr){
    80001244:	00050a63          	beqz	a0,80001258 <main+0x44>
        printString("allocated \n");
    80001248:	00003517          	auipc	a0,0x3
    8000124c:	db850513          	addi	a0,a0,-584 # 80004000 <kvmincrease+0x2d0>
    80001250:	00000097          	auipc	ra,0x0
    80001254:	5b0080e7          	jalr	1456(ra) # 80001800 <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    80001258:	00048513          	mv	a0,s1
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	f5c080e7          	jalr	-164(ra) # 800011b8 <_Z8mem_freePv>
    80001264:	02051663          	bnez	a0,80001290 <main+0x7c>
        printString("successfully freed \n");
    80001268:	00003517          	auipc	a0,0x3
    8000126c:	da850513          	addi	a0,a0,-600 # 80004010 <kvmincrease+0x2e0>
    80001270:	00000097          	auipc	ra,0x0
    80001274:	590080e7          	jalr	1424(ra) # 80001800 <_Z11printStringPKc>
    }
    else{
        printString("not freed \n");
    }
    return 0;
}
    80001278:	00000513          	li	a0,0
    8000127c:	01813083          	ld	ra,24(sp)
    80001280:	01013403          	ld	s0,16(sp)
    80001284:	00813483          	ld	s1,8(sp)
    80001288:	02010113          	addi	sp,sp,32
    8000128c:	00008067          	ret
        printString("not freed \n");
    80001290:	00003517          	auipc	a0,0x3
    80001294:	d9850513          	addi	a0,a0,-616 # 80004028 <kvmincrease+0x2f8>
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	568080e7          	jalr	1384(ra) # 80001800 <_Z11printStringPKc>
    800012a0:	fd9ff06f          	j	80001278 <main+0x64>

00000000800012a4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800012a4:	ff010113          	addi	sp,sp,-16
    800012a8:	00813423          	sd	s0,8(sp)
    800012ac:	01010413          	addi	s0,sp,16
    800012b0:	00100793          	li	a5,1
    800012b4:	00f50863          	beq	a0,a5,800012c4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800012b8:	00813403          	ld	s0,8(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret
    800012c4:	000107b7          	lui	a5,0x10
    800012c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800012cc:	fef596e3          	bne	a1,a5,800012b8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800012d0:	00003797          	auipc	a5,0x3
    800012d4:	49078793          	addi	a5,a5,1168 # 80004760 <_ZN9Scheduler16readyThreadQueueE>
    800012d8:	0007b023          	sd	zero,0(a5)
    800012dc:	0007b423          	sd	zero,8(a5)
    800012e0:	fd9ff06f          	j	800012b8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800012e4 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get() {
    800012e4:	fe010113          	addi	sp,sp,-32
    800012e8:	00113c23          	sd	ra,24(sp)
    800012ec:	00813823          	sd	s0,16(sp)
    800012f0:	00913423          	sd	s1,8(sp)
    800012f4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800012f8:	00003517          	auipc	a0,0x3
    800012fc:	46853503          	ld	a0,1128(a0) # 80004760 <_ZN9Scheduler16readyThreadQueueE>
    80001300:	04050263          	beqz	a0,80001344 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001304:	00853783          	ld	a5,8(a0)
    80001308:	00003717          	auipc	a4,0x3
    8000130c:	44f73c23          	sd	a5,1112(a4) # 80004760 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001310:	02078463          	beqz	a5,80001338 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001314:	00053483          	ld	s1,0(a0)
        delete elem;
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	124080e7          	jalr	292(ra) # 8000143c <_ZdlPv>
}
    80001320:	00048513          	mv	a0,s1
    80001324:	01813083          	ld	ra,24(sp)
    80001328:	01013403          	ld	s0,16(sp)
    8000132c:	00813483          	ld	s1,8(sp)
    80001330:	02010113          	addi	sp,sp,32
    80001334:	00008067          	ret
        if (!head) { tail = 0; }
    80001338:	00003797          	auipc	a5,0x3
    8000133c:	4207b823          	sd	zero,1072(a5) # 80004768 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001340:	fd5ff06f          	j	80001314 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001344:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001348:	fd9ff06f          	j	80001320 <_ZN9Scheduler3getEv+0x3c>

000000008000134c <_ZN9Scheduler3putEP3TCB>:
{
    8000134c:	fe010113          	addi	sp,sp,-32
    80001350:	00113c23          	sd	ra,24(sp)
    80001354:	00813823          	sd	s0,16(sp)
    80001358:	00913423          	sd	s1,8(sp)
    8000135c:	02010413          	addi	s0,sp,32
    80001360:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001364:	01000513          	li	a0,16
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	084080e7          	jalr	132(ra) # 800013ec <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001370:	00953023          	sd	s1,0(a0)
    80001374:	00053423          	sd	zero,8(a0)
        if (tail)
    80001378:	00003797          	auipc	a5,0x3
    8000137c:	3f07b783          	ld	a5,1008(a5) # 80004768 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001380:	02078263          	beqz	a5,800013a4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001384:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001388:	00003797          	auipc	a5,0x3
    8000138c:	3ea7b023          	sd	a0,992(a5) # 80004768 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001390:	01813083          	ld	ra,24(sp)
    80001394:	01013403          	ld	s0,16(sp)
    80001398:	00813483          	ld	s1,8(sp)
    8000139c:	02010113          	addi	sp,sp,32
    800013a0:	00008067          	ret
            head = tail = elem;
    800013a4:	00003797          	auipc	a5,0x3
    800013a8:	3bc78793          	addi	a5,a5,956 # 80004760 <_ZN9Scheduler16readyThreadQueueE>
    800013ac:	00a7b423          	sd	a0,8(a5)
    800013b0:	00a7b023          	sd	a0,0(a5)
    800013b4:	fddff06f          	j	80001390 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800013b8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00113423          	sd	ra,8(sp)
    800013c0:	00813023          	sd	s0,0(sp)
    800013c4:	01010413          	addi	s0,sp,16
    800013c8:	000105b7          	lui	a1,0x10
    800013cc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800013d0:	00100513          	li	a0,1
    800013d4:	00000097          	auipc	ra,0x0
    800013d8:	ed0080e7          	jalr	-304(ra) # 800012a4 <_Z41__static_initialization_and_destruction_0ii>
    800013dc:	00813083          	ld	ra,8(sp)
    800013e0:	00013403          	ld	s0,0(sp)
    800013e4:	01010113          	addi	sp,sp,16
    800013e8:	00008067          	ret

00000000800013ec <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800013ec:	ff010113          	addi	sp,sp,-16
    800013f0:	00113423          	sd	ra,8(sp)
    800013f4:	00813023          	sd	s0,0(sp)
    800013f8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    800013fc:	00000097          	auipc	ra,0x0
    80001400:	3b4080e7          	jalr	948(ra) # 800017b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001404:	00813083          	ld	ra,8(sp)
    80001408:	00013403          	ld	s0,0(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Znam>:

void* operator new[](size_t n){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00113423          	sd	ra,8(sp)
    8000141c:	00813023          	sd	s0,0(sp)
    80001420:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(n);
    80001424:	00000097          	auipc	ra,0x0
    80001428:	38c080e7          	jalr	908(ra) # 800017b0 <_ZN15MemoryAllocator9mem_allocEm>
}
    8000142c:	00813083          	ld	ra,8(sp)
    80001430:	00013403          	ld	s0,0(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_ZdlPv>:

void operator delete(void* p) noexcept{
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00113423          	sd	ra,8(sp)
    80001444:	00813023          	sd	s0,0(sp)
    80001448:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	38c080e7          	jalr	908(ra) # 800017d8 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001454:	00813083          	ld	ra,8(sp)
    80001458:	00013403          	ld	s0,0(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001464:	ff010113          	addi	sp,sp,-16
    80001468:	00113423          	sd	ra,8(sp)
    8000146c:	00813023          	sd	s0,0(sp)
    80001470:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(p);
    80001474:	00000097          	auipc	ra,0x0
    80001478:	364080e7          	jalr	868(ra) # 800017d8 <_ZN15MemoryAllocator8mem_freeEPv>

}
    8000147c:	00813083          	ld	ra,8(sp)
    80001480:	00013403          	ld	s0,0(sp)
    80001484:	01010113          	addi	sp,sp,16
    80001488:	00008067          	ret

000000008000148c <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000148c:	ff010113          	addi	sp,sp,-16
    80001490:	00813423          	sd	s0,8(sp)
    80001494:	01010413          	addi	s0,sp,16

}
    80001498:	00813403          	ld	s0,8(sp)
    8000149c:	01010113          	addi	sp,sp,16
    800014a0:	00008067          	ret

00000000800014a4 <_ZN3TCBC1EPFvvEm>:
TCB::TCB(Body body, uint64 timeSlice):
    800014a4:	fe010113          	addi	sp,sp,-32
    800014a8:	00113c23          	sd	ra,24(sp)
    800014ac:	00813823          	sd	s0,16(sp)
    800014b0:	00913423          	sd	s1,8(sp)
    800014b4:	01213023          	sd	s2,0(sp)
    800014b8:	02010413          	addi	s0,sp,32
    800014bc:	00050493          	mv	s1,a0
    800014c0:	00060913          	mv	s2,a2
        finished(false)
    800014c4:	00b53023          	sd	a1,0(a0)
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    800014c8:	06058863          	beqz	a1,80001538 <_ZN3TCBC1EPFvvEm+0x94>
    800014cc:	00008537          	lui	a0,0x8
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	f44080e7          	jalr	-188(ra) # 80001414 <_Znam>
        finished(false)
    800014d8:	00a4b423          	sd	a0,8(s1)
    800014dc:	00000797          	auipc	a5,0x0
    800014e0:	fb078793          	addi	a5,a5,-80 # 8000148c <_ZN3TCB13threadWrapperEv>
    800014e4:	00f4b823          	sd	a5,16(s1)
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    800014e8:	04050c63          	beqz	a0,80001540 <_ZN3TCBC1EPFvvEm+0x9c>
    800014ec:	000087b7          	lui	a5,0x8
    800014f0:	00f50533          	add	a0,a0,a5
        finished(false)
    800014f4:	00a4bc23          	sd	a0,24(s1)
    800014f8:	0324b023          	sd	s2,32(s1)
    800014fc:	02048423          	sb	zero,40(s1)
    status = Status::NEW;
    80001500:	00100793          	li	a5,1
    80001504:	02f4ac23          	sw	a5,56(s1)
    id = globalId++;
    80001508:	00003717          	auipc	a4,0x3
    8000150c:	26870713          	addi	a4,a4,616 # 80004770 <_ZN3TCB8globalIdE>
    80001510:	00073783          	ld	a5,0(a4)
    80001514:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80001518:	00d73023          	sd	a3,0(a4)
    8000151c:	02f4b823          	sd	a5,48(s1)
}
    80001520:	01813083          	ld	ra,24(sp)
    80001524:	01013403          	ld	s0,16(sp)
    80001528:	00813483          	ld	s1,8(sp)
    8000152c:	00013903          	ld	s2,0(sp)
    80001530:	02010113          	addi	sp,sp,32
    80001534:	00008067          	ret
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    80001538:	00000513          	li	a0,0
    8000153c:	f9dff06f          	j	800014d8 <_ZN3TCBC1EPFvvEm+0x34>
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001540:	00000513          	li	a0,0
    80001544:	fb1ff06f          	j	800014f4 <_ZN3TCBC1EPFvvEm+0x50>

0000000080001548 <_ZN3TCB12createThreadEPFvvE>:
TCB* TCB::createThread(Body body) {
    80001548:	fe010113          	addi	sp,sp,-32
    8000154c:	00113c23          	sd	ra,24(sp)
    80001550:	00813823          	sd	s0,16(sp)
    80001554:	00913423          	sd	s1,8(sp)
    80001558:	01213023          	sd	s2,0(sp)
    8000155c:	02010413          	addi	s0,sp,32
    80001560:	00050913          	mv	s2,a0
    return new TCB(body, DEFAULT_TIME_SLICE);
    80001564:	04000513          	li	a0,64
    80001568:	00000097          	auipc	ra,0x0
    8000156c:	e84080e7          	jalr	-380(ra) # 800013ec <_Znwm>
    80001570:	00050493          	mv	s1,a0
    80001574:	00200613          	li	a2,2
    80001578:	00090593          	mv	a1,s2
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	f28080e7          	jalr	-216(ra) # 800014a4 <_ZN3TCBC1EPFvvEm>
    80001584:	0200006f          	j	800015a4 <_ZN3TCB12createThreadEPFvvE+0x5c>
    80001588:	00050913          	mv	s2,a0
    8000158c:	00048513          	mv	a0,s1
    80001590:	00000097          	auipc	ra,0x0
    80001594:	eac080e7          	jalr	-340(ra) # 8000143c <_ZdlPv>
    80001598:	00090513          	mv	a0,s2
    8000159c:	00004097          	auipc	ra,0x4
    800015a0:	2bc080e7          	jalr	700(ra) # 80005858 <_Unwind_Resume>
}
    800015a4:	00048513          	mv	a0,s1
    800015a8:	01813083          	ld	ra,24(sp)
    800015ac:	01013403          	ld	s0,16(sp)
    800015b0:	00813483          	ld	s1,8(sp)
    800015b4:	00013903          	ld	s2,0(sp)
    800015b8:	02010113          	addi	sp,sp,32
    800015bc:	00008067          	ret

00000000800015c0 <_ZN3TCB5startEv>:
    if(this->status==FINISHED)return;
    800015c0:	03852783          	lw	a5,56(a0) # 8038 <_entry-0x7fff7fc8>
    800015c4:	00200713          	li	a4,2
    800015c8:	00e78463          	beq	a5,a4,800015d0 <_ZN3TCB5startEv+0x10>
    if(this->status==READY)return;
    800015cc:	00079463          	bnez	a5,800015d4 <_ZN3TCB5startEv+0x14>
    800015d0:	00008067          	ret
void TCB::start() {
    800015d4:	ff010113          	addi	sp,sp,-16
    800015d8:	00113423          	sd	ra,8(sp)
    800015dc:	00813023          	sd	s0,0(sp)
    800015e0:	01010413          	addi	s0,sp,16
    this->status=Status::READY;
    800015e4:	02052c23          	sw	zero,56(a0)
    Scheduler::put(this);
    800015e8:	00000097          	auipc	ra,0x0
    800015ec:	d64080e7          	jalr	-668(ra) # 8000134c <_ZN9Scheduler3putEP3TCB>
}
    800015f0:	00813083          	ld	ra,8(sp)
    800015f4:	00013403          	ld	s0,0(sp)
    800015f8:	01010113          	addi	sp,sp,16
    800015fc:	00008067          	ret

0000000080001600 <_ZN3TCB5yieldEv>:
void TCB::yield() {
    80001600:	ff010113          	addi	sp,sp,-16
    80001604:	00813423          	sd	s0,8(sp)
    80001608:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    8000160c:	00050793          	mv	a5,a0
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    80001610:	00400713          	li	a4,4
    80001614:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    80001618:	00000073          	ecall
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    8000161c:	00078513          	mv	a0,a5
}
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001640:	00003497          	auipc	s1,0x3
    80001644:	1384b483          	ld	s1,312(s1) # 80004778 <_ZN3TCB7runningE>

class TCB {
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001648:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    8000164c:	02078c63          	beqz	a5,80001684 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001650:	00000097          	auipc	ra,0x0
    80001654:	c94080e7          	jalr	-876(ra) # 800012e4 <_ZN9Scheduler3getEv>
    80001658:	00003797          	auipc	a5,0x3
    8000165c:	12a7b023          	sd	a0,288(a5) # 80004778 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001660:	01050593          	addi	a1,a0,16
    80001664:	01048513          	addi	a0,s1,16
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	aa8080e7          	jalr	-1368(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    80001684:	00048513          	mv	a0,s1
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	cc4080e7          	jalr	-828(ra) # 8000134c <_ZN9Scheduler3putEP3TCB>
    80001690:	fc1ff06f          	j	80001650 <_ZN3TCB8dispatchEv+0x24>

0000000080001694 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"


void Riscv::syscallHandler() {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00113423          	sd	ra,8(sp)
    8000169c:	00813023          	sd	s0,0(sp)
    800016a0:	01010413          	addi	s0,sp,16
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800016a4:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    800016a8:	00100713          	li	a4,1
    800016ac:	00e78e63          	beq	a5,a4,800016c8 <_ZN5Riscv14syscallHandlerEv+0x34>
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    800016b0:	00200713          	li	a4,2
    800016b4:	02e78463          	beq	a5,a4,800016dc <_ZN5Riscv14syscallHandlerEv+0x48>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::mem_free((void*)arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

}
    800016b8:	00813083          	ld	ra,8(sp)
    800016bc:	00013403          	ld	s0,0(sp)
    800016c0:	01010113          	addi	sp,sp,16
    800016c4:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800016c8:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	0e4080e7          	jalr	228(ra) # 800017b0 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800016d4:	00050513          	mv	a0,a0
    800016d8:	fe1ff06f          	j	800016b8 <_ZN5Riscv14syscallHandlerEv+0x24>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800016dc:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::mem_free((void*)arg1);
    800016e0:	00000097          	auipc	ra,0x0
    800016e4:	0f8080e7          	jalr	248(ra) # 800017d8 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    800016e8:	00050513          	mv	a0,a0
}
    800016ec:	fcdff06f          	j	800016b8 <_ZN5Riscv14syscallHandlerEv+0x24>

00000000800016f0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    800016f0:	ff010113          	addi	sp,sp,-16
    800016f4:	00813423          	sd	s0,8(sp)
    800016f8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800016fc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001700:	10200073          	sret
}
    80001704:	00813403          	ld	s0,8(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001710:	fc010113          	addi	sp,sp,-64
    80001714:	02113c23          	sd	ra,56(sp)
    80001718:	02813823          	sd	s0,48(sp)
    8000171c:	02913423          	sd	s1,40(sp)
    80001720:	03213023          	sd	s2,32(sp)
    80001724:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001728:	142027f3          	csrr	a5,scause
    8000172c:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001730:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001734:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001738:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    8000173c:	ff87879b          	addiw	a5,a5,-8
    80001740:	00100713          	li	a4,1
    80001744:	00f77e63          	bgeu	a4,a5,80001760 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001748:	03813083          	ld	ra,56(sp)
    8000174c:	03013403          	ld	s0,48(sp)
    80001750:	02813483          	ld	s1,40(sp)
    80001754:	02013903          	ld	s2,32(sp)
    80001758:	04010113          	addi	sp,sp,64
    8000175c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001760:	141027f3          	csrr	a5,sepc
    80001764:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001768:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    8000176c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001770:	100027f3          	csrr	a5,sstatus
    80001774:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001778:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    8000177c:	00400793          	li	a5,4
    80001780:	00f68c63          	beq	a3,a5,80001798 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001784:	00000097          	auipc	ra,0x0
    80001788:	f10080e7          	jalr	-240(ra) # 80001694 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000178c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001790:	14149073          	csrw	sepc,s1
}
    80001794:	fb5ff06f          	j	80001748 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            TCB::timeSliceCounter = 0;
    80001798:	00003797          	auipc	a5,0x3
    8000179c:	f707b783          	ld	a5,-144(a5) # 80004708 <_GLOBAL_OFFSET_TABLE_+0x10>
    800017a0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	e88080e7          	jalr	-376(ra) # 8000162c <_ZN3TCB8dispatchEv>
    800017ac:	fe1ff06f          	j	8000178c <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

00000000800017b0 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    800017b0:	ff010113          	addi	sp,sp,-16
    800017b4:	00113423          	sd	ra,8(sp)
    800017b8:	00813023          	sd	s0,0(sp)
    800017bc:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	2f8080e7          	jalr	760(ra) # 80003ab8 <__mem_alloc>
}
    800017c8:	00813083          	ld	ra,8(sp)
    800017cc:	00013403          	ld	s0,0(sp)
    800017d0:	01010113          	addi	sp,sp,16
    800017d4:	00008067          	ret

00000000800017d8 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    800017d8:	ff010113          	addi	sp,sp,-16
    800017dc:	00113423          	sd	ra,8(sp)
    800017e0:	00813023          	sd	s0,0(sp)
    800017e4:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	204080e7          	jalr	516(ra) # 800039ec <__mem_free>
    800017f0:	00813083          	ld	ra,8(sp)
    800017f4:	00013403          	ld	s0,0(sp)
    800017f8:	01010113          	addi	sp,sp,16
    800017fc:	00008067          	ret

0000000080001800 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001800:	fd010113          	addi	sp,sp,-48
    80001804:	02113423          	sd	ra,40(sp)
    80001808:	02813023          	sd	s0,32(sp)
    8000180c:	00913c23          	sd	s1,24(sp)
    80001810:	01213823          	sd	s2,16(sp)
    80001814:	03010413          	addi	s0,sp,48
    80001818:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000181c:	100027f3          	csrr	a5,sstatus
    80001820:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001824:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001828:	00200793          	li	a5,2
    8000182c:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001830:	0004c503          	lbu	a0,0(s1)
    80001834:	00050a63          	beqz	a0,80001848 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001838:	00002097          	auipc	ra,0x2
    8000183c:	3d8080e7          	jalr	984(ra) # 80003c10 <__putc>
        string++;
    80001840:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001844:	fedff06f          	j	80001830 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001848:	0009091b          	sext.w	s2,s2
    8000184c:	00297913          	andi	s2,s2,2
    80001850:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001854:	10092073          	csrs	sstatus,s2
}
    80001858:	02813083          	ld	ra,40(sp)
    8000185c:	02013403          	ld	s0,32(sp)
    80001860:	01813483          	ld	s1,24(sp)
    80001864:	01013903          	ld	s2,16(sp)
    80001868:	03010113          	addi	sp,sp,48
    8000186c:	00008067          	ret

0000000080001870 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001870:	fc010113          	addi	sp,sp,-64
    80001874:	02113c23          	sd	ra,56(sp)
    80001878:	02813823          	sd	s0,48(sp)
    8000187c:	02913423          	sd	s1,40(sp)
    80001880:	03213023          	sd	s2,32(sp)
    80001884:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001888:	100027f3          	csrr	a5,sstatus
    8000188c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001890:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001894:	00200793          	li	a5,2
    80001898:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000189c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800018a0:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800018a4:	00a00613          	li	a2,10
    800018a8:	02c5773b          	remuw	a4,a0,a2
    800018ac:	02071693          	slli	a3,a4,0x20
    800018b0:	0206d693          	srli	a3,a3,0x20
    800018b4:	00002717          	auipc	a4,0x2
    800018b8:	78470713          	addi	a4,a4,1924 # 80004038 <_ZZ12printIntegermE6digits>
    800018bc:	00d70733          	add	a4,a4,a3
    800018c0:	00074703          	lbu	a4,0(a4)
    800018c4:	fe040693          	addi	a3,s0,-32
    800018c8:	009687b3          	add	a5,a3,s1
    800018cc:	0014849b          	addiw	s1,s1,1
    800018d0:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800018d4:	0005071b          	sext.w	a4,a0
    800018d8:	02c5553b          	divuw	a0,a0,a2
    800018dc:	00900793          	li	a5,9
    800018e0:	fce7e2e3          	bltu	a5,a4,800018a4 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800018e4:	fff4849b          	addiw	s1,s1,-1
    800018e8:	0004ce63          	bltz	s1,80001904 <_Z12printIntegerm+0x94>
    800018ec:	fe040793          	addi	a5,s0,-32
    800018f0:	009787b3          	add	a5,a5,s1
    800018f4:	ff07c503          	lbu	a0,-16(a5)
    800018f8:	00002097          	auipc	ra,0x2
    800018fc:	318080e7          	jalr	792(ra) # 80003c10 <__putc>
    80001900:	fe5ff06f          	j	800018e4 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001904:	0009091b          	sext.w	s2,s2
    80001908:	00297913          	andi	s2,s2,2
    8000190c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001910:	10092073          	csrs	sstatus,s2
}
    80001914:	03813083          	ld	ra,56(sp)
    80001918:	03013403          	ld	s0,48(sp)
    8000191c:	02813483          	ld	s1,40(sp)
    80001920:	02013903          	ld	s2,32(sp)
    80001924:	04010113          	addi	sp,sp,64
    80001928:	00008067          	ret

000000008000192c <start>:
    8000192c:	ff010113          	addi	sp,sp,-16
    80001930:	00813423          	sd	s0,8(sp)
    80001934:	01010413          	addi	s0,sp,16
    80001938:	300027f3          	csrr	a5,mstatus
    8000193c:	ffffe737          	lui	a4,0xffffe
    80001940:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    80001944:	00e7f7b3          	and	a5,a5,a4
    80001948:	00001737          	lui	a4,0x1
    8000194c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001950:	00e7e7b3          	or	a5,a5,a4
    80001954:	30079073          	csrw	mstatus,a5
    80001958:	00000797          	auipc	a5,0x0
    8000195c:	16078793          	addi	a5,a5,352 # 80001ab8 <system_main>
    80001960:	34179073          	csrw	mepc,a5
    80001964:	00000793          	li	a5,0
    80001968:	18079073          	csrw	satp,a5
    8000196c:	000107b7          	lui	a5,0x10
    80001970:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001974:	30279073          	csrw	medeleg,a5
    80001978:	30379073          	csrw	mideleg,a5
    8000197c:	104027f3          	csrr	a5,sie
    80001980:	2227e793          	ori	a5,a5,546
    80001984:	10479073          	csrw	sie,a5
    80001988:	fff00793          	li	a5,-1
    8000198c:	00a7d793          	srli	a5,a5,0xa
    80001990:	3b079073          	csrw	pmpaddr0,a5
    80001994:	00f00793          	li	a5,15
    80001998:	3a079073          	csrw	pmpcfg0,a5
    8000199c:	f14027f3          	csrr	a5,mhartid
    800019a0:	0200c737          	lui	a4,0x200c
    800019a4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800019a8:	0007869b          	sext.w	a3,a5
    800019ac:	00269713          	slli	a4,a3,0x2
    800019b0:	000f4637          	lui	a2,0xf4
    800019b4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800019b8:	00d70733          	add	a4,a4,a3
    800019bc:	0037979b          	slliw	a5,a5,0x3
    800019c0:	020046b7          	lui	a3,0x2004
    800019c4:	00d787b3          	add	a5,a5,a3
    800019c8:	00c585b3          	add	a1,a1,a2
    800019cc:	00371693          	slli	a3,a4,0x3
    800019d0:	00003717          	auipc	a4,0x3
    800019d4:	dc070713          	addi	a4,a4,-576 # 80004790 <timer_scratch>
    800019d8:	00b7b023          	sd	a1,0(a5)
    800019dc:	00d70733          	add	a4,a4,a3
    800019e0:	00f73c23          	sd	a5,24(a4)
    800019e4:	02c73023          	sd	a2,32(a4)
    800019e8:	34071073          	csrw	mscratch,a4
    800019ec:	00000797          	auipc	a5,0x0
    800019f0:	6e478793          	addi	a5,a5,1764 # 800020d0 <timervec>
    800019f4:	30579073          	csrw	mtvec,a5
    800019f8:	300027f3          	csrr	a5,mstatus
    800019fc:	0087e793          	ori	a5,a5,8
    80001a00:	30079073          	csrw	mstatus,a5
    80001a04:	304027f3          	csrr	a5,mie
    80001a08:	0807e793          	ori	a5,a5,128
    80001a0c:	30479073          	csrw	mie,a5
    80001a10:	f14027f3          	csrr	a5,mhartid
    80001a14:	0007879b          	sext.w	a5,a5
    80001a18:	00078213          	mv	tp,a5
    80001a1c:	30200073          	mret
    80001a20:	00813403          	ld	s0,8(sp)
    80001a24:	01010113          	addi	sp,sp,16
    80001a28:	00008067          	ret

0000000080001a2c <timerinit>:
    80001a2c:	ff010113          	addi	sp,sp,-16
    80001a30:	00813423          	sd	s0,8(sp)
    80001a34:	01010413          	addi	s0,sp,16
    80001a38:	f14027f3          	csrr	a5,mhartid
    80001a3c:	0200c737          	lui	a4,0x200c
    80001a40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001a44:	0007869b          	sext.w	a3,a5
    80001a48:	00269713          	slli	a4,a3,0x2
    80001a4c:	000f4637          	lui	a2,0xf4
    80001a50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a54:	00d70733          	add	a4,a4,a3
    80001a58:	0037979b          	slliw	a5,a5,0x3
    80001a5c:	020046b7          	lui	a3,0x2004
    80001a60:	00d787b3          	add	a5,a5,a3
    80001a64:	00c585b3          	add	a1,a1,a2
    80001a68:	00371693          	slli	a3,a4,0x3
    80001a6c:	00003717          	auipc	a4,0x3
    80001a70:	d2470713          	addi	a4,a4,-732 # 80004790 <timer_scratch>
    80001a74:	00b7b023          	sd	a1,0(a5)
    80001a78:	00d70733          	add	a4,a4,a3
    80001a7c:	00f73c23          	sd	a5,24(a4)
    80001a80:	02c73023          	sd	a2,32(a4)
    80001a84:	34071073          	csrw	mscratch,a4
    80001a88:	00000797          	auipc	a5,0x0
    80001a8c:	64878793          	addi	a5,a5,1608 # 800020d0 <timervec>
    80001a90:	30579073          	csrw	mtvec,a5
    80001a94:	300027f3          	csrr	a5,mstatus
    80001a98:	0087e793          	ori	a5,a5,8
    80001a9c:	30079073          	csrw	mstatus,a5
    80001aa0:	304027f3          	csrr	a5,mie
    80001aa4:	0807e793          	ori	a5,a5,128
    80001aa8:	30479073          	csrw	mie,a5
    80001aac:	00813403          	ld	s0,8(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <system_main>:
    80001ab8:	fe010113          	addi	sp,sp,-32
    80001abc:	00813823          	sd	s0,16(sp)
    80001ac0:	00913423          	sd	s1,8(sp)
    80001ac4:	00113c23          	sd	ra,24(sp)
    80001ac8:	02010413          	addi	s0,sp,32
    80001acc:	00000097          	auipc	ra,0x0
    80001ad0:	0c4080e7          	jalr	196(ra) # 80001b90 <cpuid>
    80001ad4:	00003497          	auipc	s1,0x3
    80001ad8:	c5c48493          	addi	s1,s1,-932 # 80004730 <started>
    80001adc:	02050263          	beqz	a0,80001b00 <system_main+0x48>
    80001ae0:	0004a783          	lw	a5,0(s1)
    80001ae4:	0007879b          	sext.w	a5,a5
    80001ae8:	fe078ce3          	beqz	a5,80001ae0 <system_main+0x28>
    80001aec:	0ff0000f          	fence
    80001af0:	00002517          	auipc	a0,0x2
    80001af4:	58850513          	addi	a0,a0,1416 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001af8:	00001097          	auipc	ra,0x1
    80001afc:	a74080e7          	jalr	-1420(ra) # 8000256c <panic>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	9c8080e7          	jalr	-1592(ra) # 800024c8 <consoleinit>
    80001b08:	00001097          	auipc	ra,0x1
    80001b0c:	154080e7          	jalr	340(ra) # 80002c5c <printfinit>
    80001b10:	00002517          	auipc	a0,0x2
    80001b14:	64850513          	addi	a0,a0,1608 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	ab0080e7          	jalr	-1360(ra) # 800025c8 <__printf>
    80001b20:	00002517          	auipc	a0,0x2
    80001b24:	52850513          	addi	a0,a0,1320 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	aa0080e7          	jalr	-1376(ra) # 800025c8 <__printf>
    80001b30:	00002517          	auipc	a0,0x2
    80001b34:	62850513          	addi	a0,a0,1576 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	a90080e7          	jalr	-1392(ra) # 800025c8 <__printf>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	4a8080e7          	jalr	1192(ra) # 80002fe8 <kinit>
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	148080e7          	jalr	328(ra) # 80001c90 <trapinit>
    80001b50:	00000097          	auipc	ra,0x0
    80001b54:	16c080e7          	jalr	364(ra) # 80001cbc <trapinithart>
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	5b8080e7          	jalr	1464(ra) # 80002110 <plicinit>
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	5d8080e7          	jalr	1496(ra) # 80002138 <plicinithart>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	078080e7          	jalr	120(ra) # 80001be0 <userinit>
    80001b70:	0ff0000f          	fence
    80001b74:	00100793          	li	a5,1
    80001b78:	00002517          	auipc	a0,0x2
    80001b7c:	4e850513          	addi	a0,a0,1256 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001b80:	00f4a023          	sw	a5,0(s1)
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	a44080e7          	jalr	-1468(ra) # 800025c8 <__printf>
    80001b8c:	0000006f          	j	80001b8c <system_main+0xd4>

0000000080001b90 <cpuid>:
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00813423          	sd	s0,8(sp)
    80001b98:	01010413          	addi	s0,sp,16
    80001b9c:	00020513          	mv	a0,tp
    80001ba0:	00813403          	ld	s0,8(sp)
    80001ba4:	0005051b          	sext.w	a0,a0
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00008067          	ret

0000000080001bb0 <mycpu>:
    80001bb0:	ff010113          	addi	sp,sp,-16
    80001bb4:	00813423          	sd	s0,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00020793          	mv	a5,tp
    80001bc0:	00813403          	ld	s0,8(sp)
    80001bc4:	0007879b          	sext.w	a5,a5
    80001bc8:	00779793          	slli	a5,a5,0x7
    80001bcc:	00004517          	auipc	a0,0x4
    80001bd0:	bf450513          	addi	a0,a0,-1036 # 800057c0 <cpus>
    80001bd4:	00f50533          	add	a0,a0,a5
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <userinit>:
    80001be0:	ff010113          	addi	sp,sp,-16
    80001be4:	00813423          	sd	s0,8(sp)
    80001be8:	01010413          	addi	s0,sp,16
    80001bec:	00813403          	ld	s0,8(sp)
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	fffff317          	auipc	t1,0xfffff
    80001bf8:	62030067          	jr	1568(t1) # 80001214 <main>

0000000080001bfc <either_copyout>:
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	00113423          	sd	ra,8(sp)
    80001c08:	01010413          	addi	s0,sp,16
    80001c0c:	02051663          	bnez	a0,80001c38 <either_copyout+0x3c>
    80001c10:	00058513          	mv	a0,a1
    80001c14:	00060593          	mv	a1,a2
    80001c18:	0006861b          	sext.w	a2,a3
    80001c1c:	00002097          	auipc	ra,0x2
    80001c20:	c58080e7          	jalr	-936(ra) # 80003874 <__memmove>
    80001c24:	00813083          	ld	ra,8(sp)
    80001c28:	00013403          	ld	s0,0(sp)
    80001c2c:	00000513          	li	a0,0
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret
    80001c38:	00002517          	auipc	a0,0x2
    80001c3c:	46850513          	addi	a0,a0,1128 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	92c080e7          	jalr	-1748(ra) # 8000256c <panic>

0000000080001c48 <either_copyin>:
    80001c48:	ff010113          	addi	sp,sp,-16
    80001c4c:	00813023          	sd	s0,0(sp)
    80001c50:	00113423          	sd	ra,8(sp)
    80001c54:	01010413          	addi	s0,sp,16
    80001c58:	02059463          	bnez	a1,80001c80 <either_copyin+0x38>
    80001c5c:	00060593          	mv	a1,a2
    80001c60:	0006861b          	sext.w	a2,a3
    80001c64:	00002097          	auipc	ra,0x2
    80001c68:	c10080e7          	jalr	-1008(ra) # 80003874 <__memmove>
    80001c6c:	00813083          	ld	ra,8(sp)
    80001c70:	00013403          	ld	s0,0(sp)
    80001c74:	00000513          	li	a0,0
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret
    80001c80:	00002517          	auipc	a0,0x2
    80001c84:	44850513          	addi	a0,a0,1096 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	8e4080e7          	jalr	-1820(ra) # 8000256c <panic>

0000000080001c90 <trapinit>:
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	00002597          	auipc	a1,0x2
    80001ca4:	45058593          	addi	a1,a1,1104 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001ca8:	00004517          	auipc	a0,0x4
    80001cac:	b9850513          	addi	a0,a0,-1128 # 80005840 <tickslock>
    80001cb0:	01010113          	addi	sp,sp,16
    80001cb4:	00001317          	auipc	t1,0x1
    80001cb8:	5c430067          	jr	1476(t1) # 80003278 <initlock>

0000000080001cbc <trapinithart>:
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00813423          	sd	s0,8(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00000797          	auipc	a5,0x0
    80001ccc:	2f878793          	addi	a5,a5,760 # 80001fc0 <kernelvec>
    80001cd0:	10579073          	csrw	stvec,a5
    80001cd4:	00813403          	ld	s0,8(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <usertrap>:
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    80001cec:	00813403          	ld	s0,8(sp)
    80001cf0:	01010113          	addi	sp,sp,16
    80001cf4:	00008067          	ret

0000000080001cf8 <usertrapret>:
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00813423          	sd	s0,8(sp)
    80001d00:	01010413          	addi	s0,sp,16
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <kerneltrap>:
    80001d10:	fe010113          	addi	sp,sp,-32
    80001d14:	00813823          	sd	s0,16(sp)
    80001d18:	00113c23          	sd	ra,24(sp)
    80001d1c:	00913423          	sd	s1,8(sp)
    80001d20:	02010413          	addi	s0,sp,32
    80001d24:	142025f3          	csrr	a1,scause
    80001d28:	100027f3          	csrr	a5,sstatus
    80001d2c:	0027f793          	andi	a5,a5,2
    80001d30:	10079c63          	bnez	a5,80001e48 <kerneltrap+0x138>
    80001d34:	142027f3          	csrr	a5,scause
    80001d38:	0207ce63          	bltz	a5,80001d74 <kerneltrap+0x64>
    80001d3c:	00002517          	auipc	a0,0x2
    80001d40:	3fc50513          	addi	a0,a0,1020 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	884080e7          	jalr	-1916(ra) # 800025c8 <__printf>
    80001d4c:	141025f3          	csrr	a1,sepc
    80001d50:	14302673          	csrr	a2,stval
    80001d54:	00002517          	auipc	a0,0x2
    80001d58:	3f450513          	addi	a0,a0,1012 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	86c080e7          	jalr	-1940(ra) # 800025c8 <__printf>
    80001d64:	00002517          	auipc	a0,0x2
    80001d68:	3fc50513          	addi	a0,a0,1020 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	800080e7          	jalr	-2048(ra) # 8000256c <panic>
    80001d74:	0ff7f713          	andi	a4,a5,255
    80001d78:	00900693          	li	a3,9
    80001d7c:	04d70063          	beq	a4,a3,80001dbc <kerneltrap+0xac>
    80001d80:	fff00713          	li	a4,-1
    80001d84:	03f71713          	slli	a4,a4,0x3f
    80001d88:	00170713          	addi	a4,a4,1
    80001d8c:	fae798e3          	bne	a5,a4,80001d3c <kerneltrap+0x2c>
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	e00080e7          	jalr	-512(ra) # 80001b90 <cpuid>
    80001d98:	06050663          	beqz	a0,80001e04 <kerneltrap+0xf4>
    80001d9c:	144027f3          	csrr	a5,sip
    80001da0:	ffd7f793          	andi	a5,a5,-3
    80001da4:	14479073          	csrw	sip,a5
    80001da8:	01813083          	ld	ra,24(sp)
    80001dac:	01013403          	ld	s0,16(sp)
    80001db0:	00813483          	ld	s1,8(sp)
    80001db4:	02010113          	addi	sp,sp,32
    80001db8:	00008067          	ret
    80001dbc:	00000097          	auipc	ra,0x0
    80001dc0:	3c8080e7          	jalr	968(ra) # 80002184 <plic_claim>
    80001dc4:	00a00793          	li	a5,10
    80001dc8:	00050493          	mv	s1,a0
    80001dcc:	06f50863          	beq	a0,a5,80001e3c <kerneltrap+0x12c>
    80001dd0:	fc050ce3          	beqz	a0,80001da8 <kerneltrap+0x98>
    80001dd4:	00050593          	mv	a1,a0
    80001dd8:	00002517          	auipc	a0,0x2
    80001ddc:	34050513          	addi	a0,a0,832 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	7e8080e7          	jalr	2024(ra) # 800025c8 <__printf>
    80001de8:	01013403          	ld	s0,16(sp)
    80001dec:	01813083          	ld	ra,24(sp)
    80001df0:	00048513          	mv	a0,s1
    80001df4:	00813483          	ld	s1,8(sp)
    80001df8:	02010113          	addi	sp,sp,32
    80001dfc:	00000317          	auipc	t1,0x0
    80001e00:	3c030067          	jr	960(t1) # 800021bc <plic_complete>
    80001e04:	00004517          	auipc	a0,0x4
    80001e08:	a3c50513          	addi	a0,a0,-1476 # 80005840 <tickslock>
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	490080e7          	jalr	1168(ra) # 8000329c <acquire>
    80001e14:	00003717          	auipc	a4,0x3
    80001e18:	92070713          	addi	a4,a4,-1760 # 80004734 <ticks>
    80001e1c:	00072783          	lw	a5,0(a4)
    80001e20:	00004517          	auipc	a0,0x4
    80001e24:	a2050513          	addi	a0,a0,-1504 # 80005840 <tickslock>
    80001e28:	0017879b          	addiw	a5,a5,1
    80001e2c:	00f72023          	sw	a5,0(a4)
    80001e30:	00001097          	auipc	ra,0x1
    80001e34:	538080e7          	jalr	1336(ra) # 80003368 <release>
    80001e38:	f65ff06f          	j	80001d9c <kerneltrap+0x8c>
    80001e3c:	00001097          	auipc	ra,0x1
    80001e40:	094080e7          	jalr	148(ra) # 80002ed0 <uartintr>
    80001e44:	fa5ff06f          	j	80001de8 <kerneltrap+0xd8>
    80001e48:	00002517          	auipc	a0,0x2
    80001e4c:	2b050513          	addi	a0,a0,688 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001e50:	00000097          	auipc	ra,0x0
    80001e54:	71c080e7          	jalr	1820(ra) # 8000256c <panic>

0000000080001e58 <clockintr>:
    80001e58:	fe010113          	addi	sp,sp,-32
    80001e5c:	00813823          	sd	s0,16(sp)
    80001e60:	00913423          	sd	s1,8(sp)
    80001e64:	00113c23          	sd	ra,24(sp)
    80001e68:	02010413          	addi	s0,sp,32
    80001e6c:	00004497          	auipc	s1,0x4
    80001e70:	9d448493          	addi	s1,s1,-1580 # 80005840 <tickslock>
    80001e74:	00048513          	mv	a0,s1
    80001e78:	00001097          	auipc	ra,0x1
    80001e7c:	424080e7          	jalr	1060(ra) # 8000329c <acquire>
    80001e80:	00003717          	auipc	a4,0x3
    80001e84:	8b470713          	addi	a4,a4,-1868 # 80004734 <ticks>
    80001e88:	00072783          	lw	a5,0(a4)
    80001e8c:	01013403          	ld	s0,16(sp)
    80001e90:	01813083          	ld	ra,24(sp)
    80001e94:	00048513          	mv	a0,s1
    80001e98:	0017879b          	addiw	a5,a5,1
    80001e9c:	00813483          	ld	s1,8(sp)
    80001ea0:	00f72023          	sw	a5,0(a4)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00001317          	auipc	t1,0x1
    80001eac:	4c030067          	jr	1216(t1) # 80003368 <release>

0000000080001eb0 <devintr>:
    80001eb0:	142027f3          	csrr	a5,scause
    80001eb4:	00000513          	li	a0,0
    80001eb8:	0007c463          	bltz	a5,80001ec0 <devintr+0x10>
    80001ebc:	00008067          	ret
    80001ec0:	fe010113          	addi	sp,sp,-32
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00113c23          	sd	ra,24(sp)
    80001ecc:	00913423          	sd	s1,8(sp)
    80001ed0:	02010413          	addi	s0,sp,32
    80001ed4:	0ff7f713          	andi	a4,a5,255
    80001ed8:	00900693          	li	a3,9
    80001edc:	04d70c63          	beq	a4,a3,80001f34 <devintr+0x84>
    80001ee0:	fff00713          	li	a4,-1
    80001ee4:	03f71713          	slli	a4,a4,0x3f
    80001ee8:	00170713          	addi	a4,a4,1
    80001eec:	00e78c63          	beq	a5,a4,80001f04 <devintr+0x54>
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	01013403          	ld	s0,16(sp)
    80001ef8:	00813483          	ld	s1,8(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00008067          	ret
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	c8c080e7          	jalr	-884(ra) # 80001b90 <cpuid>
    80001f0c:	06050663          	beqz	a0,80001f78 <devintr+0xc8>
    80001f10:	144027f3          	csrr	a5,sip
    80001f14:	ffd7f793          	andi	a5,a5,-3
    80001f18:	14479073          	csrw	sip,a5
    80001f1c:	01813083          	ld	ra,24(sp)
    80001f20:	01013403          	ld	s0,16(sp)
    80001f24:	00813483          	ld	s1,8(sp)
    80001f28:	00200513          	li	a0,2
    80001f2c:	02010113          	addi	sp,sp,32
    80001f30:	00008067          	ret
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	250080e7          	jalr	592(ra) # 80002184 <plic_claim>
    80001f3c:	00a00793          	li	a5,10
    80001f40:	00050493          	mv	s1,a0
    80001f44:	06f50663          	beq	a0,a5,80001fb0 <devintr+0x100>
    80001f48:	00100513          	li	a0,1
    80001f4c:	fa0482e3          	beqz	s1,80001ef0 <devintr+0x40>
    80001f50:	00048593          	mv	a1,s1
    80001f54:	00002517          	auipc	a0,0x2
    80001f58:	1c450513          	addi	a0,a0,452 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	66c080e7          	jalr	1644(ra) # 800025c8 <__printf>
    80001f64:	00048513          	mv	a0,s1
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	254080e7          	jalr	596(ra) # 800021bc <plic_complete>
    80001f70:	00100513          	li	a0,1
    80001f74:	f7dff06f          	j	80001ef0 <devintr+0x40>
    80001f78:	00004517          	auipc	a0,0x4
    80001f7c:	8c850513          	addi	a0,a0,-1848 # 80005840 <tickslock>
    80001f80:	00001097          	auipc	ra,0x1
    80001f84:	31c080e7          	jalr	796(ra) # 8000329c <acquire>
    80001f88:	00002717          	auipc	a4,0x2
    80001f8c:	7ac70713          	addi	a4,a4,1964 # 80004734 <ticks>
    80001f90:	00072783          	lw	a5,0(a4)
    80001f94:	00004517          	auipc	a0,0x4
    80001f98:	8ac50513          	addi	a0,a0,-1876 # 80005840 <tickslock>
    80001f9c:	0017879b          	addiw	a5,a5,1
    80001fa0:	00f72023          	sw	a5,0(a4)
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	3c4080e7          	jalr	964(ra) # 80003368 <release>
    80001fac:	f65ff06f          	j	80001f10 <devintr+0x60>
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	f20080e7          	jalr	-224(ra) # 80002ed0 <uartintr>
    80001fb8:	fadff06f          	j	80001f64 <devintr+0xb4>
    80001fbc:	0000                	unimp
	...

0000000080001fc0 <kernelvec>:
    80001fc0:	f0010113          	addi	sp,sp,-256
    80001fc4:	00113023          	sd	ra,0(sp)
    80001fc8:	00213423          	sd	sp,8(sp)
    80001fcc:	00313823          	sd	gp,16(sp)
    80001fd0:	00413c23          	sd	tp,24(sp)
    80001fd4:	02513023          	sd	t0,32(sp)
    80001fd8:	02613423          	sd	t1,40(sp)
    80001fdc:	02713823          	sd	t2,48(sp)
    80001fe0:	02813c23          	sd	s0,56(sp)
    80001fe4:	04913023          	sd	s1,64(sp)
    80001fe8:	04a13423          	sd	a0,72(sp)
    80001fec:	04b13823          	sd	a1,80(sp)
    80001ff0:	04c13c23          	sd	a2,88(sp)
    80001ff4:	06d13023          	sd	a3,96(sp)
    80001ff8:	06e13423          	sd	a4,104(sp)
    80001ffc:	06f13823          	sd	a5,112(sp)
    80002000:	07013c23          	sd	a6,120(sp)
    80002004:	09113023          	sd	a7,128(sp)
    80002008:	09213423          	sd	s2,136(sp)
    8000200c:	09313823          	sd	s3,144(sp)
    80002010:	09413c23          	sd	s4,152(sp)
    80002014:	0b513023          	sd	s5,160(sp)
    80002018:	0b613423          	sd	s6,168(sp)
    8000201c:	0b713823          	sd	s7,176(sp)
    80002020:	0b813c23          	sd	s8,184(sp)
    80002024:	0d913023          	sd	s9,192(sp)
    80002028:	0da13423          	sd	s10,200(sp)
    8000202c:	0db13823          	sd	s11,208(sp)
    80002030:	0dc13c23          	sd	t3,216(sp)
    80002034:	0fd13023          	sd	t4,224(sp)
    80002038:	0fe13423          	sd	t5,232(sp)
    8000203c:	0ff13823          	sd	t6,240(sp)
    80002040:	cd1ff0ef          	jal	ra,80001d10 <kerneltrap>
    80002044:	00013083          	ld	ra,0(sp)
    80002048:	00813103          	ld	sp,8(sp)
    8000204c:	01013183          	ld	gp,16(sp)
    80002050:	02013283          	ld	t0,32(sp)
    80002054:	02813303          	ld	t1,40(sp)
    80002058:	03013383          	ld	t2,48(sp)
    8000205c:	03813403          	ld	s0,56(sp)
    80002060:	04013483          	ld	s1,64(sp)
    80002064:	04813503          	ld	a0,72(sp)
    80002068:	05013583          	ld	a1,80(sp)
    8000206c:	05813603          	ld	a2,88(sp)
    80002070:	06013683          	ld	a3,96(sp)
    80002074:	06813703          	ld	a4,104(sp)
    80002078:	07013783          	ld	a5,112(sp)
    8000207c:	07813803          	ld	a6,120(sp)
    80002080:	08013883          	ld	a7,128(sp)
    80002084:	08813903          	ld	s2,136(sp)
    80002088:	09013983          	ld	s3,144(sp)
    8000208c:	09813a03          	ld	s4,152(sp)
    80002090:	0a013a83          	ld	s5,160(sp)
    80002094:	0a813b03          	ld	s6,168(sp)
    80002098:	0b013b83          	ld	s7,176(sp)
    8000209c:	0b813c03          	ld	s8,184(sp)
    800020a0:	0c013c83          	ld	s9,192(sp)
    800020a4:	0c813d03          	ld	s10,200(sp)
    800020a8:	0d013d83          	ld	s11,208(sp)
    800020ac:	0d813e03          	ld	t3,216(sp)
    800020b0:	0e013e83          	ld	t4,224(sp)
    800020b4:	0e813f03          	ld	t5,232(sp)
    800020b8:	0f013f83          	ld	t6,240(sp)
    800020bc:	10010113          	addi	sp,sp,256
    800020c0:	10200073          	sret
    800020c4:	00000013          	nop
    800020c8:	00000013          	nop
    800020cc:	00000013          	nop

00000000800020d0 <timervec>:
    800020d0:	34051573          	csrrw	a0,mscratch,a0
    800020d4:	00b53023          	sd	a1,0(a0)
    800020d8:	00c53423          	sd	a2,8(a0)
    800020dc:	00d53823          	sd	a3,16(a0)
    800020e0:	01853583          	ld	a1,24(a0)
    800020e4:	02053603          	ld	a2,32(a0)
    800020e8:	0005b683          	ld	a3,0(a1)
    800020ec:	00c686b3          	add	a3,a3,a2
    800020f0:	00d5b023          	sd	a3,0(a1)
    800020f4:	00200593          	li	a1,2
    800020f8:	14459073          	csrw	sip,a1
    800020fc:	01053683          	ld	a3,16(a0)
    80002100:	00853603          	ld	a2,8(a0)
    80002104:	00053583          	ld	a1,0(a0)
    80002108:	34051573          	csrrw	a0,mscratch,a0
    8000210c:	30200073          	mret

0000000080002110 <plicinit>:
    80002110:	ff010113          	addi	sp,sp,-16
    80002114:	00813423          	sd	s0,8(sp)
    80002118:	01010413          	addi	s0,sp,16
    8000211c:	00813403          	ld	s0,8(sp)
    80002120:	0c0007b7          	lui	a5,0xc000
    80002124:	00100713          	li	a4,1
    80002128:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000212c:	00e7a223          	sw	a4,4(a5)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <plicinithart>:
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	00113423          	sd	ra,8(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	a48080e7          	jalr	-1464(ra) # 80001b90 <cpuid>
    80002150:	0085171b          	slliw	a4,a0,0x8
    80002154:	0c0027b7          	lui	a5,0xc002
    80002158:	00e787b3          	add	a5,a5,a4
    8000215c:	40200713          	li	a4,1026
    80002160:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002164:	00813083          	ld	ra,8(sp)
    80002168:	00013403          	ld	s0,0(sp)
    8000216c:	00d5151b          	slliw	a0,a0,0xd
    80002170:	0c2017b7          	lui	a5,0xc201
    80002174:	00a78533          	add	a0,a5,a0
    80002178:	00052023          	sw	zero,0(a0)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <plic_claim>:
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813023          	sd	s0,0(sp)
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	01010413          	addi	s0,sp,16
    80002194:	00000097          	auipc	ra,0x0
    80002198:	9fc080e7          	jalr	-1540(ra) # 80001b90 <cpuid>
    8000219c:	00813083          	ld	ra,8(sp)
    800021a0:	00013403          	ld	s0,0(sp)
    800021a4:	00d5151b          	slliw	a0,a0,0xd
    800021a8:	0c2017b7          	lui	a5,0xc201
    800021ac:	00a78533          	add	a0,a5,a0
    800021b0:	00452503          	lw	a0,4(a0)
    800021b4:	01010113          	addi	sp,sp,16
    800021b8:	00008067          	ret

00000000800021bc <plic_complete>:
    800021bc:	fe010113          	addi	sp,sp,-32
    800021c0:	00813823          	sd	s0,16(sp)
    800021c4:	00913423          	sd	s1,8(sp)
    800021c8:	00113c23          	sd	ra,24(sp)
    800021cc:	02010413          	addi	s0,sp,32
    800021d0:	00050493          	mv	s1,a0
    800021d4:	00000097          	auipc	ra,0x0
    800021d8:	9bc080e7          	jalr	-1604(ra) # 80001b90 <cpuid>
    800021dc:	01813083          	ld	ra,24(sp)
    800021e0:	01013403          	ld	s0,16(sp)
    800021e4:	00d5179b          	slliw	a5,a0,0xd
    800021e8:	0c201737          	lui	a4,0xc201
    800021ec:	00f707b3          	add	a5,a4,a5
    800021f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800021f4:	00813483          	ld	s1,8(sp)
    800021f8:	02010113          	addi	sp,sp,32
    800021fc:	00008067          	ret

0000000080002200 <consolewrite>:
    80002200:	fb010113          	addi	sp,sp,-80
    80002204:	04813023          	sd	s0,64(sp)
    80002208:	04113423          	sd	ra,72(sp)
    8000220c:	02913c23          	sd	s1,56(sp)
    80002210:	03213823          	sd	s2,48(sp)
    80002214:	03313423          	sd	s3,40(sp)
    80002218:	03413023          	sd	s4,32(sp)
    8000221c:	01513c23          	sd	s5,24(sp)
    80002220:	05010413          	addi	s0,sp,80
    80002224:	06c05c63          	blez	a2,8000229c <consolewrite+0x9c>
    80002228:	00060993          	mv	s3,a2
    8000222c:	00050a13          	mv	s4,a0
    80002230:	00058493          	mv	s1,a1
    80002234:	00000913          	li	s2,0
    80002238:	fff00a93          	li	s5,-1
    8000223c:	01c0006f          	j	80002258 <consolewrite+0x58>
    80002240:	fbf44503          	lbu	a0,-65(s0)
    80002244:	0019091b          	addiw	s2,s2,1
    80002248:	00148493          	addi	s1,s1,1
    8000224c:	00001097          	auipc	ra,0x1
    80002250:	a9c080e7          	jalr	-1380(ra) # 80002ce8 <uartputc>
    80002254:	03298063          	beq	s3,s2,80002274 <consolewrite+0x74>
    80002258:	00048613          	mv	a2,s1
    8000225c:	00100693          	li	a3,1
    80002260:	000a0593          	mv	a1,s4
    80002264:	fbf40513          	addi	a0,s0,-65
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	9e0080e7          	jalr	-1568(ra) # 80001c48 <either_copyin>
    80002270:	fd5518e3          	bne	a0,s5,80002240 <consolewrite+0x40>
    80002274:	04813083          	ld	ra,72(sp)
    80002278:	04013403          	ld	s0,64(sp)
    8000227c:	03813483          	ld	s1,56(sp)
    80002280:	02813983          	ld	s3,40(sp)
    80002284:	02013a03          	ld	s4,32(sp)
    80002288:	01813a83          	ld	s5,24(sp)
    8000228c:	00090513          	mv	a0,s2
    80002290:	03013903          	ld	s2,48(sp)
    80002294:	05010113          	addi	sp,sp,80
    80002298:	00008067          	ret
    8000229c:	00000913          	li	s2,0
    800022a0:	fd5ff06f          	j	80002274 <consolewrite+0x74>

00000000800022a4 <consoleread>:
    800022a4:	f9010113          	addi	sp,sp,-112
    800022a8:	06813023          	sd	s0,96(sp)
    800022ac:	04913c23          	sd	s1,88(sp)
    800022b0:	05213823          	sd	s2,80(sp)
    800022b4:	05313423          	sd	s3,72(sp)
    800022b8:	05413023          	sd	s4,64(sp)
    800022bc:	03513c23          	sd	s5,56(sp)
    800022c0:	03613823          	sd	s6,48(sp)
    800022c4:	03713423          	sd	s7,40(sp)
    800022c8:	03813023          	sd	s8,32(sp)
    800022cc:	06113423          	sd	ra,104(sp)
    800022d0:	01913c23          	sd	s9,24(sp)
    800022d4:	07010413          	addi	s0,sp,112
    800022d8:	00060b93          	mv	s7,a2
    800022dc:	00050913          	mv	s2,a0
    800022e0:	00058c13          	mv	s8,a1
    800022e4:	00060b1b          	sext.w	s6,a2
    800022e8:	00003497          	auipc	s1,0x3
    800022ec:	58048493          	addi	s1,s1,1408 # 80005868 <cons>
    800022f0:	00400993          	li	s3,4
    800022f4:	fff00a13          	li	s4,-1
    800022f8:	00a00a93          	li	s5,10
    800022fc:	05705e63          	blez	s7,80002358 <consoleread+0xb4>
    80002300:	09c4a703          	lw	a4,156(s1)
    80002304:	0984a783          	lw	a5,152(s1)
    80002308:	0007071b          	sext.w	a4,a4
    8000230c:	08e78463          	beq	a5,a4,80002394 <consoleread+0xf0>
    80002310:	07f7f713          	andi	a4,a5,127
    80002314:	00e48733          	add	a4,s1,a4
    80002318:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000231c:	0017869b          	addiw	a3,a5,1
    80002320:	08d4ac23          	sw	a3,152(s1)
    80002324:	00070c9b          	sext.w	s9,a4
    80002328:	0b370663          	beq	a4,s3,800023d4 <consoleread+0x130>
    8000232c:	00100693          	li	a3,1
    80002330:	f9f40613          	addi	a2,s0,-97
    80002334:	000c0593          	mv	a1,s8
    80002338:	00090513          	mv	a0,s2
    8000233c:	f8e40fa3          	sb	a4,-97(s0)
    80002340:	00000097          	auipc	ra,0x0
    80002344:	8bc080e7          	jalr	-1860(ra) # 80001bfc <either_copyout>
    80002348:	01450863          	beq	a0,s4,80002358 <consoleread+0xb4>
    8000234c:	001c0c13          	addi	s8,s8,1
    80002350:	fffb8b9b          	addiw	s7,s7,-1
    80002354:	fb5c94e3          	bne	s9,s5,800022fc <consoleread+0x58>
    80002358:	000b851b          	sext.w	a0,s7
    8000235c:	06813083          	ld	ra,104(sp)
    80002360:	06013403          	ld	s0,96(sp)
    80002364:	05813483          	ld	s1,88(sp)
    80002368:	05013903          	ld	s2,80(sp)
    8000236c:	04813983          	ld	s3,72(sp)
    80002370:	04013a03          	ld	s4,64(sp)
    80002374:	03813a83          	ld	s5,56(sp)
    80002378:	02813b83          	ld	s7,40(sp)
    8000237c:	02013c03          	ld	s8,32(sp)
    80002380:	01813c83          	ld	s9,24(sp)
    80002384:	40ab053b          	subw	a0,s6,a0
    80002388:	03013b03          	ld	s6,48(sp)
    8000238c:	07010113          	addi	sp,sp,112
    80002390:	00008067          	ret
    80002394:	00001097          	auipc	ra,0x1
    80002398:	1d8080e7          	jalr	472(ra) # 8000356c <push_on>
    8000239c:	0984a703          	lw	a4,152(s1)
    800023a0:	09c4a783          	lw	a5,156(s1)
    800023a4:	0007879b          	sext.w	a5,a5
    800023a8:	fef70ce3          	beq	a4,a5,800023a0 <consoleread+0xfc>
    800023ac:	00001097          	auipc	ra,0x1
    800023b0:	234080e7          	jalr	564(ra) # 800035e0 <pop_on>
    800023b4:	0984a783          	lw	a5,152(s1)
    800023b8:	07f7f713          	andi	a4,a5,127
    800023bc:	00e48733          	add	a4,s1,a4
    800023c0:	01874703          	lbu	a4,24(a4)
    800023c4:	0017869b          	addiw	a3,a5,1
    800023c8:	08d4ac23          	sw	a3,152(s1)
    800023cc:	00070c9b          	sext.w	s9,a4
    800023d0:	f5371ee3          	bne	a4,s3,8000232c <consoleread+0x88>
    800023d4:	000b851b          	sext.w	a0,s7
    800023d8:	f96bf2e3          	bgeu	s7,s6,8000235c <consoleread+0xb8>
    800023dc:	08f4ac23          	sw	a5,152(s1)
    800023e0:	f7dff06f          	j	8000235c <consoleread+0xb8>

00000000800023e4 <consputc>:
    800023e4:	10000793          	li	a5,256
    800023e8:	00f50663          	beq	a0,a5,800023f4 <consputc+0x10>
    800023ec:	00001317          	auipc	t1,0x1
    800023f0:	9f430067          	jr	-1548(t1) # 80002de0 <uartputc_sync>
    800023f4:	ff010113          	addi	sp,sp,-16
    800023f8:	00113423          	sd	ra,8(sp)
    800023fc:	00813023          	sd	s0,0(sp)
    80002400:	01010413          	addi	s0,sp,16
    80002404:	00800513          	li	a0,8
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	9d8080e7          	jalr	-1576(ra) # 80002de0 <uartputc_sync>
    80002410:	02000513          	li	a0,32
    80002414:	00001097          	auipc	ra,0x1
    80002418:	9cc080e7          	jalr	-1588(ra) # 80002de0 <uartputc_sync>
    8000241c:	00013403          	ld	s0,0(sp)
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00800513          	li	a0,8
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00001317          	auipc	t1,0x1
    80002430:	9b430067          	jr	-1612(t1) # 80002de0 <uartputc_sync>

0000000080002434 <consoleintr>:
    80002434:	fe010113          	addi	sp,sp,-32
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	01213023          	sd	s2,0(sp)
    80002444:	00113c23          	sd	ra,24(sp)
    80002448:	02010413          	addi	s0,sp,32
    8000244c:	00003917          	auipc	s2,0x3
    80002450:	41c90913          	addi	s2,s2,1052 # 80005868 <cons>
    80002454:	00050493          	mv	s1,a0
    80002458:	00090513          	mv	a0,s2
    8000245c:	00001097          	auipc	ra,0x1
    80002460:	e40080e7          	jalr	-448(ra) # 8000329c <acquire>
    80002464:	02048c63          	beqz	s1,8000249c <consoleintr+0x68>
    80002468:	0a092783          	lw	a5,160(s2)
    8000246c:	09892703          	lw	a4,152(s2)
    80002470:	07f00693          	li	a3,127
    80002474:	40e7873b          	subw	a4,a5,a4
    80002478:	02e6e263          	bltu	a3,a4,8000249c <consoleintr+0x68>
    8000247c:	00d00713          	li	a4,13
    80002480:	04e48063          	beq	s1,a4,800024c0 <consoleintr+0x8c>
    80002484:	07f7f713          	andi	a4,a5,127
    80002488:	00e90733          	add	a4,s2,a4
    8000248c:	0017879b          	addiw	a5,a5,1
    80002490:	0af92023          	sw	a5,160(s2)
    80002494:	00970c23          	sb	s1,24(a4)
    80002498:	08f92e23          	sw	a5,156(s2)
    8000249c:	01013403          	ld	s0,16(sp)
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	00813483          	ld	s1,8(sp)
    800024a8:	00013903          	ld	s2,0(sp)
    800024ac:	00003517          	auipc	a0,0x3
    800024b0:	3bc50513          	addi	a0,a0,956 # 80005868 <cons>
    800024b4:	02010113          	addi	sp,sp,32
    800024b8:	00001317          	auipc	t1,0x1
    800024bc:	eb030067          	jr	-336(t1) # 80003368 <release>
    800024c0:	00a00493          	li	s1,10
    800024c4:	fc1ff06f          	j	80002484 <consoleintr+0x50>

00000000800024c8 <consoleinit>:
    800024c8:	fe010113          	addi	sp,sp,-32
    800024cc:	00113c23          	sd	ra,24(sp)
    800024d0:	00813823          	sd	s0,16(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	02010413          	addi	s0,sp,32
    800024dc:	00003497          	auipc	s1,0x3
    800024e0:	38c48493          	addi	s1,s1,908 # 80005868 <cons>
    800024e4:	00048513          	mv	a0,s1
    800024e8:	00002597          	auipc	a1,0x2
    800024ec:	c8858593          	addi	a1,a1,-888 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    800024f0:	00001097          	auipc	ra,0x1
    800024f4:	d88080e7          	jalr	-632(ra) # 80003278 <initlock>
    800024f8:	00000097          	auipc	ra,0x0
    800024fc:	7ac080e7          	jalr	1964(ra) # 80002ca4 <uartinit>
    80002500:	01813083          	ld	ra,24(sp)
    80002504:	01013403          	ld	s0,16(sp)
    80002508:	00000797          	auipc	a5,0x0
    8000250c:	d9c78793          	addi	a5,a5,-612 # 800022a4 <consoleread>
    80002510:	0af4bc23          	sd	a5,184(s1)
    80002514:	00000797          	auipc	a5,0x0
    80002518:	cec78793          	addi	a5,a5,-788 # 80002200 <consolewrite>
    8000251c:	0cf4b023          	sd	a5,192(s1)
    80002520:	00813483          	ld	s1,8(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <console_read>:
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00813423          	sd	s0,8(sp)
    80002534:	01010413          	addi	s0,sp,16
    80002538:	00813403          	ld	s0,8(sp)
    8000253c:	00003317          	auipc	t1,0x3
    80002540:	3e433303          	ld	t1,996(t1) # 80005920 <devsw+0x10>
    80002544:	01010113          	addi	sp,sp,16
    80002548:	00030067          	jr	t1

000000008000254c <console_write>:
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00813423          	sd	s0,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00813403          	ld	s0,8(sp)
    8000255c:	00003317          	auipc	t1,0x3
    80002560:	3cc33303          	ld	t1,972(t1) # 80005928 <devsw+0x18>
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00030067          	jr	t1

000000008000256c <panic>:
    8000256c:	fe010113          	addi	sp,sp,-32
    80002570:	00113c23          	sd	ra,24(sp)
    80002574:	00813823          	sd	s0,16(sp)
    80002578:	00913423          	sd	s1,8(sp)
    8000257c:	02010413          	addi	s0,sp,32
    80002580:	00050493          	mv	s1,a0
    80002584:	00002517          	auipc	a0,0x2
    80002588:	bf450513          	addi	a0,a0,-1036 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    8000258c:	00003797          	auipc	a5,0x3
    80002590:	4207ae23          	sw	zero,1084(a5) # 800059c8 <pr+0x18>
    80002594:	00000097          	auipc	ra,0x0
    80002598:	034080e7          	jalr	52(ra) # 800025c8 <__printf>
    8000259c:	00048513          	mv	a0,s1
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	028080e7          	jalr	40(ra) # 800025c8 <__printf>
    800025a8:	00002517          	auipc	a0,0x2
    800025ac:	bb050513          	addi	a0,a0,-1104 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	018080e7          	jalr	24(ra) # 800025c8 <__printf>
    800025b8:	00100793          	li	a5,1
    800025bc:	00002717          	auipc	a4,0x2
    800025c0:	16f72e23          	sw	a5,380(a4) # 80004738 <panicked>
    800025c4:	0000006f          	j	800025c4 <panic+0x58>

00000000800025c8 <__printf>:
    800025c8:	f3010113          	addi	sp,sp,-208
    800025cc:	08813023          	sd	s0,128(sp)
    800025d0:	07313423          	sd	s3,104(sp)
    800025d4:	09010413          	addi	s0,sp,144
    800025d8:	05813023          	sd	s8,64(sp)
    800025dc:	08113423          	sd	ra,136(sp)
    800025e0:	06913c23          	sd	s1,120(sp)
    800025e4:	07213823          	sd	s2,112(sp)
    800025e8:	07413023          	sd	s4,96(sp)
    800025ec:	05513c23          	sd	s5,88(sp)
    800025f0:	05613823          	sd	s6,80(sp)
    800025f4:	05713423          	sd	s7,72(sp)
    800025f8:	03913c23          	sd	s9,56(sp)
    800025fc:	03a13823          	sd	s10,48(sp)
    80002600:	03b13423          	sd	s11,40(sp)
    80002604:	00003317          	auipc	t1,0x3
    80002608:	3ac30313          	addi	t1,t1,940 # 800059b0 <pr>
    8000260c:	01832c03          	lw	s8,24(t1)
    80002610:	00b43423          	sd	a1,8(s0)
    80002614:	00c43823          	sd	a2,16(s0)
    80002618:	00d43c23          	sd	a3,24(s0)
    8000261c:	02e43023          	sd	a4,32(s0)
    80002620:	02f43423          	sd	a5,40(s0)
    80002624:	03043823          	sd	a6,48(s0)
    80002628:	03143c23          	sd	a7,56(s0)
    8000262c:	00050993          	mv	s3,a0
    80002630:	4a0c1663          	bnez	s8,80002adc <__printf+0x514>
    80002634:	60098c63          	beqz	s3,80002c4c <__printf+0x684>
    80002638:	0009c503          	lbu	a0,0(s3)
    8000263c:	00840793          	addi	a5,s0,8
    80002640:	f6f43c23          	sd	a5,-136(s0)
    80002644:	00000493          	li	s1,0
    80002648:	22050063          	beqz	a0,80002868 <__printf+0x2a0>
    8000264c:	00002a37          	lui	s4,0x2
    80002650:	00018ab7          	lui	s5,0x18
    80002654:	000f4b37          	lui	s6,0xf4
    80002658:	00989bb7          	lui	s7,0x989
    8000265c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002660:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002664:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002668:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000266c:	00148c9b          	addiw	s9,s1,1
    80002670:	02500793          	li	a5,37
    80002674:	01998933          	add	s2,s3,s9
    80002678:	38f51263          	bne	a0,a5,800029fc <__printf+0x434>
    8000267c:	00094783          	lbu	a5,0(s2)
    80002680:	00078c9b          	sext.w	s9,a5
    80002684:	1e078263          	beqz	a5,80002868 <__printf+0x2a0>
    80002688:	0024849b          	addiw	s1,s1,2
    8000268c:	07000713          	li	a4,112
    80002690:	00998933          	add	s2,s3,s1
    80002694:	38e78a63          	beq	a5,a4,80002a28 <__printf+0x460>
    80002698:	20f76863          	bltu	a4,a5,800028a8 <__printf+0x2e0>
    8000269c:	42a78863          	beq	a5,a0,80002acc <__printf+0x504>
    800026a0:	06400713          	li	a4,100
    800026a4:	40e79663          	bne	a5,a4,80002ab0 <__printf+0x4e8>
    800026a8:	f7843783          	ld	a5,-136(s0)
    800026ac:	0007a603          	lw	a2,0(a5)
    800026b0:	00878793          	addi	a5,a5,8
    800026b4:	f6f43c23          	sd	a5,-136(s0)
    800026b8:	42064a63          	bltz	a2,80002aec <__printf+0x524>
    800026bc:	00a00713          	li	a4,10
    800026c0:	02e677bb          	remuw	a5,a2,a4
    800026c4:	00002d97          	auipc	s11,0x2
    800026c8:	adcd8d93          	addi	s11,s11,-1316 # 800041a0 <digits>
    800026cc:	00900593          	li	a1,9
    800026d0:	0006051b          	sext.w	a0,a2
    800026d4:	00000c93          	li	s9,0
    800026d8:	02079793          	slli	a5,a5,0x20
    800026dc:	0207d793          	srli	a5,a5,0x20
    800026e0:	00fd87b3          	add	a5,s11,a5
    800026e4:	0007c783          	lbu	a5,0(a5)
    800026e8:	02e656bb          	divuw	a3,a2,a4
    800026ec:	f8f40023          	sb	a5,-128(s0)
    800026f0:	14c5d863          	bge	a1,a2,80002840 <__printf+0x278>
    800026f4:	06300593          	li	a1,99
    800026f8:	00100c93          	li	s9,1
    800026fc:	02e6f7bb          	remuw	a5,a3,a4
    80002700:	02079793          	slli	a5,a5,0x20
    80002704:	0207d793          	srli	a5,a5,0x20
    80002708:	00fd87b3          	add	a5,s11,a5
    8000270c:	0007c783          	lbu	a5,0(a5)
    80002710:	02e6d73b          	divuw	a4,a3,a4
    80002714:	f8f400a3          	sb	a5,-127(s0)
    80002718:	12a5f463          	bgeu	a1,a0,80002840 <__printf+0x278>
    8000271c:	00a00693          	li	a3,10
    80002720:	00900593          	li	a1,9
    80002724:	02d777bb          	remuw	a5,a4,a3
    80002728:	02079793          	slli	a5,a5,0x20
    8000272c:	0207d793          	srli	a5,a5,0x20
    80002730:	00fd87b3          	add	a5,s11,a5
    80002734:	0007c503          	lbu	a0,0(a5)
    80002738:	02d757bb          	divuw	a5,a4,a3
    8000273c:	f8a40123          	sb	a0,-126(s0)
    80002740:	48e5f263          	bgeu	a1,a4,80002bc4 <__printf+0x5fc>
    80002744:	06300513          	li	a0,99
    80002748:	02d7f5bb          	remuw	a1,a5,a3
    8000274c:	02059593          	slli	a1,a1,0x20
    80002750:	0205d593          	srli	a1,a1,0x20
    80002754:	00bd85b3          	add	a1,s11,a1
    80002758:	0005c583          	lbu	a1,0(a1)
    8000275c:	02d7d7bb          	divuw	a5,a5,a3
    80002760:	f8b401a3          	sb	a1,-125(s0)
    80002764:	48e57263          	bgeu	a0,a4,80002be8 <__printf+0x620>
    80002768:	3e700513          	li	a0,999
    8000276c:	02d7f5bb          	remuw	a1,a5,a3
    80002770:	02059593          	slli	a1,a1,0x20
    80002774:	0205d593          	srli	a1,a1,0x20
    80002778:	00bd85b3          	add	a1,s11,a1
    8000277c:	0005c583          	lbu	a1,0(a1)
    80002780:	02d7d7bb          	divuw	a5,a5,a3
    80002784:	f8b40223          	sb	a1,-124(s0)
    80002788:	46e57663          	bgeu	a0,a4,80002bf4 <__printf+0x62c>
    8000278c:	02d7f5bb          	remuw	a1,a5,a3
    80002790:	02059593          	slli	a1,a1,0x20
    80002794:	0205d593          	srli	a1,a1,0x20
    80002798:	00bd85b3          	add	a1,s11,a1
    8000279c:	0005c583          	lbu	a1,0(a1)
    800027a0:	02d7d7bb          	divuw	a5,a5,a3
    800027a4:	f8b402a3          	sb	a1,-123(s0)
    800027a8:	46ea7863          	bgeu	s4,a4,80002c18 <__printf+0x650>
    800027ac:	02d7f5bb          	remuw	a1,a5,a3
    800027b0:	02059593          	slli	a1,a1,0x20
    800027b4:	0205d593          	srli	a1,a1,0x20
    800027b8:	00bd85b3          	add	a1,s11,a1
    800027bc:	0005c583          	lbu	a1,0(a1)
    800027c0:	02d7d7bb          	divuw	a5,a5,a3
    800027c4:	f8b40323          	sb	a1,-122(s0)
    800027c8:	3eeaf863          	bgeu	s5,a4,80002bb8 <__printf+0x5f0>
    800027cc:	02d7f5bb          	remuw	a1,a5,a3
    800027d0:	02059593          	slli	a1,a1,0x20
    800027d4:	0205d593          	srli	a1,a1,0x20
    800027d8:	00bd85b3          	add	a1,s11,a1
    800027dc:	0005c583          	lbu	a1,0(a1)
    800027e0:	02d7d7bb          	divuw	a5,a5,a3
    800027e4:	f8b403a3          	sb	a1,-121(s0)
    800027e8:	42eb7e63          	bgeu	s6,a4,80002c24 <__printf+0x65c>
    800027ec:	02d7f5bb          	remuw	a1,a5,a3
    800027f0:	02059593          	slli	a1,a1,0x20
    800027f4:	0205d593          	srli	a1,a1,0x20
    800027f8:	00bd85b3          	add	a1,s11,a1
    800027fc:	0005c583          	lbu	a1,0(a1)
    80002800:	02d7d7bb          	divuw	a5,a5,a3
    80002804:	f8b40423          	sb	a1,-120(s0)
    80002808:	42ebfc63          	bgeu	s7,a4,80002c40 <__printf+0x678>
    8000280c:	02079793          	slli	a5,a5,0x20
    80002810:	0207d793          	srli	a5,a5,0x20
    80002814:	00fd8db3          	add	s11,s11,a5
    80002818:	000dc703          	lbu	a4,0(s11)
    8000281c:	00a00793          	li	a5,10
    80002820:	00900c93          	li	s9,9
    80002824:	f8e404a3          	sb	a4,-119(s0)
    80002828:	00065c63          	bgez	a2,80002840 <__printf+0x278>
    8000282c:	f9040713          	addi	a4,s0,-112
    80002830:	00f70733          	add	a4,a4,a5
    80002834:	02d00693          	li	a3,45
    80002838:	fed70823          	sb	a3,-16(a4)
    8000283c:	00078c93          	mv	s9,a5
    80002840:	f8040793          	addi	a5,s0,-128
    80002844:	01978cb3          	add	s9,a5,s9
    80002848:	f7f40d13          	addi	s10,s0,-129
    8000284c:	000cc503          	lbu	a0,0(s9)
    80002850:	fffc8c93          	addi	s9,s9,-1
    80002854:	00000097          	auipc	ra,0x0
    80002858:	b90080e7          	jalr	-1136(ra) # 800023e4 <consputc>
    8000285c:	ffac98e3          	bne	s9,s10,8000284c <__printf+0x284>
    80002860:	00094503          	lbu	a0,0(s2)
    80002864:	e00514e3          	bnez	a0,8000266c <__printf+0xa4>
    80002868:	1a0c1663          	bnez	s8,80002a14 <__printf+0x44c>
    8000286c:	08813083          	ld	ra,136(sp)
    80002870:	08013403          	ld	s0,128(sp)
    80002874:	07813483          	ld	s1,120(sp)
    80002878:	07013903          	ld	s2,112(sp)
    8000287c:	06813983          	ld	s3,104(sp)
    80002880:	06013a03          	ld	s4,96(sp)
    80002884:	05813a83          	ld	s5,88(sp)
    80002888:	05013b03          	ld	s6,80(sp)
    8000288c:	04813b83          	ld	s7,72(sp)
    80002890:	04013c03          	ld	s8,64(sp)
    80002894:	03813c83          	ld	s9,56(sp)
    80002898:	03013d03          	ld	s10,48(sp)
    8000289c:	02813d83          	ld	s11,40(sp)
    800028a0:	0d010113          	addi	sp,sp,208
    800028a4:	00008067          	ret
    800028a8:	07300713          	li	a4,115
    800028ac:	1ce78a63          	beq	a5,a4,80002a80 <__printf+0x4b8>
    800028b0:	07800713          	li	a4,120
    800028b4:	1ee79e63          	bne	a5,a4,80002ab0 <__printf+0x4e8>
    800028b8:	f7843783          	ld	a5,-136(s0)
    800028bc:	0007a703          	lw	a4,0(a5)
    800028c0:	00878793          	addi	a5,a5,8
    800028c4:	f6f43c23          	sd	a5,-136(s0)
    800028c8:	28074263          	bltz	a4,80002b4c <__printf+0x584>
    800028cc:	00002d97          	auipc	s11,0x2
    800028d0:	8d4d8d93          	addi	s11,s11,-1836 # 800041a0 <digits>
    800028d4:	00f77793          	andi	a5,a4,15
    800028d8:	00fd87b3          	add	a5,s11,a5
    800028dc:	0007c683          	lbu	a3,0(a5)
    800028e0:	00f00613          	li	a2,15
    800028e4:	0007079b          	sext.w	a5,a4
    800028e8:	f8d40023          	sb	a3,-128(s0)
    800028ec:	0047559b          	srliw	a1,a4,0x4
    800028f0:	0047569b          	srliw	a3,a4,0x4
    800028f4:	00000c93          	li	s9,0
    800028f8:	0ee65063          	bge	a2,a4,800029d8 <__printf+0x410>
    800028fc:	00f6f693          	andi	a3,a3,15
    80002900:	00dd86b3          	add	a3,s11,a3
    80002904:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002908:	0087d79b          	srliw	a5,a5,0x8
    8000290c:	00100c93          	li	s9,1
    80002910:	f8d400a3          	sb	a3,-127(s0)
    80002914:	0cb67263          	bgeu	a2,a1,800029d8 <__printf+0x410>
    80002918:	00f7f693          	andi	a3,a5,15
    8000291c:	00dd86b3          	add	a3,s11,a3
    80002920:	0006c583          	lbu	a1,0(a3)
    80002924:	00f00613          	li	a2,15
    80002928:	0047d69b          	srliw	a3,a5,0x4
    8000292c:	f8b40123          	sb	a1,-126(s0)
    80002930:	0047d593          	srli	a1,a5,0x4
    80002934:	28f67e63          	bgeu	a2,a5,80002bd0 <__printf+0x608>
    80002938:	00f6f693          	andi	a3,a3,15
    8000293c:	00dd86b3          	add	a3,s11,a3
    80002940:	0006c503          	lbu	a0,0(a3)
    80002944:	0087d813          	srli	a6,a5,0x8
    80002948:	0087d69b          	srliw	a3,a5,0x8
    8000294c:	f8a401a3          	sb	a0,-125(s0)
    80002950:	28b67663          	bgeu	a2,a1,80002bdc <__printf+0x614>
    80002954:	00f6f693          	andi	a3,a3,15
    80002958:	00dd86b3          	add	a3,s11,a3
    8000295c:	0006c583          	lbu	a1,0(a3)
    80002960:	00c7d513          	srli	a0,a5,0xc
    80002964:	00c7d69b          	srliw	a3,a5,0xc
    80002968:	f8b40223          	sb	a1,-124(s0)
    8000296c:	29067a63          	bgeu	a2,a6,80002c00 <__printf+0x638>
    80002970:	00f6f693          	andi	a3,a3,15
    80002974:	00dd86b3          	add	a3,s11,a3
    80002978:	0006c583          	lbu	a1,0(a3)
    8000297c:	0107d813          	srli	a6,a5,0x10
    80002980:	0107d69b          	srliw	a3,a5,0x10
    80002984:	f8b402a3          	sb	a1,-123(s0)
    80002988:	28a67263          	bgeu	a2,a0,80002c0c <__printf+0x644>
    8000298c:	00f6f693          	andi	a3,a3,15
    80002990:	00dd86b3          	add	a3,s11,a3
    80002994:	0006c683          	lbu	a3,0(a3)
    80002998:	0147d79b          	srliw	a5,a5,0x14
    8000299c:	f8d40323          	sb	a3,-122(s0)
    800029a0:	21067663          	bgeu	a2,a6,80002bac <__printf+0x5e4>
    800029a4:	02079793          	slli	a5,a5,0x20
    800029a8:	0207d793          	srli	a5,a5,0x20
    800029ac:	00fd8db3          	add	s11,s11,a5
    800029b0:	000dc683          	lbu	a3,0(s11)
    800029b4:	00800793          	li	a5,8
    800029b8:	00700c93          	li	s9,7
    800029bc:	f8d403a3          	sb	a3,-121(s0)
    800029c0:	00075c63          	bgez	a4,800029d8 <__printf+0x410>
    800029c4:	f9040713          	addi	a4,s0,-112
    800029c8:	00f70733          	add	a4,a4,a5
    800029cc:	02d00693          	li	a3,45
    800029d0:	fed70823          	sb	a3,-16(a4)
    800029d4:	00078c93          	mv	s9,a5
    800029d8:	f8040793          	addi	a5,s0,-128
    800029dc:	01978cb3          	add	s9,a5,s9
    800029e0:	f7f40d13          	addi	s10,s0,-129
    800029e4:	000cc503          	lbu	a0,0(s9)
    800029e8:	fffc8c93          	addi	s9,s9,-1
    800029ec:	00000097          	auipc	ra,0x0
    800029f0:	9f8080e7          	jalr	-1544(ra) # 800023e4 <consputc>
    800029f4:	ff9d18e3          	bne	s10,s9,800029e4 <__printf+0x41c>
    800029f8:	0100006f          	j	80002a08 <__printf+0x440>
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	9e8080e7          	jalr	-1560(ra) # 800023e4 <consputc>
    80002a04:	000c8493          	mv	s1,s9
    80002a08:	00094503          	lbu	a0,0(s2)
    80002a0c:	c60510e3          	bnez	a0,8000266c <__printf+0xa4>
    80002a10:	e40c0ee3          	beqz	s8,8000286c <__printf+0x2a4>
    80002a14:	00003517          	auipc	a0,0x3
    80002a18:	f9c50513          	addi	a0,a0,-100 # 800059b0 <pr>
    80002a1c:	00001097          	auipc	ra,0x1
    80002a20:	94c080e7          	jalr	-1716(ra) # 80003368 <release>
    80002a24:	e49ff06f          	j	8000286c <__printf+0x2a4>
    80002a28:	f7843783          	ld	a5,-136(s0)
    80002a2c:	03000513          	li	a0,48
    80002a30:	01000d13          	li	s10,16
    80002a34:	00878713          	addi	a4,a5,8
    80002a38:	0007bc83          	ld	s9,0(a5)
    80002a3c:	f6e43c23          	sd	a4,-136(s0)
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	9a4080e7          	jalr	-1628(ra) # 800023e4 <consputc>
    80002a48:	07800513          	li	a0,120
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	998080e7          	jalr	-1640(ra) # 800023e4 <consputc>
    80002a54:	00001d97          	auipc	s11,0x1
    80002a58:	74cd8d93          	addi	s11,s11,1868 # 800041a0 <digits>
    80002a5c:	03ccd793          	srli	a5,s9,0x3c
    80002a60:	00fd87b3          	add	a5,s11,a5
    80002a64:	0007c503          	lbu	a0,0(a5)
    80002a68:	fffd0d1b          	addiw	s10,s10,-1
    80002a6c:	004c9c93          	slli	s9,s9,0x4
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	974080e7          	jalr	-1676(ra) # 800023e4 <consputc>
    80002a78:	fe0d12e3          	bnez	s10,80002a5c <__printf+0x494>
    80002a7c:	f8dff06f          	j	80002a08 <__printf+0x440>
    80002a80:	f7843783          	ld	a5,-136(s0)
    80002a84:	0007bc83          	ld	s9,0(a5)
    80002a88:	00878793          	addi	a5,a5,8
    80002a8c:	f6f43c23          	sd	a5,-136(s0)
    80002a90:	000c9a63          	bnez	s9,80002aa4 <__printf+0x4dc>
    80002a94:	1080006f          	j	80002b9c <__printf+0x5d4>
    80002a98:	001c8c93          	addi	s9,s9,1
    80002a9c:	00000097          	auipc	ra,0x0
    80002aa0:	948080e7          	jalr	-1720(ra) # 800023e4 <consputc>
    80002aa4:	000cc503          	lbu	a0,0(s9)
    80002aa8:	fe0518e3          	bnez	a0,80002a98 <__printf+0x4d0>
    80002aac:	f5dff06f          	j	80002a08 <__printf+0x440>
    80002ab0:	02500513          	li	a0,37
    80002ab4:	00000097          	auipc	ra,0x0
    80002ab8:	930080e7          	jalr	-1744(ra) # 800023e4 <consputc>
    80002abc:	000c8513          	mv	a0,s9
    80002ac0:	00000097          	auipc	ra,0x0
    80002ac4:	924080e7          	jalr	-1756(ra) # 800023e4 <consputc>
    80002ac8:	f41ff06f          	j	80002a08 <__printf+0x440>
    80002acc:	02500513          	li	a0,37
    80002ad0:	00000097          	auipc	ra,0x0
    80002ad4:	914080e7          	jalr	-1772(ra) # 800023e4 <consputc>
    80002ad8:	f31ff06f          	j	80002a08 <__printf+0x440>
    80002adc:	00030513          	mv	a0,t1
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	7bc080e7          	jalr	1980(ra) # 8000329c <acquire>
    80002ae8:	b4dff06f          	j	80002634 <__printf+0x6c>
    80002aec:	40c0053b          	negw	a0,a2
    80002af0:	00a00713          	li	a4,10
    80002af4:	02e576bb          	remuw	a3,a0,a4
    80002af8:	00001d97          	auipc	s11,0x1
    80002afc:	6a8d8d93          	addi	s11,s11,1704 # 800041a0 <digits>
    80002b00:	ff700593          	li	a1,-9
    80002b04:	02069693          	slli	a3,a3,0x20
    80002b08:	0206d693          	srli	a3,a3,0x20
    80002b0c:	00dd86b3          	add	a3,s11,a3
    80002b10:	0006c683          	lbu	a3,0(a3)
    80002b14:	02e557bb          	divuw	a5,a0,a4
    80002b18:	f8d40023          	sb	a3,-128(s0)
    80002b1c:	10b65e63          	bge	a2,a1,80002c38 <__printf+0x670>
    80002b20:	06300593          	li	a1,99
    80002b24:	02e7f6bb          	remuw	a3,a5,a4
    80002b28:	02069693          	slli	a3,a3,0x20
    80002b2c:	0206d693          	srli	a3,a3,0x20
    80002b30:	00dd86b3          	add	a3,s11,a3
    80002b34:	0006c683          	lbu	a3,0(a3)
    80002b38:	02e7d73b          	divuw	a4,a5,a4
    80002b3c:	00200793          	li	a5,2
    80002b40:	f8d400a3          	sb	a3,-127(s0)
    80002b44:	bca5ece3          	bltu	a1,a0,8000271c <__printf+0x154>
    80002b48:	ce5ff06f          	j	8000282c <__printf+0x264>
    80002b4c:	40e007bb          	negw	a5,a4
    80002b50:	00001d97          	auipc	s11,0x1
    80002b54:	650d8d93          	addi	s11,s11,1616 # 800041a0 <digits>
    80002b58:	00f7f693          	andi	a3,a5,15
    80002b5c:	00dd86b3          	add	a3,s11,a3
    80002b60:	0006c583          	lbu	a1,0(a3)
    80002b64:	ff100613          	li	a2,-15
    80002b68:	0047d69b          	srliw	a3,a5,0x4
    80002b6c:	f8b40023          	sb	a1,-128(s0)
    80002b70:	0047d59b          	srliw	a1,a5,0x4
    80002b74:	0ac75e63          	bge	a4,a2,80002c30 <__printf+0x668>
    80002b78:	00f6f693          	andi	a3,a3,15
    80002b7c:	00dd86b3          	add	a3,s11,a3
    80002b80:	0006c603          	lbu	a2,0(a3)
    80002b84:	00f00693          	li	a3,15
    80002b88:	0087d79b          	srliw	a5,a5,0x8
    80002b8c:	f8c400a3          	sb	a2,-127(s0)
    80002b90:	d8b6e4e3          	bltu	a3,a1,80002918 <__printf+0x350>
    80002b94:	00200793          	li	a5,2
    80002b98:	e2dff06f          	j	800029c4 <__printf+0x3fc>
    80002b9c:	00001c97          	auipc	s9,0x1
    80002ba0:	5e4c8c93          	addi	s9,s9,1508 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002ba4:	02800513          	li	a0,40
    80002ba8:	ef1ff06f          	j	80002a98 <__printf+0x4d0>
    80002bac:	00700793          	li	a5,7
    80002bb0:	00600c93          	li	s9,6
    80002bb4:	e0dff06f          	j	800029c0 <__printf+0x3f8>
    80002bb8:	00700793          	li	a5,7
    80002bbc:	00600c93          	li	s9,6
    80002bc0:	c69ff06f          	j	80002828 <__printf+0x260>
    80002bc4:	00300793          	li	a5,3
    80002bc8:	00200c93          	li	s9,2
    80002bcc:	c5dff06f          	j	80002828 <__printf+0x260>
    80002bd0:	00300793          	li	a5,3
    80002bd4:	00200c93          	li	s9,2
    80002bd8:	de9ff06f          	j	800029c0 <__printf+0x3f8>
    80002bdc:	00400793          	li	a5,4
    80002be0:	00300c93          	li	s9,3
    80002be4:	dddff06f          	j	800029c0 <__printf+0x3f8>
    80002be8:	00400793          	li	a5,4
    80002bec:	00300c93          	li	s9,3
    80002bf0:	c39ff06f          	j	80002828 <__printf+0x260>
    80002bf4:	00500793          	li	a5,5
    80002bf8:	00400c93          	li	s9,4
    80002bfc:	c2dff06f          	j	80002828 <__printf+0x260>
    80002c00:	00500793          	li	a5,5
    80002c04:	00400c93          	li	s9,4
    80002c08:	db9ff06f          	j	800029c0 <__printf+0x3f8>
    80002c0c:	00600793          	li	a5,6
    80002c10:	00500c93          	li	s9,5
    80002c14:	dadff06f          	j	800029c0 <__printf+0x3f8>
    80002c18:	00600793          	li	a5,6
    80002c1c:	00500c93          	li	s9,5
    80002c20:	c09ff06f          	j	80002828 <__printf+0x260>
    80002c24:	00800793          	li	a5,8
    80002c28:	00700c93          	li	s9,7
    80002c2c:	bfdff06f          	j	80002828 <__printf+0x260>
    80002c30:	00100793          	li	a5,1
    80002c34:	d91ff06f          	j	800029c4 <__printf+0x3fc>
    80002c38:	00100793          	li	a5,1
    80002c3c:	bf1ff06f          	j	8000282c <__printf+0x264>
    80002c40:	00900793          	li	a5,9
    80002c44:	00800c93          	li	s9,8
    80002c48:	be1ff06f          	j	80002828 <__printf+0x260>
    80002c4c:	00001517          	auipc	a0,0x1
    80002c50:	53c50513          	addi	a0,a0,1340 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	918080e7          	jalr	-1768(ra) # 8000256c <panic>

0000000080002c5c <printfinit>:
    80002c5c:	fe010113          	addi	sp,sp,-32
    80002c60:	00813823          	sd	s0,16(sp)
    80002c64:	00913423          	sd	s1,8(sp)
    80002c68:	00113c23          	sd	ra,24(sp)
    80002c6c:	02010413          	addi	s0,sp,32
    80002c70:	00003497          	auipc	s1,0x3
    80002c74:	d4048493          	addi	s1,s1,-704 # 800059b0 <pr>
    80002c78:	00048513          	mv	a0,s1
    80002c7c:	00001597          	auipc	a1,0x1
    80002c80:	51c58593          	addi	a1,a1,1308 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002c84:	00000097          	auipc	ra,0x0
    80002c88:	5f4080e7          	jalr	1524(ra) # 80003278 <initlock>
    80002c8c:	01813083          	ld	ra,24(sp)
    80002c90:	01013403          	ld	s0,16(sp)
    80002c94:	0004ac23          	sw	zero,24(s1)
    80002c98:	00813483          	ld	s1,8(sp)
    80002c9c:	02010113          	addi	sp,sp,32
    80002ca0:	00008067          	ret

0000000080002ca4 <uartinit>:
    80002ca4:	ff010113          	addi	sp,sp,-16
    80002ca8:	00813423          	sd	s0,8(sp)
    80002cac:	01010413          	addi	s0,sp,16
    80002cb0:	100007b7          	lui	a5,0x10000
    80002cb4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002cb8:	f8000713          	li	a4,-128
    80002cbc:	00e781a3          	sb	a4,3(a5)
    80002cc0:	00300713          	li	a4,3
    80002cc4:	00e78023          	sb	a4,0(a5)
    80002cc8:	000780a3          	sb	zero,1(a5)
    80002ccc:	00e781a3          	sb	a4,3(a5)
    80002cd0:	00700693          	li	a3,7
    80002cd4:	00d78123          	sb	a3,2(a5)
    80002cd8:	00e780a3          	sb	a4,1(a5)
    80002cdc:	00813403          	ld	s0,8(sp)
    80002ce0:	01010113          	addi	sp,sp,16
    80002ce4:	00008067          	ret

0000000080002ce8 <uartputc>:
    80002ce8:	00002797          	auipc	a5,0x2
    80002cec:	a507a783          	lw	a5,-1456(a5) # 80004738 <panicked>
    80002cf0:	00078463          	beqz	a5,80002cf8 <uartputc+0x10>
    80002cf4:	0000006f          	j	80002cf4 <uartputc+0xc>
    80002cf8:	fd010113          	addi	sp,sp,-48
    80002cfc:	02813023          	sd	s0,32(sp)
    80002d00:	00913c23          	sd	s1,24(sp)
    80002d04:	01213823          	sd	s2,16(sp)
    80002d08:	01313423          	sd	s3,8(sp)
    80002d0c:	02113423          	sd	ra,40(sp)
    80002d10:	03010413          	addi	s0,sp,48
    80002d14:	00002917          	auipc	s2,0x2
    80002d18:	a2c90913          	addi	s2,s2,-1492 # 80004740 <uart_tx_r>
    80002d1c:	00093783          	ld	a5,0(s2)
    80002d20:	00002497          	auipc	s1,0x2
    80002d24:	a2848493          	addi	s1,s1,-1496 # 80004748 <uart_tx_w>
    80002d28:	0004b703          	ld	a4,0(s1)
    80002d2c:	02078693          	addi	a3,a5,32
    80002d30:	00050993          	mv	s3,a0
    80002d34:	02e69c63          	bne	a3,a4,80002d6c <uartputc+0x84>
    80002d38:	00001097          	auipc	ra,0x1
    80002d3c:	834080e7          	jalr	-1996(ra) # 8000356c <push_on>
    80002d40:	00093783          	ld	a5,0(s2)
    80002d44:	0004b703          	ld	a4,0(s1)
    80002d48:	02078793          	addi	a5,a5,32
    80002d4c:	00e79463          	bne	a5,a4,80002d54 <uartputc+0x6c>
    80002d50:	0000006f          	j	80002d50 <uartputc+0x68>
    80002d54:	00001097          	auipc	ra,0x1
    80002d58:	88c080e7          	jalr	-1908(ra) # 800035e0 <pop_on>
    80002d5c:	00093783          	ld	a5,0(s2)
    80002d60:	0004b703          	ld	a4,0(s1)
    80002d64:	02078693          	addi	a3,a5,32
    80002d68:	fce688e3          	beq	a3,a4,80002d38 <uartputc+0x50>
    80002d6c:	01f77693          	andi	a3,a4,31
    80002d70:	00003597          	auipc	a1,0x3
    80002d74:	c6058593          	addi	a1,a1,-928 # 800059d0 <uart_tx_buf>
    80002d78:	00d586b3          	add	a3,a1,a3
    80002d7c:	00170713          	addi	a4,a4,1
    80002d80:	01368023          	sb	s3,0(a3)
    80002d84:	00e4b023          	sd	a4,0(s1)
    80002d88:	10000637          	lui	a2,0x10000
    80002d8c:	02f71063          	bne	a4,a5,80002dac <uartputc+0xc4>
    80002d90:	0340006f          	j	80002dc4 <uartputc+0xdc>
    80002d94:	00074703          	lbu	a4,0(a4)
    80002d98:	00f93023          	sd	a5,0(s2)
    80002d9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002da0:	00093783          	ld	a5,0(s2)
    80002da4:	0004b703          	ld	a4,0(s1)
    80002da8:	00f70e63          	beq	a4,a5,80002dc4 <uartputc+0xdc>
    80002dac:	00564683          	lbu	a3,5(a2)
    80002db0:	01f7f713          	andi	a4,a5,31
    80002db4:	00e58733          	add	a4,a1,a4
    80002db8:	0206f693          	andi	a3,a3,32
    80002dbc:	00178793          	addi	a5,a5,1
    80002dc0:	fc069ae3          	bnez	a3,80002d94 <uartputc+0xac>
    80002dc4:	02813083          	ld	ra,40(sp)
    80002dc8:	02013403          	ld	s0,32(sp)
    80002dcc:	01813483          	ld	s1,24(sp)
    80002dd0:	01013903          	ld	s2,16(sp)
    80002dd4:	00813983          	ld	s3,8(sp)
    80002dd8:	03010113          	addi	sp,sp,48
    80002ddc:	00008067          	ret

0000000080002de0 <uartputc_sync>:
    80002de0:	ff010113          	addi	sp,sp,-16
    80002de4:	00813423          	sd	s0,8(sp)
    80002de8:	01010413          	addi	s0,sp,16
    80002dec:	00002717          	auipc	a4,0x2
    80002df0:	94c72703          	lw	a4,-1716(a4) # 80004738 <panicked>
    80002df4:	02071663          	bnez	a4,80002e20 <uartputc_sync+0x40>
    80002df8:	00050793          	mv	a5,a0
    80002dfc:	100006b7          	lui	a3,0x10000
    80002e00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002e04:	02077713          	andi	a4,a4,32
    80002e08:	fe070ce3          	beqz	a4,80002e00 <uartputc_sync+0x20>
    80002e0c:	0ff7f793          	andi	a5,a5,255
    80002e10:	00f68023          	sb	a5,0(a3)
    80002e14:	00813403          	ld	s0,8(sp)
    80002e18:	01010113          	addi	sp,sp,16
    80002e1c:	00008067          	ret
    80002e20:	0000006f          	j	80002e20 <uartputc_sync+0x40>

0000000080002e24 <uartstart>:
    80002e24:	ff010113          	addi	sp,sp,-16
    80002e28:	00813423          	sd	s0,8(sp)
    80002e2c:	01010413          	addi	s0,sp,16
    80002e30:	00002617          	auipc	a2,0x2
    80002e34:	91060613          	addi	a2,a2,-1776 # 80004740 <uart_tx_r>
    80002e38:	00002517          	auipc	a0,0x2
    80002e3c:	91050513          	addi	a0,a0,-1776 # 80004748 <uart_tx_w>
    80002e40:	00063783          	ld	a5,0(a2)
    80002e44:	00053703          	ld	a4,0(a0)
    80002e48:	04f70263          	beq	a4,a5,80002e8c <uartstart+0x68>
    80002e4c:	100005b7          	lui	a1,0x10000
    80002e50:	00003817          	auipc	a6,0x3
    80002e54:	b8080813          	addi	a6,a6,-1152 # 800059d0 <uart_tx_buf>
    80002e58:	01c0006f          	j	80002e74 <uartstart+0x50>
    80002e5c:	0006c703          	lbu	a4,0(a3)
    80002e60:	00f63023          	sd	a5,0(a2)
    80002e64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e68:	00063783          	ld	a5,0(a2)
    80002e6c:	00053703          	ld	a4,0(a0)
    80002e70:	00f70e63          	beq	a4,a5,80002e8c <uartstart+0x68>
    80002e74:	01f7f713          	andi	a4,a5,31
    80002e78:	00e806b3          	add	a3,a6,a4
    80002e7c:	0055c703          	lbu	a4,5(a1)
    80002e80:	00178793          	addi	a5,a5,1
    80002e84:	02077713          	andi	a4,a4,32
    80002e88:	fc071ae3          	bnez	a4,80002e5c <uartstart+0x38>
    80002e8c:	00813403          	ld	s0,8(sp)
    80002e90:	01010113          	addi	sp,sp,16
    80002e94:	00008067          	ret

0000000080002e98 <uartgetc>:
    80002e98:	ff010113          	addi	sp,sp,-16
    80002e9c:	00813423          	sd	s0,8(sp)
    80002ea0:	01010413          	addi	s0,sp,16
    80002ea4:	10000737          	lui	a4,0x10000
    80002ea8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002eac:	0017f793          	andi	a5,a5,1
    80002eb0:	00078c63          	beqz	a5,80002ec8 <uartgetc+0x30>
    80002eb4:	00074503          	lbu	a0,0(a4)
    80002eb8:	0ff57513          	andi	a0,a0,255
    80002ebc:	00813403          	ld	s0,8(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret
    80002ec8:	fff00513          	li	a0,-1
    80002ecc:	ff1ff06f          	j	80002ebc <uartgetc+0x24>

0000000080002ed0 <uartintr>:
    80002ed0:	100007b7          	lui	a5,0x10000
    80002ed4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002ed8:	0017f793          	andi	a5,a5,1
    80002edc:	0a078463          	beqz	a5,80002f84 <uartintr+0xb4>
    80002ee0:	fe010113          	addi	sp,sp,-32
    80002ee4:	00813823          	sd	s0,16(sp)
    80002ee8:	00913423          	sd	s1,8(sp)
    80002eec:	00113c23          	sd	ra,24(sp)
    80002ef0:	02010413          	addi	s0,sp,32
    80002ef4:	100004b7          	lui	s1,0x10000
    80002ef8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002efc:	0ff57513          	andi	a0,a0,255
    80002f00:	fffff097          	auipc	ra,0xfffff
    80002f04:	534080e7          	jalr	1332(ra) # 80002434 <consoleintr>
    80002f08:	0054c783          	lbu	a5,5(s1)
    80002f0c:	0017f793          	andi	a5,a5,1
    80002f10:	fe0794e3          	bnez	a5,80002ef8 <uartintr+0x28>
    80002f14:	00002617          	auipc	a2,0x2
    80002f18:	82c60613          	addi	a2,a2,-2004 # 80004740 <uart_tx_r>
    80002f1c:	00002517          	auipc	a0,0x2
    80002f20:	82c50513          	addi	a0,a0,-2004 # 80004748 <uart_tx_w>
    80002f24:	00063783          	ld	a5,0(a2)
    80002f28:	00053703          	ld	a4,0(a0)
    80002f2c:	04f70263          	beq	a4,a5,80002f70 <uartintr+0xa0>
    80002f30:	100005b7          	lui	a1,0x10000
    80002f34:	00003817          	auipc	a6,0x3
    80002f38:	a9c80813          	addi	a6,a6,-1380 # 800059d0 <uart_tx_buf>
    80002f3c:	01c0006f          	j	80002f58 <uartintr+0x88>
    80002f40:	0006c703          	lbu	a4,0(a3)
    80002f44:	00f63023          	sd	a5,0(a2)
    80002f48:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f4c:	00063783          	ld	a5,0(a2)
    80002f50:	00053703          	ld	a4,0(a0)
    80002f54:	00f70e63          	beq	a4,a5,80002f70 <uartintr+0xa0>
    80002f58:	01f7f713          	andi	a4,a5,31
    80002f5c:	00e806b3          	add	a3,a6,a4
    80002f60:	0055c703          	lbu	a4,5(a1)
    80002f64:	00178793          	addi	a5,a5,1
    80002f68:	02077713          	andi	a4,a4,32
    80002f6c:	fc071ae3          	bnez	a4,80002f40 <uartintr+0x70>
    80002f70:	01813083          	ld	ra,24(sp)
    80002f74:	01013403          	ld	s0,16(sp)
    80002f78:	00813483          	ld	s1,8(sp)
    80002f7c:	02010113          	addi	sp,sp,32
    80002f80:	00008067          	ret
    80002f84:	00001617          	auipc	a2,0x1
    80002f88:	7bc60613          	addi	a2,a2,1980 # 80004740 <uart_tx_r>
    80002f8c:	00001517          	auipc	a0,0x1
    80002f90:	7bc50513          	addi	a0,a0,1980 # 80004748 <uart_tx_w>
    80002f94:	00063783          	ld	a5,0(a2)
    80002f98:	00053703          	ld	a4,0(a0)
    80002f9c:	04f70263          	beq	a4,a5,80002fe0 <uartintr+0x110>
    80002fa0:	100005b7          	lui	a1,0x10000
    80002fa4:	00003817          	auipc	a6,0x3
    80002fa8:	a2c80813          	addi	a6,a6,-1492 # 800059d0 <uart_tx_buf>
    80002fac:	01c0006f          	j	80002fc8 <uartintr+0xf8>
    80002fb0:	0006c703          	lbu	a4,0(a3)
    80002fb4:	00f63023          	sd	a5,0(a2)
    80002fb8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fbc:	00063783          	ld	a5,0(a2)
    80002fc0:	00053703          	ld	a4,0(a0)
    80002fc4:	02f70063          	beq	a4,a5,80002fe4 <uartintr+0x114>
    80002fc8:	01f7f713          	andi	a4,a5,31
    80002fcc:	00e806b3          	add	a3,a6,a4
    80002fd0:	0055c703          	lbu	a4,5(a1)
    80002fd4:	00178793          	addi	a5,a5,1
    80002fd8:	02077713          	andi	a4,a4,32
    80002fdc:	fc071ae3          	bnez	a4,80002fb0 <uartintr+0xe0>
    80002fe0:	00008067          	ret
    80002fe4:	00008067          	ret

0000000080002fe8 <kinit>:
    80002fe8:	fc010113          	addi	sp,sp,-64
    80002fec:	02913423          	sd	s1,40(sp)
    80002ff0:	fffff7b7          	lui	a5,0xfffff
    80002ff4:	00004497          	auipc	s1,0x4
    80002ff8:	a0b48493          	addi	s1,s1,-1525 # 800069ff <end+0xfff>
    80002ffc:	02813823          	sd	s0,48(sp)
    80003000:	01313c23          	sd	s3,24(sp)
    80003004:	00f4f4b3          	and	s1,s1,a5
    80003008:	02113c23          	sd	ra,56(sp)
    8000300c:	03213023          	sd	s2,32(sp)
    80003010:	01413823          	sd	s4,16(sp)
    80003014:	01513423          	sd	s5,8(sp)
    80003018:	04010413          	addi	s0,sp,64
    8000301c:	000017b7          	lui	a5,0x1
    80003020:	01100993          	li	s3,17
    80003024:	00f487b3          	add	a5,s1,a5
    80003028:	01b99993          	slli	s3,s3,0x1b
    8000302c:	06f9e063          	bltu	s3,a5,8000308c <kinit+0xa4>
    80003030:	00003a97          	auipc	s5,0x3
    80003034:	9d0a8a93          	addi	s5,s5,-1584 # 80005a00 <end>
    80003038:	0754ec63          	bltu	s1,s5,800030b0 <kinit+0xc8>
    8000303c:	0734fa63          	bgeu	s1,s3,800030b0 <kinit+0xc8>
    80003040:	00088a37          	lui	s4,0x88
    80003044:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003048:	00001917          	auipc	s2,0x1
    8000304c:	70890913          	addi	s2,s2,1800 # 80004750 <kmem>
    80003050:	00ca1a13          	slli	s4,s4,0xc
    80003054:	0140006f          	j	80003068 <kinit+0x80>
    80003058:	000017b7          	lui	a5,0x1
    8000305c:	00f484b3          	add	s1,s1,a5
    80003060:	0554e863          	bltu	s1,s5,800030b0 <kinit+0xc8>
    80003064:	0534f663          	bgeu	s1,s3,800030b0 <kinit+0xc8>
    80003068:	00001637          	lui	a2,0x1
    8000306c:	00100593          	li	a1,1
    80003070:	00048513          	mv	a0,s1
    80003074:	00000097          	auipc	ra,0x0
    80003078:	5e4080e7          	jalr	1508(ra) # 80003658 <__memset>
    8000307c:	00093783          	ld	a5,0(s2)
    80003080:	00f4b023          	sd	a5,0(s1)
    80003084:	00993023          	sd	s1,0(s2)
    80003088:	fd4498e3          	bne	s1,s4,80003058 <kinit+0x70>
    8000308c:	03813083          	ld	ra,56(sp)
    80003090:	03013403          	ld	s0,48(sp)
    80003094:	02813483          	ld	s1,40(sp)
    80003098:	02013903          	ld	s2,32(sp)
    8000309c:	01813983          	ld	s3,24(sp)
    800030a0:	01013a03          	ld	s4,16(sp)
    800030a4:	00813a83          	ld	s5,8(sp)
    800030a8:	04010113          	addi	sp,sp,64
    800030ac:	00008067          	ret
    800030b0:	00001517          	auipc	a0,0x1
    800030b4:	10850513          	addi	a0,a0,264 # 800041b8 <digits+0x18>
    800030b8:	fffff097          	auipc	ra,0xfffff
    800030bc:	4b4080e7          	jalr	1204(ra) # 8000256c <panic>

00000000800030c0 <freerange>:
    800030c0:	fc010113          	addi	sp,sp,-64
    800030c4:	000017b7          	lui	a5,0x1
    800030c8:	02913423          	sd	s1,40(sp)
    800030cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800030d0:	009504b3          	add	s1,a0,s1
    800030d4:	fffff537          	lui	a0,0xfffff
    800030d8:	02813823          	sd	s0,48(sp)
    800030dc:	02113c23          	sd	ra,56(sp)
    800030e0:	03213023          	sd	s2,32(sp)
    800030e4:	01313c23          	sd	s3,24(sp)
    800030e8:	01413823          	sd	s4,16(sp)
    800030ec:	01513423          	sd	s5,8(sp)
    800030f0:	01613023          	sd	s6,0(sp)
    800030f4:	04010413          	addi	s0,sp,64
    800030f8:	00a4f4b3          	and	s1,s1,a0
    800030fc:	00f487b3          	add	a5,s1,a5
    80003100:	06f5e463          	bltu	a1,a5,80003168 <freerange+0xa8>
    80003104:	00003a97          	auipc	s5,0x3
    80003108:	8fca8a93          	addi	s5,s5,-1796 # 80005a00 <end>
    8000310c:	0954e263          	bltu	s1,s5,80003190 <freerange+0xd0>
    80003110:	01100993          	li	s3,17
    80003114:	01b99993          	slli	s3,s3,0x1b
    80003118:	0734fc63          	bgeu	s1,s3,80003190 <freerange+0xd0>
    8000311c:	00058a13          	mv	s4,a1
    80003120:	00001917          	auipc	s2,0x1
    80003124:	63090913          	addi	s2,s2,1584 # 80004750 <kmem>
    80003128:	00002b37          	lui	s6,0x2
    8000312c:	0140006f          	j	80003140 <freerange+0x80>
    80003130:	000017b7          	lui	a5,0x1
    80003134:	00f484b3          	add	s1,s1,a5
    80003138:	0554ec63          	bltu	s1,s5,80003190 <freerange+0xd0>
    8000313c:	0534fa63          	bgeu	s1,s3,80003190 <freerange+0xd0>
    80003140:	00001637          	lui	a2,0x1
    80003144:	00100593          	li	a1,1
    80003148:	00048513          	mv	a0,s1
    8000314c:	00000097          	auipc	ra,0x0
    80003150:	50c080e7          	jalr	1292(ra) # 80003658 <__memset>
    80003154:	00093703          	ld	a4,0(s2)
    80003158:	016487b3          	add	a5,s1,s6
    8000315c:	00e4b023          	sd	a4,0(s1)
    80003160:	00993023          	sd	s1,0(s2)
    80003164:	fcfa76e3          	bgeu	s4,a5,80003130 <freerange+0x70>
    80003168:	03813083          	ld	ra,56(sp)
    8000316c:	03013403          	ld	s0,48(sp)
    80003170:	02813483          	ld	s1,40(sp)
    80003174:	02013903          	ld	s2,32(sp)
    80003178:	01813983          	ld	s3,24(sp)
    8000317c:	01013a03          	ld	s4,16(sp)
    80003180:	00813a83          	ld	s5,8(sp)
    80003184:	00013b03          	ld	s6,0(sp)
    80003188:	04010113          	addi	sp,sp,64
    8000318c:	00008067          	ret
    80003190:	00001517          	auipc	a0,0x1
    80003194:	02850513          	addi	a0,a0,40 # 800041b8 <digits+0x18>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	3d4080e7          	jalr	980(ra) # 8000256c <panic>

00000000800031a0 <kfree>:
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00113c23          	sd	ra,24(sp)
    800031ac:	00913423          	sd	s1,8(sp)
    800031b0:	02010413          	addi	s0,sp,32
    800031b4:	03451793          	slli	a5,a0,0x34
    800031b8:	04079c63          	bnez	a5,80003210 <kfree+0x70>
    800031bc:	00003797          	auipc	a5,0x3
    800031c0:	84478793          	addi	a5,a5,-1980 # 80005a00 <end>
    800031c4:	00050493          	mv	s1,a0
    800031c8:	04f56463          	bltu	a0,a5,80003210 <kfree+0x70>
    800031cc:	01100793          	li	a5,17
    800031d0:	01b79793          	slli	a5,a5,0x1b
    800031d4:	02f57e63          	bgeu	a0,a5,80003210 <kfree+0x70>
    800031d8:	00001637          	lui	a2,0x1
    800031dc:	00100593          	li	a1,1
    800031e0:	00000097          	auipc	ra,0x0
    800031e4:	478080e7          	jalr	1144(ra) # 80003658 <__memset>
    800031e8:	00001797          	auipc	a5,0x1
    800031ec:	56878793          	addi	a5,a5,1384 # 80004750 <kmem>
    800031f0:	0007b703          	ld	a4,0(a5)
    800031f4:	01813083          	ld	ra,24(sp)
    800031f8:	01013403          	ld	s0,16(sp)
    800031fc:	00e4b023          	sd	a4,0(s1)
    80003200:	0097b023          	sd	s1,0(a5)
    80003204:	00813483          	ld	s1,8(sp)
    80003208:	02010113          	addi	sp,sp,32
    8000320c:	00008067          	ret
    80003210:	00001517          	auipc	a0,0x1
    80003214:	fa850513          	addi	a0,a0,-88 # 800041b8 <digits+0x18>
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	354080e7          	jalr	852(ra) # 8000256c <panic>

0000000080003220 <kalloc>:
    80003220:	fe010113          	addi	sp,sp,-32
    80003224:	00813823          	sd	s0,16(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	02010413          	addi	s0,sp,32
    80003234:	00001797          	auipc	a5,0x1
    80003238:	51c78793          	addi	a5,a5,1308 # 80004750 <kmem>
    8000323c:	0007b483          	ld	s1,0(a5)
    80003240:	02048063          	beqz	s1,80003260 <kalloc+0x40>
    80003244:	0004b703          	ld	a4,0(s1)
    80003248:	00001637          	lui	a2,0x1
    8000324c:	00500593          	li	a1,5
    80003250:	00048513          	mv	a0,s1
    80003254:	00e7b023          	sd	a4,0(a5)
    80003258:	00000097          	auipc	ra,0x0
    8000325c:	400080e7          	jalr	1024(ra) # 80003658 <__memset>
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00048513          	mv	a0,s1
    8000326c:	00813483          	ld	s1,8(sp)
    80003270:	02010113          	addi	sp,sp,32
    80003274:	00008067          	ret

0000000080003278 <initlock>:
    80003278:	ff010113          	addi	sp,sp,-16
    8000327c:	00813423          	sd	s0,8(sp)
    80003280:	01010413          	addi	s0,sp,16
    80003284:	00813403          	ld	s0,8(sp)
    80003288:	00b53423          	sd	a1,8(a0)
    8000328c:	00052023          	sw	zero,0(a0)
    80003290:	00053823          	sd	zero,16(a0)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret

000000008000329c <acquire>:
    8000329c:	fe010113          	addi	sp,sp,-32
    800032a0:	00813823          	sd	s0,16(sp)
    800032a4:	00913423          	sd	s1,8(sp)
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	01213023          	sd	s2,0(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	00050493          	mv	s1,a0
    800032b8:	10002973          	csrr	s2,sstatus
    800032bc:	100027f3          	csrr	a5,sstatus
    800032c0:	ffd7f793          	andi	a5,a5,-3
    800032c4:	10079073          	csrw	sstatus,a5
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	8e8080e7          	jalr	-1816(ra) # 80001bb0 <mycpu>
    800032d0:	07852783          	lw	a5,120(a0)
    800032d4:	06078e63          	beqz	a5,80003350 <acquire+0xb4>
    800032d8:	fffff097          	auipc	ra,0xfffff
    800032dc:	8d8080e7          	jalr	-1832(ra) # 80001bb0 <mycpu>
    800032e0:	07852783          	lw	a5,120(a0)
    800032e4:	0004a703          	lw	a4,0(s1)
    800032e8:	0017879b          	addiw	a5,a5,1
    800032ec:	06f52c23          	sw	a5,120(a0)
    800032f0:	04071063          	bnez	a4,80003330 <acquire+0x94>
    800032f4:	00100713          	li	a4,1
    800032f8:	00070793          	mv	a5,a4
    800032fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003300:	0007879b          	sext.w	a5,a5
    80003304:	fe079ae3          	bnez	a5,800032f8 <acquire+0x5c>
    80003308:	0ff0000f          	fence
    8000330c:	fffff097          	auipc	ra,0xfffff
    80003310:	8a4080e7          	jalr	-1884(ra) # 80001bb0 <mycpu>
    80003314:	01813083          	ld	ra,24(sp)
    80003318:	01013403          	ld	s0,16(sp)
    8000331c:	00a4b823          	sd	a0,16(s1)
    80003320:	00013903          	ld	s2,0(sp)
    80003324:	00813483          	ld	s1,8(sp)
    80003328:	02010113          	addi	sp,sp,32
    8000332c:	00008067          	ret
    80003330:	0104b903          	ld	s2,16(s1)
    80003334:	fffff097          	auipc	ra,0xfffff
    80003338:	87c080e7          	jalr	-1924(ra) # 80001bb0 <mycpu>
    8000333c:	faa91ce3          	bne	s2,a0,800032f4 <acquire+0x58>
    80003340:	00001517          	auipc	a0,0x1
    80003344:	e8050513          	addi	a0,a0,-384 # 800041c0 <digits+0x20>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	224080e7          	jalr	548(ra) # 8000256c <panic>
    80003350:	00195913          	srli	s2,s2,0x1
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	85c080e7          	jalr	-1956(ra) # 80001bb0 <mycpu>
    8000335c:	00197913          	andi	s2,s2,1
    80003360:	07252e23          	sw	s2,124(a0)
    80003364:	f75ff06f          	j	800032d8 <acquire+0x3c>

0000000080003368 <release>:
    80003368:	fe010113          	addi	sp,sp,-32
    8000336c:	00813823          	sd	s0,16(sp)
    80003370:	00113c23          	sd	ra,24(sp)
    80003374:	00913423          	sd	s1,8(sp)
    80003378:	01213023          	sd	s2,0(sp)
    8000337c:	02010413          	addi	s0,sp,32
    80003380:	00052783          	lw	a5,0(a0)
    80003384:	00079a63          	bnez	a5,80003398 <release+0x30>
    80003388:	00001517          	auipc	a0,0x1
    8000338c:	e4050513          	addi	a0,a0,-448 # 800041c8 <digits+0x28>
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	1dc080e7          	jalr	476(ra) # 8000256c <panic>
    80003398:	01053903          	ld	s2,16(a0)
    8000339c:	00050493          	mv	s1,a0
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	810080e7          	jalr	-2032(ra) # 80001bb0 <mycpu>
    800033a8:	fea910e3          	bne	s2,a0,80003388 <release+0x20>
    800033ac:	0004b823          	sd	zero,16(s1)
    800033b0:	0ff0000f          	fence
    800033b4:	0f50000f          	fence	iorw,ow
    800033b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800033bc:	ffffe097          	auipc	ra,0xffffe
    800033c0:	7f4080e7          	jalr	2036(ra) # 80001bb0 <mycpu>
    800033c4:	100027f3          	csrr	a5,sstatus
    800033c8:	0027f793          	andi	a5,a5,2
    800033cc:	04079a63          	bnez	a5,80003420 <release+0xb8>
    800033d0:	07852783          	lw	a5,120(a0)
    800033d4:	02f05e63          	blez	a5,80003410 <release+0xa8>
    800033d8:	fff7871b          	addiw	a4,a5,-1
    800033dc:	06e52c23          	sw	a4,120(a0)
    800033e0:	00071c63          	bnez	a4,800033f8 <release+0x90>
    800033e4:	07c52783          	lw	a5,124(a0)
    800033e8:	00078863          	beqz	a5,800033f8 <release+0x90>
    800033ec:	100027f3          	csrr	a5,sstatus
    800033f0:	0027e793          	ori	a5,a5,2
    800033f4:	10079073          	csrw	sstatus,a5
    800033f8:	01813083          	ld	ra,24(sp)
    800033fc:	01013403          	ld	s0,16(sp)
    80003400:	00813483          	ld	s1,8(sp)
    80003404:	00013903          	ld	s2,0(sp)
    80003408:	02010113          	addi	sp,sp,32
    8000340c:	00008067          	ret
    80003410:	00001517          	auipc	a0,0x1
    80003414:	dd850513          	addi	a0,a0,-552 # 800041e8 <digits+0x48>
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	154080e7          	jalr	340(ra) # 8000256c <panic>
    80003420:	00001517          	auipc	a0,0x1
    80003424:	db050513          	addi	a0,a0,-592 # 800041d0 <digits+0x30>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	144080e7          	jalr	324(ra) # 8000256c <panic>

0000000080003430 <holding>:
    80003430:	00052783          	lw	a5,0(a0)
    80003434:	00079663          	bnez	a5,80003440 <holding+0x10>
    80003438:	00000513          	li	a0,0
    8000343c:	00008067          	ret
    80003440:	fe010113          	addi	sp,sp,-32
    80003444:	00813823          	sd	s0,16(sp)
    80003448:	00913423          	sd	s1,8(sp)
    8000344c:	00113c23          	sd	ra,24(sp)
    80003450:	02010413          	addi	s0,sp,32
    80003454:	01053483          	ld	s1,16(a0)
    80003458:	ffffe097          	auipc	ra,0xffffe
    8000345c:	758080e7          	jalr	1880(ra) # 80001bb0 <mycpu>
    80003460:	01813083          	ld	ra,24(sp)
    80003464:	01013403          	ld	s0,16(sp)
    80003468:	40a48533          	sub	a0,s1,a0
    8000346c:	00153513          	seqz	a0,a0
    80003470:	00813483          	ld	s1,8(sp)
    80003474:	02010113          	addi	sp,sp,32
    80003478:	00008067          	ret

000000008000347c <push_off>:
    8000347c:	fe010113          	addi	sp,sp,-32
    80003480:	00813823          	sd	s0,16(sp)
    80003484:	00113c23          	sd	ra,24(sp)
    80003488:	00913423          	sd	s1,8(sp)
    8000348c:	02010413          	addi	s0,sp,32
    80003490:	100024f3          	csrr	s1,sstatus
    80003494:	100027f3          	csrr	a5,sstatus
    80003498:	ffd7f793          	andi	a5,a5,-3
    8000349c:	10079073          	csrw	sstatus,a5
    800034a0:	ffffe097          	auipc	ra,0xffffe
    800034a4:	710080e7          	jalr	1808(ra) # 80001bb0 <mycpu>
    800034a8:	07852783          	lw	a5,120(a0)
    800034ac:	02078663          	beqz	a5,800034d8 <push_off+0x5c>
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	700080e7          	jalr	1792(ra) # 80001bb0 <mycpu>
    800034b8:	07852783          	lw	a5,120(a0)
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	0017879b          	addiw	a5,a5,1
    800034c8:	06f52c23          	sw	a5,120(a0)
    800034cc:	00813483          	ld	s1,8(sp)
    800034d0:	02010113          	addi	sp,sp,32
    800034d4:	00008067          	ret
    800034d8:	0014d493          	srli	s1,s1,0x1
    800034dc:	ffffe097          	auipc	ra,0xffffe
    800034e0:	6d4080e7          	jalr	1748(ra) # 80001bb0 <mycpu>
    800034e4:	0014f493          	andi	s1,s1,1
    800034e8:	06952e23          	sw	s1,124(a0)
    800034ec:	fc5ff06f          	j	800034b0 <push_off+0x34>

00000000800034f0 <pop_off>:
    800034f0:	ff010113          	addi	sp,sp,-16
    800034f4:	00813023          	sd	s0,0(sp)
    800034f8:	00113423          	sd	ra,8(sp)
    800034fc:	01010413          	addi	s0,sp,16
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	6b0080e7          	jalr	1712(ra) # 80001bb0 <mycpu>
    80003508:	100027f3          	csrr	a5,sstatus
    8000350c:	0027f793          	andi	a5,a5,2
    80003510:	04079663          	bnez	a5,8000355c <pop_off+0x6c>
    80003514:	07852783          	lw	a5,120(a0)
    80003518:	02f05a63          	blez	a5,8000354c <pop_off+0x5c>
    8000351c:	fff7871b          	addiw	a4,a5,-1
    80003520:	06e52c23          	sw	a4,120(a0)
    80003524:	00071c63          	bnez	a4,8000353c <pop_off+0x4c>
    80003528:	07c52783          	lw	a5,124(a0)
    8000352c:	00078863          	beqz	a5,8000353c <pop_off+0x4c>
    80003530:	100027f3          	csrr	a5,sstatus
    80003534:	0027e793          	ori	a5,a5,2
    80003538:	10079073          	csrw	sstatus,a5
    8000353c:	00813083          	ld	ra,8(sp)
    80003540:	00013403          	ld	s0,0(sp)
    80003544:	01010113          	addi	sp,sp,16
    80003548:	00008067          	ret
    8000354c:	00001517          	auipc	a0,0x1
    80003550:	c9c50513          	addi	a0,a0,-868 # 800041e8 <digits+0x48>
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	018080e7          	jalr	24(ra) # 8000256c <panic>
    8000355c:	00001517          	auipc	a0,0x1
    80003560:	c7450513          	addi	a0,a0,-908 # 800041d0 <digits+0x30>
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	008080e7          	jalr	8(ra) # 8000256c <panic>

000000008000356c <push_on>:
    8000356c:	fe010113          	addi	sp,sp,-32
    80003570:	00813823          	sd	s0,16(sp)
    80003574:	00113c23          	sd	ra,24(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	02010413          	addi	s0,sp,32
    80003580:	100024f3          	csrr	s1,sstatus
    80003584:	100027f3          	csrr	a5,sstatus
    80003588:	0027e793          	ori	a5,a5,2
    8000358c:	10079073          	csrw	sstatus,a5
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	620080e7          	jalr	1568(ra) # 80001bb0 <mycpu>
    80003598:	07852783          	lw	a5,120(a0)
    8000359c:	02078663          	beqz	a5,800035c8 <push_on+0x5c>
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	610080e7          	jalr	1552(ra) # 80001bb0 <mycpu>
    800035a8:	07852783          	lw	a5,120(a0)
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	01013403          	ld	s0,16(sp)
    800035b4:	0017879b          	addiw	a5,a5,1
    800035b8:	06f52c23          	sw	a5,120(a0)
    800035bc:	00813483          	ld	s1,8(sp)
    800035c0:	02010113          	addi	sp,sp,32
    800035c4:	00008067          	ret
    800035c8:	0014d493          	srli	s1,s1,0x1
    800035cc:	ffffe097          	auipc	ra,0xffffe
    800035d0:	5e4080e7          	jalr	1508(ra) # 80001bb0 <mycpu>
    800035d4:	0014f493          	andi	s1,s1,1
    800035d8:	06952e23          	sw	s1,124(a0)
    800035dc:	fc5ff06f          	j	800035a0 <push_on+0x34>

00000000800035e0 <pop_on>:
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00813023          	sd	s0,0(sp)
    800035e8:	00113423          	sd	ra,8(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	5c0080e7          	jalr	1472(ra) # 80001bb0 <mycpu>
    800035f8:	100027f3          	csrr	a5,sstatus
    800035fc:	0027f793          	andi	a5,a5,2
    80003600:	04078463          	beqz	a5,80003648 <pop_on+0x68>
    80003604:	07852783          	lw	a5,120(a0)
    80003608:	02f05863          	blez	a5,80003638 <pop_on+0x58>
    8000360c:	fff7879b          	addiw	a5,a5,-1
    80003610:	06f52c23          	sw	a5,120(a0)
    80003614:	07853783          	ld	a5,120(a0)
    80003618:	00079863          	bnez	a5,80003628 <pop_on+0x48>
    8000361c:	100027f3          	csrr	a5,sstatus
    80003620:	ffd7f793          	andi	a5,a5,-3
    80003624:	10079073          	csrw	sstatus,a5
    80003628:	00813083          	ld	ra,8(sp)
    8000362c:	00013403          	ld	s0,0(sp)
    80003630:	01010113          	addi	sp,sp,16
    80003634:	00008067          	ret
    80003638:	00001517          	auipc	a0,0x1
    8000363c:	bd850513          	addi	a0,a0,-1064 # 80004210 <digits+0x70>
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	f2c080e7          	jalr	-212(ra) # 8000256c <panic>
    80003648:	00001517          	auipc	a0,0x1
    8000364c:	ba850513          	addi	a0,a0,-1112 # 800041f0 <digits+0x50>
    80003650:	fffff097          	auipc	ra,0xfffff
    80003654:	f1c080e7          	jalr	-228(ra) # 8000256c <panic>

0000000080003658 <__memset>:
    80003658:	ff010113          	addi	sp,sp,-16
    8000365c:	00813423          	sd	s0,8(sp)
    80003660:	01010413          	addi	s0,sp,16
    80003664:	1a060e63          	beqz	a2,80003820 <__memset+0x1c8>
    80003668:	40a007b3          	neg	a5,a0
    8000366c:	0077f793          	andi	a5,a5,7
    80003670:	00778693          	addi	a3,a5,7
    80003674:	00b00813          	li	a6,11
    80003678:	0ff5f593          	andi	a1,a1,255
    8000367c:	fff6071b          	addiw	a4,a2,-1
    80003680:	1b06e663          	bltu	a3,a6,8000382c <__memset+0x1d4>
    80003684:	1cd76463          	bltu	a4,a3,8000384c <__memset+0x1f4>
    80003688:	1a078e63          	beqz	a5,80003844 <__memset+0x1ec>
    8000368c:	00b50023          	sb	a1,0(a0)
    80003690:	00100713          	li	a4,1
    80003694:	1ae78463          	beq	a5,a4,8000383c <__memset+0x1e4>
    80003698:	00b500a3          	sb	a1,1(a0)
    8000369c:	00200713          	li	a4,2
    800036a0:	1ae78a63          	beq	a5,a4,80003854 <__memset+0x1fc>
    800036a4:	00b50123          	sb	a1,2(a0)
    800036a8:	00300713          	li	a4,3
    800036ac:	18e78463          	beq	a5,a4,80003834 <__memset+0x1dc>
    800036b0:	00b501a3          	sb	a1,3(a0)
    800036b4:	00400713          	li	a4,4
    800036b8:	1ae78263          	beq	a5,a4,8000385c <__memset+0x204>
    800036bc:	00b50223          	sb	a1,4(a0)
    800036c0:	00500713          	li	a4,5
    800036c4:	1ae78063          	beq	a5,a4,80003864 <__memset+0x20c>
    800036c8:	00b502a3          	sb	a1,5(a0)
    800036cc:	00700713          	li	a4,7
    800036d0:	18e79e63          	bne	a5,a4,8000386c <__memset+0x214>
    800036d4:	00b50323          	sb	a1,6(a0)
    800036d8:	00700e93          	li	t4,7
    800036dc:	00859713          	slli	a4,a1,0x8
    800036e0:	00e5e733          	or	a4,a1,a4
    800036e4:	01059e13          	slli	t3,a1,0x10
    800036e8:	01c76e33          	or	t3,a4,t3
    800036ec:	01859313          	slli	t1,a1,0x18
    800036f0:	006e6333          	or	t1,t3,t1
    800036f4:	02059893          	slli	a7,a1,0x20
    800036f8:	40f60e3b          	subw	t3,a2,a5
    800036fc:	011368b3          	or	a7,t1,a7
    80003700:	02859813          	slli	a6,a1,0x28
    80003704:	0108e833          	or	a6,a7,a6
    80003708:	03059693          	slli	a3,a1,0x30
    8000370c:	003e589b          	srliw	a7,t3,0x3
    80003710:	00d866b3          	or	a3,a6,a3
    80003714:	03859713          	slli	a4,a1,0x38
    80003718:	00389813          	slli	a6,a7,0x3
    8000371c:	00f507b3          	add	a5,a0,a5
    80003720:	00e6e733          	or	a4,a3,a4
    80003724:	000e089b          	sext.w	a7,t3
    80003728:	00f806b3          	add	a3,a6,a5
    8000372c:	00e7b023          	sd	a4,0(a5)
    80003730:	00878793          	addi	a5,a5,8
    80003734:	fed79ce3          	bne	a5,a3,8000372c <__memset+0xd4>
    80003738:	ff8e7793          	andi	a5,t3,-8
    8000373c:	0007871b          	sext.w	a4,a5
    80003740:	01d787bb          	addw	a5,a5,t4
    80003744:	0ce88e63          	beq	a7,a4,80003820 <__memset+0x1c8>
    80003748:	00f50733          	add	a4,a0,a5
    8000374c:	00b70023          	sb	a1,0(a4)
    80003750:	0017871b          	addiw	a4,a5,1
    80003754:	0cc77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00b70023          	sb	a1,0(a4)
    80003760:	0027871b          	addiw	a4,a5,2
    80003764:	0ac77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003768:	00e50733          	add	a4,a0,a4
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	0037871b          	addiw	a4,a5,3
    80003774:	0ac77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	0047871b          	addiw	a4,a5,4
    80003784:	08c77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	0057871b          	addiw	a4,a5,5
    80003794:	08c77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	0067871b          	addiw	a4,a5,6
    800037a4:	06c77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037a8:	00e50733          	add	a4,a0,a4
    800037ac:	00b70023          	sb	a1,0(a4)
    800037b0:	0077871b          	addiw	a4,a5,7
    800037b4:	06c77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037b8:	00e50733          	add	a4,a0,a4
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	0087871b          	addiw	a4,a5,8
    800037c4:	04c77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00b70023          	sb	a1,0(a4)
    800037d0:	0097871b          	addiw	a4,a5,9
    800037d4:	04c77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037d8:	00e50733          	add	a4,a0,a4
    800037dc:	00b70023          	sb	a1,0(a4)
    800037e0:	00a7871b          	addiw	a4,a5,10
    800037e4:	02c77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00b70023          	sb	a1,0(a4)
    800037f0:	00b7871b          	addiw	a4,a5,11
    800037f4:	02c77663          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    800037f8:	00e50733          	add	a4,a0,a4
    800037fc:	00b70023          	sb	a1,0(a4)
    80003800:	00c7871b          	addiw	a4,a5,12
    80003804:	00c77e63          	bgeu	a4,a2,80003820 <__memset+0x1c8>
    80003808:	00e50733          	add	a4,a0,a4
    8000380c:	00b70023          	sb	a1,0(a4)
    80003810:	00d7879b          	addiw	a5,a5,13
    80003814:	00c7f663          	bgeu	a5,a2,80003820 <__memset+0x1c8>
    80003818:	00f507b3          	add	a5,a0,a5
    8000381c:	00b78023          	sb	a1,0(a5)
    80003820:	00813403          	ld	s0,8(sp)
    80003824:	01010113          	addi	sp,sp,16
    80003828:	00008067          	ret
    8000382c:	00b00693          	li	a3,11
    80003830:	e55ff06f          	j	80003684 <__memset+0x2c>
    80003834:	00300e93          	li	t4,3
    80003838:	ea5ff06f          	j	800036dc <__memset+0x84>
    8000383c:	00100e93          	li	t4,1
    80003840:	e9dff06f          	j	800036dc <__memset+0x84>
    80003844:	00000e93          	li	t4,0
    80003848:	e95ff06f          	j	800036dc <__memset+0x84>
    8000384c:	00000793          	li	a5,0
    80003850:	ef9ff06f          	j	80003748 <__memset+0xf0>
    80003854:	00200e93          	li	t4,2
    80003858:	e85ff06f          	j	800036dc <__memset+0x84>
    8000385c:	00400e93          	li	t4,4
    80003860:	e7dff06f          	j	800036dc <__memset+0x84>
    80003864:	00500e93          	li	t4,5
    80003868:	e75ff06f          	j	800036dc <__memset+0x84>
    8000386c:	00600e93          	li	t4,6
    80003870:	e6dff06f          	j	800036dc <__memset+0x84>

0000000080003874 <__memmove>:
    80003874:	ff010113          	addi	sp,sp,-16
    80003878:	00813423          	sd	s0,8(sp)
    8000387c:	01010413          	addi	s0,sp,16
    80003880:	0e060863          	beqz	a2,80003970 <__memmove+0xfc>
    80003884:	fff6069b          	addiw	a3,a2,-1
    80003888:	0006881b          	sext.w	a6,a3
    8000388c:	0ea5e863          	bltu	a1,a0,8000397c <__memmove+0x108>
    80003890:	00758713          	addi	a4,a1,7
    80003894:	00a5e7b3          	or	a5,a1,a0
    80003898:	40a70733          	sub	a4,a4,a0
    8000389c:	0077f793          	andi	a5,a5,7
    800038a0:	00f73713          	sltiu	a4,a4,15
    800038a4:	00174713          	xori	a4,a4,1
    800038a8:	0017b793          	seqz	a5,a5
    800038ac:	00e7f7b3          	and	a5,a5,a4
    800038b0:	10078863          	beqz	a5,800039c0 <__memmove+0x14c>
    800038b4:	00900793          	li	a5,9
    800038b8:	1107f463          	bgeu	a5,a6,800039c0 <__memmove+0x14c>
    800038bc:	0036581b          	srliw	a6,a2,0x3
    800038c0:	fff8081b          	addiw	a6,a6,-1
    800038c4:	02081813          	slli	a6,a6,0x20
    800038c8:	01d85893          	srli	a7,a6,0x1d
    800038cc:	00858813          	addi	a6,a1,8
    800038d0:	00058793          	mv	a5,a1
    800038d4:	00050713          	mv	a4,a0
    800038d8:	01088833          	add	a6,a7,a6
    800038dc:	0007b883          	ld	a7,0(a5)
    800038e0:	00878793          	addi	a5,a5,8
    800038e4:	00870713          	addi	a4,a4,8
    800038e8:	ff173c23          	sd	a7,-8(a4)
    800038ec:	ff0798e3          	bne	a5,a6,800038dc <__memmove+0x68>
    800038f0:	ff867713          	andi	a4,a2,-8
    800038f4:	02071793          	slli	a5,a4,0x20
    800038f8:	0207d793          	srli	a5,a5,0x20
    800038fc:	00f585b3          	add	a1,a1,a5
    80003900:	40e686bb          	subw	a3,a3,a4
    80003904:	00f507b3          	add	a5,a0,a5
    80003908:	06e60463          	beq	a2,a4,80003970 <__memmove+0xfc>
    8000390c:	0005c703          	lbu	a4,0(a1)
    80003910:	00e78023          	sb	a4,0(a5)
    80003914:	04068e63          	beqz	a3,80003970 <__memmove+0xfc>
    80003918:	0015c603          	lbu	a2,1(a1)
    8000391c:	00100713          	li	a4,1
    80003920:	00c780a3          	sb	a2,1(a5)
    80003924:	04e68663          	beq	a3,a4,80003970 <__memmove+0xfc>
    80003928:	0025c603          	lbu	a2,2(a1)
    8000392c:	00200713          	li	a4,2
    80003930:	00c78123          	sb	a2,2(a5)
    80003934:	02e68e63          	beq	a3,a4,80003970 <__memmove+0xfc>
    80003938:	0035c603          	lbu	a2,3(a1)
    8000393c:	00300713          	li	a4,3
    80003940:	00c781a3          	sb	a2,3(a5)
    80003944:	02e68663          	beq	a3,a4,80003970 <__memmove+0xfc>
    80003948:	0045c603          	lbu	a2,4(a1)
    8000394c:	00400713          	li	a4,4
    80003950:	00c78223          	sb	a2,4(a5)
    80003954:	00e68e63          	beq	a3,a4,80003970 <__memmove+0xfc>
    80003958:	0055c603          	lbu	a2,5(a1)
    8000395c:	00500713          	li	a4,5
    80003960:	00c782a3          	sb	a2,5(a5)
    80003964:	00e68663          	beq	a3,a4,80003970 <__memmove+0xfc>
    80003968:	0065c703          	lbu	a4,6(a1)
    8000396c:	00e78323          	sb	a4,6(a5)
    80003970:	00813403          	ld	s0,8(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret
    8000397c:	02061713          	slli	a4,a2,0x20
    80003980:	02075713          	srli	a4,a4,0x20
    80003984:	00e587b3          	add	a5,a1,a4
    80003988:	f0f574e3          	bgeu	a0,a5,80003890 <__memmove+0x1c>
    8000398c:	02069613          	slli	a2,a3,0x20
    80003990:	02065613          	srli	a2,a2,0x20
    80003994:	fff64613          	not	a2,a2
    80003998:	00e50733          	add	a4,a0,a4
    8000399c:	00c78633          	add	a2,a5,a2
    800039a0:	fff7c683          	lbu	a3,-1(a5)
    800039a4:	fff78793          	addi	a5,a5,-1
    800039a8:	fff70713          	addi	a4,a4,-1
    800039ac:	00d70023          	sb	a3,0(a4)
    800039b0:	fec798e3          	bne	a5,a2,800039a0 <__memmove+0x12c>
    800039b4:	00813403          	ld	s0,8(sp)
    800039b8:	01010113          	addi	sp,sp,16
    800039bc:	00008067          	ret
    800039c0:	02069713          	slli	a4,a3,0x20
    800039c4:	02075713          	srli	a4,a4,0x20
    800039c8:	00170713          	addi	a4,a4,1
    800039cc:	00e50733          	add	a4,a0,a4
    800039d0:	00050793          	mv	a5,a0
    800039d4:	0005c683          	lbu	a3,0(a1)
    800039d8:	00178793          	addi	a5,a5,1
    800039dc:	00158593          	addi	a1,a1,1
    800039e0:	fed78fa3          	sb	a3,-1(a5)
    800039e4:	fee798e3          	bne	a5,a4,800039d4 <__memmove+0x160>
    800039e8:	f89ff06f          	j	80003970 <__memmove+0xfc>

00000000800039ec <__mem_free>:
    800039ec:	ff010113          	addi	sp,sp,-16
    800039f0:	00813423          	sd	s0,8(sp)
    800039f4:	01010413          	addi	s0,sp,16
    800039f8:	00001597          	auipc	a1,0x1
    800039fc:	d6058593          	addi	a1,a1,-672 # 80004758 <freep>
    80003a00:	0005b783          	ld	a5,0(a1)
    80003a04:	ff050693          	addi	a3,a0,-16
    80003a08:	0007b703          	ld	a4,0(a5)
    80003a0c:	00d7fc63          	bgeu	a5,a3,80003a24 <__mem_free+0x38>
    80003a10:	00e6ee63          	bltu	a3,a4,80003a2c <__mem_free+0x40>
    80003a14:	00e7fc63          	bgeu	a5,a4,80003a2c <__mem_free+0x40>
    80003a18:	00070793          	mv	a5,a4
    80003a1c:	0007b703          	ld	a4,0(a5)
    80003a20:	fed7e8e3          	bltu	a5,a3,80003a10 <__mem_free+0x24>
    80003a24:	fee7eae3          	bltu	a5,a4,80003a18 <__mem_free+0x2c>
    80003a28:	fee6f8e3          	bgeu	a3,a4,80003a18 <__mem_free+0x2c>
    80003a2c:	ff852803          	lw	a6,-8(a0)
    80003a30:	02081613          	slli	a2,a6,0x20
    80003a34:	01c65613          	srli	a2,a2,0x1c
    80003a38:	00c68633          	add	a2,a3,a2
    80003a3c:	02c70a63          	beq	a4,a2,80003a70 <__mem_free+0x84>
    80003a40:	fee53823          	sd	a4,-16(a0)
    80003a44:	0087a503          	lw	a0,8(a5)
    80003a48:	02051613          	slli	a2,a0,0x20
    80003a4c:	01c65613          	srli	a2,a2,0x1c
    80003a50:	00c78633          	add	a2,a5,a2
    80003a54:	04c68263          	beq	a3,a2,80003a98 <__mem_free+0xac>
    80003a58:	00813403          	ld	s0,8(sp)
    80003a5c:	00d7b023          	sd	a3,0(a5)
    80003a60:	00f5b023          	sd	a5,0(a1)
    80003a64:	00000513          	li	a0,0
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret
    80003a70:	00872603          	lw	a2,8(a4)
    80003a74:	00073703          	ld	a4,0(a4)
    80003a78:	0106083b          	addw	a6,a2,a6
    80003a7c:	ff052c23          	sw	a6,-8(a0)
    80003a80:	fee53823          	sd	a4,-16(a0)
    80003a84:	0087a503          	lw	a0,8(a5)
    80003a88:	02051613          	slli	a2,a0,0x20
    80003a8c:	01c65613          	srli	a2,a2,0x1c
    80003a90:	00c78633          	add	a2,a5,a2
    80003a94:	fcc692e3          	bne	a3,a2,80003a58 <__mem_free+0x6c>
    80003a98:	00813403          	ld	s0,8(sp)
    80003a9c:	0105053b          	addw	a0,a0,a6
    80003aa0:	00a7a423          	sw	a0,8(a5)
    80003aa4:	00e7b023          	sd	a4,0(a5)
    80003aa8:	00f5b023          	sd	a5,0(a1)
    80003aac:	00000513          	li	a0,0
    80003ab0:	01010113          	addi	sp,sp,16
    80003ab4:	00008067          	ret

0000000080003ab8 <__mem_alloc>:
    80003ab8:	fc010113          	addi	sp,sp,-64
    80003abc:	02813823          	sd	s0,48(sp)
    80003ac0:	02913423          	sd	s1,40(sp)
    80003ac4:	03213023          	sd	s2,32(sp)
    80003ac8:	01513423          	sd	s5,8(sp)
    80003acc:	02113c23          	sd	ra,56(sp)
    80003ad0:	01313c23          	sd	s3,24(sp)
    80003ad4:	01413823          	sd	s4,16(sp)
    80003ad8:	01613023          	sd	s6,0(sp)
    80003adc:	04010413          	addi	s0,sp,64
    80003ae0:	00001a97          	auipc	s5,0x1
    80003ae4:	c78a8a93          	addi	s5,s5,-904 # 80004758 <freep>
    80003ae8:	00f50913          	addi	s2,a0,15
    80003aec:	000ab683          	ld	a3,0(s5)
    80003af0:	00495913          	srli	s2,s2,0x4
    80003af4:	0019049b          	addiw	s1,s2,1
    80003af8:	00048913          	mv	s2,s1
    80003afc:	0c068c63          	beqz	a3,80003bd4 <__mem_alloc+0x11c>
    80003b00:	0006b503          	ld	a0,0(a3)
    80003b04:	00852703          	lw	a4,8(a0)
    80003b08:	10977063          	bgeu	a4,s1,80003c08 <__mem_alloc+0x150>
    80003b0c:	000017b7          	lui	a5,0x1
    80003b10:	0009099b          	sext.w	s3,s2
    80003b14:	0af4e863          	bltu	s1,a5,80003bc4 <__mem_alloc+0x10c>
    80003b18:	02099a13          	slli	s4,s3,0x20
    80003b1c:	01ca5a13          	srli	s4,s4,0x1c
    80003b20:	fff00b13          	li	s6,-1
    80003b24:	0100006f          	j	80003b34 <__mem_alloc+0x7c>
    80003b28:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003b2c:	00852703          	lw	a4,8(a0)
    80003b30:	04977463          	bgeu	a4,s1,80003b78 <__mem_alloc+0xc0>
    80003b34:	00050793          	mv	a5,a0
    80003b38:	fea698e3          	bne	a3,a0,80003b28 <__mem_alloc+0x70>
    80003b3c:	000a0513          	mv	a0,s4
    80003b40:	00000097          	auipc	ra,0x0
    80003b44:	1f0080e7          	jalr	496(ra) # 80003d30 <kvmincrease>
    80003b48:	00050793          	mv	a5,a0
    80003b4c:	01050513          	addi	a0,a0,16
    80003b50:	07678e63          	beq	a5,s6,80003bcc <__mem_alloc+0x114>
    80003b54:	0137a423          	sw	s3,8(a5)
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	e94080e7          	jalr	-364(ra) # 800039ec <__mem_free>
    80003b60:	000ab783          	ld	a5,0(s5)
    80003b64:	06078463          	beqz	a5,80003bcc <__mem_alloc+0x114>
    80003b68:	0007b503          	ld	a0,0(a5)
    80003b6c:	00078693          	mv	a3,a5
    80003b70:	00852703          	lw	a4,8(a0)
    80003b74:	fc9760e3          	bltu	a4,s1,80003b34 <__mem_alloc+0x7c>
    80003b78:	08e48263          	beq	s1,a4,80003bfc <__mem_alloc+0x144>
    80003b7c:	4127073b          	subw	a4,a4,s2
    80003b80:	02071693          	slli	a3,a4,0x20
    80003b84:	01c6d693          	srli	a3,a3,0x1c
    80003b88:	00e52423          	sw	a4,8(a0)
    80003b8c:	00d50533          	add	a0,a0,a3
    80003b90:	01252423          	sw	s2,8(a0)
    80003b94:	00fab023          	sd	a5,0(s5)
    80003b98:	01050513          	addi	a0,a0,16
    80003b9c:	03813083          	ld	ra,56(sp)
    80003ba0:	03013403          	ld	s0,48(sp)
    80003ba4:	02813483          	ld	s1,40(sp)
    80003ba8:	02013903          	ld	s2,32(sp)
    80003bac:	01813983          	ld	s3,24(sp)
    80003bb0:	01013a03          	ld	s4,16(sp)
    80003bb4:	00813a83          	ld	s5,8(sp)
    80003bb8:	00013b03          	ld	s6,0(sp)
    80003bbc:	04010113          	addi	sp,sp,64
    80003bc0:	00008067          	ret
    80003bc4:	000019b7          	lui	s3,0x1
    80003bc8:	f51ff06f          	j	80003b18 <__mem_alloc+0x60>
    80003bcc:	00000513          	li	a0,0
    80003bd0:	fcdff06f          	j	80003b9c <__mem_alloc+0xe4>
    80003bd4:	00002797          	auipc	a5,0x2
    80003bd8:	e1c78793          	addi	a5,a5,-484 # 800059f0 <base>
    80003bdc:	00078513          	mv	a0,a5
    80003be0:	00fab023          	sd	a5,0(s5)
    80003be4:	00f7b023          	sd	a5,0(a5)
    80003be8:	00000713          	li	a4,0
    80003bec:	00002797          	auipc	a5,0x2
    80003bf0:	e007a623          	sw	zero,-500(a5) # 800059f8 <base+0x8>
    80003bf4:	00050693          	mv	a3,a0
    80003bf8:	f11ff06f          	j	80003b08 <__mem_alloc+0x50>
    80003bfc:	00053703          	ld	a4,0(a0)
    80003c00:	00e7b023          	sd	a4,0(a5)
    80003c04:	f91ff06f          	j	80003b94 <__mem_alloc+0xdc>
    80003c08:	00068793          	mv	a5,a3
    80003c0c:	f6dff06f          	j	80003b78 <__mem_alloc+0xc0>

0000000080003c10 <__putc>:
    80003c10:	fe010113          	addi	sp,sp,-32
    80003c14:	00813823          	sd	s0,16(sp)
    80003c18:	00113c23          	sd	ra,24(sp)
    80003c1c:	02010413          	addi	s0,sp,32
    80003c20:	00050793          	mv	a5,a0
    80003c24:	fef40593          	addi	a1,s0,-17
    80003c28:	00100613          	li	a2,1
    80003c2c:	00000513          	li	a0,0
    80003c30:	fef407a3          	sb	a5,-17(s0)
    80003c34:	fffff097          	auipc	ra,0xfffff
    80003c38:	918080e7          	jalr	-1768(ra) # 8000254c <console_write>
    80003c3c:	01813083          	ld	ra,24(sp)
    80003c40:	01013403          	ld	s0,16(sp)
    80003c44:	02010113          	addi	sp,sp,32
    80003c48:	00008067          	ret

0000000080003c4c <__getc>:
    80003c4c:	fe010113          	addi	sp,sp,-32
    80003c50:	00813823          	sd	s0,16(sp)
    80003c54:	00113c23          	sd	ra,24(sp)
    80003c58:	02010413          	addi	s0,sp,32
    80003c5c:	fe840593          	addi	a1,s0,-24
    80003c60:	00100613          	li	a2,1
    80003c64:	00000513          	li	a0,0
    80003c68:	fffff097          	auipc	ra,0xfffff
    80003c6c:	8c4080e7          	jalr	-1852(ra) # 8000252c <console_read>
    80003c70:	fe844503          	lbu	a0,-24(s0)
    80003c74:	01813083          	ld	ra,24(sp)
    80003c78:	01013403          	ld	s0,16(sp)
    80003c7c:	02010113          	addi	sp,sp,32
    80003c80:	00008067          	ret

0000000080003c84 <console_handler>:
    80003c84:	fe010113          	addi	sp,sp,-32
    80003c88:	00813823          	sd	s0,16(sp)
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00913423          	sd	s1,8(sp)
    80003c94:	02010413          	addi	s0,sp,32
    80003c98:	14202773          	csrr	a4,scause
    80003c9c:	100027f3          	csrr	a5,sstatus
    80003ca0:	0027f793          	andi	a5,a5,2
    80003ca4:	06079e63          	bnez	a5,80003d20 <console_handler+0x9c>
    80003ca8:	00074c63          	bltz	a4,80003cc0 <console_handler+0x3c>
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	01013403          	ld	s0,16(sp)
    80003cb4:	00813483          	ld	s1,8(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret
    80003cc0:	0ff77713          	andi	a4,a4,255
    80003cc4:	00900793          	li	a5,9
    80003cc8:	fef712e3          	bne	a4,a5,80003cac <console_handler+0x28>
    80003ccc:	ffffe097          	auipc	ra,0xffffe
    80003cd0:	4b8080e7          	jalr	1208(ra) # 80002184 <plic_claim>
    80003cd4:	00a00793          	li	a5,10
    80003cd8:	00050493          	mv	s1,a0
    80003cdc:	02f50c63          	beq	a0,a5,80003d14 <console_handler+0x90>
    80003ce0:	fc0506e3          	beqz	a0,80003cac <console_handler+0x28>
    80003ce4:	00050593          	mv	a1,a0
    80003ce8:	00000517          	auipc	a0,0x0
    80003cec:	43050513          	addi	a0,a0,1072 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003cf0:	fffff097          	auipc	ra,0xfffff
    80003cf4:	8d8080e7          	jalr	-1832(ra) # 800025c8 <__printf>
    80003cf8:	01013403          	ld	s0,16(sp)
    80003cfc:	01813083          	ld	ra,24(sp)
    80003d00:	00048513          	mv	a0,s1
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	ffffe317          	auipc	t1,0xffffe
    80003d10:	4b030067          	jr	1200(t1) # 800021bc <plic_complete>
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	1bc080e7          	jalr	444(ra) # 80002ed0 <uartintr>
    80003d1c:	fddff06f          	j	80003cf8 <console_handler+0x74>
    80003d20:	00000517          	auipc	a0,0x0
    80003d24:	4f850513          	addi	a0,a0,1272 # 80004218 <digits+0x78>
    80003d28:	fffff097          	auipc	ra,0xfffff
    80003d2c:	844080e7          	jalr	-1980(ra) # 8000256c <panic>

0000000080003d30 <kvmincrease>:
    80003d30:	fe010113          	addi	sp,sp,-32
    80003d34:	01213023          	sd	s2,0(sp)
    80003d38:	00001937          	lui	s2,0x1
    80003d3c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	01250933          	add	s2,a0,s2
    80003d54:	00c95913          	srli	s2,s2,0xc
    80003d58:	02090863          	beqz	s2,80003d88 <kvmincrease+0x58>
    80003d5c:	00000493          	li	s1,0
    80003d60:	00148493          	addi	s1,s1,1
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	4bc080e7          	jalr	1212(ra) # 80003220 <kalloc>
    80003d6c:	fe991ae3          	bne	s2,s1,80003d60 <kvmincrease+0x30>
    80003d70:	01813083          	ld	ra,24(sp)
    80003d74:	01013403          	ld	s0,16(sp)
    80003d78:	00813483          	ld	s1,8(sp)
    80003d7c:	00013903          	ld	s2,0(sp)
    80003d80:	02010113          	addi	sp,sp,32
    80003d84:	00008067          	ret
    80003d88:	01813083          	ld	ra,24(sp)
    80003d8c:	01013403          	ld	s0,16(sp)
    80003d90:	00813483          	ld	s1,8(sp)
    80003d94:	00013903          	ld	s2,0(sp)
    80003d98:	00000513          	li	a0,0
    80003d9c:	02010113          	addi	sp,sp,32
    80003da0:	00008067          	ret
	...

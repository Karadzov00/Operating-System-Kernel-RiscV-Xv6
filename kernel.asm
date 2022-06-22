
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	70813103          	ld	sp,1800(sp) # 80004708 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0c1010ef          	jal	ra,800018dc <start>

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
    80001080:	680000ef          	jal	ra,80001700 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000124c:	db850513          	addi	a0,a0,-584 # 80004000 <kvmincrease+0x320>
    80001250:	00000097          	auipc	ra,0x0
    80001254:	560080e7          	jalr	1376(ra) # 800017b0 <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    80001258:	00048513          	mv	a0,s1
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	f5c080e7          	jalr	-164(ra) # 800011b8 <_Z8mem_freePv>
    80001264:	02051663          	bnez	a0,80001290 <main+0x7c>
        printString("successfully freed \n");
    80001268:	00003517          	auipc	a0,0x3
    8000126c:	da850513          	addi	a0,a0,-600 # 80004010 <kvmincrease+0x330>
    80001270:	00000097          	auipc	ra,0x0
    80001274:	540080e7          	jalr	1344(ra) # 800017b0 <_Z11printStringPKc>
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
    80001294:	d9850513          	addi	a0,a0,-616 # 80004028 <kvmincrease+0x348>
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	518080e7          	jalr	1304(ra) # 800017b0 <_Z11printStringPKc>
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
    80001400:	364080e7          	jalr	868(ra) # 80001760 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001428:	33c080e7          	jalr	828(ra) # 80001760 <_ZN15MemoryAllocator9mem_allocEm>
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
    80001450:	33c080e7          	jalr	828(ra) # 80001788 <_ZN15MemoryAllocator8mem_freeEPv>
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
    80001478:	314080e7          	jalr	788(ra) # 80001788 <_ZN15MemoryAllocator8mem_freeEPv>

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
    __asm__ volatile ("ecall");
    8000160c:	00000073          	ecall
}
    80001610:	00813403          	ld	s0,8(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    8000161c:	fe010113          	addi	sp,sp,-32
    80001620:	00113c23          	sd	ra,24(sp)
    80001624:	00813823          	sd	s0,16(sp)
    80001628:	00913423          	sd	s1,8(sp)
    8000162c:	02010413          	addi	s0,sp,32
    TCB* old = running;
    80001630:	00003497          	auipc	s1,0x3
    80001634:	1484b483          	ld	s1,328(s1) # 80004778 <_ZN3TCB7runningE>

class TCB {
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001638:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    8000163c:	02078c63          	beqz	a5,80001674 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001640:	00000097          	auipc	ra,0x0
    80001644:	ca4080e7          	jalr	-860(ra) # 800012e4 <_ZN9Scheduler3getEv>
    80001648:	00003797          	auipc	a5,0x3
    8000164c:	12a7b823          	sd	a0,304(a5) # 80004778 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001650:	01050593          	addi	a1,a0,16
    80001654:	01048513          	addi	a0,s1,16
    80001658:	00000097          	auipc	ra,0x0
    8000165c:	ab8080e7          	jalr	-1352(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001660:	01813083          	ld	ra,24(sp)
    80001664:	01013403          	ld	s0,16(sp)
    80001668:	00813483          	ld	s1,8(sp)
    8000166c:	02010113          	addi	sp,sp,32
    80001670:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	cd4080e7          	jalr	-812(ra) # 8000134c <_ZN9Scheduler3putEP3TCB>
    80001680:	fc1ff06f          	j	80001640 <_ZN3TCB8dispatchEv+0x24>

0000000080001684 <_ZN5Riscv14syscallHandlerEv>:

#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"


void Riscv::syscallHandler() {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    uint64 arg1;
//    uint64 arg2;
//    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001694:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001698:	00100713          	li	a4,1
    8000169c:	00e78e63          	beq	a5,a4,800016b8 <_ZN5Riscv14syscallHandlerEv+0x34>
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    800016a0:	00200713          	li	a4,2
    800016a4:	02e78463          	beq	a5,a4,800016cc <_ZN5Riscv14syscallHandlerEv+0x48>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::mem_free((void*)arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }

}
    800016a8:	00813083          	ld	ra,8(sp)
    800016ac:	00013403          	ld	s0,0(sp)
    800016b0:	01010113          	addi	sp,sp,16
    800016b4:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800016b8:	00058513          	mv	a0,a1
        uint64 ptr= (uint64)MemoryAllocator::mem_alloc(arg1);
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	0a4080e7          	jalr	164(ra) # 80001760 <_ZN15MemoryAllocator9mem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800016c4:	00050513          	mv	a0,a0
    800016c8:	fe1ff06f          	j	800016a8 <_ZN5Riscv14syscallHandlerEv+0x24>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800016cc:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::mem_free((void*)arg1);
    800016d0:	00000097          	auipc	ra,0x0
    800016d4:	0b8080e7          	jalr	184(ra) # 80001788 <_ZN15MemoryAllocator8mem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    800016d8:	00050513          	mv	a0,a0
}
    800016dc:	fcdff06f          	j	800016a8 <_ZN5Riscv14syscallHandlerEv+0x24>

00000000800016e0 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    800016e0:	ff010113          	addi	sp,sp,-16
    800016e4:	00813423          	sd	s0,8(sp)
    800016e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800016ec:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800016f0:	10200073          	sret
}
    800016f4:	00813403          	ld	s0,8(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001700:	fd010113          	addi	sp,sp,-48
    80001704:	02113423          	sd	ra,40(sp)
    80001708:	02813023          	sd	s0,32(sp)
    8000170c:	00913c23          	sd	s1,24(sp)
    80001710:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001714:	142027f3          	csrr	a5,scause
    80001718:	fcf43823          	sd	a5,-48(s0)
    return scause;
    8000171c:	fd043783          	ld	a5,-48(s0)
    uint scause = r_scause();

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001720:	ff87879b          	addiw	a5,a5,-8
    80001724:	00100713          	li	a4,1
    80001728:	00f77c63          	bgeu	a4,a5,80001740 <_ZN5Riscv20handleSupervisorTrapEv+0x40>
        //print(sepc)
        //print(stval) //trap value

    }

}
    8000172c:	02813083          	ld	ra,40(sp)
    80001730:	02013403          	ld	s0,32(sp)
    80001734:	01813483          	ld	s1,24(sp)
    80001738:	03010113          	addi	sp,sp,48
    8000173c:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001740:	141027f3          	csrr	a5,sepc
    80001744:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001748:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    8000174c:	00448493          	addi	s1,s1,4
        syscallHandler();
    80001750:	00000097          	auipc	ra,0x0
    80001754:	f34080e7          	jalr	-204(ra) # 80001684 <_ZN5Riscv14syscallHandlerEv>
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001758:	14149073          	csrw	sepc,s1
}
    8000175c:	fd1ff06f          	j	8000172c <_ZN5Riscv20handleSupervisorTrapEv+0x2c>

0000000080001760 <_ZN15MemoryAllocator9mem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::mem_alloc(size_t size){
    80001760:	ff010113          	addi	sp,sp,-16
    80001764:	00113423          	sd	ra,8(sp)
    80001768:	00813023          	sd	s0,0(sp)
    8000176c:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001770:	00002097          	auipc	ra,0x2
    80001774:	2f8080e7          	jalr	760(ra) # 80003a68 <__mem_alloc>
}
    80001778:	00813083          	ld	ra,8(sp)
    8000177c:	00013403          	ld	s0,0(sp)
    80001780:	01010113          	addi	sp,sp,16
    80001784:	00008067          	ret

0000000080001788 <_ZN15MemoryAllocator8mem_freeEPv>:

int MemoryAllocator::mem_free(void* arg){
    80001788:	ff010113          	addi	sp,sp,-16
    8000178c:	00113423          	sd	ra,8(sp)
    80001790:	00813023          	sd	s0,0(sp)
    80001794:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001798:	00002097          	auipc	ra,0x2
    8000179c:	204080e7          	jalr	516(ra) # 8000399c <__mem_free>
    800017a0:	00813083          	ld	ra,8(sp)
    800017a4:	00013403          	ld	s0,0(sp)
    800017a8:	01010113          	addi	sp,sp,16
    800017ac:	00008067          	ret

00000000800017b0 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    800017b0:	fd010113          	addi	sp,sp,-48
    800017b4:	02113423          	sd	ra,40(sp)
    800017b8:	02813023          	sd	s0,32(sp)
    800017bc:	00913c23          	sd	s1,24(sp)
    800017c0:	01213823          	sd	s2,16(sp)
    800017c4:	03010413          	addi	s0,sp,48
    800017c8:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800017cc:	100027f3          	csrr	a5,sstatus
    800017d0:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    800017d4:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800017d8:	00200793          	li	a5,2
    800017dc:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    800017e0:	0004c503          	lbu	a0,0(s1)
    800017e4:	00050a63          	beqz	a0,800017f8 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	3d8080e7          	jalr	984(ra) # 80003bc0 <__putc>
        string++;
    800017f0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800017f4:	fedff06f          	j	800017e0 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    800017f8:	0009091b          	sext.w	s2,s2
    800017fc:	00297913          	andi	s2,s2,2
    80001800:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001804:	10092073          	csrs	sstatus,s2
}
    80001808:	02813083          	ld	ra,40(sp)
    8000180c:	02013403          	ld	s0,32(sp)
    80001810:	01813483          	ld	s1,24(sp)
    80001814:	01013903          	ld	s2,16(sp)
    80001818:	03010113          	addi	sp,sp,48
    8000181c:	00008067          	ret

0000000080001820 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001820:	fc010113          	addi	sp,sp,-64
    80001824:	02113c23          	sd	ra,56(sp)
    80001828:	02813823          	sd	s0,48(sp)
    8000182c:	02913423          	sd	s1,40(sp)
    80001830:	03213023          	sd	s2,32(sp)
    80001834:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001838:	100027f3          	csrr	a5,sstatus
    8000183c:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001840:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001844:	00200793          	li	a5,2
    80001848:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    8000184c:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001850:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001854:	00a00613          	li	a2,10
    80001858:	02c5773b          	remuw	a4,a0,a2
    8000185c:	02071693          	slli	a3,a4,0x20
    80001860:	0206d693          	srli	a3,a3,0x20
    80001864:	00002717          	auipc	a4,0x2
    80001868:	7d470713          	addi	a4,a4,2004 # 80004038 <_ZZ12printIntegermE6digits>
    8000186c:	00d70733          	add	a4,a4,a3
    80001870:	00074703          	lbu	a4,0(a4)
    80001874:	fe040693          	addi	a3,s0,-32
    80001878:	009687b3          	add	a5,a3,s1
    8000187c:	0014849b          	addiw	s1,s1,1
    80001880:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001884:	0005071b          	sext.w	a4,a0
    80001888:	02c5553b          	divuw	a0,a0,a2
    8000188c:	00900793          	li	a5,9
    80001890:	fce7e2e3          	bltu	a5,a4,80001854 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001894:	fff4849b          	addiw	s1,s1,-1
    80001898:	0004ce63          	bltz	s1,800018b4 <_Z12printIntegerm+0x94>
    8000189c:	fe040793          	addi	a5,s0,-32
    800018a0:	009787b3          	add	a5,a5,s1
    800018a4:	ff07c503          	lbu	a0,-16(a5)
    800018a8:	00002097          	auipc	ra,0x2
    800018ac:	318080e7          	jalr	792(ra) # 80003bc0 <__putc>
    800018b0:	fe5ff06f          	j	80001894 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800018b4:	0009091b          	sext.w	s2,s2
    800018b8:	00297913          	andi	s2,s2,2
    800018bc:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800018c0:	10092073          	csrs	sstatus,s2
}
    800018c4:	03813083          	ld	ra,56(sp)
    800018c8:	03013403          	ld	s0,48(sp)
    800018cc:	02813483          	ld	s1,40(sp)
    800018d0:	02013903          	ld	s2,32(sp)
    800018d4:	04010113          	addi	sp,sp,64
    800018d8:	00008067          	ret

00000000800018dc <start>:
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00813423          	sd	s0,8(sp)
    800018e4:	01010413          	addi	s0,sp,16
    800018e8:	300027f3          	csrr	a5,mstatus
    800018ec:	ffffe737          	lui	a4,0xffffe
    800018f0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    800018f4:	00e7f7b3          	and	a5,a5,a4
    800018f8:	00001737          	lui	a4,0x1
    800018fc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001900:	00e7e7b3          	or	a5,a5,a4
    80001904:	30079073          	csrw	mstatus,a5
    80001908:	00000797          	auipc	a5,0x0
    8000190c:	16078793          	addi	a5,a5,352 # 80001a68 <system_main>
    80001910:	34179073          	csrw	mepc,a5
    80001914:	00000793          	li	a5,0
    80001918:	18079073          	csrw	satp,a5
    8000191c:	000107b7          	lui	a5,0x10
    80001920:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001924:	30279073          	csrw	medeleg,a5
    80001928:	30379073          	csrw	mideleg,a5
    8000192c:	104027f3          	csrr	a5,sie
    80001930:	2227e793          	ori	a5,a5,546
    80001934:	10479073          	csrw	sie,a5
    80001938:	fff00793          	li	a5,-1
    8000193c:	00a7d793          	srli	a5,a5,0xa
    80001940:	3b079073          	csrw	pmpaddr0,a5
    80001944:	00f00793          	li	a5,15
    80001948:	3a079073          	csrw	pmpcfg0,a5
    8000194c:	f14027f3          	csrr	a5,mhartid
    80001950:	0200c737          	lui	a4,0x200c
    80001954:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001958:	0007869b          	sext.w	a3,a5
    8000195c:	00269713          	slli	a4,a3,0x2
    80001960:	000f4637          	lui	a2,0xf4
    80001964:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001968:	00d70733          	add	a4,a4,a3
    8000196c:	0037979b          	slliw	a5,a5,0x3
    80001970:	020046b7          	lui	a3,0x2004
    80001974:	00d787b3          	add	a5,a5,a3
    80001978:	00c585b3          	add	a1,a1,a2
    8000197c:	00371693          	slli	a3,a4,0x3
    80001980:	00003717          	auipc	a4,0x3
    80001984:	e1070713          	addi	a4,a4,-496 # 80004790 <timer_scratch>
    80001988:	00b7b023          	sd	a1,0(a5)
    8000198c:	00d70733          	add	a4,a4,a3
    80001990:	00f73c23          	sd	a5,24(a4)
    80001994:	02c73023          	sd	a2,32(a4)
    80001998:	34071073          	csrw	mscratch,a4
    8000199c:	00000797          	auipc	a5,0x0
    800019a0:	6e478793          	addi	a5,a5,1764 # 80002080 <timervec>
    800019a4:	30579073          	csrw	mtvec,a5
    800019a8:	300027f3          	csrr	a5,mstatus
    800019ac:	0087e793          	ori	a5,a5,8
    800019b0:	30079073          	csrw	mstatus,a5
    800019b4:	304027f3          	csrr	a5,mie
    800019b8:	0807e793          	ori	a5,a5,128
    800019bc:	30479073          	csrw	mie,a5
    800019c0:	f14027f3          	csrr	a5,mhartid
    800019c4:	0007879b          	sext.w	a5,a5
    800019c8:	00078213          	mv	tp,a5
    800019cc:	30200073          	mret
    800019d0:	00813403          	ld	s0,8(sp)
    800019d4:	01010113          	addi	sp,sp,16
    800019d8:	00008067          	ret

00000000800019dc <timerinit>:
    800019dc:	ff010113          	addi	sp,sp,-16
    800019e0:	00813423          	sd	s0,8(sp)
    800019e4:	01010413          	addi	s0,sp,16
    800019e8:	f14027f3          	csrr	a5,mhartid
    800019ec:	0200c737          	lui	a4,0x200c
    800019f0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800019f4:	0007869b          	sext.w	a3,a5
    800019f8:	00269713          	slli	a4,a3,0x2
    800019fc:	000f4637          	lui	a2,0xf4
    80001a00:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a04:	00d70733          	add	a4,a4,a3
    80001a08:	0037979b          	slliw	a5,a5,0x3
    80001a0c:	020046b7          	lui	a3,0x2004
    80001a10:	00d787b3          	add	a5,a5,a3
    80001a14:	00c585b3          	add	a1,a1,a2
    80001a18:	00371693          	slli	a3,a4,0x3
    80001a1c:	00003717          	auipc	a4,0x3
    80001a20:	d7470713          	addi	a4,a4,-652 # 80004790 <timer_scratch>
    80001a24:	00b7b023          	sd	a1,0(a5)
    80001a28:	00d70733          	add	a4,a4,a3
    80001a2c:	00f73c23          	sd	a5,24(a4)
    80001a30:	02c73023          	sd	a2,32(a4)
    80001a34:	34071073          	csrw	mscratch,a4
    80001a38:	00000797          	auipc	a5,0x0
    80001a3c:	64878793          	addi	a5,a5,1608 # 80002080 <timervec>
    80001a40:	30579073          	csrw	mtvec,a5
    80001a44:	300027f3          	csrr	a5,mstatus
    80001a48:	0087e793          	ori	a5,a5,8
    80001a4c:	30079073          	csrw	mstatus,a5
    80001a50:	304027f3          	csrr	a5,mie
    80001a54:	0807e793          	ori	a5,a5,128
    80001a58:	30479073          	csrw	mie,a5
    80001a5c:	00813403          	ld	s0,8(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <system_main>:
    80001a68:	fe010113          	addi	sp,sp,-32
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	02010413          	addi	s0,sp,32
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	0c4080e7          	jalr	196(ra) # 80001b40 <cpuid>
    80001a84:	00003497          	auipc	s1,0x3
    80001a88:	cac48493          	addi	s1,s1,-852 # 80004730 <started>
    80001a8c:	02050263          	beqz	a0,80001ab0 <system_main+0x48>
    80001a90:	0004a783          	lw	a5,0(s1)
    80001a94:	0007879b          	sext.w	a5,a5
    80001a98:	fe078ce3          	beqz	a5,80001a90 <system_main+0x28>
    80001a9c:	0ff0000f          	fence
    80001aa0:	00002517          	auipc	a0,0x2
    80001aa4:	5d850513          	addi	a0,a0,1496 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001aa8:	00001097          	auipc	ra,0x1
    80001aac:	a74080e7          	jalr	-1420(ra) # 8000251c <panic>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	9c8080e7          	jalr	-1592(ra) # 80002478 <consoleinit>
    80001ab8:	00001097          	auipc	ra,0x1
    80001abc:	154080e7          	jalr	340(ra) # 80002c0c <printfinit>
    80001ac0:	00002517          	auipc	a0,0x2
    80001ac4:	69850513          	addi	a0,a0,1688 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	ab0080e7          	jalr	-1360(ra) # 80002578 <__printf>
    80001ad0:	00002517          	auipc	a0,0x2
    80001ad4:	57850513          	addi	a0,a0,1400 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	aa0080e7          	jalr	-1376(ra) # 80002578 <__printf>
    80001ae0:	00002517          	auipc	a0,0x2
    80001ae4:	67850513          	addi	a0,a0,1656 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001ae8:	00001097          	auipc	ra,0x1
    80001aec:	a90080e7          	jalr	-1392(ra) # 80002578 <__printf>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	4a8080e7          	jalr	1192(ra) # 80002f98 <kinit>
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	148080e7          	jalr	328(ra) # 80001c40 <trapinit>
    80001b00:	00000097          	auipc	ra,0x0
    80001b04:	16c080e7          	jalr	364(ra) # 80001c6c <trapinithart>
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	5b8080e7          	jalr	1464(ra) # 800020c0 <plicinit>
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	5d8080e7          	jalr	1496(ra) # 800020e8 <plicinithart>
    80001b18:	00000097          	auipc	ra,0x0
    80001b1c:	078080e7          	jalr	120(ra) # 80001b90 <userinit>
    80001b20:	0ff0000f          	fence
    80001b24:	00100793          	li	a5,1
    80001b28:	00002517          	auipc	a0,0x2
    80001b2c:	53850513          	addi	a0,a0,1336 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001b30:	00f4a023          	sw	a5,0(s1)
    80001b34:	00001097          	auipc	ra,0x1
    80001b38:	a44080e7          	jalr	-1468(ra) # 80002578 <__printf>
    80001b3c:	0000006f          	j	80001b3c <system_main+0xd4>

0000000080001b40 <cpuid>:
    80001b40:	ff010113          	addi	sp,sp,-16
    80001b44:	00813423          	sd	s0,8(sp)
    80001b48:	01010413          	addi	s0,sp,16
    80001b4c:	00020513          	mv	a0,tp
    80001b50:	00813403          	ld	s0,8(sp)
    80001b54:	0005051b          	sext.w	a0,a0
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <mycpu>:
    80001b60:	ff010113          	addi	sp,sp,-16
    80001b64:	00813423          	sd	s0,8(sp)
    80001b68:	01010413          	addi	s0,sp,16
    80001b6c:	00020793          	mv	a5,tp
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	0007879b          	sext.w	a5,a5
    80001b78:	00779793          	slli	a5,a5,0x7
    80001b7c:	00004517          	auipc	a0,0x4
    80001b80:	c4450513          	addi	a0,a0,-956 # 800057c0 <cpus>
    80001b84:	00f50533          	add	a0,a0,a5
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <userinit>:
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00813423          	sd	s0,8(sp)
    80001b98:	01010413          	addi	s0,sp,16
    80001b9c:	00813403          	ld	s0,8(sp)
    80001ba0:	01010113          	addi	sp,sp,16
    80001ba4:	fffff317          	auipc	t1,0xfffff
    80001ba8:	67030067          	jr	1648(t1) # 80001214 <main>

0000000080001bac <either_copyout>:
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00813023          	sd	s0,0(sp)
    80001bb4:	00113423          	sd	ra,8(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	02051663          	bnez	a0,80001be8 <either_copyout+0x3c>
    80001bc0:	00058513          	mv	a0,a1
    80001bc4:	00060593          	mv	a1,a2
    80001bc8:	0006861b          	sext.w	a2,a3
    80001bcc:	00002097          	auipc	ra,0x2
    80001bd0:	c58080e7          	jalr	-936(ra) # 80003824 <__memmove>
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	00000513          	li	a0,0
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret
    80001be8:	00002517          	auipc	a0,0x2
    80001bec:	4b850513          	addi	a0,a0,1208 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	92c080e7          	jalr	-1748(ra) # 8000251c <panic>

0000000080001bf8 <either_copyin>:
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813023          	sd	s0,0(sp)
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	01010413          	addi	s0,sp,16
    80001c08:	02059463          	bnez	a1,80001c30 <either_copyin+0x38>
    80001c0c:	00060593          	mv	a1,a2
    80001c10:	0006861b          	sext.w	a2,a3
    80001c14:	00002097          	auipc	ra,0x2
    80001c18:	c10080e7          	jalr	-1008(ra) # 80003824 <__memmove>
    80001c1c:	00813083          	ld	ra,8(sp)
    80001c20:	00013403          	ld	s0,0(sp)
    80001c24:	00000513          	li	a0,0
    80001c28:	01010113          	addi	sp,sp,16
    80001c2c:	00008067          	ret
    80001c30:	00002517          	auipc	a0,0x2
    80001c34:	49850513          	addi	a0,a0,1176 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	8e4080e7          	jalr	-1820(ra) # 8000251c <panic>

0000000080001c40 <trapinit>:
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00813423          	sd	s0,8(sp)
    80001c48:	01010413          	addi	s0,sp,16
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	00002597          	auipc	a1,0x2
    80001c54:	4a058593          	addi	a1,a1,1184 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001c58:	00004517          	auipc	a0,0x4
    80001c5c:	be850513          	addi	a0,a0,-1048 # 80005840 <tickslock>
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00001317          	auipc	t1,0x1
    80001c68:	5c430067          	jr	1476(t1) # 80003228 <initlock>

0000000080001c6c <trapinithart>:
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    80001c78:	00000797          	auipc	a5,0x0
    80001c7c:	2f878793          	addi	a5,a5,760 # 80001f70 <kernelvec>
    80001c80:	10579073          	csrw	stvec,a5
    80001c84:	00813403          	ld	s0,8(sp)
    80001c88:	01010113          	addi	sp,sp,16
    80001c8c:	00008067          	ret

0000000080001c90 <usertrap>:
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00813423          	sd	s0,8(sp)
    80001c98:	01010413          	addi	s0,sp,16
    80001c9c:	00813403          	ld	s0,8(sp)
    80001ca0:	01010113          	addi	sp,sp,16
    80001ca4:	00008067          	ret

0000000080001ca8 <usertrapret>:
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    80001cb4:	00813403          	ld	s0,8(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <kerneltrap>:
    80001cc0:	fe010113          	addi	sp,sp,-32
    80001cc4:	00813823          	sd	s0,16(sp)
    80001cc8:	00113c23          	sd	ra,24(sp)
    80001ccc:	00913423          	sd	s1,8(sp)
    80001cd0:	02010413          	addi	s0,sp,32
    80001cd4:	142025f3          	csrr	a1,scause
    80001cd8:	100027f3          	csrr	a5,sstatus
    80001cdc:	0027f793          	andi	a5,a5,2
    80001ce0:	10079c63          	bnez	a5,80001df8 <kerneltrap+0x138>
    80001ce4:	142027f3          	csrr	a5,scause
    80001ce8:	0207ce63          	bltz	a5,80001d24 <kerneltrap+0x64>
    80001cec:	00002517          	auipc	a0,0x2
    80001cf0:	44c50513          	addi	a0,a0,1100 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	884080e7          	jalr	-1916(ra) # 80002578 <__printf>
    80001cfc:	141025f3          	csrr	a1,sepc
    80001d00:	14302673          	csrr	a2,stval
    80001d04:	00002517          	auipc	a0,0x2
    80001d08:	44450513          	addi	a0,a0,1092 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001d0c:	00001097          	auipc	ra,0x1
    80001d10:	86c080e7          	jalr	-1940(ra) # 80002578 <__printf>
    80001d14:	00002517          	auipc	a0,0x2
    80001d18:	44c50513          	addi	a0,a0,1100 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	800080e7          	jalr	-2048(ra) # 8000251c <panic>
    80001d24:	0ff7f713          	andi	a4,a5,255
    80001d28:	00900693          	li	a3,9
    80001d2c:	04d70063          	beq	a4,a3,80001d6c <kerneltrap+0xac>
    80001d30:	fff00713          	li	a4,-1
    80001d34:	03f71713          	slli	a4,a4,0x3f
    80001d38:	00170713          	addi	a4,a4,1
    80001d3c:	fae798e3          	bne	a5,a4,80001cec <kerneltrap+0x2c>
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	e00080e7          	jalr	-512(ra) # 80001b40 <cpuid>
    80001d48:	06050663          	beqz	a0,80001db4 <kerneltrap+0xf4>
    80001d4c:	144027f3          	csrr	a5,sip
    80001d50:	ffd7f793          	andi	a5,a5,-3
    80001d54:	14479073          	csrw	sip,a5
    80001d58:	01813083          	ld	ra,24(sp)
    80001d5c:	01013403          	ld	s0,16(sp)
    80001d60:	00813483          	ld	s1,8(sp)
    80001d64:	02010113          	addi	sp,sp,32
    80001d68:	00008067          	ret
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	3c8080e7          	jalr	968(ra) # 80002134 <plic_claim>
    80001d74:	00a00793          	li	a5,10
    80001d78:	00050493          	mv	s1,a0
    80001d7c:	06f50863          	beq	a0,a5,80001dec <kerneltrap+0x12c>
    80001d80:	fc050ce3          	beqz	a0,80001d58 <kerneltrap+0x98>
    80001d84:	00050593          	mv	a1,a0
    80001d88:	00002517          	auipc	a0,0x2
    80001d8c:	39050513          	addi	a0,a0,912 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001d90:	00000097          	auipc	ra,0x0
    80001d94:	7e8080e7          	jalr	2024(ra) # 80002578 <__printf>
    80001d98:	01013403          	ld	s0,16(sp)
    80001d9c:	01813083          	ld	ra,24(sp)
    80001da0:	00048513          	mv	a0,s1
    80001da4:	00813483          	ld	s1,8(sp)
    80001da8:	02010113          	addi	sp,sp,32
    80001dac:	00000317          	auipc	t1,0x0
    80001db0:	3c030067          	jr	960(t1) # 8000216c <plic_complete>
    80001db4:	00004517          	auipc	a0,0x4
    80001db8:	a8c50513          	addi	a0,a0,-1396 # 80005840 <tickslock>
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	490080e7          	jalr	1168(ra) # 8000324c <acquire>
    80001dc4:	00003717          	auipc	a4,0x3
    80001dc8:	97070713          	addi	a4,a4,-1680 # 80004734 <ticks>
    80001dcc:	00072783          	lw	a5,0(a4)
    80001dd0:	00004517          	auipc	a0,0x4
    80001dd4:	a7050513          	addi	a0,a0,-1424 # 80005840 <tickslock>
    80001dd8:	0017879b          	addiw	a5,a5,1
    80001ddc:	00f72023          	sw	a5,0(a4)
    80001de0:	00001097          	auipc	ra,0x1
    80001de4:	538080e7          	jalr	1336(ra) # 80003318 <release>
    80001de8:	f65ff06f          	j	80001d4c <kerneltrap+0x8c>
    80001dec:	00001097          	auipc	ra,0x1
    80001df0:	094080e7          	jalr	148(ra) # 80002e80 <uartintr>
    80001df4:	fa5ff06f          	j	80001d98 <kerneltrap+0xd8>
    80001df8:	00002517          	auipc	a0,0x2
    80001dfc:	30050513          	addi	a0,a0,768 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	71c080e7          	jalr	1820(ra) # 8000251c <panic>

0000000080001e08 <clockintr>:
    80001e08:	fe010113          	addi	sp,sp,-32
    80001e0c:	00813823          	sd	s0,16(sp)
    80001e10:	00913423          	sd	s1,8(sp)
    80001e14:	00113c23          	sd	ra,24(sp)
    80001e18:	02010413          	addi	s0,sp,32
    80001e1c:	00004497          	auipc	s1,0x4
    80001e20:	a2448493          	addi	s1,s1,-1500 # 80005840 <tickslock>
    80001e24:	00048513          	mv	a0,s1
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	424080e7          	jalr	1060(ra) # 8000324c <acquire>
    80001e30:	00003717          	auipc	a4,0x3
    80001e34:	90470713          	addi	a4,a4,-1788 # 80004734 <ticks>
    80001e38:	00072783          	lw	a5,0(a4)
    80001e3c:	01013403          	ld	s0,16(sp)
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	00048513          	mv	a0,s1
    80001e48:	0017879b          	addiw	a5,a5,1
    80001e4c:	00813483          	ld	s1,8(sp)
    80001e50:	00f72023          	sw	a5,0(a4)
    80001e54:	02010113          	addi	sp,sp,32
    80001e58:	00001317          	auipc	t1,0x1
    80001e5c:	4c030067          	jr	1216(t1) # 80003318 <release>

0000000080001e60 <devintr>:
    80001e60:	142027f3          	csrr	a5,scause
    80001e64:	00000513          	li	a0,0
    80001e68:	0007c463          	bltz	a5,80001e70 <devintr+0x10>
    80001e6c:	00008067          	ret
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00813823          	sd	s0,16(sp)
    80001e78:	00113c23          	sd	ra,24(sp)
    80001e7c:	00913423          	sd	s1,8(sp)
    80001e80:	02010413          	addi	s0,sp,32
    80001e84:	0ff7f713          	andi	a4,a5,255
    80001e88:	00900693          	li	a3,9
    80001e8c:	04d70c63          	beq	a4,a3,80001ee4 <devintr+0x84>
    80001e90:	fff00713          	li	a4,-1
    80001e94:	03f71713          	slli	a4,a4,0x3f
    80001e98:	00170713          	addi	a4,a4,1
    80001e9c:	00e78c63          	beq	a5,a4,80001eb4 <devintr+0x54>
    80001ea0:	01813083          	ld	ra,24(sp)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	00813483          	ld	s1,8(sp)
    80001eac:	02010113          	addi	sp,sp,32
    80001eb0:	00008067          	ret
    80001eb4:	00000097          	auipc	ra,0x0
    80001eb8:	c8c080e7          	jalr	-884(ra) # 80001b40 <cpuid>
    80001ebc:	06050663          	beqz	a0,80001f28 <devintr+0xc8>
    80001ec0:	144027f3          	csrr	a5,sip
    80001ec4:	ffd7f793          	andi	a5,a5,-3
    80001ec8:	14479073          	csrw	sip,a5
    80001ecc:	01813083          	ld	ra,24(sp)
    80001ed0:	01013403          	ld	s0,16(sp)
    80001ed4:	00813483          	ld	s1,8(sp)
    80001ed8:	00200513          	li	a0,2
    80001edc:	02010113          	addi	sp,sp,32
    80001ee0:	00008067          	ret
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	250080e7          	jalr	592(ra) # 80002134 <plic_claim>
    80001eec:	00a00793          	li	a5,10
    80001ef0:	00050493          	mv	s1,a0
    80001ef4:	06f50663          	beq	a0,a5,80001f60 <devintr+0x100>
    80001ef8:	00100513          	li	a0,1
    80001efc:	fa0482e3          	beqz	s1,80001ea0 <devintr+0x40>
    80001f00:	00048593          	mv	a1,s1
    80001f04:	00002517          	auipc	a0,0x2
    80001f08:	21450513          	addi	a0,a0,532 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	66c080e7          	jalr	1644(ra) # 80002578 <__printf>
    80001f14:	00048513          	mv	a0,s1
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	254080e7          	jalr	596(ra) # 8000216c <plic_complete>
    80001f20:	00100513          	li	a0,1
    80001f24:	f7dff06f          	j	80001ea0 <devintr+0x40>
    80001f28:	00004517          	auipc	a0,0x4
    80001f2c:	91850513          	addi	a0,a0,-1768 # 80005840 <tickslock>
    80001f30:	00001097          	auipc	ra,0x1
    80001f34:	31c080e7          	jalr	796(ra) # 8000324c <acquire>
    80001f38:	00002717          	auipc	a4,0x2
    80001f3c:	7fc70713          	addi	a4,a4,2044 # 80004734 <ticks>
    80001f40:	00072783          	lw	a5,0(a4)
    80001f44:	00004517          	auipc	a0,0x4
    80001f48:	8fc50513          	addi	a0,a0,-1796 # 80005840 <tickslock>
    80001f4c:	0017879b          	addiw	a5,a5,1
    80001f50:	00f72023          	sw	a5,0(a4)
    80001f54:	00001097          	auipc	ra,0x1
    80001f58:	3c4080e7          	jalr	964(ra) # 80003318 <release>
    80001f5c:	f65ff06f          	j	80001ec0 <devintr+0x60>
    80001f60:	00001097          	auipc	ra,0x1
    80001f64:	f20080e7          	jalr	-224(ra) # 80002e80 <uartintr>
    80001f68:	fadff06f          	j	80001f14 <devintr+0xb4>
    80001f6c:	0000                	unimp
	...

0000000080001f70 <kernelvec>:
    80001f70:	f0010113          	addi	sp,sp,-256
    80001f74:	00113023          	sd	ra,0(sp)
    80001f78:	00213423          	sd	sp,8(sp)
    80001f7c:	00313823          	sd	gp,16(sp)
    80001f80:	00413c23          	sd	tp,24(sp)
    80001f84:	02513023          	sd	t0,32(sp)
    80001f88:	02613423          	sd	t1,40(sp)
    80001f8c:	02713823          	sd	t2,48(sp)
    80001f90:	02813c23          	sd	s0,56(sp)
    80001f94:	04913023          	sd	s1,64(sp)
    80001f98:	04a13423          	sd	a0,72(sp)
    80001f9c:	04b13823          	sd	a1,80(sp)
    80001fa0:	04c13c23          	sd	a2,88(sp)
    80001fa4:	06d13023          	sd	a3,96(sp)
    80001fa8:	06e13423          	sd	a4,104(sp)
    80001fac:	06f13823          	sd	a5,112(sp)
    80001fb0:	07013c23          	sd	a6,120(sp)
    80001fb4:	09113023          	sd	a7,128(sp)
    80001fb8:	09213423          	sd	s2,136(sp)
    80001fbc:	09313823          	sd	s3,144(sp)
    80001fc0:	09413c23          	sd	s4,152(sp)
    80001fc4:	0b513023          	sd	s5,160(sp)
    80001fc8:	0b613423          	sd	s6,168(sp)
    80001fcc:	0b713823          	sd	s7,176(sp)
    80001fd0:	0b813c23          	sd	s8,184(sp)
    80001fd4:	0d913023          	sd	s9,192(sp)
    80001fd8:	0da13423          	sd	s10,200(sp)
    80001fdc:	0db13823          	sd	s11,208(sp)
    80001fe0:	0dc13c23          	sd	t3,216(sp)
    80001fe4:	0fd13023          	sd	t4,224(sp)
    80001fe8:	0fe13423          	sd	t5,232(sp)
    80001fec:	0ff13823          	sd	t6,240(sp)
    80001ff0:	cd1ff0ef          	jal	ra,80001cc0 <kerneltrap>
    80001ff4:	00013083          	ld	ra,0(sp)
    80001ff8:	00813103          	ld	sp,8(sp)
    80001ffc:	01013183          	ld	gp,16(sp)
    80002000:	02013283          	ld	t0,32(sp)
    80002004:	02813303          	ld	t1,40(sp)
    80002008:	03013383          	ld	t2,48(sp)
    8000200c:	03813403          	ld	s0,56(sp)
    80002010:	04013483          	ld	s1,64(sp)
    80002014:	04813503          	ld	a0,72(sp)
    80002018:	05013583          	ld	a1,80(sp)
    8000201c:	05813603          	ld	a2,88(sp)
    80002020:	06013683          	ld	a3,96(sp)
    80002024:	06813703          	ld	a4,104(sp)
    80002028:	07013783          	ld	a5,112(sp)
    8000202c:	07813803          	ld	a6,120(sp)
    80002030:	08013883          	ld	a7,128(sp)
    80002034:	08813903          	ld	s2,136(sp)
    80002038:	09013983          	ld	s3,144(sp)
    8000203c:	09813a03          	ld	s4,152(sp)
    80002040:	0a013a83          	ld	s5,160(sp)
    80002044:	0a813b03          	ld	s6,168(sp)
    80002048:	0b013b83          	ld	s7,176(sp)
    8000204c:	0b813c03          	ld	s8,184(sp)
    80002050:	0c013c83          	ld	s9,192(sp)
    80002054:	0c813d03          	ld	s10,200(sp)
    80002058:	0d013d83          	ld	s11,208(sp)
    8000205c:	0d813e03          	ld	t3,216(sp)
    80002060:	0e013e83          	ld	t4,224(sp)
    80002064:	0e813f03          	ld	t5,232(sp)
    80002068:	0f013f83          	ld	t6,240(sp)
    8000206c:	10010113          	addi	sp,sp,256
    80002070:	10200073          	sret
    80002074:	00000013          	nop
    80002078:	00000013          	nop
    8000207c:	00000013          	nop

0000000080002080 <timervec>:
    80002080:	34051573          	csrrw	a0,mscratch,a0
    80002084:	00b53023          	sd	a1,0(a0)
    80002088:	00c53423          	sd	a2,8(a0)
    8000208c:	00d53823          	sd	a3,16(a0)
    80002090:	01853583          	ld	a1,24(a0)
    80002094:	02053603          	ld	a2,32(a0)
    80002098:	0005b683          	ld	a3,0(a1)
    8000209c:	00c686b3          	add	a3,a3,a2
    800020a0:	00d5b023          	sd	a3,0(a1)
    800020a4:	00200593          	li	a1,2
    800020a8:	14459073          	csrw	sip,a1
    800020ac:	01053683          	ld	a3,16(a0)
    800020b0:	00853603          	ld	a2,8(a0)
    800020b4:	00053583          	ld	a1,0(a0)
    800020b8:	34051573          	csrrw	a0,mscratch,a0
    800020bc:	30200073          	mret

00000000800020c0 <plicinit>:
    800020c0:	ff010113          	addi	sp,sp,-16
    800020c4:	00813423          	sd	s0,8(sp)
    800020c8:	01010413          	addi	s0,sp,16
    800020cc:	00813403          	ld	s0,8(sp)
    800020d0:	0c0007b7          	lui	a5,0xc000
    800020d4:	00100713          	li	a4,1
    800020d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800020dc:	00e7a223          	sw	a4,4(a5)
    800020e0:	01010113          	addi	sp,sp,16
    800020e4:	00008067          	ret

00000000800020e8 <plicinithart>:
    800020e8:	ff010113          	addi	sp,sp,-16
    800020ec:	00813023          	sd	s0,0(sp)
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	01010413          	addi	s0,sp,16
    800020f8:	00000097          	auipc	ra,0x0
    800020fc:	a48080e7          	jalr	-1464(ra) # 80001b40 <cpuid>
    80002100:	0085171b          	slliw	a4,a0,0x8
    80002104:	0c0027b7          	lui	a5,0xc002
    80002108:	00e787b3          	add	a5,a5,a4
    8000210c:	40200713          	li	a4,1026
    80002110:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002114:	00813083          	ld	ra,8(sp)
    80002118:	00013403          	ld	s0,0(sp)
    8000211c:	00d5151b          	slliw	a0,a0,0xd
    80002120:	0c2017b7          	lui	a5,0xc201
    80002124:	00a78533          	add	a0,a5,a0
    80002128:	00052023          	sw	zero,0(a0)
    8000212c:	01010113          	addi	sp,sp,16
    80002130:	00008067          	ret

0000000080002134 <plic_claim>:
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	01010413          	addi	s0,sp,16
    80002144:	00000097          	auipc	ra,0x0
    80002148:	9fc080e7          	jalr	-1540(ra) # 80001b40 <cpuid>
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	00d5151b          	slliw	a0,a0,0xd
    80002158:	0c2017b7          	lui	a5,0xc201
    8000215c:	00a78533          	add	a0,a5,a0
    80002160:	00452503          	lw	a0,4(a0)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <plic_complete>:
    8000216c:	fe010113          	addi	sp,sp,-32
    80002170:	00813823          	sd	s0,16(sp)
    80002174:	00913423          	sd	s1,8(sp)
    80002178:	00113c23          	sd	ra,24(sp)
    8000217c:	02010413          	addi	s0,sp,32
    80002180:	00050493          	mv	s1,a0
    80002184:	00000097          	auipc	ra,0x0
    80002188:	9bc080e7          	jalr	-1604(ra) # 80001b40 <cpuid>
    8000218c:	01813083          	ld	ra,24(sp)
    80002190:	01013403          	ld	s0,16(sp)
    80002194:	00d5179b          	slliw	a5,a0,0xd
    80002198:	0c201737          	lui	a4,0xc201
    8000219c:	00f707b3          	add	a5,a4,a5
    800021a0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800021a4:	00813483          	ld	s1,8(sp)
    800021a8:	02010113          	addi	sp,sp,32
    800021ac:	00008067          	ret

00000000800021b0 <consolewrite>:
    800021b0:	fb010113          	addi	sp,sp,-80
    800021b4:	04813023          	sd	s0,64(sp)
    800021b8:	04113423          	sd	ra,72(sp)
    800021bc:	02913c23          	sd	s1,56(sp)
    800021c0:	03213823          	sd	s2,48(sp)
    800021c4:	03313423          	sd	s3,40(sp)
    800021c8:	03413023          	sd	s4,32(sp)
    800021cc:	01513c23          	sd	s5,24(sp)
    800021d0:	05010413          	addi	s0,sp,80
    800021d4:	06c05c63          	blez	a2,8000224c <consolewrite+0x9c>
    800021d8:	00060993          	mv	s3,a2
    800021dc:	00050a13          	mv	s4,a0
    800021e0:	00058493          	mv	s1,a1
    800021e4:	00000913          	li	s2,0
    800021e8:	fff00a93          	li	s5,-1
    800021ec:	01c0006f          	j	80002208 <consolewrite+0x58>
    800021f0:	fbf44503          	lbu	a0,-65(s0)
    800021f4:	0019091b          	addiw	s2,s2,1
    800021f8:	00148493          	addi	s1,s1,1
    800021fc:	00001097          	auipc	ra,0x1
    80002200:	a9c080e7          	jalr	-1380(ra) # 80002c98 <uartputc>
    80002204:	03298063          	beq	s3,s2,80002224 <consolewrite+0x74>
    80002208:	00048613          	mv	a2,s1
    8000220c:	00100693          	li	a3,1
    80002210:	000a0593          	mv	a1,s4
    80002214:	fbf40513          	addi	a0,s0,-65
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	9e0080e7          	jalr	-1568(ra) # 80001bf8 <either_copyin>
    80002220:	fd5518e3          	bne	a0,s5,800021f0 <consolewrite+0x40>
    80002224:	04813083          	ld	ra,72(sp)
    80002228:	04013403          	ld	s0,64(sp)
    8000222c:	03813483          	ld	s1,56(sp)
    80002230:	02813983          	ld	s3,40(sp)
    80002234:	02013a03          	ld	s4,32(sp)
    80002238:	01813a83          	ld	s5,24(sp)
    8000223c:	00090513          	mv	a0,s2
    80002240:	03013903          	ld	s2,48(sp)
    80002244:	05010113          	addi	sp,sp,80
    80002248:	00008067          	ret
    8000224c:	00000913          	li	s2,0
    80002250:	fd5ff06f          	j	80002224 <consolewrite+0x74>

0000000080002254 <consoleread>:
    80002254:	f9010113          	addi	sp,sp,-112
    80002258:	06813023          	sd	s0,96(sp)
    8000225c:	04913c23          	sd	s1,88(sp)
    80002260:	05213823          	sd	s2,80(sp)
    80002264:	05313423          	sd	s3,72(sp)
    80002268:	05413023          	sd	s4,64(sp)
    8000226c:	03513c23          	sd	s5,56(sp)
    80002270:	03613823          	sd	s6,48(sp)
    80002274:	03713423          	sd	s7,40(sp)
    80002278:	03813023          	sd	s8,32(sp)
    8000227c:	06113423          	sd	ra,104(sp)
    80002280:	01913c23          	sd	s9,24(sp)
    80002284:	07010413          	addi	s0,sp,112
    80002288:	00060b93          	mv	s7,a2
    8000228c:	00050913          	mv	s2,a0
    80002290:	00058c13          	mv	s8,a1
    80002294:	00060b1b          	sext.w	s6,a2
    80002298:	00003497          	auipc	s1,0x3
    8000229c:	5d048493          	addi	s1,s1,1488 # 80005868 <cons>
    800022a0:	00400993          	li	s3,4
    800022a4:	fff00a13          	li	s4,-1
    800022a8:	00a00a93          	li	s5,10
    800022ac:	05705e63          	blez	s7,80002308 <consoleread+0xb4>
    800022b0:	09c4a703          	lw	a4,156(s1)
    800022b4:	0984a783          	lw	a5,152(s1)
    800022b8:	0007071b          	sext.w	a4,a4
    800022bc:	08e78463          	beq	a5,a4,80002344 <consoleread+0xf0>
    800022c0:	07f7f713          	andi	a4,a5,127
    800022c4:	00e48733          	add	a4,s1,a4
    800022c8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800022cc:	0017869b          	addiw	a3,a5,1
    800022d0:	08d4ac23          	sw	a3,152(s1)
    800022d4:	00070c9b          	sext.w	s9,a4
    800022d8:	0b370663          	beq	a4,s3,80002384 <consoleread+0x130>
    800022dc:	00100693          	li	a3,1
    800022e0:	f9f40613          	addi	a2,s0,-97
    800022e4:	000c0593          	mv	a1,s8
    800022e8:	00090513          	mv	a0,s2
    800022ec:	f8e40fa3          	sb	a4,-97(s0)
    800022f0:	00000097          	auipc	ra,0x0
    800022f4:	8bc080e7          	jalr	-1860(ra) # 80001bac <either_copyout>
    800022f8:	01450863          	beq	a0,s4,80002308 <consoleread+0xb4>
    800022fc:	001c0c13          	addi	s8,s8,1
    80002300:	fffb8b9b          	addiw	s7,s7,-1
    80002304:	fb5c94e3          	bne	s9,s5,800022ac <consoleread+0x58>
    80002308:	000b851b          	sext.w	a0,s7
    8000230c:	06813083          	ld	ra,104(sp)
    80002310:	06013403          	ld	s0,96(sp)
    80002314:	05813483          	ld	s1,88(sp)
    80002318:	05013903          	ld	s2,80(sp)
    8000231c:	04813983          	ld	s3,72(sp)
    80002320:	04013a03          	ld	s4,64(sp)
    80002324:	03813a83          	ld	s5,56(sp)
    80002328:	02813b83          	ld	s7,40(sp)
    8000232c:	02013c03          	ld	s8,32(sp)
    80002330:	01813c83          	ld	s9,24(sp)
    80002334:	40ab053b          	subw	a0,s6,a0
    80002338:	03013b03          	ld	s6,48(sp)
    8000233c:	07010113          	addi	sp,sp,112
    80002340:	00008067          	ret
    80002344:	00001097          	auipc	ra,0x1
    80002348:	1d8080e7          	jalr	472(ra) # 8000351c <push_on>
    8000234c:	0984a703          	lw	a4,152(s1)
    80002350:	09c4a783          	lw	a5,156(s1)
    80002354:	0007879b          	sext.w	a5,a5
    80002358:	fef70ce3          	beq	a4,a5,80002350 <consoleread+0xfc>
    8000235c:	00001097          	auipc	ra,0x1
    80002360:	234080e7          	jalr	564(ra) # 80003590 <pop_on>
    80002364:	0984a783          	lw	a5,152(s1)
    80002368:	07f7f713          	andi	a4,a5,127
    8000236c:	00e48733          	add	a4,s1,a4
    80002370:	01874703          	lbu	a4,24(a4)
    80002374:	0017869b          	addiw	a3,a5,1
    80002378:	08d4ac23          	sw	a3,152(s1)
    8000237c:	00070c9b          	sext.w	s9,a4
    80002380:	f5371ee3          	bne	a4,s3,800022dc <consoleread+0x88>
    80002384:	000b851b          	sext.w	a0,s7
    80002388:	f96bf2e3          	bgeu	s7,s6,8000230c <consoleread+0xb8>
    8000238c:	08f4ac23          	sw	a5,152(s1)
    80002390:	f7dff06f          	j	8000230c <consoleread+0xb8>

0000000080002394 <consputc>:
    80002394:	10000793          	li	a5,256
    80002398:	00f50663          	beq	a0,a5,800023a4 <consputc+0x10>
    8000239c:	00001317          	auipc	t1,0x1
    800023a0:	9f430067          	jr	-1548(t1) # 80002d90 <uartputc_sync>
    800023a4:	ff010113          	addi	sp,sp,-16
    800023a8:	00113423          	sd	ra,8(sp)
    800023ac:	00813023          	sd	s0,0(sp)
    800023b0:	01010413          	addi	s0,sp,16
    800023b4:	00800513          	li	a0,8
    800023b8:	00001097          	auipc	ra,0x1
    800023bc:	9d8080e7          	jalr	-1576(ra) # 80002d90 <uartputc_sync>
    800023c0:	02000513          	li	a0,32
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	9cc080e7          	jalr	-1588(ra) # 80002d90 <uartputc_sync>
    800023cc:	00013403          	ld	s0,0(sp)
    800023d0:	00813083          	ld	ra,8(sp)
    800023d4:	00800513          	li	a0,8
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00001317          	auipc	t1,0x1
    800023e0:	9b430067          	jr	-1612(t1) # 80002d90 <uartputc_sync>

00000000800023e4 <consoleintr>:
    800023e4:	fe010113          	addi	sp,sp,-32
    800023e8:	00813823          	sd	s0,16(sp)
    800023ec:	00913423          	sd	s1,8(sp)
    800023f0:	01213023          	sd	s2,0(sp)
    800023f4:	00113c23          	sd	ra,24(sp)
    800023f8:	02010413          	addi	s0,sp,32
    800023fc:	00003917          	auipc	s2,0x3
    80002400:	46c90913          	addi	s2,s2,1132 # 80005868 <cons>
    80002404:	00050493          	mv	s1,a0
    80002408:	00090513          	mv	a0,s2
    8000240c:	00001097          	auipc	ra,0x1
    80002410:	e40080e7          	jalr	-448(ra) # 8000324c <acquire>
    80002414:	02048c63          	beqz	s1,8000244c <consoleintr+0x68>
    80002418:	0a092783          	lw	a5,160(s2)
    8000241c:	09892703          	lw	a4,152(s2)
    80002420:	07f00693          	li	a3,127
    80002424:	40e7873b          	subw	a4,a5,a4
    80002428:	02e6e263          	bltu	a3,a4,8000244c <consoleintr+0x68>
    8000242c:	00d00713          	li	a4,13
    80002430:	04e48063          	beq	s1,a4,80002470 <consoleintr+0x8c>
    80002434:	07f7f713          	andi	a4,a5,127
    80002438:	00e90733          	add	a4,s2,a4
    8000243c:	0017879b          	addiw	a5,a5,1
    80002440:	0af92023          	sw	a5,160(s2)
    80002444:	00970c23          	sb	s1,24(a4)
    80002448:	08f92e23          	sw	a5,156(s2)
    8000244c:	01013403          	ld	s0,16(sp)
    80002450:	01813083          	ld	ra,24(sp)
    80002454:	00813483          	ld	s1,8(sp)
    80002458:	00013903          	ld	s2,0(sp)
    8000245c:	00003517          	auipc	a0,0x3
    80002460:	40c50513          	addi	a0,a0,1036 # 80005868 <cons>
    80002464:	02010113          	addi	sp,sp,32
    80002468:	00001317          	auipc	t1,0x1
    8000246c:	eb030067          	jr	-336(t1) # 80003318 <release>
    80002470:	00a00493          	li	s1,10
    80002474:	fc1ff06f          	j	80002434 <consoleintr+0x50>

0000000080002478 <consoleinit>:
    80002478:	fe010113          	addi	sp,sp,-32
    8000247c:	00113c23          	sd	ra,24(sp)
    80002480:	00813823          	sd	s0,16(sp)
    80002484:	00913423          	sd	s1,8(sp)
    80002488:	02010413          	addi	s0,sp,32
    8000248c:	00003497          	auipc	s1,0x3
    80002490:	3dc48493          	addi	s1,s1,988 # 80005868 <cons>
    80002494:	00048513          	mv	a0,s1
    80002498:	00002597          	auipc	a1,0x2
    8000249c:	cd858593          	addi	a1,a1,-808 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    800024a0:	00001097          	auipc	ra,0x1
    800024a4:	d88080e7          	jalr	-632(ra) # 80003228 <initlock>
    800024a8:	00000097          	auipc	ra,0x0
    800024ac:	7ac080e7          	jalr	1964(ra) # 80002c54 <uartinit>
    800024b0:	01813083          	ld	ra,24(sp)
    800024b4:	01013403          	ld	s0,16(sp)
    800024b8:	00000797          	auipc	a5,0x0
    800024bc:	d9c78793          	addi	a5,a5,-612 # 80002254 <consoleread>
    800024c0:	0af4bc23          	sd	a5,184(s1)
    800024c4:	00000797          	auipc	a5,0x0
    800024c8:	cec78793          	addi	a5,a5,-788 # 800021b0 <consolewrite>
    800024cc:	0cf4b023          	sd	a5,192(s1)
    800024d0:	00813483          	ld	s1,8(sp)
    800024d4:	02010113          	addi	sp,sp,32
    800024d8:	00008067          	ret

00000000800024dc <console_read>:
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    800024e8:	00813403          	ld	s0,8(sp)
    800024ec:	00003317          	auipc	t1,0x3
    800024f0:	43433303          	ld	t1,1076(t1) # 80005920 <devsw+0x10>
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00030067          	jr	t1

00000000800024fc <console_write>:
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00813423          	sd	s0,8(sp)
    80002504:	01010413          	addi	s0,sp,16
    80002508:	00813403          	ld	s0,8(sp)
    8000250c:	00003317          	auipc	t1,0x3
    80002510:	41c33303          	ld	t1,1052(t1) # 80005928 <devsw+0x18>
    80002514:	01010113          	addi	sp,sp,16
    80002518:	00030067          	jr	t1

000000008000251c <panic>:
    8000251c:	fe010113          	addi	sp,sp,-32
    80002520:	00113c23          	sd	ra,24(sp)
    80002524:	00813823          	sd	s0,16(sp)
    80002528:	00913423          	sd	s1,8(sp)
    8000252c:	02010413          	addi	s0,sp,32
    80002530:	00050493          	mv	s1,a0
    80002534:	00002517          	auipc	a0,0x2
    80002538:	c4450513          	addi	a0,a0,-956 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    8000253c:	00003797          	auipc	a5,0x3
    80002540:	4807a623          	sw	zero,1164(a5) # 800059c8 <pr+0x18>
    80002544:	00000097          	auipc	ra,0x0
    80002548:	034080e7          	jalr	52(ra) # 80002578 <__printf>
    8000254c:	00048513          	mv	a0,s1
    80002550:	00000097          	auipc	ra,0x0
    80002554:	028080e7          	jalr	40(ra) # 80002578 <__printf>
    80002558:	00002517          	auipc	a0,0x2
    8000255c:	c0050513          	addi	a0,a0,-1024 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80002560:	00000097          	auipc	ra,0x0
    80002564:	018080e7          	jalr	24(ra) # 80002578 <__printf>
    80002568:	00100793          	li	a5,1
    8000256c:	00002717          	auipc	a4,0x2
    80002570:	1cf72623          	sw	a5,460(a4) # 80004738 <panicked>
    80002574:	0000006f          	j	80002574 <panic+0x58>

0000000080002578 <__printf>:
    80002578:	f3010113          	addi	sp,sp,-208
    8000257c:	08813023          	sd	s0,128(sp)
    80002580:	07313423          	sd	s3,104(sp)
    80002584:	09010413          	addi	s0,sp,144
    80002588:	05813023          	sd	s8,64(sp)
    8000258c:	08113423          	sd	ra,136(sp)
    80002590:	06913c23          	sd	s1,120(sp)
    80002594:	07213823          	sd	s2,112(sp)
    80002598:	07413023          	sd	s4,96(sp)
    8000259c:	05513c23          	sd	s5,88(sp)
    800025a0:	05613823          	sd	s6,80(sp)
    800025a4:	05713423          	sd	s7,72(sp)
    800025a8:	03913c23          	sd	s9,56(sp)
    800025ac:	03a13823          	sd	s10,48(sp)
    800025b0:	03b13423          	sd	s11,40(sp)
    800025b4:	00003317          	auipc	t1,0x3
    800025b8:	3fc30313          	addi	t1,t1,1020 # 800059b0 <pr>
    800025bc:	01832c03          	lw	s8,24(t1)
    800025c0:	00b43423          	sd	a1,8(s0)
    800025c4:	00c43823          	sd	a2,16(s0)
    800025c8:	00d43c23          	sd	a3,24(s0)
    800025cc:	02e43023          	sd	a4,32(s0)
    800025d0:	02f43423          	sd	a5,40(s0)
    800025d4:	03043823          	sd	a6,48(s0)
    800025d8:	03143c23          	sd	a7,56(s0)
    800025dc:	00050993          	mv	s3,a0
    800025e0:	4a0c1663          	bnez	s8,80002a8c <__printf+0x514>
    800025e4:	60098c63          	beqz	s3,80002bfc <__printf+0x684>
    800025e8:	0009c503          	lbu	a0,0(s3)
    800025ec:	00840793          	addi	a5,s0,8
    800025f0:	f6f43c23          	sd	a5,-136(s0)
    800025f4:	00000493          	li	s1,0
    800025f8:	22050063          	beqz	a0,80002818 <__printf+0x2a0>
    800025fc:	00002a37          	lui	s4,0x2
    80002600:	00018ab7          	lui	s5,0x18
    80002604:	000f4b37          	lui	s6,0xf4
    80002608:	00989bb7          	lui	s7,0x989
    8000260c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002610:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002614:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002618:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000261c:	00148c9b          	addiw	s9,s1,1
    80002620:	02500793          	li	a5,37
    80002624:	01998933          	add	s2,s3,s9
    80002628:	38f51263          	bne	a0,a5,800029ac <__printf+0x434>
    8000262c:	00094783          	lbu	a5,0(s2)
    80002630:	00078c9b          	sext.w	s9,a5
    80002634:	1e078263          	beqz	a5,80002818 <__printf+0x2a0>
    80002638:	0024849b          	addiw	s1,s1,2
    8000263c:	07000713          	li	a4,112
    80002640:	00998933          	add	s2,s3,s1
    80002644:	38e78a63          	beq	a5,a4,800029d8 <__printf+0x460>
    80002648:	20f76863          	bltu	a4,a5,80002858 <__printf+0x2e0>
    8000264c:	42a78863          	beq	a5,a0,80002a7c <__printf+0x504>
    80002650:	06400713          	li	a4,100
    80002654:	40e79663          	bne	a5,a4,80002a60 <__printf+0x4e8>
    80002658:	f7843783          	ld	a5,-136(s0)
    8000265c:	0007a603          	lw	a2,0(a5)
    80002660:	00878793          	addi	a5,a5,8
    80002664:	f6f43c23          	sd	a5,-136(s0)
    80002668:	42064a63          	bltz	a2,80002a9c <__printf+0x524>
    8000266c:	00a00713          	li	a4,10
    80002670:	02e677bb          	remuw	a5,a2,a4
    80002674:	00002d97          	auipc	s11,0x2
    80002678:	b2cd8d93          	addi	s11,s11,-1236 # 800041a0 <digits>
    8000267c:	00900593          	li	a1,9
    80002680:	0006051b          	sext.w	a0,a2
    80002684:	00000c93          	li	s9,0
    80002688:	02079793          	slli	a5,a5,0x20
    8000268c:	0207d793          	srli	a5,a5,0x20
    80002690:	00fd87b3          	add	a5,s11,a5
    80002694:	0007c783          	lbu	a5,0(a5)
    80002698:	02e656bb          	divuw	a3,a2,a4
    8000269c:	f8f40023          	sb	a5,-128(s0)
    800026a0:	14c5d863          	bge	a1,a2,800027f0 <__printf+0x278>
    800026a4:	06300593          	li	a1,99
    800026a8:	00100c93          	li	s9,1
    800026ac:	02e6f7bb          	remuw	a5,a3,a4
    800026b0:	02079793          	slli	a5,a5,0x20
    800026b4:	0207d793          	srli	a5,a5,0x20
    800026b8:	00fd87b3          	add	a5,s11,a5
    800026bc:	0007c783          	lbu	a5,0(a5)
    800026c0:	02e6d73b          	divuw	a4,a3,a4
    800026c4:	f8f400a3          	sb	a5,-127(s0)
    800026c8:	12a5f463          	bgeu	a1,a0,800027f0 <__printf+0x278>
    800026cc:	00a00693          	li	a3,10
    800026d0:	00900593          	li	a1,9
    800026d4:	02d777bb          	remuw	a5,a4,a3
    800026d8:	02079793          	slli	a5,a5,0x20
    800026dc:	0207d793          	srli	a5,a5,0x20
    800026e0:	00fd87b3          	add	a5,s11,a5
    800026e4:	0007c503          	lbu	a0,0(a5)
    800026e8:	02d757bb          	divuw	a5,a4,a3
    800026ec:	f8a40123          	sb	a0,-126(s0)
    800026f0:	48e5f263          	bgeu	a1,a4,80002b74 <__printf+0x5fc>
    800026f4:	06300513          	li	a0,99
    800026f8:	02d7f5bb          	remuw	a1,a5,a3
    800026fc:	02059593          	slli	a1,a1,0x20
    80002700:	0205d593          	srli	a1,a1,0x20
    80002704:	00bd85b3          	add	a1,s11,a1
    80002708:	0005c583          	lbu	a1,0(a1)
    8000270c:	02d7d7bb          	divuw	a5,a5,a3
    80002710:	f8b401a3          	sb	a1,-125(s0)
    80002714:	48e57263          	bgeu	a0,a4,80002b98 <__printf+0x620>
    80002718:	3e700513          	li	a0,999
    8000271c:	02d7f5bb          	remuw	a1,a5,a3
    80002720:	02059593          	slli	a1,a1,0x20
    80002724:	0205d593          	srli	a1,a1,0x20
    80002728:	00bd85b3          	add	a1,s11,a1
    8000272c:	0005c583          	lbu	a1,0(a1)
    80002730:	02d7d7bb          	divuw	a5,a5,a3
    80002734:	f8b40223          	sb	a1,-124(s0)
    80002738:	46e57663          	bgeu	a0,a4,80002ba4 <__printf+0x62c>
    8000273c:	02d7f5bb          	remuw	a1,a5,a3
    80002740:	02059593          	slli	a1,a1,0x20
    80002744:	0205d593          	srli	a1,a1,0x20
    80002748:	00bd85b3          	add	a1,s11,a1
    8000274c:	0005c583          	lbu	a1,0(a1)
    80002750:	02d7d7bb          	divuw	a5,a5,a3
    80002754:	f8b402a3          	sb	a1,-123(s0)
    80002758:	46ea7863          	bgeu	s4,a4,80002bc8 <__printf+0x650>
    8000275c:	02d7f5bb          	remuw	a1,a5,a3
    80002760:	02059593          	slli	a1,a1,0x20
    80002764:	0205d593          	srli	a1,a1,0x20
    80002768:	00bd85b3          	add	a1,s11,a1
    8000276c:	0005c583          	lbu	a1,0(a1)
    80002770:	02d7d7bb          	divuw	a5,a5,a3
    80002774:	f8b40323          	sb	a1,-122(s0)
    80002778:	3eeaf863          	bgeu	s5,a4,80002b68 <__printf+0x5f0>
    8000277c:	02d7f5bb          	remuw	a1,a5,a3
    80002780:	02059593          	slli	a1,a1,0x20
    80002784:	0205d593          	srli	a1,a1,0x20
    80002788:	00bd85b3          	add	a1,s11,a1
    8000278c:	0005c583          	lbu	a1,0(a1)
    80002790:	02d7d7bb          	divuw	a5,a5,a3
    80002794:	f8b403a3          	sb	a1,-121(s0)
    80002798:	42eb7e63          	bgeu	s6,a4,80002bd4 <__printf+0x65c>
    8000279c:	02d7f5bb          	remuw	a1,a5,a3
    800027a0:	02059593          	slli	a1,a1,0x20
    800027a4:	0205d593          	srli	a1,a1,0x20
    800027a8:	00bd85b3          	add	a1,s11,a1
    800027ac:	0005c583          	lbu	a1,0(a1)
    800027b0:	02d7d7bb          	divuw	a5,a5,a3
    800027b4:	f8b40423          	sb	a1,-120(s0)
    800027b8:	42ebfc63          	bgeu	s7,a4,80002bf0 <__printf+0x678>
    800027bc:	02079793          	slli	a5,a5,0x20
    800027c0:	0207d793          	srli	a5,a5,0x20
    800027c4:	00fd8db3          	add	s11,s11,a5
    800027c8:	000dc703          	lbu	a4,0(s11)
    800027cc:	00a00793          	li	a5,10
    800027d0:	00900c93          	li	s9,9
    800027d4:	f8e404a3          	sb	a4,-119(s0)
    800027d8:	00065c63          	bgez	a2,800027f0 <__printf+0x278>
    800027dc:	f9040713          	addi	a4,s0,-112
    800027e0:	00f70733          	add	a4,a4,a5
    800027e4:	02d00693          	li	a3,45
    800027e8:	fed70823          	sb	a3,-16(a4)
    800027ec:	00078c93          	mv	s9,a5
    800027f0:	f8040793          	addi	a5,s0,-128
    800027f4:	01978cb3          	add	s9,a5,s9
    800027f8:	f7f40d13          	addi	s10,s0,-129
    800027fc:	000cc503          	lbu	a0,0(s9)
    80002800:	fffc8c93          	addi	s9,s9,-1
    80002804:	00000097          	auipc	ra,0x0
    80002808:	b90080e7          	jalr	-1136(ra) # 80002394 <consputc>
    8000280c:	ffac98e3          	bne	s9,s10,800027fc <__printf+0x284>
    80002810:	00094503          	lbu	a0,0(s2)
    80002814:	e00514e3          	bnez	a0,8000261c <__printf+0xa4>
    80002818:	1a0c1663          	bnez	s8,800029c4 <__printf+0x44c>
    8000281c:	08813083          	ld	ra,136(sp)
    80002820:	08013403          	ld	s0,128(sp)
    80002824:	07813483          	ld	s1,120(sp)
    80002828:	07013903          	ld	s2,112(sp)
    8000282c:	06813983          	ld	s3,104(sp)
    80002830:	06013a03          	ld	s4,96(sp)
    80002834:	05813a83          	ld	s5,88(sp)
    80002838:	05013b03          	ld	s6,80(sp)
    8000283c:	04813b83          	ld	s7,72(sp)
    80002840:	04013c03          	ld	s8,64(sp)
    80002844:	03813c83          	ld	s9,56(sp)
    80002848:	03013d03          	ld	s10,48(sp)
    8000284c:	02813d83          	ld	s11,40(sp)
    80002850:	0d010113          	addi	sp,sp,208
    80002854:	00008067          	ret
    80002858:	07300713          	li	a4,115
    8000285c:	1ce78a63          	beq	a5,a4,80002a30 <__printf+0x4b8>
    80002860:	07800713          	li	a4,120
    80002864:	1ee79e63          	bne	a5,a4,80002a60 <__printf+0x4e8>
    80002868:	f7843783          	ld	a5,-136(s0)
    8000286c:	0007a703          	lw	a4,0(a5)
    80002870:	00878793          	addi	a5,a5,8
    80002874:	f6f43c23          	sd	a5,-136(s0)
    80002878:	28074263          	bltz	a4,80002afc <__printf+0x584>
    8000287c:	00002d97          	auipc	s11,0x2
    80002880:	924d8d93          	addi	s11,s11,-1756 # 800041a0 <digits>
    80002884:	00f77793          	andi	a5,a4,15
    80002888:	00fd87b3          	add	a5,s11,a5
    8000288c:	0007c683          	lbu	a3,0(a5)
    80002890:	00f00613          	li	a2,15
    80002894:	0007079b          	sext.w	a5,a4
    80002898:	f8d40023          	sb	a3,-128(s0)
    8000289c:	0047559b          	srliw	a1,a4,0x4
    800028a0:	0047569b          	srliw	a3,a4,0x4
    800028a4:	00000c93          	li	s9,0
    800028a8:	0ee65063          	bge	a2,a4,80002988 <__printf+0x410>
    800028ac:	00f6f693          	andi	a3,a3,15
    800028b0:	00dd86b3          	add	a3,s11,a3
    800028b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800028b8:	0087d79b          	srliw	a5,a5,0x8
    800028bc:	00100c93          	li	s9,1
    800028c0:	f8d400a3          	sb	a3,-127(s0)
    800028c4:	0cb67263          	bgeu	a2,a1,80002988 <__printf+0x410>
    800028c8:	00f7f693          	andi	a3,a5,15
    800028cc:	00dd86b3          	add	a3,s11,a3
    800028d0:	0006c583          	lbu	a1,0(a3)
    800028d4:	00f00613          	li	a2,15
    800028d8:	0047d69b          	srliw	a3,a5,0x4
    800028dc:	f8b40123          	sb	a1,-126(s0)
    800028e0:	0047d593          	srli	a1,a5,0x4
    800028e4:	28f67e63          	bgeu	a2,a5,80002b80 <__printf+0x608>
    800028e8:	00f6f693          	andi	a3,a3,15
    800028ec:	00dd86b3          	add	a3,s11,a3
    800028f0:	0006c503          	lbu	a0,0(a3)
    800028f4:	0087d813          	srli	a6,a5,0x8
    800028f8:	0087d69b          	srliw	a3,a5,0x8
    800028fc:	f8a401a3          	sb	a0,-125(s0)
    80002900:	28b67663          	bgeu	a2,a1,80002b8c <__printf+0x614>
    80002904:	00f6f693          	andi	a3,a3,15
    80002908:	00dd86b3          	add	a3,s11,a3
    8000290c:	0006c583          	lbu	a1,0(a3)
    80002910:	00c7d513          	srli	a0,a5,0xc
    80002914:	00c7d69b          	srliw	a3,a5,0xc
    80002918:	f8b40223          	sb	a1,-124(s0)
    8000291c:	29067a63          	bgeu	a2,a6,80002bb0 <__printf+0x638>
    80002920:	00f6f693          	andi	a3,a3,15
    80002924:	00dd86b3          	add	a3,s11,a3
    80002928:	0006c583          	lbu	a1,0(a3)
    8000292c:	0107d813          	srli	a6,a5,0x10
    80002930:	0107d69b          	srliw	a3,a5,0x10
    80002934:	f8b402a3          	sb	a1,-123(s0)
    80002938:	28a67263          	bgeu	a2,a0,80002bbc <__printf+0x644>
    8000293c:	00f6f693          	andi	a3,a3,15
    80002940:	00dd86b3          	add	a3,s11,a3
    80002944:	0006c683          	lbu	a3,0(a3)
    80002948:	0147d79b          	srliw	a5,a5,0x14
    8000294c:	f8d40323          	sb	a3,-122(s0)
    80002950:	21067663          	bgeu	a2,a6,80002b5c <__printf+0x5e4>
    80002954:	02079793          	slli	a5,a5,0x20
    80002958:	0207d793          	srli	a5,a5,0x20
    8000295c:	00fd8db3          	add	s11,s11,a5
    80002960:	000dc683          	lbu	a3,0(s11)
    80002964:	00800793          	li	a5,8
    80002968:	00700c93          	li	s9,7
    8000296c:	f8d403a3          	sb	a3,-121(s0)
    80002970:	00075c63          	bgez	a4,80002988 <__printf+0x410>
    80002974:	f9040713          	addi	a4,s0,-112
    80002978:	00f70733          	add	a4,a4,a5
    8000297c:	02d00693          	li	a3,45
    80002980:	fed70823          	sb	a3,-16(a4)
    80002984:	00078c93          	mv	s9,a5
    80002988:	f8040793          	addi	a5,s0,-128
    8000298c:	01978cb3          	add	s9,a5,s9
    80002990:	f7f40d13          	addi	s10,s0,-129
    80002994:	000cc503          	lbu	a0,0(s9)
    80002998:	fffc8c93          	addi	s9,s9,-1
    8000299c:	00000097          	auipc	ra,0x0
    800029a0:	9f8080e7          	jalr	-1544(ra) # 80002394 <consputc>
    800029a4:	ff9d18e3          	bne	s10,s9,80002994 <__printf+0x41c>
    800029a8:	0100006f          	j	800029b8 <__printf+0x440>
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	9e8080e7          	jalr	-1560(ra) # 80002394 <consputc>
    800029b4:	000c8493          	mv	s1,s9
    800029b8:	00094503          	lbu	a0,0(s2)
    800029bc:	c60510e3          	bnez	a0,8000261c <__printf+0xa4>
    800029c0:	e40c0ee3          	beqz	s8,8000281c <__printf+0x2a4>
    800029c4:	00003517          	auipc	a0,0x3
    800029c8:	fec50513          	addi	a0,a0,-20 # 800059b0 <pr>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	94c080e7          	jalr	-1716(ra) # 80003318 <release>
    800029d4:	e49ff06f          	j	8000281c <__printf+0x2a4>
    800029d8:	f7843783          	ld	a5,-136(s0)
    800029dc:	03000513          	li	a0,48
    800029e0:	01000d13          	li	s10,16
    800029e4:	00878713          	addi	a4,a5,8
    800029e8:	0007bc83          	ld	s9,0(a5)
    800029ec:	f6e43c23          	sd	a4,-136(s0)
    800029f0:	00000097          	auipc	ra,0x0
    800029f4:	9a4080e7          	jalr	-1628(ra) # 80002394 <consputc>
    800029f8:	07800513          	li	a0,120
    800029fc:	00000097          	auipc	ra,0x0
    80002a00:	998080e7          	jalr	-1640(ra) # 80002394 <consputc>
    80002a04:	00001d97          	auipc	s11,0x1
    80002a08:	79cd8d93          	addi	s11,s11,1948 # 800041a0 <digits>
    80002a0c:	03ccd793          	srli	a5,s9,0x3c
    80002a10:	00fd87b3          	add	a5,s11,a5
    80002a14:	0007c503          	lbu	a0,0(a5)
    80002a18:	fffd0d1b          	addiw	s10,s10,-1
    80002a1c:	004c9c93          	slli	s9,s9,0x4
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	974080e7          	jalr	-1676(ra) # 80002394 <consputc>
    80002a28:	fe0d12e3          	bnez	s10,80002a0c <__printf+0x494>
    80002a2c:	f8dff06f          	j	800029b8 <__printf+0x440>
    80002a30:	f7843783          	ld	a5,-136(s0)
    80002a34:	0007bc83          	ld	s9,0(a5)
    80002a38:	00878793          	addi	a5,a5,8
    80002a3c:	f6f43c23          	sd	a5,-136(s0)
    80002a40:	000c9a63          	bnez	s9,80002a54 <__printf+0x4dc>
    80002a44:	1080006f          	j	80002b4c <__printf+0x5d4>
    80002a48:	001c8c93          	addi	s9,s9,1
    80002a4c:	00000097          	auipc	ra,0x0
    80002a50:	948080e7          	jalr	-1720(ra) # 80002394 <consputc>
    80002a54:	000cc503          	lbu	a0,0(s9)
    80002a58:	fe0518e3          	bnez	a0,80002a48 <__printf+0x4d0>
    80002a5c:	f5dff06f          	j	800029b8 <__printf+0x440>
    80002a60:	02500513          	li	a0,37
    80002a64:	00000097          	auipc	ra,0x0
    80002a68:	930080e7          	jalr	-1744(ra) # 80002394 <consputc>
    80002a6c:	000c8513          	mv	a0,s9
    80002a70:	00000097          	auipc	ra,0x0
    80002a74:	924080e7          	jalr	-1756(ra) # 80002394 <consputc>
    80002a78:	f41ff06f          	j	800029b8 <__printf+0x440>
    80002a7c:	02500513          	li	a0,37
    80002a80:	00000097          	auipc	ra,0x0
    80002a84:	914080e7          	jalr	-1772(ra) # 80002394 <consputc>
    80002a88:	f31ff06f          	j	800029b8 <__printf+0x440>
    80002a8c:	00030513          	mv	a0,t1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	7bc080e7          	jalr	1980(ra) # 8000324c <acquire>
    80002a98:	b4dff06f          	j	800025e4 <__printf+0x6c>
    80002a9c:	40c0053b          	negw	a0,a2
    80002aa0:	00a00713          	li	a4,10
    80002aa4:	02e576bb          	remuw	a3,a0,a4
    80002aa8:	00001d97          	auipc	s11,0x1
    80002aac:	6f8d8d93          	addi	s11,s11,1784 # 800041a0 <digits>
    80002ab0:	ff700593          	li	a1,-9
    80002ab4:	02069693          	slli	a3,a3,0x20
    80002ab8:	0206d693          	srli	a3,a3,0x20
    80002abc:	00dd86b3          	add	a3,s11,a3
    80002ac0:	0006c683          	lbu	a3,0(a3)
    80002ac4:	02e557bb          	divuw	a5,a0,a4
    80002ac8:	f8d40023          	sb	a3,-128(s0)
    80002acc:	10b65e63          	bge	a2,a1,80002be8 <__printf+0x670>
    80002ad0:	06300593          	li	a1,99
    80002ad4:	02e7f6bb          	remuw	a3,a5,a4
    80002ad8:	02069693          	slli	a3,a3,0x20
    80002adc:	0206d693          	srli	a3,a3,0x20
    80002ae0:	00dd86b3          	add	a3,s11,a3
    80002ae4:	0006c683          	lbu	a3,0(a3)
    80002ae8:	02e7d73b          	divuw	a4,a5,a4
    80002aec:	00200793          	li	a5,2
    80002af0:	f8d400a3          	sb	a3,-127(s0)
    80002af4:	bca5ece3          	bltu	a1,a0,800026cc <__printf+0x154>
    80002af8:	ce5ff06f          	j	800027dc <__printf+0x264>
    80002afc:	40e007bb          	negw	a5,a4
    80002b00:	00001d97          	auipc	s11,0x1
    80002b04:	6a0d8d93          	addi	s11,s11,1696 # 800041a0 <digits>
    80002b08:	00f7f693          	andi	a3,a5,15
    80002b0c:	00dd86b3          	add	a3,s11,a3
    80002b10:	0006c583          	lbu	a1,0(a3)
    80002b14:	ff100613          	li	a2,-15
    80002b18:	0047d69b          	srliw	a3,a5,0x4
    80002b1c:	f8b40023          	sb	a1,-128(s0)
    80002b20:	0047d59b          	srliw	a1,a5,0x4
    80002b24:	0ac75e63          	bge	a4,a2,80002be0 <__printf+0x668>
    80002b28:	00f6f693          	andi	a3,a3,15
    80002b2c:	00dd86b3          	add	a3,s11,a3
    80002b30:	0006c603          	lbu	a2,0(a3)
    80002b34:	00f00693          	li	a3,15
    80002b38:	0087d79b          	srliw	a5,a5,0x8
    80002b3c:	f8c400a3          	sb	a2,-127(s0)
    80002b40:	d8b6e4e3          	bltu	a3,a1,800028c8 <__printf+0x350>
    80002b44:	00200793          	li	a5,2
    80002b48:	e2dff06f          	j	80002974 <__printf+0x3fc>
    80002b4c:	00001c97          	auipc	s9,0x1
    80002b50:	634c8c93          	addi	s9,s9,1588 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002b54:	02800513          	li	a0,40
    80002b58:	ef1ff06f          	j	80002a48 <__printf+0x4d0>
    80002b5c:	00700793          	li	a5,7
    80002b60:	00600c93          	li	s9,6
    80002b64:	e0dff06f          	j	80002970 <__printf+0x3f8>
    80002b68:	00700793          	li	a5,7
    80002b6c:	00600c93          	li	s9,6
    80002b70:	c69ff06f          	j	800027d8 <__printf+0x260>
    80002b74:	00300793          	li	a5,3
    80002b78:	00200c93          	li	s9,2
    80002b7c:	c5dff06f          	j	800027d8 <__printf+0x260>
    80002b80:	00300793          	li	a5,3
    80002b84:	00200c93          	li	s9,2
    80002b88:	de9ff06f          	j	80002970 <__printf+0x3f8>
    80002b8c:	00400793          	li	a5,4
    80002b90:	00300c93          	li	s9,3
    80002b94:	dddff06f          	j	80002970 <__printf+0x3f8>
    80002b98:	00400793          	li	a5,4
    80002b9c:	00300c93          	li	s9,3
    80002ba0:	c39ff06f          	j	800027d8 <__printf+0x260>
    80002ba4:	00500793          	li	a5,5
    80002ba8:	00400c93          	li	s9,4
    80002bac:	c2dff06f          	j	800027d8 <__printf+0x260>
    80002bb0:	00500793          	li	a5,5
    80002bb4:	00400c93          	li	s9,4
    80002bb8:	db9ff06f          	j	80002970 <__printf+0x3f8>
    80002bbc:	00600793          	li	a5,6
    80002bc0:	00500c93          	li	s9,5
    80002bc4:	dadff06f          	j	80002970 <__printf+0x3f8>
    80002bc8:	00600793          	li	a5,6
    80002bcc:	00500c93          	li	s9,5
    80002bd0:	c09ff06f          	j	800027d8 <__printf+0x260>
    80002bd4:	00800793          	li	a5,8
    80002bd8:	00700c93          	li	s9,7
    80002bdc:	bfdff06f          	j	800027d8 <__printf+0x260>
    80002be0:	00100793          	li	a5,1
    80002be4:	d91ff06f          	j	80002974 <__printf+0x3fc>
    80002be8:	00100793          	li	a5,1
    80002bec:	bf1ff06f          	j	800027dc <__printf+0x264>
    80002bf0:	00900793          	li	a5,9
    80002bf4:	00800c93          	li	s9,8
    80002bf8:	be1ff06f          	j	800027d8 <__printf+0x260>
    80002bfc:	00001517          	auipc	a0,0x1
    80002c00:	58c50513          	addi	a0,a0,1420 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	918080e7          	jalr	-1768(ra) # 8000251c <panic>

0000000080002c0c <printfinit>:
    80002c0c:	fe010113          	addi	sp,sp,-32
    80002c10:	00813823          	sd	s0,16(sp)
    80002c14:	00913423          	sd	s1,8(sp)
    80002c18:	00113c23          	sd	ra,24(sp)
    80002c1c:	02010413          	addi	s0,sp,32
    80002c20:	00003497          	auipc	s1,0x3
    80002c24:	d9048493          	addi	s1,s1,-624 # 800059b0 <pr>
    80002c28:	00048513          	mv	a0,s1
    80002c2c:	00001597          	auipc	a1,0x1
    80002c30:	56c58593          	addi	a1,a1,1388 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	5f4080e7          	jalr	1524(ra) # 80003228 <initlock>
    80002c3c:	01813083          	ld	ra,24(sp)
    80002c40:	01013403          	ld	s0,16(sp)
    80002c44:	0004ac23          	sw	zero,24(s1)
    80002c48:	00813483          	ld	s1,8(sp)
    80002c4c:	02010113          	addi	sp,sp,32
    80002c50:	00008067          	ret

0000000080002c54 <uartinit>:
    80002c54:	ff010113          	addi	sp,sp,-16
    80002c58:	00813423          	sd	s0,8(sp)
    80002c5c:	01010413          	addi	s0,sp,16
    80002c60:	100007b7          	lui	a5,0x10000
    80002c64:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002c68:	f8000713          	li	a4,-128
    80002c6c:	00e781a3          	sb	a4,3(a5)
    80002c70:	00300713          	li	a4,3
    80002c74:	00e78023          	sb	a4,0(a5)
    80002c78:	000780a3          	sb	zero,1(a5)
    80002c7c:	00e781a3          	sb	a4,3(a5)
    80002c80:	00700693          	li	a3,7
    80002c84:	00d78123          	sb	a3,2(a5)
    80002c88:	00e780a3          	sb	a4,1(a5)
    80002c8c:	00813403          	ld	s0,8(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	00008067          	ret

0000000080002c98 <uartputc>:
    80002c98:	00002797          	auipc	a5,0x2
    80002c9c:	aa07a783          	lw	a5,-1376(a5) # 80004738 <panicked>
    80002ca0:	00078463          	beqz	a5,80002ca8 <uartputc+0x10>
    80002ca4:	0000006f          	j	80002ca4 <uartputc+0xc>
    80002ca8:	fd010113          	addi	sp,sp,-48
    80002cac:	02813023          	sd	s0,32(sp)
    80002cb0:	00913c23          	sd	s1,24(sp)
    80002cb4:	01213823          	sd	s2,16(sp)
    80002cb8:	01313423          	sd	s3,8(sp)
    80002cbc:	02113423          	sd	ra,40(sp)
    80002cc0:	03010413          	addi	s0,sp,48
    80002cc4:	00002917          	auipc	s2,0x2
    80002cc8:	a7c90913          	addi	s2,s2,-1412 # 80004740 <uart_tx_r>
    80002ccc:	00093783          	ld	a5,0(s2)
    80002cd0:	00002497          	auipc	s1,0x2
    80002cd4:	a7848493          	addi	s1,s1,-1416 # 80004748 <uart_tx_w>
    80002cd8:	0004b703          	ld	a4,0(s1)
    80002cdc:	02078693          	addi	a3,a5,32
    80002ce0:	00050993          	mv	s3,a0
    80002ce4:	02e69c63          	bne	a3,a4,80002d1c <uartputc+0x84>
    80002ce8:	00001097          	auipc	ra,0x1
    80002cec:	834080e7          	jalr	-1996(ra) # 8000351c <push_on>
    80002cf0:	00093783          	ld	a5,0(s2)
    80002cf4:	0004b703          	ld	a4,0(s1)
    80002cf8:	02078793          	addi	a5,a5,32
    80002cfc:	00e79463          	bne	a5,a4,80002d04 <uartputc+0x6c>
    80002d00:	0000006f          	j	80002d00 <uartputc+0x68>
    80002d04:	00001097          	auipc	ra,0x1
    80002d08:	88c080e7          	jalr	-1908(ra) # 80003590 <pop_on>
    80002d0c:	00093783          	ld	a5,0(s2)
    80002d10:	0004b703          	ld	a4,0(s1)
    80002d14:	02078693          	addi	a3,a5,32
    80002d18:	fce688e3          	beq	a3,a4,80002ce8 <uartputc+0x50>
    80002d1c:	01f77693          	andi	a3,a4,31
    80002d20:	00003597          	auipc	a1,0x3
    80002d24:	cb058593          	addi	a1,a1,-848 # 800059d0 <uart_tx_buf>
    80002d28:	00d586b3          	add	a3,a1,a3
    80002d2c:	00170713          	addi	a4,a4,1
    80002d30:	01368023          	sb	s3,0(a3)
    80002d34:	00e4b023          	sd	a4,0(s1)
    80002d38:	10000637          	lui	a2,0x10000
    80002d3c:	02f71063          	bne	a4,a5,80002d5c <uartputc+0xc4>
    80002d40:	0340006f          	j	80002d74 <uartputc+0xdc>
    80002d44:	00074703          	lbu	a4,0(a4)
    80002d48:	00f93023          	sd	a5,0(s2)
    80002d4c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002d50:	00093783          	ld	a5,0(s2)
    80002d54:	0004b703          	ld	a4,0(s1)
    80002d58:	00f70e63          	beq	a4,a5,80002d74 <uartputc+0xdc>
    80002d5c:	00564683          	lbu	a3,5(a2)
    80002d60:	01f7f713          	andi	a4,a5,31
    80002d64:	00e58733          	add	a4,a1,a4
    80002d68:	0206f693          	andi	a3,a3,32
    80002d6c:	00178793          	addi	a5,a5,1
    80002d70:	fc069ae3          	bnez	a3,80002d44 <uartputc+0xac>
    80002d74:	02813083          	ld	ra,40(sp)
    80002d78:	02013403          	ld	s0,32(sp)
    80002d7c:	01813483          	ld	s1,24(sp)
    80002d80:	01013903          	ld	s2,16(sp)
    80002d84:	00813983          	ld	s3,8(sp)
    80002d88:	03010113          	addi	sp,sp,48
    80002d8c:	00008067          	ret

0000000080002d90 <uartputc_sync>:
    80002d90:	ff010113          	addi	sp,sp,-16
    80002d94:	00813423          	sd	s0,8(sp)
    80002d98:	01010413          	addi	s0,sp,16
    80002d9c:	00002717          	auipc	a4,0x2
    80002da0:	99c72703          	lw	a4,-1636(a4) # 80004738 <panicked>
    80002da4:	02071663          	bnez	a4,80002dd0 <uartputc_sync+0x40>
    80002da8:	00050793          	mv	a5,a0
    80002dac:	100006b7          	lui	a3,0x10000
    80002db0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002db4:	02077713          	andi	a4,a4,32
    80002db8:	fe070ce3          	beqz	a4,80002db0 <uartputc_sync+0x20>
    80002dbc:	0ff7f793          	andi	a5,a5,255
    80002dc0:	00f68023          	sb	a5,0(a3)
    80002dc4:	00813403          	ld	s0,8(sp)
    80002dc8:	01010113          	addi	sp,sp,16
    80002dcc:	00008067          	ret
    80002dd0:	0000006f          	j	80002dd0 <uartputc_sync+0x40>

0000000080002dd4 <uartstart>:
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00813423          	sd	s0,8(sp)
    80002ddc:	01010413          	addi	s0,sp,16
    80002de0:	00002617          	auipc	a2,0x2
    80002de4:	96060613          	addi	a2,a2,-1696 # 80004740 <uart_tx_r>
    80002de8:	00002517          	auipc	a0,0x2
    80002dec:	96050513          	addi	a0,a0,-1696 # 80004748 <uart_tx_w>
    80002df0:	00063783          	ld	a5,0(a2)
    80002df4:	00053703          	ld	a4,0(a0)
    80002df8:	04f70263          	beq	a4,a5,80002e3c <uartstart+0x68>
    80002dfc:	100005b7          	lui	a1,0x10000
    80002e00:	00003817          	auipc	a6,0x3
    80002e04:	bd080813          	addi	a6,a6,-1072 # 800059d0 <uart_tx_buf>
    80002e08:	01c0006f          	j	80002e24 <uartstart+0x50>
    80002e0c:	0006c703          	lbu	a4,0(a3)
    80002e10:	00f63023          	sd	a5,0(a2)
    80002e14:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e18:	00063783          	ld	a5,0(a2)
    80002e1c:	00053703          	ld	a4,0(a0)
    80002e20:	00f70e63          	beq	a4,a5,80002e3c <uartstart+0x68>
    80002e24:	01f7f713          	andi	a4,a5,31
    80002e28:	00e806b3          	add	a3,a6,a4
    80002e2c:	0055c703          	lbu	a4,5(a1)
    80002e30:	00178793          	addi	a5,a5,1
    80002e34:	02077713          	andi	a4,a4,32
    80002e38:	fc071ae3          	bnez	a4,80002e0c <uartstart+0x38>
    80002e3c:	00813403          	ld	s0,8(sp)
    80002e40:	01010113          	addi	sp,sp,16
    80002e44:	00008067          	ret

0000000080002e48 <uartgetc>:
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    80002e54:	10000737          	lui	a4,0x10000
    80002e58:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002e5c:	0017f793          	andi	a5,a5,1
    80002e60:	00078c63          	beqz	a5,80002e78 <uartgetc+0x30>
    80002e64:	00074503          	lbu	a0,0(a4)
    80002e68:	0ff57513          	andi	a0,a0,255
    80002e6c:	00813403          	ld	s0,8(sp)
    80002e70:	01010113          	addi	sp,sp,16
    80002e74:	00008067          	ret
    80002e78:	fff00513          	li	a0,-1
    80002e7c:	ff1ff06f          	j	80002e6c <uartgetc+0x24>

0000000080002e80 <uartintr>:
    80002e80:	100007b7          	lui	a5,0x10000
    80002e84:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002e88:	0017f793          	andi	a5,a5,1
    80002e8c:	0a078463          	beqz	a5,80002f34 <uartintr+0xb4>
    80002e90:	fe010113          	addi	sp,sp,-32
    80002e94:	00813823          	sd	s0,16(sp)
    80002e98:	00913423          	sd	s1,8(sp)
    80002e9c:	00113c23          	sd	ra,24(sp)
    80002ea0:	02010413          	addi	s0,sp,32
    80002ea4:	100004b7          	lui	s1,0x10000
    80002ea8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002eac:	0ff57513          	andi	a0,a0,255
    80002eb0:	fffff097          	auipc	ra,0xfffff
    80002eb4:	534080e7          	jalr	1332(ra) # 800023e4 <consoleintr>
    80002eb8:	0054c783          	lbu	a5,5(s1)
    80002ebc:	0017f793          	andi	a5,a5,1
    80002ec0:	fe0794e3          	bnez	a5,80002ea8 <uartintr+0x28>
    80002ec4:	00002617          	auipc	a2,0x2
    80002ec8:	87c60613          	addi	a2,a2,-1924 # 80004740 <uart_tx_r>
    80002ecc:	00002517          	auipc	a0,0x2
    80002ed0:	87c50513          	addi	a0,a0,-1924 # 80004748 <uart_tx_w>
    80002ed4:	00063783          	ld	a5,0(a2)
    80002ed8:	00053703          	ld	a4,0(a0)
    80002edc:	04f70263          	beq	a4,a5,80002f20 <uartintr+0xa0>
    80002ee0:	100005b7          	lui	a1,0x10000
    80002ee4:	00003817          	auipc	a6,0x3
    80002ee8:	aec80813          	addi	a6,a6,-1300 # 800059d0 <uart_tx_buf>
    80002eec:	01c0006f          	j	80002f08 <uartintr+0x88>
    80002ef0:	0006c703          	lbu	a4,0(a3)
    80002ef4:	00f63023          	sd	a5,0(a2)
    80002ef8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002efc:	00063783          	ld	a5,0(a2)
    80002f00:	00053703          	ld	a4,0(a0)
    80002f04:	00f70e63          	beq	a4,a5,80002f20 <uartintr+0xa0>
    80002f08:	01f7f713          	andi	a4,a5,31
    80002f0c:	00e806b3          	add	a3,a6,a4
    80002f10:	0055c703          	lbu	a4,5(a1)
    80002f14:	00178793          	addi	a5,a5,1
    80002f18:	02077713          	andi	a4,a4,32
    80002f1c:	fc071ae3          	bnez	a4,80002ef0 <uartintr+0x70>
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret
    80002f34:	00002617          	auipc	a2,0x2
    80002f38:	80c60613          	addi	a2,a2,-2036 # 80004740 <uart_tx_r>
    80002f3c:	00002517          	auipc	a0,0x2
    80002f40:	80c50513          	addi	a0,a0,-2036 # 80004748 <uart_tx_w>
    80002f44:	00063783          	ld	a5,0(a2)
    80002f48:	00053703          	ld	a4,0(a0)
    80002f4c:	04f70263          	beq	a4,a5,80002f90 <uartintr+0x110>
    80002f50:	100005b7          	lui	a1,0x10000
    80002f54:	00003817          	auipc	a6,0x3
    80002f58:	a7c80813          	addi	a6,a6,-1412 # 800059d0 <uart_tx_buf>
    80002f5c:	01c0006f          	j	80002f78 <uartintr+0xf8>
    80002f60:	0006c703          	lbu	a4,0(a3)
    80002f64:	00f63023          	sd	a5,0(a2)
    80002f68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f6c:	00063783          	ld	a5,0(a2)
    80002f70:	00053703          	ld	a4,0(a0)
    80002f74:	02f70063          	beq	a4,a5,80002f94 <uartintr+0x114>
    80002f78:	01f7f713          	andi	a4,a5,31
    80002f7c:	00e806b3          	add	a3,a6,a4
    80002f80:	0055c703          	lbu	a4,5(a1)
    80002f84:	00178793          	addi	a5,a5,1
    80002f88:	02077713          	andi	a4,a4,32
    80002f8c:	fc071ae3          	bnez	a4,80002f60 <uartintr+0xe0>
    80002f90:	00008067          	ret
    80002f94:	00008067          	ret

0000000080002f98 <kinit>:
    80002f98:	fc010113          	addi	sp,sp,-64
    80002f9c:	02913423          	sd	s1,40(sp)
    80002fa0:	fffff7b7          	lui	a5,0xfffff
    80002fa4:	00004497          	auipc	s1,0x4
    80002fa8:	a5b48493          	addi	s1,s1,-1445 # 800069ff <end+0xfff>
    80002fac:	02813823          	sd	s0,48(sp)
    80002fb0:	01313c23          	sd	s3,24(sp)
    80002fb4:	00f4f4b3          	and	s1,s1,a5
    80002fb8:	02113c23          	sd	ra,56(sp)
    80002fbc:	03213023          	sd	s2,32(sp)
    80002fc0:	01413823          	sd	s4,16(sp)
    80002fc4:	01513423          	sd	s5,8(sp)
    80002fc8:	04010413          	addi	s0,sp,64
    80002fcc:	000017b7          	lui	a5,0x1
    80002fd0:	01100993          	li	s3,17
    80002fd4:	00f487b3          	add	a5,s1,a5
    80002fd8:	01b99993          	slli	s3,s3,0x1b
    80002fdc:	06f9e063          	bltu	s3,a5,8000303c <kinit+0xa4>
    80002fe0:	00003a97          	auipc	s5,0x3
    80002fe4:	a20a8a93          	addi	s5,s5,-1504 # 80005a00 <end>
    80002fe8:	0754ec63          	bltu	s1,s5,80003060 <kinit+0xc8>
    80002fec:	0734fa63          	bgeu	s1,s3,80003060 <kinit+0xc8>
    80002ff0:	00088a37          	lui	s4,0x88
    80002ff4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002ff8:	00001917          	auipc	s2,0x1
    80002ffc:	75890913          	addi	s2,s2,1880 # 80004750 <kmem>
    80003000:	00ca1a13          	slli	s4,s4,0xc
    80003004:	0140006f          	j	80003018 <kinit+0x80>
    80003008:	000017b7          	lui	a5,0x1
    8000300c:	00f484b3          	add	s1,s1,a5
    80003010:	0554e863          	bltu	s1,s5,80003060 <kinit+0xc8>
    80003014:	0534f663          	bgeu	s1,s3,80003060 <kinit+0xc8>
    80003018:	00001637          	lui	a2,0x1
    8000301c:	00100593          	li	a1,1
    80003020:	00048513          	mv	a0,s1
    80003024:	00000097          	auipc	ra,0x0
    80003028:	5e4080e7          	jalr	1508(ra) # 80003608 <__memset>
    8000302c:	00093783          	ld	a5,0(s2)
    80003030:	00f4b023          	sd	a5,0(s1)
    80003034:	00993023          	sd	s1,0(s2)
    80003038:	fd4498e3          	bne	s1,s4,80003008 <kinit+0x70>
    8000303c:	03813083          	ld	ra,56(sp)
    80003040:	03013403          	ld	s0,48(sp)
    80003044:	02813483          	ld	s1,40(sp)
    80003048:	02013903          	ld	s2,32(sp)
    8000304c:	01813983          	ld	s3,24(sp)
    80003050:	01013a03          	ld	s4,16(sp)
    80003054:	00813a83          	ld	s5,8(sp)
    80003058:	04010113          	addi	sp,sp,64
    8000305c:	00008067          	ret
    80003060:	00001517          	auipc	a0,0x1
    80003064:	15850513          	addi	a0,a0,344 # 800041b8 <digits+0x18>
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	4b4080e7          	jalr	1204(ra) # 8000251c <panic>

0000000080003070 <freerange>:
    80003070:	fc010113          	addi	sp,sp,-64
    80003074:	000017b7          	lui	a5,0x1
    80003078:	02913423          	sd	s1,40(sp)
    8000307c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003080:	009504b3          	add	s1,a0,s1
    80003084:	fffff537          	lui	a0,0xfffff
    80003088:	02813823          	sd	s0,48(sp)
    8000308c:	02113c23          	sd	ra,56(sp)
    80003090:	03213023          	sd	s2,32(sp)
    80003094:	01313c23          	sd	s3,24(sp)
    80003098:	01413823          	sd	s4,16(sp)
    8000309c:	01513423          	sd	s5,8(sp)
    800030a0:	01613023          	sd	s6,0(sp)
    800030a4:	04010413          	addi	s0,sp,64
    800030a8:	00a4f4b3          	and	s1,s1,a0
    800030ac:	00f487b3          	add	a5,s1,a5
    800030b0:	06f5e463          	bltu	a1,a5,80003118 <freerange+0xa8>
    800030b4:	00003a97          	auipc	s5,0x3
    800030b8:	94ca8a93          	addi	s5,s5,-1716 # 80005a00 <end>
    800030bc:	0954e263          	bltu	s1,s5,80003140 <freerange+0xd0>
    800030c0:	01100993          	li	s3,17
    800030c4:	01b99993          	slli	s3,s3,0x1b
    800030c8:	0734fc63          	bgeu	s1,s3,80003140 <freerange+0xd0>
    800030cc:	00058a13          	mv	s4,a1
    800030d0:	00001917          	auipc	s2,0x1
    800030d4:	68090913          	addi	s2,s2,1664 # 80004750 <kmem>
    800030d8:	00002b37          	lui	s6,0x2
    800030dc:	0140006f          	j	800030f0 <freerange+0x80>
    800030e0:	000017b7          	lui	a5,0x1
    800030e4:	00f484b3          	add	s1,s1,a5
    800030e8:	0554ec63          	bltu	s1,s5,80003140 <freerange+0xd0>
    800030ec:	0534fa63          	bgeu	s1,s3,80003140 <freerange+0xd0>
    800030f0:	00001637          	lui	a2,0x1
    800030f4:	00100593          	li	a1,1
    800030f8:	00048513          	mv	a0,s1
    800030fc:	00000097          	auipc	ra,0x0
    80003100:	50c080e7          	jalr	1292(ra) # 80003608 <__memset>
    80003104:	00093703          	ld	a4,0(s2)
    80003108:	016487b3          	add	a5,s1,s6
    8000310c:	00e4b023          	sd	a4,0(s1)
    80003110:	00993023          	sd	s1,0(s2)
    80003114:	fcfa76e3          	bgeu	s4,a5,800030e0 <freerange+0x70>
    80003118:	03813083          	ld	ra,56(sp)
    8000311c:	03013403          	ld	s0,48(sp)
    80003120:	02813483          	ld	s1,40(sp)
    80003124:	02013903          	ld	s2,32(sp)
    80003128:	01813983          	ld	s3,24(sp)
    8000312c:	01013a03          	ld	s4,16(sp)
    80003130:	00813a83          	ld	s5,8(sp)
    80003134:	00013b03          	ld	s6,0(sp)
    80003138:	04010113          	addi	sp,sp,64
    8000313c:	00008067          	ret
    80003140:	00001517          	auipc	a0,0x1
    80003144:	07850513          	addi	a0,a0,120 # 800041b8 <digits+0x18>
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	3d4080e7          	jalr	980(ra) # 8000251c <panic>

0000000080003150 <kfree>:
    80003150:	fe010113          	addi	sp,sp,-32
    80003154:	00813823          	sd	s0,16(sp)
    80003158:	00113c23          	sd	ra,24(sp)
    8000315c:	00913423          	sd	s1,8(sp)
    80003160:	02010413          	addi	s0,sp,32
    80003164:	03451793          	slli	a5,a0,0x34
    80003168:	04079c63          	bnez	a5,800031c0 <kfree+0x70>
    8000316c:	00003797          	auipc	a5,0x3
    80003170:	89478793          	addi	a5,a5,-1900 # 80005a00 <end>
    80003174:	00050493          	mv	s1,a0
    80003178:	04f56463          	bltu	a0,a5,800031c0 <kfree+0x70>
    8000317c:	01100793          	li	a5,17
    80003180:	01b79793          	slli	a5,a5,0x1b
    80003184:	02f57e63          	bgeu	a0,a5,800031c0 <kfree+0x70>
    80003188:	00001637          	lui	a2,0x1
    8000318c:	00100593          	li	a1,1
    80003190:	00000097          	auipc	ra,0x0
    80003194:	478080e7          	jalr	1144(ra) # 80003608 <__memset>
    80003198:	00001797          	auipc	a5,0x1
    8000319c:	5b878793          	addi	a5,a5,1464 # 80004750 <kmem>
    800031a0:	0007b703          	ld	a4,0(a5)
    800031a4:	01813083          	ld	ra,24(sp)
    800031a8:	01013403          	ld	s0,16(sp)
    800031ac:	00e4b023          	sd	a4,0(s1)
    800031b0:	0097b023          	sd	s1,0(a5)
    800031b4:	00813483          	ld	s1,8(sp)
    800031b8:	02010113          	addi	sp,sp,32
    800031bc:	00008067          	ret
    800031c0:	00001517          	auipc	a0,0x1
    800031c4:	ff850513          	addi	a0,a0,-8 # 800041b8 <digits+0x18>
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	354080e7          	jalr	852(ra) # 8000251c <panic>

00000000800031d0 <kalloc>:
    800031d0:	fe010113          	addi	sp,sp,-32
    800031d4:	00813823          	sd	s0,16(sp)
    800031d8:	00913423          	sd	s1,8(sp)
    800031dc:	00113c23          	sd	ra,24(sp)
    800031e0:	02010413          	addi	s0,sp,32
    800031e4:	00001797          	auipc	a5,0x1
    800031e8:	56c78793          	addi	a5,a5,1388 # 80004750 <kmem>
    800031ec:	0007b483          	ld	s1,0(a5)
    800031f0:	02048063          	beqz	s1,80003210 <kalloc+0x40>
    800031f4:	0004b703          	ld	a4,0(s1)
    800031f8:	00001637          	lui	a2,0x1
    800031fc:	00500593          	li	a1,5
    80003200:	00048513          	mv	a0,s1
    80003204:	00e7b023          	sd	a4,0(a5)
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	400080e7          	jalr	1024(ra) # 80003608 <__memset>
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00048513          	mv	a0,s1
    8000321c:	00813483          	ld	s1,8(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret

0000000080003228 <initlock>:
    80003228:	ff010113          	addi	sp,sp,-16
    8000322c:	00813423          	sd	s0,8(sp)
    80003230:	01010413          	addi	s0,sp,16
    80003234:	00813403          	ld	s0,8(sp)
    80003238:	00b53423          	sd	a1,8(a0)
    8000323c:	00052023          	sw	zero,0(a0)
    80003240:	00053823          	sd	zero,16(a0)
    80003244:	01010113          	addi	sp,sp,16
    80003248:	00008067          	ret

000000008000324c <acquire>:
    8000324c:	fe010113          	addi	sp,sp,-32
    80003250:	00813823          	sd	s0,16(sp)
    80003254:	00913423          	sd	s1,8(sp)
    80003258:	00113c23          	sd	ra,24(sp)
    8000325c:	01213023          	sd	s2,0(sp)
    80003260:	02010413          	addi	s0,sp,32
    80003264:	00050493          	mv	s1,a0
    80003268:	10002973          	csrr	s2,sstatus
    8000326c:	100027f3          	csrr	a5,sstatus
    80003270:	ffd7f793          	andi	a5,a5,-3
    80003274:	10079073          	csrw	sstatus,a5
    80003278:	fffff097          	auipc	ra,0xfffff
    8000327c:	8e8080e7          	jalr	-1816(ra) # 80001b60 <mycpu>
    80003280:	07852783          	lw	a5,120(a0)
    80003284:	06078e63          	beqz	a5,80003300 <acquire+0xb4>
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	8d8080e7          	jalr	-1832(ra) # 80001b60 <mycpu>
    80003290:	07852783          	lw	a5,120(a0)
    80003294:	0004a703          	lw	a4,0(s1)
    80003298:	0017879b          	addiw	a5,a5,1
    8000329c:	06f52c23          	sw	a5,120(a0)
    800032a0:	04071063          	bnez	a4,800032e0 <acquire+0x94>
    800032a4:	00100713          	li	a4,1
    800032a8:	00070793          	mv	a5,a4
    800032ac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800032b0:	0007879b          	sext.w	a5,a5
    800032b4:	fe079ae3          	bnez	a5,800032a8 <acquire+0x5c>
    800032b8:	0ff0000f          	fence
    800032bc:	fffff097          	auipc	ra,0xfffff
    800032c0:	8a4080e7          	jalr	-1884(ra) # 80001b60 <mycpu>
    800032c4:	01813083          	ld	ra,24(sp)
    800032c8:	01013403          	ld	s0,16(sp)
    800032cc:	00a4b823          	sd	a0,16(s1)
    800032d0:	00013903          	ld	s2,0(sp)
    800032d4:	00813483          	ld	s1,8(sp)
    800032d8:	02010113          	addi	sp,sp,32
    800032dc:	00008067          	ret
    800032e0:	0104b903          	ld	s2,16(s1)
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	87c080e7          	jalr	-1924(ra) # 80001b60 <mycpu>
    800032ec:	faa91ce3          	bne	s2,a0,800032a4 <acquire+0x58>
    800032f0:	00001517          	auipc	a0,0x1
    800032f4:	ed050513          	addi	a0,a0,-304 # 800041c0 <digits+0x20>
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	224080e7          	jalr	548(ra) # 8000251c <panic>
    80003300:	00195913          	srli	s2,s2,0x1
    80003304:	fffff097          	auipc	ra,0xfffff
    80003308:	85c080e7          	jalr	-1956(ra) # 80001b60 <mycpu>
    8000330c:	00197913          	andi	s2,s2,1
    80003310:	07252e23          	sw	s2,124(a0)
    80003314:	f75ff06f          	j	80003288 <acquire+0x3c>

0000000080003318 <release>:
    80003318:	fe010113          	addi	sp,sp,-32
    8000331c:	00813823          	sd	s0,16(sp)
    80003320:	00113c23          	sd	ra,24(sp)
    80003324:	00913423          	sd	s1,8(sp)
    80003328:	01213023          	sd	s2,0(sp)
    8000332c:	02010413          	addi	s0,sp,32
    80003330:	00052783          	lw	a5,0(a0)
    80003334:	00079a63          	bnez	a5,80003348 <release+0x30>
    80003338:	00001517          	auipc	a0,0x1
    8000333c:	e9050513          	addi	a0,a0,-368 # 800041c8 <digits+0x28>
    80003340:	fffff097          	auipc	ra,0xfffff
    80003344:	1dc080e7          	jalr	476(ra) # 8000251c <panic>
    80003348:	01053903          	ld	s2,16(a0)
    8000334c:	00050493          	mv	s1,a0
    80003350:	fffff097          	auipc	ra,0xfffff
    80003354:	810080e7          	jalr	-2032(ra) # 80001b60 <mycpu>
    80003358:	fea910e3          	bne	s2,a0,80003338 <release+0x20>
    8000335c:	0004b823          	sd	zero,16(s1)
    80003360:	0ff0000f          	fence
    80003364:	0f50000f          	fence	iorw,ow
    80003368:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000336c:	ffffe097          	auipc	ra,0xffffe
    80003370:	7f4080e7          	jalr	2036(ra) # 80001b60 <mycpu>
    80003374:	100027f3          	csrr	a5,sstatus
    80003378:	0027f793          	andi	a5,a5,2
    8000337c:	04079a63          	bnez	a5,800033d0 <release+0xb8>
    80003380:	07852783          	lw	a5,120(a0)
    80003384:	02f05e63          	blez	a5,800033c0 <release+0xa8>
    80003388:	fff7871b          	addiw	a4,a5,-1
    8000338c:	06e52c23          	sw	a4,120(a0)
    80003390:	00071c63          	bnez	a4,800033a8 <release+0x90>
    80003394:	07c52783          	lw	a5,124(a0)
    80003398:	00078863          	beqz	a5,800033a8 <release+0x90>
    8000339c:	100027f3          	csrr	a5,sstatus
    800033a0:	0027e793          	ori	a5,a5,2
    800033a4:	10079073          	csrw	sstatus,a5
    800033a8:	01813083          	ld	ra,24(sp)
    800033ac:	01013403          	ld	s0,16(sp)
    800033b0:	00813483          	ld	s1,8(sp)
    800033b4:	00013903          	ld	s2,0(sp)
    800033b8:	02010113          	addi	sp,sp,32
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	e2850513          	addi	a0,a0,-472 # 800041e8 <digits+0x48>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	154080e7          	jalr	340(ra) # 8000251c <panic>
    800033d0:	00001517          	auipc	a0,0x1
    800033d4:	e0050513          	addi	a0,a0,-512 # 800041d0 <digits+0x30>
    800033d8:	fffff097          	auipc	ra,0xfffff
    800033dc:	144080e7          	jalr	324(ra) # 8000251c <panic>

00000000800033e0 <holding>:
    800033e0:	00052783          	lw	a5,0(a0)
    800033e4:	00079663          	bnez	a5,800033f0 <holding+0x10>
    800033e8:	00000513          	li	a0,0
    800033ec:	00008067          	ret
    800033f0:	fe010113          	addi	sp,sp,-32
    800033f4:	00813823          	sd	s0,16(sp)
    800033f8:	00913423          	sd	s1,8(sp)
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	01053483          	ld	s1,16(a0)
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	758080e7          	jalr	1880(ra) # 80001b60 <mycpu>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	40a48533          	sub	a0,s1,a0
    8000341c:	00153513          	seqz	a0,a0
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	02010113          	addi	sp,sp,32
    80003428:	00008067          	ret

000000008000342c <push_off>:
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00813823          	sd	s0,16(sp)
    80003434:	00113c23          	sd	ra,24(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	100024f3          	csrr	s1,sstatus
    80003444:	100027f3          	csrr	a5,sstatus
    80003448:	ffd7f793          	andi	a5,a5,-3
    8000344c:	10079073          	csrw	sstatus,a5
    80003450:	ffffe097          	auipc	ra,0xffffe
    80003454:	710080e7          	jalr	1808(ra) # 80001b60 <mycpu>
    80003458:	07852783          	lw	a5,120(a0)
    8000345c:	02078663          	beqz	a5,80003488 <push_off+0x5c>
    80003460:	ffffe097          	auipc	ra,0xffffe
    80003464:	700080e7          	jalr	1792(ra) # 80001b60 <mycpu>
    80003468:	07852783          	lw	a5,120(a0)
    8000346c:	01813083          	ld	ra,24(sp)
    80003470:	01013403          	ld	s0,16(sp)
    80003474:	0017879b          	addiw	a5,a5,1
    80003478:	06f52c23          	sw	a5,120(a0)
    8000347c:	00813483          	ld	s1,8(sp)
    80003480:	02010113          	addi	sp,sp,32
    80003484:	00008067          	ret
    80003488:	0014d493          	srli	s1,s1,0x1
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	6d4080e7          	jalr	1748(ra) # 80001b60 <mycpu>
    80003494:	0014f493          	andi	s1,s1,1
    80003498:	06952e23          	sw	s1,124(a0)
    8000349c:	fc5ff06f          	j	80003460 <push_off+0x34>

00000000800034a0 <pop_off>:
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813023          	sd	s0,0(sp)
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	01010413          	addi	s0,sp,16
    800034b0:	ffffe097          	auipc	ra,0xffffe
    800034b4:	6b0080e7          	jalr	1712(ra) # 80001b60 <mycpu>
    800034b8:	100027f3          	csrr	a5,sstatus
    800034bc:	0027f793          	andi	a5,a5,2
    800034c0:	04079663          	bnez	a5,8000350c <pop_off+0x6c>
    800034c4:	07852783          	lw	a5,120(a0)
    800034c8:	02f05a63          	blez	a5,800034fc <pop_off+0x5c>
    800034cc:	fff7871b          	addiw	a4,a5,-1
    800034d0:	06e52c23          	sw	a4,120(a0)
    800034d4:	00071c63          	bnez	a4,800034ec <pop_off+0x4c>
    800034d8:	07c52783          	lw	a5,124(a0)
    800034dc:	00078863          	beqz	a5,800034ec <pop_off+0x4c>
    800034e0:	100027f3          	csrr	a5,sstatus
    800034e4:	0027e793          	ori	a5,a5,2
    800034e8:	10079073          	csrw	sstatus,a5
    800034ec:	00813083          	ld	ra,8(sp)
    800034f0:	00013403          	ld	s0,0(sp)
    800034f4:	01010113          	addi	sp,sp,16
    800034f8:	00008067          	ret
    800034fc:	00001517          	auipc	a0,0x1
    80003500:	cec50513          	addi	a0,a0,-788 # 800041e8 <digits+0x48>
    80003504:	fffff097          	auipc	ra,0xfffff
    80003508:	018080e7          	jalr	24(ra) # 8000251c <panic>
    8000350c:	00001517          	auipc	a0,0x1
    80003510:	cc450513          	addi	a0,a0,-828 # 800041d0 <digits+0x30>
    80003514:	fffff097          	auipc	ra,0xfffff
    80003518:	008080e7          	jalr	8(ra) # 8000251c <panic>

000000008000351c <push_on>:
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00113c23          	sd	ra,24(sp)
    80003528:	00913423          	sd	s1,8(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	100024f3          	csrr	s1,sstatus
    80003534:	100027f3          	csrr	a5,sstatus
    80003538:	0027e793          	ori	a5,a5,2
    8000353c:	10079073          	csrw	sstatus,a5
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	620080e7          	jalr	1568(ra) # 80001b60 <mycpu>
    80003548:	07852783          	lw	a5,120(a0)
    8000354c:	02078663          	beqz	a5,80003578 <push_on+0x5c>
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	610080e7          	jalr	1552(ra) # 80001b60 <mycpu>
    80003558:	07852783          	lw	a5,120(a0)
    8000355c:	01813083          	ld	ra,24(sp)
    80003560:	01013403          	ld	s0,16(sp)
    80003564:	0017879b          	addiw	a5,a5,1
    80003568:	06f52c23          	sw	a5,120(a0)
    8000356c:	00813483          	ld	s1,8(sp)
    80003570:	02010113          	addi	sp,sp,32
    80003574:	00008067          	ret
    80003578:	0014d493          	srli	s1,s1,0x1
    8000357c:	ffffe097          	auipc	ra,0xffffe
    80003580:	5e4080e7          	jalr	1508(ra) # 80001b60 <mycpu>
    80003584:	0014f493          	andi	s1,s1,1
    80003588:	06952e23          	sw	s1,124(a0)
    8000358c:	fc5ff06f          	j	80003550 <push_on+0x34>

0000000080003590 <pop_on>:
    80003590:	ff010113          	addi	sp,sp,-16
    80003594:	00813023          	sd	s0,0(sp)
    80003598:	00113423          	sd	ra,8(sp)
    8000359c:	01010413          	addi	s0,sp,16
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	5c0080e7          	jalr	1472(ra) # 80001b60 <mycpu>
    800035a8:	100027f3          	csrr	a5,sstatus
    800035ac:	0027f793          	andi	a5,a5,2
    800035b0:	04078463          	beqz	a5,800035f8 <pop_on+0x68>
    800035b4:	07852783          	lw	a5,120(a0)
    800035b8:	02f05863          	blez	a5,800035e8 <pop_on+0x58>
    800035bc:	fff7879b          	addiw	a5,a5,-1
    800035c0:	06f52c23          	sw	a5,120(a0)
    800035c4:	07853783          	ld	a5,120(a0)
    800035c8:	00079863          	bnez	a5,800035d8 <pop_on+0x48>
    800035cc:	100027f3          	csrr	a5,sstatus
    800035d0:	ffd7f793          	andi	a5,a5,-3
    800035d4:	10079073          	csrw	sstatus,a5
    800035d8:	00813083          	ld	ra,8(sp)
    800035dc:	00013403          	ld	s0,0(sp)
    800035e0:	01010113          	addi	sp,sp,16
    800035e4:	00008067          	ret
    800035e8:	00001517          	auipc	a0,0x1
    800035ec:	c2850513          	addi	a0,a0,-984 # 80004210 <digits+0x70>
    800035f0:	fffff097          	auipc	ra,0xfffff
    800035f4:	f2c080e7          	jalr	-212(ra) # 8000251c <panic>
    800035f8:	00001517          	auipc	a0,0x1
    800035fc:	bf850513          	addi	a0,a0,-1032 # 800041f0 <digits+0x50>
    80003600:	fffff097          	auipc	ra,0xfffff
    80003604:	f1c080e7          	jalr	-228(ra) # 8000251c <panic>

0000000080003608 <__memset>:
    80003608:	ff010113          	addi	sp,sp,-16
    8000360c:	00813423          	sd	s0,8(sp)
    80003610:	01010413          	addi	s0,sp,16
    80003614:	1a060e63          	beqz	a2,800037d0 <__memset+0x1c8>
    80003618:	40a007b3          	neg	a5,a0
    8000361c:	0077f793          	andi	a5,a5,7
    80003620:	00778693          	addi	a3,a5,7
    80003624:	00b00813          	li	a6,11
    80003628:	0ff5f593          	andi	a1,a1,255
    8000362c:	fff6071b          	addiw	a4,a2,-1
    80003630:	1b06e663          	bltu	a3,a6,800037dc <__memset+0x1d4>
    80003634:	1cd76463          	bltu	a4,a3,800037fc <__memset+0x1f4>
    80003638:	1a078e63          	beqz	a5,800037f4 <__memset+0x1ec>
    8000363c:	00b50023          	sb	a1,0(a0)
    80003640:	00100713          	li	a4,1
    80003644:	1ae78463          	beq	a5,a4,800037ec <__memset+0x1e4>
    80003648:	00b500a3          	sb	a1,1(a0)
    8000364c:	00200713          	li	a4,2
    80003650:	1ae78a63          	beq	a5,a4,80003804 <__memset+0x1fc>
    80003654:	00b50123          	sb	a1,2(a0)
    80003658:	00300713          	li	a4,3
    8000365c:	18e78463          	beq	a5,a4,800037e4 <__memset+0x1dc>
    80003660:	00b501a3          	sb	a1,3(a0)
    80003664:	00400713          	li	a4,4
    80003668:	1ae78263          	beq	a5,a4,8000380c <__memset+0x204>
    8000366c:	00b50223          	sb	a1,4(a0)
    80003670:	00500713          	li	a4,5
    80003674:	1ae78063          	beq	a5,a4,80003814 <__memset+0x20c>
    80003678:	00b502a3          	sb	a1,5(a0)
    8000367c:	00700713          	li	a4,7
    80003680:	18e79e63          	bne	a5,a4,8000381c <__memset+0x214>
    80003684:	00b50323          	sb	a1,6(a0)
    80003688:	00700e93          	li	t4,7
    8000368c:	00859713          	slli	a4,a1,0x8
    80003690:	00e5e733          	or	a4,a1,a4
    80003694:	01059e13          	slli	t3,a1,0x10
    80003698:	01c76e33          	or	t3,a4,t3
    8000369c:	01859313          	slli	t1,a1,0x18
    800036a0:	006e6333          	or	t1,t3,t1
    800036a4:	02059893          	slli	a7,a1,0x20
    800036a8:	40f60e3b          	subw	t3,a2,a5
    800036ac:	011368b3          	or	a7,t1,a7
    800036b0:	02859813          	slli	a6,a1,0x28
    800036b4:	0108e833          	or	a6,a7,a6
    800036b8:	03059693          	slli	a3,a1,0x30
    800036bc:	003e589b          	srliw	a7,t3,0x3
    800036c0:	00d866b3          	or	a3,a6,a3
    800036c4:	03859713          	slli	a4,a1,0x38
    800036c8:	00389813          	slli	a6,a7,0x3
    800036cc:	00f507b3          	add	a5,a0,a5
    800036d0:	00e6e733          	or	a4,a3,a4
    800036d4:	000e089b          	sext.w	a7,t3
    800036d8:	00f806b3          	add	a3,a6,a5
    800036dc:	00e7b023          	sd	a4,0(a5)
    800036e0:	00878793          	addi	a5,a5,8
    800036e4:	fed79ce3          	bne	a5,a3,800036dc <__memset+0xd4>
    800036e8:	ff8e7793          	andi	a5,t3,-8
    800036ec:	0007871b          	sext.w	a4,a5
    800036f0:	01d787bb          	addw	a5,a5,t4
    800036f4:	0ce88e63          	beq	a7,a4,800037d0 <__memset+0x1c8>
    800036f8:	00f50733          	add	a4,a0,a5
    800036fc:	00b70023          	sb	a1,0(a4)
    80003700:	0017871b          	addiw	a4,a5,1
    80003704:	0cc77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003708:	00e50733          	add	a4,a0,a4
    8000370c:	00b70023          	sb	a1,0(a4)
    80003710:	0027871b          	addiw	a4,a5,2
    80003714:	0ac77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003718:	00e50733          	add	a4,a0,a4
    8000371c:	00b70023          	sb	a1,0(a4)
    80003720:	0037871b          	addiw	a4,a5,3
    80003724:	0ac77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003728:	00e50733          	add	a4,a0,a4
    8000372c:	00b70023          	sb	a1,0(a4)
    80003730:	0047871b          	addiw	a4,a5,4
    80003734:	08c77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003738:	00e50733          	add	a4,a0,a4
    8000373c:	00b70023          	sb	a1,0(a4)
    80003740:	0057871b          	addiw	a4,a5,5
    80003744:	08c77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003748:	00e50733          	add	a4,a0,a4
    8000374c:	00b70023          	sb	a1,0(a4)
    80003750:	0067871b          	addiw	a4,a5,6
    80003754:	06c77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003758:	00e50733          	add	a4,a0,a4
    8000375c:	00b70023          	sb	a1,0(a4)
    80003760:	0077871b          	addiw	a4,a5,7
    80003764:	06c77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003768:	00e50733          	add	a4,a0,a4
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	0087871b          	addiw	a4,a5,8
    80003774:	04c77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	0097871b          	addiw	a4,a5,9
    80003784:	04c77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	00a7871b          	addiw	a4,a5,10
    80003794:	02c77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	00b7871b          	addiw	a4,a5,11
    800037a4:	02c77663          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    800037a8:	00e50733          	add	a4,a0,a4
    800037ac:	00b70023          	sb	a1,0(a4)
    800037b0:	00c7871b          	addiw	a4,a5,12
    800037b4:	00c77e63          	bgeu	a4,a2,800037d0 <__memset+0x1c8>
    800037b8:	00e50733          	add	a4,a0,a4
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	00d7879b          	addiw	a5,a5,13
    800037c4:	00c7f663          	bgeu	a5,a2,800037d0 <__memset+0x1c8>
    800037c8:	00f507b3          	add	a5,a0,a5
    800037cc:	00b78023          	sb	a1,0(a5)
    800037d0:	00813403          	ld	s0,8(sp)
    800037d4:	01010113          	addi	sp,sp,16
    800037d8:	00008067          	ret
    800037dc:	00b00693          	li	a3,11
    800037e0:	e55ff06f          	j	80003634 <__memset+0x2c>
    800037e4:	00300e93          	li	t4,3
    800037e8:	ea5ff06f          	j	8000368c <__memset+0x84>
    800037ec:	00100e93          	li	t4,1
    800037f0:	e9dff06f          	j	8000368c <__memset+0x84>
    800037f4:	00000e93          	li	t4,0
    800037f8:	e95ff06f          	j	8000368c <__memset+0x84>
    800037fc:	00000793          	li	a5,0
    80003800:	ef9ff06f          	j	800036f8 <__memset+0xf0>
    80003804:	00200e93          	li	t4,2
    80003808:	e85ff06f          	j	8000368c <__memset+0x84>
    8000380c:	00400e93          	li	t4,4
    80003810:	e7dff06f          	j	8000368c <__memset+0x84>
    80003814:	00500e93          	li	t4,5
    80003818:	e75ff06f          	j	8000368c <__memset+0x84>
    8000381c:	00600e93          	li	t4,6
    80003820:	e6dff06f          	j	8000368c <__memset+0x84>

0000000080003824 <__memmove>:
    80003824:	ff010113          	addi	sp,sp,-16
    80003828:	00813423          	sd	s0,8(sp)
    8000382c:	01010413          	addi	s0,sp,16
    80003830:	0e060863          	beqz	a2,80003920 <__memmove+0xfc>
    80003834:	fff6069b          	addiw	a3,a2,-1
    80003838:	0006881b          	sext.w	a6,a3
    8000383c:	0ea5e863          	bltu	a1,a0,8000392c <__memmove+0x108>
    80003840:	00758713          	addi	a4,a1,7
    80003844:	00a5e7b3          	or	a5,a1,a0
    80003848:	40a70733          	sub	a4,a4,a0
    8000384c:	0077f793          	andi	a5,a5,7
    80003850:	00f73713          	sltiu	a4,a4,15
    80003854:	00174713          	xori	a4,a4,1
    80003858:	0017b793          	seqz	a5,a5
    8000385c:	00e7f7b3          	and	a5,a5,a4
    80003860:	10078863          	beqz	a5,80003970 <__memmove+0x14c>
    80003864:	00900793          	li	a5,9
    80003868:	1107f463          	bgeu	a5,a6,80003970 <__memmove+0x14c>
    8000386c:	0036581b          	srliw	a6,a2,0x3
    80003870:	fff8081b          	addiw	a6,a6,-1
    80003874:	02081813          	slli	a6,a6,0x20
    80003878:	01d85893          	srli	a7,a6,0x1d
    8000387c:	00858813          	addi	a6,a1,8
    80003880:	00058793          	mv	a5,a1
    80003884:	00050713          	mv	a4,a0
    80003888:	01088833          	add	a6,a7,a6
    8000388c:	0007b883          	ld	a7,0(a5)
    80003890:	00878793          	addi	a5,a5,8
    80003894:	00870713          	addi	a4,a4,8
    80003898:	ff173c23          	sd	a7,-8(a4)
    8000389c:	ff0798e3          	bne	a5,a6,8000388c <__memmove+0x68>
    800038a0:	ff867713          	andi	a4,a2,-8
    800038a4:	02071793          	slli	a5,a4,0x20
    800038a8:	0207d793          	srli	a5,a5,0x20
    800038ac:	00f585b3          	add	a1,a1,a5
    800038b0:	40e686bb          	subw	a3,a3,a4
    800038b4:	00f507b3          	add	a5,a0,a5
    800038b8:	06e60463          	beq	a2,a4,80003920 <__memmove+0xfc>
    800038bc:	0005c703          	lbu	a4,0(a1)
    800038c0:	00e78023          	sb	a4,0(a5)
    800038c4:	04068e63          	beqz	a3,80003920 <__memmove+0xfc>
    800038c8:	0015c603          	lbu	a2,1(a1)
    800038cc:	00100713          	li	a4,1
    800038d0:	00c780a3          	sb	a2,1(a5)
    800038d4:	04e68663          	beq	a3,a4,80003920 <__memmove+0xfc>
    800038d8:	0025c603          	lbu	a2,2(a1)
    800038dc:	00200713          	li	a4,2
    800038e0:	00c78123          	sb	a2,2(a5)
    800038e4:	02e68e63          	beq	a3,a4,80003920 <__memmove+0xfc>
    800038e8:	0035c603          	lbu	a2,3(a1)
    800038ec:	00300713          	li	a4,3
    800038f0:	00c781a3          	sb	a2,3(a5)
    800038f4:	02e68663          	beq	a3,a4,80003920 <__memmove+0xfc>
    800038f8:	0045c603          	lbu	a2,4(a1)
    800038fc:	00400713          	li	a4,4
    80003900:	00c78223          	sb	a2,4(a5)
    80003904:	00e68e63          	beq	a3,a4,80003920 <__memmove+0xfc>
    80003908:	0055c603          	lbu	a2,5(a1)
    8000390c:	00500713          	li	a4,5
    80003910:	00c782a3          	sb	a2,5(a5)
    80003914:	00e68663          	beq	a3,a4,80003920 <__memmove+0xfc>
    80003918:	0065c703          	lbu	a4,6(a1)
    8000391c:	00e78323          	sb	a4,6(a5)
    80003920:	00813403          	ld	s0,8(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret
    8000392c:	02061713          	slli	a4,a2,0x20
    80003930:	02075713          	srli	a4,a4,0x20
    80003934:	00e587b3          	add	a5,a1,a4
    80003938:	f0f574e3          	bgeu	a0,a5,80003840 <__memmove+0x1c>
    8000393c:	02069613          	slli	a2,a3,0x20
    80003940:	02065613          	srli	a2,a2,0x20
    80003944:	fff64613          	not	a2,a2
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00c78633          	add	a2,a5,a2
    80003950:	fff7c683          	lbu	a3,-1(a5)
    80003954:	fff78793          	addi	a5,a5,-1
    80003958:	fff70713          	addi	a4,a4,-1
    8000395c:	00d70023          	sb	a3,0(a4)
    80003960:	fec798e3          	bne	a5,a2,80003950 <__memmove+0x12c>
    80003964:	00813403          	ld	s0,8(sp)
    80003968:	01010113          	addi	sp,sp,16
    8000396c:	00008067          	ret
    80003970:	02069713          	slli	a4,a3,0x20
    80003974:	02075713          	srli	a4,a4,0x20
    80003978:	00170713          	addi	a4,a4,1
    8000397c:	00e50733          	add	a4,a0,a4
    80003980:	00050793          	mv	a5,a0
    80003984:	0005c683          	lbu	a3,0(a1)
    80003988:	00178793          	addi	a5,a5,1
    8000398c:	00158593          	addi	a1,a1,1
    80003990:	fed78fa3          	sb	a3,-1(a5)
    80003994:	fee798e3          	bne	a5,a4,80003984 <__memmove+0x160>
    80003998:	f89ff06f          	j	80003920 <__memmove+0xfc>

000000008000399c <__mem_free>:
    8000399c:	ff010113          	addi	sp,sp,-16
    800039a0:	00813423          	sd	s0,8(sp)
    800039a4:	01010413          	addi	s0,sp,16
    800039a8:	00001597          	auipc	a1,0x1
    800039ac:	db058593          	addi	a1,a1,-592 # 80004758 <freep>
    800039b0:	0005b783          	ld	a5,0(a1)
    800039b4:	ff050693          	addi	a3,a0,-16
    800039b8:	0007b703          	ld	a4,0(a5)
    800039bc:	00d7fc63          	bgeu	a5,a3,800039d4 <__mem_free+0x38>
    800039c0:	00e6ee63          	bltu	a3,a4,800039dc <__mem_free+0x40>
    800039c4:	00e7fc63          	bgeu	a5,a4,800039dc <__mem_free+0x40>
    800039c8:	00070793          	mv	a5,a4
    800039cc:	0007b703          	ld	a4,0(a5)
    800039d0:	fed7e8e3          	bltu	a5,a3,800039c0 <__mem_free+0x24>
    800039d4:	fee7eae3          	bltu	a5,a4,800039c8 <__mem_free+0x2c>
    800039d8:	fee6f8e3          	bgeu	a3,a4,800039c8 <__mem_free+0x2c>
    800039dc:	ff852803          	lw	a6,-8(a0)
    800039e0:	02081613          	slli	a2,a6,0x20
    800039e4:	01c65613          	srli	a2,a2,0x1c
    800039e8:	00c68633          	add	a2,a3,a2
    800039ec:	02c70a63          	beq	a4,a2,80003a20 <__mem_free+0x84>
    800039f0:	fee53823          	sd	a4,-16(a0)
    800039f4:	0087a503          	lw	a0,8(a5)
    800039f8:	02051613          	slli	a2,a0,0x20
    800039fc:	01c65613          	srli	a2,a2,0x1c
    80003a00:	00c78633          	add	a2,a5,a2
    80003a04:	04c68263          	beq	a3,a2,80003a48 <__mem_free+0xac>
    80003a08:	00813403          	ld	s0,8(sp)
    80003a0c:	00d7b023          	sd	a3,0(a5)
    80003a10:	00f5b023          	sd	a5,0(a1)
    80003a14:	00000513          	li	a0,0
    80003a18:	01010113          	addi	sp,sp,16
    80003a1c:	00008067          	ret
    80003a20:	00872603          	lw	a2,8(a4)
    80003a24:	00073703          	ld	a4,0(a4)
    80003a28:	0106083b          	addw	a6,a2,a6
    80003a2c:	ff052c23          	sw	a6,-8(a0)
    80003a30:	fee53823          	sd	a4,-16(a0)
    80003a34:	0087a503          	lw	a0,8(a5)
    80003a38:	02051613          	slli	a2,a0,0x20
    80003a3c:	01c65613          	srli	a2,a2,0x1c
    80003a40:	00c78633          	add	a2,a5,a2
    80003a44:	fcc692e3          	bne	a3,a2,80003a08 <__mem_free+0x6c>
    80003a48:	00813403          	ld	s0,8(sp)
    80003a4c:	0105053b          	addw	a0,a0,a6
    80003a50:	00a7a423          	sw	a0,8(a5)
    80003a54:	00e7b023          	sd	a4,0(a5)
    80003a58:	00f5b023          	sd	a5,0(a1)
    80003a5c:	00000513          	li	a0,0
    80003a60:	01010113          	addi	sp,sp,16
    80003a64:	00008067          	ret

0000000080003a68 <__mem_alloc>:
    80003a68:	fc010113          	addi	sp,sp,-64
    80003a6c:	02813823          	sd	s0,48(sp)
    80003a70:	02913423          	sd	s1,40(sp)
    80003a74:	03213023          	sd	s2,32(sp)
    80003a78:	01513423          	sd	s5,8(sp)
    80003a7c:	02113c23          	sd	ra,56(sp)
    80003a80:	01313c23          	sd	s3,24(sp)
    80003a84:	01413823          	sd	s4,16(sp)
    80003a88:	01613023          	sd	s6,0(sp)
    80003a8c:	04010413          	addi	s0,sp,64
    80003a90:	00001a97          	auipc	s5,0x1
    80003a94:	cc8a8a93          	addi	s5,s5,-824 # 80004758 <freep>
    80003a98:	00f50913          	addi	s2,a0,15
    80003a9c:	000ab683          	ld	a3,0(s5)
    80003aa0:	00495913          	srli	s2,s2,0x4
    80003aa4:	0019049b          	addiw	s1,s2,1
    80003aa8:	00048913          	mv	s2,s1
    80003aac:	0c068c63          	beqz	a3,80003b84 <__mem_alloc+0x11c>
    80003ab0:	0006b503          	ld	a0,0(a3)
    80003ab4:	00852703          	lw	a4,8(a0)
    80003ab8:	10977063          	bgeu	a4,s1,80003bb8 <__mem_alloc+0x150>
    80003abc:	000017b7          	lui	a5,0x1
    80003ac0:	0009099b          	sext.w	s3,s2
    80003ac4:	0af4e863          	bltu	s1,a5,80003b74 <__mem_alloc+0x10c>
    80003ac8:	02099a13          	slli	s4,s3,0x20
    80003acc:	01ca5a13          	srli	s4,s4,0x1c
    80003ad0:	fff00b13          	li	s6,-1
    80003ad4:	0100006f          	j	80003ae4 <__mem_alloc+0x7c>
    80003ad8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003adc:	00852703          	lw	a4,8(a0)
    80003ae0:	04977463          	bgeu	a4,s1,80003b28 <__mem_alloc+0xc0>
    80003ae4:	00050793          	mv	a5,a0
    80003ae8:	fea698e3          	bne	a3,a0,80003ad8 <__mem_alloc+0x70>
    80003aec:	000a0513          	mv	a0,s4
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	1f0080e7          	jalr	496(ra) # 80003ce0 <kvmincrease>
    80003af8:	00050793          	mv	a5,a0
    80003afc:	01050513          	addi	a0,a0,16
    80003b00:	07678e63          	beq	a5,s6,80003b7c <__mem_alloc+0x114>
    80003b04:	0137a423          	sw	s3,8(a5)
    80003b08:	00000097          	auipc	ra,0x0
    80003b0c:	e94080e7          	jalr	-364(ra) # 8000399c <__mem_free>
    80003b10:	000ab783          	ld	a5,0(s5)
    80003b14:	06078463          	beqz	a5,80003b7c <__mem_alloc+0x114>
    80003b18:	0007b503          	ld	a0,0(a5)
    80003b1c:	00078693          	mv	a3,a5
    80003b20:	00852703          	lw	a4,8(a0)
    80003b24:	fc9760e3          	bltu	a4,s1,80003ae4 <__mem_alloc+0x7c>
    80003b28:	08e48263          	beq	s1,a4,80003bac <__mem_alloc+0x144>
    80003b2c:	4127073b          	subw	a4,a4,s2
    80003b30:	02071693          	slli	a3,a4,0x20
    80003b34:	01c6d693          	srli	a3,a3,0x1c
    80003b38:	00e52423          	sw	a4,8(a0)
    80003b3c:	00d50533          	add	a0,a0,a3
    80003b40:	01252423          	sw	s2,8(a0)
    80003b44:	00fab023          	sd	a5,0(s5)
    80003b48:	01050513          	addi	a0,a0,16
    80003b4c:	03813083          	ld	ra,56(sp)
    80003b50:	03013403          	ld	s0,48(sp)
    80003b54:	02813483          	ld	s1,40(sp)
    80003b58:	02013903          	ld	s2,32(sp)
    80003b5c:	01813983          	ld	s3,24(sp)
    80003b60:	01013a03          	ld	s4,16(sp)
    80003b64:	00813a83          	ld	s5,8(sp)
    80003b68:	00013b03          	ld	s6,0(sp)
    80003b6c:	04010113          	addi	sp,sp,64
    80003b70:	00008067          	ret
    80003b74:	000019b7          	lui	s3,0x1
    80003b78:	f51ff06f          	j	80003ac8 <__mem_alloc+0x60>
    80003b7c:	00000513          	li	a0,0
    80003b80:	fcdff06f          	j	80003b4c <__mem_alloc+0xe4>
    80003b84:	00002797          	auipc	a5,0x2
    80003b88:	e6c78793          	addi	a5,a5,-404 # 800059f0 <base>
    80003b8c:	00078513          	mv	a0,a5
    80003b90:	00fab023          	sd	a5,0(s5)
    80003b94:	00f7b023          	sd	a5,0(a5)
    80003b98:	00000713          	li	a4,0
    80003b9c:	00002797          	auipc	a5,0x2
    80003ba0:	e407ae23          	sw	zero,-420(a5) # 800059f8 <base+0x8>
    80003ba4:	00050693          	mv	a3,a0
    80003ba8:	f11ff06f          	j	80003ab8 <__mem_alloc+0x50>
    80003bac:	00053703          	ld	a4,0(a0)
    80003bb0:	00e7b023          	sd	a4,0(a5)
    80003bb4:	f91ff06f          	j	80003b44 <__mem_alloc+0xdc>
    80003bb8:	00068793          	mv	a5,a3
    80003bbc:	f6dff06f          	j	80003b28 <__mem_alloc+0xc0>

0000000080003bc0 <__putc>:
    80003bc0:	fe010113          	addi	sp,sp,-32
    80003bc4:	00813823          	sd	s0,16(sp)
    80003bc8:	00113c23          	sd	ra,24(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	00050793          	mv	a5,a0
    80003bd4:	fef40593          	addi	a1,s0,-17
    80003bd8:	00100613          	li	a2,1
    80003bdc:	00000513          	li	a0,0
    80003be0:	fef407a3          	sb	a5,-17(s0)
    80003be4:	fffff097          	auipc	ra,0xfffff
    80003be8:	918080e7          	jalr	-1768(ra) # 800024fc <console_write>
    80003bec:	01813083          	ld	ra,24(sp)
    80003bf0:	01013403          	ld	s0,16(sp)
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00008067          	ret

0000000080003bfc <__getc>:
    80003bfc:	fe010113          	addi	sp,sp,-32
    80003c00:	00813823          	sd	s0,16(sp)
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	02010413          	addi	s0,sp,32
    80003c0c:	fe840593          	addi	a1,s0,-24
    80003c10:	00100613          	li	a2,1
    80003c14:	00000513          	li	a0,0
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	8c4080e7          	jalr	-1852(ra) # 800024dc <console_read>
    80003c20:	fe844503          	lbu	a0,-24(s0)
    80003c24:	01813083          	ld	ra,24(sp)
    80003c28:	01013403          	ld	s0,16(sp)
    80003c2c:	02010113          	addi	sp,sp,32
    80003c30:	00008067          	ret

0000000080003c34 <console_handler>:
    80003c34:	fe010113          	addi	sp,sp,-32
    80003c38:	00813823          	sd	s0,16(sp)
    80003c3c:	00113c23          	sd	ra,24(sp)
    80003c40:	00913423          	sd	s1,8(sp)
    80003c44:	02010413          	addi	s0,sp,32
    80003c48:	14202773          	csrr	a4,scause
    80003c4c:	100027f3          	csrr	a5,sstatus
    80003c50:	0027f793          	andi	a5,a5,2
    80003c54:	06079e63          	bnez	a5,80003cd0 <console_handler+0x9c>
    80003c58:	00074c63          	bltz	a4,80003c70 <console_handler+0x3c>
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	00813483          	ld	s1,8(sp)
    80003c68:	02010113          	addi	sp,sp,32
    80003c6c:	00008067          	ret
    80003c70:	0ff77713          	andi	a4,a4,255
    80003c74:	00900793          	li	a5,9
    80003c78:	fef712e3          	bne	a4,a5,80003c5c <console_handler+0x28>
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	4b8080e7          	jalr	1208(ra) # 80002134 <plic_claim>
    80003c84:	00a00793          	li	a5,10
    80003c88:	00050493          	mv	s1,a0
    80003c8c:	02f50c63          	beq	a0,a5,80003cc4 <console_handler+0x90>
    80003c90:	fc0506e3          	beqz	a0,80003c5c <console_handler+0x28>
    80003c94:	00050593          	mv	a1,a0
    80003c98:	00000517          	auipc	a0,0x0
    80003c9c:	48050513          	addi	a0,a0,1152 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003ca0:	fffff097          	auipc	ra,0xfffff
    80003ca4:	8d8080e7          	jalr	-1832(ra) # 80002578 <__printf>
    80003ca8:	01013403          	ld	s0,16(sp)
    80003cac:	01813083          	ld	ra,24(sp)
    80003cb0:	00048513          	mv	a0,s1
    80003cb4:	00813483          	ld	s1,8(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	ffffe317          	auipc	t1,0xffffe
    80003cc0:	4b030067          	jr	1200(t1) # 8000216c <plic_complete>
    80003cc4:	fffff097          	auipc	ra,0xfffff
    80003cc8:	1bc080e7          	jalr	444(ra) # 80002e80 <uartintr>
    80003ccc:	fddff06f          	j	80003ca8 <console_handler+0x74>
    80003cd0:	00000517          	auipc	a0,0x0
    80003cd4:	54850513          	addi	a0,a0,1352 # 80004218 <digits+0x78>
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	844080e7          	jalr	-1980(ra) # 8000251c <panic>

0000000080003ce0 <kvmincrease>:
    80003ce0:	fe010113          	addi	sp,sp,-32
    80003ce4:	01213023          	sd	s2,0(sp)
    80003ce8:	00001937          	lui	s2,0x1
    80003cec:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003cf0:	00813823          	sd	s0,16(sp)
    80003cf4:	00113c23          	sd	ra,24(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    80003d00:	01250933          	add	s2,a0,s2
    80003d04:	00c95913          	srli	s2,s2,0xc
    80003d08:	02090863          	beqz	s2,80003d38 <kvmincrease+0x58>
    80003d0c:	00000493          	li	s1,0
    80003d10:	00148493          	addi	s1,s1,1
    80003d14:	fffff097          	auipc	ra,0xfffff
    80003d18:	4bc080e7          	jalr	1212(ra) # 800031d0 <kalloc>
    80003d1c:	fe991ae3          	bne	s2,s1,80003d10 <kvmincrease+0x30>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	00813483          	ld	s1,8(sp)
    80003d2c:	00013903          	ld	s2,0(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret
    80003d38:	01813083          	ld	ra,24(sp)
    80003d3c:	01013403          	ld	s0,16(sp)
    80003d40:	00813483          	ld	s1,8(sp)
    80003d44:	00013903          	ld	s2,0(sp)
    80003d48:	00000513          	li	a0,0
    80003d4c:	02010113          	addi	sp,sp,32
    80003d50:	00008067          	ret
	...

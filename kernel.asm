
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
    8000001c:	129010ef          	jal	ra,80001944 <start>

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
    80001080:	6a8000ef          	jal	ra,80001728 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>:
.global _ZN7_thread13contextSwitchEPNS_7ContextES1_
.type _ZN7_thread13contextSwitchEPNS_7ContextES1_, @function
_ZN7_thread13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16

}
    80001130:	00813403          	ld	s0,8(sp)
    80001134:	01010113          	addi	sp,sp,16
    80001138:	00008067          	ret

000000008000113c <_ZN7_threadC1EPFvvEm>:
_thread::_thread(Body body, uint64 timeSlice):
    8000113c:	fe010113          	addi	sp,sp,-32
    80001140:	00113c23          	sd	ra,24(sp)
    80001144:	00813823          	sd	s0,16(sp)
    80001148:	00913423          	sd	s1,8(sp)
    8000114c:	01213023          	sd	s2,0(sp)
    80001150:	02010413          	addi	s0,sp,32
    80001154:	00050493          	mv	s1,a0
    80001158:	00060913          	mv	s2,a2
        finished(false)
    8000115c:	00b53023          	sd	a1,0(a0)
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    80001160:	06058863          	beqz	a1,800011d0 <_ZN7_threadC1EPFvvEm+0x94>
    80001164:	00008537          	lui	a0,0x8
    80001168:	00000097          	auipc	ra,0x0
    8000116c:	4b4080e7          	jalr	1204(ra) # 8000161c <_Znam>
        finished(false)
    80001170:	00a4b423          	sd	a0,8(s1)
    80001174:	00000797          	auipc	a5,0x0
    80001178:	fb078793          	addi	a5,a5,-80 # 80001124 <_ZN7_thread13threadWrapperEv>
    8000117c:	00f4b823          	sd	a5,16(s1)
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001180:	04050c63          	beqz	a0,800011d8 <_ZN7_threadC1EPFvvEm+0x9c>
    80001184:	000087b7          	lui	a5,0x8
    80001188:	00f50533          	add	a0,a0,a5
        finished(false)
    8000118c:	00a4bc23          	sd	a0,24(s1)
    80001190:	0324b023          	sd	s2,32(s1)
    80001194:	02048423          	sb	zero,40(s1)
    status = Status::NEW;
    80001198:	00100793          	li	a5,1
    8000119c:	02f4ac23          	sw	a5,56(s1)
    id = globalId++;
    800011a0:	00003717          	auipc	a4,0x3
    800011a4:	5c070713          	addi	a4,a4,1472 # 80004760 <_ZN7_thread8globalIdE>
    800011a8:	00073783          	ld	a5,0(a4)
    800011ac:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    800011b0:	00d73023          	sd	a3,0(a4)
    800011b4:	02f4b823          	sd	a5,48(s1)
}
    800011b8:	01813083          	ld	ra,24(sp)
    800011bc:	01013403          	ld	s0,16(sp)
    800011c0:	00813483          	ld	s1,8(sp)
    800011c4:	00013903          	ld	s2,0(sp)
    800011c8:	02010113          	addi	sp,sp,32
    800011cc:	00008067          	ret
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    800011d0:	00000513          	li	a0,0
    800011d4:	f9dff06f          	j	80001170 <_ZN7_threadC1EPFvvEm+0x34>
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    800011d8:	00000513          	li	a0,0
    800011dc:	fb1ff06f          	j	8000118c <_ZN7_threadC1EPFvvEm+0x50>

00000000800011e0 <_ZN7_thread12createThreadEPFvvE>:
_thread* _thread::createThread(Body body) {
    800011e0:	fe010113          	addi	sp,sp,-32
    800011e4:	00113c23          	sd	ra,24(sp)
    800011e8:	00813823          	sd	s0,16(sp)
    800011ec:	00913423          	sd	s1,8(sp)
    800011f0:	01213023          	sd	s2,0(sp)
    800011f4:	02010413          	addi	s0,sp,32
    800011f8:	00050913          	mv	s2,a0
    return new _thread(body, DEFAULT_TIME_SLICE);
    800011fc:	04000513          	li	a0,64
    80001200:	00000097          	auipc	ra,0x0
    80001204:	3f4080e7          	jalr	1012(ra) # 800015f4 <_Znwm>
    80001208:	00050493          	mv	s1,a0
    8000120c:	00200613          	li	a2,2
    80001210:	00090593          	mv	a1,s2
    80001214:	00000097          	auipc	ra,0x0
    80001218:	f28080e7          	jalr	-216(ra) # 8000113c <_ZN7_threadC1EPFvvEm>
    8000121c:	0200006f          	j	8000123c <_ZN7_thread12createThreadEPFvvE+0x5c>
    80001220:	00050913          	mv	s2,a0
    80001224:	00048513          	mv	a0,s1
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	41c080e7          	jalr	1052(ra) # 80001644 <_ZdlPv>
    80001230:	00090513          	mv	a0,s2
    80001234:	00004097          	auipc	ra,0x4
    80001238:	624080e7          	jalr	1572(ra) # 80005858 <_Unwind_Resume>
}
    8000123c:	00048513          	mv	a0,s1
    80001240:	01813083          	ld	ra,24(sp)
    80001244:	01013403          	ld	s0,16(sp)
    80001248:	00813483          	ld	s1,8(sp)
    8000124c:	00013903          	ld	s2,0(sp)
    80001250:	02010113          	addi	sp,sp,32
    80001254:	00008067          	ret

0000000080001258 <_ZN7_thread5startEv>:
    if(this->status==FINISHED)return;
    80001258:	03852783          	lw	a5,56(a0) # 8038 <_entry-0x7fff7fc8>
    8000125c:	00200713          	li	a4,2
    80001260:	00e78463          	beq	a5,a4,80001268 <_ZN7_thread5startEv+0x10>
    if(this->status==READY)return;
    80001264:	00079463          	bnez	a5,8000126c <_ZN7_thread5startEv+0x14>
    80001268:	00008067          	ret
void _thread::start() {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00113423          	sd	ra,8(sp)
    80001274:	00813023          	sd	s0,0(sp)
    80001278:	01010413          	addi	s0,sp,16
    this->status=Status::READY;
    8000127c:	02052c23          	sw	zero,56(a0)
    Scheduler::put(this);
    80001280:	00000097          	auipc	ra,0x0
    80001284:	2d4080e7          	jalr	724(ra) # 80001554 <_ZN9Scheduler3putEP7_thread>
}
    80001288:	00813083          	ld	ra,8(sp)
    8000128c:	00013403          	ld	s0,0(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_ZN7_thread5yieldEv>:
void _thread::yield() {
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00813423          	sd	s0,8(sp)
    800012a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    800012a4:	00050793          	mv	a5,a0
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    800012a8:	00400713          	li	a4,4
    800012ac:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    800012b0:	00000073          	ecall
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    800012b4:	00078513          	mv	a0,a5
}
    800012b8:	00813403          	ld	s0,8(sp)
    800012bc:	01010113          	addi	sp,sp,16
    800012c0:	00008067          	ret

00000000800012c4 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    800012c4:	fe010113          	addi	sp,sp,-32
    800012c8:	00113c23          	sd	ra,24(sp)
    800012cc:	00813823          	sd	s0,16(sp)
    800012d0:	00913423          	sd	s1,8(sp)
    800012d4:	02010413          	addi	s0,sp,32
    _thread* old = running;
    800012d8:	00003497          	auipc	s1,0x3
    800012dc:	4904b483          	ld	s1,1168(s1) # 80004768 <_ZN7_thread7runningE>

class _thread {
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }
    800012e0:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012e4:	02078c63          	beqz	a5,8000131c <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	204080e7          	jalr	516(ra) # 800014ec <_ZN9Scheduler3getEv>
    800012f0:	00003797          	auipc	a5,0x3
    800012f4:	46a7bc23          	sd	a0,1144(a5) # 80004768 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    800012f8:	01050593          	addi	a1,a0,16
    800012fc:	01048513          	addi	a0,s1,16
    80001300:	00000097          	auipc	ra,0x0
    80001304:	e10080e7          	jalr	-496(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    80001308:	01813083          	ld	ra,24(sp)
    8000130c:	01013403          	ld	s0,16(sp)
    80001310:	00813483          	ld	s1,8(sp)
    80001314:	02010113          	addi	sp,sp,32
    80001318:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    8000131c:	00048513          	mv	a0,s1
    80001320:	00000097          	auipc	ra,0x0
    80001324:	234080e7          	jalr	564(ra) # 80001554 <_ZN9Scheduler3putEP7_thread>
    80001328:	fc1ff06f          	j	800012e8 <_ZN7_thread8dispatchEv+0x24>

000000008000132c <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001338:	00053703          	ld	a4,0(a0)
    uint64 arg1 = arg->a1;
    8000133c:	00853783          	ld	a5,8(a0)
    uint64 arg2 = arg->a2;
    uint64 arg3 = arg->a3;

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001340:	00070513          	mv	a0,a4
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001344:	00078593          	mv	a1,a5
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    __asm__ volatile("mv a3, %0" : : "r" (arg3));


    80001348:	00000073          	ecall

//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    8000134c:	00813403          	ld	s0,8(sp)
    80001350:	01010113          	addi	sp,sp,16
    80001354:	00008067          	ret

0000000080001358 <_Z9mem_allocm>:


    80001358:	fe010113          	addi	sp,sp,-32
    8000135c:	00113c23          	sd	ra,24(sp)
    80001360:	00813823          	sd	s0,16(sp)
    80001364:	00913423          	sd	s1,8(sp)
    80001368:	02010413          	addi	s0,sp,32
    8000136c:	00050493          	mv	s1,a0
}

void* mem_alloc (size_t size){
    80001370:	02000513          	li	a0,32
    80001374:	00000097          	auipc	ra,0x0
    80001378:	280080e7          	jalr	640(ra) # 800015f4 <_Znwm>
    8000137c:	00053823          	sd	zero,16(a0)
    80001380:	00053c23          	sd	zero,24(a0)
    //prepares parameters to arguments
    80001384:	00100793          	li	a5,1
    80001388:	00f53023          	sd	a5,0(a0)
    //executes system call instruction
    args* arg = new args();
    8000138c:	0064d793          	srli	a5,s1,0x6
    arg->a0=0x01;
    80001390:	03f4f493          	andi	s1,s1,63
    80001394:	00048463          	beqz	s1,8000139c <_Z9mem_allocm+0x44>
    80001398:	00178793          	addi	a5,a5,1

    8000139c:	00f53423          	sd	a5,8(a0)
    size_t blocks = size/MEM_BLOCK_SIZE;
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    800013a0:	00000097          	auipc	ra,0x0
    800013a4:	f8c080e7          	jalr	-116(ra) # 8000132c <_Z7syscallP4args>
    arg->a1=blocks;

    syscall(arg);
    800013a8:	00050513          	mv	a0,a0

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013ac:	01813083          	ld	ra,24(sp)
    800013b0:	01013403          	ld	s0,16(sp)
    800013b4:	00813483          	ld	s1,8(sp)
    800013b8:	02010113          	addi	sp,sp,32
    800013bc:	00008067          	ret

00000000800013c0 <_Z8mem_freePv>:

    return (void*)ret;
    800013c0:	fe010113          	addi	sp,sp,-32
    800013c4:	00113c23          	sd	ra,24(sp)
    800013c8:	00813823          	sd	s0,16(sp)
    800013cc:	00913423          	sd	s1,8(sp)
    800013d0:	02010413          	addi	s0,sp,32
    800013d4:	00050493          	mv	s1,a0
}
    800013d8:	02000513          	li	a0,32
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	218080e7          	jalr	536(ra) # 800015f4 <_Znwm>
    800013e4:	00053823          	sd	zero,16(a0)
    800013e8:	00053c23          	sd	zero,24(a0)

    800013ec:	00200713          	li	a4,2
    800013f0:	00e53023          	sd	a4,0(a0)
int mem_free (void* p){
    800013f4:	00953423          	sd	s1,8(a0)
    args* arg = new args();
    arg->a0=0x02;
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	f34080e7          	jalr	-204(ra) # 8000132c <_Z7syscallP4args>
    arg->a1=(uint64)p;

    80001400:	00050513          	mv	a0,a0
    syscall(arg);
    uint64 ret;
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	01813083          	ld	ra,24(sp)
    8000140c:	01013403          	ld	s0,16(sp)
    80001410:	00813483          	ld	s1,8(sp)
    80001414:	02010113          	addi	sp,sp,32
    80001418:	00008067          	ret

000000008000141c <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"



int main(){
    8000141c:	fe010113          	addi	sp,sp,-32
    80001420:	00113c23          	sd	ra,24(sp)
    80001424:	00813823          	sd	s0,16(sp)
    80001428:	00913423          	sd	s1,8(sp)
    8000142c:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001430:	00003797          	auipc	a5,0x3
    80001434:	2d07b783          	ld	a5,720(a5) # 80004700 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001438:	10579073          	csrw	stvec,a5

    void* ptr;
    ptr = mem_alloc(300);
    8000143c:	12c00513          	li	a0,300
    80001440:	00000097          	auipc	ra,0x0
    80001444:	f18080e7          	jalr	-232(ra) # 80001358 <_Z9mem_allocm>
    80001448:	00050493          	mv	s1,a0
    if(ptr!=nullptr){
    8000144c:	00050a63          	beqz	a0,80001460 <main+0x44>
        printString("allocated \n");
    80001450:	00003517          	auipc	a0,0x3
    80001454:	bb050513          	addi	a0,a0,-1104 # 80004000 <kvmincrease+0x2b0>
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	3c0080e7          	jalr	960(ra) # 80001818 <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    80001460:	00048513          	mv	a0,s1
    80001464:	00000097          	auipc	ra,0x0
    80001468:	f5c080e7          	jalr	-164(ra) # 800013c0 <_Z8mem_freePv>
    8000146c:	02051663          	bnez	a0,80001498 <main+0x7c>
        printString("successfully freed \n");
    80001470:	00003517          	auipc	a0,0x3
    80001474:	ba050513          	addi	a0,a0,-1120 # 80004010 <kvmincrease+0x2c0>
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	3a0080e7          	jalr	928(ra) # 80001818 <_Z11printStringPKc>
    }
    else{
        printString("not freed \n");
    }
    return 0;
}
    80001480:	00000513          	li	a0,0
    80001484:	01813083          	ld	ra,24(sp)
    80001488:	01013403          	ld	s0,16(sp)
    8000148c:	00813483          	ld	s1,8(sp)
    80001490:	02010113          	addi	sp,sp,32
    80001494:	00008067          	ret
        printString("not freed \n");
    80001498:	00003517          	auipc	a0,0x3
    8000149c:	b9050513          	addi	a0,a0,-1136 # 80004028 <kvmincrease+0x2d8>
    800014a0:	00000097          	auipc	ra,0x0
    800014a4:	378080e7          	jalr	888(ra) # 80001818 <_Z11printStringPKc>
    800014a8:	fd9ff06f          	j	80001480 <main+0x64>

00000000800014ac <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800014ac:	ff010113          	addi	sp,sp,-16
    800014b0:	00813423          	sd	s0,8(sp)
    800014b4:	01010413          	addi	s0,sp,16
    800014b8:	00100793          	li	a5,1
    800014bc:	00f50863          	beq	a0,a5,800014cc <_Z41__static_initialization_and_destruction_0ii+0x20>
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret
    800014cc:	000107b7          	lui	a5,0x10
    800014d0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800014d4:	fef596e3          	bne	a1,a5,800014c0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800014d8:	00003797          	auipc	a5,0x3
    800014dc:	2a078793          	addi	a5,a5,672 # 80004778 <_ZN9Scheduler16readyThreadQueueE>
    800014e0:	0007b023          	sd	zero,0(a5)
    800014e4:	0007b423          	sd	zero,8(a5)
    800014e8:	fd9ff06f          	j	800014c0 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800014ec <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001500:	00003517          	auipc	a0,0x3
    80001504:	27853503          	ld	a0,632(a0) # 80004778 <_ZN9Scheduler16readyThreadQueueE>
    80001508:	04050263          	beqz	a0,8000154c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000150c:	00853783          	ld	a5,8(a0)
    80001510:	00003717          	auipc	a4,0x3
    80001514:	26f73423          	sd	a5,616(a4) # 80004778 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001518:	02078463          	beqz	a5,80001540 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000151c:	00053483          	ld	s1,0(a0)
        delete elem;
    80001520:	00000097          	auipc	ra,0x0
    80001524:	124080e7          	jalr	292(ra) # 80001644 <_ZdlPv>
}
    80001528:	00048513          	mv	a0,s1
    8000152c:	01813083          	ld	ra,24(sp)
    80001530:	01013403          	ld	s0,16(sp)
    80001534:	00813483          	ld	s1,8(sp)
    80001538:	02010113          	addi	sp,sp,32
    8000153c:	00008067          	ret
        if (!head) { tail = 0; }
    80001540:	00003797          	auipc	a5,0x3
    80001544:	2407b023          	sd	zero,576(a5) # 80004780 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001548:	fd5ff06f          	j	8000151c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000154c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001550:	fd9ff06f          	j	80001528 <_ZN9Scheduler3getEv+0x3c>

0000000080001554 <_ZN9Scheduler3putEP7_thread>:
{
    80001554:	fe010113          	addi	sp,sp,-32
    80001558:	00113c23          	sd	ra,24(sp)
    8000155c:	00813823          	sd	s0,16(sp)
    80001560:	00913423          	sd	s1,8(sp)
    80001564:	02010413          	addi	s0,sp,32
    80001568:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000156c:	01000513          	li	a0,16
    80001570:	00000097          	auipc	ra,0x0
    80001574:	084080e7          	jalr	132(ra) # 800015f4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001578:	00953023          	sd	s1,0(a0)
    8000157c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001580:	00003797          	auipc	a5,0x3
    80001584:	2007b783          	ld	a5,512(a5) # 80004780 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001588:	02078263          	beqz	a5,800015ac <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    8000158c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001590:	00003797          	auipc	a5,0x3
    80001594:	1ea7b823          	sd	a0,496(a5) # 80004780 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001598:	01813083          	ld	ra,24(sp)
    8000159c:	01013403          	ld	s0,16(sp)
    800015a0:	00813483          	ld	s1,8(sp)
    800015a4:	02010113          	addi	sp,sp,32
    800015a8:	00008067          	ret
            head = tail = elem;
    800015ac:	00003797          	auipc	a5,0x3
    800015b0:	1cc78793          	addi	a5,a5,460 # 80004778 <_ZN9Scheduler16readyThreadQueueE>
    800015b4:	00a7b423          	sd	a0,8(a5)
    800015b8:	00a7b023          	sd	a0,0(a5)
    800015bc:	fddff06f          	j	80001598 <_ZN9Scheduler3putEP7_thread+0x44>

00000000800015c0 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00113423          	sd	ra,8(sp)
    800015c8:	00813023          	sd	s0,0(sp)
    800015cc:	01010413          	addi	s0,sp,16
    800015d0:	000105b7          	lui	a1,0x10
    800015d4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800015d8:	00100513          	li	a0,1
    800015dc:	00000097          	auipc	ra,0x0
    800015e0:	ed0080e7          	jalr	-304(ra) # 800014ac <_Z41__static_initialization_and_destruction_0ii>
    800015e4:	00813083          	ld	ra,8(sp)
    800015e8:	00013403          	ld	s0,0(sp)
    800015ec:	01010113          	addi	sp,sp,16
    800015f0:	00008067          	ret

00000000800015f4 <_Znwm>:
#include "../h/MemoryAllocator.hpp"

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00113423          	sd	ra,8(sp)
    800015fc:	00813023          	sd	s0,0(sp)
    80001600:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001604:	00000097          	auipc	ra,0x0
    80001608:	1c4080e7          	jalr	452(ra) # 800017c8 <_ZN15MemoryAllocator10kmem_allocEm>
}
    8000160c:	00813083          	ld	ra,8(sp)
    80001610:	00013403          	ld	s0,0(sp)
    80001614:	01010113          	addi	sp,sp,16
    80001618:	00008067          	ret

000000008000161c <_Znam>:

void* operator new[](size_t n){
    8000161c:	ff010113          	addi	sp,sp,-16
    80001620:	00113423          	sd	ra,8(sp)
    80001624:	00813023          	sd	s0,0(sp)
    80001628:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    8000162c:	00000097          	auipc	ra,0x0
    80001630:	19c080e7          	jalr	412(ra) # 800017c8 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001634:	00813083          	ld	ra,8(sp)
    80001638:	00013403          	ld	s0,0(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00113423          	sd	ra,8(sp)
    8000164c:	00813023          	sd	s0,0(sp)
    80001650:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001654:	00000097          	auipc	ra,0x0
    80001658:	19c080e7          	jalr	412(ra) # 800017f0 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000165c:	00813083          	ld	ra,8(sp)
    80001660:	00013403          	ld	s0,0(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    8000167c:	00000097          	auipc	ra,0x0
    80001680:	174080e7          	jalr	372(ra) # 800017f0 <_ZN15MemoryAllocator9kmem_freeEPv>

}
    80001684:	00813083          	ld	ra,8(sp)
    80001688:	00013403          	ld	s0,0(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00113423          	sd	ra,8(sp)
    8000169c:	00813023          	sd	s0,0(sp)
    800016a0:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800016a4:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    800016a8:	00100713          	li	a4,1
    800016ac:	02e78263          	beq	a5,a4,800016d0 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    800016b0:	00200713          	li	a4,2
    800016b4:	02e78863          	beq	a5,a4,800016e4 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    800016b8:	01100713          	li	a4,17
    800016bc:	02e78e63          	beq	a5,a4,800016f8 <_ZN5Riscv14syscallHandlerEv+0x64>
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable


    }

}
    800016c0:	00813083          	ld	ra,8(sp)
    800016c4:	00013403          	ld	s0,0(sp)
    800016c8:	01010113          	addi	sp,sp,16
    800016cc:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800016d0:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    800016d4:	00000097          	auipc	ra,0x0
    800016d8:	0f4080e7          	jalr	244(ra) # 800017c8 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800016dc:	00050513          	mv	a0,a0
    800016e0:	fe1ff06f          	j	800016c0 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800016e4:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	108080e7          	jalr	264(ra) # 800017f0 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    800016f0:	00050513          	mv	a0,a0
    800016f4:	fcdff06f          	j	800016c0 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800016f8:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //read pointer to free from a1 and move it to arg1 local variable
    800016fc:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable
    80001700:	00058793          	mv	a5,a1
}
    80001704:	fbdff06f          	j	800016c0 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001708 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00813423          	sd	s0,8(sp)
    80001710:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001714:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001718:	10200073          	sret
}
    8000171c:	00813403          	ld	s0,8(sp)
    80001720:	01010113          	addi	sp,sp,16
    80001724:	00008067          	ret

0000000080001728 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001728:	fc010113          	addi	sp,sp,-64
    8000172c:	02113c23          	sd	ra,56(sp)
    80001730:	02813823          	sd	s0,48(sp)
    80001734:	02913423          	sd	s1,40(sp)
    80001738:	03213023          	sd	s2,32(sp)
    8000173c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001740:	142027f3          	csrr	a5,scause
    80001744:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001748:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    8000174c:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001750:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001754:	ff87879b          	addiw	a5,a5,-8
    80001758:	00100713          	li	a4,1
    8000175c:	00f77e63          	bgeu	a4,a5,80001778 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001760:	03813083          	ld	ra,56(sp)
    80001764:	03013403          	ld	s0,48(sp)
    80001768:	02813483          	ld	s1,40(sp)
    8000176c:	02013903          	ld	s2,32(sp)
    80001770:	04010113          	addi	sp,sp,64
    80001774:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001778:	141027f3          	csrr	a5,sepc
    8000177c:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001780:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001784:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001788:	100027f3          	csrr	a5,sstatus
    8000178c:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001790:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001794:	00400793          	li	a5,4
    80001798:	00f68c63          	beq	a3,a5,800017b0 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	ef8080e7          	jalr	-264(ra) # 80001694 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800017a4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800017a8:	14149073          	csrw	sepc,s1
}
    800017ac:	fb5ff06f          	j	80001760 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    800017b0:	00003797          	auipc	a5,0x3
    800017b4:	f607b783          	ld	a5,-160(a5) # 80004710 <_GLOBAL_OFFSET_TABLE_+0x18>
    800017b8:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	b08080e7          	jalr	-1272(ra) # 800012c4 <_ZN7_thread8dispatchEv>
    800017c4:	fe1ff06f          	j	800017a4 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

00000000800017c8 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800017d8:	00002097          	auipc	ra,0x2
    800017dc:	300080e7          	jalr	768(ra) # 80003ad8 <__mem_alloc>
}
    800017e0:	00813083          	ld	ra,8(sp)
    800017e4:	00013403          	ld	s0,0(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00113423          	sd	ra,8(sp)
    800017f8:	00813023          	sd	s0,0(sp)
    800017fc:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001800:	00002097          	auipc	ra,0x2
    80001804:	20c080e7          	jalr	524(ra) # 80003a0c <__mem_free>
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001818:	fd010113          	addi	sp,sp,-48
    8000181c:	02113423          	sd	ra,40(sp)
    80001820:	02813023          	sd	s0,32(sp)
    80001824:	00913c23          	sd	s1,24(sp)
    80001828:	01213823          	sd	s2,16(sp)
    8000182c:	03010413          	addi	s0,sp,48
    80001830:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001834:	100027f3          	csrr	a5,sstatus
    80001838:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000183c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001840:	00200793          	li	a5,2
    80001844:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001848:	0004c503          	lbu	a0,0(s1)
    8000184c:	00050a63          	beqz	a0,80001860 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001850:	00002097          	auipc	ra,0x2
    80001854:	3e0080e7          	jalr	992(ra) # 80003c30 <__putc>
        string++;
    80001858:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000185c:	fedff06f          	j	80001848 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001860:	0009091b          	sext.w	s2,s2
    80001864:	00297913          	andi	s2,s2,2
    80001868:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000186c:	10092073          	csrs	sstatus,s2
}
    80001870:	02813083          	ld	ra,40(sp)
    80001874:	02013403          	ld	s0,32(sp)
    80001878:	01813483          	ld	s1,24(sp)
    8000187c:	01013903          	ld	s2,16(sp)
    80001880:	03010113          	addi	sp,sp,48
    80001884:	00008067          	ret

0000000080001888 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001888:	fc010113          	addi	sp,sp,-64
    8000188c:	02113c23          	sd	ra,56(sp)
    80001890:	02813823          	sd	s0,48(sp)
    80001894:	02913423          	sd	s1,40(sp)
    80001898:	03213023          	sd	s2,32(sp)
    8000189c:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800018a0:	100027f3          	csrr	a5,sstatus
    800018a4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800018a8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800018ac:	00200793          	li	a5,2
    800018b0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800018b4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800018b8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800018bc:	00a00613          	li	a2,10
    800018c0:	02c5773b          	remuw	a4,a0,a2
    800018c4:	02071693          	slli	a3,a4,0x20
    800018c8:	0206d693          	srli	a3,a3,0x20
    800018cc:	00002717          	auipc	a4,0x2
    800018d0:	76c70713          	addi	a4,a4,1900 # 80004038 <_ZZ12printIntegermE6digits>
    800018d4:	00d70733          	add	a4,a4,a3
    800018d8:	00074703          	lbu	a4,0(a4)
    800018dc:	fe040693          	addi	a3,s0,-32
    800018e0:	009687b3          	add	a5,a3,s1
    800018e4:	0014849b          	addiw	s1,s1,1
    800018e8:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800018ec:	0005071b          	sext.w	a4,a0
    800018f0:	02c5553b          	divuw	a0,a0,a2
    800018f4:	00900793          	li	a5,9
    800018f8:	fce7e2e3          	bltu	a5,a4,800018bc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800018fc:	fff4849b          	addiw	s1,s1,-1
    80001900:	0004ce63          	bltz	s1,8000191c <_Z12printIntegerm+0x94>
    80001904:	fe040793          	addi	a5,s0,-32
    80001908:	009787b3          	add	a5,a5,s1
    8000190c:	ff07c503          	lbu	a0,-16(a5)
    80001910:	00002097          	auipc	ra,0x2
    80001914:	320080e7          	jalr	800(ra) # 80003c30 <__putc>
    80001918:	fe5ff06f          	j	800018fc <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000191c:	0009091b          	sext.w	s2,s2
    80001920:	00297913          	andi	s2,s2,2
    80001924:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001928:	10092073          	csrs	sstatus,s2
}
    8000192c:	03813083          	ld	ra,56(sp)
    80001930:	03013403          	ld	s0,48(sp)
    80001934:	02813483          	ld	s1,40(sp)
    80001938:	02013903          	ld	s2,32(sp)
    8000193c:	04010113          	addi	sp,sp,64
    80001940:	00008067          	ret

0000000080001944 <start>:
    80001944:	ff010113          	addi	sp,sp,-16
    80001948:	00813423          	sd	s0,8(sp)
    8000194c:	01010413          	addi	s0,sp,16
    80001950:	300027f3          	csrr	a5,mstatus
    80001954:	ffffe737          	lui	a4,0xffffe
    80001958:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8dff>
    8000195c:	00e7f7b3          	and	a5,a5,a4
    80001960:	00001737          	lui	a4,0x1
    80001964:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001968:	00e7e7b3          	or	a5,a5,a4
    8000196c:	30079073          	csrw	mstatus,a5
    80001970:	00000797          	auipc	a5,0x0
    80001974:	16078793          	addi	a5,a5,352 # 80001ad0 <system_main>
    80001978:	34179073          	csrw	mepc,a5
    8000197c:	00000793          	li	a5,0
    80001980:	18079073          	csrw	satp,a5
    80001984:	000107b7          	lui	a5,0x10
    80001988:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000198c:	30279073          	csrw	medeleg,a5
    80001990:	30379073          	csrw	mideleg,a5
    80001994:	104027f3          	csrr	a5,sie
    80001998:	2227e793          	ori	a5,a5,546
    8000199c:	10479073          	csrw	sie,a5
    800019a0:	fff00793          	li	a5,-1
    800019a4:	00a7d793          	srli	a5,a5,0xa
    800019a8:	3b079073          	csrw	pmpaddr0,a5
    800019ac:	00f00793          	li	a5,15
    800019b0:	3a079073          	csrw	pmpcfg0,a5
    800019b4:	f14027f3          	csrr	a5,mhartid
    800019b8:	0200c737          	lui	a4,0x200c
    800019bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800019c0:	0007869b          	sext.w	a3,a5
    800019c4:	00269713          	slli	a4,a3,0x2
    800019c8:	000f4637          	lui	a2,0xf4
    800019cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800019d0:	00d70733          	add	a4,a4,a3
    800019d4:	0037979b          	slliw	a5,a5,0x3
    800019d8:	020046b7          	lui	a3,0x2004
    800019dc:	00d787b3          	add	a5,a5,a3
    800019e0:	00c585b3          	add	a1,a1,a2
    800019e4:	00371693          	slli	a3,a4,0x3
    800019e8:	00003717          	auipc	a4,0x3
    800019ec:	da870713          	addi	a4,a4,-600 # 80004790 <timer_scratch>
    800019f0:	00b7b023          	sd	a1,0(a5)
    800019f4:	00d70733          	add	a4,a4,a3
    800019f8:	00f73c23          	sd	a5,24(a4)
    800019fc:	02c73023          	sd	a2,32(a4)
    80001a00:	34071073          	csrw	mscratch,a4
    80001a04:	00000797          	auipc	a5,0x0
    80001a08:	6ec78793          	addi	a5,a5,1772 # 800020f0 <timervec>
    80001a0c:	30579073          	csrw	mtvec,a5
    80001a10:	300027f3          	csrr	a5,mstatus
    80001a14:	0087e793          	ori	a5,a5,8
    80001a18:	30079073          	csrw	mstatus,a5
    80001a1c:	304027f3          	csrr	a5,mie
    80001a20:	0807e793          	ori	a5,a5,128
    80001a24:	30479073          	csrw	mie,a5
    80001a28:	f14027f3          	csrr	a5,mhartid
    80001a2c:	0007879b          	sext.w	a5,a5
    80001a30:	00078213          	mv	tp,a5
    80001a34:	30200073          	mret
    80001a38:	00813403          	ld	s0,8(sp)
    80001a3c:	01010113          	addi	sp,sp,16
    80001a40:	00008067          	ret

0000000080001a44 <timerinit>:
    80001a44:	ff010113          	addi	sp,sp,-16
    80001a48:	00813423          	sd	s0,8(sp)
    80001a4c:	01010413          	addi	s0,sp,16
    80001a50:	f14027f3          	csrr	a5,mhartid
    80001a54:	0200c737          	lui	a4,0x200c
    80001a58:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001a5c:	0007869b          	sext.w	a3,a5
    80001a60:	00269713          	slli	a4,a3,0x2
    80001a64:	000f4637          	lui	a2,0xf4
    80001a68:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001a6c:	00d70733          	add	a4,a4,a3
    80001a70:	0037979b          	slliw	a5,a5,0x3
    80001a74:	020046b7          	lui	a3,0x2004
    80001a78:	00d787b3          	add	a5,a5,a3
    80001a7c:	00c585b3          	add	a1,a1,a2
    80001a80:	00371693          	slli	a3,a4,0x3
    80001a84:	00003717          	auipc	a4,0x3
    80001a88:	d0c70713          	addi	a4,a4,-756 # 80004790 <timer_scratch>
    80001a8c:	00b7b023          	sd	a1,0(a5)
    80001a90:	00d70733          	add	a4,a4,a3
    80001a94:	00f73c23          	sd	a5,24(a4)
    80001a98:	02c73023          	sd	a2,32(a4)
    80001a9c:	34071073          	csrw	mscratch,a4
    80001aa0:	00000797          	auipc	a5,0x0
    80001aa4:	65078793          	addi	a5,a5,1616 # 800020f0 <timervec>
    80001aa8:	30579073          	csrw	mtvec,a5
    80001aac:	300027f3          	csrr	a5,mstatus
    80001ab0:	0087e793          	ori	a5,a5,8
    80001ab4:	30079073          	csrw	mstatus,a5
    80001ab8:	304027f3          	csrr	a5,mie
    80001abc:	0807e793          	ori	a5,a5,128
    80001ac0:	30479073          	csrw	mie,a5
    80001ac4:	00813403          	ld	s0,8(sp)
    80001ac8:	01010113          	addi	sp,sp,16
    80001acc:	00008067          	ret

0000000080001ad0 <system_main>:
    80001ad0:	fe010113          	addi	sp,sp,-32
    80001ad4:	00813823          	sd	s0,16(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	00113c23          	sd	ra,24(sp)
    80001ae0:	02010413          	addi	s0,sp,32
    80001ae4:	00000097          	auipc	ra,0x0
    80001ae8:	0c4080e7          	jalr	196(ra) # 80001ba8 <cpuid>
    80001aec:	00003497          	auipc	s1,0x3
    80001af0:	c4448493          	addi	s1,s1,-956 # 80004730 <started>
    80001af4:	02050263          	beqz	a0,80001b18 <system_main+0x48>
    80001af8:	0004a783          	lw	a5,0(s1)
    80001afc:	0007879b          	sext.w	a5,a5
    80001b00:	fe078ce3          	beqz	a5,80001af8 <system_main+0x28>
    80001b04:	0ff0000f          	fence
    80001b08:	00002517          	auipc	a0,0x2
    80001b0c:	57050513          	addi	a0,a0,1392 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	a7c080e7          	jalr	-1412(ra) # 8000258c <panic>
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	9d0080e7          	jalr	-1584(ra) # 800024e8 <consoleinit>
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	15c080e7          	jalr	348(ra) # 80002c7c <printfinit>
    80001b28:	00002517          	auipc	a0,0x2
    80001b2c:	63050513          	addi	a0,a0,1584 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001b30:	00001097          	auipc	ra,0x1
    80001b34:	ab8080e7          	jalr	-1352(ra) # 800025e8 <__printf>
    80001b38:	00002517          	auipc	a0,0x2
    80001b3c:	51050513          	addi	a0,a0,1296 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001b40:	00001097          	auipc	ra,0x1
    80001b44:	aa8080e7          	jalr	-1368(ra) # 800025e8 <__printf>
    80001b48:	00002517          	auipc	a0,0x2
    80001b4c:	61050513          	addi	a0,a0,1552 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	a98080e7          	jalr	-1384(ra) # 800025e8 <__printf>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	4b0080e7          	jalr	1200(ra) # 80003008 <kinit>
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	148080e7          	jalr	328(ra) # 80001ca8 <trapinit>
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	16c080e7          	jalr	364(ra) # 80001cd4 <trapinithart>
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	5c0080e7          	jalr	1472(ra) # 80002130 <plicinit>
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	5e0080e7          	jalr	1504(ra) # 80002158 <plicinithart>
    80001b80:	00000097          	auipc	ra,0x0
    80001b84:	078080e7          	jalr	120(ra) # 80001bf8 <userinit>
    80001b88:	0ff0000f          	fence
    80001b8c:	00100793          	li	a5,1
    80001b90:	00002517          	auipc	a0,0x2
    80001b94:	4d050513          	addi	a0,a0,1232 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001b98:	00f4a023          	sw	a5,0(s1)
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	a4c080e7          	jalr	-1460(ra) # 800025e8 <__printf>
    80001ba4:	0000006f          	j	80001ba4 <system_main+0xd4>

0000000080001ba8 <cpuid>:
    80001ba8:	ff010113          	addi	sp,sp,-16
    80001bac:	00813423          	sd	s0,8(sp)
    80001bb0:	01010413          	addi	s0,sp,16
    80001bb4:	00020513          	mv	a0,tp
    80001bb8:	00813403          	ld	s0,8(sp)
    80001bbc:	0005051b          	sext.w	a0,a0
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <mycpu>:
    80001bc8:	ff010113          	addi	sp,sp,-16
    80001bcc:	00813423          	sd	s0,8(sp)
    80001bd0:	01010413          	addi	s0,sp,16
    80001bd4:	00020793          	mv	a5,tp
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	0007879b          	sext.w	a5,a5
    80001be0:	00779793          	slli	a5,a5,0x7
    80001be4:	00004517          	auipc	a0,0x4
    80001be8:	bdc50513          	addi	a0,a0,-1060 # 800057c0 <cpus>
    80001bec:	00f50533          	add	a0,a0,a5
    80001bf0:	01010113          	addi	sp,sp,16
    80001bf4:	00008067          	ret

0000000080001bf8 <userinit>:
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00813423          	sd	s0,8(sp)
    80001c00:	01010413          	addi	s0,sp,16
    80001c04:	00813403          	ld	s0,8(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00000317          	auipc	t1,0x0
    80001c10:	81030067          	jr	-2032(t1) # 8000141c <main>

0000000080001c14 <either_copyout>:
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	00113423          	sd	ra,8(sp)
    80001c20:	01010413          	addi	s0,sp,16
    80001c24:	02051663          	bnez	a0,80001c50 <either_copyout+0x3c>
    80001c28:	00058513          	mv	a0,a1
    80001c2c:	00060593          	mv	a1,a2
    80001c30:	0006861b          	sext.w	a2,a3
    80001c34:	00002097          	auipc	ra,0x2
    80001c38:	c60080e7          	jalr	-928(ra) # 80003894 <__memmove>
    80001c3c:	00813083          	ld	ra,8(sp)
    80001c40:	00013403          	ld	s0,0(sp)
    80001c44:	00000513          	li	a0,0
    80001c48:	01010113          	addi	sp,sp,16
    80001c4c:	00008067          	ret
    80001c50:	00002517          	auipc	a0,0x2
    80001c54:	45050513          	addi	a0,a0,1104 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	934080e7          	jalr	-1740(ra) # 8000258c <panic>

0000000080001c60 <either_copyin>:
    80001c60:	ff010113          	addi	sp,sp,-16
    80001c64:	00813023          	sd	s0,0(sp)
    80001c68:	00113423          	sd	ra,8(sp)
    80001c6c:	01010413          	addi	s0,sp,16
    80001c70:	02059463          	bnez	a1,80001c98 <either_copyin+0x38>
    80001c74:	00060593          	mv	a1,a2
    80001c78:	0006861b          	sext.w	a2,a3
    80001c7c:	00002097          	auipc	ra,0x2
    80001c80:	c18080e7          	jalr	-1000(ra) # 80003894 <__memmove>
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	00000513          	li	a0,0
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret
    80001c98:	00002517          	auipc	a0,0x2
    80001c9c:	43050513          	addi	a0,a0,1072 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	8ec080e7          	jalr	-1812(ra) # 8000258c <panic>

0000000080001ca8 <trapinit>:
    80001ca8:	ff010113          	addi	sp,sp,-16
    80001cac:	00813423          	sd	s0,8(sp)
    80001cb0:	01010413          	addi	s0,sp,16
    80001cb4:	00813403          	ld	s0,8(sp)
    80001cb8:	00002597          	auipc	a1,0x2
    80001cbc:	43858593          	addi	a1,a1,1080 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001cc0:	00004517          	auipc	a0,0x4
    80001cc4:	b8050513          	addi	a0,a0,-1152 # 80005840 <tickslock>
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00001317          	auipc	t1,0x1
    80001cd0:	5cc30067          	jr	1484(t1) # 80003298 <initlock>

0000000080001cd4 <trapinithart>:
    80001cd4:	ff010113          	addi	sp,sp,-16
    80001cd8:	00813423          	sd	s0,8(sp)
    80001cdc:	01010413          	addi	s0,sp,16
    80001ce0:	00000797          	auipc	a5,0x0
    80001ce4:	30078793          	addi	a5,a5,768 # 80001fe0 <kernelvec>
    80001ce8:	10579073          	csrw	stvec,a5
    80001cec:	00813403          	ld	s0,8(sp)
    80001cf0:	01010113          	addi	sp,sp,16
    80001cf4:	00008067          	ret

0000000080001cf8 <usertrap>:
    80001cf8:	ff010113          	addi	sp,sp,-16
    80001cfc:	00813423          	sd	s0,8(sp)
    80001d00:	01010413          	addi	s0,sp,16
    80001d04:	00813403          	ld	s0,8(sp)
    80001d08:	01010113          	addi	sp,sp,16
    80001d0c:	00008067          	ret

0000000080001d10 <usertrapret>:
    80001d10:	ff010113          	addi	sp,sp,-16
    80001d14:	00813423          	sd	s0,8(sp)
    80001d18:	01010413          	addi	s0,sp,16
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <kerneltrap>:
    80001d28:	fe010113          	addi	sp,sp,-32
    80001d2c:	00813823          	sd	s0,16(sp)
    80001d30:	00113c23          	sd	ra,24(sp)
    80001d34:	00913423          	sd	s1,8(sp)
    80001d38:	02010413          	addi	s0,sp,32
    80001d3c:	142025f3          	csrr	a1,scause
    80001d40:	100027f3          	csrr	a5,sstatus
    80001d44:	0027f793          	andi	a5,a5,2
    80001d48:	10079c63          	bnez	a5,80001e60 <kerneltrap+0x138>
    80001d4c:	142027f3          	csrr	a5,scause
    80001d50:	0207ce63          	bltz	a5,80001d8c <kerneltrap+0x64>
    80001d54:	00002517          	auipc	a0,0x2
    80001d58:	3e450513          	addi	a0,a0,996 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	88c080e7          	jalr	-1908(ra) # 800025e8 <__printf>
    80001d64:	141025f3          	csrr	a1,sepc
    80001d68:	14302673          	csrr	a2,stval
    80001d6c:	00002517          	auipc	a0,0x2
    80001d70:	3dc50513          	addi	a0,a0,988 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	874080e7          	jalr	-1932(ra) # 800025e8 <__printf>
    80001d7c:	00002517          	auipc	a0,0x2
    80001d80:	3e450513          	addi	a0,a0,996 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	808080e7          	jalr	-2040(ra) # 8000258c <panic>
    80001d8c:	0ff7f713          	andi	a4,a5,255
    80001d90:	00900693          	li	a3,9
    80001d94:	04d70063          	beq	a4,a3,80001dd4 <kerneltrap+0xac>
    80001d98:	fff00713          	li	a4,-1
    80001d9c:	03f71713          	slli	a4,a4,0x3f
    80001da0:	00170713          	addi	a4,a4,1
    80001da4:	fae798e3          	bne	a5,a4,80001d54 <kerneltrap+0x2c>
    80001da8:	00000097          	auipc	ra,0x0
    80001dac:	e00080e7          	jalr	-512(ra) # 80001ba8 <cpuid>
    80001db0:	06050663          	beqz	a0,80001e1c <kerneltrap+0xf4>
    80001db4:	144027f3          	csrr	a5,sip
    80001db8:	ffd7f793          	andi	a5,a5,-3
    80001dbc:	14479073          	csrw	sip,a5
    80001dc0:	01813083          	ld	ra,24(sp)
    80001dc4:	01013403          	ld	s0,16(sp)
    80001dc8:	00813483          	ld	s1,8(sp)
    80001dcc:	02010113          	addi	sp,sp,32
    80001dd0:	00008067          	ret
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	3d0080e7          	jalr	976(ra) # 800021a4 <plic_claim>
    80001ddc:	00a00793          	li	a5,10
    80001de0:	00050493          	mv	s1,a0
    80001de4:	06f50863          	beq	a0,a5,80001e54 <kerneltrap+0x12c>
    80001de8:	fc050ce3          	beqz	a0,80001dc0 <kerneltrap+0x98>
    80001dec:	00050593          	mv	a1,a0
    80001df0:	00002517          	auipc	a0,0x2
    80001df4:	32850513          	addi	a0,a0,808 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001df8:	00000097          	auipc	ra,0x0
    80001dfc:	7f0080e7          	jalr	2032(ra) # 800025e8 <__printf>
    80001e00:	01013403          	ld	s0,16(sp)
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	00048513          	mv	a0,s1
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00000317          	auipc	t1,0x0
    80001e18:	3c830067          	jr	968(t1) # 800021dc <plic_complete>
    80001e1c:	00004517          	auipc	a0,0x4
    80001e20:	a2450513          	addi	a0,a0,-1500 # 80005840 <tickslock>
    80001e24:	00001097          	auipc	ra,0x1
    80001e28:	498080e7          	jalr	1176(ra) # 800032bc <acquire>
    80001e2c:	00003717          	auipc	a4,0x3
    80001e30:	90870713          	addi	a4,a4,-1784 # 80004734 <ticks>
    80001e34:	00072783          	lw	a5,0(a4)
    80001e38:	00004517          	auipc	a0,0x4
    80001e3c:	a0850513          	addi	a0,a0,-1528 # 80005840 <tickslock>
    80001e40:	0017879b          	addiw	a5,a5,1
    80001e44:	00f72023          	sw	a5,0(a4)
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	540080e7          	jalr	1344(ra) # 80003388 <release>
    80001e50:	f65ff06f          	j	80001db4 <kerneltrap+0x8c>
    80001e54:	00001097          	auipc	ra,0x1
    80001e58:	09c080e7          	jalr	156(ra) # 80002ef0 <uartintr>
    80001e5c:	fa5ff06f          	j	80001e00 <kerneltrap+0xd8>
    80001e60:	00002517          	auipc	a0,0x2
    80001e64:	29850513          	addi	a0,a0,664 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	724080e7          	jalr	1828(ra) # 8000258c <panic>

0000000080001e70 <clockintr>:
    80001e70:	fe010113          	addi	sp,sp,-32
    80001e74:	00813823          	sd	s0,16(sp)
    80001e78:	00913423          	sd	s1,8(sp)
    80001e7c:	00113c23          	sd	ra,24(sp)
    80001e80:	02010413          	addi	s0,sp,32
    80001e84:	00004497          	auipc	s1,0x4
    80001e88:	9bc48493          	addi	s1,s1,-1604 # 80005840 <tickslock>
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	42c080e7          	jalr	1068(ra) # 800032bc <acquire>
    80001e98:	00003717          	auipc	a4,0x3
    80001e9c:	89c70713          	addi	a4,a4,-1892 # 80004734 <ticks>
    80001ea0:	00072783          	lw	a5,0(a4)
    80001ea4:	01013403          	ld	s0,16(sp)
    80001ea8:	01813083          	ld	ra,24(sp)
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	0017879b          	addiw	a5,a5,1
    80001eb4:	00813483          	ld	s1,8(sp)
    80001eb8:	00f72023          	sw	a5,0(a4)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00001317          	auipc	t1,0x1
    80001ec4:	4c830067          	jr	1224(t1) # 80003388 <release>

0000000080001ec8 <devintr>:
    80001ec8:	142027f3          	csrr	a5,scause
    80001ecc:	00000513          	li	a0,0
    80001ed0:	0007c463          	bltz	a5,80001ed8 <devintr+0x10>
    80001ed4:	00008067          	ret
    80001ed8:	fe010113          	addi	sp,sp,-32
    80001edc:	00813823          	sd	s0,16(sp)
    80001ee0:	00113c23          	sd	ra,24(sp)
    80001ee4:	00913423          	sd	s1,8(sp)
    80001ee8:	02010413          	addi	s0,sp,32
    80001eec:	0ff7f713          	andi	a4,a5,255
    80001ef0:	00900693          	li	a3,9
    80001ef4:	04d70c63          	beq	a4,a3,80001f4c <devintr+0x84>
    80001ef8:	fff00713          	li	a4,-1
    80001efc:	03f71713          	slli	a4,a4,0x3f
    80001f00:	00170713          	addi	a4,a4,1
    80001f04:	00e78c63          	beq	a5,a4,80001f1c <devintr+0x54>
    80001f08:	01813083          	ld	ra,24(sp)
    80001f0c:	01013403          	ld	s0,16(sp)
    80001f10:	00813483          	ld	s1,8(sp)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00008067          	ret
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	c8c080e7          	jalr	-884(ra) # 80001ba8 <cpuid>
    80001f24:	06050663          	beqz	a0,80001f90 <devintr+0xc8>
    80001f28:	144027f3          	csrr	a5,sip
    80001f2c:	ffd7f793          	andi	a5,a5,-3
    80001f30:	14479073          	csrw	sip,a5
    80001f34:	01813083          	ld	ra,24(sp)
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	00813483          	ld	s1,8(sp)
    80001f40:	00200513          	li	a0,2
    80001f44:	02010113          	addi	sp,sp,32
    80001f48:	00008067          	ret
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	258080e7          	jalr	600(ra) # 800021a4 <plic_claim>
    80001f54:	00a00793          	li	a5,10
    80001f58:	00050493          	mv	s1,a0
    80001f5c:	06f50663          	beq	a0,a5,80001fc8 <devintr+0x100>
    80001f60:	00100513          	li	a0,1
    80001f64:	fa0482e3          	beqz	s1,80001f08 <devintr+0x40>
    80001f68:	00048593          	mv	a1,s1
    80001f6c:	00002517          	auipc	a0,0x2
    80001f70:	1ac50513          	addi	a0,a0,428 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001f74:	00000097          	auipc	ra,0x0
    80001f78:	674080e7          	jalr	1652(ra) # 800025e8 <__printf>
    80001f7c:	00048513          	mv	a0,s1
    80001f80:	00000097          	auipc	ra,0x0
    80001f84:	25c080e7          	jalr	604(ra) # 800021dc <plic_complete>
    80001f88:	00100513          	li	a0,1
    80001f8c:	f7dff06f          	j	80001f08 <devintr+0x40>
    80001f90:	00004517          	auipc	a0,0x4
    80001f94:	8b050513          	addi	a0,a0,-1872 # 80005840 <tickslock>
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	324080e7          	jalr	804(ra) # 800032bc <acquire>
    80001fa0:	00002717          	auipc	a4,0x2
    80001fa4:	79470713          	addi	a4,a4,1940 # 80004734 <ticks>
    80001fa8:	00072783          	lw	a5,0(a4)
    80001fac:	00004517          	auipc	a0,0x4
    80001fb0:	89450513          	addi	a0,a0,-1900 # 80005840 <tickslock>
    80001fb4:	0017879b          	addiw	a5,a5,1
    80001fb8:	00f72023          	sw	a5,0(a4)
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	3cc080e7          	jalr	972(ra) # 80003388 <release>
    80001fc4:	f65ff06f          	j	80001f28 <devintr+0x60>
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	f28080e7          	jalr	-216(ra) # 80002ef0 <uartintr>
    80001fd0:	fadff06f          	j	80001f7c <devintr+0xb4>
	...

0000000080001fe0 <kernelvec>:
    80001fe0:	f0010113          	addi	sp,sp,-256
    80001fe4:	00113023          	sd	ra,0(sp)
    80001fe8:	00213423          	sd	sp,8(sp)
    80001fec:	00313823          	sd	gp,16(sp)
    80001ff0:	00413c23          	sd	tp,24(sp)
    80001ff4:	02513023          	sd	t0,32(sp)
    80001ff8:	02613423          	sd	t1,40(sp)
    80001ffc:	02713823          	sd	t2,48(sp)
    80002000:	02813c23          	sd	s0,56(sp)
    80002004:	04913023          	sd	s1,64(sp)
    80002008:	04a13423          	sd	a0,72(sp)
    8000200c:	04b13823          	sd	a1,80(sp)
    80002010:	04c13c23          	sd	a2,88(sp)
    80002014:	06d13023          	sd	a3,96(sp)
    80002018:	06e13423          	sd	a4,104(sp)
    8000201c:	06f13823          	sd	a5,112(sp)
    80002020:	07013c23          	sd	a6,120(sp)
    80002024:	09113023          	sd	a7,128(sp)
    80002028:	09213423          	sd	s2,136(sp)
    8000202c:	09313823          	sd	s3,144(sp)
    80002030:	09413c23          	sd	s4,152(sp)
    80002034:	0b513023          	sd	s5,160(sp)
    80002038:	0b613423          	sd	s6,168(sp)
    8000203c:	0b713823          	sd	s7,176(sp)
    80002040:	0b813c23          	sd	s8,184(sp)
    80002044:	0d913023          	sd	s9,192(sp)
    80002048:	0da13423          	sd	s10,200(sp)
    8000204c:	0db13823          	sd	s11,208(sp)
    80002050:	0dc13c23          	sd	t3,216(sp)
    80002054:	0fd13023          	sd	t4,224(sp)
    80002058:	0fe13423          	sd	t5,232(sp)
    8000205c:	0ff13823          	sd	t6,240(sp)
    80002060:	cc9ff0ef          	jal	ra,80001d28 <kerneltrap>
    80002064:	00013083          	ld	ra,0(sp)
    80002068:	00813103          	ld	sp,8(sp)
    8000206c:	01013183          	ld	gp,16(sp)
    80002070:	02013283          	ld	t0,32(sp)
    80002074:	02813303          	ld	t1,40(sp)
    80002078:	03013383          	ld	t2,48(sp)
    8000207c:	03813403          	ld	s0,56(sp)
    80002080:	04013483          	ld	s1,64(sp)
    80002084:	04813503          	ld	a0,72(sp)
    80002088:	05013583          	ld	a1,80(sp)
    8000208c:	05813603          	ld	a2,88(sp)
    80002090:	06013683          	ld	a3,96(sp)
    80002094:	06813703          	ld	a4,104(sp)
    80002098:	07013783          	ld	a5,112(sp)
    8000209c:	07813803          	ld	a6,120(sp)
    800020a0:	08013883          	ld	a7,128(sp)
    800020a4:	08813903          	ld	s2,136(sp)
    800020a8:	09013983          	ld	s3,144(sp)
    800020ac:	09813a03          	ld	s4,152(sp)
    800020b0:	0a013a83          	ld	s5,160(sp)
    800020b4:	0a813b03          	ld	s6,168(sp)
    800020b8:	0b013b83          	ld	s7,176(sp)
    800020bc:	0b813c03          	ld	s8,184(sp)
    800020c0:	0c013c83          	ld	s9,192(sp)
    800020c4:	0c813d03          	ld	s10,200(sp)
    800020c8:	0d013d83          	ld	s11,208(sp)
    800020cc:	0d813e03          	ld	t3,216(sp)
    800020d0:	0e013e83          	ld	t4,224(sp)
    800020d4:	0e813f03          	ld	t5,232(sp)
    800020d8:	0f013f83          	ld	t6,240(sp)
    800020dc:	10010113          	addi	sp,sp,256
    800020e0:	10200073          	sret
    800020e4:	00000013          	nop
    800020e8:	00000013          	nop
    800020ec:	00000013          	nop

00000000800020f0 <timervec>:
    800020f0:	34051573          	csrrw	a0,mscratch,a0
    800020f4:	00b53023          	sd	a1,0(a0)
    800020f8:	00c53423          	sd	a2,8(a0)
    800020fc:	00d53823          	sd	a3,16(a0)
    80002100:	01853583          	ld	a1,24(a0)
    80002104:	02053603          	ld	a2,32(a0)
    80002108:	0005b683          	ld	a3,0(a1)
    8000210c:	00c686b3          	add	a3,a3,a2
    80002110:	00d5b023          	sd	a3,0(a1)
    80002114:	00200593          	li	a1,2
    80002118:	14459073          	csrw	sip,a1
    8000211c:	01053683          	ld	a3,16(a0)
    80002120:	00853603          	ld	a2,8(a0)
    80002124:	00053583          	ld	a1,0(a0)
    80002128:	34051573          	csrrw	a0,mscratch,a0
    8000212c:	30200073          	mret

0000000080002130 <plicinit>:
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00813423          	sd	s0,8(sp)
    80002138:	01010413          	addi	s0,sp,16
    8000213c:	00813403          	ld	s0,8(sp)
    80002140:	0c0007b7          	lui	a5,0xc000
    80002144:	00100713          	li	a4,1
    80002148:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000214c:	00e7a223          	sw	a4,4(a5)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <plicinithart>:
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00813023          	sd	s0,0(sp)
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	01010413          	addi	s0,sp,16
    80002168:	00000097          	auipc	ra,0x0
    8000216c:	a40080e7          	jalr	-1472(ra) # 80001ba8 <cpuid>
    80002170:	0085171b          	slliw	a4,a0,0x8
    80002174:	0c0027b7          	lui	a5,0xc002
    80002178:	00e787b3          	add	a5,a5,a4
    8000217c:	40200713          	li	a4,1026
    80002180:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002184:	00813083          	ld	ra,8(sp)
    80002188:	00013403          	ld	s0,0(sp)
    8000218c:	00d5151b          	slliw	a0,a0,0xd
    80002190:	0c2017b7          	lui	a5,0xc201
    80002194:	00a78533          	add	a0,a5,a0
    80002198:	00052023          	sw	zero,0(a0)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret

00000000800021a4 <plic_claim>:
    800021a4:	ff010113          	addi	sp,sp,-16
    800021a8:	00813023          	sd	s0,0(sp)
    800021ac:	00113423          	sd	ra,8(sp)
    800021b0:	01010413          	addi	s0,sp,16
    800021b4:	00000097          	auipc	ra,0x0
    800021b8:	9f4080e7          	jalr	-1548(ra) # 80001ba8 <cpuid>
    800021bc:	00813083          	ld	ra,8(sp)
    800021c0:	00013403          	ld	s0,0(sp)
    800021c4:	00d5151b          	slliw	a0,a0,0xd
    800021c8:	0c2017b7          	lui	a5,0xc201
    800021cc:	00a78533          	add	a0,a5,a0
    800021d0:	00452503          	lw	a0,4(a0)
    800021d4:	01010113          	addi	sp,sp,16
    800021d8:	00008067          	ret

00000000800021dc <plic_complete>:
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00813823          	sd	s0,16(sp)
    800021e4:	00913423          	sd	s1,8(sp)
    800021e8:	00113c23          	sd	ra,24(sp)
    800021ec:	02010413          	addi	s0,sp,32
    800021f0:	00050493          	mv	s1,a0
    800021f4:	00000097          	auipc	ra,0x0
    800021f8:	9b4080e7          	jalr	-1612(ra) # 80001ba8 <cpuid>
    800021fc:	01813083          	ld	ra,24(sp)
    80002200:	01013403          	ld	s0,16(sp)
    80002204:	00d5179b          	slliw	a5,a0,0xd
    80002208:	0c201737          	lui	a4,0xc201
    8000220c:	00f707b3          	add	a5,a4,a5
    80002210:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002214:	00813483          	ld	s1,8(sp)
    80002218:	02010113          	addi	sp,sp,32
    8000221c:	00008067          	ret

0000000080002220 <consolewrite>:
    80002220:	fb010113          	addi	sp,sp,-80
    80002224:	04813023          	sd	s0,64(sp)
    80002228:	04113423          	sd	ra,72(sp)
    8000222c:	02913c23          	sd	s1,56(sp)
    80002230:	03213823          	sd	s2,48(sp)
    80002234:	03313423          	sd	s3,40(sp)
    80002238:	03413023          	sd	s4,32(sp)
    8000223c:	01513c23          	sd	s5,24(sp)
    80002240:	05010413          	addi	s0,sp,80
    80002244:	06c05c63          	blez	a2,800022bc <consolewrite+0x9c>
    80002248:	00060993          	mv	s3,a2
    8000224c:	00050a13          	mv	s4,a0
    80002250:	00058493          	mv	s1,a1
    80002254:	00000913          	li	s2,0
    80002258:	fff00a93          	li	s5,-1
    8000225c:	01c0006f          	j	80002278 <consolewrite+0x58>
    80002260:	fbf44503          	lbu	a0,-65(s0)
    80002264:	0019091b          	addiw	s2,s2,1
    80002268:	00148493          	addi	s1,s1,1
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	a9c080e7          	jalr	-1380(ra) # 80002d08 <uartputc>
    80002274:	03298063          	beq	s3,s2,80002294 <consolewrite+0x74>
    80002278:	00048613          	mv	a2,s1
    8000227c:	00100693          	li	a3,1
    80002280:	000a0593          	mv	a1,s4
    80002284:	fbf40513          	addi	a0,s0,-65
    80002288:	00000097          	auipc	ra,0x0
    8000228c:	9d8080e7          	jalr	-1576(ra) # 80001c60 <either_copyin>
    80002290:	fd5518e3          	bne	a0,s5,80002260 <consolewrite+0x40>
    80002294:	04813083          	ld	ra,72(sp)
    80002298:	04013403          	ld	s0,64(sp)
    8000229c:	03813483          	ld	s1,56(sp)
    800022a0:	02813983          	ld	s3,40(sp)
    800022a4:	02013a03          	ld	s4,32(sp)
    800022a8:	01813a83          	ld	s5,24(sp)
    800022ac:	00090513          	mv	a0,s2
    800022b0:	03013903          	ld	s2,48(sp)
    800022b4:	05010113          	addi	sp,sp,80
    800022b8:	00008067          	ret
    800022bc:	00000913          	li	s2,0
    800022c0:	fd5ff06f          	j	80002294 <consolewrite+0x74>

00000000800022c4 <consoleread>:
    800022c4:	f9010113          	addi	sp,sp,-112
    800022c8:	06813023          	sd	s0,96(sp)
    800022cc:	04913c23          	sd	s1,88(sp)
    800022d0:	05213823          	sd	s2,80(sp)
    800022d4:	05313423          	sd	s3,72(sp)
    800022d8:	05413023          	sd	s4,64(sp)
    800022dc:	03513c23          	sd	s5,56(sp)
    800022e0:	03613823          	sd	s6,48(sp)
    800022e4:	03713423          	sd	s7,40(sp)
    800022e8:	03813023          	sd	s8,32(sp)
    800022ec:	06113423          	sd	ra,104(sp)
    800022f0:	01913c23          	sd	s9,24(sp)
    800022f4:	07010413          	addi	s0,sp,112
    800022f8:	00060b93          	mv	s7,a2
    800022fc:	00050913          	mv	s2,a0
    80002300:	00058c13          	mv	s8,a1
    80002304:	00060b1b          	sext.w	s6,a2
    80002308:	00003497          	auipc	s1,0x3
    8000230c:	56048493          	addi	s1,s1,1376 # 80005868 <cons>
    80002310:	00400993          	li	s3,4
    80002314:	fff00a13          	li	s4,-1
    80002318:	00a00a93          	li	s5,10
    8000231c:	05705e63          	blez	s7,80002378 <consoleread+0xb4>
    80002320:	09c4a703          	lw	a4,156(s1)
    80002324:	0984a783          	lw	a5,152(s1)
    80002328:	0007071b          	sext.w	a4,a4
    8000232c:	08e78463          	beq	a5,a4,800023b4 <consoleread+0xf0>
    80002330:	07f7f713          	andi	a4,a5,127
    80002334:	00e48733          	add	a4,s1,a4
    80002338:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000233c:	0017869b          	addiw	a3,a5,1
    80002340:	08d4ac23          	sw	a3,152(s1)
    80002344:	00070c9b          	sext.w	s9,a4
    80002348:	0b370663          	beq	a4,s3,800023f4 <consoleread+0x130>
    8000234c:	00100693          	li	a3,1
    80002350:	f9f40613          	addi	a2,s0,-97
    80002354:	000c0593          	mv	a1,s8
    80002358:	00090513          	mv	a0,s2
    8000235c:	f8e40fa3          	sb	a4,-97(s0)
    80002360:	00000097          	auipc	ra,0x0
    80002364:	8b4080e7          	jalr	-1868(ra) # 80001c14 <either_copyout>
    80002368:	01450863          	beq	a0,s4,80002378 <consoleread+0xb4>
    8000236c:	001c0c13          	addi	s8,s8,1
    80002370:	fffb8b9b          	addiw	s7,s7,-1
    80002374:	fb5c94e3          	bne	s9,s5,8000231c <consoleread+0x58>
    80002378:	000b851b          	sext.w	a0,s7
    8000237c:	06813083          	ld	ra,104(sp)
    80002380:	06013403          	ld	s0,96(sp)
    80002384:	05813483          	ld	s1,88(sp)
    80002388:	05013903          	ld	s2,80(sp)
    8000238c:	04813983          	ld	s3,72(sp)
    80002390:	04013a03          	ld	s4,64(sp)
    80002394:	03813a83          	ld	s5,56(sp)
    80002398:	02813b83          	ld	s7,40(sp)
    8000239c:	02013c03          	ld	s8,32(sp)
    800023a0:	01813c83          	ld	s9,24(sp)
    800023a4:	40ab053b          	subw	a0,s6,a0
    800023a8:	03013b03          	ld	s6,48(sp)
    800023ac:	07010113          	addi	sp,sp,112
    800023b0:	00008067          	ret
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	1d8080e7          	jalr	472(ra) # 8000358c <push_on>
    800023bc:	0984a703          	lw	a4,152(s1)
    800023c0:	09c4a783          	lw	a5,156(s1)
    800023c4:	0007879b          	sext.w	a5,a5
    800023c8:	fef70ce3          	beq	a4,a5,800023c0 <consoleread+0xfc>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	234080e7          	jalr	564(ra) # 80003600 <pop_on>
    800023d4:	0984a783          	lw	a5,152(s1)
    800023d8:	07f7f713          	andi	a4,a5,127
    800023dc:	00e48733          	add	a4,s1,a4
    800023e0:	01874703          	lbu	a4,24(a4)
    800023e4:	0017869b          	addiw	a3,a5,1
    800023e8:	08d4ac23          	sw	a3,152(s1)
    800023ec:	00070c9b          	sext.w	s9,a4
    800023f0:	f5371ee3          	bne	a4,s3,8000234c <consoleread+0x88>
    800023f4:	000b851b          	sext.w	a0,s7
    800023f8:	f96bf2e3          	bgeu	s7,s6,8000237c <consoleread+0xb8>
    800023fc:	08f4ac23          	sw	a5,152(s1)
    80002400:	f7dff06f          	j	8000237c <consoleread+0xb8>

0000000080002404 <consputc>:
    80002404:	10000793          	li	a5,256
    80002408:	00f50663          	beq	a0,a5,80002414 <consputc+0x10>
    8000240c:	00001317          	auipc	t1,0x1
    80002410:	9f430067          	jr	-1548(t1) # 80002e00 <uartputc_sync>
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
    80002424:	00800513          	li	a0,8
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	9d8080e7          	jalr	-1576(ra) # 80002e00 <uartputc_sync>
    80002430:	02000513          	li	a0,32
    80002434:	00001097          	auipc	ra,0x1
    80002438:	9cc080e7          	jalr	-1588(ra) # 80002e00 <uartputc_sync>
    8000243c:	00013403          	ld	s0,0(sp)
    80002440:	00813083          	ld	ra,8(sp)
    80002444:	00800513          	li	a0,8
    80002448:	01010113          	addi	sp,sp,16
    8000244c:	00001317          	auipc	t1,0x1
    80002450:	9b430067          	jr	-1612(t1) # 80002e00 <uartputc_sync>

0000000080002454 <consoleintr>:
    80002454:	fe010113          	addi	sp,sp,-32
    80002458:	00813823          	sd	s0,16(sp)
    8000245c:	00913423          	sd	s1,8(sp)
    80002460:	01213023          	sd	s2,0(sp)
    80002464:	00113c23          	sd	ra,24(sp)
    80002468:	02010413          	addi	s0,sp,32
    8000246c:	00003917          	auipc	s2,0x3
    80002470:	3fc90913          	addi	s2,s2,1020 # 80005868 <cons>
    80002474:	00050493          	mv	s1,a0
    80002478:	00090513          	mv	a0,s2
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	e40080e7          	jalr	-448(ra) # 800032bc <acquire>
    80002484:	02048c63          	beqz	s1,800024bc <consoleintr+0x68>
    80002488:	0a092783          	lw	a5,160(s2)
    8000248c:	09892703          	lw	a4,152(s2)
    80002490:	07f00693          	li	a3,127
    80002494:	40e7873b          	subw	a4,a5,a4
    80002498:	02e6e263          	bltu	a3,a4,800024bc <consoleintr+0x68>
    8000249c:	00d00713          	li	a4,13
    800024a0:	04e48063          	beq	s1,a4,800024e0 <consoleintr+0x8c>
    800024a4:	07f7f713          	andi	a4,a5,127
    800024a8:	00e90733          	add	a4,s2,a4
    800024ac:	0017879b          	addiw	a5,a5,1
    800024b0:	0af92023          	sw	a5,160(s2)
    800024b4:	00970c23          	sb	s1,24(a4)
    800024b8:	08f92e23          	sw	a5,156(s2)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	01813083          	ld	ra,24(sp)
    800024c4:	00813483          	ld	s1,8(sp)
    800024c8:	00013903          	ld	s2,0(sp)
    800024cc:	00003517          	auipc	a0,0x3
    800024d0:	39c50513          	addi	a0,a0,924 # 80005868 <cons>
    800024d4:	02010113          	addi	sp,sp,32
    800024d8:	00001317          	auipc	t1,0x1
    800024dc:	eb030067          	jr	-336(t1) # 80003388 <release>
    800024e0:	00a00493          	li	s1,10
    800024e4:	fc1ff06f          	j	800024a4 <consoleintr+0x50>

00000000800024e8 <consoleinit>:
    800024e8:	fe010113          	addi	sp,sp,-32
    800024ec:	00113c23          	sd	ra,24(sp)
    800024f0:	00813823          	sd	s0,16(sp)
    800024f4:	00913423          	sd	s1,8(sp)
    800024f8:	02010413          	addi	s0,sp,32
    800024fc:	00003497          	auipc	s1,0x3
    80002500:	36c48493          	addi	s1,s1,876 # 80005868 <cons>
    80002504:	00048513          	mv	a0,s1
    80002508:	00002597          	auipc	a1,0x2
    8000250c:	c6858593          	addi	a1,a1,-920 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    80002510:	00001097          	auipc	ra,0x1
    80002514:	d88080e7          	jalr	-632(ra) # 80003298 <initlock>
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	7ac080e7          	jalr	1964(ra) # 80002cc4 <uartinit>
    80002520:	01813083          	ld	ra,24(sp)
    80002524:	01013403          	ld	s0,16(sp)
    80002528:	00000797          	auipc	a5,0x0
    8000252c:	d9c78793          	addi	a5,a5,-612 # 800022c4 <consoleread>
    80002530:	0af4bc23          	sd	a5,184(s1)
    80002534:	00000797          	auipc	a5,0x0
    80002538:	cec78793          	addi	a5,a5,-788 # 80002220 <consolewrite>
    8000253c:	0cf4b023          	sd	a5,192(s1)
    80002540:	00813483          	ld	s1,8(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00008067          	ret

000000008000254c <console_read>:
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00813423          	sd	s0,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00813403          	ld	s0,8(sp)
    8000255c:	00003317          	auipc	t1,0x3
    80002560:	3c433303          	ld	t1,964(t1) # 80005920 <devsw+0x10>
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00030067          	jr	t1

000000008000256c <console_write>:
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00813423          	sd	s0,8(sp)
    80002574:	01010413          	addi	s0,sp,16
    80002578:	00813403          	ld	s0,8(sp)
    8000257c:	00003317          	auipc	t1,0x3
    80002580:	3ac33303          	ld	t1,940(t1) # 80005928 <devsw+0x18>
    80002584:	01010113          	addi	sp,sp,16
    80002588:	00030067          	jr	t1

000000008000258c <panic>:
    8000258c:	fe010113          	addi	sp,sp,-32
    80002590:	00113c23          	sd	ra,24(sp)
    80002594:	00813823          	sd	s0,16(sp)
    80002598:	00913423          	sd	s1,8(sp)
    8000259c:	02010413          	addi	s0,sp,32
    800025a0:	00050493          	mv	s1,a0
    800025a4:	00002517          	auipc	a0,0x2
    800025a8:	bd450513          	addi	a0,a0,-1068 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    800025ac:	00003797          	auipc	a5,0x3
    800025b0:	4007ae23          	sw	zero,1052(a5) # 800059c8 <pr+0x18>
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	034080e7          	jalr	52(ra) # 800025e8 <__printf>
    800025bc:	00048513          	mv	a0,s1
    800025c0:	00000097          	auipc	ra,0x0
    800025c4:	028080e7          	jalr	40(ra) # 800025e8 <__printf>
    800025c8:	00002517          	auipc	a0,0x2
    800025cc:	b9050513          	addi	a0,a0,-1136 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800025d0:	00000097          	auipc	ra,0x0
    800025d4:	018080e7          	jalr	24(ra) # 800025e8 <__printf>
    800025d8:	00100793          	li	a5,1
    800025dc:	00002717          	auipc	a4,0x2
    800025e0:	14f72e23          	sw	a5,348(a4) # 80004738 <panicked>
    800025e4:	0000006f          	j	800025e4 <panic+0x58>

00000000800025e8 <__printf>:
    800025e8:	f3010113          	addi	sp,sp,-208
    800025ec:	08813023          	sd	s0,128(sp)
    800025f0:	07313423          	sd	s3,104(sp)
    800025f4:	09010413          	addi	s0,sp,144
    800025f8:	05813023          	sd	s8,64(sp)
    800025fc:	08113423          	sd	ra,136(sp)
    80002600:	06913c23          	sd	s1,120(sp)
    80002604:	07213823          	sd	s2,112(sp)
    80002608:	07413023          	sd	s4,96(sp)
    8000260c:	05513c23          	sd	s5,88(sp)
    80002610:	05613823          	sd	s6,80(sp)
    80002614:	05713423          	sd	s7,72(sp)
    80002618:	03913c23          	sd	s9,56(sp)
    8000261c:	03a13823          	sd	s10,48(sp)
    80002620:	03b13423          	sd	s11,40(sp)
    80002624:	00003317          	auipc	t1,0x3
    80002628:	38c30313          	addi	t1,t1,908 # 800059b0 <pr>
    8000262c:	01832c03          	lw	s8,24(t1)
    80002630:	00b43423          	sd	a1,8(s0)
    80002634:	00c43823          	sd	a2,16(s0)
    80002638:	00d43c23          	sd	a3,24(s0)
    8000263c:	02e43023          	sd	a4,32(s0)
    80002640:	02f43423          	sd	a5,40(s0)
    80002644:	03043823          	sd	a6,48(s0)
    80002648:	03143c23          	sd	a7,56(s0)
    8000264c:	00050993          	mv	s3,a0
    80002650:	4a0c1663          	bnez	s8,80002afc <__printf+0x514>
    80002654:	60098c63          	beqz	s3,80002c6c <__printf+0x684>
    80002658:	0009c503          	lbu	a0,0(s3)
    8000265c:	00840793          	addi	a5,s0,8
    80002660:	f6f43c23          	sd	a5,-136(s0)
    80002664:	00000493          	li	s1,0
    80002668:	22050063          	beqz	a0,80002888 <__printf+0x2a0>
    8000266c:	00002a37          	lui	s4,0x2
    80002670:	00018ab7          	lui	s5,0x18
    80002674:	000f4b37          	lui	s6,0xf4
    80002678:	00989bb7          	lui	s7,0x989
    8000267c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002680:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002684:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002688:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000268c:	00148c9b          	addiw	s9,s1,1
    80002690:	02500793          	li	a5,37
    80002694:	01998933          	add	s2,s3,s9
    80002698:	38f51263          	bne	a0,a5,80002a1c <__printf+0x434>
    8000269c:	00094783          	lbu	a5,0(s2)
    800026a0:	00078c9b          	sext.w	s9,a5
    800026a4:	1e078263          	beqz	a5,80002888 <__printf+0x2a0>
    800026a8:	0024849b          	addiw	s1,s1,2
    800026ac:	07000713          	li	a4,112
    800026b0:	00998933          	add	s2,s3,s1
    800026b4:	38e78a63          	beq	a5,a4,80002a48 <__printf+0x460>
    800026b8:	20f76863          	bltu	a4,a5,800028c8 <__printf+0x2e0>
    800026bc:	42a78863          	beq	a5,a0,80002aec <__printf+0x504>
    800026c0:	06400713          	li	a4,100
    800026c4:	40e79663          	bne	a5,a4,80002ad0 <__printf+0x4e8>
    800026c8:	f7843783          	ld	a5,-136(s0)
    800026cc:	0007a603          	lw	a2,0(a5)
    800026d0:	00878793          	addi	a5,a5,8
    800026d4:	f6f43c23          	sd	a5,-136(s0)
    800026d8:	42064a63          	bltz	a2,80002b0c <__printf+0x524>
    800026dc:	00a00713          	li	a4,10
    800026e0:	02e677bb          	remuw	a5,a2,a4
    800026e4:	00002d97          	auipc	s11,0x2
    800026e8:	abcd8d93          	addi	s11,s11,-1348 # 800041a0 <digits>
    800026ec:	00900593          	li	a1,9
    800026f0:	0006051b          	sext.w	a0,a2
    800026f4:	00000c93          	li	s9,0
    800026f8:	02079793          	slli	a5,a5,0x20
    800026fc:	0207d793          	srli	a5,a5,0x20
    80002700:	00fd87b3          	add	a5,s11,a5
    80002704:	0007c783          	lbu	a5,0(a5)
    80002708:	02e656bb          	divuw	a3,a2,a4
    8000270c:	f8f40023          	sb	a5,-128(s0)
    80002710:	14c5d863          	bge	a1,a2,80002860 <__printf+0x278>
    80002714:	06300593          	li	a1,99
    80002718:	00100c93          	li	s9,1
    8000271c:	02e6f7bb          	remuw	a5,a3,a4
    80002720:	02079793          	slli	a5,a5,0x20
    80002724:	0207d793          	srli	a5,a5,0x20
    80002728:	00fd87b3          	add	a5,s11,a5
    8000272c:	0007c783          	lbu	a5,0(a5)
    80002730:	02e6d73b          	divuw	a4,a3,a4
    80002734:	f8f400a3          	sb	a5,-127(s0)
    80002738:	12a5f463          	bgeu	a1,a0,80002860 <__printf+0x278>
    8000273c:	00a00693          	li	a3,10
    80002740:	00900593          	li	a1,9
    80002744:	02d777bb          	remuw	a5,a4,a3
    80002748:	02079793          	slli	a5,a5,0x20
    8000274c:	0207d793          	srli	a5,a5,0x20
    80002750:	00fd87b3          	add	a5,s11,a5
    80002754:	0007c503          	lbu	a0,0(a5)
    80002758:	02d757bb          	divuw	a5,a4,a3
    8000275c:	f8a40123          	sb	a0,-126(s0)
    80002760:	48e5f263          	bgeu	a1,a4,80002be4 <__printf+0x5fc>
    80002764:	06300513          	li	a0,99
    80002768:	02d7f5bb          	remuw	a1,a5,a3
    8000276c:	02059593          	slli	a1,a1,0x20
    80002770:	0205d593          	srli	a1,a1,0x20
    80002774:	00bd85b3          	add	a1,s11,a1
    80002778:	0005c583          	lbu	a1,0(a1)
    8000277c:	02d7d7bb          	divuw	a5,a5,a3
    80002780:	f8b401a3          	sb	a1,-125(s0)
    80002784:	48e57263          	bgeu	a0,a4,80002c08 <__printf+0x620>
    80002788:	3e700513          	li	a0,999
    8000278c:	02d7f5bb          	remuw	a1,a5,a3
    80002790:	02059593          	slli	a1,a1,0x20
    80002794:	0205d593          	srli	a1,a1,0x20
    80002798:	00bd85b3          	add	a1,s11,a1
    8000279c:	0005c583          	lbu	a1,0(a1)
    800027a0:	02d7d7bb          	divuw	a5,a5,a3
    800027a4:	f8b40223          	sb	a1,-124(s0)
    800027a8:	46e57663          	bgeu	a0,a4,80002c14 <__printf+0x62c>
    800027ac:	02d7f5bb          	remuw	a1,a5,a3
    800027b0:	02059593          	slli	a1,a1,0x20
    800027b4:	0205d593          	srli	a1,a1,0x20
    800027b8:	00bd85b3          	add	a1,s11,a1
    800027bc:	0005c583          	lbu	a1,0(a1)
    800027c0:	02d7d7bb          	divuw	a5,a5,a3
    800027c4:	f8b402a3          	sb	a1,-123(s0)
    800027c8:	46ea7863          	bgeu	s4,a4,80002c38 <__printf+0x650>
    800027cc:	02d7f5bb          	remuw	a1,a5,a3
    800027d0:	02059593          	slli	a1,a1,0x20
    800027d4:	0205d593          	srli	a1,a1,0x20
    800027d8:	00bd85b3          	add	a1,s11,a1
    800027dc:	0005c583          	lbu	a1,0(a1)
    800027e0:	02d7d7bb          	divuw	a5,a5,a3
    800027e4:	f8b40323          	sb	a1,-122(s0)
    800027e8:	3eeaf863          	bgeu	s5,a4,80002bd8 <__printf+0x5f0>
    800027ec:	02d7f5bb          	remuw	a1,a5,a3
    800027f0:	02059593          	slli	a1,a1,0x20
    800027f4:	0205d593          	srli	a1,a1,0x20
    800027f8:	00bd85b3          	add	a1,s11,a1
    800027fc:	0005c583          	lbu	a1,0(a1)
    80002800:	02d7d7bb          	divuw	a5,a5,a3
    80002804:	f8b403a3          	sb	a1,-121(s0)
    80002808:	42eb7e63          	bgeu	s6,a4,80002c44 <__printf+0x65c>
    8000280c:	02d7f5bb          	remuw	a1,a5,a3
    80002810:	02059593          	slli	a1,a1,0x20
    80002814:	0205d593          	srli	a1,a1,0x20
    80002818:	00bd85b3          	add	a1,s11,a1
    8000281c:	0005c583          	lbu	a1,0(a1)
    80002820:	02d7d7bb          	divuw	a5,a5,a3
    80002824:	f8b40423          	sb	a1,-120(s0)
    80002828:	42ebfc63          	bgeu	s7,a4,80002c60 <__printf+0x678>
    8000282c:	02079793          	slli	a5,a5,0x20
    80002830:	0207d793          	srli	a5,a5,0x20
    80002834:	00fd8db3          	add	s11,s11,a5
    80002838:	000dc703          	lbu	a4,0(s11)
    8000283c:	00a00793          	li	a5,10
    80002840:	00900c93          	li	s9,9
    80002844:	f8e404a3          	sb	a4,-119(s0)
    80002848:	00065c63          	bgez	a2,80002860 <__printf+0x278>
    8000284c:	f9040713          	addi	a4,s0,-112
    80002850:	00f70733          	add	a4,a4,a5
    80002854:	02d00693          	li	a3,45
    80002858:	fed70823          	sb	a3,-16(a4)
    8000285c:	00078c93          	mv	s9,a5
    80002860:	f8040793          	addi	a5,s0,-128
    80002864:	01978cb3          	add	s9,a5,s9
    80002868:	f7f40d13          	addi	s10,s0,-129
    8000286c:	000cc503          	lbu	a0,0(s9)
    80002870:	fffc8c93          	addi	s9,s9,-1
    80002874:	00000097          	auipc	ra,0x0
    80002878:	b90080e7          	jalr	-1136(ra) # 80002404 <consputc>
    8000287c:	ffac98e3          	bne	s9,s10,8000286c <__printf+0x284>
    80002880:	00094503          	lbu	a0,0(s2)
    80002884:	e00514e3          	bnez	a0,8000268c <__printf+0xa4>
    80002888:	1a0c1663          	bnez	s8,80002a34 <__printf+0x44c>
    8000288c:	08813083          	ld	ra,136(sp)
    80002890:	08013403          	ld	s0,128(sp)
    80002894:	07813483          	ld	s1,120(sp)
    80002898:	07013903          	ld	s2,112(sp)
    8000289c:	06813983          	ld	s3,104(sp)
    800028a0:	06013a03          	ld	s4,96(sp)
    800028a4:	05813a83          	ld	s5,88(sp)
    800028a8:	05013b03          	ld	s6,80(sp)
    800028ac:	04813b83          	ld	s7,72(sp)
    800028b0:	04013c03          	ld	s8,64(sp)
    800028b4:	03813c83          	ld	s9,56(sp)
    800028b8:	03013d03          	ld	s10,48(sp)
    800028bc:	02813d83          	ld	s11,40(sp)
    800028c0:	0d010113          	addi	sp,sp,208
    800028c4:	00008067          	ret
    800028c8:	07300713          	li	a4,115
    800028cc:	1ce78a63          	beq	a5,a4,80002aa0 <__printf+0x4b8>
    800028d0:	07800713          	li	a4,120
    800028d4:	1ee79e63          	bne	a5,a4,80002ad0 <__printf+0x4e8>
    800028d8:	f7843783          	ld	a5,-136(s0)
    800028dc:	0007a703          	lw	a4,0(a5)
    800028e0:	00878793          	addi	a5,a5,8
    800028e4:	f6f43c23          	sd	a5,-136(s0)
    800028e8:	28074263          	bltz	a4,80002b6c <__printf+0x584>
    800028ec:	00002d97          	auipc	s11,0x2
    800028f0:	8b4d8d93          	addi	s11,s11,-1868 # 800041a0 <digits>
    800028f4:	00f77793          	andi	a5,a4,15
    800028f8:	00fd87b3          	add	a5,s11,a5
    800028fc:	0007c683          	lbu	a3,0(a5)
    80002900:	00f00613          	li	a2,15
    80002904:	0007079b          	sext.w	a5,a4
    80002908:	f8d40023          	sb	a3,-128(s0)
    8000290c:	0047559b          	srliw	a1,a4,0x4
    80002910:	0047569b          	srliw	a3,a4,0x4
    80002914:	00000c93          	li	s9,0
    80002918:	0ee65063          	bge	a2,a4,800029f8 <__printf+0x410>
    8000291c:	00f6f693          	andi	a3,a3,15
    80002920:	00dd86b3          	add	a3,s11,a3
    80002924:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002928:	0087d79b          	srliw	a5,a5,0x8
    8000292c:	00100c93          	li	s9,1
    80002930:	f8d400a3          	sb	a3,-127(s0)
    80002934:	0cb67263          	bgeu	a2,a1,800029f8 <__printf+0x410>
    80002938:	00f7f693          	andi	a3,a5,15
    8000293c:	00dd86b3          	add	a3,s11,a3
    80002940:	0006c583          	lbu	a1,0(a3)
    80002944:	00f00613          	li	a2,15
    80002948:	0047d69b          	srliw	a3,a5,0x4
    8000294c:	f8b40123          	sb	a1,-126(s0)
    80002950:	0047d593          	srli	a1,a5,0x4
    80002954:	28f67e63          	bgeu	a2,a5,80002bf0 <__printf+0x608>
    80002958:	00f6f693          	andi	a3,a3,15
    8000295c:	00dd86b3          	add	a3,s11,a3
    80002960:	0006c503          	lbu	a0,0(a3)
    80002964:	0087d813          	srli	a6,a5,0x8
    80002968:	0087d69b          	srliw	a3,a5,0x8
    8000296c:	f8a401a3          	sb	a0,-125(s0)
    80002970:	28b67663          	bgeu	a2,a1,80002bfc <__printf+0x614>
    80002974:	00f6f693          	andi	a3,a3,15
    80002978:	00dd86b3          	add	a3,s11,a3
    8000297c:	0006c583          	lbu	a1,0(a3)
    80002980:	00c7d513          	srli	a0,a5,0xc
    80002984:	00c7d69b          	srliw	a3,a5,0xc
    80002988:	f8b40223          	sb	a1,-124(s0)
    8000298c:	29067a63          	bgeu	a2,a6,80002c20 <__printf+0x638>
    80002990:	00f6f693          	andi	a3,a3,15
    80002994:	00dd86b3          	add	a3,s11,a3
    80002998:	0006c583          	lbu	a1,0(a3)
    8000299c:	0107d813          	srli	a6,a5,0x10
    800029a0:	0107d69b          	srliw	a3,a5,0x10
    800029a4:	f8b402a3          	sb	a1,-123(s0)
    800029a8:	28a67263          	bgeu	a2,a0,80002c2c <__printf+0x644>
    800029ac:	00f6f693          	andi	a3,a3,15
    800029b0:	00dd86b3          	add	a3,s11,a3
    800029b4:	0006c683          	lbu	a3,0(a3)
    800029b8:	0147d79b          	srliw	a5,a5,0x14
    800029bc:	f8d40323          	sb	a3,-122(s0)
    800029c0:	21067663          	bgeu	a2,a6,80002bcc <__printf+0x5e4>
    800029c4:	02079793          	slli	a5,a5,0x20
    800029c8:	0207d793          	srli	a5,a5,0x20
    800029cc:	00fd8db3          	add	s11,s11,a5
    800029d0:	000dc683          	lbu	a3,0(s11)
    800029d4:	00800793          	li	a5,8
    800029d8:	00700c93          	li	s9,7
    800029dc:	f8d403a3          	sb	a3,-121(s0)
    800029e0:	00075c63          	bgez	a4,800029f8 <__printf+0x410>
    800029e4:	f9040713          	addi	a4,s0,-112
    800029e8:	00f70733          	add	a4,a4,a5
    800029ec:	02d00693          	li	a3,45
    800029f0:	fed70823          	sb	a3,-16(a4)
    800029f4:	00078c93          	mv	s9,a5
    800029f8:	f8040793          	addi	a5,s0,-128
    800029fc:	01978cb3          	add	s9,a5,s9
    80002a00:	f7f40d13          	addi	s10,s0,-129
    80002a04:	000cc503          	lbu	a0,0(s9)
    80002a08:	fffc8c93          	addi	s9,s9,-1
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	9f8080e7          	jalr	-1544(ra) # 80002404 <consputc>
    80002a14:	ff9d18e3          	bne	s10,s9,80002a04 <__printf+0x41c>
    80002a18:	0100006f          	j	80002a28 <__printf+0x440>
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	9e8080e7          	jalr	-1560(ra) # 80002404 <consputc>
    80002a24:	000c8493          	mv	s1,s9
    80002a28:	00094503          	lbu	a0,0(s2)
    80002a2c:	c60510e3          	bnez	a0,8000268c <__printf+0xa4>
    80002a30:	e40c0ee3          	beqz	s8,8000288c <__printf+0x2a4>
    80002a34:	00003517          	auipc	a0,0x3
    80002a38:	f7c50513          	addi	a0,a0,-132 # 800059b0 <pr>
    80002a3c:	00001097          	auipc	ra,0x1
    80002a40:	94c080e7          	jalr	-1716(ra) # 80003388 <release>
    80002a44:	e49ff06f          	j	8000288c <__printf+0x2a4>
    80002a48:	f7843783          	ld	a5,-136(s0)
    80002a4c:	03000513          	li	a0,48
    80002a50:	01000d13          	li	s10,16
    80002a54:	00878713          	addi	a4,a5,8
    80002a58:	0007bc83          	ld	s9,0(a5)
    80002a5c:	f6e43c23          	sd	a4,-136(s0)
    80002a60:	00000097          	auipc	ra,0x0
    80002a64:	9a4080e7          	jalr	-1628(ra) # 80002404 <consputc>
    80002a68:	07800513          	li	a0,120
    80002a6c:	00000097          	auipc	ra,0x0
    80002a70:	998080e7          	jalr	-1640(ra) # 80002404 <consputc>
    80002a74:	00001d97          	auipc	s11,0x1
    80002a78:	72cd8d93          	addi	s11,s11,1836 # 800041a0 <digits>
    80002a7c:	03ccd793          	srli	a5,s9,0x3c
    80002a80:	00fd87b3          	add	a5,s11,a5
    80002a84:	0007c503          	lbu	a0,0(a5)
    80002a88:	fffd0d1b          	addiw	s10,s10,-1
    80002a8c:	004c9c93          	slli	s9,s9,0x4
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	974080e7          	jalr	-1676(ra) # 80002404 <consputc>
    80002a98:	fe0d12e3          	bnez	s10,80002a7c <__printf+0x494>
    80002a9c:	f8dff06f          	j	80002a28 <__printf+0x440>
    80002aa0:	f7843783          	ld	a5,-136(s0)
    80002aa4:	0007bc83          	ld	s9,0(a5)
    80002aa8:	00878793          	addi	a5,a5,8
    80002aac:	f6f43c23          	sd	a5,-136(s0)
    80002ab0:	000c9a63          	bnez	s9,80002ac4 <__printf+0x4dc>
    80002ab4:	1080006f          	j	80002bbc <__printf+0x5d4>
    80002ab8:	001c8c93          	addi	s9,s9,1
    80002abc:	00000097          	auipc	ra,0x0
    80002ac0:	948080e7          	jalr	-1720(ra) # 80002404 <consputc>
    80002ac4:	000cc503          	lbu	a0,0(s9)
    80002ac8:	fe0518e3          	bnez	a0,80002ab8 <__printf+0x4d0>
    80002acc:	f5dff06f          	j	80002a28 <__printf+0x440>
    80002ad0:	02500513          	li	a0,37
    80002ad4:	00000097          	auipc	ra,0x0
    80002ad8:	930080e7          	jalr	-1744(ra) # 80002404 <consputc>
    80002adc:	000c8513          	mv	a0,s9
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	924080e7          	jalr	-1756(ra) # 80002404 <consputc>
    80002ae8:	f41ff06f          	j	80002a28 <__printf+0x440>
    80002aec:	02500513          	li	a0,37
    80002af0:	00000097          	auipc	ra,0x0
    80002af4:	914080e7          	jalr	-1772(ra) # 80002404 <consputc>
    80002af8:	f31ff06f          	j	80002a28 <__printf+0x440>
    80002afc:	00030513          	mv	a0,t1
    80002b00:	00000097          	auipc	ra,0x0
    80002b04:	7bc080e7          	jalr	1980(ra) # 800032bc <acquire>
    80002b08:	b4dff06f          	j	80002654 <__printf+0x6c>
    80002b0c:	40c0053b          	negw	a0,a2
    80002b10:	00a00713          	li	a4,10
    80002b14:	02e576bb          	remuw	a3,a0,a4
    80002b18:	00001d97          	auipc	s11,0x1
    80002b1c:	688d8d93          	addi	s11,s11,1672 # 800041a0 <digits>
    80002b20:	ff700593          	li	a1,-9
    80002b24:	02069693          	slli	a3,a3,0x20
    80002b28:	0206d693          	srli	a3,a3,0x20
    80002b2c:	00dd86b3          	add	a3,s11,a3
    80002b30:	0006c683          	lbu	a3,0(a3)
    80002b34:	02e557bb          	divuw	a5,a0,a4
    80002b38:	f8d40023          	sb	a3,-128(s0)
    80002b3c:	10b65e63          	bge	a2,a1,80002c58 <__printf+0x670>
    80002b40:	06300593          	li	a1,99
    80002b44:	02e7f6bb          	remuw	a3,a5,a4
    80002b48:	02069693          	slli	a3,a3,0x20
    80002b4c:	0206d693          	srli	a3,a3,0x20
    80002b50:	00dd86b3          	add	a3,s11,a3
    80002b54:	0006c683          	lbu	a3,0(a3)
    80002b58:	02e7d73b          	divuw	a4,a5,a4
    80002b5c:	00200793          	li	a5,2
    80002b60:	f8d400a3          	sb	a3,-127(s0)
    80002b64:	bca5ece3          	bltu	a1,a0,8000273c <__printf+0x154>
    80002b68:	ce5ff06f          	j	8000284c <__printf+0x264>
    80002b6c:	40e007bb          	negw	a5,a4
    80002b70:	00001d97          	auipc	s11,0x1
    80002b74:	630d8d93          	addi	s11,s11,1584 # 800041a0 <digits>
    80002b78:	00f7f693          	andi	a3,a5,15
    80002b7c:	00dd86b3          	add	a3,s11,a3
    80002b80:	0006c583          	lbu	a1,0(a3)
    80002b84:	ff100613          	li	a2,-15
    80002b88:	0047d69b          	srliw	a3,a5,0x4
    80002b8c:	f8b40023          	sb	a1,-128(s0)
    80002b90:	0047d59b          	srliw	a1,a5,0x4
    80002b94:	0ac75e63          	bge	a4,a2,80002c50 <__printf+0x668>
    80002b98:	00f6f693          	andi	a3,a3,15
    80002b9c:	00dd86b3          	add	a3,s11,a3
    80002ba0:	0006c603          	lbu	a2,0(a3)
    80002ba4:	00f00693          	li	a3,15
    80002ba8:	0087d79b          	srliw	a5,a5,0x8
    80002bac:	f8c400a3          	sb	a2,-127(s0)
    80002bb0:	d8b6e4e3          	bltu	a3,a1,80002938 <__printf+0x350>
    80002bb4:	00200793          	li	a5,2
    80002bb8:	e2dff06f          	j	800029e4 <__printf+0x3fc>
    80002bbc:	00001c97          	auipc	s9,0x1
    80002bc0:	5c4c8c93          	addi	s9,s9,1476 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002bc4:	02800513          	li	a0,40
    80002bc8:	ef1ff06f          	j	80002ab8 <__printf+0x4d0>
    80002bcc:	00700793          	li	a5,7
    80002bd0:	00600c93          	li	s9,6
    80002bd4:	e0dff06f          	j	800029e0 <__printf+0x3f8>
    80002bd8:	00700793          	li	a5,7
    80002bdc:	00600c93          	li	s9,6
    80002be0:	c69ff06f          	j	80002848 <__printf+0x260>
    80002be4:	00300793          	li	a5,3
    80002be8:	00200c93          	li	s9,2
    80002bec:	c5dff06f          	j	80002848 <__printf+0x260>
    80002bf0:	00300793          	li	a5,3
    80002bf4:	00200c93          	li	s9,2
    80002bf8:	de9ff06f          	j	800029e0 <__printf+0x3f8>
    80002bfc:	00400793          	li	a5,4
    80002c00:	00300c93          	li	s9,3
    80002c04:	dddff06f          	j	800029e0 <__printf+0x3f8>
    80002c08:	00400793          	li	a5,4
    80002c0c:	00300c93          	li	s9,3
    80002c10:	c39ff06f          	j	80002848 <__printf+0x260>
    80002c14:	00500793          	li	a5,5
    80002c18:	00400c93          	li	s9,4
    80002c1c:	c2dff06f          	j	80002848 <__printf+0x260>
    80002c20:	00500793          	li	a5,5
    80002c24:	00400c93          	li	s9,4
    80002c28:	db9ff06f          	j	800029e0 <__printf+0x3f8>
    80002c2c:	00600793          	li	a5,6
    80002c30:	00500c93          	li	s9,5
    80002c34:	dadff06f          	j	800029e0 <__printf+0x3f8>
    80002c38:	00600793          	li	a5,6
    80002c3c:	00500c93          	li	s9,5
    80002c40:	c09ff06f          	j	80002848 <__printf+0x260>
    80002c44:	00800793          	li	a5,8
    80002c48:	00700c93          	li	s9,7
    80002c4c:	bfdff06f          	j	80002848 <__printf+0x260>
    80002c50:	00100793          	li	a5,1
    80002c54:	d91ff06f          	j	800029e4 <__printf+0x3fc>
    80002c58:	00100793          	li	a5,1
    80002c5c:	bf1ff06f          	j	8000284c <__printf+0x264>
    80002c60:	00900793          	li	a5,9
    80002c64:	00800c93          	li	s9,8
    80002c68:	be1ff06f          	j	80002848 <__printf+0x260>
    80002c6c:	00001517          	auipc	a0,0x1
    80002c70:	51c50513          	addi	a0,a0,1308 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    80002c74:	00000097          	auipc	ra,0x0
    80002c78:	918080e7          	jalr	-1768(ra) # 8000258c <panic>

0000000080002c7c <printfinit>:
    80002c7c:	fe010113          	addi	sp,sp,-32
    80002c80:	00813823          	sd	s0,16(sp)
    80002c84:	00913423          	sd	s1,8(sp)
    80002c88:	00113c23          	sd	ra,24(sp)
    80002c8c:	02010413          	addi	s0,sp,32
    80002c90:	00003497          	auipc	s1,0x3
    80002c94:	d2048493          	addi	s1,s1,-736 # 800059b0 <pr>
    80002c98:	00048513          	mv	a0,s1
    80002c9c:	00001597          	auipc	a1,0x1
    80002ca0:	4fc58593          	addi	a1,a1,1276 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	5f4080e7          	jalr	1524(ra) # 80003298 <initlock>
    80002cac:	01813083          	ld	ra,24(sp)
    80002cb0:	01013403          	ld	s0,16(sp)
    80002cb4:	0004ac23          	sw	zero,24(s1)
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00008067          	ret

0000000080002cc4 <uartinit>:
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00813423          	sd	s0,8(sp)
    80002ccc:	01010413          	addi	s0,sp,16
    80002cd0:	100007b7          	lui	a5,0x10000
    80002cd4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002cd8:	f8000713          	li	a4,-128
    80002cdc:	00e781a3          	sb	a4,3(a5)
    80002ce0:	00300713          	li	a4,3
    80002ce4:	00e78023          	sb	a4,0(a5)
    80002ce8:	000780a3          	sb	zero,1(a5)
    80002cec:	00e781a3          	sb	a4,3(a5)
    80002cf0:	00700693          	li	a3,7
    80002cf4:	00d78123          	sb	a3,2(a5)
    80002cf8:	00e780a3          	sb	a4,1(a5)
    80002cfc:	00813403          	ld	s0,8(sp)
    80002d00:	01010113          	addi	sp,sp,16
    80002d04:	00008067          	ret

0000000080002d08 <uartputc>:
    80002d08:	00002797          	auipc	a5,0x2
    80002d0c:	a307a783          	lw	a5,-1488(a5) # 80004738 <panicked>
    80002d10:	00078463          	beqz	a5,80002d18 <uartputc+0x10>
    80002d14:	0000006f          	j	80002d14 <uartputc+0xc>
    80002d18:	fd010113          	addi	sp,sp,-48
    80002d1c:	02813023          	sd	s0,32(sp)
    80002d20:	00913c23          	sd	s1,24(sp)
    80002d24:	01213823          	sd	s2,16(sp)
    80002d28:	01313423          	sd	s3,8(sp)
    80002d2c:	02113423          	sd	ra,40(sp)
    80002d30:	03010413          	addi	s0,sp,48
    80002d34:	00002917          	auipc	s2,0x2
    80002d38:	a0c90913          	addi	s2,s2,-1524 # 80004740 <uart_tx_r>
    80002d3c:	00093783          	ld	a5,0(s2)
    80002d40:	00002497          	auipc	s1,0x2
    80002d44:	a0848493          	addi	s1,s1,-1528 # 80004748 <uart_tx_w>
    80002d48:	0004b703          	ld	a4,0(s1)
    80002d4c:	02078693          	addi	a3,a5,32
    80002d50:	00050993          	mv	s3,a0
    80002d54:	02e69c63          	bne	a3,a4,80002d8c <uartputc+0x84>
    80002d58:	00001097          	auipc	ra,0x1
    80002d5c:	834080e7          	jalr	-1996(ra) # 8000358c <push_on>
    80002d60:	00093783          	ld	a5,0(s2)
    80002d64:	0004b703          	ld	a4,0(s1)
    80002d68:	02078793          	addi	a5,a5,32
    80002d6c:	00e79463          	bne	a5,a4,80002d74 <uartputc+0x6c>
    80002d70:	0000006f          	j	80002d70 <uartputc+0x68>
    80002d74:	00001097          	auipc	ra,0x1
    80002d78:	88c080e7          	jalr	-1908(ra) # 80003600 <pop_on>
    80002d7c:	00093783          	ld	a5,0(s2)
    80002d80:	0004b703          	ld	a4,0(s1)
    80002d84:	02078693          	addi	a3,a5,32
    80002d88:	fce688e3          	beq	a3,a4,80002d58 <uartputc+0x50>
    80002d8c:	01f77693          	andi	a3,a4,31
    80002d90:	00003597          	auipc	a1,0x3
    80002d94:	c4058593          	addi	a1,a1,-960 # 800059d0 <uart_tx_buf>
    80002d98:	00d586b3          	add	a3,a1,a3
    80002d9c:	00170713          	addi	a4,a4,1
    80002da0:	01368023          	sb	s3,0(a3)
    80002da4:	00e4b023          	sd	a4,0(s1)
    80002da8:	10000637          	lui	a2,0x10000
    80002dac:	02f71063          	bne	a4,a5,80002dcc <uartputc+0xc4>
    80002db0:	0340006f          	j	80002de4 <uartputc+0xdc>
    80002db4:	00074703          	lbu	a4,0(a4)
    80002db8:	00f93023          	sd	a5,0(s2)
    80002dbc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002dc0:	00093783          	ld	a5,0(s2)
    80002dc4:	0004b703          	ld	a4,0(s1)
    80002dc8:	00f70e63          	beq	a4,a5,80002de4 <uartputc+0xdc>
    80002dcc:	00564683          	lbu	a3,5(a2)
    80002dd0:	01f7f713          	andi	a4,a5,31
    80002dd4:	00e58733          	add	a4,a1,a4
    80002dd8:	0206f693          	andi	a3,a3,32
    80002ddc:	00178793          	addi	a5,a5,1
    80002de0:	fc069ae3          	bnez	a3,80002db4 <uartputc+0xac>
    80002de4:	02813083          	ld	ra,40(sp)
    80002de8:	02013403          	ld	s0,32(sp)
    80002dec:	01813483          	ld	s1,24(sp)
    80002df0:	01013903          	ld	s2,16(sp)
    80002df4:	00813983          	ld	s3,8(sp)
    80002df8:	03010113          	addi	sp,sp,48
    80002dfc:	00008067          	ret

0000000080002e00 <uartputc_sync>:
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00813423          	sd	s0,8(sp)
    80002e08:	01010413          	addi	s0,sp,16
    80002e0c:	00002717          	auipc	a4,0x2
    80002e10:	92c72703          	lw	a4,-1748(a4) # 80004738 <panicked>
    80002e14:	02071663          	bnez	a4,80002e40 <uartputc_sync+0x40>
    80002e18:	00050793          	mv	a5,a0
    80002e1c:	100006b7          	lui	a3,0x10000
    80002e20:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002e24:	02077713          	andi	a4,a4,32
    80002e28:	fe070ce3          	beqz	a4,80002e20 <uartputc_sync+0x20>
    80002e2c:	0ff7f793          	andi	a5,a5,255
    80002e30:	00f68023          	sb	a5,0(a3)
    80002e34:	00813403          	ld	s0,8(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret
    80002e40:	0000006f          	j	80002e40 <uartputc_sync+0x40>

0000000080002e44 <uartstart>:
    80002e44:	ff010113          	addi	sp,sp,-16
    80002e48:	00813423          	sd	s0,8(sp)
    80002e4c:	01010413          	addi	s0,sp,16
    80002e50:	00002617          	auipc	a2,0x2
    80002e54:	8f060613          	addi	a2,a2,-1808 # 80004740 <uart_tx_r>
    80002e58:	00002517          	auipc	a0,0x2
    80002e5c:	8f050513          	addi	a0,a0,-1808 # 80004748 <uart_tx_w>
    80002e60:	00063783          	ld	a5,0(a2)
    80002e64:	00053703          	ld	a4,0(a0)
    80002e68:	04f70263          	beq	a4,a5,80002eac <uartstart+0x68>
    80002e6c:	100005b7          	lui	a1,0x10000
    80002e70:	00003817          	auipc	a6,0x3
    80002e74:	b6080813          	addi	a6,a6,-1184 # 800059d0 <uart_tx_buf>
    80002e78:	01c0006f          	j	80002e94 <uartstart+0x50>
    80002e7c:	0006c703          	lbu	a4,0(a3)
    80002e80:	00f63023          	sd	a5,0(a2)
    80002e84:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002e88:	00063783          	ld	a5,0(a2)
    80002e8c:	00053703          	ld	a4,0(a0)
    80002e90:	00f70e63          	beq	a4,a5,80002eac <uartstart+0x68>
    80002e94:	01f7f713          	andi	a4,a5,31
    80002e98:	00e806b3          	add	a3,a6,a4
    80002e9c:	0055c703          	lbu	a4,5(a1)
    80002ea0:	00178793          	addi	a5,a5,1
    80002ea4:	02077713          	andi	a4,a4,32
    80002ea8:	fc071ae3          	bnez	a4,80002e7c <uartstart+0x38>
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <uartgetc>:
    80002eb8:	ff010113          	addi	sp,sp,-16
    80002ebc:	00813423          	sd	s0,8(sp)
    80002ec0:	01010413          	addi	s0,sp,16
    80002ec4:	10000737          	lui	a4,0x10000
    80002ec8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002ecc:	0017f793          	andi	a5,a5,1
    80002ed0:	00078c63          	beqz	a5,80002ee8 <uartgetc+0x30>
    80002ed4:	00074503          	lbu	a0,0(a4)
    80002ed8:	0ff57513          	andi	a0,a0,255
    80002edc:	00813403          	ld	s0,8(sp)
    80002ee0:	01010113          	addi	sp,sp,16
    80002ee4:	00008067          	ret
    80002ee8:	fff00513          	li	a0,-1
    80002eec:	ff1ff06f          	j	80002edc <uartgetc+0x24>

0000000080002ef0 <uartintr>:
    80002ef0:	100007b7          	lui	a5,0x10000
    80002ef4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002ef8:	0017f793          	andi	a5,a5,1
    80002efc:	0a078463          	beqz	a5,80002fa4 <uartintr+0xb4>
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00813823          	sd	s0,16(sp)
    80002f08:	00913423          	sd	s1,8(sp)
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	02010413          	addi	s0,sp,32
    80002f14:	100004b7          	lui	s1,0x10000
    80002f18:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002f1c:	0ff57513          	andi	a0,a0,255
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	534080e7          	jalr	1332(ra) # 80002454 <consoleintr>
    80002f28:	0054c783          	lbu	a5,5(s1)
    80002f2c:	0017f793          	andi	a5,a5,1
    80002f30:	fe0794e3          	bnez	a5,80002f18 <uartintr+0x28>
    80002f34:	00002617          	auipc	a2,0x2
    80002f38:	80c60613          	addi	a2,a2,-2036 # 80004740 <uart_tx_r>
    80002f3c:	00002517          	auipc	a0,0x2
    80002f40:	80c50513          	addi	a0,a0,-2036 # 80004748 <uart_tx_w>
    80002f44:	00063783          	ld	a5,0(a2)
    80002f48:	00053703          	ld	a4,0(a0)
    80002f4c:	04f70263          	beq	a4,a5,80002f90 <uartintr+0xa0>
    80002f50:	100005b7          	lui	a1,0x10000
    80002f54:	00003817          	auipc	a6,0x3
    80002f58:	a7c80813          	addi	a6,a6,-1412 # 800059d0 <uart_tx_buf>
    80002f5c:	01c0006f          	j	80002f78 <uartintr+0x88>
    80002f60:	0006c703          	lbu	a4,0(a3)
    80002f64:	00f63023          	sd	a5,0(a2)
    80002f68:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f6c:	00063783          	ld	a5,0(a2)
    80002f70:	00053703          	ld	a4,0(a0)
    80002f74:	00f70e63          	beq	a4,a5,80002f90 <uartintr+0xa0>
    80002f78:	01f7f713          	andi	a4,a5,31
    80002f7c:	00e806b3          	add	a3,a6,a4
    80002f80:	0055c703          	lbu	a4,5(a1)
    80002f84:	00178793          	addi	a5,a5,1
    80002f88:	02077713          	andi	a4,a4,32
    80002f8c:	fc071ae3          	bnez	a4,80002f60 <uartintr+0x70>
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00813483          	ld	s1,8(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret
    80002fa4:	00001617          	auipc	a2,0x1
    80002fa8:	79c60613          	addi	a2,a2,1948 # 80004740 <uart_tx_r>
    80002fac:	00001517          	auipc	a0,0x1
    80002fb0:	79c50513          	addi	a0,a0,1948 # 80004748 <uart_tx_w>
    80002fb4:	00063783          	ld	a5,0(a2)
    80002fb8:	00053703          	ld	a4,0(a0)
    80002fbc:	04f70263          	beq	a4,a5,80003000 <uartintr+0x110>
    80002fc0:	100005b7          	lui	a1,0x10000
    80002fc4:	00003817          	auipc	a6,0x3
    80002fc8:	a0c80813          	addi	a6,a6,-1524 # 800059d0 <uart_tx_buf>
    80002fcc:	01c0006f          	j	80002fe8 <uartintr+0xf8>
    80002fd0:	0006c703          	lbu	a4,0(a3)
    80002fd4:	00f63023          	sd	a5,0(a2)
    80002fd8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fdc:	00063783          	ld	a5,0(a2)
    80002fe0:	00053703          	ld	a4,0(a0)
    80002fe4:	02f70063          	beq	a4,a5,80003004 <uartintr+0x114>
    80002fe8:	01f7f713          	andi	a4,a5,31
    80002fec:	00e806b3          	add	a3,a6,a4
    80002ff0:	0055c703          	lbu	a4,5(a1)
    80002ff4:	00178793          	addi	a5,a5,1
    80002ff8:	02077713          	andi	a4,a4,32
    80002ffc:	fc071ae3          	bnez	a4,80002fd0 <uartintr+0xe0>
    80003000:	00008067          	ret
    80003004:	00008067          	ret

0000000080003008 <kinit>:
    80003008:	fc010113          	addi	sp,sp,-64
    8000300c:	02913423          	sd	s1,40(sp)
    80003010:	fffff7b7          	lui	a5,0xfffff
    80003014:	00004497          	auipc	s1,0x4
    80003018:	9eb48493          	addi	s1,s1,-1557 # 800069ff <end+0xfff>
    8000301c:	02813823          	sd	s0,48(sp)
    80003020:	01313c23          	sd	s3,24(sp)
    80003024:	00f4f4b3          	and	s1,s1,a5
    80003028:	02113c23          	sd	ra,56(sp)
    8000302c:	03213023          	sd	s2,32(sp)
    80003030:	01413823          	sd	s4,16(sp)
    80003034:	01513423          	sd	s5,8(sp)
    80003038:	04010413          	addi	s0,sp,64
    8000303c:	000017b7          	lui	a5,0x1
    80003040:	01100993          	li	s3,17
    80003044:	00f487b3          	add	a5,s1,a5
    80003048:	01b99993          	slli	s3,s3,0x1b
    8000304c:	06f9e063          	bltu	s3,a5,800030ac <kinit+0xa4>
    80003050:	00003a97          	auipc	s5,0x3
    80003054:	9b0a8a93          	addi	s5,s5,-1616 # 80005a00 <end>
    80003058:	0754ec63          	bltu	s1,s5,800030d0 <kinit+0xc8>
    8000305c:	0734fa63          	bgeu	s1,s3,800030d0 <kinit+0xc8>
    80003060:	00088a37          	lui	s4,0x88
    80003064:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003068:	00001917          	auipc	s2,0x1
    8000306c:	6e890913          	addi	s2,s2,1768 # 80004750 <kmem>
    80003070:	00ca1a13          	slli	s4,s4,0xc
    80003074:	0140006f          	j	80003088 <kinit+0x80>
    80003078:	000017b7          	lui	a5,0x1
    8000307c:	00f484b3          	add	s1,s1,a5
    80003080:	0554e863          	bltu	s1,s5,800030d0 <kinit+0xc8>
    80003084:	0534f663          	bgeu	s1,s3,800030d0 <kinit+0xc8>
    80003088:	00001637          	lui	a2,0x1
    8000308c:	00100593          	li	a1,1
    80003090:	00048513          	mv	a0,s1
    80003094:	00000097          	auipc	ra,0x0
    80003098:	5e4080e7          	jalr	1508(ra) # 80003678 <__memset>
    8000309c:	00093783          	ld	a5,0(s2)
    800030a0:	00f4b023          	sd	a5,0(s1)
    800030a4:	00993023          	sd	s1,0(s2)
    800030a8:	fd4498e3          	bne	s1,s4,80003078 <kinit+0x70>
    800030ac:	03813083          	ld	ra,56(sp)
    800030b0:	03013403          	ld	s0,48(sp)
    800030b4:	02813483          	ld	s1,40(sp)
    800030b8:	02013903          	ld	s2,32(sp)
    800030bc:	01813983          	ld	s3,24(sp)
    800030c0:	01013a03          	ld	s4,16(sp)
    800030c4:	00813a83          	ld	s5,8(sp)
    800030c8:	04010113          	addi	sp,sp,64
    800030cc:	00008067          	ret
    800030d0:	00001517          	auipc	a0,0x1
    800030d4:	0e850513          	addi	a0,a0,232 # 800041b8 <digits+0x18>
    800030d8:	fffff097          	auipc	ra,0xfffff
    800030dc:	4b4080e7          	jalr	1204(ra) # 8000258c <panic>

00000000800030e0 <freerange>:
    800030e0:	fc010113          	addi	sp,sp,-64
    800030e4:	000017b7          	lui	a5,0x1
    800030e8:	02913423          	sd	s1,40(sp)
    800030ec:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800030f0:	009504b3          	add	s1,a0,s1
    800030f4:	fffff537          	lui	a0,0xfffff
    800030f8:	02813823          	sd	s0,48(sp)
    800030fc:	02113c23          	sd	ra,56(sp)
    80003100:	03213023          	sd	s2,32(sp)
    80003104:	01313c23          	sd	s3,24(sp)
    80003108:	01413823          	sd	s4,16(sp)
    8000310c:	01513423          	sd	s5,8(sp)
    80003110:	01613023          	sd	s6,0(sp)
    80003114:	04010413          	addi	s0,sp,64
    80003118:	00a4f4b3          	and	s1,s1,a0
    8000311c:	00f487b3          	add	a5,s1,a5
    80003120:	06f5e463          	bltu	a1,a5,80003188 <freerange+0xa8>
    80003124:	00003a97          	auipc	s5,0x3
    80003128:	8dca8a93          	addi	s5,s5,-1828 # 80005a00 <end>
    8000312c:	0954e263          	bltu	s1,s5,800031b0 <freerange+0xd0>
    80003130:	01100993          	li	s3,17
    80003134:	01b99993          	slli	s3,s3,0x1b
    80003138:	0734fc63          	bgeu	s1,s3,800031b0 <freerange+0xd0>
    8000313c:	00058a13          	mv	s4,a1
    80003140:	00001917          	auipc	s2,0x1
    80003144:	61090913          	addi	s2,s2,1552 # 80004750 <kmem>
    80003148:	00002b37          	lui	s6,0x2
    8000314c:	0140006f          	j	80003160 <freerange+0x80>
    80003150:	000017b7          	lui	a5,0x1
    80003154:	00f484b3          	add	s1,s1,a5
    80003158:	0554ec63          	bltu	s1,s5,800031b0 <freerange+0xd0>
    8000315c:	0534fa63          	bgeu	s1,s3,800031b0 <freerange+0xd0>
    80003160:	00001637          	lui	a2,0x1
    80003164:	00100593          	li	a1,1
    80003168:	00048513          	mv	a0,s1
    8000316c:	00000097          	auipc	ra,0x0
    80003170:	50c080e7          	jalr	1292(ra) # 80003678 <__memset>
    80003174:	00093703          	ld	a4,0(s2)
    80003178:	016487b3          	add	a5,s1,s6
    8000317c:	00e4b023          	sd	a4,0(s1)
    80003180:	00993023          	sd	s1,0(s2)
    80003184:	fcfa76e3          	bgeu	s4,a5,80003150 <freerange+0x70>
    80003188:	03813083          	ld	ra,56(sp)
    8000318c:	03013403          	ld	s0,48(sp)
    80003190:	02813483          	ld	s1,40(sp)
    80003194:	02013903          	ld	s2,32(sp)
    80003198:	01813983          	ld	s3,24(sp)
    8000319c:	01013a03          	ld	s4,16(sp)
    800031a0:	00813a83          	ld	s5,8(sp)
    800031a4:	00013b03          	ld	s6,0(sp)
    800031a8:	04010113          	addi	sp,sp,64
    800031ac:	00008067          	ret
    800031b0:	00001517          	auipc	a0,0x1
    800031b4:	00850513          	addi	a0,a0,8 # 800041b8 <digits+0x18>
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	3d4080e7          	jalr	980(ra) # 8000258c <panic>

00000000800031c0 <kfree>:
    800031c0:	fe010113          	addi	sp,sp,-32
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00113c23          	sd	ra,24(sp)
    800031cc:	00913423          	sd	s1,8(sp)
    800031d0:	02010413          	addi	s0,sp,32
    800031d4:	03451793          	slli	a5,a0,0x34
    800031d8:	04079c63          	bnez	a5,80003230 <kfree+0x70>
    800031dc:	00003797          	auipc	a5,0x3
    800031e0:	82478793          	addi	a5,a5,-2012 # 80005a00 <end>
    800031e4:	00050493          	mv	s1,a0
    800031e8:	04f56463          	bltu	a0,a5,80003230 <kfree+0x70>
    800031ec:	01100793          	li	a5,17
    800031f0:	01b79793          	slli	a5,a5,0x1b
    800031f4:	02f57e63          	bgeu	a0,a5,80003230 <kfree+0x70>
    800031f8:	00001637          	lui	a2,0x1
    800031fc:	00100593          	li	a1,1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	478080e7          	jalr	1144(ra) # 80003678 <__memset>
    80003208:	00001797          	auipc	a5,0x1
    8000320c:	54878793          	addi	a5,a5,1352 # 80004750 <kmem>
    80003210:	0007b703          	ld	a4,0(a5)
    80003214:	01813083          	ld	ra,24(sp)
    80003218:	01013403          	ld	s0,16(sp)
    8000321c:	00e4b023          	sd	a4,0(s1)
    80003220:	0097b023          	sd	s1,0(a5)
    80003224:	00813483          	ld	s1,8(sp)
    80003228:	02010113          	addi	sp,sp,32
    8000322c:	00008067          	ret
    80003230:	00001517          	auipc	a0,0x1
    80003234:	f8850513          	addi	a0,a0,-120 # 800041b8 <digits+0x18>
    80003238:	fffff097          	auipc	ra,0xfffff
    8000323c:	354080e7          	jalr	852(ra) # 8000258c <panic>

0000000080003240 <kalloc>:
    80003240:	fe010113          	addi	sp,sp,-32
    80003244:	00813823          	sd	s0,16(sp)
    80003248:	00913423          	sd	s1,8(sp)
    8000324c:	00113c23          	sd	ra,24(sp)
    80003250:	02010413          	addi	s0,sp,32
    80003254:	00001797          	auipc	a5,0x1
    80003258:	4fc78793          	addi	a5,a5,1276 # 80004750 <kmem>
    8000325c:	0007b483          	ld	s1,0(a5)
    80003260:	02048063          	beqz	s1,80003280 <kalloc+0x40>
    80003264:	0004b703          	ld	a4,0(s1)
    80003268:	00001637          	lui	a2,0x1
    8000326c:	00500593          	li	a1,5
    80003270:	00048513          	mv	a0,s1
    80003274:	00e7b023          	sd	a4,0(a5)
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	400080e7          	jalr	1024(ra) # 80003678 <__memset>
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00048513          	mv	a0,s1
    8000328c:	00813483          	ld	s1,8(sp)
    80003290:	02010113          	addi	sp,sp,32
    80003294:	00008067          	ret

0000000080003298 <initlock>:
    80003298:	ff010113          	addi	sp,sp,-16
    8000329c:	00813423          	sd	s0,8(sp)
    800032a0:	01010413          	addi	s0,sp,16
    800032a4:	00813403          	ld	s0,8(sp)
    800032a8:	00b53423          	sd	a1,8(a0)
    800032ac:	00052023          	sw	zero,0(a0)
    800032b0:	00053823          	sd	zero,16(a0)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <acquire>:
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	00113c23          	sd	ra,24(sp)
    800032cc:	01213023          	sd	s2,0(sp)
    800032d0:	02010413          	addi	s0,sp,32
    800032d4:	00050493          	mv	s1,a0
    800032d8:	10002973          	csrr	s2,sstatus
    800032dc:	100027f3          	csrr	a5,sstatus
    800032e0:	ffd7f793          	andi	a5,a5,-3
    800032e4:	10079073          	csrw	sstatus,a5
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	8e0080e7          	jalr	-1824(ra) # 80001bc8 <mycpu>
    800032f0:	07852783          	lw	a5,120(a0)
    800032f4:	06078e63          	beqz	a5,80003370 <acquire+0xb4>
    800032f8:	fffff097          	auipc	ra,0xfffff
    800032fc:	8d0080e7          	jalr	-1840(ra) # 80001bc8 <mycpu>
    80003300:	07852783          	lw	a5,120(a0)
    80003304:	0004a703          	lw	a4,0(s1)
    80003308:	0017879b          	addiw	a5,a5,1
    8000330c:	06f52c23          	sw	a5,120(a0)
    80003310:	04071063          	bnez	a4,80003350 <acquire+0x94>
    80003314:	00100713          	li	a4,1
    80003318:	00070793          	mv	a5,a4
    8000331c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003320:	0007879b          	sext.w	a5,a5
    80003324:	fe079ae3          	bnez	a5,80003318 <acquire+0x5c>
    80003328:	0ff0000f          	fence
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	89c080e7          	jalr	-1892(ra) # 80001bc8 <mycpu>
    80003334:	01813083          	ld	ra,24(sp)
    80003338:	01013403          	ld	s0,16(sp)
    8000333c:	00a4b823          	sd	a0,16(s1)
    80003340:	00013903          	ld	s2,0(sp)
    80003344:	00813483          	ld	s1,8(sp)
    80003348:	02010113          	addi	sp,sp,32
    8000334c:	00008067          	ret
    80003350:	0104b903          	ld	s2,16(s1)
    80003354:	fffff097          	auipc	ra,0xfffff
    80003358:	874080e7          	jalr	-1932(ra) # 80001bc8 <mycpu>
    8000335c:	faa91ce3          	bne	s2,a0,80003314 <acquire+0x58>
    80003360:	00001517          	auipc	a0,0x1
    80003364:	e6050513          	addi	a0,a0,-416 # 800041c0 <digits+0x20>
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	224080e7          	jalr	548(ra) # 8000258c <panic>
    80003370:	00195913          	srli	s2,s2,0x1
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	854080e7          	jalr	-1964(ra) # 80001bc8 <mycpu>
    8000337c:	00197913          	andi	s2,s2,1
    80003380:	07252e23          	sw	s2,124(a0)
    80003384:	f75ff06f          	j	800032f8 <acquire+0x3c>

0000000080003388 <release>:
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00813823          	sd	s0,16(sp)
    80003390:	00113c23          	sd	ra,24(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00052783          	lw	a5,0(a0)
    800033a4:	00079a63          	bnez	a5,800033b8 <release+0x30>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	e2050513          	addi	a0,a0,-480 # 800041c8 <digits+0x28>
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	1dc080e7          	jalr	476(ra) # 8000258c <panic>
    800033b8:	01053903          	ld	s2,16(a0)
    800033bc:	00050493          	mv	s1,a0
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	808080e7          	jalr	-2040(ra) # 80001bc8 <mycpu>
    800033c8:	fea910e3          	bne	s2,a0,800033a8 <release+0x20>
    800033cc:	0004b823          	sd	zero,16(s1)
    800033d0:	0ff0000f          	fence
    800033d4:	0f50000f          	fence	iorw,ow
    800033d8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800033dc:	ffffe097          	auipc	ra,0xffffe
    800033e0:	7ec080e7          	jalr	2028(ra) # 80001bc8 <mycpu>
    800033e4:	100027f3          	csrr	a5,sstatus
    800033e8:	0027f793          	andi	a5,a5,2
    800033ec:	04079a63          	bnez	a5,80003440 <release+0xb8>
    800033f0:	07852783          	lw	a5,120(a0)
    800033f4:	02f05e63          	blez	a5,80003430 <release+0xa8>
    800033f8:	fff7871b          	addiw	a4,a5,-1
    800033fc:	06e52c23          	sw	a4,120(a0)
    80003400:	00071c63          	bnez	a4,80003418 <release+0x90>
    80003404:	07c52783          	lw	a5,124(a0)
    80003408:	00078863          	beqz	a5,80003418 <release+0x90>
    8000340c:	100027f3          	csrr	a5,sstatus
    80003410:	0027e793          	ori	a5,a5,2
    80003414:	10079073          	csrw	sstatus,a5
    80003418:	01813083          	ld	ra,24(sp)
    8000341c:	01013403          	ld	s0,16(sp)
    80003420:	00813483          	ld	s1,8(sp)
    80003424:	00013903          	ld	s2,0(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret
    80003430:	00001517          	auipc	a0,0x1
    80003434:	db850513          	addi	a0,a0,-584 # 800041e8 <digits+0x48>
    80003438:	fffff097          	auipc	ra,0xfffff
    8000343c:	154080e7          	jalr	340(ra) # 8000258c <panic>
    80003440:	00001517          	auipc	a0,0x1
    80003444:	d9050513          	addi	a0,a0,-624 # 800041d0 <digits+0x30>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	144080e7          	jalr	324(ra) # 8000258c <panic>

0000000080003450 <holding>:
    80003450:	00052783          	lw	a5,0(a0)
    80003454:	00079663          	bnez	a5,80003460 <holding+0x10>
    80003458:	00000513          	li	a0,0
    8000345c:	00008067          	ret
    80003460:	fe010113          	addi	sp,sp,-32
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	00113c23          	sd	ra,24(sp)
    80003470:	02010413          	addi	s0,sp,32
    80003474:	01053483          	ld	s1,16(a0)
    80003478:	ffffe097          	auipc	ra,0xffffe
    8000347c:	750080e7          	jalr	1872(ra) # 80001bc8 <mycpu>
    80003480:	01813083          	ld	ra,24(sp)
    80003484:	01013403          	ld	s0,16(sp)
    80003488:	40a48533          	sub	a0,s1,a0
    8000348c:	00153513          	seqz	a0,a0
    80003490:	00813483          	ld	s1,8(sp)
    80003494:	02010113          	addi	sp,sp,32
    80003498:	00008067          	ret

000000008000349c <push_off>:
    8000349c:	fe010113          	addi	sp,sp,-32
    800034a0:	00813823          	sd	s0,16(sp)
    800034a4:	00113c23          	sd	ra,24(sp)
    800034a8:	00913423          	sd	s1,8(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	100024f3          	csrr	s1,sstatus
    800034b4:	100027f3          	csrr	a5,sstatus
    800034b8:	ffd7f793          	andi	a5,a5,-3
    800034bc:	10079073          	csrw	sstatus,a5
    800034c0:	ffffe097          	auipc	ra,0xffffe
    800034c4:	708080e7          	jalr	1800(ra) # 80001bc8 <mycpu>
    800034c8:	07852783          	lw	a5,120(a0)
    800034cc:	02078663          	beqz	a5,800034f8 <push_off+0x5c>
    800034d0:	ffffe097          	auipc	ra,0xffffe
    800034d4:	6f8080e7          	jalr	1784(ra) # 80001bc8 <mycpu>
    800034d8:	07852783          	lw	a5,120(a0)
    800034dc:	01813083          	ld	ra,24(sp)
    800034e0:	01013403          	ld	s0,16(sp)
    800034e4:	0017879b          	addiw	a5,a5,1
    800034e8:	06f52c23          	sw	a5,120(a0)
    800034ec:	00813483          	ld	s1,8(sp)
    800034f0:	02010113          	addi	sp,sp,32
    800034f4:	00008067          	ret
    800034f8:	0014d493          	srli	s1,s1,0x1
    800034fc:	ffffe097          	auipc	ra,0xffffe
    80003500:	6cc080e7          	jalr	1740(ra) # 80001bc8 <mycpu>
    80003504:	0014f493          	andi	s1,s1,1
    80003508:	06952e23          	sw	s1,124(a0)
    8000350c:	fc5ff06f          	j	800034d0 <push_off+0x34>

0000000080003510 <pop_off>:
    80003510:	ff010113          	addi	sp,sp,-16
    80003514:	00813023          	sd	s0,0(sp)
    80003518:	00113423          	sd	ra,8(sp)
    8000351c:	01010413          	addi	s0,sp,16
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	6a8080e7          	jalr	1704(ra) # 80001bc8 <mycpu>
    80003528:	100027f3          	csrr	a5,sstatus
    8000352c:	0027f793          	andi	a5,a5,2
    80003530:	04079663          	bnez	a5,8000357c <pop_off+0x6c>
    80003534:	07852783          	lw	a5,120(a0)
    80003538:	02f05a63          	blez	a5,8000356c <pop_off+0x5c>
    8000353c:	fff7871b          	addiw	a4,a5,-1
    80003540:	06e52c23          	sw	a4,120(a0)
    80003544:	00071c63          	bnez	a4,8000355c <pop_off+0x4c>
    80003548:	07c52783          	lw	a5,124(a0)
    8000354c:	00078863          	beqz	a5,8000355c <pop_off+0x4c>
    80003550:	100027f3          	csrr	a5,sstatus
    80003554:	0027e793          	ori	a5,a5,2
    80003558:	10079073          	csrw	sstatus,a5
    8000355c:	00813083          	ld	ra,8(sp)
    80003560:	00013403          	ld	s0,0(sp)
    80003564:	01010113          	addi	sp,sp,16
    80003568:	00008067          	ret
    8000356c:	00001517          	auipc	a0,0x1
    80003570:	c7c50513          	addi	a0,a0,-900 # 800041e8 <digits+0x48>
    80003574:	fffff097          	auipc	ra,0xfffff
    80003578:	018080e7          	jalr	24(ra) # 8000258c <panic>
    8000357c:	00001517          	auipc	a0,0x1
    80003580:	c5450513          	addi	a0,a0,-940 # 800041d0 <digits+0x30>
    80003584:	fffff097          	auipc	ra,0xfffff
    80003588:	008080e7          	jalr	8(ra) # 8000258c <panic>

000000008000358c <push_on>:
    8000358c:	fe010113          	addi	sp,sp,-32
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	100024f3          	csrr	s1,sstatus
    800035a4:	100027f3          	csrr	a5,sstatus
    800035a8:	0027e793          	ori	a5,a5,2
    800035ac:	10079073          	csrw	sstatus,a5
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	618080e7          	jalr	1560(ra) # 80001bc8 <mycpu>
    800035b8:	07852783          	lw	a5,120(a0)
    800035bc:	02078663          	beqz	a5,800035e8 <push_on+0x5c>
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	608080e7          	jalr	1544(ra) # 80001bc8 <mycpu>
    800035c8:	07852783          	lw	a5,120(a0)
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	0017879b          	addiw	a5,a5,1
    800035d8:	06f52c23          	sw	a5,120(a0)
    800035dc:	00813483          	ld	s1,8(sp)
    800035e0:	02010113          	addi	sp,sp,32
    800035e4:	00008067          	ret
    800035e8:	0014d493          	srli	s1,s1,0x1
    800035ec:	ffffe097          	auipc	ra,0xffffe
    800035f0:	5dc080e7          	jalr	1500(ra) # 80001bc8 <mycpu>
    800035f4:	0014f493          	andi	s1,s1,1
    800035f8:	06952e23          	sw	s1,124(a0)
    800035fc:	fc5ff06f          	j	800035c0 <push_on+0x34>

0000000080003600 <pop_on>:
    80003600:	ff010113          	addi	sp,sp,-16
    80003604:	00813023          	sd	s0,0(sp)
    80003608:	00113423          	sd	ra,8(sp)
    8000360c:	01010413          	addi	s0,sp,16
    80003610:	ffffe097          	auipc	ra,0xffffe
    80003614:	5b8080e7          	jalr	1464(ra) # 80001bc8 <mycpu>
    80003618:	100027f3          	csrr	a5,sstatus
    8000361c:	0027f793          	andi	a5,a5,2
    80003620:	04078463          	beqz	a5,80003668 <pop_on+0x68>
    80003624:	07852783          	lw	a5,120(a0)
    80003628:	02f05863          	blez	a5,80003658 <pop_on+0x58>
    8000362c:	fff7879b          	addiw	a5,a5,-1
    80003630:	06f52c23          	sw	a5,120(a0)
    80003634:	07853783          	ld	a5,120(a0)
    80003638:	00079863          	bnez	a5,80003648 <pop_on+0x48>
    8000363c:	100027f3          	csrr	a5,sstatus
    80003640:	ffd7f793          	andi	a5,a5,-3
    80003644:	10079073          	csrw	sstatus,a5
    80003648:	00813083          	ld	ra,8(sp)
    8000364c:	00013403          	ld	s0,0(sp)
    80003650:	01010113          	addi	sp,sp,16
    80003654:	00008067          	ret
    80003658:	00001517          	auipc	a0,0x1
    8000365c:	bb850513          	addi	a0,a0,-1096 # 80004210 <digits+0x70>
    80003660:	fffff097          	auipc	ra,0xfffff
    80003664:	f2c080e7          	jalr	-212(ra) # 8000258c <panic>
    80003668:	00001517          	auipc	a0,0x1
    8000366c:	b8850513          	addi	a0,a0,-1144 # 800041f0 <digits+0x50>
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	f1c080e7          	jalr	-228(ra) # 8000258c <panic>

0000000080003678 <__memset>:
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00813423          	sd	s0,8(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	1a060e63          	beqz	a2,80003840 <__memset+0x1c8>
    80003688:	40a007b3          	neg	a5,a0
    8000368c:	0077f793          	andi	a5,a5,7
    80003690:	00778693          	addi	a3,a5,7
    80003694:	00b00813          	li	a6,11
    80003698:	0ff5f593          	andi	a1,a1,255
    8000369c:	fff6071b          	addiw	a4,a2,-1
    800036a0:	1b06e663          	bltu	a3,a6,8000384c <__memset+0x1d4>
    800036a4:	1cd76463          	bltu	a4,a3,8000386c <__memset+0x1f4>
    800036a8:	1a078e63          	beqz	a5,80003864 <__memset+0x1ec>
    800036ac:	00b50023          	sb	a1,0(a0)
    800036b0:	00100713          	li	a4,1
    800036b4:	1ae78463          	beq	a5,a4,8000385c <__memset+0x1e4>
    800036b8:	00b500a3          	sb	a1,1(a0)
    800036bc:	00200713          	li	a4,2
    800036c0:	1ae78a63          	beq	a5,a4,80003874 <__memset+0x1fc>
    800036c4:	00b50123          	sb	a1,2(a0)
    800036c8:	00300713          	li	a4,3
    800036cc:	18e78463          	beq	a5,a4,80003854 <__memset+0x1dc>
    800036d0:	00b501a3          	sb	a1,3(a0)
    800036d4:	00400713          	li	a4,4
    800036d8:	1ae78263          	beq	a5,a4,8000387c <__memset+0x204>
    800036dc:	00b50223          	sb	a1,4(a0)
    800036e0:	00500713          	li	a4,5
    800036e4:	1ae78063          	beq	a5,a4,80003884 <__memset+0x20c>
    800036e8:	00b502a3          	sb	a1,5(a0)
    800036ec:	00700713          	li	a4,7
    800036f0:	18e79e63          	bne	a5,a4,8000388c <__memset+0x214>
    800036f4:	00b50323          	sb	a1,6(a0)
    800036f8:	00700e93          	li	t4,7
    800036fc:	00859713          	slli	a4,a1,0x8
    80003700:	00e5e733          	or	a4,a1,a4
    80003704:	01059e13          	slli	t3,a1,0x10
    80003708:	01c76e33          	or	t3,a4,t3
    8000370c:	01859313          	slli	t1,a1,0x18
    80003710:	006e6333          	or	t1,t3,t1
    80003714:	02059893          	slli	a7,a1,0x20
    80003718:	40f60e3b          	subw	t3,a2,a5
    8000371c:	011368b3          	or	a7,t1,a7
    80003720:	02859813          	slli	a6,a1,0x28
    80003724:	0108e833          	or	a6,a7,a6
    80003728:	03059693          	slli	a3,a1,0x30
    8000372c:	003e589b          	srliw	a7,t3,0x3
    80003730:	00d866b3          	or	a3,a6,a3
    80003734:	03859713          	slli	a4,a1,0x38
    80003738:	00389813          	slli	a6,a7,0x3
    8000373c:	00f507b3          	add	a5,a0,a5
    80003740:	00e6e733          	or	a4,a3,a4
    80003744:	000e089b          	sext.w	a7,t3
    80003748:	00f806b3          	add	a3,a6,a5
    8000374c:	00e7b023          	sd	a4,0(a5)
    80003750:	00878793          	addi	a5,a5,8
    80003754:	fed79ce3          	bne	a5,a3,8000374c <__memset+0xd4>
    80003758:	ff8e7793          	andi	a5,t3,-8
    8000375c:	0007871b          	sext.w	a4,a5
    80003760:	01d787bb          	addw	a5,a5,t4
    80003764:	0ce88e63          	beq	a7,a4,80003840 <__memset+0x1c8>
    80003768:	00f50733          	add	a4,a0,a5
    8000376c:	00b70023          	sb	a1,0(a4)
    80003770:	0017871b          	addiw	a4,a5,1
    80003774:	0cc77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003778:	00e50733          	add	a4,a0,a4
    8000377c:	00b70023          	sb	a1,0(a4)
    80003780:	0027871b          	addiw	a4,a5,2
    80003784:	0ac77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003788:	00e50733          	add	a4,a0,a4
    8000378c:	00b70023          	sb	a1,0(a4)
    80003790:	0037871b          	addiw	a4,a5,3
    80003794:	0ac77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003798:	00e50733          	add	a4,a0,a4
    8000379c:	00b70023          	sb	a1,0(a4)
    800037a0:	0047871b          	addiw	a4,a5,4
    800037a4:	08c77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037a8:	00e50733          	add	a4,a0,a4
    800037ac:	00b70023          	sb	a1,0(a4)
    800037b0:	0057871b          	addiw	a4,a5,5
    800037b4:	08c77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037b8:	00e50733          	add	a4,a0,a4
    800037bc:	00b70023          	sb	a1,0(a4)
    800037c0:	0067871b          	addiw	a4,a5,6
    800037c4:	06c77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037c8:	00e50733          	add	a4,a0,a4
    800037cc:	00b70023          	sb	a1,0(a4)
    800037d0:	0077871b          	addiw	a4,a5,7
    800037d4:	06c77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037d8:	00e50733          	add	a4,a0,a4
    800037dc:	00b70023          	sb	a1,0(a4)
    800037e0:	0087871b          	addiw	a4,a5,8
    800037e4:	04c77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037e8:	00e50733          	add	a4,a0,a4
    800037ec:	00b70023          	sb	a1,0(a4)
    800037f0:	0097871b          	addiw	a4,a5,9
    800037f4:	04c77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    800037f8:	00e50733          	add	a4,a0,a4
    800037fc:	00b70023          	sb	a1,0(a4)
    80003800:	00a7871b          	addiw	a4,a5,10
    80003804:	02c77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003808:	00e50733          	add	a4,a0,a4
    8000380c:	00b70023          	sb	a1,0(a4)
    80003810:	00b7871b          	addiw	a4,a5,11
    80003814:	02c77663          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003818:	00e50733          	add	a4,a0,a4
    8000381c:	00b70023          	sb	a1,0(a4)
    80003820:	00c7871b          	addiw	a4,a5,12
    80003824:	00c77e63          	bgeu	a4,a2,80003840 <__memset+0x1c8>
    80003828:	00e50733          	add	a4,a0,a4
    8000382c:	00b70023          	sb	a1,0(a4)
    80003830:	00d7879b          	addiw	a5,a5,13
    80003834:	00c7f663          	bgeu	a5,a2,80003840 <__memset+0x1c8>
    80003838:	00f507b3          	add	a5,a0,a5
    8000383c:	00b78023          	sb	a1,0(a5)
    80003840:	00813403          	ld	s0,8(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret
    8000384c:	00b00693          	li	a3,11
    80003850:	e55ff06f          	j	800036a4 <__memset+0x2c>
    80003854:	00300e93          	li	t4,3
    80003858:	ea5ff06f          	j	800036fc <__memset+0x84>
    8000385c:	00100e93          	li	t4,1
    80003860:	e9dff06f          	j	800036fc <__memset+0x84>
    80003864:	00000e93          	li	t4,0
    80003868:	e95ff06f          	j	800036fc <__memset+0x84>
    8000386c:	00000793          	li	a5,0
    80003870:	ef9ff06f          	j	80003768 <__memset+0xf0>
    80003874:	00200e93          	li	t4,2
    80003878:	e85ff06f          	j	800036fc <__memset+0x84>
    8000387c:	00400e93          	li	t4,4
    80003880:	e7dff06f          	j	800036fc <__memset+0x84>
    80003884:	00500e93          	li	t4,5
    80003888:	e75ff06f          	j	800036fc <__memset+0x84>
    8000388c:	00600e93          	li	t4,6
    80003890:	e6dff06f          	j	800036fc <__memset+0x84>

0000000080003894 <__memmove>:
    80003894:	ff010113          	addi	sp,sp,-16
    80003898:	00813423          	sd	s0,8(sp)
    8000389c:	01010413          	addi	s0,sp,16
    800038a0:	0e060863          	beqz	a2,80003990 <__memmove+0xfc>
    800038a4:	fff6069b          	addiw	a3,a2,-1
    800038a8:	0006881b          	sext.w	a6,a3
    800038ac:	0ea5e863          	bltu	a1,a0,8000399c <__memmove+0x108>
    800038b0:	00758713          	addi	a4,a1,7
    800038b4:	00a5e7b3          	or	a5,a1,a0
    800038b8:	40a70733          	sub	a4,a4,a0
    800038bc:	0077f793          	andi	a5,a5,7
    800038c0:	00f73713          	sltiu	a4,a4,15
    800038c4:	00174713          	xori	a4,a4,1
    800038c8:	0017b793          	seqz	a5,a5
    800038cc:	00e7f7b3          	and	a5,a5,a4
    800038d0:	10078863          	beqz	a5,800039e0 <__memmove+0x14c>
    800038d4:	00900793          	li	a5,9
    800038d8:	1107f463          	bgeu	a5,a6,800039e0 <__memmove+0x14c>
    800038dc:	0036581b          	srliw	a6,a2,0x3
    800038e0:	fff8081b          	addiw	a6,a6,-1
    800038e4:	02081813          	slli	a6,a6,0x20
    800038e8:	01d85893          	srli	a7,a6,0x1d
    800038ec:	00858813          	addi	a6,a1,8
    800038f0:	00058793          	mv	a5,a1
    800038f4:	00050713          	mv	a4,a0
    800038f8:	01088833          	add	a6,a7,a6
    800038fc:	0007b883          	ld	a7,0(a5)
    80003900:	00878793          	addi	a5,a5,8
    80003904:	00870713          	addi	a4,a4,8
    80003908:	ff173c23          	sd	a7,-8(a4)
    8000390c:	ff0798e3          	bne	a5,a6,800038fc <__memmove+0x68>
    80003910:	ff867713          	andi	a4,a2,-8
    80003914:	02071793          	slli	a5,a4,0x20
    80003918:	0207d793          	srli	a5,a5,0x20
    8000391c:	00f585b3          	add	a1,a1,a5
    80003920:	40e686bb          	subw	a3,a3,a4
    80003924:	00f507b3          	add	a5,a0,a5
    80003928:	06e60463          	beq	a2,a4,80003990 <__memmove+0xfc>
    8000392c:	0005c703          	lbu	a4,0(a1)
    80003930:	00e78023          	sb	a4,0(a5)
    80003934:	04068e63          	beqz	a3,80003990 <__memmove+0xfc>
    80003938:	0015c603          	lbu	a2,1(a1)
    8000393c:	00100713          	li	a4,1
    80003940:	00c780a3          	sb	a2,1(a5)
    80003944:	04e68663          	beq	a3,a4,80003990 <__memmove+0xfc>
    80003948:	0025c603          	lbu	a2,2(a1)
    8000394c:	00200713          	li	a4,2
    80003950:	00c78123          	sb	a2,2(a5)
    80003954:	02e68e63          	beq	a3,a4,80003990 <__memmove+0xfc>
    80003958:	0035c603          	lbu	a2,3(a1)
    8000395c:	00300713          	li	a4,3
    80003960:	00c781a3          	sb	a2,3(a5)
    80003964:	02e68663          	beq	a3,a4,80003990 <__memmove+0xfc>
    80003968:	0045c603          	lbu	a2,4(a1)
    8000396c:	00400713          	li	a4,4
    80003970:	00c78223          	sb	a2,4(a5)
    80003974:	00e68e63          	beq	a3,a4,80003990 <__memmove+0xfc>
    80003978:	0055c603          	lbu	a2,5(a1)
    8000397c:	00500713          	li	a4,5
    80003980:	00c782a3          	sb	a2,5(a5)
    80003984:	00e68663          	beq	a3,a4,80003990 <__memmove+0xfc>
    80003988:	0065c703          	lbu	a4,6(a1)
    8000398c:	00e78323          	sb	a4,6(a5)
    80003990:	00813403          	ld	s0,8(sp)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret
    8000399c:	02061713          	slli	a4,a2,0x20
    800039a0:	02075713          	srli	a4,a4,0x20
    800039a4:	00e587b3          	add	a5,a1,a4
    800039a8:	f0f574e3          	bgeu	a0,a5,800038b0 <__memmove+0x1c>
    800039ac:	02069613          	slli	a2,a3,0x20
    800039b0:	02065613          	srli	a2,a2,0x20
    800039b4:	fff64613          	not	a2,a2
    800039b8:	00e50733          	add	a4,a0,a4
    800039bc:	00c78633          	add	a2,a5,a2
    800039c0:	fff7c683          	lbu	a3,-1(a5)
    800039c4:	fff78793          	addi	a5,a5,-1
    800039c8:	fff70713          	addi	a4,a4,-1
    800039cc:	00d70023          	sb	a3,0(a4)
    800039d0:	fec798e3          	bne	a5,a2,800039c0 <__memmove+0x12c>
    800039d4:	00813403          	ld	s0,8(sp)
    800039d8:	01010113          	addi	sp,sp,16
    800039dc:	00008067          	ret
    800039e0:	02069713          	slli	a4,a3,0x20
    800039e4:	02075713          	srli	a4,a4,0x20
    800039e8:	00170713          	addi	a4,a4,1
    800039ec:	00e50733          	add	a4,a0,a4
    800039f0:	00050793          	mv	a5,a0
    800039f4:	0005c683          	lbu	a3,0(a1)
    800039f8:	00178793          	addi	a5,a5,1
    800039fc:	00158593          	addi	a1,a1,1
    80003a00:	fed78fa3          	sb	a3,-1(a5)
    80003a04:	fee798e3          	bne	a5,a4,800039f4 <__memmove+0x160>
    80003a08:	f89ff06f          	j	80003990 <__memmove+0xfc>

0000000080003a0c <__mem_free>:
    80003a0c:	ff010113          	addi	sp,sp,-16
    80003a10:	00813423          	sd	s0,8(sp)
    80003a14:	01010413          	addi	s0,sp,16
    80003a18:	00001597          	auipc	a1,0x1
    80003a1c:	d4058593          	addi	a1,a1,-704 # 80004758 <freep>
    80003a20:	0005b783          	ld	a5,0(a1)
    80003a24:	ff050693          	addi	a3,a0,-16
    80003a28:	0007b703          	ld	a4,0(a5)
    80003a2c:	00d7fc63          	bgeu	a5,a3,80003a44 <__mem_free+0x38>
    80003a30:	00e6ee63          	bltu	a3,a4,80003a4c <__mem_free+0x40>
    80003a34:	00e7fc63          	bgeu	a5,a4,80003a4c <__mem_free+0x40>
    80003a38:	00070793          	mv	a5,a4
    80003a3c:	0007b703          	ld	a4,0(a5)
    80003a40:	fed7e8e3          	bltu	a5,a3,80003a30 <__mem_free+0x24>
    80003a44:	fee7eae3          	bltu	a5,a4,80003a38 <__mem_free+0x2c>
    80003a48:	fee6f8e3          	bgeu	a3,a4,80003a38 <__mem_free+0x2c>
    80003a4c:	ff852803          	lw	a6,-8(a0)
    80003a50:	02081613          	slli	a2,a6,0x20
    80003a54:	01c65613          	srli	a2,a2,0x1c
    80003a58:	00c68633          	add	a2,a3,a2
    80003a5c:	02c70a63          	beq	a4,a2,80003a90 <__mem_free+0x84>
    80003a60:	fee53823          	sd	a4,-16(a0)
    80003a64:	0087a503          	lw	a0,8(a5)
    80003a68:	02051613          	slli	a2,a0,0x20
    80003a6c:	01c65613          	srli	a2,a2,0x1c
    80003a70:	00c78633          	add	a2,a5,a2
    80003a74:	04c68263          	beq	a3,a2,80003ab8 <__mem_free+0xac>
    80003a78:	00813403          	ld	s0,8(sp)
    80003a7c:	00d7b023          	sd	a3,0(a5)
    80003a80:	00f5b023          	sd	a5,0(a1)
    80003a84:	00000513          	li	a0,0
    80003a88:	01010113          	addi	sp,sp,16
    80003a8c:	00008067          	ret
    80003a90:	00872603          	lw	a2,8(a4)
    80003a94:	00073703          	ld	a4,0(a4)
    80003a98:	0106083b          	addw	a6,a2,a6
    80003a9c:	ff052c23          	sw	a6,-8(a0)
    80003aa0:	fee53823          	sd	a4,-16(a0)
    80003aa4:	0087a503          	lw	a0,8(a5)
    80003aa8:	02051613          	slli	a2,a0,0x20
    80003aac:	01c65613          	srli	a2,a2,0x1c
    80003ab0:	00c78633          	add	a2,a5,a2
    80003ab4:	fcc692e3          	bne	a3,a2,80003a78 <__mem_free+0x6c>
    80003ab8:	00813403          	ld	s0,8(sp)
    80003abc:	0105053b          	addw	a0,a0,a6
    80003ac0:	00a7a423          	sw	a0,8(a5)
    80003ac4:	00e7b023          	sd	a4,0(a5)
    80003ac8:	00f5b023          	sd	a5,0(a1)
    80003acc:	00000513          	li	a0,0
    80003ad0:	01010113          	addi	sp,sp,16
    80003ad4:	00008067          	ret

0000000080003ad8 <__mem_alloc>:
    80003ad8:	fc010113          	addi	sp,sp,-64
    80003adc:	02813823          	sd	s0,48(sp)
    80003ae0:	02913423          	sd	s1,40(sp)
    80003ae4:	03213023          	sd	s2,32(sp)
    80003ae8:	01513423          	sd	s5,8(sp)
    80003aec:	02113c23          	sd	ra,56(sp)
    80003af0:	01313c23          	sd	s3,24(sp)
    80003af4:	01413823          	sd	s4,16(sp)
    80003af8:	01613023          	sd	s6,0(sp)
    80003afc:	04010413          	addi	s0,sp,64
    80003b00:	00001a97          	auipc	s5,0x1
    80003b04:	c58a8a93          	addi	s5,s5,-936 # 80004758 <freep>
    80003b08:	00f50913          	addi	s2,a0,15
    80003b0c:	000ab683          	ld	a3,0(s5)
    80003b10:	00495913          	srli	s2,s2,0x4
    80003b14:	0019049b          	addiw	s1,s2,1
    80003b18:	00048913          	mv	s2,s1
    80003b1c:	0c068c63          	beqz	a3,80003bf4 <__mem_alloc+0x11c>
    80003b20:	0006b503          	ld	a0,0(a3)
    80003b24:	00852703          	lw	a4,8(a0)
    80003b28:	10977063          	bgeu	a4,s1,80003c28 <__mem_alloc+0x150>
    80003b2c:	000017b7          	lui	a5,0x1
    80003b30:	0009099b          	sext.w	s3,s2
    80003b34:	0af4e863          	bltu	s1,a5,80003be4 <__mem_alloc+0x10c>
    80003b38:	02099a13          	slli	s4,s3,0x20
    80003b3c:	01ca5a13          	srli	s4,s4,0x1c
    80003b40:	fff00b13          	li	s6,-1
    80003b44:	0100006f          	j	80003b54 <__mem_alloc+0x7c>
    80003b48:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003b4c:	00852703          	lw	a4,8(a0)
    80003b50:	04977463          	bgeu	a4,s1,80003b98 <__mem_alloc+0xc0>
    80003b54:	00050793          	mv	a5,a0
    80003b58:	fea698e3          	bne	a3,a0,80003b48 <__mem_alloc+0x70>
    80003b5c:	000a0513          	mv	a0,s4
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	1f0080e7          	jalr	496(ra) # 80003d50 <kvmincrease>
    80003b68:	00050793          	mv	a5,a0
    80003b6c:	01050513          	addi	a0,a0,16
    80003b70:	07678e63          	beq	a5,s6,80003bec <__mem_alloc+0x114>
    80003b74:	0137a423          	sw	s3,8(a5)
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	e94080e7          	jalr	-364(ra) # 80003a0c <__mem_free>
    80003b80:	000ab783          	ld	a5,0(s5)
    80003b84:	06078463          	beqz	a5,80003bec <__mem_alloc+0x114>
    80003b88:	0007b503          	ld	a0,0(a5)
    80003b8c:	00078693          	mv	a3,a5
    80003b90:	00852703          	lw	a4,8(a0)
    80003b94:	fc9760e3          	bltu	a4,s1,80003b54 <__mem_alloc+0x7c>
    80003b98:	08e48263          	beq	s1,a4,80003c1c <__mem_alloc+0x144>
    80003b9c:	4127073b          	subw	a4,a4,s2
    80003ba0:	02071693          	slli	a3,a4,0x20
    80003ba4:	01c6d693          	srli	a3,a3,0x1c
    80003ba8:	00e52423          	sw	a4,8(a0)
    80003bac:	00d50533          	add	a0,a0,a3
    80003bb0:	01252423          	sw	s2,8(a0)
    80003bb4:	00fab023          	sd	a5,0(s5)
    80003bb8:	01050513          	addi	a0,a0,16
    80003bbc:	03813083          	ld	ra,56(sp)
    80003bc0:	03013403          	ld	s0,48(sp)
    80003bc4:	02813483          	ld	s1,40(sp)
    80003bc8:	02013903          	ld	s2,32(sp)
    80003bcc:	01813983          	ld	s3,24(sp)
    80003bd0:	01013a03          	ld	s4,16(sp)
    80003bd4:	00813a83          	ld	s5,8(sp)
    80003bd8:	00013b03          	ld	s6,0(sp)
    80003bdc:	04010113          	addi	sp,sp,64
    80003be0:	00008067          	ret
    80003be4:	000019b7          	lui	s3,0x1
    80003be8:	f51ff06f          	j	80003b38 <__mem_alloc+0x60>
    80003bec:	00000513          	li	a0,0
    80003bf0:	fcdff06f          	j	80003bbc <__mem_alloc+0xe4>
    80003bf4:	00002797          	auipc	a5,0x2
    80003bf8:	dfc78793          	addi	a5,a5,-516 # 800059f0 <base>
    80003bfc:	00078513          	mv	a0,a5
    80003c00:	00fab023          	sd	a5,0(s5)
    80003c04:	00f7b023          	sd	a5,0(a5)
    80003c08:	00000713          	li	a4,0
    80003c0c:	00002797          	auipc	a5,0x2
    80003c10:	de07a623          	sw	zero,-532(a5) # 800059f8 <base+0x8>
    80003c14:	00050693          	mv	a3,a0
    80003c18:	f11ff06f          	j	80003b28 <__mem_alloc+0x50>
    80003c1c:	00053703          	ld	a4,0(a0)
    80003c20:	00e7b023          	sd	a4,0(a5)
    80003c24:	f91ff06f          	j	80003bb4 <__mem_alloc+0xdc>
    80003c28:	00068793          	mv	a5,a3
    80003c2c:	f6dff06f          	j	80003b98 <__mem_alloc+0xc0>

0000000080003c30 <__putc>:
    80003c30:	fe010113          	addi	sp,sp,-32
    80003c34:	00813823          	sd	s0,16(sp)
    80003c38:	00113c23          	sd	ra,24(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00050793          	mv	a5,a0
    80003c44:	fef40593          	addi	a1,s0,-17
    80003c48:	00100613          	li	a2,1
    80003c4c:	00000513          	li	a0,0
    80003c50:	fef407a3          	sb	a5,-17(s0)
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	918080e7          	jalr	-1768(ra) # 8000256c <console_write>
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret

0000000080003c6c <__getc>:
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00813823          	sd	s0,16(sp)
    80003c74:	00113c23          	sd	ra,24(sp)
    80003c78:	02010413          	addi	s0,sp,32
    80003c7c:	fe840593          	addi	a1,s0,-24
    80003c80:	00100613          	li	a2,1
    80003c84:	00000513          	li	a0,0
    80003c88:	fffff097          	auipc	ra,0xfffff
    80003c8c:	8c4080e7          	jalr	-1852(ra) # 8000254c <console_read>
    80003c90:	fe844503          	lbu	a0,-24(s0)
    80003c94:	01813083          	ld	ra,24(sp)
    80003c98:	01013403          	ld	s0,16(sp)
    80003c9c:	02010113          	addi	sp,sp,32
    80003ca0:	00008067          	ret

0000000080003ca4 <console_handler>:
    80003ca4:	fe010113          	addi	sp,sp,-32
    80003ca8:	00813823          	sd	s0,16(sp)
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00913423          	sd	s1,8(sp)
    80003cb4:	02010413          	addi	s0,sp,32
    80003cb8:	14202773          	csrr	a4,scause
    80003cbc:	100027f3          	csrr	a5,sstatus
    80003cc0:	0027f793          	andi	a5,a5,2
    80003cc4:	06079e63          	bnez	a5,80003d40 <console_handler+0x9c>
    80003cc8:	00074c63          	bltz	a4,80003ce0 <console_handler+0x3c>
    80003ccc:	01813083          	ld	ra,24(sp)
    80003cd0:	01013403          	ld	s0,16(sp)
    80003cd4:	00813483          	ld	s1,8(sp)
    80003cd8:	02010113          	addi	sp,sp,32
    80003cdc:	00008067          	ret
    80003ce0:	0ff77713          	andi	a4,a4,255
    80003ce4:	00900793          	li	a5,9
    80003ce8:	fef712e3          	bne	a4,a5,80003ccc <console_handler+0x28>
    80003cec:	ffffe097          	auipc	ra,0xffffe
    80003cf0:	4b8080e7          	jalr	1208(ra) # 800021a4 <plic_claim>
    80003cf4:	00a00793          	li	a5,10
    80003cf8:	00050493          	mv	s1,a0
    80003cfc:	02f50c63          	beq	a0,a5,80003d34 <console_handler+0x90>
    80003d00:	fc0506e3          	beqz	a0,80003ccc <console_handler+0x28>
    80003d04:	00050593          	mv	a1,a0
    80003d08:	00000517          	auipc	a0,0x0
    80003d0c:	41050513          	addi	a0,a0,1040 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003d10:	fffff097          	auipc	ra,0xfffff
    80003d14:	8d8080e7          	jalr	-1832(ra) # 800025e8 <__printf>
    80003d18:	01013403          	ld	s0,16(sp)
    80003d1c:	01813083          	ld	ra,24(sp)
    80003d20:	00048513          	mv	a0,s1
    80003d24:	00813483          	ld	s1,8(sp)
    80003d28:	02010113          	addi	sp,sp,32
    80003d2c:	ffffe317          	auipc	t1,0xffffe
    80003d30:	4b030067          	jr	1200(t1) # 800021dc <plic_complete>
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	1bc080e7          	jalr	444(ra) # 80002ef0 <uartintr>
    80003d3c:	fddff06f          	j	80003d18 <console_handler+0x74>
    80003d40:	00000517          	auipc	a0,0x0
    80003d44:	4d850513          	addi	a0,a0,1240 # 80004218 <digits+0x78>
    80003d48:	fffff097          	auipc	ra,0xfffff
    80003d4c:	844080e7          	jalr	-1980(ra) # 8000258c <panic>

0000000080003d50 <kvmincrease>:
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	01213023          	sd	s2,0(sp)
    80003d58:	00001937          	lui	s2,0x1
    80003d5c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003d60:	00813823          	sd	s0,16(sp)
    80003d64:	00113c23          	sd	ra,24(sp)
    80003d68:	00913423          	sd	s1,8(sp)
    80003d6c:	02010413          	addi	s0,sp,32
    80003d70:	01250933          	add	s2,a0,s2
    80003d74:	00c95913          	srli	s2,s2,0xc
    80003d78:	02090863          	beqz	s2,80003da8 <kvmincrease+0x58>
    80003d7c:	00000493          	li	s1,0
    80003d80:	00148493          	addi	s1,s1,1
    80003d84:	fffff097          	auipc	ra,0xfffff
    80003d88:	4bc080e7          	jalr	1212(ra) # 80003240 <kalloc>
    80003d8c:	fe991ae3          	bne	s2,s1,80003d80 <kvmincrease+0x30>
    80003d90:	01813083          	ld	ra,24(sp)
    80003d94:	01013403          	ld	s0,16(sp)
    80003d98:	00813483          	ld	s1,8(sp)
    80003d9c:	00013903          	ld	s2,0(sp)
    80003da0:	02010113          	addi	sp,sp,32
    80003da4:	00008067          	ret
    80003da8:	01813083          	ld	ra,24(sp)
    80003dac:	01013403          	ld	s0,16(sp)
    80003db0:	00813483          	ld	s1,8(sp)
    80003db4:	00013903          	ld	s2,0(sp)
    80003db8:	00000513          	li	a0,0
    80003dbc:	02010113          	addi	sp,sp,32
    80003dc0:	00008067          	ret
	...

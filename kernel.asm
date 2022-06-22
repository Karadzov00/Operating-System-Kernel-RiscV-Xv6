
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	7d813103          	ld	sp,2008(sp) # 800047d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	215010ef          	jal	ra,80001a30 <start>

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
    80001080:	794000ef          	jal	ra,80001814 <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000116c:	5a0080e7          	jalr	1440(ra) # 80001708 <_Znam>
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
    800011a4:	69070713          	addi	a4,a4,1680 # 80004830 <_ZN7_thread8globalIdE>
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

00000000800011e0 <_ZN7_thread5startEv>:
    if(this->status==FINISHED)return;
    800011e0:	03852783          	lw	a5,56(a0) # 8038 <_entry-0x7fff7fc8>
    800011e4:	00200713          	li	a4,2
    800011e8:	00e78463          	beq	a5,a4,800011f0 <_ZN7_thread5startEv+0x10>
    if(this->status==READY)return;
    800011ec:	00079463          	bnez	a5,800011f4 <_ZN7_thread5startEv+0x14>
    800011f0:	00008067          	ret
void _thread::start() {
    800011f4:	ff010113          	addi	sp,sp,-16
    800011f8:	00113423          	sd	ra,8(sp)
    800011fc:	00813023          	sd	s0,0(sp)
    80001200:	01010413          	addi	s0,sp,16
    this->status=Status::READY;
    80001204:	02052c23          	sw	zero,56(a0)
    Scheduler::put(this);
    80001208:	00000097          	auipc	ra,0x0
    8000120c:	438080e7          	jalr	1080(ra) # 80001640 <_ZN9Scheduler3putEP7_thread>
}
    80001210:	00813083          	ld	ra,8(sp)
    80001214:	00013403          	ld	s0,0(sp)
    80001218:	01010113          	addi	sp,sp,16
    8000121c:	00008067          	ret

0000000080001220 <_ZN7_thread5yieldEv>:
void _thread::yield() {
    80001220:	ff010113          	addi	sp,sp,-16
    80001224:	00813423          	sd	s0,8(sp)
    80001228:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    8000122c:	00050793          	mv	a5,a0
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    80001230:	00400713          	li	a4,4
    80001234:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    80001238:	00000073          	ecall
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    8000123c:	00078513          	mv	a0,a5
}
    80001240:	00813403          	ld	s0,8(sp)
    80001244:	01010113          	addi	sp,sp,16
    80001248:	00008067          	ret

000000008000124c <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    8000124c:	fe010113          	addi	sp,sp,-32
    80001250:	00113c23          	sd	ra,24(sp)
    80001254:	00813823          	sd	s0,16(sp)
    80001258:	00913423          	sd	s1,8(sp)
    8000125c:	02010413          	addi	s0,sp,32
    _thread* old = running;
    80001260:	00003497          	auipc	s1,0x3
    80001264:	5d84b483          	ld	s1,1496(s1) # 80004838 <_ZN7_thread7runningE>

class _thread {
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001268:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    8000126c:	02078c63          	beqz	a5,800012a4 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001270:	00000097          	auipc	ra,0x0
    80001274:	368080e7          	jalr	872(ra) # 800015d8 <_ZN9Scheduler3getEv>
    80001278:	00003797          	auipc	a5,0x3
    8000127c:	5ca7b023          	sd	a0,1472(a5) # 80004838 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    80001280:	01050593          	addi	a1,a0,16
    80001284:	01048513          	addi	a0,s1,16
    80001288:	00000097          	auipc	ra,0x0
    8000128c:	e88080e7          	jalr	-376(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    80001290:	01813083          	ld	ra,24(sp)
    80001294:	01013403          	ld	s0,16(sp)
    80001298:	00813483          	ld	s1,8(sp)
    8000129c:	02010113          	addi	sp,sp,32
    800012a0:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a4:	00048513          	mv	a0,s1
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	398080e7          	jalr	920(ra) # 80001640 <_ZN9Scheduler3putEP7_thread>
    800012b0:	fc1ff06f          	j	80001270 <_ZN7_thread8dispatchEv+0x24>

00000000800012b4 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00113423          	sd	ra,8(sp)
    800012bc:	00813023          	sd	s0,0(sp)
    800012c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	5f0080e7          	jalr	1520(ra) # 800018b4 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012cc:	00813083          	ld	ra,8(sp)
    800012d0:	00013403          	ld	s0,0(sp)
    800012d4:	01010113          	addi	sp,sp,16
    800012d8:	00008067          	ret

00000000800012dc <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    800012dc:	ff010113          	addi	sp,sp,-16
    800012e0:	00113423          	sd	ra,8(sp)
    800012e4:	00813023          	sd	s0,0(sp)
    800012e8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	5c8080e7          	jalr	1480(ra) # 800018b4 <_ZN15MemoryAllocator10kmem_allocEm>
}
    800012f4:	00813083          	ld	ra,8(sp)
    800012f8:	00013403          	ld	s0,0(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00113423          	sd	ra,8(sp)
    8000130c:	00813023          	sd	s0,0(sp)
    80001310:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001314:	00000097          	auipc	ra,0x0
    80001318:	5c8080e7          	jalr	1480(ra) # 800018dc <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000131c:	00813083          	ld	ra,8(sp)
    80001320:	00013403          	ld	s0,0(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_ZN7_thread12createThreadEPFvvE>:
_thread* _thread::createThread(Body body) {
    8000132c:	fe010113          	addi	sp,sp,-32
    80001330:	00113c23          	sd	ra,24(sp)
    80001334:	00813823          	sd	s0,16(sp)
    80001338:	00913423          	sd	s1,8(sp)
    8000133c:	01213023          	sd	s2,0(sp)
    80001340:	02010413          	addi	s0,sp,32
    80001344:	00050913          	mv	s2,a0
    return new _thread(body, DEFAULT_TIME_SLICE);
    80001348:	04000513          	li	a0,64
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	f68080e7          	jalr	-152(ra) # 800012b4 <_ZN7_threadnwEm>
    80001354:	00050493          	mv	s1,a0
    80001358:	00200613          	li	a2,2
    8000135c:	00090593          	mv	a1,s2
    80001360:	00000097          	auipc	ra,0x0
    80001364:	ddc080e7          	jalr	-548(ra) # 8000113c <_ZN7_threadC1EPFvvEm>
    80001368:	0200006f          	j	80001388 <_ZN7_thread12createThreadEPFvvE+0x5c>
    8000136c:	00050913          	mv	s2,a0
    80001370:	00048513          	mv	a0,s1
    80001374:	00000097          	auipc	ra,0x0
    80001378:	f90080e7          	jalr	-112(ra) # 80001304 <_ZN7_threaddlEPv>
    8000137c:	00090513          	mv	a0,s2
    80001380:	00004097          	auipc	ra,0x4
    80001384:	5a8080e7          	jalr	1448(ra) # 80005928 <_Unwind_Resume>
}
    80001388:	00048513          	mv	a0,s1
    8000138c:	01813083          	ld	ra,24(sp)
    80001390:	01013403          	ld	s0,16(sp)
    80001394:	00813483          	ld	s1,8(sp)
    80001398:	00013903          	ld	s2,0(sp)
    8000139c:	02010113          	addi	sp,sp,32
    800013a0:	00008067          	ret

00000000800013a4 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00113423          	sd	ra,8(sp)
    800013ac:	00813023          	sd	s0,0(sp)
    800013b0:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    800013b4:	00000097          	auipc	ra,0x0
    800013b8:	528080e7          	jalr	1320(ra) # 800018dc <_ZN15MemoryAllocator9kmem_freeEPv>
}
    800013bc:	00813083          	ld	ra,8(sp)
    800013c0:	00013403          	ld	s0,0(sp)
    800013c4:	01010113          	addi	sp,sp,16
    800013c8:	00008067          	ret

00000000800013cc <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    800013cc:	ff010113          	addi	sp,sp,-16
    800013d0:	00813423          	sd	s0,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    800013d8:	00053603          	ld	a2,0(a0)
    uint64 arg1 = arg->a1;
    800013dc:	00853683          	ld	a3,8(a0)
    uint64 arg2 = arg->a2;
    800013e0:	01053703          	ld	a4,16(a0)
    uint64 arg3 = arg->a3;
    800013e4:	01853783          	ld	a5,24(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    800013e8:	00060513          	mv	a0,a2
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    800013ec:	00068593          	mv	a1,a3
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    800013f0:	00070613          	mv	a2,a4
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    800013f4:	00078693          	mv	a3,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    800013f8:	00000073          	ecall


}
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001408:	fd010113          	addi	sp,sp,-48
    8000140c:	02113423          	sd	ra,40(sp)
    80001410:	02813023          	sd	s0,32(sp)
    80001414:	03010413          	addi	s0,sp,48
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    80001418:	00100793          	li	a5,1
    8000141c:	fcf43823          	sd	a5,-48(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001420:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001424:	03f57513          	andi	a0,a0,63
    80001428:	00050463          	beqz	a0,80001430 <_Z9mem_allocm+0x28>
    8000142c:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    80001430:	fcf43c23          	sd	a5,-40(s0)

    syscall(&arg);
    80001434:	fd040513          	addi	a0,s0,-48
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	f94080e7          	jalr	-108(ra) # 800013cc <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001440:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001444:	02813083          	ld	ra,40(sp)
    80001448:	02013403          	ld	s0,32(sp)
    8000144c:	03010113          	addi	sp,sp,48
    80001450:	00008067          	ret

0000000080001454 <_Z8mem_freePv>:

int mem_free (void* p){
    80001454:	fd010113          	addi	sp,sp,-48
    80001458:	02113423          	sd	ra,40(sp)
    8000145c:	02813023          	sd	s0,32(sp)
    80001460:	03010413          	addi	s0,sp,48
    args arg;
    arg.a0=0x02;
    80001464:	00200793          	li	a5,2
    80001468:	fcf43823          	sd	a5,-48(s0)
    arg.a1=(uint64)p;
    8000146c:	fca43c23          	sd	a0,-40(s0)

    syscall(&arg);
    80001470:	fd040513          	addi	a0,s0,-48
    80001474:	00000097          	auipc	ra,0x0
    80001478:	f58080e7          	jalr	-168(ra) # 800013cc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000147c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	02813083          	ld	ra,40(sp)
    80001488:	02013403          	ld	s0,32(sp)
    8000148c:	03010113          	addi	sp,sp,48
    80001490:	00008067          	ret

0000000080001494 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    80001494:	fd010113          	addi	sp,sp,-48
    80001498:	02113423          	sd	ra,40(sp)
    8000149c:	02813023          	sd	s0,32(sp)
    800014a0:	00913c23          	sd	s1,24(sp)
    800014a4:	01213823          	sd	s2,16(sp)
    800014a8:	01313423          	sd	s3,8(sp)
    800014ac:	03010413          	addi	s0,sp,48
    800014b0:	00050993          	mv	s3,a0
    800014b4:	00058913          	mv	s2,a1
    800014b8:	00060493          	mv	s1,a2
    args* myArgs = (args*)MemoryAllocator::kmem_alloc(sizeof(args));
    800014bc:	02000513          	li	a0,32
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	3f4080e7          	jalr	1012(ra) # 800018b4 <_ZN15MemoryAllocator10kmem_allocEm>
    myArgs->a0=0x11;
    800014c8:	01100713          	li	a4,17
    800014cc:	00e53023          	sd	a4,0(a0)
    myArgs->a1=(uint64)handle;
    800014d0:	01353423          	sd	s3,8(a0)
    myArgs->a2=(uint64)start_routine;
    800014d4:	01253823          	sd	s2,16(a0)
    myArgs->a3=(uint64)arg;
    800014d8:	00953c23          	sd	s1,24(a0)

    syscall(myArgs);
    800014dc:	00000097          	auipc	ra,0x0
    800014e0:	ef0080e7          	jalr	-272(ra) # 800013cc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014e4:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014e8:	0005051b          	sext.w	a0,a0
    800014ec:	02813083          	ld	ra,40(sp)
    800014f0:	02013403          	ld	s0,32(sp)
    800014f4:	01813483          	ld	s1,24(sp)
    800014f8:	01013903          	ld	s2,16(sp)
    800014fc:	00813983          	ld	s3,8(sp)
    80001500:	03010113          	addi	sp,sp,48
    80001504:	00008067          	ret

0000000080001508 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"



int main(){
    80001508:	fe010113          	addi	sp,sp,-32
    8000150c:	00113c23          	sd	ra,24(sp)
    80001510:	00813823          	sd	s0,16(sp)
    80001514:	00913423          	sd	s1,8(sp)
    80001518:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    8000151c:	00003797          	auipc	a5,0x3
    80001520:	2b47b783          	ld	a5,692(a5) # 800047d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001524:	10579073          	csrw	stvec,a5

    void* ptr;
    ptr = mem_alloc(300);
    80001528:	12c00513          	li	a0,300
    8000152c:	00000097          	auipc	ra,0x0
    80001530:	edc080e7          	jalr	-292(ra) # 80001408 <_Z9mem_allocm>
    80001534:	00050493          	mv	s1,a0
    if(ptr!=nullptr){
    80001538:	00050a63          	beqz	a0,8000154c <main+0x44>
        printString("allocated \n");
    8000153c:	00003517          	auipc	a0,0x3
    80001540:	ac450513          	addi	a0,a0,-1340 # 80004000 <kvmincrease+0x1d0>
    80001544:	00000097          	auipc	ra,0x0
    80001548:	3c0080e7          	jalr	960(ra) # 80001904 <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    8000154c:	00048513          	mv	a0,s1
    80001550:	00000097          	auipc	ra,0x0
    80001554:	f04080e7          	jalr	-252(ra) # 80001454 <_Z8mem_freePv>
    80001558:	02051663          	bnez	a0,80001584 <main+0x7c>
        printString("successfully freed \n");
    8000155c:	00003517          	auipc	a0,0x3
    80001560:	ab450513          	addi	a0,a0,-1356 # 80004010 <kvmincrease+0x1e0>
    80001564:	00000097          	auipc	ra,0x0
    80001568:	3a0080e7          	jalr	928(ra) # 80001904 <_Z11printStringPKc>
    else{
        printString("not freed \n");
    }

    return 0;
}
    8000156c:	00000513          	li	a0,0
    80001570:	01813083          	ld	ra,24(sp)
    80001574:	01013403          	ld	s0,16(sp)
    80001578:	00813483          	ld	s1,8(sp)
    8000157c:	02010113          	addi	sp,sp,32
    80001580:	00008067          	ret
        printString("not freed \n");
    80001584:	00003517          	auipc	a0,0x3
    80001588:	aa450513          	addi	a0,a0,-1372 # 80004028 <kvmincrease+0x1f8>
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	378080e7          	jalr	888(ra) # 80001904 <_Z11printStringPKc>
    80001594:	fd9ff06f          	j	8000156c <main+0x64>

0000000080001598 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00813423          	sd	s0,8(sp)
    800015a0:	01010413          	addi	s0,sp,16
    800015a4:	00100793          	li	a5,1
    800015a8:	00f50863          	beq	a0,a5,800015b8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800015ac:	00813403          	ld	s0,8(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret
    800015b8:	000107b7          	lui	a5,0x10
    800015bc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015c0:	fef596e3          	bne	a1,a5,800015ac <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015c4:	00003797          	auipc	a5,0x3
    800015c8:	28478793          	addi	a5,a5,644 # 80004848 <_ZN9Scheduler16readyThreadQueueE>
    800015cc:	0007b023          	sd	zero,0(a5)
    800015d0:	0007b423          	sd	zero,8(a5)
    800015d4:	fd9ff06f          	j	800015ac <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800015d8 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800015ec:	00003517          	auipc	a0,0x3
    800015f0:	25c53503          	ld	a0,604(a0) # 80004848 <_ZN9Scheduler16readyThreadQueueE>
    800015f4:	04050263          	beqz	a0,80001638 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    800015f8:	00853783          	ld	a5,8(a0)
    800015fc:	00003717          	auipc	a4,0x3
    80001600:	24f73623          	sd	a5,588(a4) # 80004848 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001604:	02078463          	beqz	a5,8000162c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001608:	00053483          	ld	s1,0(a0)
        delete elem;
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	124080e7          	jalr	292(ra) # 80001730 <_ZdlPv>
}
    80001614:	00048513          	mv	a0,s1
    80001618:	01813083          	ld	ra,24(sp)
    8000161c:	01013403          	ld	s0,16(sp)
    80001620:	00813483          	ld	s1,8(sp)
    80001624:	02010113          	addi	sp,sp,32
    80001628:	00008067          	ret
        if (!head) { tail = 0; }
    8000162c:	00003797          	auipc	a5,0x3
    80001630:	2207b223          	sd	zero,548(a5) # 80004850 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001634:	fd5ff06f          	j	80001608 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001638:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000163c:	fd9ff06f          	j	80001614 <_ZN9Scheduler3getEv+0x3c>

0000000080001640 <_ZN9Scheduler3putEP7_thread>:
{
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	02010413          	addi	s0,sp,32
    80001654:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001658:	01000513          	li	a0,16
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	084080e7          	jalr	132(ra) # 800016e0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001664:	00953023          	sd	s1,0(a0)
    80001668:	00053423          	sd	zero,8(a0)
        if (tail)
    8000166c:	00003797          	auipc	a5,0x3
    80001670:	1e47b783          	ld	a5,484(a5) # 80004850 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001674:	02078263          	beqz	a5,80001698 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    80001678:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000167c:	00003797          	auipc	a5,0x3
    80001680:	1ca7ba23          	sd	a0,468(a5) # 80004850 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001684:	01813083          	ld	ra,24(sp)
    80001688:	01013403          	ld	s0,16(sp)
    8000168c:	00813483          	ld	s1,8(sp)
    80001690:	02010113          	addi	sp,sp,32
    80001694:	00008067          	ret
            head = tail = elem;
    80001698:	00003797          	auipc	a5,0x3
    8000169c:	1b078793          	addi	a5,a5,432 # 80004848 <_ZN9Scheduler16readyThreadQueueE>
    800016a0:	00a7b423          	sd	a0,8(a5)
    800016a4:	00a7b023          	sd	a0,0(a5)
    800016a8:	fddff06f          	j	80001684 <_ZN9Scheduler3putEP7_thread+0x44>

00000000800016ac <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800016ac:	ff010113          	addi	sp,sp,-16
    800016b0:	00113423          	sd	ra,8(sp)
    800016b4:	00813023          	sd	s0,0(sp)
    800016b8:	01010413          	addi	s0,sp,16
    800016bc:	000105b7          	lui	a1,0x10
    800016c0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016c4:	00100513          	li	a0,1
    800016c8:	00000097          	auipc	ra,0x0
    800016cc:	ed0080e7          	jalr	-304(ra) # 80001598 <_Z41__static_initialization_and_destruction_0ii>
    800016d0:	00813083          	ld	ra,8(sp)
    800016d4:	00013403          	ld	s0,0(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret

00000000800016e0 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    800016e0:	ff010113          	addi	sp,sp,-16
    800016e4:	00113423          	sd	ra,8(sp)
    800016e8:	00813023          	sd	s0,0(sp)
    800016ec:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	d18080e7          	jalr	-744(ra) # 80001408 <_Z9mem_allocm>
}
    800016f8:	00813083          	ld	ra,8(sp)
    800016fc:	00013403          	ld	s0,0(sp)
    80001700:	01010113          	addi	sp,sp,16
    80001704:	00008067          	ret

0000000080001708 <_Znam>:

void* operator new[](size_t n){
    80001708:	ff010113          	addi	sp,sp,-16
    8000170c:	00113423          	sd	ra,8(sp)
    80001710:	00813023          	sd	s0,0(sp)
    80001714:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	cf0080e7          	jalr	-784(ra) # 80001408 <_Z9mem_allocm>
}
    80001720:	00813083          	ld	ra,8(sp)
    80001724:	00013403          	ld	s0,0(sp)
    80001728:	01010113          	addi	sp,sp,16
    8000172c:	00008067          	ret

0000000080001730 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00113423          	sd	ra,8(sp)
    80001738:	00813023          	sd	s0,0(sp)
    8000173c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001740:	00000097          	auipc	ra,0x0
    80001744:	d14080e7          	jalr	-748(ra) # 80001454 <_Z8mem_freePv>
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00113423          	sd	ra,8(sp)
    80001760:	00813023          	sd	s0,0(sp)
    80001764:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	cec080e7          	jalr	-788(ra) # 80001454 <_Z8mem_freePv>

}
    80001770:	00813083          	ld	ra,8(sp)
    80001774:	00013403          	ld	s0,0(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00113423          	sd	ra,8(sp)
    80001788:	00813023          	sd	s0,0(sp)
    8000178c:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001790:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001794:	00100713          	li	a4,1
    80001798:	02e78263          	beq	a5,a4,800017bc <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    8000179c:	00200713          	li	a4,2
    800017a0:	02e78863          	beq	a5,a4,800017d0 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    800017a4:	01100713          	li	a4,17
    800017a8:	02e78e63          	beq	a5,a4,800017e4 <_ZN5Riscv14syscallHandlerEv+0x64>
//        _thread** handle = &t;


    }

}
    800017ac:	00813083          	ld	ra,8(sp)
    800017b0:	00013403          	ld	s0,0(sp)
    800017b4:	01010113          	addi	sp,sp,16
    800017b8:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800017bc:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	0f4080e7          	jalr	244(ra) # 800018b4 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800017c8:	00050513          	mv	a0,a0
    800017cc:	fe1ff06f          	j	800017ac <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800017d0:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	108080e7          	jalr	264(ra) # 800018dc <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    800017dc:	00050513          	mv	a0,a0
    800017e0:	fcdff06f          	j	800017ac <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800017e4:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //read pointer to free from a1 and move it to arg1 local variable
    800017e8:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable
    800017ec:	00058793          	mv	a5,a1
}
    800017f0:	fbdff06f          	j	800017ac <_ZN5Riscv14syscallHandlerEv+0x2c>

00000000800017f4 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    800017f4:	ff010113          	addi	sp,sp,-16
    800017f8:	00813423          	sd	s0,8(sp)
    800017fc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001800:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001804:	10200073          	sret
}
    80001808:	00813403          	ld	s0,8(sp)
    8000180c:	01010113          	addi	sp,sp,16
    80001810:	00008067          	ret

0000000080001814 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001814:	fc010113          	addi	sp,sp,-64
    80001818:	02113c23          	sd	ra,56(sp)
    8000181c:	02813823          	sd	s0,48(sp)
    80001820:	02913423          	sd	s1,40(sp)
    80001824:	03213023          	sd	s2,32(sp)
    80001828:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000182c:	142027f3          	csrr	a5,scause
    80001830:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001834:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001838:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    8000183c:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001840:	ff87879b          	addiw	a5,a5,-8
    80001844:	00100713          	li	a4,1
    80001848:	00f77e63          	bgeu	a4,a5,80001864 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    8000184c:	03813083          	ld	ra,56(sp)
    80001850:	03013403          	ld	s0,48(sp)
    80001854:	02813483          	ld	s1,40(sp)
    80001858:	02013903          	ld	s2,32(sp)
    8000185c:	04010113          	addi	sp,sp,64
    80001860:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001864:	141027f3          	csrr	a5,sepc
    80001868:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    8000186c:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001870:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001874:	100027f3          	csrr	a5,sstatus
    80001878:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    8000187c:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001880:	00400793          	li	a5,4
    80001884:	00f68c63          	beq	a3,a5,8000189c <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	ef8080e7          	jalr	-264(ra) # 80001780 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001890:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001894:	14149073          	csrw	sepc,s1
}
    80001898:	fb5ff06f          	j	8000184c <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    8000189c:	00003797          	auipc	a5,0x3
    800018a0:	f447b783          	ld	a5,-188(a5) # 800047e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018a4:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	9a4080e7          	jalr	-1628(ra) # 8000124c <_ZN7_thread8dispatchEv>
    800018b0:	fe1ff06f          	j	80001890 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

00000000800018b4 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    800018b4:	ff010113          	addi	sp,sp,-16
    800018b8:	00113423          	sd	ra,8(sp)
    800018bc:	00813023          	sd	s0,0(sp)
    800018c0:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800018c4:	00002097          	auipc	ra,0x2
    800018c8:	2f4080e7          	jalr	756(ra) # 80003bb8 <__mem_alloc>
}
    800018cc:	00813083          	ld	ra,8(sp)
    800018d0:	00013403          	ld	s0,0(sp)
    800018d4:	01010113          	addi	sp,sp,16
    800018d8:	00008067          	ret

00000000800018dc <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	200080e7          	jalr	512(ra) # 80003aec <__mem_free>
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001904:	fd010113          	addi	sp,sp,-48
    80001908:	02113423          	sd	ra,40(sp)
    8000190c:	02813023          	sd	s0,32(sp)
    80001910:	00913c23          	sd	s1,24(sp)
    80001914:	01213823          	sd	s2,16(sp)
    80001918:	03010413          	addi	s0,sp,48
    8000191c:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001920:	100027f3          	csrr	a5,sstatus
    80001924:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001928:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000192c:	00200793          	li	a5,2
    80001930:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001934:	0004c503          	lbu	a0,0(s1)
    80001938:	00050a63          	beqz	a0,8000194c <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	3d4080e7          	jalr	980(ra) # 80003d10 <__putc>
        string++;
    80001944:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001948:	fedff06f          	j	80001934 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    8000194c:	0009091b          	sext.w	s2,s2
    80001950:	00297913          	andi	s2,s2,2
    80001954:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001958:	10092073          	csrs	sstatus,s2
}
    8000195c:	02813083          	ld	ra,40(sp)
    80001960:	02013403          	ld	s0,32(sp)
    80001964:	01813483          	ld	s1,24(sp)
    80001968:	01013903          	ld	s2,16(sp)
    8000196c:	03010113          	addi	sp,sp,48
    80001970:	00008067          	ret

0000000080001974 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001974:	fc010113          	addi	sp,sp,-64
    80001978:	02113c23          	sd	ra,56(sp)
    8000197c:	02813823          	sd	s0,48(sp)
    80001980:	02913423          	sd	s1,40(sp)
    80001984:	03213023          	sd	s2,32(sp)
    80001988:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000198c:	100027f3          	csrr	a5,sstatus
    80001990:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001994:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001998:	00200793          	li	a5,2
    8000199c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800019a0:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800019a4:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800019a8:	00a00613          	li	a2,10
    800019ac:	02c5773b          	remuw	a4,a0,a2
    800019b0:	02071693          	slli	a3,a4,0x20
    800019b4:	0206d693          	srli	a3,a3,0x20
    800019b8:	00002717          	auipc	a4,0x2
    800019bc:	68070713          	addi	a4,a4,1664 # 80004038 <_ZZ12printIntegermE6digits>
    800019c0:	00d70733          	add	a4,a4,a3
    800019c4:	00074703          	lbu	a4,0(a4)
    800019c8:	fe040693          	addi	a3,s0,-32
    800019cc:	009687b3          	add	a5,a3,s1
    800019d0:	0014849b          	addiw	s1,s1,1
    800019d4:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    800019d8:	0005071b          	sext.w	a4,a0
    800019dc:	02c5553b          	divuw	a0,a0,a2
    800019e0:	00900793          	li	a5,9
    800019e4:	fce7e2e3          	bltu	a5,a4,800019a8 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    800019e8:	fff4849b          	addiw	s1,s1,-1
    800019ec:	0004ce63          	bltz	s1,80001a08 <_Z12printIntegerm+0x94>
    800019f0:	fe040793          	addi	a5,s0,-32
    800019f4:	009787b3          	add	a5,a5,s1
    800019f8:	ff07c503          	lbu	a0,-16(a5)
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	314080e7          	jalr	788(ra) # 80003d10 <__putc>
    80001a04:	fe5ff06f          	j	800019e8 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001a08:	0009091b          	sext.w	s2,s2
    80001a0c:	00297913          	andi	s2,s2,2
    80001a10:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a14:	10092073          	csrs	sstatus,s2
}
    80001a18:	03813083          	ld	ra,56(sp)
    80001a1c:	03013403          	ld	s0,48(sp)
    80001a20:	02813483          	ld	s1,40(sp)
    80001a24:	02013903          	ld	s2,32(sp)
    80001a28:	04010113          	addi	sp,sp,64
    80001a2c:	00008067          	ret

0000000080001a30 <start>:
    80001a30:	ff010113          	addi	sp,sp,-16
    80001a34:	00813423          	sd	s0,8(sp)
    80001a38:	01010413          	addi	s0,sp,16
    80001a3c:	300027f3          	csrr	a5,mstatus
    80001a40:	ffffe737          	lui	a4,0xffffe
    80001a44:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8d2f>
    80001a48:	00e7f7b3          	and	a5,a5,a4
    80001a4c:	00001737          	lui	a4,0x1
    80001a50:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001a54:	00e7e7b3          	or	a5,a5,a4
    80001a58:	30079073          	csrw	mstatus,a5
    80001a5c:	00000797          	auipc	a5,0x0
    80001a60:	16078793          	addi	a5,a5,352 # 80001bbc <system_main>
    80001a64:	34179073          	csrw	mepc,a5
    80001a68:	00000793          	li	a5,0
    80001a6c:	18079073          	csrw	satp,a5
    80001a70:	000107b7          	lui	a5,0x10
    80001a74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001a78:	30279073          	csrw	medeleg,a5
    80001a7c:	30379073          	csrw	mideleg,a5
    80001a80:	104027f3          	csrr	a5,sie
    80001a84:	2227e793          	ori	a5,a5,546
    80001a88:	10479073          	csrw	sie,a5
    80001a8c:	fff00793          	li	a5,-1
    80001a90:	00a7d793          	srli	a5,a5,0xa
    80001a94:	3b079073          	csrw	pmpaddr0,a5
    80001a98:	00f00793          	li	a5,15
    80001a9c:	3a079073          	csrw	pmpcfg0,a5
    80001aa0:	f14027f3          	csrr	a5,mhartid
    80001aa4:	0200c737          	lui	a4,0x200c
    80001aa8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001aac:	0007869b          	sext.w	a3,a5
    80001ab0:	00269713          	slli	a4,a3,0x2
    80001ab4:	000f4637          	lui	a2,0xf4
    80001ab8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001abc:	00d70733          	add	a4,a4,a3
    80001ac0:	0037979b          	slliw	a5,a5,0x3
    80001ac4:	020046b7          	lui	a3,0x2004
    80001ac8:	00d787b3          	add	a5,a5,a3
    80001acc:	00c585b3          	add	a1,a1,a2
    80001ad0:	00371693          	slli	a3,a4,0x3
    80001ad4:	00003717          	auipc	a4,0x3
    80001ad8:	d8c70713          	addi	a4,a4,-628 # 80004860 <timer_scratch>
    80001adc:	00b7b023          	sd	a1,0(a5)
    80001ae0:	00d70733          	add	a4,a4,a3
    80001ae4:	00f73c23          	sd	a5,24(a4)
    80001ae8:	02c73023          	sd	a2,32(a4)
    80001aec:	34071073          	csrw	mscratch,a4
    80001af0:	00000797          	auipc	a5,0x0
    80001af4:	6e078793          	addi	a5,a5,1760 # 800021d0 <timervec>
    80001af8:	30579073          	csrw	mtvec,a5
    80001afc:	300027f3          	csrr	a5,mstatus
    80001b00:	0087e793          	ori	a5,a5,8
    80001b04:	30079073          	csrw	mstatus,a5
    80001b08:	304027f3          	csrr	a5,mie
    80001b0c:	0807e793          	ori	a5,a5,128
    80001b10:	30479073          	csrw	mie,a5
    80001b14:	f14027f3          	csrr	a5,mhartid
    80001b18:	0007879b          	sext.w	a5,a5
    80001b1c:	00078213          	mv	tp,a5
    80001b20:	30200073          	mret
    80001b24:	00813403          	ld	s0,8(sp)
    80001b28:	01010113          	addi	sp,sp,16
    80001b2c:	00008067          	ret

0000000080001b30 <timerinit>:
    80001b30:	ff010113          	addi	sp,sp,-16
    80001b34:	00813423          	sd	s0,8(sp)
    80001b38:	01010413          	addi	s0,sp,16
    80001b3c:	f14027f3          	csrr	a5,mhartid
    80001b40:	0200c737          	lui	a4,0x200c
    80001b44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b48:	0007869b          	sext.w	a3,a5
    80001b4c:	00269713          	slli	a4,a3,0x2
    80001b50:	000f4637          	lui	a2,0xf4
    80001b54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b58:	00d70733          	add	a4,a4,a3
    80001b5c:	0037979b          	slliw	a5,a5,0x3
    80001b60:	020046b7          	lui	a3,0x2004
    80001b64:	00d787b3          	add	a5,a5,a3
    80001b68:	00c585b3          	add	a1,a1,a2
    80001b6c:	00371693          	slli	a3,a4,0x3
    80001b70:	00003717          	auipc	a4,0x3
    80001b74:	cf070713          	addi	a4,a4,-784 # 80004860 <timer_scratch>
    80001b78:	00b7b023          	sd	a1,0(a5)
    80001b7c:	00d70733          	add	a4,a4,a3
    80001b80:	00f73c23          	sd	a5,24(a4)
    80001b84:	02c73023          	sd	a2,32(a4)
    80001b88:	34071073          	csrw	mscratch,a4
    80001b8c:	00000797          	auipc	a5,0x0
    80001b90:	64478793          	addi	a5,a5,1604 # 800021d0 <timervec>
    80001b94:	30579073          	csrw	mtvec,a5
    80001b98:	300027f3          	csrr	a5,mstatus
    80001b9c:	0087e793          	ori	a5,a5,8
    80001ba0:	30079073          	csrw	mstatus,a5
    80001ba4:	304027f3          	csrr	a5,mie
    80001ba8:	0807e793          	ori	a5,a5,128
    80001bac:	30479073          	csrw	mie,a5
    80001bb0:	00813403          	ld	s0,8(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <system_main>:
    80001bbc:	fe010113          	addi	sp,sp,-32
    80001bc0:	00813823          	sd	s0,16(sp)
    80001bc4:	00913423          	sd	s1,8(sp)
    80001bc8:	00113c23          	sd	ra,24(sp)
    80001bcc:	02010413          	addi	s0,sp,32
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	0c4080e7          	jalr	196(ra) # 80001c94 <cpuid>
    80001bd8:	00003497          	auipc	s1,0x3
    80001bdc:	c2848493          	addi	s1,s1,-984 # 80004800 <started>
    80001be0:	02050263          	beqz	a0,80001c04 <system_main+0x48>
    80001be4:	0004a783          	lw	a5,0(s1)
    80001be8:	0007879b          	sext.w	a5,a5
    80001bec:	fe078ce3          	beqz	a5,80001be4 <system_main+0x28>
    80001bf0:	0ff0000f          	fence
    80001bf4:	00002517          	auipc	a0,0x2
    80001bf8:	48450513          	addi	a0,a0,1156 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	a70080e7          	jalr	-1424(ra) # 8000266c <panic>
    80001c04:	00001097          	auipc	ra,0x1
    80001c08:	9c4080e7          	jalr	-1596(ra) # 800025c8 <consoleinit>
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	150080e7          	jalr	336(ra) # 80002d5c <printfinit>
    80001c14:	00002517          	auipc	a0,0x2
    80001c18:	54450513          	addi	a0,a0,1348 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	aac080e7          	jalr	-1364(ra) # 800026c8 <__printf>
    80001c24:	00002517          	auipc	a0,0x2
    80001c28:	42450513          	addi	a0,a0,1060 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	a9c080e7          	jalr	-1380(ra) # 800026c8 <__printf>
    80001c34:	00002517          	auipc	a0,0x2
    80001c38:	52450513          	addi	a0,a0,1316 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	a8c080e7          	jalr	-1396(ra) # 800026c8 <__printf>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	4a4080e7          	jalr	1188(ra) # 800030e8 <kinit>
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	148080e7          	jalr	328(ra) # 80001d94 <trapinit>
    80001c54:	00000097          	auipc	ra,0x0
    80001c58:	16c080e7          	jalr	364(ra) # 80001dc0 <trapinithart>
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	5b4080e7          	jalr	1460(ra) # 80002210 <plicinit>
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	5d4080e7          	jalr	1492(ra) # 80002238 <plicinithart>
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	078080e7          	jalr	120(ra) # 80001ce4 <userinit>
    80001c74:	0ff0000f          	fence
    80001c78:	00100793          	li	a5,1
    80001c7c:	00002517          	auipc	a0,0x2
    80001c80:	3e450513          	addi	a0,a0,996 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001c84:	00f4a023          	sw	a5,0(s1)
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	a40080e7          	jalr	-1472(ra) # 800026c8 <__printf>
    80001c90:	0000006f          	j	80001c90 <system_main+0xd4>

0000000080001c94 <cpuid>:
    80001c94:	ff010113          	addi	sp,sp,-16
    80001c98:	00813423          	sd	s0,8(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    80001ca0:	00020513          	mv	a0,tp
    80001ca4:	00813403          	ld	s0,8(sp)
    80001ca8:	0005051b          	sext.w	a0,a0
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <mycpu>:
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00813423          	sd	s0,8(sp)
    80001cbc:	01010413          	addi	s0,sp,16
    80001cc0:	00020793          	mv	a5,tp
    80001cc4:	00813403          	ld	s0,8(sp)
    80001cc8:	0007879b          	sext.w	a5,a5
    80001ccc:	00779793          	slli	a5,a5,0x7
    80001cd0:	00004517          	auipc	a0,0x4
    80001cd4:	bc050513          	addi	a0,a0,-1088 # 80005890 <cpus>
    80001cd8:	00f50533          	add	a0,a0,a5
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <userinit>:
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	01010113          	addi	sp,sp,16
    80001cf8:	00000317          	auipc	t1,0x0
    80001cfc:	81030067          	jr	-2032(t1) # 80001508 <main>

0000000080001d00 <either_copyout>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813023          	sd	s0,0(sp)
    80001d08:	00113423          	sd	ra,8(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    80001d10:	02051663          	bnez	a0,80001d3c <either_copyout+0x3c>
    80001d14:	00058513          	mv	a0,a1
    80001d18:	00060593          	mv	a1,a2
    80001d1c:	0006861b          	sext.w	a2,a3
    80001d20:	00002097          	auipc	ra,0x2
    80001d24:	c54080e7          	jalr	-940(ra) # 80003974 <__memmove>
    80001d28:	00813083          	ld	ra,8(sp)
    80001d2c:	00013403          	ld	s0,0(sp)
    80001d30:	00000513          	li	a0,0
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret
    80001d3c:	00002517          	auipc	a0,0x2
    80001d40:	36450513          	addi	a0,a0,868 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	928080e7          	jalr	-1752(ra) # 8000266c <panic>

0000000080001d4c <either_copyin>:
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813023          	sd	s0,0(sp)
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    80001d5c:	02059463          	bnez	a1,80001d84 <either_copyin+0x38>
    80001d60:	00060593          	mv	a1,a2
    80001d64:	0006861b          	sext.w	a2,a3
    80001d68:	00002097          	auipc	ra,0x2
    80001d6c:	c0c080e7          	jalr	-1012(ra) # 80003974 <__memmove>
    80001d70:	00813083          	ld	ra,8(sp)
    80001d74:	00013403          	ld	s0,0(sp)
    80001d78:	00000513          	li	a0,0
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret
    80001d84:	00002517          	auipc	a0,0x2
    80001d88:	34450513          	addi	a0,a0,836 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	8e0080e7          	jalr	-1824(ra) # 8000266c <panic>

0000000080001d94 <trapinit>:
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	00002597          	auipc	a1,0x2
    80001da8:	34c58593          	addi	a1,a1,844 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001dac:	00004517          	auipc	a0,0x4
    80001db0:	b6450513          	addi	a0,a0,-1180 # 80005910 <tickslock>
    80001db4:	01010113          	addi	sp,sp,16
    80001db8:	00001317          	auipc	t1,0x1
    80001dbc:	5c030067          	jr	1472(t1) # 80003378 <initlock>

0000000080001dc0 <trapinithart>:
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00813423          	sd	s0,8(sp)
    80001dc8:	01010413          	addi	s0,sp,16
    80001dcc:	00000797          	auipc	a5,0x0
    80001dd0:	2f478793          	addi	a5,a5,756 # 800020c0 <kernelvec>
    80001dd4:	10579073          	csrw	stvec,a5
    80001dd8:	00813403          	ld	s0,8(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <usertrap>:
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    80001df0:	00813403          	ld	s0,8(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <usertrapret>:
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00813423          	sd	s0,8(sp)
    80001e04:	01010413          	addi	s0,sp,16
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret

0000000080001e14 <kerneltrap>:
    80001e14:	fe010113          	addi	sp,sp,-32
    80001e18:	00813823          	sd	s0,16(sp)
    80001e1c:	00113c23          	sd	ra,24(sp)
    80001e20:	00913423          	sd	s1,8(sp)
    80001e24:	02010413          	addi	s0,sp,32
    80001e28:	142025f3          	csrr	a1,scause
    80001e2c:	100027f3          	csrr	a5,sstatus
    80001e30:	0027f793          	andi	a5,a5,2
    80001e34:	10079c63          	bnez	a5,80001f4c <kerneltrap+0x138>
    80001e38:	142027f3          	csrr	a5,scause
    80001e3c:	0207ce63          	bltz	a5,80001e78 <kerneltrap+0x64>
    80001e40:	00002517          	auipc	a0,0x2
    80001e44:	2f850513          	addi	a0,a0,760 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	880080e7          	jalr	-1920(ra) # 800026c8 <__printf>
    80001e50:	141025f3          	csrr	a1,sepc
    80001e54:	14302673          	csrr	a2,stval
    80001e58:	00002517          	auipc	a0,0x2
    80001e5c:	2f050513          	addi	a0,a0,752 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001e60:	00001097          	auipc	ra,0x1
    80001e64:	868080e7          	jalr	-1944(ra) # 800026c8 <__printf>
    80001e68:	00002517          	auipc	a0,0x2
    80001e6c:	2f850513          	addi	a0,a0,760 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	7fc080e7          	jalr	2044(ra) # 8000266c <panic>
    80001e78:	0ff7f713          	andi	a4,a5,255
    80001e7c:	00900693          	li	a3,9
    80001e80:	04d70063          	beq	a4,a3,80001ec0 <kerneltrap+0xac>
    80001e84:	fff00713          	li	a4,-1
    80001e88:	03f71713          	slli	a4,a4,0x3f
    80001e8c:	00170713          	addi	a4,a4,1
    80001e90:	fae798e3          	bne	a5,a4,80001e40 <kerneltrap+0x2c>
    80001e94:	00000097          	auipc	ra,0x0
    80001e98:	e00080e7          	jalr	-512(ra) # 80001c94 <cpuid>
    80001e9c:	06050663          	beqz	a0,80001f08 <kerneltrap+0xf4>
    80001ea0:	144027f3          	csrr	a5,sip
    80001ea4:	ffd7f793          	andi	a5,a5,-3
    80001ea8:	14479073          	csrw	sip,a5
    80001eac:	01813083          	ld	ra,24(sp)
    80001eb0:	01013403          	ld	s0,16(sp)
    80001eb4:	00813483          	ld	s1,8(sp)
    80001eb8:	02010113          	addi	sp,sp,32
    80001ebc:	00008067          	ret
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	3c4080e7          	jalr	964(ra) # 80002284 <plic_claim>
    80001ec8:	00a00793          	li	a5,10
    80001ecc:	00050493          	mv	s1,a0
    80001ed0:	06f50863          	beq	a0,a5,80001f40 <kerneltrap+0x12c>
    80001ed4:	fc050ce3          	beqz	a0,80001eac <kerneltrap+0x98>
    80001ed8:	00050593          	mv	a1,a0
    80001edc:	00002517          	auipc	a0,0x2
    80001ee0:	23c50513          	addi	a0,a0,572 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	7e4080e7          	jalr	2020(ra) # 800026c8 <__printf>
    80001eec:	01013403          	ld	s0,16(sp)
    80001ef0:	01813083          	ld	ra,24(sp)
    80001ef4:	00048513          	mv	a0,s1
    80001ef8:	00813483          	ld	s1,8(sp)
    80001efc:	02010113          	addi	sp,sp,32
    80001f00:	00000317          	auipc	t1,0x0
    80001f04:	3bc30067          	jr	956(t1) # 800022bc <plic_complete>
    80001f08:	00004517          	auipc	a0,0x4
    80001f0c:	a0850513          	addi	a0,a0,-1528 # 80005910 <tickslock>
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	48c080e7          	jalr	1164(ra) # 8000339c <acquire>
    80001f18:	00003717          	auipc	a4,0x3
    80001f1c:	8ec70713          	addi	a4,a4,-1812 # 80004804 <ticks>
    80001f20:	00072783          	lw	a5,0(a4)
    80001f24:	00004517          	auipc	a0,0x4
    80001f28:	9ec50513          	addi	a0,a0,-1556 # 80005910 <tickslock>
    80001f2c:	0017879b          	addiw	a5,a5,1
    80001f30:	00f72023          	sw	a5,0(a4)
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	534080e7          	jalr	1332(ra) # 80003468 <release>
    80001f3c:	f65ff06f          	j	80001ea0 <kerneltrap+0x8c>
    80001f40:	00001097          	auipc	ra,0x1
    80001f44:	090080e7          	jalr	144(ra) # 80002fd0 <uartintr>
    80001f48:	fa5ff06f          	j	80001eec <kerneltrap+0xd8>
    80001f4c:	00002517          	auipc	a0,0x2
    80001f50:	1ac50513          	addi	a0,a0,428 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	718080e7          	jalr	1816(ra) # 8000266c <panic>

0000000080001f5c <clockintr>:
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00004497          	auipc	s1,0x4
    80001f74:	9a048493          	addi	s1,s1,-1632 # 80005910 <tickslock>
    80001f78:	00048513          	mv	a0,s1
    80001f7c:	00001097          	auipc	ra,0x1
    80001f80:	420080e7          	jalr	1056(ra) # 8000339c <acquire>
    80001f84:	00003717          	auipc	a4,0x3
    80001f88:	88070713          	addi	a4,a4,-1920 # 80004804 <ticks>
    80001f8c:	00072783          	lw	a5,0(a4)
    80001f90:	01013403          	ld	s0,16(sp)
    80001f94:	01813083          	ld	ra,24(sp)
    80001f98:	00048513          	mv	a0,s1
    80001f9c:	0017879b          	addiw	a5,a5,1
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	00f72023          	sw	a5,0(a4)
    80001fa8:	02010113          	addi	sp,sp,32
    80001fac:	00001317          	auipc	t1,0x1
    80001fb0:	4bc30067          	jr	1212(t1) # 80003468 <release>

0000000080001fb4 <devintr>:
    80001fb4:	142027f3          	csrr	a5,scause
    80001fb8:	00000513          	li	a0,0
    80001fbc:	0007c463          	bltz	a5,80001fc4 <devintr+0x10>
    80001fc0:	00008067          	ret
    80001fc4:	fe010113          	addi	sp,sp,-32
    80001fc8:	00813823          	sd	s0,16(sp)
    80001fcc:	00113c23          	sd	ra,24(sp)
    80001fd0:	00913423          	sd	s1,8(sp)
    80001fd4:	02010413          	addi	s0,sp,32
    80001fd8:	0ff7f713          	andi	a4,a5,255
    80001fdc:	00900693          	li	a3,9
    80001fe0:	04d70c63          	beq	a4,a3,80002038 <devintr+0x84>
    80001fe4:	fff00713          	li	a4,-1
    80001fe8:	03f71713          	slli	a4,a4,0x3f
    80001fec:	00170713          	addi	a4,a4,1
    80001ff0:	00e78c63          	beq	a5,a4,80002008 <devintr+0x54>
    80001ff4:	01813083          	ld	ra,24(sp)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	00813483          	ld	s1,8(sp)
    80002000:	02010113          	addi	sp,sp,32
    80002004:	00008067          	ret
    80002008:	00000097          	auipc	ra,0x0
    8000200c:	c8c080e7          	jalr	-884(ra) # 80001c94 <cpuid>
    80002010:	06050663          	beqz	a0,8000207c <devintr+0xc8>
    80002014:	144027f3          	csrr	a5,sip
    80002018:	ffd7f793          	andi	a5,a5,-3
    8000201c:	14479073          	csrw	sip,a5
    80002020:	01813083          	ld	ra,24(sp)
    80002024:	01013403          	ld	s0,16(sp)
    80002028:	00813483          	ld	s1,8(sp)
    8000202c:	00200513          	li	a0,2
    80002030:	02010113          	addi	sp,sp,32
    80002034:	00008067          	ret
    80002038:	00000097          	auipc	ra,0x0
    8000203c:	24c080e7          	jalr	588(ra) # 80002284 <plic_claim>
    80002040:	00a00793          	li	a5,10
    80002044:	00050493          	mv	s1,a0
    80002048:	06f50663          	beq	a0,a5,800020b4 <devintr+0x100>
    8000204c:	00100513          	li	a0,1
    80002050:	fa0482e3          	beqz	s1,80001ff4 <devintr+0x40>
    80002054:	00048593          	mv	a1,s1
    80002058:	00002517          	auipc	a0,0x2
    8000205c:	0c050513          	addi	a0,a0,192 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80002060:	00000097          	auipc	ra,0x0
    80002064:	668080e7          	jalr	1640(ra) # 800026c8 <__printf>
    80002068:	00048513          	mv	a0,s1
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	250080e7          	jalr	592(ra) # 800022bc <plic_complete>
    80002074:	00100513          	li	a0,1
    80002078:	f7dff06f          	j	80001ff4 <devintr+0x40>
    8000207c:	00004517          	auipc	a0,0x4
    80002080:	89450513          	addi	a0,a0,-1900 # 80005910 <tickslock>
    80002084:	00001097          	auipc	ra,0x1
    80002088:	318080e7          	jalr	792(ra) # 8000339c <acquire>
    8000208c:	00002717          	auipc	a4,0x2
    80002090:	77870713          	addi	a4,a4,1912 # 80004804 <ticks>
    80002094:	00072783          	lw	a5,0(a4)
    80002098:	00004517          	auipc	a0,0x4
    8000209c:	87850513          	addi	a0,a0,-1928 # 80005910 <tickslock>
    800020a0:	0017879b          	addiw	a5,a5,1
    800020a4:	00f72023          	sw	a5,0(a4)
    800020a8:	00001097          	auipc	ra,0x1
    800020ac:	3c0080e7          	jalr	960(ra) # 80003468 <release>
    800020b0:	f65ff06f          	j	80002014 <devintr+0x60>
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	f1c080e7          	jalr	-228(ra) # 80002fd0 <uartintr>
    800020bc:	fadff06f          	j	80002068 <devintr+0xb4>

00000000800020c0 <kernelvec>:
    800020c0:	f0010113          	addi	sp,sp,-256
    800020c4:	00113023          	sd	ra,0(sp)
    800020c8:	00213423          	sd	sp,8(sp)
    800020cc:	00313823          	sd	gp,16(sp)
    800020d0:	00413c23          	sd	tp,24(sp)
    800020d4:	02513023          	sd	t0,32(sp)
    800020d8:	02613423          	sd	t1,40(sp)
    800020dc:	02713823          	sd	t2,48(sp)
    800020e0:	02813c23          	sd	s0,56(sp)
    800020e4:	04913023          	sd	s1,64(sp)
    800020e8:	04a13423          	sd	a0,72(sp)
    800020ec:	04b13823          	sd	a1,80(sp)
    800020f0:	04c13c23          	sd	a2,88(sp)
    800020f4:	06d13023          	sd	a3,96(sp)
    800020f8:	06e13423          	sd	a4,104(sp)
    800020fc:	06f13823          	sd	a5,112(sp)
    80002100:	07013c23          	sd	a6,120(sp)
    80002104:	09113023          	sd	a7,128(sp)
    80002108:	09213423          	sd	s2,136(sp)
    8000210c:	09313823          	sd	s3,144(sp)
    80002110:	09413c23          	sd	s4,152(sp)
    80002114:	0b513023          	sd	s5,160(sp)
    80002118:	0b613423          	sd	s6,168(sp)
    8000211c:	0b713823          	sd	s7,176(sp)
    80002120:	0b813c23          	sd	s8,184(sp)
    80002124:	0d913023          	sd	s9,192(sp)
    80002128:	0da13423          	sd	s10,200(sp)
    8000212c:	0db13823          	sd	s11,208(sp)
    80002130:	0dc13c23          	sd	t3,216(sp)
    80002134:	0fd13023          	sd	t4,224(sp)
    80002138:	0fe13423          	sd	t5,232(sp)
    8000213c:	0ff13823          	sd	t6,240(sp)
    80002140:	cd5ff0ef          	jal	ra,80001e14 <kerneltrap>
    80002144:	00013083          	ld	ra,0(sp)
    80002148:	00813103          	ld	sp,8(sp)
    8000214c:	01013183          	ld	gp,16(sp)
    80002150:	02013283          	ld	t0,32(sp)
    80002154:	02813303          	ld	t1,40(sp)
    80002158:	03013383          	ld	t2,48(sp)
    8000215c:	03813403          	ld	s0,56(sp)
    80002160:	04013483          	ld	s1,64(sp)
    80002164:	04813503          	ld	a0,72(sp)
    80002168:	05013583          	ld	a1,80(sp)
    8000216c:	05813603          	ld	a2,88(sp)
    80002170:	06013683          	ld	a3,96(sp)
    80002174:	06813703          	ld	a4,104(sp)
    80002178:	07013783          	ld	a5,112(sp)
    8000217c:	07813803          	ld	a6,120(sp)
    80002180:	08013883          	ld	a7,128(sp)
    80002184:	08813903          	ld	s2,136(sp)
    80002188:	09013983          	ld	s3,144(sp)
    8000218c:	09813a03          	ld	s4,152(sp)
    80002190:	0a013a83          	ld	s5,160(sp)
    80002194:	0a813b03          	ld	s6,168(sp)
    80002198:	0b013b83          	ld	s7,176(sp)
    8000219c:	0b813c03          	ld	s8,184(sp)
    800021a0:	0c013c83          	ld	s9,192(sp)
    800021a4:	0c813d03          	ld	s10,200(sp)
    800021a8:	0d013d83          	ld	s11,208(sp)
    800021ac:	0d813e03          	ld	t3,216(sp)
    800021b0:	0e013e83          	ld	t4,224(sp)
    800021b4:	0e813f03          	ld	t5,232(sp)
    800021b8:	0f013f83          	ld	t6,240(sp)
    800021bc:	10010113          	addi	sp,sp,256
    800021c0:	10200073          	sret
    800021c4:	00000013          	nop
    800021c8:	00000013          	nop
    800021cc:	00000013          	nop

00000000800021d0 <timervec>:
    800021d0:	34051573          	csrrw	a0,mscratch,a0
    800021d4:	00b53023          	sd	a1,0(a0)
    800021d8:	00c53423          	sd	a2,8(a0)
    800021dc:	00d53823          	sd	a3,16(a0)
    800021e0:	01853583          	ld	a1,24(a0)
    800021e4:	02053603          	ld	a2,32(a0)
    800021e8:	0005b683          	ld	a3,0(a1)
    800021ec:	00c686b3          	add	a3,a3,a2
    800021f0:	00d5b023          	sd	a3,0(a1)
    800021f4:	00200593          	li	a1,2
    800021f8:	14459073          	csrw	sip,a1
    800021fc:	01053683          	ld	a3,16(a0)
    80002200:	00853603          	ld	a2,8(a0)
    80002204:	00053583          	ld	a1,0(a0)
    80002208:	34051573          	csrrw	a0,mscratch,a0
    8000220c:	30200073          	mret

0000000080002210 <plicinit>:
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00813423          	sd	s0,8(sp)
    80002218:	01010413          	addi	s0,sp,16
    8000221c:	00813403          	ld	s0,8(sp)
    80002220:	0c0007b7          	lui	a5,0xc000
    80002224:	00100713          	li	a4,1
    80002228:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000222c:	00e7a223          	sw	a4,4(a5)
    80002230:	01010113          	addi	sp,sp,16
    80002234:	00008067          	ret

0000000080002238 <plicinithart>:
    80002238:	ff010113          	addi	sp,sp,-16
    8000223c:	00813023          	sd	s0,0(sp)
    80002240:	00113423          	sd	ra,8(sp)
    80002244:	01010413          	addi	s0,sp,16
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	a4c080e7          	jalr	-1460(ra) # 80001c94 <cpuid>
    80002250:	0085171b          	slliw	a4,a0,0x8
    80002254:	0c0027b7          	lui	a5,0xc002
    80002258:	00e787b3          	add	a5,a5,a4
    8000225c:	40200713          	li	a4,1026
    80002260:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002264:	00813083          	ld	ra,8(sp)
    80002268:	00013403          	ld	s0,0(sp)
    8000226c:	00d5151b          	slliw	a0,a0,0xd
    80002270:	0c2017b7          	lui	a5,0xc201
    80002274:	00a78533          	add	a0,a5,a0
    80002278:	00052023          	sw	zero,0(a0)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <plic_claim>:
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00813023          	sd	s0,0(sp)
    8000228c:	00113423          	sd	ra,8(sp)
    80002290:	01010413          	addi	s0,sp,16
    80002294:	00000097          	auipc	ra,0x0
    80002298:	a00080e7          	jalr	-1536(ra) # 80001c94 <cpuid>
    8000229c:	00813083          	ld	ra,8(sp)
    800022a0:	00013403          	ld	s0,0(sp)
    800022a4:	00d5151b          	slliw	a0,a0,0xd
    800022a8:	0c2017b7          	lui	a5,0xc201
    800022ac:	00a78533          	add	a0,a5,a0
    800022b0:	00452503          	lw	a0,4(a0)
    800022b4:	01010113          	addi	sp,sp,16
    800022b8:	00008067          	ret

00000000800022bc <plic_complete>:
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00813823          	sd	s0,16(sp)
    800022c4:	00913423          	sd	s1,8(sp)
    800022c8:	00113c23          	sd	ra,24(sp)
    800022cc:	02010413          	addi	s0,sp,32
    800022d0:	00050493          	mv	s1,a0
    800022d4:	00000097          	auipc	ra,0x0
    800022d8:	9c0080e7          	jalr	-1600(ra) # 80001c94 <cpuid>
    800022dc:	01813083          	ld	ra,24(sp)
    800022e0:	01013403          	ld	s0,16(sp)
    800022e4:	00d5179b          	slliw	a5,a0,0xd
    800022e8:	0c201737          	lui	a4,0xc201
    800022ec:	00f707b3          	add	a5,a4,a5
    800022f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800022f4:	00813483          	ld	s1,8(sp)
    800022f8:	02010113          	addi	sp,sp,32
    800022fc:	00008067          	ret

0000000080002300 <consolewrite>:
    80002300:	fb010113          	addi	sp,sp,-80
    80002304:	04813023          	sd	s0,64(sp)
    80002308:	04113423          	sd	ra,72(sp)
    8000230c:	02913c23          	sd	s1,56(sp)
    80002310:	03213823          	sd	s2,48(sp)
    80002314:	03313423          	sd	s3,40(sp)
    80002318:	03413023          	sd	s4,32(sp)
    8000231c:	01513c23          	sd	s5,24(sp)
    80002320:	05010413          	addi	s0,sp,80
    80002324:	06c05c63          	blez	a2,8000239c <consolewrite+0x9c>
    80002328:	00060993          	mv	s3,a2
    8000232c:	00050a13          	mv	s4,a0
    80002330:	00058493          	mv	s1,a1
    80002334:	00000913          	li	s2,0
    80002338:	fff00a93          	li	s5,-1
    8000233c:	01c0006f          	j	80002358 <consolewrite+0x58>
    80002340:	fbf44503          	lbu	a0,-65(s0)
    80002344:	0019091b          	addiw	s2,s2,1
    80002348:	00148493          	addi	s1,s1,1
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	a9c080e7          	jalr	-1380(ra) # 80002de8 <uartputc>
    80002354:	03298063          	beq	s3,s2,80002374 <consolewrite+0x74>
    80002358:	00048613          	mv	a2,s1
    8000235c:	00100693          	li	a3,1
    80002360:	000a0593          	mv	a1,s4
    80002364:	fbf40513          	addi	a0,s0,-65
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	9e4080e7          	jalr	-1564(ra) # 80001d4c <either_copyin>
    80002370:	fd5518e3          	bne	a0,s5,80002340 <consolewrite+0x40>
    80002374:	04813083          	ld	ra,72(sp)
    80002378:	04013403          	ld	s0,64(sp)
    8000237c:	03813483          	ld	s1,56(sp)
    80002380:	02813983          	ld	s3,40(sp)
    80002384:	02013a03          	ld	s4,32(sp)
    80002388:	01813a83          	ld	s5,24(sp)
    8000238c:	00090513          	mv	a0,s2
    80002390:	03013903          	ld	s2,48(sp)
    80002394:	05010113          	addi	sp,sp,80
    80002398:	00008067          	ret
    8000239c:	00000913          	li	s2,0
    800023a0:	fd5ff06f          	j	80002374 <consolewrite+0x74>

00000000800023a4 <consoleread>:
    800023a4:	f9010113          	addi	sp,sp,-112
    800023a8:	06813023          	sd	s0,96(sp)
    800023ac:	04913c23          	sd	s1,88(sp)
    800023b0:	05213823          	sd	s2,80(sp)
    800023b4:	05313423          	sd	s3,72(sp)
    800023b8:	05413023          	sd	s4,64(sp)
    800023bc:	03513c23          	sd	s5,56(sp)
    800023c0:	03613823          	sd	s6,48(sp)
    800023c4:	03713423          	sd	s7,40(sp)
    800023c8:	03813023          	sd	s8,32(sp)
    800023cc:	06113423          	sd	ra,104(sp)
    800023d0:	01913c23          	sd	s9,24(sp)
    800023d4:	07010413          	addi	s0,sp,112
    800023d8:	00060b93          	mv	s7,a2
    800023dc:	00050913          	mv	s2,a0
    800023e0:	00058c13          	mv	s8,a1
    800023e4:	00060b1b          	sext.w	s6,a2
    800023e8:	00003497          	auipc	s1,0x3
    800023ec:	55048493          	addi	s1,s1,1360 # 80005938 <cons>
    800023f0:	00400993          	li	s3,4
    800023f4:	fff00a13          	li	s4,-1
    800023f8:	00a00a93          	li	s5,10
    800023fc:	05705e63          	blez	s7,80002458 <consoleread+0xb4>
    80002400:	09c4a703          	lw	a4,156(s1)
    80002404:	0984a783          	lw	a5,152(s1)
    80002408:	0007071b          	sext.w	a4,a4
    8000240c:	08e78463          	beq	a5,a4,80002494 <consoleread+0xf0>
    80002410:	07f7f713          	andi	a4,a5,127
    80002414:	00e48733          	add	a4,s1,a4
    80002418:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000241c:	0017869b          	addiw	a3,a5,1
    80002420:	08d4ac23          	sw	a3,152(s1)
    80002424:	00070c9b          	sext.w	s9,a4
    80002428:	0b370663          	beq	a4,s3,800024d4 <consoleread+0x130>
    8000242c:	00100693          	li	a3,1
    80002430:	f9f40613          	addi	a2,s0,-97
    80002434:	000c0593          	mv	a1,s8
    80002438:	00090513          	mv	a0,s2
    8000243c:	f8e40fa3          	sb	a4,-97(s0)
    80002440:	00000097          	auipc	ra,0x0
    80002444:	8c0080e7          	jalr	-1856(ra) # 80001d00 <either_copyout>
    80002448:	01450863          	beq	a0,s4,80002458 <consoleread+0xb4>
    8000244c:	001c0c13          	addi	s8,s8,1
    80002450:	fffb8b9b          	addiw	s7,s7,-1
    80002454:	fb5c94e3          	bne	s9,s5,800023fc <consoleread+0x58>
    80002458:	000b851b          	sext.w	a0,s7
    8000245c:	06813083          	ld	ra,104(sp)
    80002460:	06013403          	ld	s0,96(sp)
    80002464:	05813483          	ld	s1,88(sp)
    80002468:	05013903          	ld	s2,80(sp)
    8000246c:	04813983          	ld	s3,72(sp)
    80002470:	04013a03          	ld	s4,64(sp)
    80002474:	03813a83          	ld	s5,56(sp)
    80002478:	02813b83          	ld	s7,40(sp)
    8000247c:	02013c03          	ld	s8,32(sp)
    80002480:	01813c83          	ld	s9,24(sp)
    80002484:	40ab053b          	subw	a0,s6,a0
    80002488:	03013b03          	ld	s6,48(sp)
    8000248c:	07010113          	addi	sp,sp,112
    80002490:	00008067          	ret
    80002494:	00001097          	auipc	ra,0x1
    80002498:	1d8080e7          	jalr	472(ra) # 8000366c <push_on>
    8000249c:	0984a703          	lw	a4,152(s1)
    800024a0:	09c4a783          	lw	a5,156(s1)
    800024a4:	0007879b          	sext.w	a5,a5
    800024a8:	fef70ce3          	beq	a4,a5,800024a0 <consoleread+0xfc>
    800024ac:	00001097          	auipc	ra,0x1
    800024b0:	234080e7          	jalr	564(ra) # 800036e0 <pop_on>
    800024b4:	0984a783          	lw	a5,152(s1)
    800024b8:	07f7f713          	andi	a4,a5,127
    800024bc:	00e48733          	add	a4,s1,a4
    800024c0:	01874703          	lbu	a4,24(a4)
    800024c4:	0017869b          	addiw	a3,a5,1
    800024c8:	08d4ac23          	sw	a3,152(s1)
    800024cc:	00070c9b          	sext.w	s9,a4
    800024d0:	f5371ee3          	bne	a4,s3,8000242c <consoleread+0x88>
    800024d4:	000b851b          	sext.w	a0,s7
    800024d8:	f96bf2e3          	bgeu	s7,s6,8000245c <consoleread+0xb8>
    800024dc:	08f4ac23          	sw	a5,152(s1)
    800024e0:	f7dff06f          	j	8000245c <consoleread+0xb8>

00000000800024e4 <consputc>:
    800024e4:	10000793          	li	a5,256
    800024e8:	00f50663          	beq	a0,a5,800024f4 <consputc+0x10>
    800024ec:	00001317          	auipc	t1,0x1
    800024f0:	9f430067          	jr	-1548(t1) # 80002ee0 <uartputc_sync>
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    80002504:	00800513          	li	a0,8
    80002508:	00001097          	auipc	ra,0x1
    8000250c:	9d8080e7          	jalr	-1576(ra) # 80002ee0 <uartputc_sync>
    80002510:	02000513          	li	a0,32
    80002514:	00001097          	auipc	ra,0x1
    80002518:	9cc080e7          	jalr	-1588(ra) # 80002ee0 <uartputc_sync>
    8000251c:	00013403          	ld	s0,0(sp)
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00800513          	li	a0,8
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00001317          	auipc	t1,0x1
    80002530:	9b430067          	jr	-1612(t1) # 80002ee0 <uartputc_sync>

0000000080002534 <consoleintr>:
    80002534:	fe010113          	addi	sp,sp,-32
    80002538:	00813823          	sd	s0,16(sp)
    8000253c:	00913423          	sd	s1,8(sp)
    80002540:	01213023          	sd	s2,0(sp)
    80002544:	00113c23          	sd	ra,24(sp)
    80002548:	02010413          	addi	s0,sp,32
    8000254c:	00003917          	auipc	s2,0x3
    80002550:	3ec90913          	addi	s2,s2,1004 # 80005938 <cons>
    80002554:	00050493          	mv	s1,a0
    80002558:	00090513          	mv	a0,s2
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	e40080e7          	jalr	-448(ra) # 8000339c <acquire>
    80002564:	02048c63          	beqz	s1,8000259c <consoleintr+0x68>
    80002568:	0a092783          	lw	a5,160(s2)
    8000256c:	09892703          	lw	a4,152(s2)
    80002570:	07f00693          	li	a3,127
    80002574:	40e7873b          	subw	a4,a5,a4
    80002578:	02e6e263          	bltu	a3,a4,8000259c <consoleintr+0x68>
    8000257c:	00d00713          	li	a4,13
    80002580:	04e48063          	beq	s1,a4,800025c0 <consoleintr+0x8c>
    80002584:	07f7f713          	andi	a4,a5,127
    80002588:	00e90733          	add	a4,s2,a4
    8000258c:	0017879b          	addiw	a5,a5,1
    80002590:	0af92023          	sw	a5,160(s2)
    80002594:	00970c23          	sb	s1,24(a4)
    80002598:	08f92e23          	sw	a5,156(s2)
    8000259c:	01013403          	ld	s0,16(sp)
    800025a0:	01813083          	ld	ra,24(sp)
    800025a4:	00813483          	ld	s1,8(sp)
    800025a8:	00013903          	ld	s2,0(sp)
    800025ac:	00003517          	auipc	a0,0x3
    800025b0:	38c50513          	addi	a0,a0,908 # 80005938 <cons>
    800025b4:	02010113          	addi	sp,sp,32
    800025b8:	00001317          	auipc	t1,0x1
    800025bc:	eb030067          	jr	-336(t1) # 80003468 <release>
    800025c0:	00a00493          	li	s1,10
    800025c4:	fc1ff06f          	j	80002584 <consoleintr+0x50>

00000000800025c8 <consoleinit>:
    800025c8:	fe010113          	addi	sp,sp,-32
    800025cc:	00113c23          	sd	ra,24(sp)
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00913423          	sd	s1,8(sp)
    800025d8:	02010413          	addi	s0,sp,32
    800025dc:	00003497          	auipc	s1,0x3
    800025e0:	35c48493          	addi	s1,s1,860 # 80005938 <cons>
    800025e4:	00048513          	mv	a0,s1
    800025e8:	00002597          	auipc	a1,0x2
    800025ec:	b8858593          	addi	a1,a1,-1144 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    800025f0:	00001097          	auipc	ra,0x1
    800025f4:	d88080e7          	jalr	-632(ra) # 80003378 <initlock>
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	7ac080e7          	jalr	1964(ra) # 80002da4 <uartinit>
    80002600:	01813083          	ld	ra,24(sp)
    80002604:	01013403          	ld	s0,16(sp)
    80002608:	00000797          	auipc	a5,0x0
    8000260c:	d9c78793          	addi	a5,a5,-612 # 800023a4 <consoleread>
    80002610:	0af4bc23          	sd	a5,184(s1)
    80002614:	00000797          	auipc	a5,0x0
    80002618:	cec78793          	addi	a5,a5,-788 # 80002300 <consolewrite>
    8000261c:	0cf4b023          	sd	a5,192(s1)
    80002620:	00813483          	ld	s1,8(sp)
    80002624:	02010113          	addi	sp,sp,32
    80002628:	00008067          	ret

000000008000262c <console_read>:
    8000262c:	ff010113          	addi	sp,sp,-16
    80002630:	00813423          	sd	s0,8(sp)
    80002634:	01010413          	addi	s0,sp,16
    80002638:	00813403          	ld	s0,8(sp)
    8000263c:	00003317          	auipc	t1,0x3
    80002640:	3b433303          	ld	t1,948(t1) # 800059f0 <devsw+0x10>
    80002644:	01010113          	addi	sp,sp,16
    80002648:	00030067          	jr	t1

000000008000264c <console_write>:
    8000264c:	ff010113          	addi	sp,sp,-16
    80002650:	00813423          	sd	s0,8(sp)
    80002654:	01010413          	addi	s0,sp,16
    80002658:	00813403          	ld	s0,8(sp)
    8000265c:	00003317          	auipc	t1,0x3
    80002660:	39c33303          	ld	t1,924(t1) # 800059f8 <devsw+0x18>
    80002664:	01010113          	addi	sp,sp,16
    80002668:	00030067          	jr	t1

000000008000266c <panic>:
    8000266c:	fe010113          	addi	sp,sp,-32
    80002670:	00113c23          	sd	ra,24(sp)
    80002674:	00813823          	sd	s0,16(sp)
    80002678:	00913423          	sd	s1,8(sp)
    8000267c:	02010413          	addi	s0,sp,32
    80002680:	00050493          	mv	s1,a0
    80002684:	00002517          	auipc	a0,0x2
    80002688:	af450513          	addi	a0,a0,-1292 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    8000268c:	00003797          	auipc	a5,0x3
    80002690:	4007a623          	sw	zero,1036(a5) # 80005a98 <pr+0x18>
    80002694:	00000097          	auipc	ra,0x0
    80002698:	034080e7          	jalr	52(ra) # 800026c8 <__printf>
    8000269c:	00048513          	mv	a0,s1
    800026a0:	00000097          	auipc	ra,0x0
    800026a4:	028080e7          	jalr	40(ra) # 800026c8 <__printf>
    800026a8:	00002517          	auipc	a0,0x2
    800026ac:	ab050513          	addi	a0,a0,-1360 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800026b0:	00000097          	auipc	ra,0x0
    800026b4:	018080e7          	jalr	24(ra) # 800026c8 <__printf>
    800026b8:	00100793          	li	a5,1
    800026bc:	00002717          	auipc	a4,0x2
    800026c0:	14f72623          	sw	a5,332(a4) # 80004808 <panicked>
    800026c4:	0000006f          	j	800026c4 <panic+0x58>

00000000800026c8 <__printf>:
    800026c8:	f3010113          	addi	sp,sp,-208
    800026cc:	08813023          	sd	s0,128(sp)
    800026d0:	07313423          	sd	s3,104(sp)
    800026d4:	09010413          	addi	s0,sp,144
    800026d8:	05813023          	sd	s8,64(sp)
    800026dc:	08113423          	sd	ra,136(sp)
    800026e0:	06913c23          	sd	s1,120(sp)
    800026e4:	07213823          	sd	s2,112(sp)
    800026e8:	07413023          	sd	s4,96(sp)
    800026ec:	05513c23          	sd	s5,88(sp)
    800026f0:	05613823          	sd	s6,80(sp)
    800026f4:	05713423          	sd	s7,72(sp)
    800026f8:	03913c23          	sd	s9,56(sp)
    800026fc:	03a13823          	sd	s10,48(sp)
    80002700:	03b13423          	sd	s11,40(sp)
    80002704:	00003317          	auipc	t1,0x3
    80002708:	37c30313          	addi	t1,t1,892 # 80005a80 <pr>
    8000270c:	01832c03          	lw	s8,24(t1)
    80002710:	00b43423          	sd	a1,8(s0)
    80002714:	00c43823          	sd	a2,16(s0)
    80002718:	00d43c23          	sd	a3,24(s0)
    8000271c:	02e43023          	sd	a4,32(s0)
    80002720:	02f43423          	sd	a5,40(s0)
    80002724:	03043823          	sd	a6,48(s0)
    80002728:	03143c23          	sd	a7,56(s0)
    8000272c:	00050993          	mv	s3,a0
    80002730:	4a0c1663          	bnez	s8,80002bdc <__printf+0x514>
    80002734:	60098c63          	beqz	s3,80002d4c <__printf+0x684>
    80002738:	0009c503          	lbu	a0,0(s3)
    8000273c:	00840793          	addi	a5,s0,8
    80002740:	f6f43c23          	sd	a5,-136(s0)
    80002744:	00000493          	li	s1,0
    80002748:	22050063          	beqz	a0,80002968 <__printf+0x2a0>
    8000274c:	00002a37          	lui	s4,0x2
    80002750:	00018ab7          	lui	s5,0x18
    80002754:	000f4b37          	lui	s6,0xf4
    80002758:	00989bb7          	lui	s7,0x989
    8000275c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002760:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002764:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002768:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000276c:	00148c9b          	addiw	s9,s1,1
    80002770:	02500793          	li	a5,37
    80002774:	01998933          	add	s2,s3,s9
    80002778:	38f51263          	bne	a0,a5,80002afc <__printf+0x434>
    8000277c:	00094783          	lbu	a5,0(s2)
    80002780:	00078c9b          	sext.w	s9,a5
    80002784:	1e078263          	beqz	a5,80002968 <__printf+0x2a0>
    80002788:	0024849b          	addiw	s1,s1,2
    8000278c:	07000713          	li	a4,112
    80002790:	00998933          	add	s2,s3,s1
    80002794:	38e78a63          	beq	a5,a4,80002b28 <__printf+0x460>
    80002798:	20f76863          	bltu	a4,a5,800029a8 <__printf+0x2e0>
    8000279c:	42a78863          	beq	a5,a0,80002bcc <__printf+0x504>
    800027a0:	06400713          	li	a4,100
    800027a4:	40e79663          	bne	a5,a4,80002bb0 <__printf+0x4e8>
    800027a8:	f7843783          	ld	a5,-136(s0)
    800027ac:	0007a603          	lw	a2,0(a5)
    800027b0:	00878793          	addi	a5,a5,8
    800027b4:	f6f43c23          	sd	a5,-136(s0)
    800027b8:	42064a63          	bltz	a2,80002bec <__printf+0x524>
    800027bc:	00a00713          	li	a4,10
    800027c0:	02e677bb          	remuw	a5,a2,a4
    800027c4:	00002d97          	auipc	s11,0x2
    800027c8:	9dcd8d93          	addi	s11,s11,-1572 # 800041a0 <digits>
    800027cc:	00900593          	li	a1,9
    800027d0:	0006051b          	sext.w	a0,a2
    800027d4:	00000c93          	li	s9,0
    800027d8:	02079793          	slli	a5,a5,0x20
    800027dc:	0207d793          	srli	a5,a5,0x20
    800027e0:	00fd87b3          	add	a5,s11,a5
    800027e4:	0007c783          	lbu	a5,0(a5)
    800027e8:	02e656bb          	divuw	a3,a2,a4
    800027ec:	f8f40023          	sb	a5,-128(s0)
    800027f0:	14c5d863          	bge	a1,a2,80002940 <__printf+0x278>
    800027f4:	06300593          	li	a1,99
    800027f8:	00100c93          	li	s9,1
    800027fc:	02e6f7bb          	remuw	a5,a3,a4
    80002800:	02079793          	slli	a5,a5,0x20
    80002804:	0207d793          	srli	a5,a5,0x20
    80002808:	00fd87b3          	add	a5,s11,a5
    8000280c:	0007c783          	lbu	a5,0(a5)
    80002810:	02e6d73b          	divuw	a4,a3,a4
    80002814:	f8f400a3          	sb	a5,-127(s0)
    80002818:	12a5f463          	bgeu	a1,a0,80002940 <__printf+0x278>
    8000281c:	00a00693          	li	a3,10
    80002820:	00900593          	li	a1,9
    80002824:	02d777bb          	remuw	a5,a4,a3
    80002828:	02079793          	slli	a5,a5,0x20
    8000282c:	0207d793          	srli	a5,a5,0x20
    80002830:	00fd87b3          	add	a5,s11,a5
    80002834:	0007c503          	lbu	a0,0(a5)
    80002838:	02d757bb          	divuw	a5,a4,a3
    8000283c:	f8a40123          	sb	a0,-126(s0)
    80002840:	48e5f263          	bgeu	a1,a4,80002cc4 <__printf+0x5fc>
    80002844:	06300513          	li	a0,99
    80002848:	02d7f5bb          	remuw	a1,a5,a3
    8000284c:	02059593          	slli	a1,a1,0x20
    80002850:	0205d593          	srli	a1,a1,0x20
    80002854:	00bd85b3          	add	a1,s11,a1
    80002858:	0005c583          	lbu	a1,0(a1)
    8000285c:	02d7d7bb          	divuw	a5,a5,a3
    80002860:	f8b401a3          	sb	a1,-125(s0)
    80002864:	48e57263          	bgeu	a0,a4,80002ce8 <__printf+0x620>
    80002868:	3e700513          	li	a0,999
    8000286c:	02d7f5bb          	remuw	a1,a5,a3
    80002870:	02059593          	slli	a1,a1,0x20
    80002874:	0205d593          	srli	a1,a1,0x20
    80002878:	00bd85b3          	add	a1,s11,a1
    8000287c:	0005c583          	lbu	a1,0(a1)
    80002880:	02d7d7bb          	divuw	a5,a5,a3
    80002884:	f8b40223          	sb	a1,-124(s0)
    80002888:	46e57663          	bgeu	a0,a4,80002cf4 <__printf+0x62c>
    8000288c:	02d7f5bb          	remuw	a1,a5,a3
    80002890:	02059593          	slli	a1,a1,0x20
    80002894:	0205d593          	srli	a1,a1,0x20
    80002898:	00bd85b3          	add	a1,s11,a1
    8000289c:	0005c583          	lbu	a1,0(a1)
    800028a0:	02d7d7bb          	divuw	a5,a5,a3
    800028a4:	f8b402a3          	sb	a1,-123(s0)
    800028a8:	46ea7863          	bgeu	s4,a4,80002d18 <__printf+0x650>
    800028ac:	02d7f5bb          	remuw	a1,a5,a3
    800028b0:	02059593          	slli	a1,a1,0x20
    800028b4:	0205d593          	srli	a1,a1,0x20
    800028b8:	00bd85b3          	add	a1,s11,a1
    800028bc:	0005c583          	lbu	a1,0(a1)
    800028c0:	02d7d7bb          	divuw	a5,a5,a3
    800028c4:	f8b40323          	sb	a1,-122(s0)
    800028c8:	3eeaf863          	bgeu	s5,a4,80002cb8 <__printf+0x5f0>
    800028cc:	02d7f5bb          	remuw	a1,a5,a3
    800028d0:	02059593          	slli	a1,a1,0x20
    800028d4:	0205d593          	srli	a1,a1,0x20
    800028d8:	00bd85b3          	add	a1,s11,a1
    800028dc:	0005c583          	lbu	a1,0(a1)
    800028e0:	02d7d7bb          	divuw	a5,a5,a3
    800028e4:	f8b403a3          	sb	a1,-121(s0)
    800028e8:	42eb7e63          	bgeu	s6,a4,80002d24 <__printf+0x65c>
    800028ec:	02d7f5bb          	remuw	a1,a5,a3
    800028f0:	02059593          	slli	a1,a1,0x20
    800028f4:	0205d593          	srli	a1,a1,0x20
    800028f8:	00bd85b3          	add	a1,s11,a1
    800028fc:	0005c583          	lbu	a1,0(a1)
    80002900:	02d7d7bb          	divuw	a5,a5,a3
    80002904:	f8b40423          	sb	a1,-120(s0)
    80002908:	42ebfc63          	bgeu	s7,a4,80002d40 <__printf+0x678>
    8000290c:	02079793          	slli	a5,a5,0x20
    80002910:	0207d793          	srli	a5,a5,0x20
    80002914:	00fd8db3          	add	s11,s11,a5
    80002918:	000dc703          	lbu	a4,0(s11)
    8000291c:	00a00793          	li	a5,10
    80002920:	00900c93          	li	s9,9
    80002924:	f8e404a3          	sb	a4,-119(s0)
    80002928:	00065c63          	bgez	a2,80002940 <__printf+0x278>
    8000292c:	f9040713          	addi	a4,s0,-112
    80002930:	00f70733          	add	a4,a4,a5
    80002934:	02d00693          	li	a3,45
    80002938:	fed70823          	sb	a3,-16(a4)
    8000293c:	00078c93          	mv	s9,a5
    80002940:	f8040793          	addi	a5,s0,-128
    80002944:	01978cb3          	add	s9,a5,s9
    80002948:	f7f40d13          	addi	s10,s0,-129
    8000294c:	000cc503          	lbu	a0,0(s9)
    80002950:	fffc8c93          	addi	s9,s9,-1
    80002954:	00000097          	auipc	ra,0x0
    80002958:	b90080e7          	jalr	-1136(ra) # 800024e4 <consputc>
    8000295c:	ffac98e3          	bne	s9,s10,8000294c <__printf+0x284>
    80002960:	00094503          	lbu	a0,0(s2)
    80002964:	e00514e3          	bnez	a0,8000276c <__printf+0xa4>
    80002968:	1a0c1663          	bnez	s8,80002b14 <__printf+0x44c>
    8000296c:	08813083          	ld	ra,136(sp)
    80002970:	08013403          	ld	s0,128(sp)
    80002974:	07813483          	ld	s1,120(sp)
    80002978:	07013903          	ld	s2,112(sp)
    8000297c:	06813983          	ld	s3,104(sp)
    80002980:	06013a03          	ld	s4,96(sp)
    80002984:	05813a83          	ld	s5,88(sp)
    80002988:	05013b03          	ld	s6,80(sp)
    8000298c:	04813b83          	ld	s7,72(sp)
    80002990:	04013c03          	ld	s8,64(sp)
    80002994:	03813c83          	ld	s9,56(sp)
    80002998:	03013d03          	ld	s10,48(sp)
    8000299c:	02813d83          	ld	s11,40(sp)
    800029a0:	0d010113          	addi	sp,sp,208
    800029a4:	00008067          	ret
    800029a8:	07300713          	li	a4,115
    800029ac:	1ce78a63          	beq	a5,a4,80002b80 <__printf+0x4b8>
    800029b0:	07800713          	li	a4,120
    800029b4:	1ee79e63          	bne	a5,a4,80002bb0 <__printf+0x4e8>
    800029b8:	f7843783          	ld	a5,-136(s0)
    800029bc:	0007a703          	lw	a4,0(a5)
    800029c0:	00878793          	addi	a5,a5,8
    800029c4:	f6f43c23          	sd	a5,-136(s0)
    800029c8:	28074263          	bltz	a4,80002c4c <__printf+0x584>
    800029cc:	00001d97          	auipc	s11,0x1
    800029d0:	7d4d8d93          	addi	s11,s11,2004 # 800041a0 <digits>
    800029d4:	00f77793          	andi	a5,a4,15
    800029d8:	00fd87b3          	add	a5,s11,a5
    800029dc:	0007c683          	lbu	a3,0(a5)
    800029e0:	00f00613          	li	a2,15
    800029e4:	0007079b          	sext.w	a5,a4
    800029e8:	f8d40023          	sb	a3,-128(s0)
    800029ec:	0047559b          	srliw	a1,a4,0x4
    800029f0:	0047569b          	srliw	a3,a4,0x4
    800029f4:	00000c93          	li	s9,0
    800029f8:	0ee65063          	bge	a2,a4,80002ad8 <__printf+0x410>
    800029fc:	00f6f693          	andi	a3,a3,15
    80002a00:	00dd86b3          	add	a3,s11,a3
    80002a04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a08:	0087d79b          	srliw	a5,a5,0x8
    80002a0c:	00100c93          	li	s9,1
    80002a10:	f8d400a3          	sb	a3,-127(s0)
    80002a14:	0cb67263          	bgeu	a2,a1,80002ad8 <__printf+0x410>
    80002a18:	00f7f693          	andi	a3,a5,15
    80002a1c:	00dd86b3          	add	a3,s11,a3
    80002a20:	0006c583          	lbu	a1,0(a3)
    80002a24:	00f00613          	li	a2,15
    80002a28:	0047d69b          	srliw	a3,a5,0x4
    80002a2c:	f8b40123          	sb	a1,-126(s0)
    80002a30:	0047d593          	srli	a1,a5,0x4
    80002a34:	28f67e63          	bgeu	a2,a5,80002cd0 <__printf+0x608>
    80002a38:	00f6f693          	andi	a3,a3,15
    80002a3c:	00dd86b3          	add	a3,s11,a3
    80002a40:	0006c503          	lbu	a0,0(a3)
    80002a44:	0087d813          	srli	a6,a5,0x8
    80002a48:	0087d69b          	srliw	a3,a5,0x8
    80002a4c:	f8a401a3          	sb	a0,-125(s0)
    80002a50:	28b67663          	bgeu	a2,a1,80002cdc <__printf+0x614>
    80002a54:	00f6f693          	andi	a3,a3,15
    80002a58:	00dd86b3          	add	a3,s11,a3
    80002a5c:	0006c583          	lbu	a1,0(a3)
    80002a60:	00c7d513          	srli	a0,a5,0xc
    80002a64:	00c7d69b          	srliw	a3,a5,0xc
    80002a68:	f8b40223          	sb	a1,-124(s0)
    80002a6c:	29067a63          	bgeu	a2,a6,80002d00 <__printf+0x638>
    80002a70:	00f6f693          	andi	a3,a3,15
    80002a74:	00dd86b3          	add	a3,s11,a3
    80002a78:	0006c583          	lbu	a1,0(a3)
    80002a7c:	0107d813          	srli	a6,a5,0x10
    80002a80:	0107d69b          	srliw	a3,a5,0x10
    80002a84:	f8b402a3          	sb	a1,-123(s0)
    80002a88:	28a67263          	bgeu	a2,a0,80002d0c <__printf+0x644>
    80002a8c:	00f6f693          	andi	a3,a3,15
    80002a90:	00dd86b3          	add	a3,s11,a3
    80002a94:	0006c683          	lbu	a3,0(a3)
    80002a98:	0147d79b          	srliw	a5,a5,0x14
    80002a9c:	f8d40323          	sb	a3,-122(s0)
    80002aa0:	21067663          	bgeu	a2,a6,80002cac <__printf+0x5e4>
    80002aa4:	02079793          	slli	a5,a5,0x20
    80002aa8:	0207d793          	srli	a5,a5,0x20
    80002aac:	00fd8db3          	add	s11,s11,a5
    80002ab0:	000dc683          	lbu	a3,0(s11)
    80002ab4:	00800793          	li	a5,8
    80002ab8:	00700c93          	li	s9,7
    80002abc:	f8d403a3          	sb	a3,-121(s0)
    80002ac0:	00075c63          	bgez	a4,80002ad8 <__printf+0x410>
    80002ac4:	f9040713          	addi	a4,s0,-112
    80002ac8:	00f70733          	add	a4,a4,a5
    80002acc:	02d00693          	li	a3,45
    80002ad0:	fed70823          	sb	a3,-16(a4)
    80002ad4:	00078c93          	mv	s9,a5
    80002ad8:	f8040793          	addi	a5,s0,-128
    80002adc:	01978cb3          	add	s9,a5,s9
    80002ae0:	f7f40d13          	addi	s10,s0,-129
    80002ae4:	000cc503          	lbu	a0,0(s9)
    80002ae8:	fffc8c93          	addi	s9,s9,-1
    80002aec:	00000097          	auipc	ra,0x0
    80002af0:	9f8080e7          	jalr	-1544(ra) # 800024e4 <consputc>
    80002af4:	ff9d18e3          	bne	s10,s9,80002ae4 <__printf+0x41c>
    80002af8:	0100006f          	j	80002b08 <__printf+0x440>
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	9e8080e7          	jalr	-1560(ra) # 800024e4 <consputc>
    80002b04:	000c8493          	mv	s1,s9
    80002b08:	00094503          	lbu	a0,0(s2)
    80002b0c:	c60510e3          	bnez	a0,8000276c <__printf+0xa4>
    80002b10:	e40c0ee3          	beqz	s8,8000296c <__printf+0x2a4>
    80002b14:	00003517          	auipc	a0,0x3
    80002b18:	f6c50513          	addi	a0,a0,-148 # 80005a80 <pr>
    80002b1c:	00001097          	auipc	ra,0x1
    80002b20:	94c080e7          	jalr	-1716(ra) # 80003468 <release>
    80002b24:	e49ff06f          	j	8000296c <__printf+0x2a4>
    80002b28:	f7843783          	ld	a5,-136(s0)
    80002b2c:	03000513          	li	a0,48
    80002b30:	01000d13          	li	s10,16
    80002b34:	00878713          	addi	a4,a5,8
    80002b38:	0007bc83          	ld	s9,0(a5)
    80002b3c:	f6e43c23          	sd	a4,-136(s0)
    80002b40:	00000097          	auipc	ra,0x0
    80002b44:	9a4080e7          	jalr	-1628(ra) # 800024e4 <consputc>
    80002b48:	07800513          	li	a0,120
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	998080e7          	jalr	-1640(ra) # 800024e4 <consputc>
    80002b54:	00001d97          	auipc	s11,0x1
    80002b58:	64cd8d93          	addi	s11,s11,1612 # 800041a0 <digits>
    80002b5c:	03ccd793          	srli	a5,s9,0x3c
    80002b60:	00fd87b3          	add	a5,s11,a5
    80002b64:	0007c503          	lbu	a0,0(a5)
    80002b68:	fffd0d1b          	addiw	s10,s10,-1
    80002b6c:	004c9c93          	slli	s9,s9,0x4
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	974080e7          	jalr	-1676(ra) # 800024e4 <consputc>
    80002b78:	fe0d12e3          	bnez	s10,80002b5c <__printf+0x494>
    80002b7c:	f8dff06f          	j	80002b08 <__printf+0x440>
    80002b80:	f7843783          	ld	a5,-136(s0)
    80002b84:	0007bc83          	ld	s9,0(a5)
    80002b88:	00878793          	addi	a5,a5,8
    80002b8c:	f6f43c23          	sd	a5,-136(s0)
    80002b90:	000c9a63          	bnez	s9,80002ba4 <__printf+0x4dc>
    80002b94:	1080006f          	j	80002c9c <__printf+0x5d4>
    80002b98:	001c8c93          	addi	s9,s9,1
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	948080e7          	jalr	-1720(ra) # 800024e4 <consputc>
    80002ba4:	000cc503          	lbu	a0,0(s9)
    80002ba8:	fe0518e3          	bnez	a0,80002b98 <__printf+0x4d0>
    80002bac:	f5dff06f          	j	80002b08 <__printf+0x440>
    80002bb0:	02500513          	li	a0,37
    80002bb4:	00000097          	auipc	ra,0x0
    80002bb8:	930080e7          	jalr	-1744(ra) # 800024e4 <consputc>
    80002bbc:	000c8513          	mv	a0,s9
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	924080e7          	jalr	-1756(ra) # 800024e4 <consputc>
    80002bc8:	f41ff06f          	j	80002b08 <__printf+0x440>
    80002bcc:	02500513          	li	a0,37
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	914080e7          	jalr	-1772(ra) # 800024e4 <consputc>
    80002bd8:	f31ff06f          	j	80002b08 <__printf+0x440>
    80002bdc:	00030513          	mv	a0,t1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	7bc080e7          	jalr	1980(ra) # 8000339c <acquire>
    80002be8:	b4dff06f          	j	80002734 <__printf+0x6c>
    80002bec:	40c0053b          	negw	a0,a2
    80002bf0:	00a00713          	li	a4,10
    80002bf4:	02e576bb          	remuw	a3,a0,a4
    80002bf8:	00001d97          	auipc	s11,0x1
    80002bfc:	5a8d8d93          	addi	s11,s11,1448 # 800041a0 <digits>
    80002c00:	ff700593          	li	a1,-9
    80002c04:	02069693          	slli	a3,a3,0x20
    80002c08:	0206d693          	srli	a3,a3,0x20
    80002c0c:	00dd86b3          	add	a3,s11,a3
    80002c10:	0006c683          	lbu	a3,0(a3)
    80002c14:	02e557bb          	divuw	a5,a0,a4
    80002c18:	f8d40023          	sb	a3,-128(s0)
    80002c1c:	10b65e63          	bge	a2,a1,80002d38 <__printf+0x670>
    80002c20:	06300593          	li	a1,99
    80002c24:	02e7f6bb          	remuw	a3,a5,a4
    80002c28:	02069693          	slli	a3,a3,0x20
    80002c2c:	0206d693          	srli	a3,a3,0x20
    80002c30:	00dd86b3          	add	a3,s11,a3
    80002c34:	0006c683          	lbu	a3,0(a3)
    80002c38:	02e7d73b          	divuw	a4,a5,a4
    80002c3c:	00200793          	li	a5,2
    80002c40:	f8d400a3          	sb	a3,-127(s0)
    80002c44:	bca5ece3          	bltu	a1,a0,8000281c <__printf+0x154>
    80002c48:	ce5ff06f          	j	8000292c <__printf+0x264>
    80002c4c:	40e007bb          	negw	a5,a4
    80002c50:	00001d97          	auipc	s11,0x1
    80002c54:	550d8d93          	addi	s11,s11,1360 # 800041a0 <digits>
    80002c58:	00f7f693          	andi	a3,a5,15
    80002c5c:	00dd86b3          	add	a3,s11,a3
    80002c60:	0006c583          	lbu	a1,0(a3)
    80002c64:	ff100613          	li	a2,-15
    80002c68:	0047d69b          	srliw	a3,a5,0x4
    80002c6c:	f8b40023          	sb	a1,-128(s0)
    80002c70:	0047d59b          	srliw	a1,a5,0x4
    80002c74:	0ac75e63          	bge	a4,a2,80002d30 <__printf+0x668>
    80002c78:	00f6f693          	andi	a3,a3,15
    80002c7c:	00dd86b3          	add	a3,s11,a3
    80002c80:	0006c603          	lbu	a2,0(a3)
    80002c84:	00f00693          	li	a3,15
    80002c88:	0087d79b          	srliw	a5,a5,0x8
    80002c8c:	f8c400a3          	sb	a2,-127(s0)
    80002c90:	d8b6e4e3          	bltu	a3,a1,80002a18 <__printf+0x350>
    80002c94:	00200793          	li	a5,2
    80002c98:	e2dff06f          	j	80002ac4 <__printf+0x3fc>
    80002c9c:	00001c97          	auipc	s9,0x1
    80002ca0:	4e4c8c93          	addi	s9,s9,1252 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002ca4:	02800513          	li	a0,40
    80002ca8:	ef1ff06f          	j	80002b98 <__printf+0x4d0>
    80002cac:	00700793          	li	a5,7
    80002cb0:	00600c93          	li	s9,6
    80002cb4:	e0dff06f          	j	80002ac0 <__printf+0x3f8>
    80002cb8:	00700793          	li	a5,7
    80002cbc:	00600c93          	li	s9,6
    80002cc0:	c69ff06f          	j	80002928 <__printf+0x260>
    80002cc4:	00300793          	li	a5,3
    80002cc8:	00200c93          	li	s9,2
    80002ccc:	c5dff06f          	j	80002928 <__printf+0x260>
    80002cd0:	00300793          	li	a5,3
    80002cd4:	00200c93          	li	s9,2
    80002cd8:	de9ff06f          	j	80002ac0 <__printf+0x3f8>
    80002cdc:	00400793          	li	a5,4
    80002ce0:	00300c93          	li	s9,3
    80002ce4:	dddff06f          	j	80002ac0 <__printf+0x3f8>
    80002ce8:	00400793          	li	a5,4
    80002cec:	00300c93          	li	s9,3
    80002cf0:	c39ff06f          	j	80002928 <__printf+0x260>
    80002cf4:	00500793          	li	a5,5
    80002cf8:	00400c93          	li	s9,4
    80002cfc:	c2dff06f          	j	80002928 <__printf+0x260>
    80002d00:	00500793          	li	a5,5
    80002d04:	00400c93          	li	s9,4
    80002d08:	db9ff06f          	j	80002ac0 <__printf+0x3f8>
    80002d0c:	00600793          	li	a5,6
    80002d10:	00500c93          	li	s9,5
    80002d14:	dadff06f          	j	80002ac0 <__printf+0x3f8>
    80002d18:	00600793          	li	a5,6
    80002d1c:	00500c93          	li	s9,5
    80002d20:	c09ff06f          	j	80002928 <__printf+0x260>
    80002d24:	00800793          	li	a5,8
    80002d28:	00700c93          	li	s9,7
    80002d2c:	bfdff06f          	j	80002928 <__printf+0x260>
    80002d30:	00100793          	li	a5,1
    80002d34:	d91ff06f          	j	80002ac4 <__printf+0x3fc>
    80002d38:	00100793          	li	a5,1
    80002d3c:	bf1ff06f          	j	8000292c <__printf+0x264>
    80002d40:	00900793          	li	a5,9
    80002d44:	00800c93          	li	s9,8
    80002d48:	be1ff06f          	j	80002928 <__printf+0x260>
    80002d4c:	00001517          	auipc	a0,0x1
    80002d50:	43c50513          	addi	a0,a0,1084 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    80002d54:	00000097          	auipc	ra,0x0
    80002d58:	918080e7          	jalr	-1768(ra) # 8000266c <panic>

0000000080002d5c <printfinit>:
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	00113c23          	sd	ra,24(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00003497          	auipc	s1,0x3
    80002d74:	d1048493          	addi	s1,s1,-752 # 80005a80 <pr>
    80002d78:	00048513          	mv	a0,s1
    80002d7c:	00001597          	auipc	a1,0x1
    80002d80:	41c58593          	addi	a1,a1,1052 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	5f4080e7          	jalr	1524(ra) # 80003378 <initlock>
    80002d8c:	01813083          	ld	ra,24(sp)
    80002d90:	01013403          	ld	s0,16(sp)
    80002d94:	0004ac23          	sw	zero,24(s1)
    80002d98:	00813483          	ld	s1,8(sp)
    80002d9c:	02010113          	addi	sp,sp,32
    80002da0:	00008067          	ret

0000000080002da4 <uartinit>:
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813423          	sd	s0,8(sp)
    80002dac:	01010413          	addi	s0,sp,16
    80002db0:	100007b7          	lui	a5,0x10000
    80002db4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002db8:	f8000713          	li	a4,-128
    80002dbc:	00e781a3          	sb	a4,3(a5)
    80002dc0:	00300713          	li	a4,3
    80002dc4:	00e78023          	sb	a4,0(a5)
    80002dc8:	000780a3          	sb	zero,1(a5)
    80002dcc:	00e781a3          	sb	a4,3(a5)
    80002dd0:	00700693          	li	a3,7
    80002dd4:	00d78123          	sb	a3,2(a5)
    80002dd8:	00e780a3          	sb	a4,1(a5)
    80002ddc:	00813403          	ld	s0,8(sp)
    80002de0:	01010113          	addi	sp,sp,16
    80002de4:	00008067          	ret

0000000080002de8 <uartputc>:
    80002de8:	00002797          	auipc	a5,0x2
    80002dec:	a207a783          	lw	a5,-1504(a5) # 80004808 <panicked>
    80002df0:	00078463          	beqz	a5,80002df8 <uartputc+0x10>
    80002df4:	0000006f          	j	80002df4 <uartputc+0xc>
    80002df8:	fd010113          	addi	sp,sp,-48
    80002dfc:	02813023          	sd	s0,32(sp)
    80002e00:	00913c23          	sd	s1,24(sp)
    80002e04:	01213823          	sd	s2,16(sp)
    80002e08:	01313423          	sd	s3,8(sp)
    80002e0c:	02113423          	sd	ra,40(sp)
    80002e10:	03010413          	addi	s0,sp,48
    80002e14:	00002917          	auipc	s2,0x2
    80002e18:	9fc90913          	addi	s2,s2,-1540 # 80004810 <uart_tx_r>
    80002e1c:	00093783          	ld	a5,0(s2)
    80002e20:	00002497          	auipc	s1,0x2
    80002e24:	9f848493          	addi	s1,s1,-1544 # 80004818 <uart_tx_w>
    80002e28:	0004b703          	ld	a4,0(s1)
    80002e2c:	02078693          	addi	a3,a5,32
    80002e30:	00050993          	mv	s3,a0
    80002e34:	02e69c63          	bne	a3,a4,80002e6c <uartputc+0x84>
    80002e38:	00001097          	auipc	ra,0x1
    80002e3c:	834080e7          	jalr	-1996(ra) # 8000366c <push_on>
    80002e40:	00093783          	ld	a5,0(s2)
    80002e44:	0004b703          	ld	a4,0(s1)
    80002e48:	02078793          	addi	a5,a5,32
    80002e4c:	00e79463          	bne	a5,a4,80002e54 <uartputc+0x6c>
    80002e50:	0000006f          	j	80002e50 <uartputc+0x68>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	88c080e7          	jalr	-1908(ra) # 800036e0 <pop_on>
    80002e5c:	00093783          	ld	a5,0(s2)
    80002e60:	0004b703          	ld	a4,0(s1)
    80002e64:	02078693          	addi	a3,a5,32
    80002e68:	fce688e3          	beq	a3,a4,80002e38 <uartputc+0x50>
    80002e6c:	01f77693          	andi	a3,a4,31
    80002e70:	00003597          	auipc	a1,0x3
    80002e74:	c3058593          	addi	a1,a1,-976 # 80005aa0 <uart_tx_buf>
    80002e78:	00d586b3          	add	a3,a1,a3
    80002e7c:	00170713          	addi	a4,a4,1
    80002e80:	01368023          	sb	s3,0(a3)
    80002e84:	00e4b023          	sd	a4,0(s1)
    80002e88:	10000637          	lui	a2,0x10000
    80002e8c:	02f71063          	bne	a4,a5,80002eac <uartputc+0xc4>
    80002e90:	0340006f          	j	80002ec4 <uartputc+0xdc>
    80002e94:	00074703          	lbu	a4,0(a4)
    80002e98:	00f93023          	sd	a5,0(s2)
    80002e9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002ea0:	00093783          	ld	a5,0(s2)
    80002ea4:	0004b703          	ld	a4,0(s1)
    80002ea8:	00f70e63          	beq	a4,a5,80002ec4 <uartputc+0xdc>
    80002eac:	00564683          	lbu	a3,5(a2)
    80002eb0:	01f7f713          	andi	a4,a5,31
    80002eb4:	00e58733          	add	a4,a1,a4
    80002eb8:	0206f693          	andi	a3,a3,32
    80002ebc:	00178793          	addi	a5,a5,1
    80002ec0:	fc069ae3          	bnez	a3,80002e94 <uartputc+0xac>
    80002ec4:	02813083          	ld	ra,40(sp)
    80002ec8:	02013403          	ld	s0,32(sp)
    80002ecc:	01813483          	ld	s1,24(sp)
    80002ed0:	01013903          	ld	s2,16(sp)
    80002ed4:	00813983          	ld	s3,8(sp)
    80002ed8:	03010113          	addi	sp,sp,48
    80002edc:	00008067          	ret

0000000080002ee0 <uartputc_sync>:
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00813423          	sd	s0,8(sp)
    80002ee8:	01010413          	addi	s0,sp,16
    80002eec:	00002717          	auipc	a4,0x2
    80002ef0:	91c72703          	lw	a4,-1764(a4) # 80004808 <panicked>
    80002ef4:	02071663          	bnez	a4,80002f20 <uartputc_sync+0x40>
    80002ef8:	00050793          	mv	a5,a0
    80002efc:	100006b7          	lui	a3,0x10000
    80002f00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f04:	02077713          	andi	a4,a4,32
    80002f08:	fe070ce3          	beqz	a4,80002f00 <uartputc_sync+0x20>
    80002f0c:	0ff7f793          	andi	a5,a5,255
    80002f10:	00f68023          	sb	a5,0(a3)
    80002f14:	00813403          	ld	s0,8(sp)
    80002f18:	01010113          	addi	sp,sp,16
    80002f1c:	00008067          	ret
    80002f20:	0000006f          	j	80002f20 <uartputc_sync+0x40>

0000000080002f24 <uartstart>:
    80002f24:	ff010113          	addi	sp,sp,-16
    80002f28:	00813423          	sd	s0,8(sp)
    80002f2c:	01010413          	addi	s0,sp,16
    80002f30:	00002617          	auipc	a2,0x2
    80002f34:	8e060613          	addi	a2,a2,-1824 # 80004810 <uart_tx_r>
    80002f38:	00002517          	auipc	a0,0x2
    80002f3c:	8e050513          	addi	a0,a0,-1824 # 80004818 <uart_tx_w>
    80002f40:	00063783          	ld	a5,0(a2)
    80002f44:	00053703          	ld	a4,0(a0)
    80002f48:	04f70263          	beq	a4,a5,80002f8c <uartstart+0x68>
    80002f4c:	100005b7          	lui	a1,0x10000
    80002f50:	00003817          	auipc	a6,0x3
    80002f54:	b5080813          	addi	a6,a6,-1200 # 80005aa0 <uart_tx_buf>
    80002f58:	01c0006f          	j	80002f74 <uartstart+0x50>
    80002f5c:	0006c703          	lbu	a4,0(a3)
    80002f60:	00f63023          	sd	a5,0(a2)
    80002f64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f68:	00063783          	ld	a5,0(a2)
    80002f6c:	00053703          	ld	a4,0(a0)
    80002f70:	00f70e63          	beq	a4,a5,80002f8c <uartstart+0x68>
    80002f74:	01f7f713          	andi	a4,a5,31
    80002f78:	00e806b3          	add	a3,a6,a4
    80002f7c:	0055c703          	lbu	a4,5(a1)
    80002f80:	00178793          	addi	a5,a5,1
    80002f84:	02077713          	andi	a4,a4,32
    80002f88:	fc071ae3          	bnez	a4,80002f5c <uartstart+0x38>
    80002f8c:	00813403          	ld	s0,8(sp)
    80002f90:	01010113          	addi	sp,sp,16
    80002f94:	00008067          	ret

0000000080002f98 <uartgetc>:
    80002f98:	ff010113          	addi	sp,sp,-16
    80002f9c:	00813423          	sd	s0,8(sp)
    80002fa0:	01010413          	addi	s0,sp,16
    80002fa4:	10000737          	lui	a4,0x10000
    80002fa8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002fac:	0017f793          	andi	a5,a5,1
    80002fb0:	00078c63          	beqz	a5,80002fc8 <uartgetc+0x30>
    80002fb4:	00074503          	lbu	a0,0(a4)
    80002fb8:	0ff57513          	andi	a0,a0,255
    80002fbc:	00813403          	ld	s0,8(sp)
    80002fc0:	01010113          	addi	sp,sp,16
    80002fc4:	00008067          	ret
    80002fc8:	fff00513          	li	a0,-1
    80002fcc:	ff1ff06f          	j	80002fbc <uartgetc+0x24>

0000000080002fd0 <uartintr>:
    80002fd0:	100007b7          	lui	a5,0x10000
    80002fd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002fd8:	0017f793          	andi	a5,a5,1
    80002fdc:	0a078463          	beqz	a5,80003084 <uartintr+0xb4>
    80002fe0:	fe010113          	addi	sp,sp,-32
    80002fe4:	00813823          	sd	s0,16(sp)
    80002fe8:	00913423          	sd	s1,8(sp)
    80002fec:	00113c23          	sd	ra,24(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    80002ff4:	100004b7          	lui	s1,0x10000
    80002ff8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002ffc:	0ff57513          	andi	a0,a0,255
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	534080e7          	jalr	1332(ra) # 80002534 <consoleintr>
    80003008:	0054c783          	lbu	a5,5(s1)
    8000300c:	0017f793          	andi	a5,a5,1
    80003010:	fe0794e3          	bnez	a5,80002ff8 <uartintr+0x28>
    80003014:	00001617          	auipc	a2,0x1
    80003018:	7fc60613          	addi	a2,a2,2044 # 80004810 <uart_tx_r>
    8000301c:	00001517          	auipc	a0,0x1
    80003020:	7fc50513          	addi	a0,a0,2044 # 80004818 <uart_tx_w>
    80003024:	00063783          	ld	a5,0(a2)
    80003028:	00053703          	ld	a4,0(a0)
    8000302c:	04f70263          	beq	a4,a5,80003070 <uartintr+0xa0>
    80003030:	100005b7          	lui	a1,0x10000
    80003034:	00003817          	auipc	a6,0x3
    80003038:	a6c80813          	addi	a6,a6,-1428 # 80005aa0 <uart_tx_buf>
    8000303c:	01c0006f          	j	80003058 <uartintr+0x88>
    80003040:	0006c703          	lbu	a4,0(a3)
    80003044:	00f63023          	sd	a5,0(a2)
    80003048:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000304c:	00063783          	ld	a5,0(a2)
    80003050:	00053703          	ld	a4,0(a0)
    80003054:	00f70e63          	beq	a4,a5,80003070 <uartintr+0xa0>
    80003058:	01f7f713          	andi	a4,a5,31
    8000305c:	00e806b3          	add	a3,a6,a4
    80003060:	0055c703          	lbu	a4,5(a1)
    80003064:	00178793          	addi	a5,a5,1
    80003068:	02077713          	andi	a4,a4,32
    8000306c:	fc071ae3          	bnez	a4,80003040 <uartintr+0x70>
    80003070:	01813083          	ld	ra,24(sp)
    80003074:	01013403          	ld	s0,16(sp)
    80003078:	00813483          	ld	s1,8(sp)
    8000307c:	02010113          	addi	sp,sp,32
    80003080:	00008067          	ret
    80003084:	00001617          	auipc	a2,0x1
    80003088:	78c60613          	addi	a2,a2,1932 # 80004810 <uart_tx_r>
    8000308c:	00001517          	auipc	a0,0x1
    80003090:	78c50513          	addi	a0,a0,1932 # 80004818 <uart_tx_w>
    80003094:	00063783          	ld	a5,0(a2)
    80003098:	00053703          	ld	a4,0(a0)
    8000309c:	04f70263          	beq	a4,a5,800030e0 <uartintr+0x110>
    800030a0:	100005b7          	lui	a1,0x10000
    800030a4:	00003817          	auipc	a6,0x3
    800030a8:	9fc80813          	addi	a6,a6,-1540 # 80005aa0 <uart_tx_buf>
    800030ac:	01c0006f          	j	800030c8 <uartintr+0xf8>
    800030b0:	0006c703          	lbu	a4,0(a3)
    800030b4:	00f63023          	sd	a5,0(a2)
    800030b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030bc:	00063783          	ld	a5,0(a2)
    800030c0:	00053703          	ld	a4,0(a0)
    800030c4:	02f70063          	beq	a4,a5,800030e4 <uartintr+0x114>
    800030c8:	01f7f713          	andi	a4,a5,31
    800030cc:	00e806b3          	add	a3,a6,a4
    800030d0:	0055c703          	lbu	a4,5(a1)
    800030d4:	00178793          	addi	a5,a5,1
    800030d8:	02077713          	andi	a4,a4,32
    800030dc:	fc071ae3          	bnez	a4,800030b0 <uartintr+0xe0>
    800030e0:	00008067          	ret
    800030e4:	00008067          	ret

00000000800030e8 <kinit>:
    800030e8:	fc010113          	addi	sp,sp,-64
    800030ec:	02913423          	sd	s1,40(sp)
    800030f0:	fffff7b7          	lui	a5,0xfffff
    800030f4:	00004497          	auipc	s1,0x4
    800030f8:	9db48493          	addi	s1,s1,-1573 # 80006acf <end+0xfff>
    800030fc:	02813823          	sd	s0,48(sp)
    80003100:	01313c23          	sd	s3,24(sp)
    80003104:	00f4f4b3          	and	s1,s1,a5
    80003108:	02113c23          	sd	ra,56(sp)
    8000310c:	03213023          	sd	s2,32(sp)
    80003110:	01413823          	sd	s4,16(sp)
    80003114:	01513423          	sd	s5,8(sp)
    80003118:	04010413          	addi	s0,sp,64
    8000311c:	000017b7          	lui	a5,0x1
    80003120:	01100993          	li	s3,17
    80003124:	00f487b3          	add	a5,s1,a5
    80003128:	01b99993          	slli	s3,s3,0x1b
    8000312c:	06f9e063          	bltu	s3,a5,8000318c <kinit+0xa4>
    80003130:	00003a97          	auipc	s5,0x3
    80003134:	9a0a8a93          	addi	s5,s5,-1632 # 80005ad0 <end>
    80003138:	0754ec63          	bltu	s1,s5,800031b0 <kinit+0xc8>
    8000313c:	0734fa63          	bgeu	s1,s3,800031b0 <kinit+0xc8>
    80003140:	00088a37          	lui	s4,0x88
    80003144:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003148:	00001917          	auipc	s2,0x1
    8000314c:	6d890913          	addi	s2,s2,1752 # 80004820 <kmem>
    80003150:	00ca1a13          	slli	s4,s4,0xc
    80003154:	0140006f          	j	80003168 <kinit+0x80>
    80003158:	000017b7          	lui	a5,0x1
    8000315c:	00f484b3          	add	s1,s1,a5
    80003160:	0554e863          	bltu	s1,s5,800031b0 <kinit+0xc8>
    80003164:	0534f663          	bgeu	s1,s3,800031b0 <kinit+0xc8>
    80003168:	00001637          	lui	a2,0x1
    8000316c:	00100593          	li	a1,1
    80003170:	00048513          	mv	a0,s1
    80003174:	00000097          	auipc	ra,0x0
    80003178:	5e4080e7          	jalr	1508(ra) # 80003758 <__memset>
    8000317c:	00093783          	ld	a5,0(s2)
    80003180:	00f4b023          	sd	a5,0(s1)
    80003184:	00993023          	sd	s1,0(s2)
    80003188:	fd4498e3          	bne	s1,s4,80003158 <kinit+0x70>
    8000318c:	03813083          	ld	ra,56(sp)
    80003190:	03013403          	ld	s0,48(sp)
    80003194:	02813483          	ld	s1,40(sp)
    80003198:	02013903          	ld	s2,32(sp)
    8000319c:	01813983          	ld	s3,24(sp)
    800031a0:	01013a03          	ld	s4,16(sp)
    800031a4:	00813a83          	ld	s5,8(sp)
    800031a8:	04010113          	addi	sp,sp,64
    800031ac:	00008067          	ret
    800031b0:	00001517          	auipc	a0,0x1
    800031b4:	00850513          	addi	a0,a0,8 # 800041b8 <digits+0x18>
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	4b4080e7          	jalr	1204(ra) # 8000266c <panic>

00000000800031c0 <freerange>:
    800031c0:	fc010113          	addi	sp,sp,-64
    800031c4:	000017b7          	lui	a5,0x1
    800031c8:	02913423          	sd	s1,40(sp)
    800031cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800031d0:	009504b3          	add	s1,a0,s1
    800031d4:	fffff537          	lui	a0,0xfffff
    800031d8:	02813823          	sd	s0,48(sp)
    800031dc:	02113c23          	sd	ra,56(sp)
    800031e0:	03213023          	sd	s2,32(sp)
    800031e4:	01313c23          	sd	s3,24(sp)
    800031e8:	01413823          	sd	s4,16(sp)
    800031ec:	01513423          	sd	s5,8(sp)
    800031f0:	01613023          	sd	s6,0(sp)
    800031f4:	04010413          	addi	s0,sp,64
    800031f8:	00a4f4b3          	and	s1,s1,a0
    800031fc:	00f487b3          	add	a5,s1,a5
    80003200:	06f5e463          	bltu	a1,a5,80003268 <freerange+0xa8>
    80003204:	00003a97          	auipc	s5,0x3
    80003208:	8cca8a93          	addi	s5,s5,-1844 # 80005ad0 <end>
    8000320c:	0954e263          	bltu	s1,s5,80003290 <freerange+0xd0>
    80003210:	01100993          	li	s3,17
    80003214:	01b99993          	slli	s3,s3,0x1b
    80003218:	0734fc63          	bgeu	s1,s3,80003290 <freerange+0xd0>
    8000321c:	00058a13          	mv	s4,a1
    80003220:	00001917          	auipc	s2,0x1
    80003224:	60090913          	addi	s2,s2,1536 # 80004820 <kmem>
    80003228:	00002b37          	lui	s6,0x2
    8000322c:	0140006f          	j	80003240 <freerange+0x80>
    80003230:	000017b7          	lui	a5,0x1
    80003234:	00f484b3          	add	s1,s1,a5
    80003238:	0554ec63          	bltu	s1,s5,80003290 <freerange+0xd0>
    8000323c:	0534fa63          	bgeu	s1,s3,80003290 <freerange+0xd0>
    80003240:	00001637          	lui	a2,0x1
    80003244:	00100593          	li	a1,1
    80003248:	00048513          	mv	a0,s1
    8000324c:	00000097          	auipc	ra,0x0
    80003250:	50c080e7          	jalr	1292(ra) # 80003758 <__memset>
    80003254:	00093703          	ld	a4,0(s2)
    80003258:	016487b3          	add	a5,s1,s6
    8000325c:	00e4b023          	sd	a4,0(s1)
    80003260:	00993023          	sd	s1,0(s2)
    80003264:	fcfa76e3          	bgeu	s4,a5,80003230 <freerange+0x70>
    80003268:	03813083          	ld	ra,56(sp)
    8000326c:	03013403          	ld	s0,48(sp)
    80003270:	02813483          	ld	s1,40(sp)
    80003274:	02013903          	ld	s2,32(sp)
    80003278:	01813983          	ld	s3,24(sp)
    8000327c:	01013a03          	ld	s4,16(sp)
    80003280:	00813a83          	ld	s5,8(sp)
    80003284:	00013b03          	ld	s6,0(sp)
    80003288:	04010113          	addi	sp,sp,64
    8000328c:	00008067          	ret
    80003290:	00001517          	auipc	a0,0x1
    80003294:	f2850513          	addi	a0,a0,-216 # 800041b8 <digits+0x18>
    80003298:	fffff097          	auipc	ra,0xfffff
    8000329c:	3d4080e7          	jalr	980(ra) # 8000266c <panic>

00000000800032a0 <kfree>:
    800032a0:	fe010113          	addi	sp,sp,-32
    800032a4:	00813823          	sd	s0,16(sp)
    800032a8:	00113c23          	sd	ra,24(sp)
    800032ac:	00913423          	sd	s1,8(sp)
    800032b0:	02010413          	addi	s0,sp,32
    800032b4:	03451793          	slli	a5,a0,0x34
    800032b8:	04079c63          	bnez	a5,80003310 <kfree+0x70>
    800032bc:	00003797          	auipc	a5,0x3
    800032c0:	81478793          	addi	a5,a5,-2028 # 80005ad0 <end>
    800032c4:	00050493          	mv	s1,a0
    800032c8:	04f56463          	bltu	a0,a5,80003310 <kfree+0x70>
    800032cc:	01100793          	li	a5,17
    800032d0:	01b79793          	slli	a5,a5,0x1b
    800032d4:	02f57e63          	bgeu	a0,a5,80003310 <kfree+0x70>
    800032d8:	00001637          	lui	a2,0x1
    800032dc:	00100593          	li	a1,1
    800032e0:	00000097          	auipc	ra,0x0
    800032e4:	478080e7          	jalr	1144(ra) # 80003758 <__memset>
    800032e8:	00001797          	auipc	a5,0x1
    800032ec:	53878793          	addi	a5,a5,1336 # 80004820 <kmem>
    800032f0:	0007b703          	ld	a4,0(a5)
    800032f4:	01813083          	ld	ra,24(sp)
    800032f8:	01013403          	ld	s0,16(sp)
    800032fc:	00e4b023          	sd	a4,0(s1)
    80003300:	0097b023          	sd	s1,0(a5)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
    80003310:	00001517          	auipc	a0,0x1
    80003314:	ea850513          	addi	a0,a0,-344 # 800041b8 <digits+0x18>
    80003318:	fffff097          	auipc	ra,0xfffff
    8000331c:	354080e7          	jalr	852(ra) # 8000266c <panic>

0000000080003320 <kalloc>:
    80003320:	fe010113          	addi	sp,sp,-32
    80003324:	00813823          	sd	s0,16(sp)
    80003328:	00913423          	sd	s1,8(sp)
    8000332c:	00113c23          	sd	ra,24(sp)
    80003330:	02010413          	addi	s0,sp,32
    80003334:	00001797          	auipc	a5,0x1
    80003338:	4ec78793          	addi	a5,a5,1260 # 80004820 <kmem>
    8000333c:	0007b483          	ld	s1,0(a5)
    80003340:	02048063          	beqz	s1,80003360 <kalloc+0x40>
    80003344:	0004b703          	ld	a4,0(s1)
    80003348:	00001637          	lui	a2,0x1
    8000334c:	00500593          	li	a1,5
    80003350:	00048513          	mv	a0,s1
    80003354:	00e7b023          	sd	a4,0(a5)
    80003358:	00000097          	auipc	ra,0x0
    8000335c:	400080e7          	jalr	1024(ra) # 80003758 <__memset>
    80003360:	01813083          	ld	ra,24(sp)
    80003364:	01013403          	ld	s0,16(sp)
    80003368:	00048513          	mv	a0,s1
    8000336c:	00813483          	ld	s1,8(sp)
    80003370:	02010113          	addi	sp,sp,32
    80003374:	00008067          	ret

0000000080003378 <initlock>:
    80003378:	ff010113          	addi	sp,sp,-16
    8000337c:	00813423          	sd	s0,8(sp)
    80003380:	01010413          	addi	s0,sp,16
    80003384:	00813403          	ld	s0,8(sp)
    80003388:	00b53423          	sd	a1,8(a0)
    8000338c:	00052023          	sw	zero,0(a0)
    80003390:	00053823          	sd	zero,16(a0)
    80003394:	01010113          	addi	sp,sp,16
    80003398:	00008067          	ret

000000008000339c <acquire>:
    8000339c:	fe010113          	addi	sp,sp,-32
    800033a0:	00813823          	sd	s0,16(sp)
    800033a4:	00913423          	sd	s1,8(sp)
    800033a8:	00113c23          	sd	ra,24(sp)
    800033ac:	01213023          	sd	s2,0(sp)
    800033b0:	02010413          	addi	s0,sp,32
    800033b4:	00050493          	mv	s1,a0
    800033b8:	10002973          	csrr	s2,sstatus
    800033bc:	100027f3          	csrr	a5,sstatus
    800033c0:	ffd7f793          	andi	a5,a5,-3
    800033c4:	10079073          	csrw	sstatus,a5
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	8ec080e7          	jalr	-1812(ra) # 80001cb4 <mycpu>
    800033d0:	07852783          	lw	a5,120(a0)
    800033d4:	06078e63          	beqz	a5,80003450 <acquire+0xb4>
    800033d8:	fffff097          	auipc	ra,0xfffff
    800033dc:	8dc080e7          	jalr	-1828(ra) # 80001cb4 <mycpu>
    800033e0:	07852783          	lw	a5,120(a0)
    800033e4:	0004a703          	lw	a4,0(s1)
    800033e8:	0017879b          	addiw	a5,a5,1
    800033ec:	06f52c23          	sw	a5,120(a0)
    800033f0:	04071063          	bnez	a4,80003430 <acquire+0x94>
    800033f4:	00100713          	li	a4,1
    800033f8:	00070793          	mv	a5,a4
    800033fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003400:	0007879b          	sext.w	a5,a5
    80003404:	fe079ae3          	bnez	a5,800033f8 <acquire+0x5c>
    80003408:	0ff0000f          	fence
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	8a8080e7          	jalr	-1880(ra) # 80001cb4 <mycpu>
    80003414:	01813083          	ld	ra,24(sp)
    80003418:	01013403          	ld	s0,16(sp)
    8000341c:	00a4b823          	sd	a0,16(s1)
    80003420:	00013903          	ld	s2,0(sp)
    80003424:	00813483          	ld	s1,8(sp)
    80003428:	02010113          	addi	sp,sp,32
    8000342c:	00008067          	ret
    80003430:	0104b903          	ld	s2,16(s1)
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	880080e7          	jalr	-1920(ra) # 80001cb4 <mycpu>
    8000343c:	faa91ce3          	bne	s2,a0,800033f4 <acquire+0x58>
    80003440:	00001517          	auipc	a0,0x1
    80003444:	d8050513          	addi	a0,a0,-640 # 800041c0 <digits+0x20>
    80003448:	fffff097          	auipc	ra,0xfffff
    8000344c:	224080e7          	jalr	548(ra) # 8000266c <panic>
    80003450:	00195913          	srli	s2,s2,0x1
    80003454:	fffff097          	auipc	ra,0xfffff
    80003458:	860080e7          	jalr	-1952(ra) # 80001cb4 <mycpu>
    8000345c:	00197913          	andi	s2,s2,1
    80003460:	07252e23          	sw	s2,124(a0)
    80003464:	f75ff06f          	j	800033d8 <acquire+0x3c>

0000000080003468 <release>:
    80003468:	fe010113          	addi	sp,sp,-32
    8000346c:	00813823          	sd	s0,16(sp)
    80003470:	00113c23          	sd	ra,24(sp)
    80003474:	00913423          	sd	s1,8(sp)
    80003478:	01213023          	sd	s2,0(sp)
    8000347c:	02010413          	addi	s0,sp,32
    80003480:	00052783          	lw	a5,0(a0)
    80003484:	00079a63          	bnez	a5,80003498 <release+0x30>
    80003488:	00001517          	auipc	a0,0x1
    8000348c:	d4050513          	addi	a0,a0,-704 # 800041c8 <digits+0x28>
    80003490:	fffff097          	auipc	ra,0xfffff
    80003494:	1dc080e7          	jalr	476(ra) # 8000266c <panic>
    80003498:	01053903          	ld	s2,16(a0)
    8000349c:	00050493          	mv	s1,a0
    800034a0:	fffff097          	auipc	ra,0xfffff
    800034a4:	814080e7          	jalr	-2028(ra) # 80001cb4 <mycpu>
    800034a8:	fea910e3          	bne	s2,a0,80003488 <release+0x20>
    800034ac:	0004b823          	sd	zero,16(s1)
    800034b0:	0ff0000f          	fence
    800034b4:	0f50000f          	fence	iorw,ow
    800034b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800034bc:	ffffe097          	auipc	ra,0xffffe
    800034c0:	7f8080e7          	jalr	2040(ra) # 80001cb4 <mycpu>
    800034c4:	100027f3          	csrr	a5,sstatus
    800034c8:	0027f793          	andi	a5,a5,2
    800034cc:	04079a63          	bnez	a5,80003520 <release+0xb8>
    800034d0:	07852783          	lw	a5,120(a0)
    800034d4:	02f05e63          	blez	a5,80003510 <release+0xa8>
    800034d8:	fff7871b          	addiw	a4,a5,-1
    800034dc:	06e52c23          	sw	a4,120(a0)
    800034e0:	00071c63          	bnez	a4,800034f8 <release+0x90>
    800034e4:	07c52783          	lw	a5,124(a0)
    800034e8:	00078863          	beqz	a5,800034f8 <release+0x90>
    800034ec:	100027f3          	csrr	a5,sstatus
    800034f0:	0027e793          	ori	a5,a5,2
    800034f4:	10079073          	csrw	sstatus,a5
    800034f8:	01813083          	ld	ra,24(sp)
    800034fc:	01013403          	ld	s0,16(sp)
    80003500:	00813483          	ld	s1,8(sp)
    80003504:	00013903          	ld	s2,0(sp)
    80003508:	02010113          	addi	sp,sp,32
    8000350c:	00008067          	ret
    80003510:	00001517          	auipc	a0,0x1
    80003514:	cd850513          	addi	a0,a0,-808 # 800041e8 <digits+0x48>
    80003518:	fffff097          	auipc	ra,0xfffff
    8000351c:	154080e7          	jalr	340(ra) # 8000266c <panic>
    80003520:	00001517          	auipc	a0,0x1
    80003524:	cb050513          	addi	a0,a0,-848 # 800041d0 <digits+0x30>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	144080e7          	jalr	324(ra) # 8000266c <panic>

0000000080003530 <holding>:
    80003530:	00052783          	lw	a5,0(a0)
    80003534:	00079663          	bnez	a5,80003540 <holding+0x10>
    80003538:	00000513          	li	a0,0
    8000353c:	00008067          	ret
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00813823          	sd	s0,16(sp)
    80003548:	00913423          	sd	s1,8(sp)
    8000354c:	00113c23          	sd	ra,24(sp)
    80003550:	02010413          	addi	s0,sp,32
    80003554:	01053483          	ld	s1,16(a0)
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	75c080e7          	jalr	1884(ra) # 80001cb4 <mycpu>
    80003560:	01813083          	ld	ra,24(sp)
    80003564:	01013403          	ld	s0,16(sp)
    80003568:	40a48533          	sub	a0,s1,a0
    8000356c:	00153513          	seqz	a0,a0
    80003570:	00813483          	ld	s1,8(sp)
    80003574:	02010113          	addi	sp,sp,32
    80003578:	00008067          	ret

000000008000357c <push_off>:
    8000357c:	fe010113          	addi	sp,sp,-32
    80003580:	00813823          	sd	s0,16(sp)
    80003584:	00113c23          	sd	ra,24(sp)
    80003588:	00913423          	sd	s1,8(sp)
    8000358c:	02010413          	addi	s0,sp,32
    80003590:	100024f3          	csrr	s1,sstatus
    80003594:	100027f3          	csrr	a5,sstatus
    80003598:	ffd7f793          	andi	a5,a5,-3
    8000359c:	10079073          	csrw	sstatus,a5
    800035a0:	ffffe097          	auipc	ra,0xffffe
    800035a4:	714080e7          	jalr	1812(ra) # 80001cb4 <mycpu>
    800035a8:	07852783          	lw	a5,120(a0)
    800035ac:	02078663          	beqz	a5,800035d8 <push_off+0x5c>
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	704080e7          	jalr	1796(ra) # 80001cb4 <mycpu>
    800035b8:	07852783          	lw	a5,120(a0)
    800035bc:	01813083          	ld	ra,24(sp)
    800035c0:	01013403          	ld	s0,16(sp)
    800035c4:	0017879b          	addiw	a5,a5,1
    800035c8:	06f52c23          	sw	a5,120(a0)
    800035cc:	00813483          	ld	s1,8(sp)
    800035d0:	02010113          	addi	sp,sp,32
    800035d4:	00008067          	ret
    800035d8:	0014d493          	srli	s1,s1,0x1
    800035dc:	ffffe097          	auipc	ra,0xffffe
    800035e0:	6d8080e7          	jalr	1752(ra) # 80001cb4 <mycpu>
    800035e4:	0014f493          	andi	s1,s1,1
    800035e8:	06952e23          	sw	s1,124(a0)
    800035ec:	fc5ff06f          	j	800035b0 <push_off+0x34>

00000000800035f0 <pop_off>:
    800035f0:	ff010113          	addi	sp,sp,-16
    800035f4:	00813023          	sd	s0,0(sp)
    800035f8:	00113423          	sd	ra,8(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	6b4080e7          	jalr	1716(ra) # 80001cb4 <mycpu>
    80003608:	100027f3          	csrr	a5,sstatus
    8000360c:	0027f793          	andi	a5,a5,2
    80003610:	04079663          	bnez	a5,8000365c <pop_off+0x6c>
    80003614:	07852783          	lw	a5,120(a0)
    80003618:	02f05a63          	blez	a5,8000364c <pop_off+0x5c>
    8000361c:	fff7871b          	addiw	a4,a5,-1
    80003620:	06e52c23          	sw	a4,120(a0)
    80003624:	00071c63          	bnez	a4,8000363c <pop_off+0x4c>
    80003628:	07c52783          	lw	a5,124(a0)
    8000362c:	00078863          	beqz	a5,8000363c <pop_off+0x4c>
    80003630:	100027f3          	csrr	a5,sstatus
    80003634:	0027e793          	ori	a5,a5,2
    80003638:	10079073          	csrw	sstatus,a5
    8000363c:	00813083          	ld	ra,8(sp)
    80003640:	00013403          	ld	s0,0(sp)
    80003644:	01010113          	addi	sp,sp,16
    80003648:	00008067          	ret
    8000364c:	00001517          	auipc	a0,0x1
    80003650:	b9c50513          	addi	a0,a0,-1124 # 800041e8 <digits+0x48>
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	018080e7          	jalr	24(ra) # 8000266c <panic>
    8000365c:	00001517          	auipc	a0,0x1
    80003660:	b7450513          	addi	a0,a0,-1164 # 800041d0 <digits+0x30>
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	008080e7          	jalr	8(ra) # 8000266c <panic>

000000008000366c <push_on>:
    8000366c:	fe010113          	addi	sp,sp,-32
    80003670:	00813823          	sd	s0,16(sp)
    80003674:	00113c23          	sd	ra,24(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	02010413          	addi	s0,sp,32
    80003680:	100024f3          	csrr	s1,sstatus
    80003684:	100027f3          	csrr	a5,sstatus
    80003688:	0027e793          	ori	a5,a5,2
    8000368c:	10079073          	csrw	sstatus,a5
    80003690:	ffffe097          	auipc	ra,0xffffe
    80003694:	624080e7          	jalr	1572(ra) # 80001cb4 <mycpu>
    80003698:	07852783          	lw	a5,120(a0)
    8000369c:	02078663          	beqz	a5,800036c8 <push_on+0x5c>
    800036a0:	ffffe097          	auipc	ra,0xffffe
    800036a4:	614080e7          	jalr	1556(ra) # 80001cb4 <mycpu>
    800036a8:	07852783          	lw	a5,120(a0)
    800036ac:	01813083          	ld	ra,24(sp)
    800036b0:	01013403          	ld	s0,16(sp)
    800036b4:	0017879b          	addiw	a5,a5,1
    800036b8:	06f52c23          	sw	a5,120(a0)
    800036bc:	00813483          	ld	s1,8(sp)
    800036c0:	02010113          	addi	sp,sp,32
    800036c4:	00008067          	ret
    800036c8:	0014d493          	srli	s1,s1,0x1
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	5e8080e7          	jalr	1512(ra) # 80001cb4 <mycpu>
    800036d4:	0014f493          	andi	s1,s1,1
    800036d8:	06952e23          	sw	s1,124(a0)
    800036dc:	fc5ff06f          	j	800036a0 <push_on+0x34>

00000000800036e0 <pop_on>:
    800036e0:	ff010113          	addi	sp,sp,-16
    800036e4:	00813023          	sd	s0,0(sp)
    800036e8:	00113423          	sd	ra,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	5c4080e7          	jalr	1476(ra) # 80001cb4 <mycpu>
    800036f8:	100027f3          	csrr	a5,sstatus
    800036fc:	0027f793          	andi	a5,a5,2
    80003700:	04078463          	beqz	a5,80003748 <pop_on+0x68>
    80003704:	07852783          	lw	a5,120(a0)
    80003708:	02f05863          	blez	a5,80003738 <pop_on+0x58>
    8000370c:	fff7879b          	addiw	a5,a5,-1
    80003710:	06f52c23          	sw	a5,120(a0)
    80003714:	07853783          	ld	a5,120(a0)
    80003718:	00079863          	bnez	a5,80003728 <pop_on+0x48>
    8000371c:	100027f3          	csrr	a5,sstatus
    80003720:	ffd7f793          	andi	a5,a5,-3
    80003724:	10079073          	csrw	sstatus,a5
    80003728:	00813083          	ld	ra,8(sp)
    8000372c:	00013403          	ld	s0,0(sp)
    80003730:	01010113          	addi	sp,sp,16
    80003734:	00008067          	ret
    80003738:	00001517          	auipc	a0,0x1
    8000373c:	ad850513          	addi	a0,a0,-1320 # 80004210 <digits+0x70>
    80003740:	fffff097          	auipc	ra,0xfffff
    80003744:	f2c080e7          	jalr	-212(ra) # 8000266c <panic>
    80003748:	00001517          	auipc	a0,0x1
    8000374c:	aa850513          	addi	a0,a0,-1368 # 800041f0 <digits+0x50>
    80003750:	fffff097          	auipc	ra,0xfffff
    80003754:	f1c080e7          	jalr	-228(ra) # 8000266c <panic>

0000000080003758 <__memset>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	1a060e63          	beqz	a2,80003920 <__memset+0x1c8>
    80003768:	40a007b3          	neg	a5,a0
    8000376c:	0077f793          	andi	a5,a5,7
    80003770:	00778693          	addi	a3,a5,7
    80003774:	00b00813          	li	a6,11
    80003778:	0ff5f593          	andi	a1,a1,255
    8000377c:	fff6071b          	addiw	a4,a2,-1
    80003780:	1b06e663          	bltu	a3,a6,8000392c <__memset+0x1d4>
    80003784:	1cd76463          	bltu	a4,a3,8000394c <__memset+0x1f4>
    80003788:	1a078e63          	beqz	a5,80003944 <__memset+0x1ec>
    8000378c:	00b50023          	sb	a1,0(a0)
    80003790:	00100713          	li	a4,1
    80003794:	1ae78463          	beq	a5,a4,8000393c <__memset+0x1e4>
    80003798:	00b500a3          	sb	a1,1(a0)
    8000379c:	00200713          	li	a4,2
    800037a0:	1ae78a63          	beq	a5,a4,80003954 <__memset+0x1fc>
    800037a4:	00b50123          	sb	a1,2(a0)
    800037a8:	00300713          	li	a4,3
    800037ac:	18e78463          	beq	a5,a4,80003934 <__memset+0x1dc>
    800037b0:	00b501a3          	sb	a1,3(a0)
    800037b4:	00400713          	li	a4,4
    800037b8:	1ae78263          	beq	a5,a4,8000395c <__memset+0x204>
    800037bc:	00b50223          	sb	a1,4(a0)
    800037c0:	00500713          	li	a4,5
    800037c4:	1ae78063          	beq	a5,a4,80003964 <__memset+0x20c>
    800037c8:	00b502a3          	sb	a1,5(a0)
    800037cc:	00700713          	li	a4,7
    800037d0:	18e79e63          	bne	a5,a4,8000396c <__memset+0x214>
    800037d4:	00b50323          	sb	a1,6(a0)
    800037d8:	00700e93          	li	t4,7
    800037dc:	00859713          	slli	a4,a1,0x8
    800037e0:	00e5e733          	or	a4,a1,a4
    800037e4:	01059e13          	slli	t3,a1,0x10
    800037e8:	01c76e33          	or	t3,a4,t3
    800037ec:	01859313          	slli	t1,a1,0x18
    800037f0:	006e6333          	or	t1,t3,t1
    800037f4:	02059893          	slli	a7,a1,0x20
    800037f8:	40f60e3b          	subw	t3,a2,a5
    800037fc:	011368b3          	or	a7,t1,a7
    80003800:	02859813          	slli	a6,a1,0x28
    80003804:	0108e833          	or	a6,a7,a6
    80003808:	03059693          	slli	a3,a1,0x30
    8000380c:	003e589b          	srliw	a7,t3,0x3
    80003810:	00d866b3          	or	a3,a6,a3
    80003814:	03859713          	slli	a4,a1,0x38
    80003818:	00389813          	slli	a6,a7,0x3
    8000381c:	00f507b3          	add	a5,a0,a5
    80003820:	00e6e733          	or	a4,a3,a4
    80003824:	000e089b          	sext.w	a7,t3
    80003828:	00f806b3          	add	a3,a6,a5
    8000382c:	00e7b023          	sd	a4,0(a5)
    80003830:	00878793          	addi	a5,a5,8
    80003834:	fed79ce3          	bne	a5,a3,8000382c <__memset+0xd4>
    80003838:	ff8e7793          	andi	a5,t3,-8
    8000383c:	0007871b          	sext.w	a4,a5
    80003840:	01d787bb          	addw	a5,a5,t4
    80003844:	0ce88e63          	beq	a7,a4,80003920 <__memset+0x1c8>
    80003848:	00f50733          	add	a4,a0,a5
    8000384c:	00b70023          	sb	a1,0(a4)
    80003850:	0017871b          	addiw	a4,a5,1
    80003854:	0cc77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003858:	00e50733          	add	a4,a0,a4
    8000385c:	00b70023          	sb	a1,0(a4)
    80003860:	0027871b          	addiw	a4,a5,2
    80003864:	0ac77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003868:	00e50733          	add	a4,a0,a4
    8000386c:	00b70023          	sb	a1,0(a4)
    80003870:	0037871b          	addiw	a4,a5,3
    80003874:	0ac77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003878:	00e50733          	add	a4,a0,a4
    8000387c:	00b70023          	sb	a1,0(a4)
    80003880:	0047871b          	addiw	a4,a5,4
    80003884:	08c77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003888:	00e50733          	add	a4,a0,a4
    8000388c:	00b70023          	sb	a1,0(a4)
    80003890:	0057871b          	addiw	a4,a5,5
    80003894:	08c77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003898:	00e50733          	add	a4,a0,a4
    8000389c:	00b70023          	sb	a1,0(a4)
    800038a0:	0067871b          	addiw	a4,a5,6
    800038a4:	06c77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038a8:	00e50733          	add	a4,a0,a4
    800038ac:	00b70023          	sb	a1,0(a4)
    800038b0:	0077871b          	addiw	a4,a5,7
    800038b4:	06c77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038b8:	00e50733          	add	a4,a0,a4
    800038bc:	00b70023          	sb	a1,0(a4)
    800038c0:	0087871b          	addiw	a4,a5,8
    800038c4:	04c77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038c8:	00e50733          	add	a4,a0,a4
    800038cc:	00b70023          	sb	a1,0(a4)
    800038d0:	0097871b          	addiw	a4,a5,9
    800038d4:	04c77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038d8:	00e50733          	add	a4,a0,a4
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	00a7871b          	addiw	a4,a5,10
    800038e4:	02c77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	00b7871b          	addiw	a4,a5,11
    800038f4:	02c77663          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	00c7871b          	addiw	a4,a5,12
    80003904:	00c77e63          	bgeu	a4,a2,80003920 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	00d7879b          	addiw	a5,a5,13
    80003914:	00c7f663          	bgeu	a5,a2,80003920 <__memset+0x1c8>
    80003918:	00f507b3          	add	a5,a0,a5
    8000391c:	00b78023          	sb	a1,0(a5)
    80003920:	00813403          	ld	s0,8(sp)
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret
    8000392c:	00b00693          	li	a3,11
    80003930:	e55ff06f          	j	80003784 <__memset+0x2c>
    80003934:	00300e93          	li	t4,3
    80003938:	ea5ff06f          	j	800037dc <__memset+0x84>
    8000393c:	00100e93          	li	t4,1
    80003940:	e9dff06f          	j	800037dc <__memset+0x84>
    80003944:	00000e93          	li	t4,0
    80003948:	e95ff06f          	j	800037dc <__memset+0x84>
    8000394c:	00000793          	li	a5,0
    80003950:	ef9ff06f          	j	80003848 <__memset+0xf0>
    80003954:	00200e93          	li	t4,2
    80003958:	e85ff06f          	j	800037dc <__memset+0x84>
    8000395c:	00400e93          	li	t4,4
    80003960:	e7dff06f          	j	800037dc <__memset+0x84>
    80003964:	00500e93          	li	t4,5
    80003968:	e75ff06f          	j	800037dc <__memset+0x84>
    8000396c:	00600e93          	li	t4,6
    80003970:	e6dff06f          	j	800037dc <__memset+0x84>

0000000080003974 <__memmove>:
    80003974:	ff010113          	addi	sp,sp,-16
    80003978:	00813423          	sd	s0,8(sp)
    8000397c:	01010413          	addi	s0,sp,16
    80003980:	0e060863          	beqz	a2,80003a70 <__memmove+0xfc>
    80003984:	fff6069b          	addiw	a3,a2,-1
    80003988:	0006881b          	sext.w	a6,a3
    8000398c:	0ea5e863          	bltu	a1,a0,80003a7c <__memmove+0x108>
    80003990:	00758713          	addi	a4,a1,7
    80003994:	00a5e7b3          	or	a5,a1,a0
    80003998:	40a70733          	sub	a4,a4,a0
    8000399c:	0077f793          	andi	a5,a5,7
    800039a0:	00f73713          	sltiu	a4,a4,15
    800039a4:	00174713          	xori	a4,a4,1
    800039a8:	0017b793          	seqz	a5,a5
    800039ac:	00e7f7b3          	and	a5,a5,a4
    800039b0:	10078863          	beqz	a5,80003ac0 <__memmove+0x14c>
    800039b4:	00900793          	li	a5,9
    800039b8:	1107f463          	bgeu	a5,a6,80003ac0 <__memmove+0x14c>
    800039bc:	0036581b          	srliw	a6,a2,0x3
    800039c0:	fff8081b          	addiw	a6,a6,-1
    800039c4:	02081813          	slli	a6,a6,0x20
    800039c8:	01d85893          	srli	a7,a6,0x1d
    800039cc:	00858813          	addi	a6,a1,8
    800039d0:	00058793          	mv	a5,a1
    800039d4:	00050713          	mv	a4,a0
    800039d8:	01088833          	add	a6,a7,a6
    800039dc:	0007b883          	ld	a7,0(a5)
    800039e0:	00878793          	addi	a5,a5,8
    800039e4:	00870713          	addi	a4,a4,8
    800039e8:	ff173c23          	sd	a7,-8(a4)
    800039ec:	ff0798e3          	bne	a5,a6,800039dc <__memmove+0x68>
    800039f0:	ff867713          	andi	a4,a2,-8
    800039f4:	02071793          	slli	a5,a4,0x20
    800039f8:	0207d793          	srli	a5,a5,0x20
    800039fc:	00f585b3          	add	a1,a1,a5
    80003a00:	40e686bb          	subw	a3,a3,a4
    80003a04:	00f507b3          	add	a5,a0,a5
    80003a08:	06e60463          	beq	a2,a4,80003a70 <__memmove+0xfc>
    80003a0c:	0005c703          	lbu	a4,0(a1)
    80003a10:	00e78023          	sb	a4,0(a5)
    80003a14:	04068e63          	beqz	a3,80003a70 <__memmove+0xfc>
    80003a18:	0015c603          	lbu	a2,1(a1)
    80003a1c:	00100713          	li	a4,1
    80003a20:	00c780a3          	sb	a2,1(a5)
    80003a24:	04e68663          	beq	a3,a4,80003a70 <__memmove+0xfc>
    80003a28:	0025c603          	lbu	a2,2(a1)
    80003a2c:	00200713          	li	a4,2
    80003a30:	00c78123          	sb	a2,2(a5)
    80003a34:	02e68e63          	beq	a3,a4,80003a70 <__memmove+0xfc>
    80003a38:	0035c603          	lbu	a2,3(a1)
    80003a3c:	00300713          	li	a4,3
    80003a40:	00c781a3          	sb	a2,3(a5)
    80003a44:	02e68663          	beq	a3,a4,80003a70 <__memmove+0xfc>
    80003a48:	0045c603          	lbu	a2,4(a1)
    80003a4c:	00400713          	li	a4,4
    80003a50:	00c78223          	sb	a2,4(a5)
    80003a54:	00e68e63          	beq	a3,a4,80003a70 <__memmove+0xfc>
    80003a58:	0055c603          	lbu	a2,5(a1)
    80003a5c:	00500713          	li	a4,5
    80003a60:	00c782a3          	sb	a2,5(a5)
    80003a64:	00e68663          	beq	a3,a4,80003a70 <__memmove+0xfc>
    80003a68:	0065c703          	lbu	a4,6(a1)
    80003a6c:	00e78323          	sb	a4,6(a5)
    80003a70:	00813403          	ld	s0,8(sp)
    80003a74:	01010113          	addi	sp,sp,16
    80003a78:	00008067          	ret
    80003a7c:	02061713          	slli	a4,a2,0x20
    80003a80:	02075713          	srli	a4,a4,0x20
    80003a84:	00e587b3          	add	a5,a1,a4
    80003a88:	f0f574e3          	bgeu	a0,a5,80003990 <__memmove+0x1c>
    80003a8c:	02069613          	slli	a2,a3,0x20
    80003a90:	02065613          	srli	a2,a2,0x20
    80003a94:	fff64613          	not	a2,a2
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00c78633          	add	a2,a5,a2
    80003aa0:	fff7c683          	lbu	a3,-1(a5)
    80003aa4:	fff78793          	addi	a5,a5,-1
    80003aa8:	fff70713          	addi	a4,a4,-1
    80003aac:	00d70023          	sb	a3,0(a4)
    80003ab0:	fec798e3          	bne	a5,a2,80003aa0 <__memmove+0x12c>
    80003ab4:	00813403          	ld	s0,8(sp)
    80003ab8:	01010113          	addi	sp,sp,16
    80003abc:	00008067          	ret
    80003ac0:	02069713          	slli	a4,a3,0x20
    80003ac4:	02075713          	srli	a4,a4,0x20
    80003ac8:	00170713          	addi	a4,a4,1
    80003acc:	00e50733          	add	a4,a0,a4
    80003ad0:	00050793          	mv	a5,a0
    80003ad4:	0005c683          	lbu	a3,0(a1)
    80003ad8:	00178793          	addi	a5,a5,1
    80003adc:	00158593          	addi	a1,a1,1
    80003ae0:	fed78fa3          	sb	a3,-1(a5)
    80003ae4:	fee798e3          	bne	a5,a4,80003ad4 <__memmove+0x160>
    80003ae8:	f89ff06f          	j	80003a70 <__memmove+0xfc>

0000000080003aec <__mem_free>:
    80003aec:	ff010113          	addi	sp,sp,-16
    80003af0:	00813423          	sd	s0,8(sp)
    80003af4:	01010413          	addi	s0,sp,16
    80003af8:	00001597          	auipc	a1,0x1
    80003afc:	d3058593          	addi	a1,a1,-720 # 80004828 <freep>
    80003b00:	0005b783          	ld	a5,0(a1)
    80003b04:	ff050693          	addi	a3,a0,-16
    80003b08:	0007b703          	ld	a4,0(a5)
    80003b0c:	00d7fc63          	bgeu	a5,a3,80003b24 <__mem_free+0x38>
    80003b10:	00e6ee63          	bltu	a3,a4,80003b2c <__mem_free+0x40>
    80003b14:	00e7fc63          	bgeu	a5,a4,80003b2c <__mem_free+0x40>
    80003b18:	00070793          	mv	a5,a4
    80003b1c:	0007b703          	ld	a4,0(a5)
    80003b20:	fed7e8e3          	bltu	a5,a3,80003b10 <__mem_free+0x24>
    80003b24:	fee7eae3          	bltu	a5,a4,80003b18 <__mem_free+0x2c>
    80003b28:	fee6f8e3          	bgeu	a3,a4,80003b18 <__mem_free+0x2c>
    80003b2c:	ff852803          	lw	a6,-8(a0)
    80003b30:	02081613          	slli	a2,a6,0x20
    80003b34:	01c65613          	srli	a2,a2,0x1c
    80003b38:	00c68633          	add	a2,a3,a2
    80003b3c:	02c70a63          	beq	a4,a2,80003b70 <__mem_free+0x84>
    80003b40:	fee53823          	sd	a4,-16(a0)
    80003b44:	0087a503          	lw	a0,8(a5)
    80003b48:	02051613          	slli	a2,a0,0x20
    80003b4c:	01c65613          	srli	a2,a2,0x1c
    80003b50:	00c78633          	add	a2,a5,a2
    80003b54:	04c68263          	beq	a3,a2,80003b98 <__mem_free+0xac>
    80003b58:	00813403          	ld	s0,8(sp)
    80003b5c:	00d7b023          	sd	a3,0(a5)
    80003b60:	00f5b023          	sd	a5,0(a1)
    80003b64:	00000513          	li	a0,0
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00008067          	ret
    80003b70:	00872603          	lw	a2,8(a4)
    80003b74:	00073703          	ld	a4,0(a4)
    80003b78:	0106083b          	addw	a6,a2,a6
    80003b7c:	ff052c23          	sw	a6,-8(a0)
    80003b80:	fee53823          	sd	a4,-16(a0)
    80003b84:	0087a503          	lw	a0,8(a5)
    80003b88:	02051613          	slli	a2,a0,0x20
    80003b8c:	01c65613          	srli	a2,a2,0x1c
    80003b90:	00c78633          	add	a2,a5,a2
    80003b94:	fcc692e3          	bne	a3,a2,80003b58 <__mem_free+0x6c>
    80003b98:	00813403          	ld	s0,8(sp)
    80003b9c:	0105053b          	addw	a0,a0,a6
    80003ba0:	00a7a423          	sw	a0,8(a5)
    80003ba4:	00e7b023          	sd	a4,0(a5)
    80003ba8:	00f5b023          	sd	a5,0(a1)
    80003bac:	00000513          	li	a0,0
    80003bb0:	01010113          	addi	sp,sp,16
    80003bb4:	00008067          	ret

0000000080003bb8 <__mem_alloc>:
    80003bb8:	fc010113          	addi	sp,sp,-64
    80003bbc:	02813823          	sd	s0,48(sp)
    80003bc0:	02913423          	sd	s1,40(sp)
    80003bc4:	03213023          	sd	s2,32(sp)
    80003bc8:	01513423          	sd	s5,8(sp)
    80003bcc:	02113c23          	sd	ra,56(sp)
    80003bd0:	01313c23          	sd	s3,24(sp)
    80003bd4:	01413823          	sd	s4,16(sp)
    80003bd8:	01613023          	sd	s6,0(sp)
    80003bdc:	04010413          	addi	s0,sp,64
    80003be0:	00001a97          	auipc	s5,0x1
    80003be4:	c48a8a93          	addi	s5,s5,-952 # 80004828 <freep>
    80003be8:	00f50913          	addi	s2,a0,15
    80003bec:	000ab683          	ld	a3,0(s5)
    80003bf0:	00495913          	srli	s2,s2,0x4
    80003bf4:	0019049b          	addiw	s1,s2,1
    80003bf8:	00048913          	mv	s2,s1
    80003bfc:	0c068c63          	beqz	a3,80003cd4 <__mem_alloc+0x11c>
    80003c00:	0006b503          	ld	a0,0(a3)
    80003c04:	00852703          	lw	a4,8(a0)
    80003c08:	10977063          	bgeu	a4,s1,80003d08 <__mem_alloc+0x150>
    80003c0c:	000017b7          	lui	a5,0x1
    80003c10:	0009099b          	sext.w	s3,s2
    80003c14:	0af4e863          	bltu	s1,a5,80003cc4 <__mem_alloc+0x10c>
    80003c18:	02099a13          	slli	s4,s3,0x20
    80003c1c:	01ca5a13          	srli	s4,s4,0x1c
    80003c20:	fff00b13          	li	s6,-1
    80003c24:	0100006f          	j	80003c34 <__mem_alloc+0x7c>
    80003c28:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003c2c:	00852703          	lw	a4,8(a0)
    80003c30:	04977463          	bgeu	a4,s1,80003c78 <__mem_alloc+0xc0>
    80003c34:	00050793          	mv	a5,a0
    80003c38:	fea698e3          	bne	a3,a0,80003c28 <__mem_alloc+0x70>
    80003c3c:	000a0513          	mv	a0,s4
    80003c40:	00000097          	auipc	ra,0x0
    80003c44:	1f0080e7          	jalr	496(ra) # 80003e30 <kvmincrease>
    80003c48:	00050793          	mv	a5,a0
    80003c4c:	01050513          	addi	a0,a0,16
    80003c50:	07678e63          	beq	a5,s6,80003ccc <__mem_alloc+0x114>
    80003c54:	0137a423          	sw	s3,8(a5)
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	e94080e7          	jalr	-364(ra) # 80003aec <__mem_free>
    80003c60:	000ab783          	ld	a5,0(s5)
    80003c64:	06078463          	beqz	a5,80003ccc <__mem_alloc+0x114>
    80003c68:	0007b503          	ld	a0,0(a5)
    80003c6c:	00078693          	mv	a3,a5
    80003c70:	00852703          	lw	a4,8(a0)
    80003c74:	fc9760e3          	bltu	a4,s1,80003c34 <__mem_alloc+0x7c>
    80003c78:	08e48263          	beq	s1,a4,80003cfc <__mem_alloc+0x144>
    80003c7c:	4127073b          	subw	a4,a4,s2
    80003c80:	02071693          	slli	a3,a4,0x20
    80003c84:	01c6d693          	srli	a3,a3,0x1c
    80003c88:	00e52423          	sw	a4,8(a0)
    80003c8c:	00d50533          	add	a0,a0,a3
    80003c90:	01252423          	sw	s2,8(a0)
    80003c94:	00fab023          	sd	a5,0(s5)
    80003c98:	01050513          	addi	a0,a0,16
    80003c9c:	03813083          	ld	ra,56(sp)
    80003ca0:	03013403          	ld	s0,48(sp)
    80003ca4:	02813483          	ld	s1,40(sp)
    80003ca8:	02013903          	ld	s2,32(sp)
    80003cac:	01813983          	ld	s3,24(sp)
    80003cb0:	01013a03          	ld	s4,16(sp)
    80003cb4:	00813a83          	ld	s5,8(sp)
    80003cb8:	00013b03          	ld	s6,0(sp)
    80003cbc:	04010113          	addi	sp,sp,64
    80003cc0:	00008067          	ret
    80003cc4:	000019b7          	lui	s3,0x1
    80003cc8:	f51ff06f          	j	80003c18 <__mem_alloc+0x60>
    80003ccc:	00000513          	li	a0,0
    80003cd0:	fcdff06f          	j	80003c9c <__mem_alloc+0xe4>
    80003cd4:	00002797          	auipc	a5,0x2
    80003cd8:	dec78793          	addi	a5,a5,-532 # 80005ac0 <base>
    80003cdc:	00078513          	mv	a0,a5
    80003ce0:	00fab023          	sd	a5,0(s5)
    80003ce4:	00f7b023          	sd	a5,0(a5)
    80003ce8:	00000713          	li	a4,0
    80003cec:	00002797          	auipc	a5,0x2
    80003cf0:	dc07ae23          	sw	zero,-548(a5) # 80005ac8 <base+0x8>
    80003cf4:	00050693          	mv	a3,a0
    80003cf8:	f11ff06f          	j	80003c08 <__mem_alloc+0x50>
    80003cfc:	00053703          	ld	a4,0(a0)
    80003d00:	00e7b023          	sd	a4,0(a5)
    80003d04:	f91ff06f          	j	80003c94 <__mem_alloc+0xdc>
    80003d08:	00068793          	mv	a5,a3
    80003d0c:	f6dff06f          	j	80003c78 <__mem_alloc+0xc0>

0000000080003d10 <__putc>:
    80003d10:	fe010113          	addi	sp,sp,-32
    80003d14:	00813823          	sd	s0,16(sp)
    80003d18:	00113c23          	sd	ra,24(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    80003d20:	00050793          	mv	a5,a0
    80003d24:	fef40593          	addi	a1,s0,-17
    80003d28:	00100613          	li	a2,1
    80003d2c:	00000513          	li	a0,0
    80003d30:	fef407a3          	sb	a5,-17(s0)
    80003d34:	fffff097          	auipc	ra,0xfffff
    80003d38:	918080e7          	jalr	-1768(ra) # 8000264c <console_write>
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	01013403          	ld	s0,16(sp)
    80003d44:	02010113          	addi	sp,sp,32
    80003d48:	00008067          	ret

0000000080003d4c <__getc>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00813823          	sd	s0,16(sp)
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	02010413          	addi	s0,sp,32
    80003d5c:	fe840593          	addi	a1,s0,-24
    80003d60:	00100613          	li	a2,1
    80003d64:	00000513          	li	a0,0
    80003d68:	fffff097          	auipc	ra,0xfffff
    80003d6c:	8c4080e7          	jalr	-1852(ra) # 8000262c <console_read>
    80003d70:	fe844503          	lbu	a0,-24(s0)
    80003d74:	01813083          	ld	ra,24(sp)
    80003d78:	01013403          	ld	s0,16(sp)
    80003d7c:	02010113          	addi	sp,sp,32
    80003d80:	00008067          	ret

0000000080003d84 <console_handler>:
    80003d84:	fe010113          	addi	sp,sp,-32
    80003d88:	00813823          	sd	s0,16(sp)
    80003d8c:	00113c23          	sd	ra,24(sp)
    80003d90:	00913423          	sd	s1,8(sp)
    80003d94:	02010413          	addi	s0,sp,32
    80003d98:	14202773          	csrr	a4,scause
    80003d9c:	100027f3          	csrr	a5,sstatus
    80003da0:	0027f793          	andi	a5,a5,2
    80003da4:	06079e63          	bnez	a5,80003e20 <console_handler+0x9c>
    80003da8:	00074c63          	bltz	a4,80003dc0 <console_handler+0x3c>
    80003dac:	01813083          	ld	ra,24(sp)
    80003db0:	01013403          	ld	s0,16(sp)
    80003db4:	00813483          	ld	s1,8(sp)
    80003db8:	02010113          	addi	sp,sp,32
    80003dbc:	00008067          	ret
    80003dc0:	0ff77713          	andi	a4,a4,255
    80003dc4:	00900793          	li	a5,9
    80003dc8:	fef712e3          	bne	a4,a5,80003dac <console_handler+0x28>
    80003dcc:	ffffe097          	auipc	ra,0xffffe
    80003dd0:	4b8080e7          	jalr	1208(ra) # 80002284 <plic_claim>
    80003dd4:	00a00793          	li	a5,10
    80003dd8:	00050493          	mv	s1,a0
    80003ddc:	02f50c63          	beq	a0,a5,80003e14 <console_handler+0x90>
    80003de0:	fc0506e3          	beqz	a0,80003dac <console_handler+0x28>
    80003de4:	00050593          	mv	a1,a0
    80003de8:	00000517          	auipc	a0,0x0
    80003dec:	33050513          	addi	a0,a0,816 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003df0:	fffff097          	auipc	ra,0xfffff
    80003df4:	8d8080e7          	jalr	-1832(ra) # 800026c8 <__printf>
    80003df8:	01013403          	ld	s0,16(sp)
    80003dfc:	01813083          	ld	ra,24(sp)
    80003e00:	00048513          	mv	a0,s1
    80003e04:	00813483          	ld	s1,8(sp)
    80003e08:	02010113          	addi	sp,sp,32
    80003e0c:	ffffe317          	auipc	t1,0xffffe
    80003e10:	4b030067          	jr	1200(t1) # 800022bc <plic_complete>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	1bc080e7          	jalr	444(ra) # 80002fd0 <uartintr>
    80003e1c:	fddff06f          	j	80003df8 <console_handler+0x74>
    80003e20:	00000517          	auipc	a0,0x0
    80003e24:	3f850513          	addi	a0,a0,1016 # 80004218 <digits+0x78>
    80003e28:	fffff097          	auipc	ra,0xfffff
    80003e2c:	844080e7          	jalr	-1980(ra) # 8000266c <panic>

0000000080003e30 <kvmincrease>:
    80003e30:	fe010113          	addi	sp,sp,-32
    80003e34:	01213023          	sd	s2,0(sp)
    80003e38:	00001937          	lui	s2,0x1
    80003e3c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003e40:	00813823          	sd	s0,16(sp)
    80003e44:	00113c23          	sd	ra,24(sp)
    80003e48:	00913423          	sd	s1,8(sp)
    80003e4c:	02010413          	addi	s0,sp,32
    80003e50:	01250933          	add	s2,a0,s2
    80003e54:	00c95913          	srli	s2,s2,0xc
    80003e58:	02090863          	beqz	s2,80003e88 <kvmincrease+0x58>
    80003e5c:	00000493          	li	s1,0
    80003e60:	00148493          	addi	s1,s1,1
    80003e64:	fffff097          	auipc	ra,0xfffff
    80003e68:	4bc080e7          	jalr	1212(ra) # 80003320 <kalloc>
    80003e6c:	fe991ae3          	bne	s2,s1,80003e60 <kvmincrease+0x30>
    80003e70:	01813083          	ld	ra,24(sp)
    80003e74:	01013403          	ld	s0,16(sp)
    80003e78:	00813483          	ld	s1,8(sp)
    80003e7c:	00013903          	ld	s2,0(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret
    80003e88:	01813083          	ld	ra,24(sp)
    80003e8c:	01013403          	ld	s0,16(sp)
    80003e90:	00813483          	ld	s1,8(sp)
    80003e94:	00013903          	ld	s2,0(sp)
    80003e98:	00000513          	li	a0,0
    80003e9c:	02010113          	addi	sp,sp,32
    80003ea0:	00008067          	ret
	...

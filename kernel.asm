
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	7e813103          	ld	sp,2024(sp) # 800047e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	23d010ef          	jal	ra,80001a58 <start>

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
    80001080:	7bc000ef          	jal	ra,8000183c <_ZN5Riscv20handleSupervisorTrapEv>

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
    8000116c:	5c8080e7          	jalr	1480(ra) # 80001730 <_Znam>
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
    800011a4:	6a070713          	addi	a4,a4,1696 # 80004840 <_ZN7_thread8globalIdE>
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
    8000120c:	460080e7          	jalr	1120(ra) # 80001668 <_ZN9Scheduler3putEP7_thread>
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
    80001264:	5e84b483          	ld	s1,1512(s1) # 80004848 <_ZN7_thread7runningE>

class _thread {
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }
    80001268:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    8000126c:	02078c63          	beqz	a5,800012a4 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    80001270:	00000097          	auipc	ra,0x0
    80001274:	390080e7          	jalr	912(ra) # 80001600 <_ZN9Scheduler3getEv>
    80001278:	00003797          	auipc	a5,0x3
    8000127c:	5ca7b823          	sd	a0,1488(a5) # 80004848 <_ZN7_thread7runningE>
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
    800012ac:	3c0080e7          	jalr	960(ra) # 80001668 <_ZN9Scheduler3putEP7_thread>
    800012b0:	fc1ff06f          	j	80001270 <_ZN7_thread8dispatchEv+0x24>

00000000800012b4 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00113423          	sd	ra,8(sp)
    800012bc:	00813023          	sd	s0,0(sp)
    800012c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	618080e7          	jalr	1560(ra) # 800018dc <_ZN15MemoryAllocator10kmem_allocEm>
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
    800012f0:	5f0080e7          	jalr	1520(ra) # 800018dc <_ZN15MemoryAllocator10kmem_allocEm>
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
    80001318:	5f0080e7          	jalr	1520(ra) # 80001904 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001384:	5b8080e7          	jalr	1464(ra) # 80005938 <_Unwind_Resume>
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
    800013b8:	550080e7          	jalr	1360(ra) # 80001904 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001408:	fe010113          	addi	sp,sp,-32
    8000140c:	00113c23          	sd	ra,24(sp)
    80001410:	00813823          	sd	s0,16(sp)
    80001414:	00913423          	sd	s1,8(sp)
    80001418:	02010413          	addi	s0,sp,32
    8000141c:	00050493          	mv	s1,a0
    //prepares parameters to arguments
    //executes system call instruction
    args* arg = (args*)MemoryAllocator::kmem_alloc(sizeof(args));
    80001420:	02000513          	li	a0,32
    80001424:	00000097          	auipc	ra,0x0
    80001428:	4b8080e7          	jalr	1208(ra) # 800018dc <_ZN15MemoryAllocator10kmem_allocEm>
    arg->a0=0x01;
    8000142c:	00100793          	li	a5,1
    80001430:	00f53023          	sd	a5,0(a0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    80001434:	0064d793          	srli	a5,s1,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001438:	03f4f493          	andi	s1,s1,63
    8000143c:	00048463          	beqz	s1,80001444 <_Z9mem_allocm+0x3c>
    80001440:	00178793          	addi	a5,a5,1
    arg->a1=blocks;
    80001444:	00f53423          	sd	a5,8(a0)

    syscall(arg);
    80001448:	00000097          	auipc	ra,0x0
    8000144c:	f84080e7          	jalr	-124(ra) # 800013cc <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001450:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001454:	01813083          	ld	ra,24(sp)
    80001458:	01013403          	ld	s0,16(sp)
    8000145c:	00813483          	ld	s1,8(sp)
    80001460:	02010113          	addi	sp,sp,32
    80001464:	00008067          	ret

0000000080001468 <_Z8mem_freePv>:

int mem_free (void* p){
    80001468:	fe010113          	addi	sp,sp,-32
    8000146c:	00113c23          	sd	ra,24(sp)
    80001470:	00813823          	sd	s0,16(sp)
    80001474:	00913423          	sd	s1,8(sp)
    80001478:	02010413          	addi	s0,sp,32
    8000147c:	00050493          	mv	s1,a0
    args* arg = (args*)MemoryAllocator::kmem_alloc(sizeof(args));
    80001480:	02000513          	li	a0,32
    80001484:	00000097          	auipc	ra,0x0
    80001488:	458080e7          	jalr	1112(ra) # 800018dc <_ZN15MemoryAllocator10kmem_allocEm>
    arg->a0=0x02;
    8000148c:	00200713          	li	a4,2
    80001490:	00e53023          	sd	a4,0(a0)
    arg->a1=(uint64)p;
    80001494:	00953423          	sd	s1,8(a0)

    syscall(arg);
    80001498:	00000097          	auipc	ra,0x0
    8000149c:	f34080e7          	jalr	-204(ra) # 800013cc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014a0:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014a4:	0005051b          	sext.w	a0,a0
    800014a8:	01813083          	ld	ra,24(sp)
    800014ac:	01013403          	ld	s0,16(sp)
    800014b0:	00813483          	ld	s1,8(sp)
    800014b4:	02010113          	addi	sp,sp,32
    800014b8:	00008067          	ret

00000000800014bc <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014bc:	fd010113          	addi	sp,sp,-48
    800014c0:	02113423          	sd	ra,40(sp)
    800014c4:	02813023          	sd	s0,32(sp)
    800014c8:	00913c23          	sd	s1,24(sp)
    800014cc:	01213823          	sd	s2,16(sp)
    800014d0:	01313423          	sd	s3,8(sp)
    800014d4:	03010413          	addi	s0,sp,48
    800014d8:	00050993          	mv	s3,a0
    800014dc:	00058913          	mv	s2,a1
    800014e0:	00060493          	mv	s1,a2
    args* myArgs = new args();
    800014e4:	02000513          	li	a0,32
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	220080e7          	jalr	544(ra) # 80001708 <_Znwm>
    myArgs->a0=0x11;
    800014f0:	01100713          	li	a4,17
    800014f4:	00e53023          	sd	a4,0(a0)
    myArgs->a1=(uint64)handle;
    800014f8:	01353423          	sd	s3,8(a0)
    myArgs->a2=(uint64)start_routine;
    800014fc:	01253823          	sd	s2,16(a0)
    myArgs->a3=(uint64)arg;
    80001500:	00953c23          	sd	s1,24(a0)

    syscall(myArgs);
    80001504:	00000097          	auipc	ra,0x0
    80001508:	ec8080e7          	jalr	-312(ra) # 800013cc <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000150c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001510:	0005051b          	sext.w	a0,a0
    80001514:	02813083          	ld	ra,40(sp)
    80001518:	02013403          	ld	s0,32(sp)
    8000151c:	01813483          	ld	s1,24(sp)
    80001520:	01013903          	ld	s2,16(sp)
    80001524:	00813983          	ld	s3,8(sp)
    80001528:	03010113          	addi	sp,sp,48
    8000152c:	00008067          	ret

0000000080001530 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"



int main(){
    80001530:	fe010113          	addi	sp,sp,-32
    80001534:	00113c23          	sd	ra,24(sp)
    80001538:	00813823          	sd	s0,16(sp)
    8000153c:	00913423          	sd	s1,8(sp)
    80001540:	02010413          	addi	s0,sp,32

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001544:	00003797          	auipc	a5,0x3
    80001548:	29c7b783          	ld	a5,668(a5) # 800047e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000154c:	10579073          	csrw	stvec,a5

    void* ptr;
    ptr = mem_alloc(300);
    80001550:	12c00513          	li	a0,300
    80001554:	00000097          	auipc	ra,0x0
    80001558:	eb4080e7          	jalr	-332(ra) # 80001408 <_Z9mem_allocm>
    8000155c:	00050493          	mv	s1,a0
    if(ptr!=nullptr){
    80001560:	00050a63          	beqz	a0,80001574 <main+0x44>
        printString("allocated \n");
    80001564:	00003517          	auipc	a0,0x3
    80001568:	a9c50513          	addi	a0,a0,-1380 # 80004000 <kvmincrease+0x1a0>
    8000156c:	00000097          	auipc	ra,0x0
    80001570:	3c0080e7          	jalr	960(ra) # 8000192c <_Z11printStringPKc>
    }
    if(!mem_free(ptr)){
    80001574:	00048513          	mv	a0,s1
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	ef0080e7          	jalr	-272(ra) # 80001468 <_Z8mem_freePv>
    80001580:	02051663          	bnez	a0,800015ac <main+0x7c>
        printString("successfully freed \n");
    80001584:	00003517          	auipc	a0,0x3
    80001588:	a8c50513          	addi	a0,a0,-1396 # 80004010 <kvmincrease+0x1b0>
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	3a0080e7          	jalr	928(ra) # 8000192c <_Z11printStringPKc>
    }
    else{
        printString("not freed \n");
    }
    return 0;
}
    80001594:	00000513          	li	a0,0
    80001598:	01813083          	ld	ra,24(sp)
    8000159c:	01013403          	ld	s0,16(sp)
    800015a0:	00813483          	ld	s1,8(sp)
    800015a4:	02010113          	addi	sp,sp,32
    800015a8:	00008067          	ret
        printString("not freed \n");
    800015ac:	00003517          	auipc	a0,0x3
    800015b0:	a7c50513          	addi	a0,a0,-1412 # 80004028 <kvmincrease+0x1c8>
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	378080e7          	jalr	888(ra) # 8000192c <_Z11printStringPKc>
    800015bc:	fd9ff06f          	j	80001594 <main+0x64>

00000000800015c0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00813423          	sd	s0,8(sp)
    800015c8:	01010413          	addi	s0,sp,16
    800015cc:	00100793          	li	a5,1
    800015d0:	00f50863          	beq	a0,a5,800015e0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800015d4:	00813403          	ld	s0,8(sp)
    800015d8:	01010113          	addi	sp,sp,16
    800015dc:	00008067          	ret
    800015e0:	000107b7          	lui	a5,0x10
    800015e4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800015e8:	fef596e3          	bne	a1,a5,800015d4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800015ec:	00003797          	auipc	a5,0x3
    800015f0:	26c78793          	addi	a5,a5,620 # 80004858 <_ZN9Scheduler16readyThreadQueueE>
    800015f4:	0007b023          	sd	zero,0(a5)
    800015f8:	0007b423          	sd	zero,8(a5)
    800015fc:	fd9ff06f          	j	800015d4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001600 <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    80001600:	fe010113          	addi	sp,sp,-32
    80001604:	00113c23          	sd	ra,24(sp)
    80001608:	00813823          	sd	s0,16(sp)
    8000160c:	00913423          	sd	s1,8(sp)
    80001610:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001614:	00003517          	auipc	a0,0x3
    80001618:	24453503          	ld	a0,580(a0) # 80004858 <_ZN9Scheduler16readyThreadQueueE>
    8000161c:	04050263          	beqz	a0,80001660 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001620:	00853783          	ld	a5,8(a0)
    80001624:	00003717          	auipc	a4,0x3
    80001628:	22f73a23          	sd	a5,564(a4) # 80004858 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000162c:	02078463          	beqz	a5,80001654 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001630:	00053483          	ld	s1,0(a0)
        delete elem;
    80001634:	00000097          	auipc	ra,0x0
    80001638:	124080e7          	jalr	292(ra) # 80001758 <_ZdlPv>
}
    8000163c:	00048513          	mv	a0,s1
    80001640:	01813083          	ld	ra,24(sp)
    80001644:	01013403          	ld	s0,16(sp)
    80001648:	00813483          	ld	s1,8(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret
        if (!head) { tail = 0; }
    80001654:	00003797          	auipc	a5,0x3
    80001658:	2007b623          	sd	zero,524(a5) # 80004860 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000165c:	fd5ff06f          	j	80001630 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001660:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001664:	fd9ff06f          	j	8000163c <_ZN9Scheduler3getEv+0x3c>

0000000080001668 <_ZN9Scheduler3putEP7_thread>:
{
    80001668:	fe010113          	addi	sp,sp,-32
    8000166c:	00113c23          	sd	ra,24(sp)
    80001670:	00813823          	sd	s0,16(sp)
    80001674:	00913423          	sd	s1,8(sp)
    80001678:	02010413          	addi	s0,sp,32
    8000167c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001680:	01000513          	li	a0,16
    80001684:	00000097          	auipc	ra,0x0
    80001688:	084080e7          	jalr	132(ra) # 80001708 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000168c:	00953023          	sd	s1,0(a0)
    80001690:	00053423          	sd	zero,8(a0)
        if (tail)
    80001694:	00003797          	auipc	a5,0x3
    80001698:	1cc7b783          	ld	a5,460(a5) # 80004860 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000169c:	02078263          	beqz	a5,800016c0 <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    800016a0:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800016a4:	00003797          	auipc	a5,0x3
    800016a8:	1aa7be23          	sd	a0,444(a5) # 80004860 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800016ac:	01813083          	ld	ra,24(sp)
    800016b0:	01013403          	ld	s0,16(sp)
    800016b4:	00813483          	ld	s1,8(sp)
    800016b8:	02010113          	addi	sp,sp,32
    800016bc:	00008067          	ret
            head = tail = elem;
    800016c0:	00003797          	auipc	a5,0x3
    800016c4:	19878793          	addi	a5,a5,408 # 80004858 <_ZN9Scheduler16readyThreadQueueE>
    800016c8:	00a7b423          	sd	a0,8(a5)
    800016cc:	00a7b023          	sd	a0,0(a5)
    800016d0:	fddff06f          	j	800016ac <_ZN9Scheduler3putEP7_thread+0x44>

00000000800016d4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800016d4:	ff010113          	addi	sp,sp,-16
    800016d8:	00113423          	sd	ra,8(sp)
    800016dc:	00813023          	sd	s0,0(sp)
    800016e0:	01010413          	addi	s0,sp,16
    800016e4:	000105b7          	lui	a1,0x10
    800016e8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800016ec:	00100513          	li	a0,1
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	ed0080e7          	jalr	-304(ra) # 800015c0 <_Z41__static_initialization_and_destruction_0ii>
    800016f8:	00813083          	ld	ra,8(sp)
    800016fc:	00013403          	ld	s0,0(sp)
    80001700:	01010113          	addi	sp,sp,16
    80001704:	00008067          	ret

0000000080001708 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
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

0000000080001730 <_Znam>:

void* operator new[](size_t n){
    80001730:	ff010113          	addi	sp,sp,-16
    80001734:	00113423          	sd	ra,8(sp)
    80001738:	00813023          	sd	s0,0(sp)
    8000173c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001740:	00000097          	auipc	ra,0x0
    80001744:	cc8080e7          	jalr	-824(ra) # 80001408 <_Z9mem_allocm>
}
    80001748:	00813083          	ld	ra,8(sp)
    8000174c:	00013403          	ld	s0,0(sp)
    80001750:	01010113          	addi	sp,sp,16
    80001754:	00008067          	ret

0000000080001758 <_ZdlPv>:

void operator delete(void* p) noexcept{
    80001758:	ff010113          	addi	sp,sp,-16
    8000175c:	00113423          	sd	ra,8(sp)
    80001760:	00813023          	sd	s0,0(sp)
    80001764:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	d00080e7          	jalr	-768(ra) # 80001468 <_Z8mem_freePv>
}
    80001770:	00813083          	ld	ra,8(sp)
    80001774:	00013403          	ld	s0,0(sp)
    80001778:	01010113          	addi	sp,sp,16
    8000177c:	00008067          	ret

0000000080001780 <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    80001780:	ff010113          	addi	sp,sp,-16
    80001784:	00113423          	sd	ra,8(sp)
    80001788:	00813023          	sd	s0,0(sp)
    8000178c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001790:	00000097          	auipc	ra,0x0
    80001794:	cd8080e7          	jalr	-808(ra) # 80001468 <_Z8mem_freePv>

}
    80001798:	00813083          	ld	ra,8(sp)
    8000179c:	00013403          	ld	s0,0(sp)
    800017a0:	01010113          	addi	sp,sp,16
    800017a4:	00008067          	ret

00000000800017a8 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    800017a8:	ff010113          	addi	sp,sp,-16
    800017ac:	00113423          	sd	ra,8(sp)
    800017b0:	00813023          	sd	s0,0(sp)
    800017b4:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    800017b8:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    800017bc:	00100713          	li	a4,1
    800017c0:	02e78263          	beq	a5,a4,800017e4 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    800017c4:	00200713          	li	a4,2
    800017c8:	02e78863          	beq	a5,a4,800017f8 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    800017cc:	01100713          	li	a4,17
    800017d0:	02e78e63          	beq	a5,a4,8000180c <_ZN5Riscv14syscallHandlerEv+0x64>
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable


    }

}
    800017d4:	00813083          	ld	ra,8(sp)
    800017d8:	00013403          	ld	s0,0(sp)
    800017dc:	01010113          	addi	sp,sp,16
    800017e0:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    800017e4:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    800017e8:	00000097          	auipc	ra,0x0
    800017ec:	0f4080e7          	jalr	244(ra) # 800018dc <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    800017f0:	00050513          	mv	a0,a0
    800017f4:	fe1ff06f          	j	800017d4 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    800017f8:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	108080e7          	jalr	264(ra) # 80001904 <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001804:	00050513          	mv	a0,a0
    80001808:	fcdff06f          	j	800017d4 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    8000180c:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //read pointer to free from a1 and move it to arg1 local variable
    80001810:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //read pointer to free from a1 and move it to arg1 local variable
    80001814:	00058793          	mv	a5,a1
}
    80001818:	fbdff06f          	j	800017d4 <_ZN5Riscv14syscallHandlerEv+0x2c>

000000008000181c <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    8000181c:	ff010113          	addi	sp,sp,-16
    80001820:	00813423          	sd	s0,8(sp)
    80001824:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001828:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    8000182c:	10200073          	sret
}
    80001830:	00813403          	ld	s0,8(sp)
    80001834:	01010113          	addi	sp,sp,16
    80001838:	00008067          	ret

000000008000183c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    8000183c:	fc010113          	addi	sp,sp,-64
    80001840:	02113c23          	sd	ra,56(sp)
    80001844:	02813823          	sd	s0,48(sp)
    80001848:	02913423          	sd	s1,40(sp)
    8000184c:	03213023          	sd	s2,32(sp)
    80001850:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001854:	142027f3          	csrr	a5,scause
    80001858:	fcf43423          	sd	a5,-56(s0)
    return scause;
    8000185c:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001860:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001864:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001868:	ff87879b          	addiw	a5,a5,-8
    8000186c:	00100713          	li	a4,1
    80001870:	00f77e63          	bgeu	a4,a5,8000188c <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001874:	03813083          	ld	ra,56(sp)
    80001878:	03013403          	ld	s0,48(sp)
    8000187c:	02813483          	ld	s1,40(sp)
    80001880:	02013903          	ld	s2,32(sp)
    80001884:	04010113          	addi	sp,sp,64
    80001888:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000188c:	141027f3          	csrr	a5,sepc
    80001890:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001894:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001898:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000189c:	100027f3          	csrr	a5,sstatus
    800018a0:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    800018a4:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    800018a8:	00400793          	li	a5,4
    800018ac:	00f68c63          	beq	a3,a5,800018c4 <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	ef8080e7          	jalr	-264(ra) # 800017a8 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800018b8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800018bc:	14149073          	csrw	sepc,s1
}
    800018c0:	fb5ff06f          	j	80001874 <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    800018c4:	00003797          	auipc	a5,0x3
    800018c8:	f2c7b783          	ld	a5,-212(a5) # 800047f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800018cc:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	97c080e7          	jalr	-1668(ra) # 8000124c <_ZN7_thread8dispatchEv>
    800018d8:	fe1ff06f          	j	800018b8 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

00000000800018dc <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    800018dc:	ff010113          	addi	sp,sp,-16
    800018e0:	00113423          	sd	ra,8(sp)
    800018e4:	00813023          	sd	s0,0(sp)
    800018e8:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    800018ec:	00002097          	auipc	ra,0x2
    800018f0:	2fc080e7          	jalr	764(ra) # 80003be8 <__mem_alloc>
}
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00113423          	sd	ra,8(sp)
    8000190c:	00813023          	sd	s0,0(sp)
    80001910:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001914:	00002097          	auipc	ra,0x2
    80001918:	208080e7          	jalr	520(ra) # 80003b1c <__mem_free>
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	01010113          	addi	sp,sp,16
    80001928:	00008067          	ret

000000008000192c <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    8000192c:	fd010113          	addi	sp,sp,-48
    80001930:	02113423          	sd	ra,40(sp)
    80001934:	02813023          	sd	s0,32(sp)
    80001938:	00913c23          	sd	s1,24(sp)
    8000193c:	01213823          	sd	s2,16(sp)
    80001940:	03010413          	addi	s0,sp,48
    80001944:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001948:	100027f3          	csrr	a5,sstatus
    8000194c:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001950:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001954:	00200793          	li	a5,2
    80001958:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    8000195c:	0004c503          	lbu	a0,0(s1)
    80001960:	00050a63          	beqz	a0,80001974 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001964:	00002097          	auipc	ra,0x2
    80001968:	3dc080e7          	jalr	988(ra) # 80003d40 <__putc>
        string++;
    8000196c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001970:	fedff06f          	j	8000195c <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001974:	0009091b          	sext.w	s2,s2
    80001978:	00297913          	andi	s2,s2,2
    8000197c:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001980:	10092073          	csrs	sstatus,s2
}
    80001984:	02813083          	ld	ra,40(sp)
    80001988:	02013403          	ld	s0,32(sp)
    8000198c:	01813483          	ld	s1,24(sp)
    80001990:	01013903          	ld	s2,16(sp)
    80001994:	03010113          	addi	sp,sp,48
    80001998:	00008067          	ret

000000008000199c <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    8000199c:	fc010113          	addi	sp,sp,-64
    800019a0:	02113c23          	sd	ra,56(sp)
    800019a4:	02813823          	sd	s0,48(sp)
    800019a8:	02913423          	sd	s1,40(sp)
    800019ac:	03213023          	sd	s2,32(sp)
    800019b0:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800019b4:	100027f3          	csrr	a5,sstatus
    800019b8:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800019bc:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800019c0:	00200793          	li	a5,2
    800019c4:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800019c8:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800019cc:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800019d0:	00a00613          	li	a2,10
    800019d4:	02c5773b          	remuw	a4,a0,a2
    800019d8:	02071693          	slli	a3,a4,0x20
    800019dc:	0206d693          	srli	a3,a3,0x20
    800019e0:	00002717          	auipc	a4,0x2
    800019e4:	65870713          	addi	a4,a4,1624 # 80004038 <_ZZ12printIntegermE6digits>
    800019e8:	00d70733          	add	a4,a4,a3
    800019ec:	00074703          	lbu	a4,0(a4)
    800019f0:	fe040693          	addi	a3,s0,-32
    800019f4:	009687b3          	add	a5,a3,s1
    800019f8:	0014849b          	addiw	s1,s1,1
    800019fc:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001a00:	0005071b          	sext.w	a4,a0
    80001a04:	02c5553b          	divuw	a0,a0,a2
    80001a08:	00900793          	li	a5,9
    80001a0c:	fce7e2e3          	bltu	a5,a4,800019d0 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001a10:	fff4849b          	addiw	s1,s1,-1
    80001a14:	0004ce63          	bltz	s1,80001a30 <_Z12printIntegerm+0x94>
    80001a18:	fe040793          	addi	a5,s0,-32
    80001a1c:	009787b3          	add	a5,a5,s1
    80001a20:	ff07c503          	lbu	a0,-16(a5)
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	31c080e7          	jalr	796(ra) # 80003d40 <__putc>
    80001a2c:	fe5ff06f          	j	80001a10 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001a30:	0009091b          	sext.w	s2,s2
    80001a34:	00297913          	andi	s2,s2,2
    80001a38:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001a3c:	10092073          	csrs	sstatus,s2
}
    80001a40:	03813083          	ld	ra,56(sp)
    80001a44:	03013403          	ld	s0,48(sp)
    80001a48:	02813483          	ld	s1,40(sp)
    80001a4c:	02013903          	ld	s2,32(sp)
    80001a50:	04010113          	addi	sp,sp,64
    80001a54:	00008067          	ret

0000000080001a58 <start>:
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00813423          	sd	s0,8(sp)
    80001a60:	01010413          	addi	s0,sp,16
    80001a64:	300027f3          	csrr	a5,mstatus
    80001a68:	ffffe737          	lui	a4,0xffffe
    80001a6c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8d1f>
    80001a70:	00e7f7b3          	and	a5,a5,a4
    80001a74:	00001737          	lui	a4,0x1
    80001a78:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001a7c:	00e7e7b3          	or	a5,a5,a4
    80001a80:	30079073          	csrw	mstatus,a5
    80001a84:	00000797          	auipc	a5,0x0
    80001a88:	16078793          	addi	a5,a5,352 # 80001be4 <system_main>
    80001a8c:	34179073          	csrw	mepc,a5
    80001a90:	00000793          	li	a5,0
    80001a94:	18079073          	csrw	satp,a5
    80001a98:	000107b7          	lui	a5,0x10
    80001a9c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001aa0:	30279073          	csrw	medeleg,a5
    80001aa4:	30379073          	csrw	mideleg,a5
    80001aa8:	104027f3          	csrr	a5,sie
    80001aac:	2227e793          	ori	a5,a5,546
    80001ab0:	10479073          	csrw	sie,a5
    80001ab4:	fff00793          	li	a5,-1
    80001ab8:	00a7d793          	srli	a5,a5,0xa
    80001abc:	3b079073          	csrw	pmpaddr0,a5
    80001ac0:	00f00793          	li	a5,15
    80001ac4:	3a079073          	csrw	pmpcfg0,a5
    80001ac8:	f14027f3          	csrr	a5,mhartid
    80001acc:	0200c737          	lui	a4,0x200c
    80001ad0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ad4:	0007869b          	sext.w	a3,a5
    80001ad8:	00269713          	slli	a4,a3,0x2
    80001adc:	000f4637          	lui	a2,0xf4
    80001ae0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ae4:	00d70733          	add	a4,a4,a3
    80001ae8:	0037979b          	slliw	a5,a5,0x3
    80001aec:	020046b7          	lui	a3,0x2004
    80001af0:	00d787b3          	add	a5,a5,a3
    80001af4:	00c585b3          	add	a1,a1,a2
    80001af8:	00371693          	slli	a3,a4,0x3
    80001afc:	00003717          	auipc	a4,0x3
    80001b00:	d7470713          	addi	a4,a4,-652 # 80004870 <timer_scratch>
    80001b04:	00b7b023          	sd	a1,0(a5)
    80001b08:	00d70733          	add	a4,a4,a3
    80001b0c:	00f73c23          	sd	a5,24(a4)
    80001b10:	02c73023          	sd	a2,32(a4)
    80001b14:	34071073          	csrw	mscratch,a4
    80001b18:	00000797          	auipc	a5,0x0
    80001b1c:	6e878793          	addi	a5,a5,1768 # 80002200 <timervec>
    80001b20:	30579073          	csrw	mtvec,a5
    80001b24:	300027f3          	csrr	a5,mstatus
    80001b28:	0087e793          	ori	a5,a5,8
    80001b2c:	30079073          	csrw	mstatus,a5
    80001b30:	304027f3          	csrr	a5,mie
    80001b34:	0807e793          	ori	a5,a5,128
    80001b38:	30479073          	csrw	mie,a5
    80001b3c:	f14027f3          	csrr	a5,mhartid
    80001b40:	0007879b          	sext.w	a5,a5
    80001b44:	00078213          	mv	tp,a5
    80001b48:	30200073          	mret
    80001b4c:	00813403          	ld	s0,8(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <timerinit>:
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00813423          	sd	s0,8(sp)
    80001b60:	01010413          	addi	s0,sp,16
    80001b64:	f14027f3          	csrr	a5,mhartid
    80001b68:	0200c737          	lui	a4,0x200c
    80001b6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b70:	0007869b          	sext.w	a3,a5
    80001b74:	00269713          	slli	a4,a3,0x2
    80001b78:	000f4637          	lui	a2,0xf4
    80001b7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b80:	00d70733          	add	a4,a4,a3
    80001b84:	0037979b          	slliw	a5,a5,0x3
    80001b88:	020046b7          	lui	a3,0x2004
    80001b8c:	00d787b3          	add	a5,a5,a3
    80001b90:	00c585b3          	add	a1,a1,a2
    80001b94:	00371693          	slli	a3,a4,0x3
    80001b98:	00003717          	auipc	a4,0x3
    80001b9c:	cd870713          	addi	a4,a4,-808 # 80004870 <timer_scratch>
    80001ba0:	00b7b023          	sd	a1,0(a5)
    80001ba4:	00d70733          	add	a4,a4,a3
    80001ba8:	00f73c23          	sd	a5,24(a4)
    80001bac:	02c73023          	sd	a2,32(a4)
    80001bb0:	34071073          	csrw	mscratch,a4
    80001bb4:	00000797          	auipc	a5,0x0
    80001bb8:	64c78793          	addi	a5,a5,1612 # 80002200 <timervec>
    80001bbc:	30579073          	csrw	mtvec,a5
    80001bc0:	300027f3          	csrr	a5,mstatus
    80001bc4:	0087e793          	ori	a5,a5,8
    80001bc8:	30079073          	csrw	mstatus,a5
    80001bcc:	304027f3          	csrr	a5,mie
    80001bd0:	0807e793          	ori	a5,a5,128
    80001bd4:	30479073          	csrw	mie,a5
    80001bd8:	00813403          	ld	s0,8(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <system_main>:
    80001be4:	fe010113          	addi	sp,sp,-32
    80001be8:	00813823          	sd	s0,16(sp)
    80001bec:	00913423          	sd	s1,8(sp)
    80001bf0:	00113c23          	sd	ra,24(sp)
    80001bf4:	02010413          	addi	s0,sp,32
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	0c4080e7          	jalr	196(ra) # 80001cbc <cpuid>
    80001c00:	00003497          	auipc	s1,0x3
    80001c04:	c1048493          	addi	s1,s1,-1008 # 80004810 <started>
    80001c08:	02050263          	beqz	a0,80001c2c <system_main+0x48>
    80001c0c:	0004a783          	lw	a5,0(s1)
    80001c10:	0007879b          	sext.w	a5,a5
    80001c14:	fe078ce3          	beqz	a5,80001c0c <system_main+0x28>
    80001c18:	0ff0000f          	fence
    80001c1c:	00002517          	auipc	a0,0x2
    80001c20:	45c50513          	addi	a0,a0,1116 # 80004078 <_ZZ12printIntegermE6digits+0x40>
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	a78080e7          	jalr	-1416(ra) # 8000269c <panic>
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	9cc080e7          	jalr	-1588(ra) # 800025f8 <consoleinit>
    80001c34:	00001097          	auipc	ra,0x1
    80001c38:	158080e7          	jalr	344(ra) # 80002d8c <printfinit>
    80001c3c:	00002517          	auipc	a0,0x2
    80001c40:	51c50513          	addi	a0,a0,1308 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	ab4080e7          	jalr	-1356(ra) # 800026f8 <__printf>
    80001c4c:	00002517          	auipc	a0,0x2
    80001c50:	3fc50513          	addi	a0,a0,1020 # 80004048 <_ZZ12printIntegermE6digits+0x10>
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	aa4080e7          	jalr	-1372(ra) # 800026f8 <__printf>
    80001c5c:	00002517          	auipc	a0,0x2
    80001c60:	4fc50513          	addi	a0,a0,1276 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	a94080e7          	jalr	-1388(ra) # 800026f8 <__printf>
    80001c6c:	00001097          	auipc	ra,0x1
    80001c70:	4ac080e7          	jalr	1196(ra) # 80003118 <kinit>
    80001c74:	00000097          	auipc	ra,0x0
    80001c78:	148080e7          	jalr	328(ra) # 80001dbc <trapinit>
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	16c080e7          	jalr	364(ra) # 80001de8 <trapinithart>
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	5bc080e7          	jalr	1468(ra) # 80002240 <plicinit>
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	5dc080e7          	jalr	1500(ra) # 80002268 <plicinithart>
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	078080e7          	jalr	120(ra) # 80001d0c <userinit>
    80001c9c:	0ff0000f          	fence
    80001ca0:	00100793          	li	a5,1
    80001ca4:	00002517          	auipc	a0,0x2
    80001ca8:	3bc50513          	addi	a0,a0,956 # 80004060 <_ZZ12printIntegermE6digits+0x28>
    80001cac:	00f4a023          	sw	a5,0(s1)
    80001cb0:	00001097          	auipc	ra,0x1
    80001cb4:	a48080e7          	jalr	-1464(ra) # 800026f8 <__printf>
    80001cb8:	0000006f          	j	80001cb8 <system_main+0xd4>

0000000080001cbc <cpuid>:
    80001cbc:	ff010113          	addi	sp,sp,-16
    80001cc0:	00813423          	sd	s0,8(sp)
    80001cc4:	01010413          	addi	s0,sp,16
    80001cc8:	00020513          	mv	a0,tp
    80001ccc:	00813403          	ld	s0,8(sp)
    80001cd0:	0005051b          	sext.w	a0,a0
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <mycpu>:
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00813423          	sd	s0,8(sp)
    80001ce4:	01010413          	addi	s0,sp,16
    80001ce8:	00020793          	mv	a5,tp
    80001cec:	00813403          	ld	s0,8(sp)
    80001cf0:	0007879b          	sext.w	a5,a5
    80001cf4:	00779793          	slli	a5,a5,0x7
    80001cf8:	00004517          	auipc	a0,0x4
    80001cfc:	ba850513          	addi	a0,a0,-1112 # 800058a0 <cpus>
    80001d00:	00f50533          	add	a0,a0,a5
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <userinit>:
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
    80001d18:	00813403          	ld	s0,8(sp)
    80001d1c:	01010113          	addi	sp,sp,16
    80001d20:	00000317          	auipc	t1,0x0
    80001d24:	81030067          	jr	-2032(t1) # 80001530 <main>

0000000080001d28 <either_copyout>:
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00813023          	sd	s0,0(sp)
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	01010413          	addi	s0,sp,16
    80001d38:	02051663          	bnez	a0,80001d64 <either_copyout+0x3c>
    80001d3c:	00058513          	mv	a0,a1
    80001d40:	00060593          	mv	a1,a2
    80001d44:	0006861b          	sext.w	a2,a3
    80001d48:	00002097          	auipc	ra,0x2
    80001d4c:	c5c080e7          	jalr	-932(ra) # 800039a4 <__memmove>
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	00000513          	li	a0,0
    80001d5c:	01010113          	addi	sp,sp,16
    80001d60:	00008067          	ret
    80001d64:	00002517          	auipc	a0,0x2
    80001d68:	33c50513          	addi	a0,a0,828 # 800040a0 <_ZZ12printIntegermE6digits+0x68>
    80001d6c:	00001097          	auipc	ra,0x1
    80001d70:	930080e7          	jalr	-1744(ra) # 8000269c <panic>

0000000080001d74 <either_copyin>:
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813023          	sd	s0,0(sp)
    80001d7c:	00113423          	sd	ra,8(sp)
    80001d80:	01010413          	addi	s0,sp,16
    80001d84:	02059463          	bnez	a1,80001dac <either_copyin+0x38>
    80001d88:	00060593          	mv	a1,a2
    80001d8c:	0006861b          	sext.w	a2,a3
    80001d90:	00002097          	auipc	ra,0x2
    80001d94:	c14080e7          	jalr	-1004(ra) # 800039a4 <__memmove>
    80001d98:	00813083          	ld	ra,8(sp)
    80001d9c:	00013403          	ld	s0,0(sp)
    80001da0:	00000513          	li	a0,0
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret
    80001dac:	00002517          	auipc	a0,0x2
    80001db0:	31c50513          	addi	a0,a0,796 # 800040c8 <_ZZ12printIntegermE6digits+0x90>
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	8e8080e7          	jalr	-1816(ra) # 8000269c <panic>

0000000080001dbc <trapinit>:
    80001dbc:	ff010113          	addi	sp,sp,-16
    80001dc0:	00813423          	sd	s0,8(sp)
    80001dc4:	01010413          	addi	s0,sp,16
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	00002597          	auipc	a1,0x2
    80001dd0:	32458593          	addi	a1,a1,804 # 800040f0 <_ZZ12printIntegermE6digits+0xb8>
    80001dd4:	00004517          	auipc	a0,0x4
    80001dd8:	b4c50513          	addi	a0,a0,-1204 # 80005920 <tickslock>
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00001317          	auipc	t1,0x1
    80001de4:	5c830067          	jr	1480(t1) # 800033a8 <initlock>

0000000080001de8 <trapinithart>:
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00813423          	sd	s0,8(sp)
    80001df0:	01010413          	addi	s0,sp,16
    80001df4:	00000797          	auipc	a5,0x0
    80001df8:	2fc78793          	addi	a5,a5,764 # 800020f0 <kernelvec>
    80001dfc:	10579073          	csrw	stvec,a5
    80001e00:	00813403          	ld	s0,8(sp)
    80001e04:	01010113          	addi	sp,sp,16
    80001e08:	00008067          	ret

0000000080001e0c <usertrap>:
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00813403          	ld	s0,8(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <usertrapret>:
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
    80001e30:	00813403          	ld	s0,8(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <kerneltrap>:
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00813823          	sd	s0,16(sp)
    80001e44:	00113c23          	sd	ra,24(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	02010413          	addi	s0,sp,32
    80001e50:	142025f3          	csrr	a1,scause
    80001e54:	100027f3          	csrr	a5,sstatus
    80001e58:	0027f793          	andi	a5,a5,2
    80001e5c:	10079c63          	bnez	a5,80001f74 <kerneltrap+0x138>
    80001e60:	142027f3          	csrr	a5,scause
    80001e64:	0207ce63          	bltz	a5,80001ea0 <kerneltrap+0x64>
    80001e68:	00002517          	auipc	a0,0x2
    80001e6c:	2d050513          	addi	a0,a0,720 # 80004138 <_ZZ12printIntegermE6digits+0x100>
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	888080e7          	jalr	-1912(ra) # 800026f8 <__printf>
    80001e78:	141025f3          	csrr	a1,sepc
    80001e7c:	14302673          	csrr	a2,stval
    80001e80:	00002517          	auipc	a0,0x2
    80001e84:	2c850513          	addi	a0,a0,712 # 80004148 <_ZZ12printIntegermE6digits+0x110>
    80001e88:	00001097          	auipc	ra,0x1
    80001e8c:	870080e7          	jalr	-1936(ra) # 800026f8 <__printf>
    80001e90:	00002517          	auipc	a0,0x2
    80001e94:	2d050513          	addi	a0,a0,720 # 80004160 <_ZZ12printIntegermE6digits+0x128>
    80001e98:	00001097          	auipc	ra,0x1
    80001e9c:	804080e7          	jalr	-2044(ra) # 8000269c <panic>
    80001ea0:	0ff7f713          	andi	a4,a5,255
    80001ea4:	00900693          	li	a3,9
    80001ea8:	04d70063          	beq	a4,a3,80001ee8 <kerneltrap+0xac>
    80001eac:	fff00713          	li	a4,-1
    80001eb0:	03f71713          	slli	a4,a4,0x3f
    80001eb4:	00170713          	addi	a4,a4,1
    80001eb8:	fae798e3          	bne	a5,a4,80001e68 <kerneltrap+0x2c>
    80001ebc:	00000097          	auipc	ra,0x0
    80001ec0:	e00080e7          	jalr	-512(ra) # 80001cbc <cpuid>
    80001ec4:	06050663          	beqz	a0,80001f30 <kerneltrap+0xf4>
    80001ec8:	144027f3          	csrr	a5,sip
    80001ecc:	ffd7f793          	andi	a5,a5,-3
    80001ed0:	14479073          	csrw	sip,a5
    80001ed4:	01813083          	ld	ra,24(sp)
    80001ed8:	01013403          	ld	s0,16(sp)
    80001edc:	00813483          	ld	s1,8(sp)
    80001ee0:	02010113          	addi	sp,sp,32
    80001ee4:	00008067          	ret
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	3cc080e7          	jalr	972(ra) # 800022b4 <plic_claim>
    80001ef0:	00a00793          	li	a5,10
    80001ef4:	00050493          	mv	s1,a0
    80001ef8:	06f50863          	beq	a0,a5,80001f68 <kerneltrap+0x12c>
    80001efc:	fc050ce3          	beqz	a0,80001ed4 <kerneltrap+0x98>
    80001f00:	00050593          	mv	a1,a0
    80001f04:	00002517          	auipc	a0,0x2
    80001f08:	21450513          	addi	a0,a0,532 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	7ec080e7          	jalr	2028(ra) # 800026f8 <__printf>
    80001f14:	01013403          	ld	s0,16(sp)
    80001f18:	01813083          	ld	ra,24(sp)
    80001f1c:	00048513          	mv	a0,s1
    80001f20:	00813483          	ld	s1,8(sp)
    80001f24:	02010113          	addi	sp,sp,32
    80001f28:	00000317          	auipc	t1,0x0
    80001f2c:	3c430067          	jr	964(t1) # 800022ec <plic_complete>
    80001f30:	00004517          	auipc	a0,0x4
    80001f34:	9f050513          	addi	a0,a0,-1552 # 80005920 <tickslock>
    80001f38:	00001097          	auipc	ra,0x1
    80001f3c:	494080e7          	jalr	1172(ra) # 800033cc <acquire>
    80001f40:	00003717          	auipc	a4,0x3
    80001f44:	8d470713          	addi	a4,a4,-1836 # 80004814 <ticks>
    80001f48:	00072783          	lw	a5,0(a4)
    80001f4c:	00004517          	auipc	a0,0x4
    80001f50:	9d450513          	addi	a0,a0,-1580 # 80005920 <tickslock>
    80001f54:	0017879b          	addiw	a5,a5,1
    80001f58:	00f72023          	sw	a5,0(a4)
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	53c080e7          	jalr	1340(ra) # 80003498 <release>
    80001f64:	f65ff06f          	j	80001ec8 <kerneltrap+0x8c>
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	098080e7          	jalr	152(ra) # 80003000 <uartintr>
    80001f70:	fa5ff06f          	j	80001f14 <kerneltrap+0xd8>
    80001f74:	00002517          	auipc	a0,0x2
    80001f78:	18450513          	addi	a0,a0,388 # 800040f8 <_ZZ12printIntegermE6digits+0xc0>
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	720080e7          	jalr	1824(ra) # 8000269c <panic>

0000000080001f84 <clockintr>:
    80001f84:	fe010113          	addi	sp,sp,-32
    80001f88:	00813823          	sd	s0,16(sp)
    80001f8c:	00913423          	sd	s1,8(sp)
    80001f90:	00113c23          	sd	ra,24(sp)
    80001f94:	02010413          	addi	s0,sp,32
    80001f98:	00004497          	auipc	s1,0x4
    80001f9c:	98848493          	addi	s1,s1,-1656 # 80005920 <tickslock>
    80001fa0:	00048513          	mv	a0,s1
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	428080e7          	jalr	1064(ra) # 800033cc <acquire>
    80001fac:	00003717          	auipc	a4,0x3
    80001fb0:	86870713          	addi	a4,a4,-1944 # 80004814 <ticks>
    80001fb4:	00072783          	lw	a5,0(a4)
    80001fb8:	01013403          	ld	s0,16(sp)
    80001fbc:	01813083          	ld	ra,24(sp)
    80001fc0:	00048513          	mv	a0,s1
    80001fc4:	0017879b          	addiw	a5,a5,1
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	00f72023          	sw	a5,0(a4)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00001317          	auipc	t1,0x1
    80001fd8:	4c430067          	jr	1220(t1) # 80003498 <release>

0000000080001fdc <devintr>:
    80001fdc:	142027f3          	csrr	a5,scause
    80001fe0:	00000513          	li	a0,0
    80001fe4:	0007c463          	bltz	a5,80001fec <devintr+0x10>
    80001fe8:	00008067          	ret
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00813823          	sd	s0,16(sp)
    80001ff4:	00113c23          	sd	ra,24(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    80002000:	0ff7f713          	andi	a4,a5,255
    80002004:	00900693          	li	a3,9
    80002008:	04d70c63          	beq	a4,a3,80002060 <devintr+0x84>
    8000200c:	fff00713          	li	a4,-1
    80002010:	03f71713          	slli	a4,a4,0x3f
    80002014:	00170713          	addi	a4,a4,1
    80002018:	00e78c63          	beq	a5,a4,80002030 <devintr+0x54>
    8000201c:	01813083          	ld	ra,24(sp)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret
    80002030:	00000097          	auipc	ra,0x0
    80002034:	c8c080e7          	jalr	-884(ra) # 80001cbc <cpuid>
    80002038:	06050663          	beqz	a0,800020a4 <devintr+0xc8>
    8000203c:	144027f3          	csrr	a5,sip
    80002040:	ffd7f793          	andi	a5,a5,-3
    80002044:	14479073          	csrw	sip,a5
    80002048:	01813083          	ld	ra,24(sp)
    8000204c:	01013403          	ld	s0,16(sp)
    80002050:	00813483          	ld	s1,8(sp)
    80002054:	00200513          	li	a0,2
    80002058:	02010113          	addi	sp,sp,32
    8000205c:	00008067          	ret
    80002060:	00000097          	auipc	ra,0x0
    80002064:	254080e7          	jalr	596(ra) # 800022b4 <plic_claim>
    80002068:	00a00793          	li	a5,10
    8000206c:	00050493          	mv	s1,a0
    80002070:	06f50663          	beq	a0,a5,800020dc <devintr+0x100>
    80002074:	00100513          	li	a0,1
    80002078:	fa0482e3          	beqz	s1,8000201c <devintr+0x40>
    8000207c:	00048593          	mv	a1,s1
    80002080:	00002517          	auipc	a0,0x2
    80002084:	09850513          	addi	a0,a0,152 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	670080e7          	jalr	1648(ra) # 800026f8 <__printf>
    80002090:	00048513          	mv	a0,s1
    80002094:	00000097          	auipc	ra,0x0
    80002098:	258080e7          	jalr	600(ra) # 800022ec <plic_complete>
    8000209c:	00100513          	li	a0,1
    800020a0:	f7dff06f          	j	8000201c <devintr+0x40>
    800020a4:	00004517          	auipc	a0,0x4
    800020a8:	87c50513          	addi	a0,a0,-1924 # 80005920 <tickslock>
    800020ac:	00001097          	auipc	ra,0x1
    800020b0:	320080e7          	jalr	800(ra) # 800033cc <acquire>
    800020b4:	00002717          	auipc	a4,0x2
    800020b8:	76070713          	addi	a4,a4,1888 # 80004814 <ticks>
    800020bc:	00072783          	lw	a5,0(a4)
    800020c0:	00004517          	auipc	a0,0x4
    800020c4:	86050513          	addi	a0,a0,-1952 # 80005920 <tickslock>
    800020c8:	0017879b          	addiw	a5,a5,1
    800020cc:	00f72023          	sw	a5,0(a4)
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	3c8080e7          	jalr	968(ra) # 80003498 <release>
    800020d8:	f65ff06f          	j	8000203c <devintr+0x60>
    800020dc:	00001097          	auipc	ra,0x1
    800020e0:	f24080e7          	jalr	-220(ra) # 80003000 <uartintr>
    800020e4:	fadff06f          	j	80002090 <devintr+0xb4>
	...

00000000800020f0 <kernelvec>:
    800020f0:	f0010113          	addi	sp,sp,-256
    800020f4:	00113023          	sd	ra,0(sp)
    800020f8:	00213423          	sd	sp,8(sp)
    800020fc:	00313823          	sd	gp,16(sp)
    80002100:	00413c23          	sd	tp,24(sp)
    80002104:	02513023          	sd	t0,32(sp)
    80002108:	02613423          	sd	t1,40(sp)
    8000210c:	02713823          	sd	t2,48(sp)
    80002110:	02813c23          	sd	s0,56(sp)
    80002114:	04913023          	sd	s1,64(sp)
    80002118:	04a13423          	sd	a0,72(sp)
    8000211c:	04b13823          	sd	a1,80(sp)
    80002120:	04c13c23          	sd	a2,88(sp)
    80002124:	06d13023          	sd	a3,96(sp)
    80002128:	06e13423          	sd	a4,104(sp)
    8000212c:	06f13823          	sd	a5,112(sp)
    80002130:	07013c23          	sd	a6,120(sp)
    80002134:	09113023          	sd	a7,128(sp)
    80002138:	09213423          	sd	s2,136(sp)
    8000213c:	09313823          	sd	s3,144(sp)
    80002140:	09413c23          	sd	s4,152(sp)
    80002144:	0b513023          	sd	s5,160(sp)
    80002148:	0b613423          	sd	s6,168(sp)
    8000214c:	0b713823          	sd	s7,176(sp)
    80002150:	0b813c23          	sd	s8,184(sp)
    80002154:	0d913023          	sd	s9,192(sp)
    80002158:	0da13423          	sd	s10,200(sp)
    8000215c:	0db13823          	sd	s11,208(sp)
    80002160:	0dc13c23          	sd	t3,216(sp)
    80002164:	0fd13023          	sd	t4,224(sp)
    80002168:	0fe13423          	sd	t5,232(sp)
    8000216c:	0ff13823          	sd	t6,240(sp)
    80002170:	ccdff0ef          	jal	ra,80001e3c <kerneltrap>
    80002174:	00013083          	ld	ra,0(sp)
    80002178:	00813103          	ld	sp,8(sp)
    8000217c:	01013183          	ld	gp,16(sp)
    80002180:	02013283          	ld	t0,32(sp)
    80002184:	02813303          	ld	t1,40(sp)
    80002188:	03013383          	ld	t2,48(sp)
    8000218c:	03813403          	ld	s0,56(sp)
    80002190:	04013483          	ld	s1,64(sp)
    80002194:	04813503          	ld	a0,72(sp)
    80002198:	05013583          	ld	a1,80(sp)
    8000219c:	05813603          	ld	a2,88(sp)
    800021a0:	06013683          	ld	a3,96(sp)
    800021a4:	06813703          	ld	a4,104(sp)
    800021a8:	07013783          	ld	a5,112(sp)
    800021ac:	07813803          	ld	a6,120(sp)
    800021b0:	08013883          	ld	a7,128(sp)
    800021b4:	08813903          	ld	s2,136(sp)
    800021b8:	09013983          	ld	s3,144(sp)
    800021bc:	09813a03          	ld	s4,152(sp)
    800021c0:	0a013a83          	ld	s5,160(sp)
    800021c4:	0a813b03          	ld	s6,168(sp)
    800021c8:	0b013b83          	ld	s7,176(sp)
    800021cc:	0b813c03          	ld	s8,184(sp)
    800021d0:	0c013c83          	ld	s9,192(sp)
    800021d4:	0c813d03          	ld	s10,200(sp)
    800021d8:	0d013d83          	ld	s11,208(sp)
    800021dc:	0d813e03          	ld	t3,216(sp)
    800021e0:	0e013e83          	ld	t4,224(sp)
    800021e4:	0e813f03          	ld	t5,232(sp)
    800021e8:	0f013f83          	ld	t6,240(sp)
    800021ec:	10010113          	addi	sp,sp,256
    800021f0:	10200073          	sret
    800021f4:	00000013          	nop
    800021f8:	00000013          	nop
    800021fc:	00000013          	nop

0000000080002200 <timervec>:
    80002200:	34051573          	csrrw	a0,mscratch,a0
    80002204:	00b53023          	sd	a1,0(a0)
    80002208:	00c53423          	sd	a2,8(a0)
    8000220c:	00d53823          	sd	a3,16(a0)
    80002210:	01853583          	ld	a1,24(a0)
    80002214:	02053603          	ld	a2,32(a0)
    80002218:	0005b683          	ld	a3,0(a1)
    8000221c:	00c686b3          	add	a3,a3,a2
    80002220:	00d5b023          	sd	a3,0(a1)
    80002224:	00200593          	li	a1,2
    80002228:	14459073          	csrw	sip,a1
    8000222c:	01053683          	ld	a3,16(a0)
    80002230:	00853603          	ld	a2,8(a0)
    80002234:	00053583          	ld	a1,0(a0)
    80002238:	34051573          	csrrw	a0,mscratch,a0
    8000223c:	30200073          	mret

0000000080002240 <plicinit>:
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00813423          	sd	s0,8(sp)
    80002248:	01010413          	addi	s0,sp,16
    8000224c:	00813403          	ld	s0,8(sp)
    80002250:	0c0007b7          	lui	a5,0xc000
    80002254:	00100713          	li	a4,1
    80002258:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000225c:	00e7a223          	sw	a4,4(a5)
    80002260:	01010113          	addi	sp,sp,16
    80002264:	00008067          	ret

0000000080002268 <plicinithart>:
    80002268:	ff010113          	addi	sp,sp,-16
    8000226c:	00813023          	sd	s0,0(sp)
    80002270:	00113423          	sd	ra,8(sp)
    80002274:	01010413          	addi	s0,sp,16
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	a44080e7          	jalr	-1468(ra) # 80001cbc <cpuid>
    80002280:	0085171b          	slliw	a4,a0,0x8
    80002284:	0c0027b7          	lui	a5,0xc002
    80002288:	00e787b3          	add	a5,a5,a4
    8000228c:	40200713          	li	a4,1026
    80002290:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	00d5151b          	slliw	a0,a0,0xd
    800022a0:	0c2017b7          	lui	a5,0xc201
    800022a4:	00a78533          	add	a0,a5,a0
    800022a8:	00052023          	sw	zero,0(a0)
    800022ac:	01010113          	addi	sp,sp,16
    800022b0:	00008067          	ret

00000000800022b4 <plic_claim>:
    800022b4:	ff010113          	addi	sp,sp,-16
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	00113423          	sd	ra,8(sp)
    800022c0:	01010413          	addi	s0,sp,16
    800022c4:	00000097          	auipc	ra,0x0
    800022c8:	9f8080e7          	jalr	-1544(ra) # 80001cbc <cpuid>
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	00d5151b          	slliw	a0,a0,0xd
    800022d8:	0c2017b7          	lui	a5,0xc201
    800022dc:	00a78533          	add	a0,a5,a0
    800022e0:	00452503          	lw	a0,4(a0)
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00008067          	ret

00000000800022ec <plic_complete>:
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00813823          	sd	s0,16(sp)
    800022f4:	00913423          	sd	s1,8(sp)
    800022f8:	00113c23          	sd	ra,24(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
    80002304:	00000097          	auipc	ra,0x0
    80002308:	9b8080e7          	jalr	-1608(ra) # 80001cbc <cpuid>
    8000230c:	01813083          	ld	ra,24(sp)
    80002310:	01013403          	ld	s0,16(sp)
    80002314:	00d5179b          	slliw	a5,a0,0xd
    80002318:	0c201737          	lui	a4,0xc201
    8000231c:	00f707b3          	add	a5,a4,a5
    80002320:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002324:	00813483          	ld	s1,8(sp)
    80002328:	02010113          	addi	sp,sp,32
    8000232c:	00008067          	ret

0000000080002330 <consolewrite>:
    80002330:	fb010113          	addi	sp,sp,-80
    80002334:	04813023          	sd	s0,64(sp)
    80002338:	04113423          	sd	ra,72(sp)
    8000233c:	02913c23          	sd	s1,56(sp)
    80002340:	03213823          	sd	s2,48(sp)
    80002344:	03313423          	sd	s3,40(sp)
    80002348:	03413023          	sd	s4,32(sp)
    8000234c:	01513c23          	sd	s5,24(sp)
    80002350:	05010413          	addi	s0,sp,80
    80002354:	06c05c63          	blez	a2,800023cc <consolewrite+0x9c>
    80002358:	00060993          	mv	s3,a2
    8000235c:	00050a13          	mv	s4,a0
    80002360:	00058493          	mv	s1,a1
    80002364:	00000913          	li	s2,0
    80002368:	fff00a93          	li	s5,-1
    8000236c:	01c0006f          	j	80002388 <consolewrite+0x58>
    80002370:	fbf44503          	lbu	a0,-65(s0)
    80002374:	0019091b          	addiw	s2,s2,1
    80002378:	00148493          	addi	s1,s1,1
    8000237c:	00001097          	auipc	ra,0x1
    80002380:	a9c080e7          	jalr	-1380(ra) # 80002e18 <uartputc>
    80002384:	03298063          	beq	s3,s2,800023a4 <consolewrite+0x74>
    80002388:	00048613          	mv	a2,s1
    8000238c:	00100693          	li	a3,1
    80002390:	000a0593          	mv	a1,s4
    80002394:	fbf40513          	addi	a0,s0,-65
    80002398:	00000097          	auipc	ra,0x0
    8000239c:	9dc080e7          	jalr	-1572(ra) # 80001d74 <either_copyin>
    800023a0:	fd5518e3          	bne	a0,s5,80002370 <consolewrite+0x40>
    800023a4:	04813083          	ld	ra,72(sp)
    800023a8:	04013403          	ld	s0,64(sp)
    800023ac:	03813483          	ld	s1,56(sp)
    800023b0:	02813983          	ld	s3,40(sp)
    800023b4:	02013a03          	ld	s4,32(sp)
    800023b8:	01813a83          	ld	s5,24(sp)
    800023bc:	00090513          	mv	a0,s2
    800023c0:	03013903          	ld	s2,48(sp)
    800023c4:	05010113          	addi	sp,sp,80
    800023c8:	00008067          	ret
    800023cc:	00000913          	li	s2,0
    800023d0:	fd5ff06f          	j	800023a4 <consolewrite+0x74>

00000000800023d4 <consoleread>:
    800023d4:	f9010113          	addi	sp,sp,-112
    800023d8:	06813023          	sd	s0,96(sp)
    800023dc:	04913c23          	sd	s1,88(sp)
    800023e0:	05213823          	sd	s2,80(sp)
    800023e4:	05313423          	sd	s3,72(sp)
    800023e8:	05413023          	sd	s4,64(sp)
    800023ec:	03513c23          	sd	s5,56(sp)
    800023f0:	03613823          	sd	s6,48(sp)
    800023f4:	03713423          	sd	s7,40(sp)
    800023f8:	03813023          	sd	s8,32(sp)
    800023fc:	06113423          	sd	ra,104(sp)
    80002400:	01913c23          	sd	s9,24(sp)
    80002404:	07010413          	addi	s0,sp,112
    80002408:	00060b93          	mv	s7,a2
    8000240c:	00050913          	mv	s2,a0
    80002410:	00058c13          	mv	s8,a1
    80002414:	00060b1b          	sext.w	s6,a2
    80002418:	00003497          	auipc	s1,0x3
    8000241c:	53048493          	addi	s1,s1,1328 # 80005948 <cons>
    80002420:	00400993          	li	s3,4
    80002424:	fff00a13          	li	s4,-1
    80002428:	00a00a93          	li	s5,10
    8000242c:	05705e63          	blez	s7,80002488 <consoleread+0xb4>
    80002430:	09c4a703          	lw	a4,156(s1)
    80002434:	0984a783          	lw	a5,152(s1)
    80002438:	0007071b          	sext.w	a4,a4
    8000243c:	08e78463          	beq	a5,a4,800024c4 <consoleread+0xf0>
    80002440:	07f7f713          	andi	a4,a5,127
    80002444:	00e48733          	add	a4,s1,a4
    80002448:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000244c:	0017869b          	addiw	a3,a5,1
    80002450:	08d4ac23          	sw	a3,152(s1)
    80002454:	00070c9b          	sext.w	s9,a4
    80002458:	0b370663          	beq	a4,s3,80002504 <consoleread+0x130>
    8000245c:	00100693          	li	a3,1
    80002460:	f9f40613          	addi	a2,s0,-97
    80002464:	000c0593          	mv	a1,s8
    80002468:	00090513          	mv	a0,s2
    8000246c:	f8e40fa3          	sb	a4,-97(s0)
    80002470:	00000097          	auipc	ra,0x0
    80002474:	8b8080e7          	jalr	-1864(ra) # 80001d28 <either_copyout>
    80002478:	01450863          	beq	a0,s4,80002488 <consoleread+0xb4>
    8000247c:	001c0c13          	addi	s8,s8,1
    80002480:	fffb8b9b          	addiw	s7,s7,-1
    80002484:	fb5c94e3          	bne	s9,s5,8000242c <consoleread+0x58>
    80002488:	000b851b          	sext.w	a0,s7
    8000248c:	06813083          	ld	ra,104(sp)
    80002490:	06013403          	ld	s0,96(sp)
    80002494:	05813483          	ld	s1,88(sp)
    80002498:	05013903          	ld	s2,80(sp)
    8000249c:	04813983          	ld	s3,72(sp)
    800024a0:	04013a03          	ld	s4,64(sp)
    800024a4:	03813a83          	ld	s5,56(sp)
    800024a8:	02813b83          	ld	s7,40(sp)
    800024ac:	02013c03          	ld	s8,32(sp)
    800024b0:	01813c83          	ld	s9,24(sp)
    800024b4:	40ab053b          	subw	a0,s6,a0
    800024b8:	03013b03          	ld	s6,48(sp)
    800024bc:	07010113          	addi	sp,sp,112
    800024c0:	00008067          	ret
    800024c4:	00001097          	auipc	ra,0x1
    800024c8:	1d8080e7          	jalr	472(ra) # 8000369c <push_on>
    800024cc:	0984a703          	lw	a4,152(s1)
    800024d0:	09c4a783          	lw	a5,156(s1)
    800024d4:	0007879b          	sext.w	a5,a5
    800024d8:	fef70ce3          	beq	a4,a5,800024d0 <consoleread+0xfc>
    800024dc:	00001097          	auipc	ra,0x1
    800024e0:	234080e7          	jalr	564(ra) # 80003710 <pop_on>
    800024e4:	0984a783          	lw	a5,152(s1)
    800024e8:	07f7f713          	andi	a4,a5,127
    800024ec:	00e48733          	add	a4,s1,a4
    800024f0:	01874703          	lbu	a4,24(a4)
    800024f4:	0017869b          	addiw	a3,a5,1
    800024f8:	08d4ac23          	sw	a3,152(s1)
    800024fc:	00070c9b          	sext.w	s9,a4
    80002500:	f5371ee3          	bne	a4,s3,8000245c <consoleread+0x88>
    80002504:	000b851b          	sext.w	a0,s7
    80002508:	f96bf2e3          	bgeu	s7,s6,8000248c <consoleread+0xb8>
    8000250c:	08f4ac23          	sw	a5,152(s1)
    80002510:	f7dff06f          	j	8000248c <consoleread+0xb8>

0000000080002514 <consputc>:
    80002514:	10000793          	li	a5,256
    80002518:	00f50663          	beq	a0,a5,80002524 <consputc+0x10>
    8000251c:	00001317          	auipc	t1,0x1
    80002520:	9f430067          	jr	-1548(t1) # 80002f10 <uartputc_sync>
    80002524:	ff010113          	addi	sp,sp,-16
    80002528:	00113423          	sd	ra,8(sp)
    8000252c:	00813023          	sd	s0,0(sp)
    80002530:	01010413          	addi	s0,sp,16
    80002534:	00800513          	li	a0,8
    80002538:	00001097          	auipc	ra,0x1
    8000253c:	9d8080e7          	jalr	-1576(ra) # 80002f10 <uartputc_sync>
    80002540:	02000513          	li	a0,32
    80002544:	00001097          	auipc	ra,0x1
    80002548:	9cc080e7          	jalr	-1588(ra) # 80002f10 <uartputc_sync>
    8000254c:	00013403          	ld	s0,0(sp)
    80002550:	00813083          	ld	ra,8(sp)
    80002554:	00800513          	li	a0,8
    80002558:	01010113          	addi	sp,sp,16
    8000255c:	00001317          	auipc	t1,0x1
    80002560:	9b430067          	jr	-1612(t1) # 80002f10 <uartputc_sync>

0000000080002564 <consoleintr>:
    80002564:	fe010113          	addi	sp,sp,-32
    80002568:	00813823          	sd	s0,16(sp)
    8000256c:	00913423          	sd	s1,8(sp)
    80002570:	01213023          	sd	s2,0(sp)
    80002574:	00113c23          	sd	ra,24(sp)
    80002578:	02010413          	addi	s0,sp,32
    8000257c:	00003917          	auipc	s2,0x3
    80002580:	3cc90913          	addi	s2,s2,972 # 80005948 <cons>
    80002584:	00050493          	mv	s1,a0
    80002588:	00090513          	mv	a0,s2
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	e40080e7          	jalr	-448(ra) # 800033cc <acquire>
    80002594:	02048c63          	beqz	s1,800025cc <consoleintr+0x68>
    80002598:	0a092783          	lw	a5,160(s2)
    8000259c:	09892703          	lw	a4,152(s2)
    800025a0:	07f00693          	li	a3,127
    800025a4:	40e7873b          	subw	a4,a5,a4
    800025a8:	02e6e263          	bltu	a3,a4,800025cc <consoleintr+0x68>
    800025ac:	00d00713          	li	a4,13
    800025b0:	04e48063          	beq	s1,a4,800025f0 <consoleintr+0x8c>
    800025b4:	07f7f713          	andi	a4,a5,127
    800025b8:	00e90733          	add	a4,s2,a4
    800025bc:	0017879b          	addiw	a5,a5,1
    800025c0:	0af92023          	sw	a5,160(s2)
    800025c4:	00970c23          	sb	s1,24(a4)
    800025c8:	08f92e23          	sw	a5,156(s2)
    800025cc:	01013403          	ld	s0,16(sp)
    800025d0:	01813083          	ld	ra,24(sp)
    800025d4:	00813483          	ld	s1,8(sp)
    800025d8:	00013903          	ld	s2,0(sp)
    800025dc:	00003517          	auipc	a0,0x3
    800025e0:	36c50513          	addi	a0,a0,876 # 80005948 <cons>
    800025e4:	02010113          	addi	sp,sp,32
    800025e8:	00001317          	auipc	t1,0x1
    800025ec:	eb030067          	jr	-336(t1) # 80003498 <release>
    800025f0:	00a00493          	li	s1,10
    800025f4:	fc1ff06f          	j	800025b4 <consoleintr+0x50>

00000000800025f8 <consoleinit>:
    800025f8:	fe010113          	addi	sp,sp,-32
    800025fc:	00113c23          	sd	ra,24(sp)
    80002600:	00813823          	sd	s0,16(sp)
    80002604:	00913423          	sd	s1,8(sp)
    80002608:	02010413          	addi	s0,sp,32
    8000260c:	00003497          	auipc	s1,0x3
    80002610:	33c48493          	addi	s1,s1,828 # 80005948 <cons>
    80002614:	00048513          	mv	a0,s1
    80002618:	00002597          	auipc	a1,0x2
    8000261c:	b5858593          	addi	a1,a1,-1192 # 80004170 <_ZZ12printIntegermE6digits+0x138>
    80002620:	00001097          	auipc	ra,0x1
    80002624:	d88080e7          	jalr	-632(ra) # 800033a8 <initlock>
    80002628:	00000097          	auipc	ra,0x0
    8000262c:	7ac080e7          	jalr	1964(ra) # 80002dd4 <uartinit>
    80002630:	01813083          	ld	ra,24(sp)
    80002634:	01013403          	ld	s0,16(sp)
    80002638:	00000797          	auipc	a5,0x0
    8000263c:	d9c78793          	addi	a5,a5,-612 # 800023d4 <consoleread>
    80002640:	0af4bc23          	sd	a5,184(s1)
    80002644:	00000797          	auipc	a5,0x0
    80002648:	cec78793          	addi	a5,a5,-788 # 80002330 <consolewrite>
    8000264c:	0cf4b023          	sd	a5,192(s1)
    80002650:	00813483          	ld	s1,8(sp)
    80002654:	02010113          	addi	sp,sp,32
    80002658:	00008067          	ret

000000008000265c <console_read>:
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00813423          	sd	s0,8(sp)
    80002664:	01010413          	addi	s0,sp,16
    80002668:	00813403          	ld	s0,8(sp)
    8000266c:	00003317          	auipc	t1,0x3
    80002670:	39433303          	ld	t1,916(t1) # 80005a00 <devsw+0x10>
    80002674:	01010113          	addi	sp,sp,16
    80002678:	00030067          	jr	t1

000000008000267c <console_write>:
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00813423          	sd	s0,8(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	00813403          	ld	s0,8(sp)
    8000268c:	00003317          	auipc	t1,0x3
    80002690:	37c33303          	ld	t1,892(t1) # 80005a08 <devsw+0x18>
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00030067          	jr	t1

000000008000269c <panic>:
    8000269c:	fe010113          	addi	sp,sp,-32
    800026a0:	00113c23          	sd	ra,24(sp)
    800026a4:	00813823          	sd	s0,16(sp)
    800026a8:	00913423          	sd	s1,8(sp)
    800026ac:	02010413          	addi	s0,sp,32
    800026b0:	00050493          	mv	s1,a0
    800026b4:	00002517          	auipc	a0,0x2
    800026b8:	ac450513          	addi	a0,a0,-1340 # 80004178 <_ZZ12printIntegermE6digits+0x140>
    800026bc:	00003797          	auipc	a5,0x3
    800026c0:	3e07a623          	sw	zero,1004(a5) # 80005aa8 <pr+0x18>
    800026c4:	00000097          	auipc	ra,0x0
    800026c8:	034080e7          	jalr	52(ra) # 800026f8 <__printf>
    800026cc:	00048513          	mv	a0,s1
    800026d0:	00000097          	auipc	ra,0x0
    800026d4:	028080e7          	jalr	40(ra) # 800026f8 <__printf>
    800026d8:	00002517          	auipc	a0,0x2
    800026dc:	a8050513          	addi	a0,a0,-1408 # 80004158 <_ZZ12printIntegermE6digits+0x120>
    800026e0:	00000097          	auipc	ra,0x0
    800026e4:	018080e7          	jalr	24(ra) # 800026f8 <__printf>
    800026e8:	00100793          	li	a5,1
    800026ec:	00002717          	auipc	a4,0x2
    800026f0:	12f72623          	sw	a5,300(a4) # 80004818 <panicked>
    800026f4:	0000006f          	j	800026f4 <panic+0x58>

00000000800026f8 <__printf>:
    800026f8:	f3010113          	addi	sp,sp,-208
    800026fc:	08813023          	sd	s0,128(sp)
    80002700:	07313423          	sd	s3,104(sp)
    80002704:	09010413          	addi	s0,sp,144
    80002708:	05813023          	sd	s8,64(sp)
    8000270c:	08113423          	sd	ra,136(sp)
    80002710:	06913c23          	sd	s1,120(sp)
    80002714:	07213823          	sd	s2,112(sp)
    80002718:	07413023          	sd	s4,96(sp)
    8000271c:	05513c23          	sd	s5,88(sp)
    80002720:	05613823          	sd	s6,80(sp)
    80002724:	05713423          	sd	s7,72(sp)
    80002728:	03913c23          	sd	s9,56(sp)
    8000272c:	03a13823          	sd	s10,48(sp)
    80002730:	03b13423          	sd	s11,40(sp)
    80002734:	00003317          	auipc	t1,0x3
    80002738:	35c30313          	addi	t1,t1,860 # 80005a90 <pr>
    8000273c:	01832c03          	lw	s8,24(t1)
    80002740:	00b43423          	sd	a1,8(s0)
    80002744:	00c43823          	sd	a2,16(s0)
    80002748:	00d43c23          	sd	a3,24(s0)
    8000274c:	02e43023          	sd	a4,32(s0)
    80002750:	02f43423          	sd	a5,40(s0)
    80002754:	03043823          	sd	a6,48(s0)
    80002758:	03143c23          	sd	a7,56(s0)
    8000275c:	00050993          	mv	s3,a0
    80002760:	4a0c1663          	bnez	s8,80002c0c <__printf+0x514>
    80002764:	60098c63          	beqz	s3,80002d7c <__printf+0x684>
    80002768:	0009c503          	lbu	a0,0(s3)
    8000276c:	00840793          	addi	a5,s0,8
    80002770:	f6f43c23          	sd	a5,-136(s0)
    80002774:	00000493          	li	s1,0
    80002778:	22050063          	beqz	a0,80002998 <__printf+0x2a0>
    8000277c:	00002a37          	lui	s4,0x2
    80002780:	00018ab7          	lui	s5,0x18
    80002784:	000f4b37          	lui	s6,0xf4
    80002788:	00989bb7          	lui	s7,0x989
    8000278c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002790:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002794:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002798:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000279c:	00148c9b          	addiw	s9,s1,1
    800027a0:	02500793          	li	a5,37
    800027a4:	01998933          	add	s2,s3,s9
    800027a8:	38f51263          	bne	a0,a5,80002b2c <__printf+0x434>
    800027ac:	00094783          	lbu	a5,0(s2)
    800027b0:	00078c9b          	sext.w	s9,a5
    800027b4:	1e078263          	beqz	a5,80002998 <__printf+0x2a0>
    800027b8:	0024849b          	addiw	s1,s1,2
    800027bc:	07000713          	li	a4,112
    800027c0:	00998933          	add	s2,s3,s1
    800027c4:	38e78a63          	beq	a5,a4,80002b58 <__printf+0x460>
    800027c8:	20f76863          	bltu	a4,a5,800029d8 <__printf+0x2e0>
    800027cc:	42a78863          	beq	a5,a0,80002bfc <__printf+0x504>
    800027d0:	06400713          	li	a4,100
    800027d4:	40e79663          	bne	a5,a4,80002be0 <__printf+0x4e8>
    800027d8:	f7843783          	ld	a5,-136(s0)
    800027dc:	0007a603          	lw	a2,0(a5)
    800027e0:	00878793          	addi	a5,a5,8
    800027e4:	f6f43c23          	sd	a5,-136(s0)
    800027e8:	42064a63          	bltz	a2,80002c1c <__printf+0x524>
    800027ec:	00a00713          	li	a4,10
    800027f0:	02e677bb          	remuw	a5,a2,a4
    800027f4:	00002d97          	auipc	s11,0x2
    800027f8:	9acd8d93          	addi	s11,s11,-1620 # 800041a0 <digits>
    800027fc:	00900593          	li	a1,9
    80002800:	0006051b          	sext.w	a0,a2
    80002804:	00000c93          	li	s9,0
    80002808:	02079793          	slli	a5,a5,0x20
    8000280c:	0207d793          	srli	a5,a5,0x20
    80002810:	00fd87b3          	add	a5,s11,a5
    80002814:	0007c783          	lbu	a5,0(a5)
    80002818:	02e656bb          	divuw	a3,a2,a4
    8000281c:	f8f40023          	sb	a5,-128(s0)
    80002820:	14c5d863          	bge	a1,a2,80002970 <__printf+0x278>
    80002824:	06300593          	li	a1,99
    80002828:	00100c93          	li	s9,1
    8000282c:	02e6f7bb          	remuw	a5,a3,a4
    80002830:	02079793          	slli	a5,a5,0x20
    80002834:	0207d793          	srli	a5,a5,0x20
    80002838:	00fd87b3          	add	a5,s11,a5
    8000283c:	0007c783          	lbu	a5,0(a5)
    80002840:	02e6d73b          	divuw	a4,a3,a4
    80002844:	f8f400a3          	sb	a5,-127(s0)
    80002848:	12a5f463          	bgeu	a1,a0,80002970 <__printf+0x278>
    8000284c:	00a00693          	li	a3,10
    80002850:	00900593          	li	a1,9
    80002854:	02d777bb          	remuw	a5,a4,a3
    80002858:	02079793          	slli	a5,a5,0x20
    8000285c:	0207d793          	srli	a5,a5,0x20
    80002860:	00fd87b3          	add	a5,s11,a5
    80002864:	0007c503          	lbu	a0,0(a5)
    80002868:	02d757bb          	divuw	a5,a4,a3
    8000286c:	f8a40123          	sb	a0,-126(s0)
    80002870:	48e5f263          	bgeu	a1,a4,80002cf4 <__printf+0x5fc>
    80002874:	06300513          	li	a0,99
    80002878:	02d7f5bb          	remuw	a1,a5,a3
    8000287c:	02059593          	slli	a1,a1,0x20
    80002880:	0205d593          	srli	a1,a1,0x20
    80002884:	00bd85b3          	add	a1,s11,a1
    80002888:	0005c583          	lbu	a1,0(a1)
    8000288c:	02d7d7bb          	divuw	a5,a5,a3
    80002890:	f8b401a3          	sb	a1,-125(s0)
    80002894:	48e57263          	bgeu	a0,a4,80002d18 <__printf+0x620>
    80002898:	3e700513          	li	a0,999
    8000289c:	02d7f5bb          	remuw	a1,a5,a3
    800028a0:	02059593          	slli	a1,a1,0x20
    800028a4:	0205d593          	srli	a1,a1,0x20
    800028a8:	00bd85b3          	add	a1,s11,a1
    800028ac:	0005c583          	lbu	a1,0(a1)
    800028b0:	02d7d7bb          	divuw	a5,a5,a3
    800028b4:	f8b40223          	sb	a1,-124(s0)
    800028b8:	46e57663          	bgeu	a0,a4,80002d24 <__printf+0x62c>
    800028bc:	02d7f5bb          	remuw	a1,a5,a3
    800028c0:	02059593          	slli	a1,a1,0x20
    800028c4:	0205d593          	srli	a1,a1,0x20
    800028c8:	00bd85b3          	add	a1,s11,a1
    800028cc:	0005c583          	lbu	a1,0(a1)
    800028d0:	02d7d7bb          	divuw	a5,a5,a3
    800028d4:	f8b402a3          	sb	a1,-123(s0)
    800028d8:	46ea7863          	bgeu	s4,a4,80002d48 <__printf+0x650>
    800028dc:	02d7f5bb          	remuw	a1,a5,a3
    800028e0:	02059593          	slli	a1,a1,0x20
    800028e4:	0205d593          	srli	a1,a1,0x20
    800028e8:	00bd85b3          	add	a1,s11,a1
    800028ec:	0005c583          	lbu	a1,0(a1)
    800028f0:	02d7d7bb          	divuw	a5,a5,a3
    800028f4:	f8b40323          	sb	a1,-122(s0)
    800028f8:	3eeaf863          	bgeu	s5,a4,80002ce8 <__printf+0x5f0>
    800028fc:	02d7f5bb          	remuw	a1,a5,a3
    80002900:	02059593          	slli	a1,a1,0x20
    80002904:	0205d593          	srli	a1,a1,0x20
    80002908:	00bd85b3          	add	a1,s11,a1
    8000290c:	0005c583          	lbu	a1,0(a1)
    80002910:	02d7d7bb          	divuw	a5,a5,a3
    80002914:	f8b403a3          	sb	a1,-121(s0)
    80002918:	42eb7e63          	bgeu	s6,a4,80002d54 <__printf+0x65c>
    8000291c:	02d7f5bb          	remuw	a1,a5,a3
    80002920:	02059593          	slli	a1,a1,0x20
    80002924:	0205d593          	srli	a1,a1,0x20
    80002928:	00bd85b3          	add	a1,s11,a1
    8000292c:	0005c583          	lbu	a1,0(a1)
    80002930:	02d7d7bb          	divuw	a5,a5,a3
    80002934:	f8b40423          	sb	a1,-120(s0)
    80002938:	42ebfc63          	bgeu	s7,a4,80002d70 <__printf+0x678>
    8000293c:	02079793          	slli	a5,a5,0x20
    80002940:	0207d793          	srli	a5,a5,0x20
    80002944:	00fd8db3          	add	s11,s11,a5
    80002948:	000dc703          	lbu	a4,0(s11)
    8000294c:	00a00793          	li	a5,10
    80002950:	00900c93          	li	s9,9
    80002954:	f8e404a3          	sb	a4,-119(s0)
    80002958:	00065c63          	bgez	a2,80002970 <__printf+0x278>
    8000295c:	f9040713          	addi	a4,s0,-112
    80002960:	00f70733          	add	a4,a4,a5
    80002964:	02d00693          	li	a3,45
    80002968:	fed70823          	sb	a3,-16(a4)
    8000296c:	00078c93          	mv	s9,a5
    80002970:	f8040793          	addi	a5,s0,-128
    80002974:	01978cb3          	add	s9,a5,s9
    80002978:	f7f40d13          	addi	s10,s0,-129
    8000297c:	000cc503          	lbu	a0,0(s9)
    80002980:	fffc8c93          	addi	s9,s9,-1
    80002984:	00000097          	auipc	ra,0x0
    80002988:	b90080e7          	jalr	-1136(ra) # 80002514 <consputc>
    8000298c:	ffac98e3          	bne	s9,s10,8000297c <__printf+0x284>
    80002990:	00094503          	lbu	a0,0(s2)
    80002994:	e00514e3          	bnez	a0,8000279c <__printf+0xa4>
    80002998:	1a0c1663          	bnez	s8,80002b44 <__printf+0x44c>
    8000299c:	08813083          	ld	ra,136(sp)
    800029a0:	08013403          	ld	s0,128(sp)
    800029a4:	07813483          	ld	s1,120(sp)
    800029a8:	07013903          	ld	s2,112(sp)
    800029ac:	06813983          	ld	s3,104(sp)
    800029b0:	06013a03          	ld	s4,96(sp)
    800029b4:	05813a83          	ld	s5,88(sp)
    800029b8:	05013b03          	ld	s6,80(sp)
    800029bc:	04813b83          	ld	s7,72(sp)
    800029c0:	04013c03          	ld	s8,64(sp)
    800029c4:	03813c83          	ld	s9,56(sp)
    800029c8:	03013d03          	ld	s10,48(sp)
    800029cc:	02813d83          	ld	s11,40(sp)
    800029d0:	0d010113          	addi	sp,sp,208
    800029d4:	00008067          	ret
    800029d8:	07300713          	li	a4,115
    800029dc:	1ce78a63          	beq	a5,a4,80002bb0 <__printf+0x4b8>
    800029e0:	07800713          	li	a4,120
    800029e4:	1ee79e63          	bne	a5,a4,80002be0 <__printf+0x4e8>
    800029e8:	f7843783          	ld	a5,-136(s0)
    800029ec:	0007a703          	lw	a4,0(a5)
    800029f0:	00878793          	addi	a5,a5,8
    800029f4:	f6f43c23          	sd	a5,-136(s0)
    800029f8:	28074263          	bltz	a4,80002c7c <__printf+0x584>
    800029fc:	00001d97          	auipc	s11,0x1
    80002a00:	7a4d8d93          	addi	s11,s11,1956 # 800041a0 <digits>
    80002a04:	00f77793          	andi	a5,a4,15
    80002a08:	00fd87b3          	add	a5,s11,a5
    80002a0c:	0007c683          	lbu	a3,0(a5)
    80002a10:	00f00613          	li	a2,15
    80002a14:	0007079b          	sext.w	a5,a4
    80002a18:	f8d40023          	sb	a3,-128(s0)
    80002a1c:	0047559b          	srliw	a1,a4,0x4
    80002a20:	0047569b          	srliw	a3,a4,0x4
    80002a24:	00000c93          	li	s9,0
    80002a28:	0ee65063          	bge	a2,a4,80002b08 <__printf+0x410>
    80002a2c:	00f6f693          	andi	a3,a3,15
    80002a30:	00dd86b3          	add	a3,s11,a3
    80002a34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a38:	0087d79b          	srliw	a5,a5,0x8
    80002a3c:	00100c93          	li	s9,1
    80002a40:	f8d400a3          	sb	a3,-127(s0)
    80002a44:	0cb67263          	bgeu	a2,a1,80002b08 <__printf+0x410>
    80002a48:	00f7f693          	andi	a3,a5,15
    80002a4c:	00dd86b3          	add	a3,s11,a3
    80002a50:	0006c583          	lbu	a1,0(a3)
    80002a54:	00f00613          	li	a2,15
    80002a58:	0047d69b          	srliw	a3,a5,0x4
    80002a5c:	f8b40123          	sb	a1,-126(s0)
    80002a60:	0047d593          	srli	a1,a5,0x4
    80002a64:	28f67e63          	bgeu	a2,a5,80002d00 <__printf+0x608>
    80002a68:	00f6f693          	andi	a3,a3,15
    80002a6c:	00dd86b3          	add	a3,s11,a3
    80002a70:	0006c503          	lbu	a0,0(a3)
    80002a74:	0087d813          	srli	a6,a5,0x8
    80002a78:	0087d69b          	srliw	a3,a5,0x8
    80002a7c:	f8a401a3          	sb	a0,-125(s0)
    80002a80:	28b67663          	bgeu	a2,a1,80002d0c <__printf+0x614>
    80002a84:	00f6f693          	andi	a3,a3,15
    80002a88:	00dd86b3          	add	a3,s11,a3
    80002a8c:	0006c583          	lbu	a1,0(a3)
    80002a90:	00c7d513          	srli	a0,a5,0xc
    80002a94:	00c7d69b          	srliw	a3,a5,0xc
    80002a98:	f8b40223          	sb	a1,-124(s0)
    80002a9c:	29067a63          	bgeu	a2,a6,80002d30 <__printf+0x638>
    80002aa0:	00f6f693          	andi	a3,a3,15
    80002aa4:	00dd86b3          	add	a3,s11,a3
    80002aa8:	0006c583          	lbu	a1,0(a3)
    80002aac:	0107d813          	srli	a6,a5,0x10
    80002ab0:	0107d69b          	srliw	a3,a5,0x10
    80002ab4:	f8b402a3          	sb	a1,-123(s0)
    80002ab8:	28a67263          	bgeu	a2,a0,80002d3c <__printf+0x644>
    80002abc:	00f6f693          	andi	a3,a3,15
    80002ac0:	00dd86b3          	add	a3,s11,a3
    80002ac4:	0006c683          	lbu	a3,0(a3)
    80002ac8:	0147d79b          	srliw	a5,a5,0x14
    80002acc:	f8d40323          	sb	a3,-122(s0)
    80002ad0:	21067663          	bgeu	a2,a6,80002cdc <__printf+0x5e4>
    80002ad4:	02079793          	slli	a5,a5,0x20
    80002ad8:	0207d793          	srli	a5,a5,0x20
    80002adc:	00fd8db3          	add	s11,s11,a5
    80002ae0:	000dc683          	lbu	a3,0(s11)
    80002ae4:	00800793          	li	a5,8
    80002ae8:	00700c93          	li	s9,7
    80002aec:	f8d403a3          	sb	a3,-121(s0)
    80002af0:	00075c63          	bgez	a4,80002b08 <__printf+0x410>
    80002af4:	f9040713          	addi	a4,s0,-112
    80002af8:	00f70733          	add	a4,a4,a5
    80002afc:	02d00693          	li	a3,45
    80002b00:	fed70823          	sb	a3,-16(a4)
    80002b04:	00078c93          	mv	s9,a5
    80002b08:	f8040793          	addi	a5,s0,-128
    80002b0c:	01978cb3          	add	s9,a5,s9
    80002b10:	f7f40d13          	addi	s10,s0,-129
    80002b14:	000cc503          	lbu	a0,0(s9)
    80002b18:	fffc8c93          	addi	s9,s9,-1
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	9f8080e7          	jalr	-1544(ra) # 80002514 <consputc>
    80002b24:	ff9d18e3          	bne	s10,s9,80002b14 <__printf+0x41c>
    80002b28:	0100006f          	j	80002b38 <__printf+0x440>
    80002b2c:	00000097          	auipc	ra,0x0
    80002b30:	9e8080e7          	jalr	-1560(ra) # 80002514 <consputc>
    80002b34:	000c8493          	mv	s1,s9
    80002b38:	00094503          	lbu	a0,0(s2)
    80002b3c:	c60510e3          	bnez	a0,8000279c <__printf+0xa4>
    80002b40:	e40c0ee3          	beqz	s8,8000299c <__printf+0x2a4>
    80002b44:	00003517          	auipc	a0,0x3
    80002b48:	f4c50513          	addi	a0,a0,-180 # 80005a90 <pr>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	94c080e7          	jalr	-1716(ra) # 80003498 <release>
    80002b54:	e49ff06f          	j	8000299c <__printf+0x2a4>
    80002b58:	f7843783          	ld	a5,-136(s0)
    80002b5c:	03000513          	li	a0,48
    80002b60:	01000d13          	li	s10,16
    80002b64:	00878713          	addi	a4,a5,8
    80002b68:	0007bc83          	ld	s9,0(a5)
    80002b6c:	f6e43c23          	sd	a4,-136(s0)
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	9a4080e7          	jalr	-1628(ra) # 80002514 <consputc>
    80002b78:	07800513          	li	a0,120
    80002b7c:	00000097          	auipc	ra,0x0
    80002b80:	998080e7          	jalr	-1640(ra) # 80002514 <consputc>
    80002b84:	00001d97          	auipc	s11,0x1
    80002b88:	61cd8d93          	addi	s11,s11,1564 # 800041a0 <digits>
    80002b8c:	03ccd793          	srli	a5,s9,0x3c
    80002b90:	00fd87b3          	add	a5,s11,a5
    80002b94:	0007c503          	lbu	a0,0(a5)
    80002b98:	fffd0d1b          	addiw	s10,s10,-1
    80002b9c:	004c9c93          	slli	s9,s9,0x4
    80002ba0:	00000097          	auipc	ra,0x0
    80002ba4:	974080e7          	jalr	-1676(ra) # 80002514 <consputc>
    80002ba8:	fe0d12e3          	bnez	s10,80002b8c <__printf+0x494>
    80002bac:	f8dff06f          	j	80002b38 <__printf+0x440>
    80002bb0:	f7843783          	ld	a5,-136(s0)
    80002bb4:	0007bc83          	ld	s9,0(a5)
    80002bb8:	00878793          	addi	a5,a5,8
    80002bbc:	f6f43c23          	sd	a5,-136(s0)
    80002bc0:	000c9a63          	bnez	s9,80002bd4 <__printf+0x4dc>
    80002bc4:	1080006f          	j	80002ccc <__printf+0x5d4>
    80002bc8:	001c8c93          	addi	s9,s9,1
    80002bcc:	00000097          	auipc	ra,0x0
    80002bd0:	948080e7          	jalr	-1720(ra) # 80002514 <consputc>
    80002bd4:	000cc503          	lbu	a0,0(s9)
    80002bd8:	fe0518e3          	bnez	a0,80002bc8 <__printf+0x4d0>
    80002bdc:	f5dff06f          	j	80002b38 <__printf+0x440>
    80002be0:	02500513          	li	a0,37
    80002be4:	00000097          	auipc	ra,0x0
    80002be8:	930080e7          	jalr	-1744(ra) # 80002514 <consputc>
    80002bec:	000c8513          	mv	a0,s9
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	924080e7          	jalr	-1756(ra) # 80002514 <consputc>
    80002bf8:	f41ff06f          	j	80002b38 <__printf+0x440>
    80002bfc:	02500513          	li	a0,37
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	914080e7          	jalr	-1772(ra) # 80002514 <consputc>
    80002c08:	f31ff06f          	j	80002b38 <__printf+0x440>
    80002c0c:	00030513          	mv	a0,t1
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	7bc080e7          	jalr	1980(ra) # 800033cc <acquire>
    80002c18:	b4dff06f          	j	80002764 <__printf+0x6c>
    80002c1c:	40c0053b          	negw	a0,a2
    80002c20:	00a00713          	li	a4,10
    80002c24:	02e576bb          	remuw	a3,a0,a4
    80002c28:	00001d97          	auipc	s11,0x1
    80002c2c:	578d8d93          	addi	s11,s11,1400 # 800041a0 <digits>
    80002c30:	ff700593          	li	a1,-9
    80002c34:	02069693          	slli	a3,a3,0x20
    80002c38:	0206d693          	srli	a3,a3,0x20
    80002c3c:	00dd86b3          	add	a3,s11,a3
    80002c40:	0006c683          	lbu	a3,0(a3)
    80002c44:	02e557bb          	divuw	a5,a0,a4
    80002c48:	f8d40023          	sb	a3,-128(s0)
    80002c4c:	10b65e63          	bge	a2,a1,80002d68 <__printf+0x670>
    80002c50:	06300593          	li	a1,99
    80002c54:	02e7f6bb          	remuw	a3,a5,a4
    80002c58:	02069693          	slli	a3,a3,0x20
    80002c5c:	0206d693          	srli	a3,a3,0x20
    80002c60:	00dd86b3          	add	a3,s11,a3
    80002c64:	0006c683          	lbu	a3,0(a3)
    80002c68:	02e7d73b          	divuw	a4,a5,a4
    80002c6c:	00200793          	li	a5,2
    80002c70:	f8d400a3          	sb	a3,-127(s0)
    80002c74:	bca5ece3          	bltu	a1,a0,8000284c <__printf+0x154>
    80002c78:	ce5ff06f          	j	8000295c <__printf+0x264>
    80002c7c:	40e007bb          	negw	a5,a4
    80002c80:	00001d97          	auipc	s11,0x1
    80002c84:	520d8d93          	addi	s11,s11,1312 # 800041a0 <digits>
    80002c88:	00f7f693          	andi	a3,a5,15
    80002c8c:	00dd86b3          	add	a3,s11,a3
    80002c90:	0006c583          	lbu	a1,0(a3)
    80002c94:	ff100613          	li	a2,-15
    80002c98:	0047d69b          	srliw	a3,a5,0x4
    80002c9c:	f8b40023          	sb	a1,-128(s0)
    80002ca0:	0047d59b          	srliw	a1,a5,0x4
    80002ca4:	0ac75e63          	bge	a4,a2,80002d60 <__printf+0x668>
    80002ca8:	00f6f693          	andi	a3,a3,15
    80002cac:	00dd86b3          	add	a3,s11,a3
    80002cb0:	0006c603          	lbu	a2,0(a3)
    80002cb4:	00f00693          	li	a3,15
    80002cb8:	0087d79b          	srliw	a5,a5,0x8
    80002cbc:	f8c400a3          	sb	a2,-127(s0)
    80002cc0:	d8b6e4e3          	bltu	a3,a1,80002a48 <__printf+0x350>
    80002cc4:	00200793          	li	a5,2
    80002cc8:	e2dff06f          	j	80002af4 <__printf+0x3fc>
    80002ccc:	00001c97          	auipc	s9,0x1
    80002cd0:	4b4c8c93          	addi	s9,s9,1204 # 80004180 <_ZZ12printIntegermE6digits+0x148>
    80002cd4:	02800513          	li	a0,40
    80002cd8:	ef1ff06f          	j	80002bc8 <__printf+0x4d0>
    80002cdc:	00700793          	li	a5,7
    80002ce0:	00600c93          	li	s9,6
    80002ce4:	e0dff06f          	j	80002af0 <__printf+0x3f8>
    80002ce8:	00700793          	li	a5,7
    80002cec:	00600c93          	li	s9,6
    80002cf0:	c69ff06f          	j	80002958 <__printf+0x260>
    80002cf4:	00300793          	li	a5,3
    80002cf8:	00200c93          	li	s9,2
    80002cfc:	c5dff06f          	j	80002958 <__printf+0x260>
    80002d00:	00300793          	li	a5,3
    80002d04:	00200c93          	li	s9,2
    80002d08:	de9ff06f          	j	80002af0 <__printf+0x3f8>
    80002d0c:	00400793          	li	a5,4
    80002d10:	00300c93          	li	s9,3
    80002d14:	dddff06f          	j	80002af0 <__printf+0x3f8>
    80002d18:	00400793          	li	a5,4
    80002d1c:	00300c93          	li	s9,3
    80002d20:	c39ff06f          	j	80002958 <__printf+0x260>
    80002d24:	00500793          	li	a5,5
    80002d28:	00400c93          	li	s9,4
    80002d2c:	c2dff06f          	j	80002958 <__printf+0x260>
    80002d30:	00500793          	li	a5,5
    80002d34:	00400c93          	li	s9,4
    80002d38:	db9ff06f          	j	80002af0 <__printf+0x3f8>
    80002d3c:	00600793          	li	a5,6
    80002d40:	00500c93          	li	s9,5
    80002d44:	dadff06f          	j	80002af0 <__printf+0x3f8>
    80002d48:	00600793          	li	a5,6
    80002d4c:	00500c93          	li	s9,5
    80002d50:	c09ff06f          	j	80002958 <__printf+0x260>
    80002d54:	00800793          	li	a5,8
    80002d58:	00700c93          	li	s9,7
    80002d5c:	bfdff06f          	j	80002958 <__printf+0x260>
    80002d60:	00100793          	li	a5,1
    80002d64:	d91ff06f          	j	80002af4 <__printf+0x3fc>
    80002d68:	00100793          	li	a5,1
    80002d6c:	bf1ff06f          	j	8000295c <__printf+0x264>
    80002d70:	00900793          	li	a5,9
    80002d74:	00800c93          	li	s9,8
    80002d78:	be1ff06f          	j	80002958 <__printf+0x260>
    80002d7c:	00001517          	auipc	a0,0x1
    80002d80:	40c50513          	addi	a0,a0,1036 # 80004188 <_ZZ12printIntegermE6digits+0x150>
    80002d84:	00000097          	auipc	ra,0x0
    80002d88:	918080e7          	jalr	-1768(ra) # 8000269c <panic>

0000000080002d8c <printfinit>:
    80002d8c:	fe010113          	addi	sp,sp,-32
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	00113c23          	sd	ra,24(sp)
    80002d9c:	02010413          	addi	s0,sp,32
    80002da0:	00003497          	auipc	s1,0x3
    80002da4:	cf048493          	addi	s1,s1,-784 # 80005a90 <pr>
    80002da8:	00048513          	mv	a0,s1
    80002dac:	00001597          	auipc	a1,0x1
    80002db0:	3ec58593          	addi	a1,a1,1004 # 80004198 <_ZZ12printIntegermE6digits+0x160>
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	5f4080e7          	jalr	1524(ra) # 800033a8 <initlock>
    80002dbc:	01813083          	ld	ra,24(sp)
    80002dc0:	01013403          	ld	s0,16(sp)
    80002dc4:	0004ac23          	sw	zero,24(s1)
    80002dc8:	00813483          	ld	s1,8(sp)
    80002dcc:	02010113          	addi	sp,sp,32
    80002dd0:	00008067          	ret

0000000080002dd4 <uartinit>:
    80002dd4:	ff010113          	addi	sp,sp,-16
    80002dd8:	00813423          	sd	s0,8(sp)
    80002ddc:	01010413          	addi	s0,sp,16
    80002de0:	100007b7          	lui	a5,0x10000
    80002de4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002de8:	f8000713          	li	a4,-128
    80002dec:	00e781a3          	sb	a4,3(a5)
    80002df0:	00300713          	li	a4,3
    80002df4:	00e78023          	sb	a4,0(a5)
    80002df8:	000780a3          	sb	zero,1(a5)
    80002dfc:	00e781a3          	sb	a4,3(a5)
    80002e00:	00700693          	li	a3,7
    80002e04:	00d78123          	sb	a3,2(a5)
    80002e08:	00e780a3          	sb	a4,1(a5)
    80002e0c:	00813403          	ld	s0,8(sp)
    80002e10:	01010113          	addi	sp,sp,16
    80002e14:	00008067          	ret

0000000080002e18 <uartputc>:
    80002e18:	00002797          	auipc	a5,0x2
    80002e1c:	a007a783          	lw	a5,-1536(a5) # 80004818 <panicked>
    80002e20:	00078463          	beqz	a5,80002e28 <uartputc+0x10>
    80002e24:	0000006f          	j	80002e24 <uartputc+0xc>
    80002e28:	fd010113          	addi	sp,sp,-48
    80002e2c:	02813023          	sd	s0,32(sp)
    80002e30:	00913c23          	sd	s1,24(sp)
    80002e34:	01213823          	sd	s2,16(sp)
    80002e38:	01313423          	sd	s3,8(sp)
    80002e3c:	02113423          	sd	ra,40(sp)
    80002e40:	03010413          	addi	s0,sp,48
    80002e44:	00002917          	auipc	s2,0x2
    80002e48:	9dc90913          	addi	s2,s2,-1572 # 80004820 <uart_tx_r>
    80002e4c:	00093783          	ld	a5,0(s2)
    80002e50:	00002497          	auipc	s1,0x2
    80002e54:	9d848493          	addi	s1,s1,-1576 # 80004828 <uart_tx_w>
    80002e58:	0004b703          	ld	a4,0(s1)
    80002e5c:	02078693          	addi	a3,a5,32
    80002e60:	00050993          	mv	s3,a0
    80002e64:	02e69c63          	bne	a3,a4,80002e9c <uartputc+0x84>
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	834080e7          	jalr	-1996(ra) # 8000369c <push_on>
    80002e70:	00093783          	ld	a5,0(s2)
    80002e74:	0004b703          	ld	a4,0(s1)
    80002e78:	02078793          	addi	a5,a5,32
    80002e7c:	00e79463          	bne	a5,a4,80002e84 <uartputc+0x6c>
    80002e80:	0000006f          	j	80002e80 <uartputc+0x68>
    80002e84:	00001097          	auipc	ra,0x1
    80002e88:	88c080e7          	jalr	-1908(ra) # 80003710 <pop_on>
    80002e8c:	00093783          	ld	a5,0(s2)
    80002e90:	0004b703          	ld	a4,0(s1)
    80002e94:	02078693          	addi	a3,a5,32
    80002e98:	fce688e3          	beq	a3,a4,80002e68 <uartputc+0x50>
    80002e9c:	01f77693          	andi	a3,a4,31
    80002ea0:	00003597          	auipc	a1,0x3
    80002ea4:	c1058593          	addi	a1,a1,-1008 # 80005ab0 <uart_tx_buf>
    80002ea8:	00d586b3          	add	a3,a1,a3
    80002eac:	00170713          	addi	a4,a4,1
    80002eb0:	01368023          	sb	s3,0(a3)
    80002eb4:	00e4b023          	sd	a4,0(s1)
    80002eb8:	10000637          	lui	a2,0x10000
    80002ebc:	02f71063          	bne	a4,a5,80002edc <uartputc+0xc4>
    80002ec0:	0340006f          	j	80002ef4 <uartputc+0xdc>
    80002ec4:	00074703          	lbu	a4,0(a4)
    80002ec8:	00f93023          	sd	a5,0(s2)
    80002ecc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002ed0:	00093783          	ld	a5,0(s2)
    80002ed4:	0004b703          	ld	a4,0(s1)
    80002ed8:	00f70e63          	beq	a4,a5,80002ef4 <uartputc+0xdc>
    80002edc:	00564683          	lbu	a3,5(a2)
    80002ee0:	01f7f713          	andi	a4,a5,31
    80002ee4:	00e58733          	add	a4,a1,a4
    80002ee8:	0206f693          	andi	a3,a3,32
    80002eec:	00178793          	addi	a5,a5,1
    80002ef0:	fc069ae3          	bnez	a3,80002ec4 <uartputc+0xac>
    80002ef4:	02813083          	ld	ra,40(sp)
    80002ef8:	02013403          	ld	s0,32(sp)
    80002efc:	01813483          	ld	s1,24(sp)
    80002f00:	01013903          	ld	s2,16(sp)
    80002f04:	00813983          	ld	s3,8(sp)
    80002f08:	03010113          	addi	sp,sp,48
    80002f0c:	00008067          	ret

0000000080002f10 <uartputc_sync>:
    80002f10:	ff010113          	addi	sp,sp,-16
    80002f14:	00813423          	sd	s0,8(sp)
    80002f18:	01010413          	addi	s0,sp,16
    80002f1c:	00002717          	auipc	a4,0x2
    80002f20:	8fc72703          	lw	a4,-1796(a4) # 80004818 <panicked>
    80002f24:	02071663          	bnez	a4,80002f50 <uartputc_sync+0x40>
    80002f28:	00050793          	mv	a5,a0
    80002f2c:	100006b7          	lui	a3,0x10000
    80002f30:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f34:	02077713          	andi	a4,a4,32
    80002f38:	fe070ce3          	beqz	a4,80002f30 <uartputc_sync+0x20>
    80002f3c:	0ff7f793          	andi	a5,a5,255
    80002f40:	00f68023          	sb	a5,0(a3)
    80002f44:	00813403          	ld	s0,8(sp)
    80002f48:	01010113          	addi	sp,sp,16
    80002f4c:	00008067          	ret
    80002f50:	0000006f          	j	80002f50 <uartputc_sync+0x40>

0000000080002f54 <uartstart>:
    80002f54:	ff010113          	addi	sp,sp,-16
    80002f58:	00813423          	sd	s0,8(sp)
    80002f5c:	01010413          	addi	s0,sp,16
    80002f60:	00002617          	auipc	a2,0x2
    80002f64:	8c060613          	addi	a2,a2,-1856 # 80004820 <uart_tx_r>
    80002f68:	00002517          	auipc	a0,0x2
    80002f6c:	8c050513          	addi	a0,a0,-1856 # 80004828 <uart_tx_w>
    80002f70:	00063783          	ld	a5,0(a2)
    80002f74:	00053703          	ld	a4,0(a0)
    80002f78:	04f70263          	beq	a4,a5,80002fbc <uartstart+0x68>
    80002f7c:	100005b7          	lui	a1,0x10000
    80002f80:	00003817          	auipc	a6,0x3
    80002f84:	b3080813          	addi	a6,a6,-1232 # 80005ab0 <uart_tx_buf>
    80002f88:	01c0006f          	j	80002fa4 <uartstart+0x50>
    80002f8c:	0006c703          	lbu	a4,0(a3)
    80002f90:	00f63023          	sd	a5,0(a2)
    80002f94:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002f98:	00063783          	ld	a5,0(a2)
    80002f9c:	00053703          	ld	a4,0(a0)
    80002fa0:	00f70e63          	beq	a4,a5,80002fbc <uartstart+0x68>
    80002fa4:	01f7f713          	andi	a4,a5,31
    80002fa8:	00e806b3          	add	a3,a6,a4
    80002fac:	0055c703          	lbu	a4,5(a1)
    80002fb0:	00178793          	addi	a5,a5,1
    80002fb4:	02077713          	andi	a4,a4,32
    80002fb8:	fc071ae3          	bnez	a4,80002f8c <uartstart+0x38>
    80002fbc:	00813403          	ld	s0,8(sp)
    80002fc0:	01010113          	addi	sp,sp,16
    80002fc4:	00008067          	ret

0000000080002fc8 <uartgetc>:
    80002fc8:	ff010113          	addi	sp,sp,-16
    80002fcc:	00813423          	sd	s0,8(sp)
    80002fd0:	01010413          	addi	s0,sp,16
    80002fd4:	10000737          	lui	a4,0x10000
    80002fd8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002fdc:	0017f793          	andi	a5,a5,1
    80002fe0:	00078c63          	beqz	a5,80002ff8 <uartgetc+0x30>
    80002fe4:	00074503          	lbu	a0,0(a4)
    80002fe8:	0ff57513          	andi	a0,a0,255
    80002fec:	00813403          	ld	s0,8(sp)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret
    80002ff8:	fff00513          	li	a0,-1
    80002ffc:	ff1ff06f          	j	80002fec <uartgetc+0x24>

0000000080003000 <uartintr>:
    80003000:	100007b7          	lui	a5,0x10000
    80003004:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003008:	0017f793          	andi	a5,a5,1
    8000300c:	0a078463          	beqz	a5,800030b4 <uartintr+0xb4>
    80003010:	fe010113          	addi	sp,sp,-32
    80003014:	00813823          	sd	s0,16(sp)
    80003018:	00913423          	sd	s1,8(sp)
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	02010413          	addi	s0,sp,32
    80003024:	100004b7          	lui	s1,0x10000
    80003028:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000302c:	0ff57513          	andi	a0,a0,255
    80003030:	fffff097          	auipc	ra,0xfffff
    80003034:	534080e7          	jalr	1332(ra) # 80002564 <consoleintr>
    80003038:	0054c783          	lbu	a5,5(s1)
    8000303c:	0017f793          	andi	a5,a5,1
    80003040:	fe0794e3          	bnez	a5,80003028 <uartintr+0x28>
    80003044:	00001617          	auipc	a2,0x1
    80003048:	7dc60613          	addi	a2,a2,2012 # 80004820 <uart_tx_r>
    8000304c:	00001517          	auipc	a0,0x1
    80003050:	7dc50513          	addi	a0,a0,2012 # 80004828 <uart_tx_w>
    80003054:	00063783          	ld	a5,0(a2)
    80003058:	00053703          	ld	a4,0(a0)
    8000305c:	04f70263          	beq	a4,a5,800030a0 <uartintr+0xa0>
    80003060:	100005b7          	lui	a1,0x10000
    80003064:	00003817          	auipc	a6,0x3
    80003068:	a4c80813          	addi	a6,a6,-1460 # 80005ab0 <uart_tx_buf>
    8000306c:	01c0006f          	j	80003088 <uartintr+0x88>
    80003070:	0006c703          	lbu	a4,0(a3)
    80003074:	00f63023          	sd	a5,0(a2)
    80003078:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000307c:	00063783          	ld	a5,0(a2)
    80003080:	00053703          	ld	a4,0(a0)
    80003084:	00f70e63          	beq	a4,a5,800030a0 <uartintr+0xa0>
    80003088:	01f7f713          	andi	a4,a5,31
    8000308c:	00e806b3          	add	a3,a6,a4
    80003090:	0055c703          	lbu	a4,5(a1)
    80003094:	00178793          	addi	a5,a5,1
    80003098:	02077713          	andi	a4,a4,32
    8000309c:	fc071ae3          	bnez	a4,80003070 <uartintr+0x70>
    800030a0:	01813083          	ld	ra,24(sp)
    800030a4:	01013403          	ld	s0,16(sp)
    800030a8:	00813483          	ld	s1,8(sp)
    800030ac:	02010113          	addi	sp,sp,32
    800030b0:	00008067          	ret
    800030b4:	00001617          	auipc	a2,0x1
    800030b8:	76c60613          	addi	a2,a2,1900 # 80004820 <uart_tx_r>
    800030bc:	00001517          	auipc	a0,0x1
    800030c0:	76c50513          	addi	a0,a0,1900 # 80004828 <uart_tx_w>
    800030c4:	00063783          	ld	a5,0(a2)
    800030c8:	00053703          	ld	a4,0(a0)
    800030cc:	04f70263          	beq	a4,a5,80003110 <uartintr+0x110>
    800030d0:	100005b7          	lui	a1,0x10000
    800030d4:	00003817          	auipc	a6,0x3
    800030d8:	9dc80813          	addi	a6,a6,-1572 # 80005ab0 <uart_tx_buf>
    800030dc:	01c0006f          	j	800030f8 <uartintr+0xf8>
    800030e0:	0006c703          	lbu	a4,0(a3)
    800030e4:	00f63023          	sd	a5,0(a2)
    800030e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800030ec:	00063783          	ld	a5,0(a2)
    800030f0:	00053703          	ld	a4,0(a0)
    800030f4:	02f70063          	beq	a4,a5,80003114 <uartintr+0x114>
    800030f8:	01f7f713          	andi	a4,a5,31
    800030fc:	00e806b3          	add	a3,a6,a4
    80003100:	0055c703          	lbu	a4,5(a1)
    80003104:	00178793          	addi	a5,a5,1
    80003108:	02077713          	andi	a4,a4,32
    8000310c:	fc071ae3          	bnez	a4,800030e0 <uartintr+0xe0>
    80003110:	00008067          	ret
    80003114:	00008067          	ret

0000000080003118 <kinit>:
    80003118:	fc010113          	addi	sp,sp,-64
    8000311c:	02913423          	sd	s1,40(sp)
    80003120:	fffff7b7          	lui	a5,0xfffff
    80003124:	00004497          	auipc	s1,0x4
    80003128:	9bb48493          	addi	s1,s1,-1605 # 80006adf <end+0xfff>
    8000312c:	02813823          	sd	s0,48(sp)
    80003130:	01313c23          	sd	s3,24(sp)
    80003134:	00f4f4b3          	and	s1,s1,a5
    80003138:	02113c23          	sd	ra,56(sp)
    8000313c:	03213023          	sd	s2,32(sp)
    80003140:	01413823          	sd	s4,16(sp)
    80003144:	01513423          	sd	s5,8(sp)
    80003148:	04010413          	addi	s0,sp,64
    8000314c:	000017b7          	lui	a5,0x1
    80003150:	01100993          	li	s3,17
    80003154:	00f487b3          	add	a5,s1,a5
    80003158:	01b99993          	slli	s3,s3,0x1b
    8000315c:	06f9e063          	bltu	s3,a5,800031bc <kinit+0xa4>
    80003160:	00003a97          	auipc	s5,0x3
    80003164:	980a8a93          	addi	s5,s5,-1664 # 80005ae0 <end>
    80003168:	0754ec63          	bltu	s1,s5,800031e0 <kinit+0xc8>
    8000316c:	0734fa63          	bgeu	s1,s3,800031e0 <kinit+0xc8>
    80003170:	00088a37          	lui	s4,0x88
    80003174:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003178:	00001917          	auipc	s2,0x1
    8000317c:	6b890913          	addi	s2,s2,1720 # 80004830 <kmem>
    80003180:	00ca1a13          	slli	s4,s4,0xc
    80003184:	0140006f          	j	80003198 <kinit+0x80>
    80003188:	000017b7          	lui	a5,0x1
    8000318c:	00f484b3          	add	s1,s1,a5
    80003190:	0554e863          	bltu	s1,s5,800031e0 <kinit+0xc8>
    80003194:	0534f663          	bgeu	s1,s3,800031e0 <kinit+0xc8>
    80003198:	00001637          	lui	a2,0x1
    8000319c:	00100593          	li	a1,1
    800031a0:	00048513          	mv	a0,s1
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	5e4080e7          	jalr	1508(ra) # 80003788 <__memset>
    800031ac:	00093783          	ld	a5,0(s2)
    800031b0:	00f4b023          	sd	a5,0(s1)
    800031b4:	00993023          	sd	s1,0(s2)
    800031b8:	fd4498e3          	bne	s1,s4,80003188 <kinit+0x70>
    800031bc:	03813083          	ld	ra,56(sp)
    800031c0:	03013403          	ld	s0,48(sp)
    800031c4:	02813483          	ld	s1,40(sp)
    800031c8:	02013903          	ld	s2,32(sp)
    800031cc:	01813983          	ld	s3,24(sp)
    800031d0:	01013a03          	ld	s4,16(sp)
    800031d4:	00813a83          	ld	s5,8(sp)
    800031d8:	04010113          	addi	sp,sp,64
    800031dc:	00008067          	ret
    800031e0:	00001517          	auipc	a0,0x1
    800031e4:	fd850513          	addi	a0,a0,-40 # 800041b8 <digits+0x18>
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	4b4080e7          	jalr	1204(ra) # 8000269c <panic>

00000000800031f0 <freerange>:
    800031f0:	fc010113          	addi	sp,sp,-64
    800031f4:	000017b7          	lui	a5,0x1
    800031f8:	02913423          	sd	s1,40(sp)
    800031fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003200:	009504b3          	add	s1,a0,s1
    80003204:	fffff537          	lui	a0,0xfffff
    80003208:	02813823          	sd	s0,48(sp)
    8000320c:	02113c23          	sd	ra,56(sp)
    80003210:	03213023          	sd	s2,32(sp)
    80003214:	01313c23          	sd	s3,24(sp)
    80003218:	01413823          	sd	s4,16(sp)
    8000321c:	01513423          	sd	s5,8(sp)
    80003220:	01613023          	sd	s6,0(sp)
    80003224:	04010413          	addi	s0,sp,64
    80003228:	00a4f4b3          	and	s1,s1,a0
    8000322c:	00f487b3          	add	a5,s1,a5
    80003230:	06f5e463          	bltu	a1,a5,80003298 <freerange+0xa8>
    80003234:	00003a97          	auipc	s5,0x3
    80003238:	8aca8a93          	addi	s5,s5,-1876 # 80005ae0 <end>
    8000323c:	0954e263          	bltu	s1,s5,800032c0 <freerange+0xd0>
    80003240:	01100993          	li	s3,17
    80003244:	01b99993          	slli	s3,s3,0x1b
    80003248:	0734fc63          	bgeu	s1,s3,800032c0 <freerange+0xd0>
    8000324c:	00058a13          	mv	s4,a1
    80003250:	00001917          	auipc	s2,0x1
    80003254:	5e090913          	addi	s2,s2,1504 # 80004830 <kmem>
    80003258:	00002b37          	lui	s6,0x2
    8000325c:	0140006f          	j	80003270 <freerange+0x80>
    80003260:	000017b7          	lui	a5,0x1
    80003264:	00f484b3          	add	s1,s1,a5
    80003268:	0554ec63          	bltu	s1,s5,800032c0 <freerange+0xd0>
    8000326c:	0534fa63          	bgeu	s1,s3,800032c0 <freerange+0xd0>
    80003270:	00001637          	lui	a2,0x1
    80003274:	00100593          	li	a1,1
    80003278:	00048513          	mv	a0,s1
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	50c080e7          	jalr	1292(ra) # 80003788 <__memset>
    80003284:	00093703          	ld	a4,0(s2)
    80003288:	016487b3          	add	a5,s1,s6
    8000328c:	00e4b023          	sd	a4,0(s1)
    80003290:	00993023          	sd	s1,0(s2)
    80003294:	fcfa76e3          	bgeu	s4,a5,80003260 <freerange+0x70>
    80003298:	03813083          	ld	ra,56(sp)
    8000329c:	03013403          	ld	s0,48(sp)
    800032a0:	02813483          	ld	s1,40(sp)
    800032a4:	02013903          	ld	s2,32(sp)
    800032a8:	01813983          	ld	s3,24(sp)
    800032ac:	01013a03          	ld	s4,16(sp)
    800032b0:	00813a83          	ld	s5,8(sp)
    800032b4:	00013b03          	ld	s6,0(sp)
    800032b8:	04010113          	addi	sp,sp,64
    800032bc:	00008067          	ret
    800032c0:	00001517          	auipc	a0,0x1
    800032c4:	ef850513          	addi	a0,a0,-264 # 800041b8 <digits+0x18>
    800032c8:	fffff097          	auipc	ra,0xfffff
    800032cc:	3d4080e7          	jalr	980(ra) # 8000269c <panic>

00000000800032d0 <kfree>:
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00813823          	sd	s0,16(sp)
    800032d8:	00113c23          	sd	ra,24(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	02010413          	addi	s0,sp,32
    800032e4:	03451793          	slli	a5,a0,0x34
    800032e8:	04079c63          	bnez	a5,80003340 <kfree+0x70>
    800032ec:	00002797          	auipc	a5,0x2
    800032f0:	7f478793          	addi	a5,a5,2036 # 80005ae0 <end>
    800032f4:	00050493          	mv	s1,a0
    800032f8:	04f56463          	bltu	a0,a5,80003340 <kfree+0x70>
    800032fc:	01100793          	li	a5,17
    80003300:	01b79793          	slli	a5,a5,0x1b
    80003304:	02f57e63          	bgeu	a0,a5,80003340 <kfree+0x70>
    80003308:	00001637          	lui	a2,0x1
    8000330c:	00100593          	li	a1,1
    80003310:	00000097          	auipc	ra,0x0
    80003314:	478080e7          	jalr	1144(ra) # 80003788 <__memset>
    80003318:	00001797          	auipc	a5,0x1
    8000331c:	51878793          	addi	a5,a5,1304 # 80004830 <kmem>
    80003320:	0007b703          	ld	a4,0(a5)
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00e4b023          	sd	a4,0(s1)
    80003330:	0097b023          	sd	s1,0(a5)
    80003334:	00813483          	ld	s1,8(sp)
    80003338:	02010113          	addi	sp,sp,32
    8000333c:	00008067          	ret
    80003340:	00001517          	auipc	a0,0x1
    80003344:	e7850513          	addi	a0,a0,-392 # 800041b8 <digits+0x18>
    80003348:	fffff097          	auipc	ra,0xfffff
    8000334c:	354080e7          	jalr	852(ra) # 8000269c <panic>

0000000080003350 <kalloc>:
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00813823          	sd	s0,16(sp)
    80003358:	00913423          	sd	s1,8(sp)
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	02010413          	addi	s0,sp,32
    80003364:	00001797          	auipc	a5,0x1
    80003368:	4cc78793          	addi	a5,a5,1228 # 80004830 <kmem>
    8000336c:	0007b483          	ld	s1,0(a5)
    80003370:	02048063          	beqz	s1,80003390 <kalloc+0x40>
    80003374:	0004b703          	ld	a4,0(s1)
    80003378:	00001637          	lui	a2,0x1
    8000337c:	00500593          	li	a1,5
    80003380:	00048513          	mv	a0,s1
    80003384:	00e7b023          	sd	a4,0(a5)
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	400080e7          	jalr	1024(ra) # 80003788 <__memset>
    80003390:	01813083          	ld	ra,24(sp)
    80003394:	01013403          	ld	s0,16(sp)
    80003398:	00048513          	mv	a0,s1
    8000339c:	00813483          	ld	s1,8(sp)
    800033a0:	02010113          	addi	sp,sp,32
    800033a4:	00008067          	ret

00000000800033a8 <initlock>:
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00813423          	sd	s0,8(sp)
    800033b0:	01010413          	addi	s0,sp,16
    800033b4:	00813403          	ld	s0,8(sp)
    800033b8:	00b53423          	sd	a1,8(a0)
    800033bc:	00052023          	sw	zero,0(a0)
    800033c0:	00053823          	sd	zero,16(a0)
    800033c4:	01010113          	addi	sp,sp,16
    800033c8:	00008067          	ret

00000000800033cc <acquire>:
    800033cc:	fe010113          	addi	sp,sp,-32
    800033d0:	00813823          	sd	s0,16(sp)
    800033d4:	00913423          	sd	s1,8(sp)
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	01213023          	sd	s2,0(sp)
    800033e0:	02010413          	addi	s0,sp,32
    800033e4:	00050493          	mv	s1,a0
    800033e8:	10002973          	csrr	s2,sstatus
    800033ec:	100027f3          	csrr	a5,sstatus
    800033f0:	ffd7f793          	andi	a5,a5,-3
    800033f4:	10079073          	csrw	sstatus,a5
    800033f8:	fffff097          	auipc	ra,0xfffff
    800033fc:	8e4080e7          	jalr	-1820(ra) # 80001cdc <mycpu>
    80003400:	07852783          	lw	a5,120(a0)
    80003404:	06078e63          	beqz	a5,80003480 <acquire+0xb4>
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	8d4080e7          	jalr	-1836(ra) # 80001cdc <mycpu>
    80003410:	07852783          	lw	a5,120(a0)
    80003414:	0004a703          	lw	a4,0(s1)
    80003418:	0017879b          	addiw	a5,a5,1
    8000341c:	06f52c23          	sw	a5,120(a0)
    80003420:	04071063          	bnez	a4,80003460 <acquire+0x94>
    80003424:	00100713          	li	a4,1
    80003428:	00070793          	mv	a5,a4
    8000342c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003430:	0007879b          	sext.w	a5,a5
    80003434:	fe079ae3          	bnez	a5,80003428 <acquire+0x5c>
    80003438:	0ff0000f          	fence
    8000343c:	fffff097          	auipc	ra,0xfffff
    80003440:	8a0080e7          	jalr	-1888(ra) # 80001cdc <mycpu>
    80003444:	01813083          	ld	ra,24(sp)
    80003448:	01013403          	ld	s0,16(sp)
    8000344c:	00a4b823          	sd	a0,16(s1)
    80003450:	00013903          	ld	s2,0(sp)
    80003454:	00813483          	ld	s1,8(sp)
    80003458:	02010113          	addi	sp,sp,32
    8000345c:	00008067          	ret
    80003460:	0104b903          	ld	s2,16(s1)
    80003464:	fffff097          	auipc	ra,0xfffff
    80003468:	878080e7          	jalr	-1928(ra) # 80001cdc <mycpu>
    8000346c:	faa91ce3          	bne	s2,a0,80003424 <acquire+0x58>
    80003470:	00001517          	auipc	a0,0x1
    80003474:	d5050513          	addi	a0,a0,-688 # 800041c0 <digits+0x20>
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	224080e7          	jalr	548(ra) # 8000269c <panic>
    80003480:	00195913          	srli	s2,s2,0x1
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	858080e7          	jalr	-1960(ra) # 80001cdc <mycpu>
    8000348c:	00197913          	andi	s2,s2,1
    80003490:	07252e23          	sw	s2,124(a0)
    80003494:	f75ff06f          	j	80003408 <acquire+0x3c>

0000000080003498 <release>:
    80003498:	fe010113          	addi	sp,sp,-32
    8000349c:	00813823          	sd	s0,16(sp)
    800034a0:	00113c23          	sd	ra,24(sp)
    800034a4:	00913423          	sd	s1,8(sp)
    800034a8:	01213023          	sd	s2,0(sp)
    800034ac:	02010413          	addi	s0,sp,32
    800034b0:	00052783          	lw	a5,0(a0)
    800034b4:	00079a63          	bnez	a5,800034c8 <release+0x30>
    800034b8:	00001517          	auipc	a0,0x1
    800034bc:	d1050513          	addi	a0,a0,-752 # 800041c8 <digits+0x28>
    800034c0:	fffff097          	auipc	ra,0xfffff
    800034c4:	1dc080e7          	jalr	476(ra) # 8000269c <panic>
    800034c8:	01053903          	ld	s2,16(a0)
    800034cc:	00050493          	mv	s1,a0
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	80c080e7          	jalr	-2036(ra) # 80001cdc <mycpu>
    800034d8:	fea910e3          	bne	s2,a0,800034b8 <release+0x20>
    800034dc:	0004b823          	sd	zero,16(s1)
    800034e0:	0ff0000f          	fence
    800034e4:	0f50000f          	fence	iorw,ow
    800034e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	7f0080e7          	jalr	2032(ra) # 80001cdc <mycpu>
    800034f4:	100027f3          	csrr	a5,sstatus
    800034f8:	0027f793          	andi	a5,a5,2
    800034fc:	04079a63          	bnez	a5,80003550 <release+0xb8>
    80003500:	07852783          	lw	a5,120(a0)
    80003504:	02f05e63          	blez	a5,80003540 <release+0xa8>
    80003508:	fff7871b          	addiw	a4,a5,-1
    8000350c:	06e52c23          	sw	a4,120(a0)
    80003510:	00071c63          	bnez	a4,80003528 <release+0x90>
    80003514:	07c52783          	lw	a5,124(a0)
    80003518:	00078863          	beqz	a5,80003528 <release+0x90>
    8000351c:	100027f3          	csrr	a5,sstatus
    80003520:	0027e793          	ori	a5,a5,2
    80003524:	10079073          	csrw	sstatus,a5
    80003528:	01813083          	ld	ra,24(sp)
    8000352c:	01013403          	ld	s0,16(sp)
    80003530:	00813483          	ld	s1,8(sp)
    80003534:	00013903          	ld	s2,0(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret
    80003540:	00001517          	auipc	a0,0x1
    80003544:	ca850513          	addi	a0,a0,-856 # 800041e8 <digits+0x48>
    80003548:	fffff097          	auipc	ra,0xfffff
    8000354c:	154080e7          	jalr	340(ra) # 8000269c <panic>
    80003550:	00001517          	auipc	a0,0x1
    80003554:	c8050513          	addi	a0,a0,-896 # 800041d0 <digits+0x30>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	144080e7          	jalr	324(ra) # 8000269c <panic>

0000000080003560 <holding>:
    80003560:	00052783          	lw	a5,0(a0)
    80003564:	00079663          	bnez	a5,80003570 <holding+0x10>
    80003568:	00000513          	li	a0,0
    8000356c:	00008067          	ret
    80003570:	fe010113          	addi	sp,sp,-32
    80003574:	00813823          	sd	s0,16(sp)
    80003578:	00913423          	sd	s1,8(sp)
    8000357c:	00113c23          	sd	ra,24(sp)
    80003580:	02010413          	addi	s0,sp,32
    80003584:	01053483          	ld	s1,16(a0)
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	754080e7          	jalr	1876(ra) # 80001cdc <mycpu>
    80003590:	01813083          	ld	ra,24(sp)
    80003594:	01013403          	ld	s0,16(sp)
    80003598:	40a48533          	sub	a0,s1,a0
    8000359c:	00153513          	seqz	a0,a0
    800035a0:	00813483          	ld	s1,8(sp)
    800035a4:	02010113          	addi	sp,sp,32
    800035a8:	00008067          	ret

00000000800035ac <push_off>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00113c23          	sd	ra,24(sp)
    800035b8:	00913423          	sd	s1,8(sp)
    800035bc:	02010413          	addi	s0,sp,32
    800035c0:	100024f3          	csrr	s1,sstatus
    800035c4:	100027f3          	csrr	a5,sstatus
    800035c8:	ffd7f793          	andi	a5,a5,-3
    800035cc:	10079073          	csrw	sstatus,a5
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	70c080e7          	jalr	1804(ra) # 80001cdc <mycpu>
    800035d8:	07852783          	lw	a5,120(a0)
    800035dc:	02078663          	beqz	a5,80003608 <push_off+0x5c>
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	6fc080e7          	jalr	1788(ra) # 80001cdc <mycpu>
    800035e8:	07852783          	lw	a5,120(a0)
    800035ec:	01813083          	ld	ra,24(sp)
    800035f0:	01013403          	ld	s0,16(sp)
    800035f4:	0017879b          	addiw	a5,a5,1
    800035f8:	06f52c23          	sw	a5,120(a0)
    800035fc:	00813483          	ld	s1,8(sp)
    80003600:	02010113          	addi	sp,sp,32
    80003604:	00008067          	ret
    80003608:	0014d493          	srli	s1,s1,0x1
    8000360c:	ffffe097          	auipc	ra,0xffffe
    80003610:	6d0080e7          	jalr	1744(ra) # 80001cdc <mycpu>
    80003614:	0014f493          	andi	s1,s1,1
    80003618:	06952e23          	sw	s1,124(a0)
    8000361c:	fc5ff06f          	j	800035e0 <push_off+0x34>

0000000080003620 <pop_off>:
    80003620:	ff010113          	addi	sp,sp,-16
    80003624:	00813023          	sd	s0,0(sp)
    80003628:	00113423          	sd	ra,8(sp)
    8000362c:	01010413          	addi	s0,sp,16
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	6ac080e7          	jalr	1708(ra) # 80001cdc <mycpu>
    80003638:	100027f3          	csrr	a5,sstatus
    8000363c:	0027f793          	andi	a5,a5,2
    80003640:	04079663          	bnez	a5,8000368c <pop_off+0x6c>
    80003644:	07852783          	lw	a5,120(a0)
    80003648:	02f05a63          	blez	a5,8000367c <pop_off+0x5c>
    8000364c:	fff7871b          	addiw	a4,a5,-1
    80003650:	06e52c23          	sw	a4,120(a0)
    80003654:	00071c63          	bnez	a4,8000366c <pop_off+0x4c>
    80003658:	07c52783          	lw	a5,124(a0)
    8000365c:	00078863          	beqz	a5,8000366c <pop_off+0x4c>
    80003660:	100027f3          	csrr	a5,sstatus
    80003664:	0027e793          	ori	a5,a5,2
    80003668:	10079073          	csrw	sstatus,a5
    8000366c:	00813083          	ld	ra,8(sp)
    80003670:	00013403          	ld	s0,0(sp)
    80003674:	01010113          	addi	sp,sp,16
    80003678:	00008067          	ret
    8000367c:	00001517          	auipc	a0,0x1
    80003680:	b6c50513          	addi	a0,a0,-1172 # 800041e8 <digits+0x48>
    80003684:	fffff097          	auipc	ra,0xfffff
    80003688:	018080e7          	jalr	24(ra) # 8000269c <panic>
    8000368c:	00001517          	auipc	a0,0x1
    80003690:	b4450513          	addi	a0,a0,-1212 # 800041d0 <digits+0x30>
    80003694:	fffff097          	auipc	ra,0xfffff
    80003698:	008080e7          	jalr	8(ra) # 8000269c <panic>

000000008000369c <push_on>:
    8000369c:	fe010113          	addi	sp,sp,-32
    800036a0:	00813823          	sd	s0,16(sp)
    800036a4:	00113c23          	sd	ra,24(sp)
    800036a8:	00913423          	sd	s1,8(sp)
    800036ac:	02010413          	addi	s0,sp,32
    800036b0:	100024f3          	csrr	s1,sstatus
    800036b4:	100027f3          	csrr	a5,sstatus
    800036b8:	0027e793          	ori	a5,a5,2
    800036bc:	10079073          	csrw	sstatus,a5
    800036c0:	ffffe097          	auipc	ra,0xffffe
    800036c4:	61c080e7          	jalr	1564(ra) # 80001cdc <mycpu>
    800036c8:	07852783          	lw	a5,120(a0)
    800036cc:	02078663          	beqz	a5,800036f8 <push_on+0x5c>
    800036d0:	ffffe097          	auipc	ra,0xffffe
    800036d4:	60c080e7          	jalr	1548(ra) # 80001cdc <mycpu>
    800036d8:	07852783          	lw	a5,120(a0)
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	0017879b          	addiw	a5,a5,1
    800036e8:	06f52c23          	sw	a5,120(a0)
    800036ec:	00813483          	ld	s1,8(sp)
    800036f0:	02010113          	addi	sp,sp,32
    800036f4:	00008067          	ret
    800036f8:	0014d493          	srli	s1,s1,0x1
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	5e0080e7          	jalr	1504(ra) # 80001cdc <mycpu>
    80003704:	0014f493          	andi	s1,s1,1
    80003708:	06952e23          	sw	s1,124(a0)
    8000370c:	fc5ff06f          	j	800036d0 <push_on+0x34>

0000000080003710 <pop_on>:
    80003710:	ff010113          	addi	sp,sp,-16
    80003714:	00813023          	sd	s0,0(sp)
    80003718:	00113423          	sd	ra,8(sp)
    8000371c:	01010413          	addi	s0,sp,16
    80003720:	ffffe097          	auipc	ra,0xffffe
    80003724:	5bc080e7          	jalr	1468(ra) # 80001cdc <mycpu>
    80003728:	100027f3          	csrr	a5,sstatus
    8000372c:	0027f793          	andi	a5,a5,2
    80003730:	04078463          	beqz	a5,80003778 <pop_on+0x68>
    80003734:	07852783          	lw	a5,120(a0)
    80003738:	02f05863          	blez	a5,80003768 <pop_on+0x58>
    8000373c:	fff7879b          	addiw	a5,a5,-1
    80003740:	06f52c23          	sw	a5,120(a0)
    80003744:	07853783          	ld	a5,120(a0)
    80003748:	00079863          	bnez	a5,80003758 <pop_on+0x48>
    8000374c:	100027f3          	csrr	a5,sstatus
    80003750:	ffd7f793          	andi	a5,a5,-3
    80003754:	10079073          	csrw	sstatus,a5
    80003758:	00813083          	ld	ra,8(sp)
    8000375c:	00013403          	ld	s0,0(sp)
    80003760:	01010113          	addi	sp,sp,16
    80003764:	00008067          	ret
    80003768:	00001517          	auipc	a0,0x1
    8000376c:	aa850513          	addi	a0,a0,-1368 # 80004210 <digits+0x70>
    80003770:	fffff097          	auipc	ra,0xfffff
    80003774:	f2c080e7          	jalr	-212(ra) # 8000269c <panic>
    80003778:	00001517          	auipc	a0,0x1
    8000377c:	a7850513          	addi	a0,a0,-1416 # 800041f0 <digits+0x50>
    80003780:	fffff097          	auipc	ra,0xfffff
    80003784:	f1c080e7          	jalr	-228(ra) # 8000269c <panic>

0000000080003788 <__memset>:
    80003788:	ff010113          	addi	sp,sp,-16
    8000378c:	00813423          	sd	s0,8(sp)
    80003790:	01010413          	addi	s0,sp,16
    80003794:	1a060e63          	beqz	a2,80003950 <__memset+0x1c8>
    80003798:	40a007b3          	neg	a5,a0
    8000379c:	0077f793          	andi	a5,a5,7
    800037a0:	00778693          	addi	a3,a5,7
    800037a4:	00b00813          	li	a6,11
    800037a8:	0ff5f593          	andi	a1,a1,255
    800037ac:	fff6071b          	addiw	a4,a2,-1
    800037b0:	1b06e663          	bltu	a3,a6,8000395c <__memset+0x1d4>
    800037b4:	1cd76463          	bltu	a4,a3,8000397c <__memset+0x1f4>
    800037b8:	1a078e63          	beqz	a5,80003974 <__memset+0x1ec>
    800037bc:	00b50023          	sb	a1,0(a0)
    800037c0:	00100713          	li	a4,1
    800037c4:	1ae78463          	beq	a5,a4,8000396c <__memset+0x1e4>
    800037c8:	00b500a3          	sb	a1,1(a0)
    800037cc:	00200713          	li	a4,2
    800037d0:	1ae78a63          	beq	a5,a4,80003984 <__memset+0x1fc>
    800037d4:	00b50123          	sb	a1,2(a0)
    800037d8:	00300713          	li	a4,3
    800037dc:	18e78463          	beq	a5,a4,80003964 <__memset+0x1dc>
    800037e0:	00b501a3          	sb	a1,3(a0)
    800037e4:	00400713          	li	a4,4
    800037e8:	1ae78263          	beq	a5,a4,8000398c <__memset+0x204>
    800037ec:	00b50223          	sb	a1,4(a0)
    800037f0:	00500713          	li	a4,5
    800037f4:	1ae78063          	beq	a5,a4,80003994 <__memset+0x20c>
    800037f8:	00b502a3          	sb	a1,5(a0)
    800037fc:	00700713          	li	a4,7
    80003800:	18e79e63          	bne	a5,a4,8000399c <__memset+0x214>
    80003804:	00b50323          	sb	a1,6(a0)
    80003808:	00700e93          	li	t4,7
    8000380c:	00859713          	slli	a4,a1,0x8
    80003810:	00e5e733          	or	a4,a1,a4
    80003814:	01059e13          	slli	t3,a1,0x10
    80003818:	01c76e33          	or	t3,a4,t3
    8000381c:	01859313          	slli	t1,a1,0x18
    80003820:	006e6333          	or	t1,t3,t1
    80003824:	02059893          	slli	a7,a1,0x20
    80003828:	40f60e3b          	subw	t3,a2,a5
    8000382c:	011368b3          	or	a7,t1,a7
    80003830:	02859813          	slli	a6,a1,0x28
    80003834:	0108e833          	or	a6,a7,a6
    80003838:	03059693          	slli	a3,a1,0x30
    8000383c:	003e589b          	srliw	a7,t3,0x3
    80003840:	00d866b3          	or	a3,a6,a3
    80003844:	03859713          	slli	a4,a1,0x38
    80003848:	00389813          	slli	a6,a7,0x3
    8000384c:	00f507b3          	add	a5,a0,a5
    80003850:	00e6e733          	or	a4,a3,a4
    80003854:	000e089b          	sext.w	a7,t3
    80003858:	00f806b3          	add	a3,a6,a5
    8000385c:	00e7b023          	sd	a4,0(a5)
    80003860:	00878793          	addi	a5,a5,8
    80003864:	fed79ce3          	bne	a5,a3,8000385c <__memset+0xd4>
    80003868:	ff8e7793          	andi	a5,t3,-8
    8000386c:	0007871b          	sext.w	a4,a5
    80003870:	01d787bb          	addw	a5,a5,t4
    80003874:	0ce88e63          	beq	a7,a4,80003950 <__memset+0x1c8>
    80003878:	00f50733          	add	a4,a0,a5
    8000387c:	00b70023          	sb	a1,0(a4)
    80003880:	0017871b          	addiw	a4,a5,1
    80003884:	0cc77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003888:	00e50733          	add	a4,a0,a4
    8000388c:	00b70023          	sb	a1,0(a4)
    80003890:	0027871b          	addiw	a4,a5,2
    80003894:	0ac77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003898:	00e50733          	add	a4,a0,a4
    8000389c:	00b70023          	sb	a1,0(a4)
    800038a0:	0037871b          	addiw	a4,a5,3
    800038a4:	0ac77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038a8:	00e50733          	add	a4,a0,a4
    800038ac:	00b70023          	sb	a1,0(a4)
    800038b0:	0047871b          	addiw	a4,a5,4
    800038b4:	08c77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038b8:	00e50733          	add	a4,a0,a4
    800038bc:	00b70023          	sb	a1,0(a4)
    800038c0:	0057871b          	addiw	a4,a5,5
    800038c4:	08c77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038c8:	00e50733          	add	a4,a0,a4
    800038cc:	00b70023          	sb	a1,0(a4)
    800038d0:	0067871b          	addiw	a4,a5,6
    800038d4:	06c77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038d8:	00e50733          	add	a4,a0,a4
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	0077871b          	addiw	a4,a5,7
    800038e4:	06c77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	0087871b          	addiw	a4,a5,8
    800038f4:	04c77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	0097871b          	addiw	a4,a5,9
    80003904:	04c77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	00a7871b          	addiw	a4,a5,10
    80003914:	02c77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	00b7871b          	addiw	a4,a5,11
    80003924:	02c77663          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	00c7871b          	addiw	a4,a5,12
    80003934:	00c77e63          	bgeu	a4,a2,80003950 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	00d7879b          	addiw	a5,a5,13
    80003944:	00c7f663          	bgeu	a5,a2,80003950 <__memset+0x1c8>
    80003948:	00f507b3          	add	a5,a0,a5
    8000394c:	00b78023          	sb	a1,0(a5)
    80003950:	00813403          	ld	s0,8(sp)
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret
    8000395c:	00b00693          	li	a3,11
    80003960:	e55ff06f          	j	800037b4 <__memset+0x2c>
    80003964:	00300e93          	li	t4,3
    80003968:	ea5ff06f          	j	8000380c <__memset+0x84>
    8000396c:	00100e93          	li	t4,1
    80003970:	e9dff06f          	j	8000380c <__memset+0x84>
    80003974:	00000e93          	li	t4,0
    80003978:	e95ff06f          	j	8000380c <__memset+0x84>
    8000397c:	00000793          	li	a5,0
    80003980:	ef9ff06f          	j	80003878 <__memset+0xf0>
    80003984:	00200e93          	li	t4,2
    80003988:	e85ff06f          	j	8000380c <__memset+0x84>
    8000398c:	00400e93          	li	t4,4
    80003990:	e7dff06f          	j	8000380c <__memset+0x84>
    80003994:	00500e93          	li	t4,5
    80003998:	e75ff06f          	j	8000380c <__memset+0x84>
    8000399c:	00600e93          	li	t4,6
    800039a0:	e6dff06f          	j	8000380c <__memset+0x84>

00000000800039a4 <__memmove>:
    800039a4:	ff010113          	addi	sp,sp,-16
    800039a8:	00813423          	sd	s0,8(sp)
    800039ac:	01010413          	addi	s0,sp,16
    800039b0:	0e060863          	beqz	a2,80003aa0 <__memmove+0xfc>
    800039b4:	fff6069b          	addiw	a3,a2,-1
    800039b8:	0006881b          	sext.w	a6,a3
    800039bc:	0ea5e863          	bltu	a1,a0,80003aac <__memmove+0x108>
    800039c0:	00758713          	addi	a4,a1,7
    800039c4:	00a5e7b3          	or	a5,a1,a0
    800039c8:	40a70733          	sub	a4,a4,a0
    800039cc:	0077f793          	andi	a5,a5,7
    800039d0:	00f73713          	sltiu	a4,a4,15
    800039d4:	00174713          	xori	a4,a4,1
    800039d8:	0017b793          	seqz	a5,a5
    800039dc:	00e7f7b3          	and	a5,a5,a4
    800039e0:	10078863          	beqz	a5,80003af0 <__memmove+0x14c>
    800039e4:	00900793          	li	a5,9
    800039e8:	1107f463          	bgeu	a5,a6,80003af0 <__memmove+0x14c>
    800039ec:	0036581b          	srliw	a6,a2,0x3
    800039f0:	fff8081b          	addiw	a6,a6,-1
    800039f4:	02081813          	slli	a6,a6,0x20
    800039f8:	01d85893          	srli	a7,a6,0x1d
    800039fc:	00858813          	addi	a6,a1,8
    80003a00:	00058793          	mv	a5,a1
    80003a04:	00050713          	mv	a4,a0
    80003a08:	01088833          	add	a6,a7,a6
    80003a0c:	0007b883          	ld	a7,0(a5)
    80003a10:	00878793          	addi	a5,a5,8
    80003a14:	00870713          	addi	a4,a4,8
    80003a18:	ff173c23          	sd	a7,-8(a4)
    80003a1c:	ff0798e3          	bne	a5,a6,80003a0c <__memmove+0x68>
    80003a20:	ff867713          	andi	a4,a2,-8
    80003a24:	02071793          	slli	a5,a4,0x20
    80003a28:	0207d793          	srli	a5,a5,0x20
    80003a2c:	00f585b3          	add	a1,a1,a5
    80003a30:	40e686bb          	subw	a3,a3,a4
    80003a34:	00f507b3          	add	a5,a0,a5
    80003a38:	06e60463          	beq	a2,a4,80003aa0 <__memmove+0xfc>
    80003a3c:	0005c703          	lbu	a4,0(a1)
    80003a40:	00e78023          	sb	a4,0(a5)
    80003a44:	04068e63          	beqz	a3,80003aa0 <__memmove+0xfc>
    80003a48:	0015c603          	lbu	a2,1(a1)
    80003a4c:	00100713          	li	a4,1
    80003a50:	00c780a3          	sb	a2,1(a5)
    80003a54:	04e68663          	beq	a3,a4,80003aa0 <__memmove+0xfc>
    80003a58:	0025c603          	lbu	a2,2(a1)
    80003a5c:	00200713          	li	a4,2
    80003a60:	00c78123          	sb	a2,2(a5)
    80003a64:	02e68e63          	beq	a3,a4,80003aa0 <__memmove+0xfc>
    80003a68:	0035c603          	lbu	a2,3(a1)
    80003a6c:	00300713          	li	a4,3
    80003a70:	00c781a3          	sb	a2,3(a5)
    80003a74:	02e68663          	beq	a3,a4,80003aa0 <__memmove+0xfc>
    80003a78:	0045c603          	lbu	a2,4(a1)
    80003a7c:	00400713          	li	a4,4
    80003a80:	00c78223          	sb	a2,4(a5)
    80003a84:	00e68e63          	beq	a3,a4,80003aa0 <__memmove+0xfc>
    80003a88:	0055c603          	lbu	a2,5(a1)
    80003a8c:	00500713          	li	a4,5
    80003a90:	00c782a3          	sb	a2,5(a5)
    80003a94:	00e68663          	beq	a3,a4,80003aa0 <__memmove+0xfc>
    80003a98:	0065c703          	lbu	a4,6(a1)
    80003a9c:	00e78323          	sb	a4,6(a5)
    80003aa0:	00813403          	ld	s0,8(sp)
    80003aa4:	01010113          	addi	sp,sp,16
    80003aa8:	00008067          	ret
    80003aac:	02061713          	slli	a4,a2,0x20
    80003ab0:	02075713          	srli	a4,a4,0x20
    80003ab4:	00e587b3          	add	a5,a1,a4
    80003ab8:	f0f574e3          	bgeu	a0,a5,800039c0 <__memmove+0x1c>
    80003abc:	02069613          	slli	a2,a3,0x20
    80003ac0:	02065613          	srli	a2,a2,0x20
    80003ac4:	fff64613          	not	a2,a2
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00c78633          	add	a2,a5,a2
    80003ad0:	fff7c683          	lbu	a3,-1(a5)
    80003ad4:	fff78793          	addi	a5,a5,-1
    80003ad8:	fff70713          	addi	a4,a4,-1
    80003adc:	00d70023          	sb	a3,0(a4)
    80003ae0:	fec798e3          	bne	a5,a2,80003ad0 <__memmove+0x12c>
    80003ae4:	00813403          	ld	s0,8(sp)
    80003ae8:	01010113          	addi	sp,sp,16
    80003aec:	00008067          	ret
    80003af0:	02069713          	slli	a4,a3,0x20
    80003af4:	02075713          	srli	a4,a4,0x20
    80003af8:	00170713          	addi	a4,a4,1
    80003afc:	00e50733          	add	a4,a0,a4
    80003b00:	00050793          	mv	a5,a0
    80003b04:	0005c683          	lbu	a3,0(a1)
    80003b08:	00178793          	addi	a5,a5,1
    80003b0c:	00158593          	addi	a1,a1,1
    80003b10:	fed78fa3          	sb	a3,-1(a5)
    80003b14:	fee798e3          	bne	a5,a4,80003b04 <__memmove+0x160>
    80003b18:	f89ff06f          	j	80003aa0 <__memmove+0xfc>

0000000080003b1c <__mem_free>:
    80003b1c:	ff010113          	addi	sp,sp,-16
    80003b20:	00813423          	sd	s0,8(sp)
    80003b24:	01010413          	addi	s0,sp,16
    80003b28:	00001597          	auipc	a1,0x1
    80003b2c:	d1058593          	addi	a1,a1,-752 # 80004838 <freep>
    80003b30:	0005b783          	ld	a5,0(a1)
    80003b34:	ff050693          	addi	a3,a0,-16
    80003b38:	0007b703          	ld	a4,0(a5)
    80003b3c:	00d7fc63          	bgeu	a5,a3,80003b54 <__mem_free+0x38>
    80003b40:	00e6ee63          	bltu	a3,a4,80003b5c <__mem_free+0x40>
    80003b44:	00e7fc63          	bgeu	a5,a4,80003b5c <__mem_free+0x40>
    80003b48:	00070793          	mv	a5,a4
    80003b4c:	0007b703          	ld	a4,0(a5)
    80003b50:	fed7e8e3          	bltu	a5,a3,80003b40 <__mem_free+0x24>
    80003b54:	fee7eae3          	bltu	a5,a4,80003b48 <__mem_free+0x2c>
    80003b58:	fee6f8e3          	bgeu	a3,a4,80003b48 <__mem_free+0x2c>
    80003b5c:	ff852803          	lw	a6,-8(a0)
    80003b60:	02081613          	slli	a2,a6,0x20
    80003b64:	01c65613          	srli	a2,a2,0x1c
    80003b68:	00c68633          	add	a2,a3,a2
    80003b6c:	02c70a63          	beq	a4,a2,80003ba0 <__mem_free+0x84>
    80003b70:	fee53823          	sd	a4,-16(a0)
    80003b74:	0087a503          	lw	a0,8(a5)
    80003b78:	02051613          	slli	a2,a0,0x20
    80003b7c:	01c65613          	srli	a2,a2,0x1c
    80003b80:	00c78633          	add	a2,a5,a2
    80003b84:	04c68263          	beq	a3,a2,80003bc8 <__mem_free+0xac>
    80003b88:	00813403          	ld	s0,8(sp)
    80003b8c:	00d7b023          	sd	a3,0(a5)
    80003b90:	00f5b023          	sd	a5,0(a1)
    80003b94:	00000513          	li	a0,0
    80003b98:	01010113          	addi	sp,sp,16
    80003b9c:	00008067          	ret
    80003ba0:	00872603          	lw	a2,8(a4)
    80003ba4:	00073703          	ld	a4,0(a4)
    80003ba8:	0106083b          	addw	a6,a2,a6
    80003bac:	ff052c23          	sw	a6,-8(a0)
    80003bb0:	fee53823          	sd	a4,-16(a0)
    80003bb4:	0087a503          	lw	a0,8(a5)
    80003bb8:	02051613          	slli	a2,a0,0x20
    80003bbc:	01c65613          	srli	a2,a2,0x1c
    80003bc0:	00c78633          	add	a2,a5,a2
    80003bc4:	fcc692e3          	bne	a3,a2,80003b88 <__mem_free+0x6c>
    80003bc8:	00813403          	ld	s0,8(sp)
    80003bcc:	0105053b          	addw	a0,a0,a6
    80003bd0:	00a7a423          	sw	a0,8(a5)
    80003bd4:	00e7b023          	sd	a4,0(a5)
    80003bd8:	00f5b023          	sd	a5,0(a1)
    80003bdc:	00000513          	li	a0,0
    80003be0:	01010113          	addi	sp,sp,16
    80003be4:	00008067          	ret

0000000080003be8 <__mem_alloc>:
    80003be8:	fc010113          	addi	sp,sp,-64
    80003bec:	02813823          	sd	s0,48(sp)
    80003bf0:	02913423          	sd	s1,40(sp)
    80003bf4:	03213023          	sd	s2,32(sp)
    80003bf8:	01513423          	sd	s5,8(sp)
    80003bfc:	02113c23          	sd	ra,56(sp)
    80003c00:	01313c23          	sd	s3,24(sp)
    80003c04:	01413823          	sd	s4,16(sp)
    80003c08:	01613023          	sd	s6,0(sp)
    80003c0c:	04010413          	addi	s0,sp,64
    80003c10:	00001a97          	auipc	s5,0x1
    80003c14:	c28a8a93          	addi	s5,s5,-984 # 80004838 <freep>
    80003c18:	00f50913          	addi	s2,a0,15
    80003c1c:	000ab683          	ld	a3,0(s5)
    80003c20:	00495913          	srli	s2,s2,0x4
    80003c24:	0019049b          	addiw	s1,s2,1
    80003c28:	00048913          	mv	s2,s1
    80003c2c:	0c068c63          	beqz	a3,80003d04 <__mem_alloc+0x11c>
    80003c30:	0006b503          	ld	a0,0(a3)
    80003c34:	00852703          	lw	a4,8(a0)
    80003c38:	10977063          	bgeu	a4,s1,80003d38 <__mem_alloc+0x150>
    80003c3c:	000017b7          	lui	a5,0x1
    80003c40:	0009099b          	sext.w	s3,s2
    80003c44:	0af4e863          	bltu	s1,a5,80003cf4 <__mem_alloc+0x10c>
    80003c48:	02099a13          	slli	s4,s3,0x20
    80003c4c:	01ca5a13          	srli	s4,s4,0x1c
    80003c50:	fff00b13          	li	s6,-1
    80003c54:	0100006f          	j	80003c64 <__mem_alloc+0x7c>
    80003c58:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003c5c:	00852703          	lw	a4,8(a0)
    80003c60:	04977463          	bgeu	a4,s1,80003ca8 <__mem_alloc+0xc0>
    80003c64:	00050793          	mv	a5,a0
    80003c68:	fea698e3          	bne	a3,a0,80003c58 <__mem_alloc+0x70>
    80003c6c:	000a0513          	mv	a0,s4
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	1f0080e7          	jalr	496(ra) # 80003e60 <kvmincrease>
    80003c78:	00050793          	mv	a5,a0
    80003c7c:	01050513          	addi	a0,a0,16
    80003c80:	07678e63          	beq	a5,s6,80003cfc <__mem_alloc+0x114>
    80003c84:	0137a423          	sw	s3,8(a5)
    80003c88:	00000097          	auipc	ra,0x0
    80003c8c:	e94080e7          	jalr	-364(ra) # 80003b1c <__mem_free>
    80003c90:	000ab783          	ld	a5,0(s5)
    80003c94:	06078463          	beqz	a5,80003cfc <__mem_alloc+0x114>
    80003c98:	0007b503          	ld	a0,0(a5)
    80003c9c:	00078693          	mv	a3,a5
    80003ca0:	00852703          	lw	a4,8(a0)
    80003ca4:	fc9760e3          	bltu	a4,s1,80003c64 <__mem_alloc+0x7c>
    80003ca8:	08e48263          	beq	s1,a4,80003d2c <__mem_alloc+0x144>
    80003cac:	4127073b          	subw	a4,a4,s2
    80003cb0:	02071693          	slli	a3,a4,0x20
    80003cb4:	01c6d693          	srli	a3,a3,0x1c
    80003cb8:	00e52423          	sw	a4,8(a0)
    80003cbc:	00d50533          	add	a0,a0,a3
    80003cc0:	01252423          	sw	s2,8(a0)
    80003cc4:	00fab023          	sd	a5,0(s5)
    80003cc8:	01050513          	addi	a0,a0,16
    80003ccc:	03813083          	ld	ra,56(sp)
    80003cd0:	03013403          	ld	s0,48(sp)
    80003cd4:	02813483          	ld	s1,40(sp)
    80003cd8:	02013903          	ld	s2,32(sp)
    80003cdc:	01813983          	ld	s3,24(sp)
    80003ce0:	01013a03          	ld	s4,16(sp)
    80003ce4:	00813a83          	ld	s5,8(sp)
    80003ce8:	00013b03          	ld	s6,0(sp)
    80003cec:	04010113          	addi	sp,sp,64
    80003cf0:	00008067          	ret
    80003cf4:	000019b7          	lui	s3,0x1
    80003cf8:	f51ff06f          	j	80003c48 <__mem_alloc+0x60>
    80003cfc:	00000513          	li	a0,0
    80003d00:	fcdff06f          	j	80003ccc <__mem_alloc+0xe4>
    80003d04:	00002797          	auipc	a5,0x2
    80003d08:	dcc78793          	addi	a5,a5,-564 # 80005ad0 <base>
    80003d0c:	00078513          	mv	a0,a5
    80003d10:	00fab023          	sd	a5,0(s5)
    80003d14:	00f7b023          	sd	a5,0(a5)
    80003d18:	00000713          	li	a4,0
    80003d1c:	00002797          	auipc	a5,0x2
    80003d20:	da07ae23          	sw	zero,-580(a5) # 80005ad8 <base+0x8>
    80003d24:	00050693          	mv	a3,a0
    80003d28:	f11ff06f          	j	80003c38 <__mem_alloc+0x50>
    80003d2c:	00053703          	ld	a4,0(a0)
    80003d30:	00e7b023          	sd	a4,0(a5)
    80003d34:	f91ff06f          	j	80003cc4 <__mem_alloc+0xdc>
    80003d38:	00068793          	mv	a5,a3
    80003d3c:	f6dff06f          	j	80003ca8 <__mem_alloc+0xc0>

0000000080003d40 <__putc>:
    80003d40:	fe010113          	addi	sp,sp,-32
    80003d44:	00813823          	sd	s0,16(sp)
    80003d48:	00113c23          	sd	ra,24(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	00050793          	mv	a5,a0
    80003d54:	fef40593          	addi	a1,s0,-17
    80003d58:	00100613          	li	a2,1
    80003d5c:	00000513          	li	a0,0
    80003d60:	fef407a3          	sb	a5,-17(s0)
    80003d64:	fffff097          	auipc	ra,0xfffff
    80003d68:	918080e7          	jalr	-1768(ra) # 8000267c <console_write>
    80003d6c:	01813083          	ld	ra,24(sp)
    80003d70:	01013403          	ld	s0,16(sp)
    80003d74:	02010113          	addi	sp,sp,32
    80003d78:	00008067          	ret

0000000080003d7c <__getc>:
    80003d7c:	fe010113          	addi	sp,sp,-32
    80003d80:	00813823          	sd	s0,16(sp)
    80003d84:	00113c23          	sd	ra,24(sp)
    80003d88:	02010413          	addi	s0,sp,32
    80003d8c:	fe840593          	addi	a1,s0,-24
    80003d90:	00100613          	li	a2,1
    80003d94:	00000513          	li	a0,0
    80003d98:	fffff097          	auipc	ra,0xfffff
    80003d9c:	8c4080e7          	jalr	-1852(ra) # 8000265c <console_read>
    80003da0:	fe844503          	lbu	a0,-24(s0)
    80003da4:	01813083          	ld	ra,24(sp)
    80003da8:	01013403          	ld	s0,16(sp)
    80003dac:	02010113          	addi	sp,sp,32
    80003db0:	00008067          	ret

0000000080003db4 <console_handler>:
    80003db4:	fe010113          	addi	sp,sp,-32
    80003db8:	00813823          	sd	s0,16(sp)
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	00913423          	sd	s1,8(sp)
    80003dc4:	02010413          	addi	s0,sp,32
    80003dc8:	14202773          	csrr	a4,scause
    80003dcc:	100027f3          	csrr	a5,sstatus
    80003dd0:	0027f793          	andi	a5,a5,2
    80003dd4:	06079e63          	bnez	a5,80003e50 <console_handler+0x9c>
    80003dd8:	00074c63          	bltz	a4,80003df0 <console_handler+0x3c>
    80003ddc:	01813083          	ld	ra,24(sp)
    80003de0:	01013403          	ld	s0,16(sp)
    80003de4:	00813483          	ld	s1,8(sp)
    80003de8:	02010113          	addi	sp,sp,32
    80003dec:	00008067          	ret
    80003df0:	0ff77713          	andi	a4,a4,255
    80003df4:	00900793          	li	a5,9
    80003df8:	fef712e3          	bne	a4,a5,80003ddc <console_handler+0x28>
    80003dfc:	ffffe097          	auipc	ra,0xffffe
    80003e00:	4b8080e7          	jalr	1208(ra) # 800022b4 <plic_claim>
    80003e04:	00a00793          	li	a5,10
    80003e08:	00050493          	mv	s1,a0
    80003e0c:	02f50c63          	beq	a0,a5,80003e44 <console_handler+0x90>
    80003e10:	fc0506e3          	beqz	a0,80003ddc <console_handler+0x28>
    80003e14:	00050593          	mv	a1,a0
    80003e18:	00000517          	auipc	a0,0x0
    80003e1c:	30050513          	addi	a0,a0,768 # 80004118 <_ZZ12printIntegermE6digits+0xe0>
    80003e20:	fffff097          	auipc	ra,0xfffff
    80003e24:	8d8080e7          	jalr	-1832(ra) # 800026f8 <__printf>
    80003e28:	01013403          	ld	s0,16(sp)
    80003e2c:	01813083          	ld	ra,24(sp)
    80003e30:	00048513          	mv	a0,s1
    80003e34:	00813483          	ld	s1,8(sp)
    80003e38:	02010113          	addi	sp,sp,32
    80003e3c:	ffffe317          	auipc	t1,0xffffe
    80003e40:	4b030067          	jr	1200(t1) # 800022ec <plic_complete>
    80003e44:	fffff097          	auipc	ra,0xfffff
    80003e48:	1bc080e7          	jalr	444(ra) # 80003000 <uartintr>
    80003e4c:	fddff06f          	j	80003e28 <console_handler+0x74>
    80003e50:	00000517          	auipc	a0,0x0
    80003e54:	3c850513          	addi	a0,a0,968 # 80004218 <digits+0x78>
    80003e58:	fffff097          	auipc	ra,0xfffff
    80003e5c:	844080e7          	jalr	-1980(ra) # 8000269c <panic>

0000000080003e60 <kvmincrease>:
    80003e60:	fe010113          	addi	sp,sp,-32
    80003e64:	01213023          	sd	s2,0(sp)
    80003e68:	00001937          	lui	s2,0x1
    80003e6c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00113c23          	sd	ra,24(sp)
    80003e78:	00913423          	sd	s1,8(sp)
    80003e7c:	02010413          	addi	s0,sp,32
    80003e80:	01250933          	add	s2,a0,s2
    80003e84:	00c95913          	srli	s2,s2,0xc
    80003e88:	02090863          	beqz	s2,80003eb8 <kvmincrease+0x58>
    80003e8c:	00000493          	li	s1,0
    80003e90:	00148493          	addi	s1,s1,1
    80003e94:	fffff097          	auipc	ra,0xfffff
    80003e98:	4bc080e7          	jalr	1212(ra) # 80003350 <kalloc>
    80003e9c:	fe991ae3          	bne	s2,s1,80003e90 <kvmincrease+0x30>
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00813483          	ld	s1,8(sp)
    80003eac:	00013903          	ld	s2,0(sp)
    80003eb0:	02010113          	addi	sp,sp,32
    80003eb4:	00008067          	ret
    80003eb8:	01813083          	ld	ra,24(sp)
    80003ebc:	01013403          	ld	s0,16(sp)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	00013903          	ld	s2,0(sp)
    80003ec8:	00000513          	li	a0,0
    80003ecc:	02010113          	addi	sp,sp,32
    80003ed0:	00008067          	ret
	...

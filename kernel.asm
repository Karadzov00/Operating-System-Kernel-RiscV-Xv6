
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	8e013103          	ld	sp,-1824(sp) # 800058e0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	5b5010ef          	jal	ra,80001dd0 <start>

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
    80001080:	335000ef          	jal	ra,80001bb4 <_ZN5Riscv20handleSupervisorTrapEv>

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

0000000080001124 <_ZN7_threadC1EPFvPvEmS0_>:

_thread* _thread::createThread(Body body, void* arg) {
    return new _thread(body, DEFAULT_TIME_SLICE, arg);
}

_thread::_thread(Body body, uint64 timeSlice, void* arg):
    80001124:	fd010113          	addi	sp,sp,-48
    80001128:	02113423          	sd	ra,40(sp)
    8000112c:	02813023          	sd	s0,32(sp)
    80001130:	00913c23          	sd	s1,24(sp)
    80001134:	01213823          	sd	s2,16(sp)
    80001138:	01313423          	sd	s3,8(sp)
    8000113c:	03010413          	addi	s0,sp,48
    80001140:	00050493          	mv	s1,a0
    80001144:	00060993          	mv	s3,a2
    80001148:	00068913          	mv	s2,a3
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
        context({(uint64)&threadWrapper,
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
                }),
        timeSlice(timeSlice),
        finished(false)
    8000114c:	00b53023          	sd	a1,0(a0)
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    80001150:	06058c63          	beqz	a1,800011c8 <_ZN7_threadC1EPFvPvEmS0_+0xa4>
    80001154:	00008537          	lui	a0,0x8
    80001158:	00000097          	auipc	ra,0x0
    8000115c:	654080e7          	jalr	1620(ra) # 800017ac <_Znam>
        finished(false)
    80001160:	00a4b423          	sd	a0,8(s1)
    80001164:	00000797          	auipc	a5,0x0
    80001168:	0c878793          	addi	a5,a5,200 # 8000122c <_ZN7_thread13threadWrapperEv>
    8000116c:	00f4b823          	sd	a5,16(s1)
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    80001170:	06050063          	beqz	a0,800011d0 <_ZN7_threadC1EPFvPvEmS0_+0xac>
    80001174:	000087b7          	lui	a5,0x8
    80001178:	00f50533          	add	a0,a0,a5
        finished(false)
    8000117c:	00a4bc23          	sd	a0,24(s1)
    80001180:	0334b023          	sd	s3,32(s1)
    80001184:	02048423          	sb	zero,40(s1)
{
    status = Status::NEW;
    80001188:	00100793          	li	a5,1
    8000118c:	04f4a023          	sw	a5,64(s1)
    id = globalId++;
    80001190:	00004717          	auipc	a4,0x4
    80001194:	7b070713          	addi	a4,a4,1968 # 80005940 <_ZN7_thread8globalIdE>
    80001198:	00073783          	ld	a5,0(a4)
    8000119c:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    800011a0:	00d73023          	sd	a3,0(a4)
    800011a4:	02f4bc23          	sd	a5,56(s1)
    this->arg=arg;
    800011a8:	0324b823          	sd	s2,48(s1)
}
    800011ac:	02813083          	ld	ra,40(sp)
    800011b0:	02013403          	ld	s0,32(sp)
    800011b4:	01813483          	ld	s1,24(sp)
    800011b8:	01013903          	ld	s2,16(sp)
    800011bc:	00813983          	ld	s3,8(sp)
    800011c0:	03010113          	addi	sp,sp,48
    800011c4:	00008067          	ret
        stack(body!= nullptr ? new uint64[DEFAULT_STACK_SIZE]: nullptr),
    800011c8:	00000513          	li	a0,0
    800011cc:	f95ff06f          	j	80001160 <_ZN7_threadC1EPFvPvEmS0_+0x3c>
                 stack != nullptr ? (uint64)&stack[DEFAULT_STACK_SIZE]:0
    800011d0:	00000513          	li	a0,0
    800011d4:	fa9ff06f          	j	8000117c <_ZN7_threadC1EPFvPvEmS0_+0x58>

00000000800011d8 <_ZN7_thread5startEv>:

void _thread::start() {
    800011d8:	ff010113          	addi	sp,sp,-16
    800011dc:	00113423          	sd	ra,8(sp)
    800011e0:	00813023          	sd	s0,0(sp)
    800011e4:	01010413          	addi	s0,sp,16
//    if(running->status==Status::FINISHED)return;
//    if(running->status==Status::READY)return;

    //set thread to ready and put it to scheduler
//    running->status=Status::READY;
    Scheduler::put(this);
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	4fc080e7          	jalr	1276(ra) # 800016e4 <_ZN9Scheduler3putEP7_thread>
}
    800011f0:	00813083          	ld	ra,8(sp)
    800011f4:	00013403          	ld	s0,0(sp)
    800011f8:	01010113          	addi	sp,sp,16
    800011fc:	00008067          	ret

0000000080001200 <_ZN7_thread5yieldEv>:

void _thread::yield() {
    80001200:	ff010113          	addi	sp,sp,-16
    80001204:	00813423          	sd	s0,8(sp)
    80001208:	01010413          	addi	s0,sp,16
    //save current value of a0 for later to restore
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    8000120c:	00050793          	mv	a5,a0

    uint64 flag = 0x04;
    //write flag to a0 so that the trapHandler knows to do dispatch, not syscall
    __asm__ volatile("mv a0, %0" : : "r" (flag));
    80001210:	00400713          	li	a4,4
    80001214:	00070513          	mv	a0,a4
    __asm__ volatile ("ecall");
    80001218:	00000073          	ecall

    //restore a0 value
    __asm__ volatile("mv a0, %0" : : "r" (a0reg));
    8000121c:	00078513          	mv	a0,a5

}
    80001220:	00813403          	ld	s0,8(sp)
    80001224:	01010113          	addi	sp,sp,16
    80001228:	00008067          	ret

000000008000122c <_ZN7_thread13threadWrapperEv>:
    running = Scheduler::get();

    _thread::contextSwitch(&old->context, &running->context);
}

void _thread::threadWrapper() {
    8000122c:	fe010113          	addi	sp,sp,-32
    80001230:	00113c23          	sd	ra,24(sp)
    80001234:	00813823          	sd	s0,16(sp)
    80001238:	00913423          	sd	s1,8(sp)
    8000123c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();    //pop privileges, go back to user mode and allow interrupts
    80001240:	00001097          	auipc	ra,0x1
    80001244:	954080e7          	jalr	-1708(ra) # 80001b94 <_ZN5Riscv10popSppSpieEv>
    running->body(&running->arg);   //call the function with argument arg
    80001248:	00004497          	auipc	s1,0x4
    8000124c:	6f848493          	addi	s1,s1,1784 # 80005940 <_ZN7_thread8globalIdE>
    80001250:	0084b503          	ld	a0,8(s1)
    80001254:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80001258:	03050513          	addi	a0,a0,48
    8000125c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001260:	0084b783          	ld	a5,8(s1)
public:
    ~_thread() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001264:	00100713          	li	a4,1
    80001268:	02e78423          	sb	a4,40(a5)
    _thread::yield();   //after the thread finished, explicitly call yield
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	f94080e7          	jalr	-108(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001274:	01813083          	ld	ra,24(sp)
    80001278:	01013403          	ld	s0,16(sp)
    8000127c:	00813483          	ld	s1,8(sp)
    80001280:	02010113          	addi	sp,sp,32
    80001284:	00008067          	ret

0000000080001288 <_ZN7_thread8dispatchEv>:
void _thread::dispatch() {
    80001288:	fe010113          	addi	sp,sp,-32
    8000128c:	00113c23          	sd	ra,24(sp)
    80001290:	00813823          	sd	s0,16(sp)
    80001294:	00913423          	sd	s1,8(sp)
    80001298:	02010413          	addi	s0,sp,32
    _thread* old = running;
    8000129c:	00004497          	auipc	s1,0x4
    800012a0:	6ac4b483          	ld	s1,1708(s1) # 80005948 <_ZN7_thread7runningE>
    bool isFinished() const { return finished; }
    800012a4:	0284c783          	lbu	a5,40(s1)
    if(!old->isFinished()) { Scheduler::put(old); }
    800012a8:	02078c63          	beqz	a5,800012e0 <_ZN7_thread8dispatchEv+0x58>
    running = Scheduler::get();
    800012ac:	00000097          	auipc	ra,0x0
    800012b0:	3d0080e7          	jalr	976(ra) # 8000167c <_ZN9Scheduler3getEv>
    800012b4:	00004797          	auipc	a5,0x4
    800012b8:	68a7ba23          	sd	a0,1684(a5) # 80005948 <_ZN7_thread7runningE>
    _thread::contextSwitch(&old->context, &running->context);
    800012bc:	01050593          	addi	a1,a0,16
    800012c0:	01048513          	addi	a0,s1,16
    800012c4:	00000097          	auipc	ra,0x0
    800012c8:	e4c080e7          	jalr	-436(ra) # 80001110 <_ZN7_thread13contextSwitchEPNS_7ContextES1_>
}
    800012cc:	01813083          	ld	ra,24(sp)
    800012d0:	01013403          	ld	s0,16(sp)
    800012d4:	00813483          	ld	s1,8(sp)
    800012d8:	02010113          	addi	sp,sp,32
    800012dc:	00008067          	ret
    if(!old->isFinished()) { Scheduler::put(old); }
    800012e0:	00048513          	mv	a0,s1
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	400080e7          	jalr	1024(ra) # 800016e4 <_ZN9Scheduler3putEP7_thread>
    800012ec:	fc1ff06f          	j	800012ac <_ZN7_thread8dispatchEv+0x24>

00000000800012f0 <_ZN7_threadnwEm>:

void* _thread::operator new(size_t n) {
    800012f0:	ff010113          	addi	sp,sp,-16
    800012f4:	00113423          	sd	ra,8(sp)
    800012f8:	00813023          	sd	s0,0(sp)
    800012fc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001300:	00001097          	auipc	ra,0x1
    80001304:	954080e7          	jalr	-1708(ra) # 80001c54 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001308:	00813083          	ld	ra,8(sp)
    8000130c:	00013403          	ld	s0,0(sp)
    80001310:	01010113          	addi	sp,sp,16
    80001314:	00008067          	ret

0000000080001318 <_ZN7_threadnaEm>:

void* _thread::operator new[](size_t n) {
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmem_alloc(n);
    80001328:	00001097          	auipc	ra,0x1
    8000132c:	92c080e7          	jalr	-1748(ra) # 80001c54 <_ZN15MemoryAllocator10kmem_allocEm>
}
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_ZN7_threaddlEPv>:

void _thread::operator delete(void *p) noexcept {
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001350:	00001097          	auipc	ra,0x1
    80001354:	92c080e7          	jalr	-1748(ra) # 80001c7c <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_ZN7_thread12createThreadEPFvPvES0_>:
_thread* _thread::createThread(Body body, void* arg) {
    80001368:	fd010113          	addi	sp,sp,-48
    8000136c:	02113423          	sd	ra,40(sp)
    80001370:	02813023          	sd	s0,32(sp)
    80001374:	00913c23          	sd	s1,24(sp)
    80001378:	01213823          	sd	s2,16(sp)
    8000137c:	01313423          	sd	s3,8(sp)
    80001380:	03010413          	addi	s0,sp,48
    80001384:	00050913          	mv	s2,a0
    80001388:	00058993          	mv	s3,a1
    return new _thread(body, DEFAULT_TIME_SLICE, arg);
    8000138c:	04800513          	li	a0,72
    80001390:	00000097          	auipc	ra,0x0
    80001394:	f60080e7          	jalr	-160(ra) # 800012f0 <_ZN7_threadnwEm>
    80001398:	00050493          	mv	s1,a0
    8000139c:	00098693          	mv	a3,s3
    800013a0:	00200613          	li	a2,2
    800013a4:	00090593          	mv	a1,s2
    800013a8:	00000097          	auipc	ra,0x0
    800013ac:	d7c080e7          	jalr	-644(ra) # 80001124 <_ZN7_threadC1EPFvPvEmS0_>
    800013b0:	0200006f          	j	800013d0 <_ZN7_thread12createThreadEPFvPvES0_+0x68>
    800013b4:	00050913          	mv	s2,a0
    800013b8:	00048513          	mv	a0,s1
    800013bc:	00000097          	auipc	ra,0x0
    800013c0:	f84080e7          	jalr	-124(ra) # 80001340 <_ZN7_threaddlEPv>
    800013c4:	00090513          	mv	a0,s2
    800013c8:	00005097          	auipc	ra,0x5
    800013cc:	670080e7          	jalr	1648(ra) # 80006a38 <_Unwind_Resume>
}
    800013d0:	00048513          	mv	a0,s1
    800013d4:	02813083          	ld	ra,40(sp)
    800013d8:	02013403          	ld	s0,32(sp)
    800013dc:	01813483          	ld	s1,24(sp)
    800013e0:	01013903          	ld	s2,16(sp)
    800013e4:	00813983          	ld	s3,8(sp)
    800013e8:	03010113          	addi	sp,sp,48
    800013ec:	00008067          	ret

00000000800013f0 <_ZN7_threaddaEPv>:

void _thread::operator delete[](void *p) noexcept {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00113423          	sd	ra,8(sp)
    800013f8:	00813023          	sd	s0,0(sp)
    800013fc:	01010413          	addi	s0,sp,16
    MemoryAllocator::kmem_free(p);
    80001400:	00001097          	auipc	ra,0x1
    80001404:	87c080e7          	jalr	-1924(ra) # 80001c7c <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z7syscallP4args>:
    uint64 a2;
    uint64 a3;

};

void syscall(args* arg){
    80001418:	ff010113          	addi	sp,sp,-16
    8000141c:	00813423          	sd	s0,8(sp)
    80001420:	01010413          	addi	s0,sp,16
    //should prepare arguments in registers
    //should call interrupt routine with ecall


    uint64 arg0 = arg->a0;
    80001424:	00053603          	ld	a2,0(a0)
    uint64 arg1 = arg->a1;
    80001428:	00853683          	ld	a3,8(a0)
    uint64 arg2 = arg->a2;
    8000142c:	01053703          	ld	a4,16(a0)
    uint64 arg3 = arg->a3;
    80001430:	01853783          	ld	a5,24(a0)

    //lock this section?
    __asm__ volatile("mv a0, %0" : : "r" (arg0));
    80001434:	00060513          	mv	a0,a2
    __asm__ volatile("mv a1, %0" : : "r" (arg1));
    80001438:	00068593          	mv	a1,a3
    __asm__ volatile("mv a2, %0" : : "r" (arg2));
    8000143c:	00070613          	mv	a2,a4
    __asm__ volatile("mv a3, %0" : : "r" (arg3));
    80001440:	00078693          	mv	a3,a5



//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    __asm__ volatile ("ecall");
    80001444:	00000073          	ecall


}
    80001448:	00813403          	ld	s0,8(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z9mem_allocm>:

void* mem_alloc (size_t size){
    80001454:	fd010113          	addi	sp,sp,-48
    80001458:	02113423          	sd	ra,40(sp)
    8000145c:	02813023          	sd	s0,32(sp)
    80001460:	03010413          	addi	s0,sp,48
    //prepares parameters to arguments
    //executes system call instruction
    args arg;
    arg.a0=0x01;
    80001464:	00100793          	li	a5,1
    80001468:	fcf43823          	sd	a5,-48(s0)

    size_t blocks = size/MEM_BLOCK_SIZE;
    8000146c:	00655793          	srli	a5,a0,0x6
    if(size%MEM_BLOCK_SIZE!=0)blocks++;
    80001470:	03f57513          	andi	a0,a0,63
    80001474:	00050463          	beqz	a0,8000147c <_Z9mem_allocm+0x28>
    80001478:	00178793          	addi	a5,a5,1
    arg.a1=blocks;
    8000147c:	fcf43c23          	sd	a5,-40(s0)

    syscall(&arg);
    80001480:	fd040513          	addi	a0,s0,-48
    80001484:	00000097          	auipc	ra,0x0
    80001488:	f94080e7          	jalr	-108(ra) # 80001418 <_Z7syscallP4args>

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000148c:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001490:	02813083          	ld	ra,40(sp)
    80001494:	02013403          	ld	s0,32(sp)
    80001498:	03010113          	addi	sp,sp,48
    8000149c:	00008067          	ret

00000000800014a0 <_Z8mem_freePv>:

int mem_free (void* p){
    800014a0:	fd010113          	addi	sp,sp,-48
    800014a4:	02113423          	sd	ra,40(sp)
    800014a8:	02813023          	sd	s0,32(sp)
    800014ac:	03010413          	addi	s0,sp,48
    args arg;
    arg.a0=0x02;
    800014b0:	00200793          	li	a5,2
    800014b4:	fcf43823          	sd	a5,-48(s0)
    arg.a1=(uint64)p;
    800014b8:	fca43c23          	sd	a0,-40(s0)

    syscall(&arg);
    800014bc:	fd040513          	addi	a0,s0,-48
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	f58080e7          	jalr	-168(ra) # 80001418 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014c8:	00050513          	mv	a0,a0
    return (int)ret;
}
    800014cc:	0005051b          	sext.w	a0,a0
    800014d0:	02813083          	ld	ra,40(sp)
    800014d4:	02013403          	ld	s0,32(sp)
    800014d8:	03010113          	addi	sp,sp,48
    800014dc:	00008067          	ret

00000000800014e0 <_Z13thread_createPP7_threadPFvPvES2_>:
typedef _thread* thread_t;  //thread_t je pokazivac, a handle je pokazivac na pokazivac tipa _thread
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    800014e0:	fd010113          	addi	sp,sp,-48
    800014e4:	02113423          	sd	ra,40(sp)
    800014e8:	02813023          	sd	s0,32(sp)
    800014ec:	03010413          	addi	s0,sp,48
    args myArgs;
    myArgs.a0=0x11;
    800014f0:	01100793          	li	a5,17
    800014f4:	fcf43823          	sd	a5,-48(s0)
    myArgs.a1=(uint64)handle;   //on address handle there is thread_t adress
    800014f8:	fca43c23          	sd	a0,-40(s0)
    myArgs.a2=(uint64)start_routine;
    800014fc:	feb43023          	sd	a1,-32(s0)
    myArgs.a3=(uint64)arg;
    80001500:	fec43423          	sd	a2,-24(s0)

    syscall(&myArgs);
    80001504:	fd040513          	addi	a0,s0,-48
    80001508:	00000097          	auipc	ra,0x0
    8000150c:	f10080e7          	jalr	-240(ra) # 80001418 <_Z7syscallP4args>
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001510:	00050793          	mv	a5,a0
    if((thread_t*)ret != nullptr){
    80001514:	00078c63          	beqz	a5,8000152c <_Z13thread_createPP7_threadPFvPvES2_+0x4c>
        handle = (thread_t*)&ret;
        return 0;
    80001518:	00000513          	li	a0,0
    }
    else{
        return -1;
    }
    return (int)ret;
}
    8000151c:	02813083          	ld	ra,40(sp)
    80001520:	02013403          	ld	s0,32(sp)
    80001524:	03010113          	addi	sp,sp,48
    80001528:	00008067          	ret
        return -1;
    8000152c:	fff00513          	li	a0,-1
    80001530:	fedff06f          	j	8000151c <_Z13thread_createPP7_threadPFvPvES2_+0x3c>

0000000080001534 <main>:
#include "../h/syscall_c.h"
#include "../h/Print.hpp"
#include "../h/workers.hpp"
#include "../h/_thread.hpp"

int main(){
    80001534:	fd010113          	addi	sp,sp,-48
    80001538:	02113423          	sd	ra,40(sp)
    8000153c:	02813023          	sd	s0,32(sp)
    80001540:	03010413          	addi	s0,sp,48

//    Riscv::w_stvec((uint64)&supervisorTrap);
//    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
//    __asm__ volatile ("ecall");
    Riscv::w_stvec((uint64)&Riscv::supervisorTrap);
    80001544:	00004797          	auipc	a5,0x4
    80001548:	3847b783          	ld	a5,900(a5) # 800058c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000154c:	10579073          	csrw	stvec,a5
//    else{
//        printString("not freed \n");
//    }

    _thread* threads[3];
    if(!thread_create(&threads[0], nullptr, nullptr)){
    80001550:	00000613          	li	a2,0
    80001554:	00000593          	li	a1,0
    80001558:	fd840513          	addi	a0,s0,-40
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	f84080e7          	jalr	-124(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    80001564:	08051e63          	bnez	a0,80001600 <main+0xcc>
        printString("main created \n");
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	a9850513          	addi	a0,a0,-1384 # 80005000 <kvmincrease+0xe30>
    80001570:	00000097          	auipc	ra,0x0
    80001574:	734080e7          	jalr	1844(ra) # 80001ca4 <_Z11printStringPKc>

    } else{
        printString("error main\n");

    }
    threads[0]->start();
    80001578:	fd843503          	ld	a0,-40(s0)
    8000157c:	00000097          	auipc	ra,0x0
    80001580:	c5c080e7          	jalr	-932(ra) # 800011d8 <_ZN7_thread5startEv>
    if(!thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(workerBodyA), nullptr)){
    80001584:	00000613          	li	a2,0
    80001588:	00004597          	auipc	a1,0x4
    8000158c:	3505b583          	ld	a1,848(a1) # 800058d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001590:	fe040513          	addi	a0,s0,-32
    80001594:	00000097          	auipc	ra,0x0
    80001598:	f4c080e7          	jalr	-180(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    8000159c:	06051c63          	bnez	a0,80001614 <main+0xe0>
        printString("thread created \n");
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	a8050513          	addi	a0,a0,-1408 # 80005020 <kvmincrease+0xe50>
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	6fc080e7          	jalr	1788(ra) # 80001ca4 <_Z11printStringPKc>

    } else{
        printString("error worker a\n");
    }

    threads[1]->start();
    800015b0:	fe043503          	ld	a0,-32(s0)
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	c24080e7          	jalr	-988(ra) # 800011d8 <_ZN7_thread5startEv>

    if(!thread_create(&threads[2], reinterpret_cast<void (*)(void *)>(workerBodyB), nullptr)){
    800015bc:	00000613          	li	a2,0
    800015c0:	00004597          	auipc	a1,0x4
    800015c4:	3105b583          	ld	a1,784(a1) # 800058d0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015c8:	fe840513          	addi	a0,s0,-24
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	f14080e7          	jalr	-236(ra) # 800014e0 <_Z13thread_createPP7_threadPFvPvES2_>
    800015d4:	04051a63          	bnez	a0,80001628 <main+0xf4>
        printString("thread created \n");
    800015d8:	00004517          	auipc	a0,0x4
    800015dc:	a4850513          	addi	a0,a0,-1464 # 80005020 <kvmincrease+0xe50>
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	6c4080e7          	jalr	1732(ra) # 80001ca4 <_Z11printStringPKc>

    } else{
        printString("error worker a\n");

    }
    threads[2]->start();
    800015e8:	fe843503          	ld	a0,-24(s0)
    800015ec:	00000097          	auipc	ra,0x0
    800015f0:	bec080e7          	jalr	-1044(ra) # 800011d8 <_ZN7_thread5startEv>

    while (true)
    {
        _thread::yield();   //u uposlenom cekanju radimo yield
    800015f4:	00000097          	auipc	ra,0x0
    800015f8:	c0c080e7          	jalr	-1012(ra) # 80001200 <_ZN7_thread5yieldEv>
    800015fc:	ff9ff06f          	j	800015f4 <main+0xc0>
        printString("error main\n");
    80001600:	00004517          	auipc	a0,0x4
    80001604:	a1050513          	addi	a0,a0,-1520 # 80005010 <kvmincrease+0xe40>
    80001608:	00000097          	auipc	ra,0x0
    8000160c:	69c080e7          	jalr	1692(ra) # 80001ca4 <_Z11printStringPKc>
    80001610:	f69ff06f          	j	80001578 <main+0x44>
        printString("error worker a\n");
    80001614:	00004517          	auipc	a0,0x4
    80001618:	a2450513          	addi	a0,a0,-1500 # 80005038 <kvmincrease+0xe68>
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	688080e7          	jalr	1672(ra) # 80001ca4 <_Z11printStringPKc>
    80001624:	f8dff06f          	j	800015b0 <main+0x7c>
        printString("error worker a\n");
    80001628:	00004517          	auipc	a0,0x4
    8000162c:	a1050513          	addi	a0,a0,-1520 # 80005038 <kvmincrease+0xe68>
    80001630:	00000097          	auipc	ra,0x0
    80001634:	674080e7          	jalr	1652(ra) # 80001ca4 <_Z11printStringPKc>
    80001638:	fb1ff06f          	j	800015e8 <main+0xb4>

000000008000163c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(_thread *tcb)
{
    readyThreadQueue.addLast(tcb);
}
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00813423          	sd	s0,8(sp)
    80001644:	01010413          	addi	s0,sp,16
    80001648:	00100793          	li	a5,1
    8000164c:	00f50863          	beq	a0,a5,8000165c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001650:	00813403          	ld	s0,8(sp)
    80001654:	01010113          	addi	sp,sp,16
    80001658:	00008067          	ret
    8000165c:	000107b7          	lui	a5,0x10
    80001660:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001664:	fef596e3          	bne	a1,a5,80001650 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001668:	00004797          	auipc	a5,0x4
    8000166c:	2f078793          	addi	a5,a5,752 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    80001670:	0007b023          	sd	zero,0(a5)
    80001674:	0007b423          	sd	zero,8(a5)
    80001678:	fd9ff06f          	j	80001650 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000167c <_ZN9Scheduler3getEv>:
_thread* Scheduler::get() {
    8000167c:	fe010113          	addi	sp,sp,-32
    80001680:	00113c23          	sd	ra,24(sp)
    80001684:	00813823          	sd	s0,16(sp)
    80001688:	00913423          	sd	s1,8(sp)
    8000168c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001690:	00004517          	auipc	a0,0x4
    80001694:	2c853503          	ld	a0,712(a0) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    80001698:	04050263          	beqz	a0,800016dc <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000169c:	00853783          	ld	a5,8(a0)
    800016a0:	00004717          	auipc	a4,0x4
    800016a4:	2af73c23          	sd	a5,696(a4) # 80005958 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800016a8:	02078463          	beqz	a5,800016d0 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800016ac:	00053483          	ld	s1,0(a0)
        delete elem;
    800016b0:	00000097          	auipc	ra,0x0
    800016b4:	124080e7          	jalr	292(ra) # 800017d4 <_ZdlPv>
}
    800016b8:	00048513          	mv	a0,s1
    800016bc:	01813083          	ld	ra,24(sp)
    800016c0:	01013403          	ld	s0,16(sp)
    800016c4:	00813483          	ld	s1,8(sp)
    800016c8:	02010113          	addi	sp,sp,32
    800016cc:	00008067          	ret
        if (!head) { tail = 0; }
    800016d0:	00004797          	auipc	a5,0x4
    800016d4:	2807b823          	sd	zero,656(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800016d8:	fd5ff06f          	j	800016ac <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800016dc:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800016e0:	fd9ff06f          	j	800016b8 <_ZN9Scheduler3getEv+0x3c>

00000000800016e4 <_ZN9Scheduler3putEP7_thread>:
{
    800016e4:	fe010113          	addi	sp,sp,-32
    800016e8:	00113c23          	sd	ra,24(sp)
    800016ec:	00813823          	sd	s0,16(sp)
    800016f0:	00913423          	sd	s1,8(sp)
    800016f4:	02010413          	addi	s0,sp,32
    800016f8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800016fc:	01000513          	li	a0,16
    80001700:	00000097          	auipc	ra,0x0
    80001704:	084080e7          	jalr	132(ra) # 80001784 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001708:	00953023          	sd	s1,0(a0)
    8000170c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001710:	00004797          	auipc	a5,0x4
    80001714:	2507b783          	ld	a5,592(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001718:	02078263          	beqz	a5,8000173c <_ZN9Scheduler3putEP7_thread+0x58>
            tail->next = elem;
    8000171c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001720:	00004797          	auipc	a5,0x4
    80001724:	24a7b023          	sd	a0,576(a5) # 80005960 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80001728:	01813083          	ld	ra,24(sp)
    8000172c:	01013403          	ld	s0,16(sp)
    80001730:	00813483          	ld	s1,8(sp)
    80001734:	02010113          	addi	sp,sp,32
    80001738:	00008067          	ret
            head = tail = elem;
    8000173c:	00004797          	auipc	a5,0x4
    80001740:	21c78793          	addi	a5,a5,540 # 80005958 <_ZN9Scheduler16readyThreadQueueE>
    80001744:	00a7b423          	sd	a0,8(a5)
    80001748:	00a7b023          	sd	a0,0(a5)
    8000174c:	fddff06f          	j	80001728 <_ZN9Scheduler3putEP7_thread+0x44>

0000000080001750 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001750:	ff010113          	addi	sp,sp,-16
    80001754:	00113423          	sd	ra,8(sp)
    80001758:	00813023          	sd	s0,0(sp)
    8000175c:	01010413          	addi	s0,sp,16
    80001760:	000105b7          	lui	a1,0x10
    80001764:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001768:	00100513          	li	a0,1
    8000176c:	00000097          	auipc	ra,0x0
    80001770:	ed0080e7          	jalr	-304(ra) # 8000163c <_Z41__static_initialization_and_destruction_0ii>
    80001774:	00813083          	ld	ra,8(sp)
    80001778:	00013403          	ld	s0,0(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <_Znwm>:
extern void mem_free(void* p);

using size_t = decltype(sizeof(0));


void* operator new(size_t n){
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00113423          	sd	ra,8(sp)
    8000178c:	00813023          	sd	s0,0(sp)
    80001790:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001794:	00000097          	auipc	ra,0x0
    80001798:	cc0080e7          	jalr	-832(ra) # 80001454 <_Z9mem_allocm>
}
    8000179c:	00813083          	ld	ra,8(sp)
    800017a0:	00013403          	ld	s0,0(sp)
    800017a4:	01010113          	addi	sp,sp,16
    800017a8:	00008067          	ret

00000000800017ac <_Znam>:

void* operator new[](size_t n){
    800017ac:	ff010113          	addi	sp,sp,-16
    800017b0:	00113423          	sd	ra,8(sp)
    800017b4:	00813023          	sd	s0,0(sp)
    800017b8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c98080e7          	jalr	-872(ra) # 80001454 <_Z9mem_allocm>
}
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_ZdlPv>:

void operator delete(void* p) noexcept{
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800017e4:	00000097          	auipc	ra,0x0
    800017e8:	cbc080e7          	jalr	-836(ra) # 800014a0 <_Z8mem_freePv>
}
    800017ec:	00813083          	ld	ra,8(sp)
    800017f0:	00013403          	ld	s0,0(sp)
    800017f4:	01010113          	addi	sp,sp,16
    800017f8:	00008067          	ret

00000000800017fc <_ZdaPv>:

void operator delete[] (void* p)noexcept{
    800017fc:	ff010113          	addi	sp,sp,-16
    80001800:	00113423          	sd	ra,8(sp)
    80001804:	00813023          	sd	s0,0(sp)
    80001808:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000180c:	00000097          	auipc	ra,0x0
    80001810:	c94080e7          	jalr	-876(ra) # 800014a0 <_Z8mem_freePv>

}
    80001814:	00813083          	ld	ra,8(sp)
    80001818:	00013403          	ld	s0,0(sp)
    8000181c:	01010113          	addi	sp,sp,16
    80001820:	00008067          	ret

0000000080001824 <_ZL9fibonaccim>:
#include "../lib/hw.h"
#include "../h/_thread.hpp"
#include "../h/Print.hpp"

static uint64 fibonacci(uint64 n)
{
    80001824:	fe010113          	addi	sp,sp,-32
    80001828:	00113c23          	sd	ra,24(sp)
    8000182c:	00813823          	sd	s0,16(sp)
    80001830:	00913423          	sd	s1,8(sp)
    80001834:	01213023          	sd	s2,0(sp)
    80001838:	02010413          	addi	s0,sp,32
    8000183c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001840:	00100793          	li	a5,1
    80001844:	02a7f663          	bgeu	a5,a0,80001870 <_ZL9fibonaccim+0x4c>
    if (n % 4 == 0) _thread::yield();
    80001848:	00357793          	andi	a5,a0,3
    8000184c:	02078e63          	beqz	a5,80001888 <_ZL9fibonaccim+0x64>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001850:	fff48513          	addi	a0,s1,-1
    80001854:	00000097          	auipc	ra,0x0
    80001858:	fd0080e7          	jalr	-48(ra) # 80001824 <_ZL9fibonaccim>
    8000185c:	00050913          	mv	s2,a0
    80001860:	ffe48513          	addi	a0,s1,-2
    80001864:	00000097          	auipc	ra,0x0
    80001868:	fc0080e7          	jalr	-64(ra) # 80001824 <_ZL9fibonaccim>
    8000186c:	00a90533          	add	a0,s2,a0
}
    80001870:	01813083          	ld	ra,24(sp)
    80001874:	01013403          	ld	s0,16(sp)
    80001878:	00813483          	ld	s1,8(sp)
    8000187c:	00013903          	ld	s2,0(sp)
    80001880:	02010113          	addi	sp,sp,32
    80001884:	00008067          	ret
    if (n % 4 == 0) _thread::yield();
    80001888:	00000097          	auipc	ra,0x0
    8000188c:	978080e7          	jalr	-1672(ra) # 80001200 <_ZN7_thread5yieldEv>
    80001890:	fc1ff06f          	j	80001850 <_ZL9fibonaccim+0x2c>

0000000080001894 <_Z11workerBodyAv>:

void workerBodyA()
{
    80001894:	fe010113          	addi	sp,sp,-32
    80001898:	00113c23          	sd	ra,24(sp)
    8000189c:	00813823          	sd	s0,16(sp)
    800018a0:	00913423          	sd	s1,8(sp)
    800018a4:	01213023          	sd	s2,0(sp)
    800018a8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018ac:	00000493          	li	s1,0
    800018b0:	0380006f          	j	800018e8 <_Z11workerBodyAv+0x54>
    for (; i < 3; i++)
    {
        printString("A: i=");
    800018b4:	00003517          	auipc	a0,0x3
    800018b8:	79450513          	addi	a0,a0,1940 # 80005048 <kvmincrease+0xe78>
    800018bc:	00000097          	auipc	ra,0x0
    800018c0:	3e8080e7          	jalr	1000(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    800018c4:	00048513          	mv	a0,s1
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	44c080e7          	jalr	1100(ra) # 80001d14 <_Z12printIntegerm>
        printString("\n");
    800018d0:	00003517          	auipc	a0,0x3
    800018d4:	78850513          	addi	a0,a0,1928 # 80005058 <kvmincrease+0xe88>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	3cc080e7          	jalr	972(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 3; i++)
    800018e0:	0014849b          	addiw	s1,s1,1
    800018e4:	0ff4f493          	andi	s1,s1,255
    800018e8:	00200793          	li	a5,2
    800018ec:	fc97f4e3          	bgeu	a5,s1,800018b4 <_Z11workerBodyAv+0x20>
    }

    printString("A: yield\n");
    800018f0:	00003517          	auipc	a0,0x3
    800018f4:	76050513          	addi	a0,a0,1888 # 80005050 <kvmincrease+0xe80>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	3ac080e7          	jalr	940(ra) # 80001ca4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001900:	00700313          	li	t1,7
    _thread::yield();
    80001904:	00000097          	auipc	ra,0x0
    80001908:	8fc080e7          	jalr	-1796(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000190c:	00030913          	mv	s2,t1

    printString("A: t1=");
    80001910:	00003517          	auipc	a0,0x3
    80001914:	75050513          	addi	a0,a0,1872 # 80005060 <kvmincrease+0xe90>
    80001918:	00000097          	auipc	ra,0x0
    8000191c:	38c080e7          	jalr	908(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(t1);
    80001920:	00090513          	mv	a0,s2
    80001924:	00000097          	auipc	ra,0x0
    80001928:	3f0080e7          	jalr	1008(ra) # 80001d14 <_Z12printIntegerm>
    printString("\n");
    8000192c:	00003517          	auipc	a0,0x3
    80001930:	72c50513          	addi	a0,a0,1836 # 80005058 <kvmincrease+0xe88>
    80001934:	00000097          	auipc	ra,0x0
    80001938:	370080e7          	jalr	880(ra) # 80001ca4 <_Z11printStringPKc>

    uint64 result = fibonacci(20);
    8000193c:	01400513          	li	a0,20
    80001940:	00000097          	auipc	ra,0x0
    80001944:	ee4080e7          	jalr	-284(ra) # 80001824 <_ZL9fibonaccim>
    80001948:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    8000194c:	00003517          	auipc	a0,0x3
    80001950:	71c50513          	addi	a0,a0,1820 # 80005068 <kvmincrease+0xe98>
    80001954:	00000097          	auipc	ra,0x0
    80001958:	350080e7          	jalr	848(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(result);
    8000195c:	00090513          	mv	a0,s2
    80001960:	00000097          	auipc	ra,0x0
    80001964:	3b4080e7          	jalr	948(ra) # 80001d14 <_Z12printIntegerm>
    printString("\n");
    80001968:	00003517          	auipc	a0,0x3
    8000196c:	6f050513          	addi	a0,a0,1776 # 80005058 <kvmincrease+0xe88>
    80001970:	00000097          	auipc	ra,0x0
    80001974:	334080e7          	jalr	820(ra) # 80001ca4 <_Z11printStringPKc>
    80001978:	0380006f          	j	800019b0 <_Z11workerBodyAv+0x11c>

    for (; i < 6; i++)
    {
        printString("A: i=");
    8000197c:	00003517          	auipc	a0,0x3
    80001980:	6cc50513          	addi	a0,a0,1740 # 80005048 <kvmincrease+0xe78>
    80001984:	00000097          	auipc	ra,0x0
    80001988:	320080e7          	jalr	800(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    8000198c:	00048513          	mv	a0,s1
    80001990:	00000097          	auipc	ra,0x0
    80001994:	384080e7          	jalr	900(ra) # 80001d14 <_Z12printIntegerm>
        printString("\n");
    80001998:	00003517          	auipc	a0,0x3
    8000199c:	6c050513          	addi	a0,a0,1728 # 80005058 <kvmincrease+0xe88>
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	304080e7          	jalr	772(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 6; i++)
    800019a8:	0014849b          	addiw	s1,s1,1
    800019ac:	0ff4f493          	andi	s1,s1,255
    800019b0:	00500793          	li	a5,5
    800019b4:	fc97f4e3          	bgeu	a5,s1,8000197c <_Z11workerBodyAv+0xe8>
    }

    _thread::running->setFinished(true);
    800019b8:	00004797          	auipc	a5,0x4
    800019bc:	f087b783          	ld	a5,-248(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800019c0:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    800019c4:	00100713          	li	a4,1
    800019c8:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	834080e7          	jalr	-1996(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    800019d4:	01813083          	ld	ra,24(sp)
    800019d8:	01013403          	ld	s0,16(sp)
    800019dc:	00813483          	ld	s1,8(sp)
    800019e0:	00013903          	ld	s2,0(sp)
    800019e4:	02010113          	addi	sp,sp,32
    800019e8:	00008067          	ret

00000000800019ec <_Z11workerBodyBv>:

void workerBodyB()
{
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	01213023          	sd	s2,0(sp)
    80001a00:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a04:	00a00493          	li	s1,10
    80001a08:	0380006f          	j	80001a40 <_Z11workerBodyBv+0x54>
    for (; i < 13; i++)
    {
        printString("B: i=");
    80001a0c:	00003517          	auipc	a0,0x3
    80001a10:	66c50513          	addi	a0,a0,1644 # 80005078 <kvmincrease+0xea8>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	290080e7          	jalr	656(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001a1c:	00048513          	mv	a0,s1
    80001a20:	00000097          	auipc	ra,0x0
    80001a24:	2f4080e7          	jalr	756(ra) # 80001d14 <_Z12printIntegerm>
        printString("\n");
    80001a28:	00003517          	auipc	a0,0x3
    80001a2c:	63050513          	addi	a0,a0,1584 # 80005058 <kvmincrease+0xe88>
    80001a30:	00000097          	auipc	ra,0x0
    80001a34:	274080e7          	jalr	628(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 13; i++)
    80001a38:	0014849b          	addiw	s1,s1,1
    80001a3c:	0ff4f493          	andi	s1,s1,255
    80001a40:	00c00793          	li	a5,12
    80001a44:	fc97f4e3          	bgeu	a5,s1,80001a0c <_Z11workerBodyBv+0x20>
    }

    printString("B: yield\n");
    80001a48:	00003517          	auipc	a0,0x3
    80001a4c:	63850513          	addi	a0,a0,1592 # 80005080 <kvmincrease+0xeb0>
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	254080e7          	jalr	596(ra) # 80001ca4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001a58:	00500313          	li	t1,5
    _thread::yield();
    80001a5c:	fffff097          	auipc	ra,0xfffff
    80001a60:	7a4080e7          	jalr	1956(ra) # 80001200 <_ZN7_thread5yieldEv>

    uint64 result = fibonacci(23);
    80001a64:	01700513          	li	a0,23
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	dbc080e7          	jalr	-580(ra) # 80001824 <_ZL9fibonaccim>
    80001a70:	00050913          	mv	s2,a0
    printString("A: fibonaci=");
    80001a74:	00003517          	auipc	a0,0x3
    80001a78:	5f450513          	addi	a0,a0,1524 # 80005068 <kvmincrease+0xe98>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	228080e7          	jalr	552(ra) # 80001ca4 <_Z11printStringPKc>
    printInteger(result);
    80001a84:	00090513          	mv	a0,s2
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	28c080e7          	jalr	652(ra) # 80001d14 <_Z12printIntegerm>
    printString("\n");
    80001a90:	00003517          	auipc	a0,0x3
    80001a94:	5c850513          	addi	a0,a0,1480 # 80005058 <kvmincrease+0xe88>
    80001a98:	00000097          	auipc	ra,0x0
    80001a9c:	20c080e7          	jalr	524(ra) # 80001ca4 <_Z11printStringPKc>
    80001aa0:	0380006f          	j	80001ad8 <_Z11workerBodyBv+0xec>

    for (; i < 16; i++)
    {
        printString("B: i=");
    80001aa4:	00003517          	auipc	a0,0x3
    80001aa8:	5d450513          	addi	a0,a0,1492 # 80005078 <kvmincrease+0xea8>
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	1f8080e7          	jalr	504(ra) # 80001ca4 <_Z11printStringPKc>
        printInteger(i);
    80001ab4:	00048513          	mv	a0,s1
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	25c080e7          	jalr	604(ra) # 80001d14 <_Z12printIntegerm>
        printString("\n");
    80001ac0:	00003517          	auipc	a0,0x3
    80001ac4:	59850513          	addi	a0,a0,1432 # 80005058 <kvmincrease+0xe88>
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	1dc080e7          	jalr	476(ra) # 80001ca4 <_Z11printStringPKc>
    for (; i < 16; i++)
    80001ad0:	0014849b          	addiw	s1,s1,1
    80001ad4:	0ff4f493          	andi	s1,s1,255
    80001ad8:	00f00793          	li	a5,15
    80001adc:	fc97f4e3          	bgeu	a5,s1,80001aa4 <_Z11workerBodyBv+0xb8>
    }

    _thread::running->setFinished(true);
    80001ae0:	00004797          	auipc	a5,0x4
    80001ae4:	de07b783          	ld	a5,-544(a5) # 800058c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ae8:	0007b783          	ld	a5,0(a5)
    80001aec:	00100713          	li	a4,1
    80001af0:	02e78423          	sb	a4,40(a5)
    _thread::yield();
    80001af4:	fffff097          	auipc	ra,0xfffff
    80001af8:	70c080e7          	jalr	1804(ra) # 80001200 <_ZN7_thread5yieldEv>
}
    80001afc:	01813083          	ld	ra,24(sp)
    80001b00:	01013403          	ld	s0,16(sp)
    80001b04:	00813483          	ld	s1,8(sp)
    80001b08:	00013903          	ld	s2,0(sp)
    80001b0c:	02010113          	addi	sp,sp,32
    80001b10:	00008067          	ret

0000000080001b14 <_ZN5Riscv14syscallHandlerEv>:
#include "../h/Riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/_thread.hpp"


void Riscv::syscallHandler() {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    uint64 arg1;
    uint64 arg2;
    uint64 arg3;
//    uint64 arg4;
//    uint64 arg5;
    __asm__ volatile("mv %0, a0" : "=r" (arg0));    //read system call code
    80001b24:	00050793          	mv	a5,a0
    if(arg0== 0x01 ){
    80001b28:	00100713          	li	a4,1
    80001b2c:	02e78263          	beq	a5,a4,80001b50 <_ZN5Riscv14syscallHandlerEv+0x3c>
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);

        //write return value to a0 register
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    }
    else if(arg0==0x02){
    80001b30:	00200713          	li	a4,2
    80001b34:	02e78863          	beq	a5,a4,80001b64 <_ZN5Riscv14syscallHandlerEv+0x50>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
        int ret = MemoryAllocator::kmem_free((void *) arg1);
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    }
    else if(arg0==0x11){
    80001b38:	01100713          	li	a4,17
    80001b3c:	02e78e63          	beq	a5,a4,80001b78 <_ZN5Riscv14syscallHandlerEv+0x64>



    }

}
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read size from a1 and move it to arg1 local variable
    80001b50:	00058513          	mv	a0,a1
        uint64 ptr= (uint64) MemoryAllocator::kmem_alloc(arg1);
    80001b54:	00000097          	auipc	ra,0x0
    80001b58:	100080e7          	jalr	256(ra) # 80001c54 <_ZN15MemoryAllocator10kmem_allocEm>
        __asm__ volatile("mv a0, %0" : : "r" (ptr));
    80001b5c:	00050513          	mv	a0,a0
    80001b60:	fe1ff06f          	j	80001b40 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //read pointer to free from a1 and move it to arg1 local variable
    80001b64:	00058513          	mv	a0,a1
        int ret = MemoryAllocator::kmem_free((void *) arg1);
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	114080e7          	jalr	276(ra) # 80001c7c <_ZN15MemoryAllocator9kmem_freeEPv>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b70:	00050513          	mv	a0,a0
    80001b74:	fcdff06f          	j	80001b40 <_ZN5Riscv14syscallHandlerEv+0x2c>
        __asm__ volatile("mv %0, a1" : "=r" (arg1));    //handle (thread_t*)
    80001b78:	00058793          	mv	a5,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg2));    //start routine
    80001b7c:	00058513          	mv	a0,a1
        __asm__ volatile("mv %0, a1" : "=r" (arg3));    //argument of start routine
    80001b80:	00058593          	mv	a1,a1
        _thread* t = _thread::createThread((void (*)(void*))arg2,  (void*)arg3);    //t je thread_t
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	7e4080e7          	jalr	2020(ra) # 80001368 <_ZN7_thread12createThreadEPFvPvES0_>
        __asm__ volatile("mv a0, %0" : : "r" (ret));
    80001b8c:	00050513          	mv	a0,a0
}
    80001b90:	fb1ff06f          	j	80001b40 <_ZN5Riscv14syscallHandlerEv+0x2c>

0000000080001b94 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()    //pop supervisor previous privilege, supervisor previous interrupt enable
{
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00813423          	sd	s0,8(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001ba0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");  //exit privileged regime
    80001ba4:	10200073          	sret
}
    80001ba8:	00813403          	ld	s0,8(sp)
    80001bac:	01010113          	addi	sp,sp,16
    80001bb0:	00008067          	ret

0000000080001bb4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap(){
    80001bb4:	fc010113          	addi	sp,sp,-64
    80001bb8:	02113c23          	sd	ra,56(sp)
    80001bbc:	02813823          	sd	s0,48(sp)
    80001bc0:	02913423          	sd	s1,40(sp)
    80001bc4:	03213023          	sd	s2,32(sp)
    80001bc8:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bcc:	142027f3          	csrr	a5,scause
    80001bd0:	fcf43423          	sd	a5,-56(s0)
    return scause;
    80001bd4:	fc843783          	ld	a5,-56(s0)
    uint scause = r_scause();
    80001bd8:	0007879b          	sext.w	a5,a5
    uint64 a0reg;
    __asm__ volatile("mv %0, a0" : "=r" (a0reg));
    80001bdc:	00050693          	mv	a3,a0

    if (scause == 0x0000000000000008UL || scause==0x0000000000000009UL){
    80001be0:	ff87879b          	addiw	a5,a5,-8
    80001be4:	00100713          	li	a4,1
    80001be8:	00f77e63          	bgeu	a4,a5,80001c04 <_ZN5Riscv20handleSupervisorTrapEv+0x50>
        //print(sepc)
        //print(stval) //trap value

    }

}
    80001bec:	03813083          	ld	ra,56(sp)
    80001bf0:	03013403          	ld	s0,48(sp)
    80001bf4:	02813483          	ld	s1,40(sp)
    80001bf8:	02013903          	ld	s2,32(sp)
    80001bfc:	04010113          	addi	sp,sp,64
    80001c00:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c04:	141027f3          	csrr	a5,sepc
    80001c08:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001c0c:	fd843483          	ld	s1,-40(s0)
        uint64 sepc = r_sepc() + 4;
    80001c10:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c14:	100027f3          	csrr	a5,sstatus
    80001c18:	fcf43823          	sd	a5,-48(s0)
    return sstatus;
    80001c1c:	fd043903          	ld	s2,-48(s0)
        if(a0reg==0x04){
    80001c20:	00400793          	li	a5,4
    80001c24:	00f68c63          	beq	a3,a5,80001c3c <_ZN5Riscv20handleSupervisorTrapEv+0x88>
            syscallHandler();
    80001c28:	00000097          	auipc	ra,0x0
    80001c2c:	eec080e7          	jalr	-276(ra) # 80001b14 <_ZN5Riscv14syscallHandlerEv>
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001c30:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c34:	14149073          	csrw	sepc,s1
}
    80001c38:	fb5ff06f          	j	80001bec <_ZN5Riscv20handleSupervisorTrapEv+0x38>
            _thread::timeSliceCounter = 0;
    80001c3c:	00004797          	auipc	a5,0x4
    80001c40:	cac7b783          	ld	a5,-852(a5) # 800058e8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c44:	0007b023          	sd	zero,0(a5)
            _thread::dispatch();
    80001c48:	fffff097          	auipc	ra,0xfffff
    80001c4c:	640080e7          	jalr	1600(ra) # 80001288 <_ZN7_thread8dispatchEv>
    80001c50:	fe1ff06f          	j	80001c30 <_ZN5Riscv20handleSupervisorTrapEv+0x7c>

0000000080001c54 <_ZN15MemoryAllocator10kmem_allocEm>:
//

#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::kmem_alloc(size_t size){
    80001c54:	ff010113          	addi	sp,sp,-16
    80001c58:	00113423          	sd	ra,8(sp)
    80001c5c:	00813023          	sd	s0,0(sp)
    80001c60:	01010413          	addi	s0,sp,16
    return __mem_alloc(size);
    80001c64:	00002097          	auipc	ra,0x2
    80001c68:	2f4080e7          	jalr	756(ra) # 80003f58 <__mem_alloc>
}
    80001c6c:	00813083          	ld	ra,8(sp)
    80001c70:	00013403          	ld	s0,0(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZN15MemoryAllocator9kmem_freeEPv>:

int MemoryAllocator::kmem_free(void* arg){
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00113423          	sd	ra,8(sp)
    80001c84:	00813023          	sd	s0,0(sp)
    80001c88:	01010413          	addi	s0,sp,16
    return __mem_free(arg);
    80001c8c:	00002097          	auipc	ra,0x2
    80001c90:	200080e7          	jalr	512(ra) # 80003e8c <__mem_free>
    80001c94:	00813083          	ld	ra,8(sp)
    80001c98:	00013403          	ld	s0,0(sp)
    80001c9c:	01010113          	addi	sp,sp,16
    80001ca0:	00008067          	ret

0000000080001ca4 <_Z11printStringPKc>:
#include "../h/Print.hpp"
#include "../h/Riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001ca4:	fd010113          	addi	sp,sp,-48
    80001ca8:	02113423          	sd	ra,40(sp)
    80001cac:	02813023          	sd	s0,32(sp)
    80001cb0:	00913c23          	sd	s1,24(sp)
    80001cb4:	01213823          	sd	s2,16(sp)
    80001cb8:	03010413          	addi	s0,sp,48
    80001cbc:	00050493          	mv	s1,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cc0:	100027f3          	csrr	a5,sstatus
    80001cc4:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80001cc8:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001ccc:	00200793          	li	a5,2
    80001cd0:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();    //cuvamo prethodni status za prekide
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);  //zabranjujemo prekide
    while (*string != '\0')
    80001cd4:	0004c503          	lbu	a0,0(s1)
    80001cd8:	00050a63          	beqz	a0,80001cec <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001cdc:	00002097          	auipc	ra,0x2
    80001ce0:	3d4080e7          	jalr	980(ra) # 800040b0 <__putc>
        string++;
    80001ce4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001ce8:	fedff06f          	j	80001cd4 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);   //restauriramo status za prekide
    80001cec:	0009091b          	sext.w	s2,s2
    80001cf0:	00297913          	andi	s2,s2,2
    80001cf4:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001cf8:	10092073          	csrs	sstatus,s2
}
    80001cfc:	02813083          	ld	ra,40(sp)
    80001d00:	02013403          	ld	s0,32(sp)
    80001d04:	01813483          	ld	s1,24(sp)
    80001d08:	01013903          	ld	s2,16(sp)
    80001d0c:	03010113          	addi	sp,sp,48
    80001d10:	00008067          	ret

0000000080001d14 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    80001d14:	fc010113          	addi	sp,sp,-64
    80001d18:	02113c23          	sd	ra,56(sp)
    80001d1c:	02813823          	sd	s0,48(sp)
    80001d20:	02913423          	sd	s1,40(sp)
    80001d24:	03213023          	sd	s2,32(sp)
    80001d28:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d2c:	100027f3          	csrr	a5,sstatus
    80001d30:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001d34:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d38:	00200793          	li	a5,2
    80001d3c:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    80001d40:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    80001d44:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    80001d48:	00a00613          	li	a2,10
    80001d4c:	02c5773b          	remuw	a4,a0,a2
    80001d50:	02071693          	slli	a3,a4,0x20
    80001d54:	0206d693          	srli	a3,a3,0x20
    80001d58:	00003717          	auipc	a4,0x3
    80001d5c:	33870713          	addi	a4,a4,824 # 80005090 <_ZZ12printIntegermE6digits>
    80001d60:	00d70733          	add	a4,a4,a3
    80001d64:	00074703          	lbu	a4,0(a4)
    80001d68:	fe040693          	addi	a3,s0,-32
    80001d6c:	009687b3          	add	a5,a3,s1
    80001d70:	0014849b          	addiw	s1,s1,1
    80001d74:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    80001d78:	0005071b          	sext.w	a4,a0
    80001d7c:	02c5553b          	divuw	a0,a0,a2
    80001d80:	00900793          	li	a5,9
    80001d84:	fce7e2e3          	bltu	a5,a4,80001d48 <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    80001d88:	fff4849b          	addiw	s1,s1,-1
    80001d8c:	0004ce63          	bltz	s1,80001da8 <_Z12printIntegerm+0x94>
    80001d90:	fe040793          	addi	a5,s0,-32
    80001d94:	009787b3          	add	a5,a5,s1
    80001d98:	ff07c503          	lbu	a0,-16(a5)
    80001d9c:	00002097          	auipc	ra,0x2
    80001da0:	314080e7          	jalr	788(ra) # 800040b0 <__putc>
    80001da4:	fe5ff06f          	j	80001d88 <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    80001da8:	0009091b          	sext.w	s2,s2
    80001dac:	00297913          	andi	s2,s2,2
    80001db0:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001db4:	10092073          	csrs	sstatus,s2
}
    80001db8:	03813083          	ld	ra,56(sp)
    80001dbc:	03013403          	ld	s0,48(sp)
    80001dc0:	02813483          	ld	s1,40(sp)
    80001dc4:	02013903          	ld	s2,32(sp)
    80001dc8:	04010113          	addi	sp,sp,64
    80001dcc:	00008067          	ret

0000000080001dd0 <start>:
    80001dd0:	ff010113          	addi	sp,sp,-16
    80001dd4:	00813423          	sd	s0,8(sp)
    80001dd8:	01010413          	addi	s0,sp,16
    80001ddc:	300027f3          	csrr	a5,mstatus
    80001de0:	ffffe737          	lui	a4,0xffffe
    80001de4:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7c1f>
    80001de8:	00e7f7b3          	and	a5,a5,a4
    80001dec:	00001737          	lui	a4,0x1
    80001df0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001df4:	00e7e7b3          	or	a5,a5,a4
    80001df8:	30079073          	csrw	mstatus,a5
    80001dfc:	00000797          	auipc	a5,0x0
    80001e00:	16078793          	addi	a5,a5,352 # 80001f5c <system_main>
    80001e04:	34179073          	csrw	mepc,a5
    80001e08:	00000793          	li	a5,0
    80001e0c:	18079073          	csrw	satp,a5
    80001e10:	000107b7          	lui	a5,0x10
    80001e14:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e18:	30279073          	csrw	medeleg,a5
    80001e1c:	30379073          	csrw	mideleg,a5
    80001e20:	104027f3          	csrr	a5,sie
    80001e24:	2227e793          	ori	a5,a5,546
    80001e28:	10479073          	csrw	sie,a5
    80001e2c:	fff00793          	li	a5,-1
    80001e30:	00a7d793          	srli	a5,a5,0xa
    80001e34:	3b079073          	csrw	pmpaddr0,a5
    80001e38:	00f00793          	li	a5,15
    80001e3c:	3a079073          	csrw	pmpcfg0,a5
    80001e40:	f14027f3          	csrr	a5,mhartid
    80001e44:	0200c737          	lui	a4,0x200c
    80001e48:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001e4c:	0007869b          	sext.w	a3,a5
    80001e50:	00269713          	slli	a4,a3,0x2
    80001e54:	000f4637          	lui	a2,0xf4
    80001e58:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001e5c:	00d70733          	add	a4,a4,a3
    80001e60:	0037979b          	slliw	a5,a5,0x3
    80001e64:	020046b7          	lui	a3,0x2004
    80001e68:	00d787b3          	add	a5,a5,a3
    80001e6c:	00c585b3          	add	a1,a1,a2
    80001e70:	00371693          	slli	a3,a4,0x3
    80001e74:	00004717          	auipc	a4,0x4
    80001e78:	afc70713          	addi	a4,a4,-1284 # 80005970 <timer_scratch>
    80001e7c:	00b7b023          	sd	a1,0(a5)
    80001e80:	00d70733          	add	a4,a4,a3
    80001e84:	00f73c23          	sd	a5,24(a4)
    80001e88:	02c73023          	sd	a2,32(a4)
    80001e8c:	34071073          	csrw	mscratch,a4
    80001e90:	00000797          	auipc	a5,0x0
    80001e94:	6e078793          	addi	a5,a5,1760 # 80002570 <timervec>
    80001e98:	30579073          	csrw	mtvec,a5
    80001e9c:	300027f3          	csrr	a5,mstatus
    80001ea0:	0087e793          	ori	a5,a5,8
    80001ea4:	30079073          	csrw	mstatus,a5
    80001ea8:	304027f3          	csrr	a5,mie
    80001eac:	0807e793          	ori	a5,a5,128
    80001eb0:	30479073          	csrw	mie,a5
    80001eb4:	f14027f3          	csrr	a5,mhartid
    80001eb8:	0007879b          	sext.w	a5,a5
    80001ebc:	00078213          	mv	tp,a5
    80001ec0:	30200073          	mret
    80001ec4:	00813403          	ld	s0,8(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <timerinit>:
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00813423          	sd	s0,8(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	f14027f3          	csrr	a5,mhartid
    80001ee0:	0200c737          	lui	a4,0x200c
    80001ee4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001ee8:	0007869b          	sext.w	a3,a5
    80001eec:	00269713          	slli	a4,a3,0x2
    80001ef0:	000f4637          	lui	a2,0xf4
    80001ef4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ef8:	00d70733          	add	a4,a4,a3
    80001efc:	0037979b          	slliw	a5,a5,0x3
    80001f00:	020046b7          	lui	a3,0x2004
    80001f04:	00d787b3          	add	a5,a5,a3
    80001f08:	00c585b3          	add	a1,a1,a2
    80001f0c:	00371693          	slli	a3,a4,0x3
    80001f10:	00004717          	auipc	a4,0x4
    80001f14:	a6070713          	addi	a4,a4,-1440 # 80005970 <timer_scratch>
    80001f18:	00b7b023          	sd	a1,0(a5)
    80001f1c:	00d70733          	add	a4,a4,a3
    80001f20:	00f73c23          	sd	a5,24(a4)
    80001f24:	02c73023          	sd	a2,32(a4)
    80001f28:	34071073          	csrw	mscratch,a4
    80001f2c:	00000797          	auipc	a5,0x0
    80001f30:	64478793          	addi	a5,a5,1604 # 80002570 <timervec>
    80001f34:	30579073          	csrw	mtvec,a5
    80001f38:	300027f3          	csrr	a5,mstatus
    80001f3c:	0087e793          	ori	a5,a5,8
    80001f40:	30079073          	csrw	mstatus,a5
    80001f44:	304027f3          	csrr	a5,mie
    80001f48:	0807e793          	ori	a5,a5,128
    80001f4c:	30479073          	csrw	mie,a5
    80001f50:	00813403          	ld	s0,8(sp)
    80001f54:	01010113          	addi	sp,sp,16
    80001f58:	00008067          	ret

0000000080001f5c <system_main>:
    80001f5c:	fe010113          	addi	sp,sp,-32
    80001f60:	00813823          	sd	s0,16(sp)
    80001f64:	00913423          	sd	s1,8(sp)
    80001f68:	00113c23          	sd	ra,24(sp)
    80001f6c:	02010413          	addi	s0,sp,32
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	0c4080e7          	jalr	196(ra) # 80002034 <cpuid>
    80001f78:	00004497          	auipc	s1,0x4
    80001f7c:	99848493          	addi	s1,s1,-1640 # 80005910 <started>
    80001f80:	02050263          	beqz	a0,80001fa4 <system_main+0x48>
    80001f84:	0004a783          	lw	a5,0(s1)
    80001f88:	0007879b          	sext.w	a5,a5
    80001f8c:	fe078ce3          	beqz	a5,80001f84 <system_main+0x28>
    80001f90:	0ff0000f          	fence
    80001f94:	00003517          	auipc	a0,0x3
    80001f98:	13c50513          	addi	a0,a0,316 # 800050d0 <_ZZ12printIntegermE6digits+0x40>
    80001f9c:	00001097          	auipc	ra,0x1
    80001fa0:	a70080e7          	jalr	-1424(ra) # 80002a0c <panic>
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	9c4080e7          	jalr	-1596(ra) # 80002968 <consoleinit>
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	150080e7          	jalr	336(ra) # 800030fc <printfinit>
    80001fb4:	00003517          	auipc	a0,0x3
    80001fb8:	0a450513          	addi	a0,a0,164 # 80005058 <kvmincrease+0xe88>
    80001fbc:	00001097          	auipc	ra,0x1
    80001fc0:	aac080e7          	jalr	-1364(ra) # 80002a68 <__printf>
    80001fc4:	00003517          	auipc	a0,0x3
    80001fc8:	0dc50513          	addi	a0,a0,220 # 800050a0 <_ZZ12printIntegermE6digits+0x10>
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	a9c080e7          	jalr	-1380(ra) # 80002a68 <__printf>
    80001fd4:	00003517          	auipc	a0,0x3
    80001fd8:	08450513          	addi	a0,a0,132 # 80005058 <kvmincrease+0xe88>
    80001fdc:	00001097          	auipc	ra,0x1
    80001fe0:	a8c080e7          	jalr	-1396(ra) # 80002a68 <__printf>
    80001fe4:	00001097          	auipc	ra,0x1
    80001fe8:	4a4080e7          	jalr	1188(ra) # 80003488 <kinit>
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	148080e7          	jalr	328(ra) # 80002134 <trapinit>
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	16c080e7          	jalr	364(ra) # 80002160 <trapinithart>
    80001ffc:	00000097          	auipc	ra,0x0
    80002000:	5b4080e7          	jalr	1460(ra) # 800025b0 <plicinit>
    80002004:	00000097          	auipc	ra,0x0
    80002008:	5d4080e7          	jalr	1492(ra) # 800025d8 <plicinithart>
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	078080e7          	jalr	120(ra) # 80002084 <userinit>
    80002014:	0ff0000f          	fence
    80002018:	00100793          	li	a5,1
    8000201c:	00003517          	auipc	a0,0x3
    80002020:	09c50513          	addi	a0,a0,156 # 800050b8 <_ZZ12printIntegermE6digits+0x28>
    80002024:	00f4a023          	sw	a5,0(s1)
    80002028:	00001097          	auipc	ra,0x1
    8000202c:	a40080e7          	jalr	-1472(ra) # 80002a68 <__printf>
    80002030:	0000006f          	j	80002030 <system_main+0xd4>

0000000080002034 <cpuid>:
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00813423          	sd	s0,8(sp)
    8000203c:	01010413          	addi	s0,sp,16
    80002040:	00020513          	mv	a0,tp
    80002044:	00813403          	ld	s0,8(sp)
    80002048:	0005051b          	sext.w	a0,a0
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <mycpu>:
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00813423          	sd	s0,8(sp)
    8000205c:	01010413          	addi	s0,sp,16
    80002060:	00020793          	mv	a5,tp
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	0007879b          	sext.w	a5,a5
    8000206c:	00779793          	slli	a5,a5,0x7
    80002070:	00005517          	auipc	a0,0x5
    80002074:	93050513          	addi	a0,a0,-1744 # 800069a0 <cpus>
    80002078:	00f50533          	add	a0,a0,a5
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <userinit>:
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16
    80002090:	00813403          	ld	s0,8(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	fffff317          	auipc	t1,0xfffff
    8000209c:	49c30067          	jr	1180(t1) # 80001534 <main>

00000000800020a0 <either_copyout>:
    800020a0:	ff010113          	addi	sp,sp,-16
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	01010413          	addi	s0,sp,16
    800020b0:	02051663          	bnez	a0,800020dc <either_copyout+0x3c>
    800020b4:	00058513          	mv	a0,a1
    800020b8:	00060593          	mv	a1,a2
    800020bc:	0006861b          	sext.w	a2,a3
    800020c0:	00002097          	auipc	ra,0x2
    800020c4:	c54080e7          	jalr	-940(ra) # 80003d14 <__memmove>
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	00000513          	li	a0,0
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret
    800020dc:	00003517          	auipc	a0,0x3
    800020e0:	01c50513          	addi	a0,a0,28 # 800050f8 <_ZZ12printIntegermE6digits+0x68>
    800020e4:	00001097          	auipc	ra,0x1
    800020e8:	928080e7          	jalr	-1752(ra) # 80002a0c <panic>

00000000800020ec <either_copyin>:
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00813023          	sd	s0,0(sp)
    800020f4:	00113423          	sd	ra,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    800020fc:	02059463          	bnez	a1,80002124 <either_copyin+0x38>
    80002100:	00060593          	mv	a1,a2
    80002104:	0006861b          	sext.w	a2,a3
    80002108:	00002097          	auipc	ra,0x2
    8000210c:	c0c080e7          	jalr	-1012(ra) # 80003d14 <__memmove>
    80002110:	00813083          	ld	ra,8(sp)
    80002114:	00013403          	ld	s0,0(sp)
    80002118:	00000513          	li	a0,0
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret
    80002124:	00003517          	auipc	a0,0x3
    80002128:	ffc50513          	addi	a0,a0,-4 # 80005120 <_ZZ12printIntegermE6digits+0x90>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	8e0080e7          	jalr	-1824(ra) # 80002a0c <panic>

0000000080002134 <trapinit>:
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00813423          	sd	s0,8(sp)
    8000213c:	01010413          	addi	s0,sp,16
    80002140:	00813403          	ld	s0,8(sp)
    80002144:	00003597          	auipc	a1,0x3
    80002148:	00458593          	addi	a1,a1,4 # 80005148 <_ZZ12printIntegermE6digits+0xb8>
    8000214c:	00005517          	auipc	a0,0x5
    80002150:	8d450513          	addi	a0,a0,-1836 # 80006a20 <tickslock>
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00001317          	auipc	t1,0x1
    8000215c:	5c030067          	jr	1472(t1) # 80003718 <initlock>

0000000080002160 <trapinithart>:
    80002160:	ff010113          	addi	sp,sp,-16
    80002164:	00813423          	sd	s0,8(sp)
    80002168:	01010413          	addi	s0,sp,16
    8000216c:	00000797          	auipc	a5,0x0
    80002170:	2f478793          	addi	a5,a5,756 # 80002460 <kernelvec>
    80002174:	10579073          	csrw	stvec,a5
    80002178:	00813403          	ld	s0,8(sp)
    8000217c:	01010113          	addi	sp,sp,16
    80002180:	00008067          	ret

0000000080002184 <usertrap>:
    80002184:	ff010113          	addi	sp,sp,-16
    80002188:	00813423          	sd	s0,8(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00813403          	ld	s0,8(sp)
    80002194:	01010113          	addi	sp,sp,16
    80002198:	00008067          	ret

000000008000219c <usertrapret>:
    8000219c:	ff010113          	addi	sp,sp,-16
    800021a0:	00813423          	sd	s0,8(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00813403          	ld	s0,8(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <kerneltrap>:
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00113c23          	sd	ra,24(sp)
    800021c0:	00913423          	sd	s1,8(sp)
    800021c4:	02010413          	addi	s0,sp,32
    800021c8:	142025f3          	csrr	a1,scause
    800021cc:	100027f3          	csrr	a5,sstatus
    800021d0:	0027f793          	andi	a5,a5,2
    800021d4:	10079c63          	bnez	a5,800022ec <kerneltrap+0x138>
    800021d8:	142027f3          	csrr	a5,scause
    800021dc:	0207ce63          	bltz	a5,80002218 <kerneltrap+0x64>
    800021e0:	00003517          	auipc	a0,0x3
    800021e4:	fb050513          	addi	a0,a0,-80 # 80005190 <_ZZ12printIntegermE6digits+0x100>
    800021e8:	00001097          	auipc	ra,0x1
    800021ec:	880080e7          	jalr	-1920(ra) # 80002a68 <__printf>
    800021f0:	141025f3          	csrr	a1,sepc
    800021f4:	14302673          	csrr	a2,stval
    800021f8:	00003517          	auipc	a0,0x3
    800021fc:	fa850513          	addi	a0,a0,-88 # 800051a0 <_ZZ12printIntegermE6digits+0x110>
    80002200:	00001097          	auipc	ra,0x1
    80002204:	868080e7          	jalr	-1944(ra) # 80002a68 <__printf>
    80002208:	00003517          	auipc	a0,0x3
    8000220c:	fb050513          	addi	a0,a0,-80 # 800051b8 <_ZZ12printIntegermE6digits+0x128>
    80002210:	00000097          	auipc	ra,0x0
    80002214:	7fc080e7          	jalr	2044(ra) # 80002a0c <panic>
    80002218:	0ff7f713          	andi	a4,a5,255
    8000221c:	00900693          	li	a3,9
    80002220:	04d70063          	beq	a4,a3,80002260 <kerneltrap+0xac>
    80002224:	fff00713          	li	a4,-1
    80002228:	03f71713          	slli	a4,a4,0x3f
    8000222c:	00170713          	addi	a4,a4,1
    80002230:	fae798e3          	bne	a5,a4,800021e0 <kerneltrap+0x2c>
    80002234:	00000097          	auipc	ra,0x0
    80002238:	e00080e7          	jalr	-512(ra) # 80002034 <cpuid>
    8000223c:	06050663          	beqz	a0,800022a8 <kerneltrap+0xf4>
    80002240:	144027f3          	csrr	a5,sip
    80002244:	ffd7f793          	andi	a5,a5,-3
    80002248:	14479073          	csrw	sip,a5
    8000224c:	01813083          	ld	ra,24(sp)
    80002250:	01013403          	ld	s0,16(sp)
    80002254:	00813483          	ld	s1,8(sp)
    80002258:	02010113          	addi	sp,sp,32
    8000225c:	00008067          	ret
    80002260:	00000097          	auipc	ra,0x0
    80002264:	3c4080e7          	jalr	964(ra) # 80002624 <plic_claim>
    80002268:	00a00793          	li	a5,10
    8000226c:	00050493          	mv	s1,a0
    80002270:	06f50863          	beq	a0,a5,800022e0 <kerneltrap+0x12c>
    80002274:	fc050ce3          	beqz	a0,8000224c <kerneltrap+0x98>
    80002278:	00050593          	mv	a1,a0
    8000227c:	00003517          	auipc	a0,0x3
    80002280:	ef450513          	addi	a0,a0,-268 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002284:	00000097          	auipc	ra,0x0
    80002288:	7e4080e7          	jalr	2020(ra) # 80002a68 <__printf>
    8000228c:	01013403          	ld	s0,16(sp)
    80002290:	01813083          	ld	ra,24(sp)
    80002294:	00048513          	mv	a0,s1
    80002298:	00813483          	ld	s1,8(sp)
    8000229c:	02010113          	addi	sp,sp,32
    800022a0:	00000317          	auipc	t1,0x0
    800022a4:	3bc30067          	jr	956(t1) # 8000265c <plic_complete>
    800022a8:	00004517          	auipc	a0,0x4
    800022ac:	77850513          	addi	a0,a0,1912 # 80006a20 <tickslock>
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	48c080e7          	jalr	1164(ra) # 8000373c <acquire>
    800022b8:	00003717          	auipc	a4,0x3
    800022bc:	65c70713          	addi	a4,a4,1628 # 80005914 <ticks>
    800022c0:	00072783          	lw	a5,0(a4)
    800022c4:	00004517          	auipc	a0,0x4
    800022c8:	75c50513          	addi	a0,a0,1884 # 80006a20 <tickslock>
    800022cc:	0017879b          	addiw	a5,a5,1
    800022d0:	00f72023          	sw	a5,0(a4)
    800022d4:	00001097          	auipc	ra,0x1
    800022d8:	534080e7          	jalr	1332(ra) # 80003808 <release>
    800022dc:	f65ff06f          	j	80002240 <kerneltrap+0x8c>
    800022e0:	00001097          	auipc	ra,0x1
    800022e4:	090080e7          	jalr	144(ra) # 80003370 <uartintr>
    800022e8:	fa5ff06f          	j	8000228c <kerneltrap+0xd8>
    800022ec:	00003517          	auipc	a0,0x3
    800022f0:	e6450513          	addi	a0,a0,-412 # 80005150 <_ZZ12printIntegermE6digits+0xc0>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	718080e7          	jalr	1816(ra) # 80002a0c <panic>

00000000800022fc <clockintr>:
    800022fc:	fe010113          	addi	sp,sp,-32
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	00113c23          	sd	ra,24(sp)
    8000230c:	02010413          	addi	s0,sp,32
    80002310:	00004497          	auipc	s1,0x4
    80002314:	71048493          	addi	s1,s1,1808 # 80006a20 <tickslock>
    80002318:	00048513          	mv	a0,s1
    8000231c:	00001097          	auipc	ra,0x1
    80002320:	420080e7          	jalr	1056(ra) # 8000373c <acquire>
    80002324:	00003717          	auipc	a4,0x3
    80002328:	5f070713          	addi	a4,a4,1520 # 80005914 <ticks>
    8000232c:	00072783          	lw	a5,0(a4)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	01813083          	ld	ra,24(sp)
    80002338:	00048513          	mv	a0,s1
    8000233c:	0017879b          	addiw	a5,a5,1
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	00f72023          	sw	a5,0(a4)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00001317          	auipc	t1,0x1
    80002350:	4bc30067          	jr	1212(t1) # 80003808 <release>

0000000080002354 <devintr>:
    80002354:	142027f3          	csrr	a5,scause
    80002358:	00000513          	li	a0,0
    8000235c:	0007c463          	bltz	a5,80002364 <devintr+0x10>
    80002360:	00008067          	ret
    80002364:	fe010113          	addi	sp,sp,-32
    80002368:	00813823          	sd	s0,16(sp)
    8000236c:	00113c23          	sd	ra,24(sp)
    80002370:	00913423          	sd	s1,8(sp)
    80002374:	02010413          	addi	s0,sp,32
    80002378:	0ff7f713          	andi	a4,a5,255
    8000237c:	00900693          	li	a3,9
    80002380:	04d70c63          	beq	a4,a3,800023d8 <devintr+0x84>
    80002384:	fff00713          	li	a4,-1
    80002388:	03f71713          	slli	a4,a4,0x3f
    8000238c:	00170713          	addi	a4,a4,1
    80002390:	00e78c63          	beq	a5,a4,800023a8 <devintr+0x54>
    80002394:	01813083          	ld	ra,24(sp)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	02010113          	addi	sp,sp,32
    800023a4:	00008067          	ret
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	c8c080e7          	jalr	-884(ra) # 80002034 <cpuid>
    800023b0:	06050663          	beqz	a0,8000241c <devintr+0xc8>
    800023b4:	144027f3          	csrr	a5,sip
    800023b8:	ffd7f793          	andi	a5,a5,-3
    800023bc:	14479073          	csrw	sip,a5
    800023c0:	01813083          	ld	ra,24(sp)
    800023c4:	01013403          	ld	s0,16(sp)
    800023c8:	00813483          	ld	s1,8(sp)
    800023cc:	00200513          	li	a0,2
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00008067          	ret
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	24c080e7          	jalr	588(ra) # 80002624 <plic_claim>
    800023e0:	00a00793          	li	a5,10
    800023e4:	00050493          	mv	s1,a0
    800023e8:	06f50663          	beq	a0,a5,80002454 <devintr+0x100>
    800023ec:	00100513          	li	a0,1
    800023f0:	fa0482e3          	beqz	s1,80002394 <devintr+0x40>
    800023f4:	00048593          	mv	a1,s1
    800023f8:	00003517          	auipc	a0,0x3
    800023fc:	d7850513          	addi	a0,a0,-648 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80002400:	00000097          	auipc	ra,0x0
    80002404:	668080e7          	jalr	1640(ra) # 80002a68 <__printf>
    80002408:	00048513          	mv	a0,s1
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	250080e7          	jalr	592(ra) # 8000265c <plic_complete>
    80002414:	00100513          	li	a0,1
    80002418:	f7dff06f          	j	80002394 <devintr+0x40>
    8000241c:	00004517          	auipc	a0,0x4
    80002420:	60450513          	addi	a0,a0,1540 # 80006a20 <tickslock>
    80002424:	00001097          	auipc	ra,0x1
    80002428:	318080e7          	jalr	792(ra) # 8000373c <acquire>
    8000242c:	00003717          	auipc	a4,0x3
    80002430:	4e870713          	addi	a4,a4,1256 # 80005914 <ticks>
    80002434:	00072783          	lw	a5,0(a4)
    80002438:	00004517          	auipc	a0,0x4
    8000243c:	5e850513          	addi	a0,a0,1512 # 80006a20 <tickslock>
    80002440:	0017879b          	addiw	a5,a5,1
    80002444:	00f72023          	sw	a5,0(a4)
    80002448:	00001097          	auipc	ra,0x1
    8000244c:	3c0080e7          	jalr	960(ra) # 80003808 <release>
    80002450:	f65ff06f          	j	800023b4 <devintr+0x60>
    80002454:	00001097          	auipc	ra,0x1
    80002458:	f1c080e7          	jalr	-228(ra) # 80003370 <uartintr>
    8000245c:	fadff06f          	j	80002408 <devintr+0xb4>

0000000080002460 <kernelvec>:
    80002460:	f0010113          	addi	sp,sp,-256
    80002464:	00113023          	sd	ra,0(sp)
    80002468:	00213423          	sd	sp,8(sp)
    8000246c:	00313823          	sd	gp,16(sp)
    80002470:	00413c23          	sd	tp,24(sp)
    80002474:	02513023          	sd	t0,32(sp)
    80002478:	02613423          	sd	t1,40(sp)
    8000247c:	02713823          	sd	t2,48(sp)
    80002480:	02813c23          	sd	s0,56(sp)
    80002484:	04913023          	sd	s1,64(sp)
    80002488:	04a13423          	sd	a0,72(sp)
    8000248c:	04b13823          	sd	a1,80(sp)
    80002490:	04c13c23          	sd	a2,88(sp)
    80002494:	06d13023          	sd	a3,96(sp)
    80002498:	06e13423          	sd	a4,104(sp)
    8000249c:	06f13823          	sd	a5,112(sp)
    800024a0:	07013c23          	sd	a6,120(sp)
    800024a4:	09113023          	sd	a7,128(sp)
    800024a8:	09213423          	sd	s2,136(sp)
    800024ac:	09313823          	sd	s3,144(sp)
    800024b0:	09413c23          	sd	s4,152(sp)
    800024b4:	0b513023          	sd	s5,160(sp)
    800024b8:	0b613423          	sd	s6,168(sp)
    800024bc:	0b713823          	sd	s7,176(sp)
    800024c0:	0b813c23          	sd	s8,184(sp)
    800024c4:	0d913023          	sd	s9,192(sp)
    800024c8:	0da13423          	sd	s10,200(sp)
    800024cc:	0db13823          	sd	s11,208(sp)
    800024d0:	0dc13c23          	sd	t3,216(sp)
    800024d4:	0fd13023          	sd	t4,224(sp)
    800024d8:	0fe13423          	sd	t5,232(sp)
    800024dc:	0ff13823          	sd	t6,240(sp)
    800024e0:	cd5ff0ef          	jal	ra,800021b4 <kerneltrap>
    800024e4:	00013083          	ld	ra,0(sp)
    800024e8:	00813103          	ld	sp,8(sp)
    800024ec:	01013183          	ld	gp,16(sp)
    800024f0:	02013283          	ld	t0,32(sp)
    800024f4:	02813303          	ld	t1,40(sp)
    800024f8:	03013383          	ld	t2,48(sp)
    800024fc:	03813403          	ld	s0,56(sp)
    80002500:	04013483          	ld	s1,64(sp)
    80002504:	04813503          	ld	a0,72(sp)
    80002508:	05013583          	ld	a1,80(sp)
    8000250c:	05813603          	ld	a2,88(sp)
    80002510:	06013683          	ld	a3,96(sp)
    80002514:	06813703          	ld	a4,104(sp)
    80002518:	07013783          	ld	a5,112(sp)
    8000251c:	07813803          	ld	a6,120(sp)
    80002520:	08013883          	ld	a7,128(sp)
    80002524:	08813903          	ld	s2,136(sp)
    80002528:	09013983          	ld	s3,144(sp)
    8000252c:	09813a03          	ld	s4,152(sp)
    80002530:	0a013a83          	ld	s5,160(sp)
    80002534:	0a813b03          	ld	s6,168(sp)
    80002538:	0b013b83          	ld	s7,176(sp)
    8000253c:	0b813c03          	ld	s8,184(sp)
    80002540:	0c013c83          	ld	s9,192(sp)
    80002544:	0c813d03          	ld	s10,200(sp)
    80002548:	0d013d83          	ld	s11,208(sp)
    8000254c:	0d813e03          	ld	t3,216(sp)
    80002550:	0e013e83          	ld	t4,224(sp)
    80002554:	0e813f03          	ld	t5,232(sp)
    80002558:	0f013f83          	ld	t6,240(sp)
    8000255c:	10010113          	addi	sp,sp,256
    80002560:	10200073          	sret
    80002564:	00000013          	nop
    80002568:	00000013          	nop
    8000256c:	00000013          	nop

0000000080002570 <timervec>:
    80002570:	34051573          	csrrw	a0,mscratch,a0
    80002574:	00b53023          	sd	a1,0(a0)
    80002578:	00c53423          	sd	a2,8(a0)
    8000257c:	00d53823          	sd	a3,16(a0)
    80002580:	01853583          	ld	a1,24(a0)
    80002584:	02053603          	ld	a2,32(a0)
    80002588:	0005b683          	ld	a3,0(a1)
    8000258c:	00c686b3          	add	a3,a3,a2
    80002590:	00d5b023          	sd	a3,0(a1)
    80002594:	00200593          	li	a1,2
    80002598:	14459073          	csrw	sip,a1
    8000259c:	01053683          	ld	a3,16(a0)
    800025a0:	00853603          	ld	a2,8(a0)
    800025a4:	00053583          	ld	a1,0(a0)
    800025a8:	34051573          	csrrw	a0,mscratch,a0
    800025ac:	30200073          	mret

00000000800025b0 <plicinit>:
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00813423          	sd	s0,8(sp)
    800025b8:	01010413          	addi	s0,sp,16
    800025bc:	00813403          	ld	s0,8(sp)
    800025c0:	0c0007b7          	lui	a5,0xc000
    800025c4:	00100713          	li	a4,1
    800025c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800025cc:	00e7a223          	sw	a4,4(a5)
    800025d0:	01010113          	addi	sp,sp,16
    800025d4:	00008067          	ret

00000000800025d8 <plicinithart>:
    800025d8:	ff010113          	addi	sp,sp,-16
    800025dc:	00813023          	sd	s0,0(sp)
    800025e0:	00113423          	sd	ra,8(sp)
    800025e4:	01010413          	addi	s0,sp,16
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	a4c080e7          	jalr	-1460(ra) # 80002034 <cpuid>
    800025f0:	0085171b          	slliw	a4,a0,0x8
    800025f4:	0c0027b7          	lui	a5,0xc002
    800025f8:	00e787b3          	add	a5,a5,a4
    800025fc:	40200713          	li	a4,1026
    80002600:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	00d5151b          	slliw	a0,a0,0xd
    80002610:	0c2017b7          	lui	a5,0xc201
    80002614:	00a78533          	add	a0,a5,a0
    80002618:	00052023          	sw	zero,0(a0)
    8000261c:	01010113          	addi	sp,sp,16
    80002620:	00008067          	ret

0000000080002624 <plic_claim>:
    80002624:	ff010113          	addi	sp,sp,-16
    80002628:	00813023          	sd	s0,0(sp)
    8000262c:	00113423          	sd	ra,8(sp)
    80002630:	01010413          	addi	s0,sp,16
    80002634:	00000097          	auipc	ra,0x0
    80002638:	a00080e7          	jalr	-1536(ra) # 80002034 <cpuid>
    8000263c:	00813083          	ld	ra,8(sp)
    80002640:	00013403          	ld	s0,0(sp)
    80002644:	00d5151b          	slliw	a0,a0,0xd
    80002648:	0c2017b7          	lui	a5,0xc201
    8000264c:	00a78533          	add	a0,a5,a0
    80002650:	00452503          	lw	a0,4(a0)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <plic_complete>:
    8000265c:	fe010113          	addi	sp,sp,-32
    80002660:	00813823          	sd	s0,16(sp)
    80002664:	00913423          	sd	s1,8(sp)
    80002668:	00113c23          	sd	ra,24(sp)
    8000266c:	02010413          	addi	s0,sp,32
    80002670:	00050493          	mv	s1,a0
    80002674:	00000097          	auipc	ra,0x0
    80002678:	9c0080e7          	jalr	-1600(ra) # 80002034 <cpuid>
    8000267c:	01813083          	ld	ra,24(sp)
    80002680:	01013403          	ld	s0,16(sp)
    80002684:	00d5179b          	slliw	a5,a0,0xd
    80002688:	0c201737          	lui	a4,0xc201
    8000268c:	00f707b3          	add	a5,a4,a5
    80002690:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002694:	00813483          	ld	s1,8(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <consolewrite>:
    800026a0:	fb010113          	addi	sp,sp,-80
    800026a4:	04813023          	sd	s0,64(sp)
    800026a8:	04113423          	sd	ra,72(sp)
    800026ac:	02913c23          	sd	s1,56(sp)
    800026b0:	03213823          	sd	s2,48(sp)
    800026b4:	03313423          	sd	s3,40(sp)
    800026b8:	03413023          	sd	s4,32(sp)
    800026bc:	01513c23          	sd	s5,24(sp)
    800026c0:	05010413          	addi	s0,sp,80
    800026c4:	06c05c63          	blez	a2,8000273c <consolewrite+0x9c>
    800026c8:	00060993          	mv	s3,a2
    800026cc:	00050a13          	mv	s4,a0
    800026d0:	00058493          	mv	s1,a1
    800026d4:	00000913          	li	s2,0
    800026d8:	fff00a93          	li	s5,-1
    800026dc:	01c0006f          	j	800026f8 <consolewrite+0x58>
    800026e0:	fbf44503          	lbu	a0,-65(s0)
    800026e4:	0019091b          	addiw	s2,s2,1
    800026e8:	00148493          	addi	s1,s1,1
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	a9c080e7          	jalr	-1380(ra) # 80003188 <uartputc>
    800026f4:	03298063          	beq	s3,s2,80002714 <consolewrite+0x74>
    800026f8:	00048613          	mv	a2,s1
    800026fc:	00100693          	li	a3,1
    80002700:	000a0593          	mv	a1,s4
    80002704:	fbf40513          	addi	a0,s0,-65
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	9e4080e7          	jalr	-1564(ra) # 800020ec <either_copyin>
    80002710:	fd5518e3          	bne	a0,s5,800026e0 <consolewrite+0x40>
    80002714:	04813083          	ld	ra,72(sp)
    80002718:	04013403          	ld	s0,64(sp)
    8000271c:	03813483          	ld	s1,56(sp)
    80002720:	02813983          	ld	s3,40(sp)
    80002724:	02013a03          	ld	s4,32(sp)
    80002728:	01813a83          	ld	s5,24(sp)
    8000272c:	00090513          	mv	a0,s2
    80002730:	03013903          	ld	s2,48(sp)
    80002734:	05010113          	addi	sp,sp,80
    80002738:	00008067          	ret
    8000273c:	00000913          	li	s2,0
    80002740:	fd5ff06f          	j	80002714 <consolewrite+0x74>

0000000080002744 <consoleread>:
    80002744:	f9010113          	addi	sp,sp,-112
    80002748:	06813023          	sd	s0,96(sp)
    8000274c:	04913c23          	sd	s1,88(sp)
    80002750:	05213823          	sd	s2,80(sp)
    80002754:	05313423          	sd	s3,72(sp)
    80002758:	05413023          	sd	s4,64(sp)
    8000275c:	03513c23          	sd	s5,56(sp)
    80002760:	03613823          	sd	s6,48(sp)
    80002764:	03713423          	sd	s7,40(sp)
    80002768:	03813023          	sd	s8,32(sp)
    8000276c:	06113423          	sd	ra,104(sp)
    80002770:	01913c23          	sd	s9,24(sp)
    80002774:	07010413          	addi	s0,sp,112
    80002778:	00060b93          	mv	s7,a2
    8000277c:	00050913          	mv	s2,a0
    80002780:	00058c13          	mv	s8,a1
    80002784:	00060b1b          	sext.w	s6,a2
    80002788:	00004497          	auipc	s1,0x4
    8000278c:	2c048493          	addi	s1,s1,704 # 80006a48 <cons>
    80002790:	00400993          	li	s3,4
    80002794:	fff00a13          	li	s4,-1
    80002798:	00a00a93          	li	s5,10
    8000279c:	05705e63          	blez	s7,800027f8 <consoleread+0xb4>
    800027a0:	09c4a703          	lw	a4,156(s1)
    800027a4:	0984a783          	lw	a5,152(s1)
    800027a8:	0007071b          	sext.w	a4,a4
    800027ac:	08e78463          	beq	a5,a4,80002834 <consoleread+0xf0>
    800027b0:	07f7f713          	andi	a4,a5,127
    800027b4:	00e48733          	add	a4,s1,a4
    800027b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800027bc:	0017869b          	addiw	a3,a5,1
    800027c0:	08d4ac23          	sw	a3,152(s1)
    800027c4:	00070c9b          	sext.w	s9,a4
    800027c8:	0b370663          	beq	a4,s3,80002874 <consoleread+0x130>
    800027cc:	00100693          	li	a3,1
    800027d0:	f9f40613          	addi	a2,s0,-97
    800027d4:	000c0593          	mv	a1,s8
    800027d8:	00090513          	mv	a0,s2
    800027dc:	f8e40fa3          	sb	a4,-97(s0)
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	8c0080e7          	jalr	-1856(ra) # 800020a0 <either_copyout>
    800027e8:	01450863          	beq	a0,s4,800027f8 <consoleread+0xb4>
    800027ec:	001c0c13          	addi	s8,s8,1
    800027f0:	fffb8b9b          	addiw	s7,s7,-1
    800027f4:	fb5c94e3          	bne	s9,s5,8000279c <consoleread+0x58>
    800027f8:	000b851b          	sext.w	a0,s7
    800027fc:	06813083          	ld	ra,104(sp)
    80002800:	06013403          	ld	s0,96(sp)
    80002804:	05813483          	ld	s1,88(sp)
    80002808:	05013903          	ld	s2,80(sp)
    8000280c:	04813983          	ld	s3,72(sp)
    80002810:	04013a03          	ld	s4,64(sp)
    80002814:	03813a83          	ld	s5,56(sp)
    80002818:	02813b83          	ld	s7,40(sp)
    8000281c:	02013c03          	ld	s8,32(sp)
    80002820:	01813c83          	ld	s9,24(sp)
    80002824:	40ab053b          	subw	a0,s6,a0
    80002828:	03013b03          	ld	s6,48(sp)
    8000282c:	07010113          	addi	sp,sp,112
    80002830:	00008067          	ret
    80002834:	00001097          	auipc	ra,0x1
    80002838:	1d8080e7          	jalr	472(ra) # 80003a0c <push_on>
    8000283c:	0984a703          	lw	a4,152(s1)
    80002840:	09c4a783          	lw	a5,156(s1)
    80002844:	0007879b          	sext.w	a5,a5
    80002848:	fef70ce3          	beq	a4,a5,80002840 <consoleread+0xfc>
    8000284c:	00001097          	auipc	ra,0x1
    80002850:	234080e7          	jalr	564(ra) # 80003a80 <pop_on>
    80002854:	0984a783          	lw	a5,152(s1)
    80002858:	07f7f713          	andi	a4,a5,127
    8000285c:	00e48733          	add	a4,s1,a4
    80002860:	01874703          	lbu	a4,24(a4)
    80002864:	0017869b          	addiw	a3,a5,1
    80002868:	08d4ac23          	sw	a3,152(s1)
    8000286c:	00070c9b          	sext.w	s9,a4
    80002870:	f5371ee3          	bne	a4,s3,800027cc <consoleread+0x88>
    80002874:	000b851b          	sext.w	a0,s7
    80002878:	f96bf2e3          	bgeu	s7,s6,800027fc <consoleread+0xb8>
    8000287c:	08f4ac23          	sw	a5,152(s1)
    80002880:	f7dff06f          	j	800027fc <consoleread+0xb8>

0000000080002884 <consputc>:
    80002884:	10000793          	li	a5,256
    80002888:	00f50663          	beq	a0,a5,80002894 <consputc+0x10>
    8000288c:	00001317          	auipc	t1,0x1
    80002890:	9f430067          	jr	-1548(t1) # 80003280 <uartputc_sync>
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00113423          	sd	ra,8(sp)
    8000289c:	00813023          	sd	s0,0(sp)
    800028a0:	01010413          	addi	s0,sp,16
    800028a4:	00800513          	li	a0,8
    800028a8:	00001097          	auipc	ra,0x1
    800028ac:	9d8080e7          	jalr	-1576(ra) # 80003280 <uartputc_sync>
    800028b0:	02000513          	li	a0,32
    800028b4:	00001097          	auipc	ra,0x1
    800028b8:	9cc080e7          	jalr	-1588(ra) # 80003280 <uartputc_sync>
    800028bc:	00013403          	ld	s0,0(sp)
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00800513          	li	a0,8
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00001317          	auipc	t1,0x1
    800028d0:	9b430067          	jr	-1612(t1) # 80003280 <uartputc_sync>

00000000800028d4 <consoleintr>:
    800028d4:	fe010113          	addi	sp,sp,-32
    800028d8:	00813823          	sd	s0,16(sp)
    800028dc:	00913423          	sd	s1,8(sp)
    800028e0:	01213023          	sd	s2,0(sp)
    800028e4:	00113c23          	sd	ra,24(sp)
    800028e8:	02010413          	addi	s0,sp,32
    800028ec:	00004917          	auipc	s2,0x4
    800028f0:	15c90913          	addi	s2,s2,348 # 80006a48 <cons>
    800028f4:	00050493          	mv	s1,a0
    800028f8:	00090513          	mv	a0,s2
    800028fc:	00001097          	auipc	ra,0x1
    80002900:	e40080e7          	jalr	-448(ra) # 8000373c <acquire>
    80002904:	02048c63          	beqz	s1,8000293c <consoleintr+0x68>
    80002908:	0a092783          	lw	a5,160(s2)
    8000290c:	09892703          	lw	a4,152(s2)
    80002910:	07f00693          	li	a3,127
    80002914:	40e7873b          	subw	a4,a5,a4
    80002918:	02e6e263          	bltu	a3,a4,8000293c <consoleintr+0x68>
    8000291c:	00d00713          	li	a4,13
    80002920:	04e48063          	beq	s1,a4,80002960 <consoleintr+0x8c>
    80002924:	07f7f713          	andi	a4,a5,127
    80002928:	00e90733          	add	a4,s2,a4
    8000292c:	0017879b          	addiw	a5,a5,1
    80002930:	0af92023          	sw	a5,160(s2)
    80002934:	00970c23          	sb	s1,24(a4)
    80002938:	08f92e23          	sw	a5,156(s2)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	01813083          	ld	ra,24(sp)
    80002944:	00813483          	ld	s1,8(sp)
    80002948:	00013903          	ld	s2,0(sp)
    8000294c:	00004517          	auipc	a0,0x4
    80002950:	0fc50513          	addi	a0,a0,252 # 80006a48 <cons>
    80002954:	02010113          	addi	sp,sp,32
    80002958:	00001317          	auipc	t1,0x1
    8000295c:	eb030067          	jr	-336(t1) # 80003808 <release>
    80002960:	00a00493          	li	s1,10
    80002964:	fc1ff06f          	j	80002924 <consoleintr+0x50>

0000000080002968 <consoleinit>:
    80002968:	fe010113          	addi	sp,sp,-32
    8000296c:	00113c23          	sd	ra,24(sp)
    80002970:	00813823          	sd	s0,16(sp)
    80002974:	00913423          	sd	s1,8(sp)
    80002978:	02010413          	addi	s0,sp,32
    8000297c:	00004497          	auipc	s1,0x4
    80002980:	0cc48493          	addi	s1,s1,204 # 80006a48 <cons>
    80002984:	00048513          	mv	a0,s1
    80002988:	00003597          	auipc	a1,0x3
    8000298c:	84058593          	addi	a1,a1,-1984 # 800051c8 <_ZZ12printIntegermE6digits+0x138>
    80002990:	00001097          	auipc	ra,0x1
    80002994:	d88080e7          	jalr	-632(ra) # 80003718 <initlock>
    80002998:	00000097          	auipc	ra,0x0
    8000299c:	7ac080e7          	jalr	1964(ra) # 80003144 <uartinit>
    800029a0:	01813083          	ld	ra,24(sp)
    800029a4:	01013403          	ld	s0,16(sp)
    800029a8:	00000797          	auipc	a5,0x0
    800029ac:	d9c78793          	addi	a5,a5,-612 # 80002744 <consoleread>
    800029b0:	0af4bc23          	sd	a5,184(s1)
    800029b4:	00000797          	auipc	a5,0x0
    800029b8:	cec78793          	addi	a5,a5,-788 # 800026a0 <consolewrite>
    800029bc:	0cf4b023          	sd	a5,192(s1)
    800029c0:	00813483          	ld	s1,8(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret

00000000800029cc <console_read>:
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    800029d8:	00813403          	ld	s0,8(sp)
    800029dc:	00004317          	auipc	t1,0x4
    800029e0:	12433303          	ld	t1,292(t1) # 80006b00 <devsw+0x10>
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00030067          	jr	t1

00000000800029ec <console_write>:
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00813423          	sd	s0,8(sp)
    800029f4:	01010413          	addi	s0,sp,16
    800029f8:	00813403          	ld	s0,8(sp)
    800029fc:	00004317          	auipc	t1,0x4
    80002a00:	10c33303          	ld	t1,268(t1) # 80006b08 <devsw+0x18>
    80002a04:	01010113          	addi	sp,sp,16
    80002a08:	00030067          	jr	t1

0000000080002a0c <panic>:
    80002a0c:	fe010113          	addi	sp,sp,-32
    80002a10:	00113c23          	sd	ra,24(sp)
    80002a14:	00813823          	sd	s0,16(sp)
    80002a18:	00913423          	sd	s1,8(sp)
    80002a1c:	02010413          	addi	s0,sp,32
    80002a20:	00050493          	mv	s1,a0
    80002a24:	00002517          	auipc	a0,0x2
    80002a28:	7ac50513          	addi	a0,a0,1964 # 800051d0 <_ZZ12printIntegermE6digits+0x140>
    80002a2c:	00004797          	auipc	a5,0x4
    80002a30:	1607ae23          	sw	zero,380(a5) # 80006ba8 <pr+0x18>
    80002a34:	00000097          	auipc	ra,0x0
    80002a38:	034080e7          	jalr	52(ra) # 80002a68 <__printf>
    80002a3c:	00048513          	mv	a0,s1
    80002a40:	00000097          	auipc	ra,0x0
    80002a44:	028080e7          	jalr	40(ra) # 80002a68 <__printf>
    80002a48:	00002517          	auipc	a0,0x2
    80002a4c:	61050513          	addi	a0,a0,1552 # 80005058 <kvmincrease+0xe88>
    80002a50:	00000097          	auipc	ra,0x0
    80002a54:	018080e7          	jalr	24(ra) # 80002a68 <__printf>
    80002a58:	00100793          	li	a5,1
    80002a5c:	00003717          	auipc	a4,0x3
    80002a60:	eaf72e23          	sw	a5,-324(a4) # 80005918 <panicked>
    80002a64:	0000006f          	j	80002a64 <panic+0x58>

0000000080002a68 <__printf>:
    80002a68:	f3010113          	addi	sp,sp,-208
    80002a6c:	08813023          	sd	s0,128(sp)
    80002a70:	07313423          	sd	s3,104(sp)
    80002a74:	09010413          	addi	s0,sp,144
    80002a78:	05813023          	sd	s8,64(sp)
    80002a7c:	08113423          	sd	ra,136(sp)
    80002a80:	06913c23          	sd	s1,120(sp)
    80002a84:	07213823          	sd	s2,112(sp)
    80002a88:	07413023          	sd	s4,96(sp)
    80002a8c:	05513c23          	sd	s5,88(sp)
    80002a90:	05613823          	sd	s6,80(sp)
    80002a94:	05713423          	sd	s7,72(sp)
    80002a98:	03913c23          	sd	s9,56(sp)
    80002a9c:	03a13823          	sd	s10,48(sp)
    80002aa0:	03b13423          	sd	s11,40(sp)
    80002aa4:	00004317          	auipc	t1,0x4
    80002aa8:	0ec30313          	addi	t1,t1,236 # 80006b90 <pr>
    80002aac:	01832c03          	lw	s8,24(t1)
    80002ab0:	00b43423          	sd	a1,8(s0)
    80002ab4:	00c43823          	sd	a2,16(s0)
    80002ab8:	00d43c23          	sd	a3,24(s0)
    80002abc:	02e43023          	sd	a4,32(s0)
    80002ac0:	02f43423          	sd	a5,40(s0)
    80002ac4:	03043823          	sd	a6,48(s0)
    80002ac8:	03143c23          	sd	a7,56(s0)
    80002acc:	00050993          	mv	s3,a0
    80002ad0:	4a0c1663          	bnez	s8,80002f7c <__printf+0x514>
    80002ad4:	60098c63          	beqz	s3,800030ec <__printf+0x684>
    80002ad8:	0009c503          	lbu	a0,0(s3)
    80002adc:	00840793          	addi	a5,s0,8
    80002ae0:	f6f43c23          	sd	a5,-136(s0)
    80002ae4:	00000493          	li	s1,0
    80002ae8:	22050063          	beqz	a0,80002d08 <__printf+0x2a0>
    80002aec:	00002a37          	lui	s4,0x2
    80002af0:	00018ab7          	lui	s5,0x18
    80002af4:	000f4b37          	lui	s6,0xf4
    80002af8:	00989bb7          	lui	s7,0x989
    80002afc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002b00:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002b04:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002b08:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002b0c:	00148c9b          	addiw	s9,s1,1
    80002b10:	02500793          	li	a5,37
    80002b14:	01998933          	add	s2,s3,s9
    80002b18:	38f51263          	bne	a0,a5,80002e9c <__printf+0x434>
    80002b1c:	00094783          	lbu	a5,0(s2)
    80002b20:	00078c9b          	sext.w	s9,a5
    80002b24:	1e078263          	beqz	a5,80002d08 <__printf+0x2a0>
    80002b28:	0024849b          	addiw	s1,s1,2
    80002b2c:	07000713          	li	a4,112
    80002b30:	00998933          	add	s2,s3,s1
    80002b34:	38e78a63          	beq	a5,a4,80002ec8 <__printf+0x460>
    80002b38:	20f76863          	bltu	a4,a5,80002d48 <__printf+0x2e0>
    80002b3c:	42a78863          	beq	a5,a0,80002f6c <__printf+0x504>
    80002b40:	06400713          	li	a4,100
    80002b44:	40e79663          	bne	a5,a4,80002f50 <__printf+0x4e8>
    80002b48:	f7843783          	ld	a5,-136(s0)
    80002b4c:	0007a603          	lw	a2,0(a5)
    80002b50:	00878793          	addi	a5,a5,8
    80002b54:	f6f43c23          	sd	a5,-136(s0)
    80002b58:	42064a63          	bltz	a2,80002f8c <__printf+0x524>
    80002b5c:	00a00713          	li	a4,10
    80002b60:	02e677bb          	remuw	a5,a2,a4
    80002b64:	00002d97          	auipc	s11,0x2
    80002b68:	694d8d93          	addi	s11,s11,1684 # 800051f8 <digits>
    80002b6c:	00900593          	li	a1,9
    80002b70:	0006051b          	sext.w	a0,a2
    80002b74:	00000c93          	li	s9,0
    80002b78:	02079793          	slli	a5,a5,0x20
    80002b7c:	0207d793          	srli	a5,a5,0x20
    80002b80:	00fd87b3          	add	a5,s11,a5
    80002b84:	0007c783          	lbu	a5,0(a5)
    80002b88:	02e656bb          	divuw	a3,a2,a4
    80002b8c:	f8f40023          	sb	a5,-128(s0)
    80002b90:	14c5d863          	bge	a1,a2,80002ce0 <__printf+0x278>
    80002b94:	06300593          	li	a1,99
    80002b98:	00100c93          	li	s9,1
    80002b9c:	02e6f7bb          	remuw	a5,a3,a4
    80002ba0:	02079793          	slli	a5,a5,0x20
    80002ba4:	0207d793          	srli	a5,a5,0x20
    80002ba8:	00fd87b3          	add	a5,s11,a5
    80002bac:	0007c783          	lbu	a5,0(a5)
    80002bb0:	02e6d73b          	divuw	a4,a3,a4
    80002bb4:	f8f400a3          	sb	a5,-127(s0)
    80002bb8:	12a5f463          	bgeu	a1,a0,80002ce0 <__printf+0x278>
    80002bbc:	00a00693          	li	a3,10
    80002bc0:	00900593          	li	a1,9
    80002bc4:	02d777bb          	remuw	a5,a4,a3
    80002bc8:	02079793          	slli	a5,a5,0x20
    80002bcc:	0207d793          	srli	a5,a5,0x20
    80002bd0:	00fd87b3          	add	a5,s11,a5
    80002bd4:	0007c503          	lbu	a0,0(a5)
    80002bd8:	02d757bb          	divuw	a5,a4,a3
    80002bdc:	f8a40123          	sb	a0,-126(s0)
    80002be0:	48e5f263          	bgeu	a1,a4,80003064 <__printf+0x5fc>
    80002be4:	06300513          	li	a0,99
    80002be8:	02d7f5bb          	remuw	a1,a5,a3
    80002bec:	02059593          	slli	a1,a1,0x20
    80002bf0:	0205d593          	srli	a1,a1,0x20
    80002bf4:	00bd85b3          	add	a1,s11,a1
    80002bf8:	0005c583          	lbu	a1,0(a1)
    80002bfc:	02d7d7bb          	divuw	a5,a5,a3
    80002c00:	f8b401a3          	sb	a1,-125(s0)
    80002c04:	48e57263          	bgeu	a0,a4,80003088 <__printf+0x620>
    80002c08:	3e700513          	li	a0,999
    80002c0c:	02d7f5bb          	remuw	a1,a5,a3
    80002c10:	02059593          	slli	a1,a1,0x20
    80002c14:	0205d593          	srli	a1,a1,0x20
    80002c18:	00bd85b3          	add	a1,s11,a1
    80002c1c:	0005c583          	lbu	a1,0(a1)
    80002c20:	02d7d7bb          	divuw	a5,a5,a3
    80002c24:	f8b40223          	sb	a1,-124(s0)
    80002c28:	46e57663          	bgeu	a0,a4,80003094 <__printf+0x62c>
    80002c2c:	02d7f5bb          	remuw	a1,a5,a3
    80002c30:	02059593          	slli	a1,a1,0x20
    80002c34:	0205d593          	srli	a1,a1,0x20
    80002c38:	00bd85b3          	add	a1,s11,a1
    80002c3c:	0005c583          	lbu	a1,0(a1)
    80002c40:	02d7d7bb          	divuw	a5,a5,a3
    80002c44:	f8b402a3          	sb	a1,-123(s0)
    80002c48:	46ea7863          	bgeu	s4,a4,800030b8 <__printf+0x650>
    80002c4c:	02d7f5bb          	remuw	a1,a5,a3
    80002c50:	02059593          	slli	a1,a1,0x20
    80002c54:	0205d593          	srli	a1,a1,0x20
    80002c58:	00bd85b3          	add	a1,s11,a1
    80002c5c:	0005c583          	lbu	a1,0(a1)
    80002c60:	02d7d7bb          	divuw	a5,a5,a3
    80002c64:	f8b40323          	sb	a1,-122(s0)
    80002c68:	3eeaf863          	bgeu	s5,a4,80003058 <__printf+0x5f0>
    80002c6c:	02d7f5bb          	remuw	a1,a5,a3
    80002c70:	02059593          	slli	a1,a1,0x20
    80002c74:	0205d593          	srli	a1,a1,0x20
    80002c78:	00bd85b3          	add	a1,s11,a1
    80002c7c:	0005c583          	lbu	a1,0(a1)
    80002c80:	02d7d7bb          	divuw	a5,a5,a3
    80002c84:	f8b403a3          	sb	a1,-121(s0)
    80002c88:	42eb7e63          	bgeu	s6,a4,800030c4 <__printf+0x65c>
    80002c8c:	02d7f5bb          	remuw	a1,a5,a3
    80002c90:	02059593          	slli	a1,a1,0x20
    80002c94:	0205d593          	srli	a1,a1,0x20
    80002c98:	00bd85b3          	add	a1,s11,a1
    80002c9c:	0005c583          	lbu	a1,0(a1)
    80002ca0:	02d7d7bb          	divuw	a5,a5,a3
    80002ca4:	f8b40423          	sb	a1,-120(s0)
    80002ca8:	42ebfc63          	bgeu	s7,a4,800030e0 <__printf+0x678>
    80002cac:	02079793          	slli	a5,a5,0x20
    80002cb0:	0207d793          	srli	a5,a5,0x20
    80002cb4:	00fd8db3          	add	s11,s11,a5
    80002cb8:	000dc703          	lbu	a4,0(s11)
    80002cbc:	00a00793          	li	a5,10
    80002cc0:	00900c93          	li	s9,9
    80002cc4:	f8e404a3          	sb	a4,-119(s0)
    80002cc8:	00065c63          	bgez	a2,80002ce0 <__printf+0x278>
    80002ccc:	f9040713          	addi	a4,s0,-112
    80002cd0:	00f70733          	add	a4,a4,a5
    80002cd4:	02d00693          	li	a3,45
    80002cd8:	fed70823          	sb	a3,-16(a4)
    80002cdc:	00078c93          	mv	s9,a5
    80002ce0:	f8040793          	addi	a5,s0,-128
    80002ce4:	01978cb3          	add	s9,a5,s9
    80002ce8:	f7f40d13          	addi	s10,s0,-129
    80002cec:	000cc503          	lbu	a0,0(s9)
    80002cf0:	fffc8c93          	addi	s9,s9,-1
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	b90080e7          	jalr	-1136(ra) # 80002884 <consputc>
    80002cfc:	ffac98e3          	bne	s9,s10,80002cec <__printf+0x284>
    80002d00:	00094503          	lbu	a0,0(s2)
    80002d04:	e00514e3          	bnez	a0,80002b0c <__printf+0xa4>
    80002d08:	1a0c1663          	bnez	s8,80002eb4 <__printf+0x44c>
    80002d0c:	08813083          	ld	ra,136(sp)
    80002d10:	08013403          	ld	s0,128(sp)
    80002d14:	07813483          	ld	s1,120(sp)
    80002d18:	07013903          	ld	s2,112(sp)
    80002d1c:	06813983          	ld	s3,104(sp)
    80002d20:	06013a03          	ld	s4,96(sp)
    80002d24:	05813a83          	ld	s5,88(sp)
    80002d28:	05013b03          	ld	s6,80(sp)
    80002d2c:	04813b83          	ld	s7,72(sp)
    80002d30:	04013c03          	ld	s8,64(sp)
    80002d34:	03813c83          	ld	s9,56(sp)
    80002d38:	03013d03          	ld	s10,48(sp)
    80002d3c:	02813d83          	ld	s11,40(sp)
    80002d40:	0d010113          	addi	sp,sp,208
    80002d44:	00008067          	ret
    80002d48:	07300713          	li	a4,115
    80002d4c:	1ce78a63          	beq	a5,a4,80002f20 <__printf+0x4b8>
    80002d50:	07800713          	li	a4,120
    80002d54:	1ee79e63          	bne	a5,a4,80002f50 <__printf+0x4e8>
    80002d58:	f7843783          	ld	a5,-136(s0)
    80002d5c:	0007a703          	lw	a4,0(a5)
    80002d60:	00878793          	addi	a5,a5,8
    80002d64:	f6f43c23          	sd	a5,-136(s0)
    80002d68:	28074263          	bltz	a4,80002fec <__printf+0x584>
    80002d6c:	00002d97          	auipc	s11,0x2
    80002d70:	48cd8d93          	addi	s11,s11,1164 # 800051f8 <digits>
    80002d74:	00f77793          	andi	a5,a4,15
    80002d78:	00fd87b3          	add	a5,s11,a5
    80002d7c:	0007c683          	lbu	a3,0(a5)
    80002d80:	00f00613          	li	a2,15
    80002d84:	0007079b          	sext.w	a5,a4
    80002d88:	f8d40023          	sb	a3,-128(s0)
    80002d8c:	0047559b          	srliw	a1,a4,0x4
    80002d90:	0047569b          	srliw	a3,a4,0x4
    80002d94:	00000c93          	li	s9,0
    80002d98:	0ee65063          	bge	a2,a4,80002e78 <__printf+0x410>
    80002d9c:	00f6f693          	andi	a3,a3,15
    80002da0:	00dd86b3          	add	a3,s11,a3
    80002da4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002da8:	0087d79b          	srliw	a5,a5,0x8
    80002dac:	00100c93          	li	s9,1
    80002db0:	f8d400a3          	sb	a3,-127(s0)
    80002db4:	0cb67263          	bgeu	a2,a1,80002e78 <__printf+0x410>
    80002db8:	00f7f693          	andi	a3,a5,15
    80002dbc:	00dd86b3          	add	a3,s11,a3
    80002dc0:	0006c583          	lbu	a1,0(a3)
    80002dc4:	00f00613          	li	a2,15
    80002dc8:	0047d69b          	srliw	a3,a5,0x4
    80002dcc:	f8b40123          	sb	a1,-126(s0)
    80002dd0:	0047d593          	srli	a1,a5,0x4
    80002dd4:	28f67e63          	bgeu	a2,a5,80003070 <__printf+0x608>
    80002dd8:	00f6f693          	andi	a3,a3,15
    80002ddc:	00dd86b3          	add	a3,s11,a3
    80002de0:	0006c503          	lbu	a0,0(a3)
    80002de4:	0087d813          	srli	a6,a5,0x8
    80002de8:	0087d69b          	srliw	a3,a5,0x8
    80002dec:	f8a401a3          	sb	a0,-125(s0)
    80002df0:	28b67663          	bgeu	a2,a1,8000307c <__printf+0x614>
    80002df4:	00f6f693          	andi	a3,a3,15
    80002df8:	00dd86b3          	add	a3,s11,a3
    80002dfc:	0006c583          	lbu	a1,0(a3)
    80002e00:	00c7d513          	srli	a0,a5,0xc
    80002e04:	00c7d69b          	srliw	a3,a5,0xc
    80002e08:	f8b40223          	sb	a1,-124(s0)
    80002e0c:	29067a63          	bgeu	a2,a6,800030a0 <__printf+0x638>
    80002e10:	00f6f693          	andi	a3,a3,15
    80002e14:	00dd86b3          	add	a3,s11,a3
    80002e18:	0006c583          	lbu	a1,0(a3)
    80002e1c:	0107d813          	srli	a6,a5,0x10
    80002e20:	0107d69b          	srliw	a3,a5,0x10
    80002e24:	f8b402a3          	sb	a1,-123(s0)
    80002e28:	28a67263          	bgeu	a2,a0,800030ac <__printf+0x644>
    80002e2c:	00f6f693          	andi	a3,a3,15
    80002e30:	00dd86b3          	add	a3,s11,a3
    80002e34:	0006c683          	lbu	a3,0(a3)
    80002e38:	0147d79b          	srliw	a5,a5,0x14
    80002e3c:	f8d40323          	sb	a3,-122(s0)
    80002e40:	21067663          	bgeu	a2,a6,8000304c <__printf+0x5e4>
    80002e44:	02079793          	slli	a5,a5,0x20
    80002e48:	0207d793          	srli	a5,a5,0x20
    80002e4c:	00fd8db3          	add	s11,s11,a5
    80002e50:	000dc683          	lbu	a3,0(s11)
    80002e54:	00800793          	li	a5,8
    80002e58:	00700c93          	li	s9,7
    80002e5c:	f8d403a3          	sb	a3,-121(s0)
    80002e60:	00075c63          	bgez	a4,80002e78 <__printf+0x410>
    80002e64:	f9040713          	addi	a4,s0,-112
    80002e68:	00f70733          	add	a4,a4,a5
    80002e6c:	02d00693          	li	a3,45
    80002e70:	fed70823          	sb	a3,-16(a4)
    80002e74:	00078c93          	mv	s9,a5
    80002e78:	f8040793          	addi	a5,s0,-128
    80002e7c:	01978cb3          	add	s9,a5,s9
    80002e80:	f7f40d13          	addi	s10,s0,-129
    80002e84:	000cc503          	lbu	a0,0(s9)
    80002e88:	fffc8c93          	addi	s9,s9,-1
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	9f8080e7          	jalr	-1544(ra) # 80002884 <consputc>
    80002e94:	ff9d18e3          	bne	s10,s9,80002e84 <__printf+0x41c>
    80002e98:	0100006f          	j	80002ea8 <__printf+0x440>
    80002e9c:	00000097          	auipc	ra,0x0
    80002ea0:	9e8080e7          	jalr	-1560(ra) # 80002884 <consputc>
    80002ea4:	000c8493          	mv	s1,s9
    80002ea8:	00094503          	lbu	a0,0(s2)
    80002eac:	c60510e3          	bnez	a0,80002b0c <__printf+0xa4>
    80002eb0:	e40c0ee3          	beqz	s8,80002d0c <__printf+0x2a4>
    80002eb4:	00004517          	auipc	a0,0x4
    80002eb8:	cdc50513          	addi	a0,a0,-804 # 80006b90 <pr>
    80002ebc:	00001097          	auipc	ra,0x1
    80002ec0:	94c080e7          	jalr	-1716(ra) # 80003808 <release>
    80002ec4:	e49ff06f          	j	80002d0c <__printf+0x2a4>
    80002ec8:	f7843783          	ld	a5,-136(s0)
    80002ecc:	03000513          	li	a0,48
    80002ed0:	01000d13          	li	s10,16
    80002ed4:	00878713          	addi	a4,a5,8
    80002ed8:	0007bc83          	ld	s9,0(a5)
    80002edc:	f6e43c23          	sd	a4,-136(s0)
    80002ee0:	00000097          	auipc	ra,0x0
    80002ee4:	9a4080e7          	jalr	-1628(ra) # 80002884 <consputc>
    80002ee8:	07800513          	li	a0,120
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	998080e7          	jalr	-1640(ra) # 80002884 <consputc>
    80002ef4:	00002d97          	auipc	s11,0x2
    80002ef8:	304d8d93          	addi	s11,s11,772 # 800051f8 <digits>
    80002efc:	03ccd793          	srli	a5,s9,0x3c
    80002f00:	00fd87b3          	add	a5,s11,a5
    80002f04:	0007c503          	lbu	a0,0(a5)
    80002f08:	fffd0d1b          	addiw	s10,s10,-1
    80002f0c:	004c9c93          	slli	s9,s9,0x4
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	974080e7          	jalr	-1676(ra) # 80002884 <consputc>
    80002f18:	fe0d12e3          	bnez	s10,80002efc <__printf+0x494>
    80002f1c:	f8dff06f          	j	80002ea8 <__printf+0x440>
    80002f20:	f7843783          	ld	a5,-136(s0)
    80002f24:	0007bc83          	ld	s9,0(a5)
    80002f28:	00878793          	addi	a5,a5,8
    80002f2c:	f6f43c23          	sd	a5,-136(s0)
    80002f30:	000c9a63          	bnez	s9,80002f44 <__printf+0x4dc>
    80002f34:	1080006f          	j	8000303c <__printf+0x5d4>
    80002f38:	001c8c93          	addi	s9,s9,1
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	948080e7          	jalr	-1720(ra) # 80002884 <consputc>
    80002f44:	000cc503          	lbu	a0,0(s9)
    80002f48:	fe0518e3          	bnez	a0,80002f38 <__printf+0x4d0>
    80002f4c:	f5dff06f          	j	80002ea8 <__printf+0x440>
    80002f50:	02500513          	li	a0,37
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	930080e7          	jalr	-1744(ra) # 80002884 <consputc>
    80002f5c:	000c8513          	mv	a0,s9
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	924080e7          	jalr	-1756(ra) # 80002884 <consputc>
    80002f68:	f41ff06f          	j	80002ea8 <__printf+0x440>
    80002f6c:	02500513          	li	a0,37
    80002f70:	00000097          	auipc	ra,0x0
    80002f74:	914080e7          	jalr	-1772(ra) # 80002884 <consputc>
    80002f78:	f31ff06f          	j	80002ea8 <__printf+0x440>
    80002f7c:	00030513          	mv	a0,t1
    80002f80:	00000097          	auipc	ra,0x0
    80002f84:	7bc080e7          	jalr	1980(ra) # 8000373c <acquire>
    80002f88:	b4dff06f          	j	80002ad4 <__printf+0x6c>
    80002f8c:	40c0053b          	negw	a0,a2
    80002f90:	00a00713          	li	a4,10
    80002f94:	02e576bb          	remuw	a3,a0,a4
    80002f98:	00002d97          	auipc	s11,0x2
    80002f9c:	260d8d93          	addi	s11,s11,608 # 800051f8 <digits>
    80002fa0:	ff700593          	li	a1,-9
    80002fa4:	02069693          	slli	a3,a3,0x20
    80002fa8:	0206d693          	srli	a3,a3,0x20
    80002fac:	00dd86b3          	add	a3,s11,a3
    80002fb0:	0006c683          	lbu	a3,0(a3)
    80002fb4:	02e557bb          	divuw	a5,a0,a4
    80002fb8:	f8d40023          	sb	a3,-128(s0)
    80002fbc:	10b65e63          	bge	a2,a1,800030d8 <__printf+0x670>
    80002fc0:	06300593          	li	a1,99
    80002fc4:	02e7f6bb          	remuw	a3,a5,a4
    80002fc8:	02069693          	slli	a3,a3,0x20
    80002fcc:	0206d693          	srli	a3,a3,0x20
    80002fd0:	00dd86b3          	add	a3,s11,a3
    80002fd4:	0006c683          	lbu	a3,0(a3)
    80002fd8:	02e7d73b          	divuw	a4,a5,a4
    80002fdc:	00200793          	li	a5,2
    80002fe0:	f8d400a3          	sb	a3,-127(s0)
    80002fe4:	bca5ece3          	bltu	a1,a0,80002bbc <__printf+0x154>
    80002fe8:	ce5ff06f          	j	80002ccc <__printf+0x264>
    80002fec:	40e007bb          	negw	a5,a4
    80002ff0:	00002d97          	auipc	s11,0x2
    80002ff4:	208d8d93          	addi	s11,s11,520 # 800051f8 <digits>
    80002ff8:	00f7f693          	andi	a3,a5,15
    80002ffc:	00dd86b3          	add	a3,s11,a3
    80003000:	0006c583          	lbu	a1,0(a3)
    80003004:	ff100613          	li	a2,-15
    80003008:	0047d69b          	srliw	a3,a5,0x4
    8000300c:	f8b40023          	sb	a1,-128(s0)
    80003010:	0047d59b          	srliw	a1,a5,0x4
    80003014:	0ac75e63          	bge	a4,a2,800030d0 <__printf+0x668>
    80003018:	00f6f693          	andi	a3,a3,15
    8000301c:	00dd86b3          	add	a3,s11,a3
    80003020:	0006c603          	lbu	a2,0(a3)
    80003024:	00f00693          	li	a3,15
    80003028:	0087d79b          	srliw	a5,a5,0x8
    8000302c:	f8c400a3          	sb	a2,-127(s0)
    80003030:	d8b6e4e3          	bltu	a3,a1,80002db8 <__printf+0x350>
    80003034:	00200793          	li	a5,2
    80003038:	e2dff06f          	j	80002e64 <__printf+0x3fc>
    8000303c:	00002c97          	auipc	s9,0x2
    80003040:	19cc8c93          	addi	s9,s9,412 # 800051d8 <_ZZ12printIntegermE6digits+0x148>
    80003044:	02800513          	li	a0,40
    80003048:	ef1ff06f          	j	80002f38 <__printf+0x4d0>
    8000304c:	00700793          	li	a5,7
    80003050:	00600c93          	li	s9,6
    80003054:	e0dff06f          	j	80002e60 <__printf+0x3f8>
    80003058:	00700793          	li	a5,7
    8000305c:	00600c93          	li	s9,6
    80003060:	c69ff06f          	j	80002cc8 <__printf+0x260>
    80003064:	00300793          	li	a5,3
    80003068:	00200c93          	li	s9,2
    8000306c:	c5dff06f          	j	80002cc8 <__printf+0x260>
    80003070:	00300793          	li	a5,3
    80003074:	00200c93          	li	s9,2
    80003078:	de9ff06f          	j	80002e60 <__printf+0x3f8>
    8000307c:	00400793          	li	a5,4
    80003080:	00300c93          	li	s9,3
    80003084:	dddff06f          	j	80002e60 <__printf+0x3f8>
    80003088:	00400793          	li	a5,4
    8000308c:	00300c93          	li	s9,3
    80003090:	c39ff06f          	j	80002cc8 <__printf+0x260>
    80003094:	00500793          	li	a5,5
    80003098:	00400c93          	li	s9,4
    8000309c:	c2dff06f          	j	80002cc8 <__printf+0x260>
    800030a0:	00500793          	li	a5,5
    800030a4:	00400c93          	li	s9,4
    800030a8:	db9ff06f          	j	80002e60 <__printf+0x3f8>
    800030ac:	00600793          	li	a5,6
    800030b0:	00500c93          	li	s9,5
    800030b4:	dadff06f          	j	80002e60 <__printf+0x3f8>
    800030b8:	00600793          	li	a5,6
    800030bc:	00500c93          	li	s9,5
    800030c0:	c09ff06f          	j	80002cc8 <__printf+0x260>
    800030c4:	00800793          	li	a5,8
    800030c8:	00700c93          	li	s9,7
    800030cc:	bfdff06f          	j	80002cc8 <__printf+0x260>
    800030d0:	00100793          	li	a5,1
    800030d4:	d91ff06f          	j	80002e64 <__printf+0x3fc>
    800030d8:	00100793          	li	a5,1
    800030dc:	bf1ff06f          	j	80002ccc <__printf+0x264>
    800030e0:	00900793          	li	a5,9
    800030e4:	00800c93          	li	s9,8
    800030e8:	be1ff06f          	j	80002cc8 <__printf+0x260>
    800030ec:	00002517          	auipc	a0,0x2
    800030f0:	0f450513          	addi	a0,a0,244 # 800051e0 <_ZZ12printIntegermE6digits+0x150>
    800030f4:	00000097          	auipc	ra,0x0
    800030f8:	918080e7          	jalr	-1768(ra) # 80002a0c <panic>

00000000800030fc <printfinit>:
    800030fc:	fe010113          	addi	sp,sp,-32
    80003100:	00813823          	sd	s0,16(sp)
    80003104:	00913423          	sd	s1,8(sp)
    80003108:	00113c23          	sd	ra,24(sp)
    8000310c:	02010413          	addi	s0,sp,32
    80003110:	00004497          	auipc	s1,0x4
    80003114:	a8048493          	addi	s1,s1,-1408 # 80006b90 <pr>
    80003118:	00048513          	mv	a0,s1
    8000311c:	00002597          	auipc	a1,0x2
    80003120:	0d458593          	addi	a1,a1,212 # 800051f0 <_ZZ12printIntegermE6digits+0x160>
    80003124:	00000097          	auipc	ra,0x0
    80003128:	5f4080e7          	jalr	1524(ra) # 80003718 <initlock>
    8000312c:	01813083          	ld	ra,24(sp)
    80003130:	01013403          	ld	s0,16(sp)
    80003134:	0004ac23          	sw	zero,24(s1)
    80003138:	00813483          	ld	s1,8(sp)
    8000313c:	02010113          	addi	sp,sp,32
    80003140:	00008067          	ret

0000000080003144 <uartinit>:
    80003144:	ff010113          	addi	sp,sp,-16
    80003148:	00813423          	sd	s0,8(sp)
    8000314c:	01010413          	addi	s0,sp,16
    80003150:	100007b7          	lui	a5,0x10000
    80003154:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003158:	f8000713          	li	a4,-128
    8000315c:	00e781a3          	sb	a4,3(a5)
    80003160:	00300713          	li	a4,3
    80003164:	00e78023          	sb	a4,0(a5)
    80003168:	000780a3          	sb	zero,1(a5)
    8000316c:	00e781a3          	sb	a4,3(a5)
    80003170:	00700693          	li	a3,7
    80003174:	00d78123          	sb	a3,2(a5)
    80003178:	00e780a3          	sb	a4,1(a5)
    8000317c:	00813403          	ld	s0,8(sp)
    80003180:	01010113          	addi	sp,sp,16
    80003184:	00008067          	ret

0000000080003188 <uartputc>:
    80003188:	00002797          	auipc	a5,0x2
    8000318c:	7907a783          	lw	a5,1936(a5) # 80005918 <panicked>
    80003190:	00078463          	beqz	a5,80003198 <uartputc+0x10>
    80003194:	0000006f          	j	80003194 <uartputc+0xc>
    80003198:	fd010113          	addi	sp,sp,-48
    8000319c:	02813023          	sd	s0,32(sp)
    800031a0:	00913c23          	sd	s1,24(sp)
    800031a4:	01213823          	sd	s2,16(sp)
    800031a8:	01313423          	sd	s3,8(sp)
    800031ac:	02113423          	sd	ra,40(sp)
    800031b0:	03010413          	addi	s0,sp,48
    800031b4:	00002917          	auipc	s2,0x2
    800031b8:	76c90913          	addi	s2,s2,1900 # 80005920 <uart_tx_r>
    800031bc:	00093783          	ld	a5,0(s2)
    800031c0:	00002497          	auipc	s1,0x2
    800031c4:	76848493          	addi	s1,s1,1896 # 80005928 <uart_tx_w>
    800031c8:	0004b703          	ld	a4,0(s1)
    800031cc:	02078693          	addi	a3,a5,32
    800031d0:	00050993          	mv	s3,a0
    800031d4:	02e69c63          	bne	a3,a4,8000320c <uartputc+0x84>
    800031d8:	00001097          	auipc	ra,0x1
    800031dc:	834080e7          	jalr	-1996(ra) # 80003a0c <push_on>
    800031e0:	00093783          	ld	a5,0(s2)
    800031e4:	0004b703          	ld	a4,0(s1)
    800031e8:	02078793          	addi	a5,a5,32
    800031ec:	00e79463          	bne	a5,a4,800031f4 <uartputc+0x6c>
    800031f0:	0000006f          	j	800031f0 <uartputc+0x68>
    800031f4:	00001097          	auipc	ra,0x1
    800031f8:	88c080e7          	jalr	-1908(ra) # 80003a80 <pop_on>
    800031fc:	00093783          	ld	a5,0(s2)
    80003200:	0004b703          	ld	a4,0(s1)
    80003204:	02078693          	addi	a3,a5,32
    80003208:	fce688e3          	beq	a3,a4,800031d8 <uartputc+0x50>
    8000320c:	01f77693          	andi	a3,a4,31
    80003210:	00004597          	auipc	a1,0x4
    80003214:	9a058593          	addi	a1,a1,-1632 # 80006bb0 <uart_tx_buf>
    80003218:	00d586b3          	add	a3,a1,a3
    8000321c:	00170713          	addi	a4,a4,1
    80003220:	01368023          	sb	s3,0(a3)
    80003224:	00e4b023          	sd	a4,0(s1)
    80003228:	10000637          	lui	a2,0x10000
    8000322c:	02f71063          	bne	a4,a5,8000324c <uartputc+0xc4>
    80003230:	0340006f          	j	80003264 <uartputc+0xdc>
    80003234:	00074703          	lbu	a4,0(a4)
    80003238:	00f93023          	sd	a5,0(s2)
    8000323c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003240:	00093783          	ld	a5,0(s2)
    80003244:	0004b703          	ld	a4,0(s1)
    80003248:	00f70e63          	beq	a4,a5,80003264 <uartputc+0xdc>
    8000324c:	00564683          	lbu	a3,5(a2)
    80003250:	01f7f713          	andi	a4,a5,31
    80003254:	00e58733          	add	a4,a1,a4
    80003258:	0206f693          	andi	a3,a3,32
    8000325c:	00178793          	addi	a5,a5,1
    80003260:	fc069ae3          	bnez	a3,80003234 <uartputc+0xac>
    80003264:	02813083          	ld	ra,40(sp)
    80003268:	02013403          	ld	s0,32(sp)
    8000326c:	01813483          	ld	s1,24(sp)
    80003270:	01013903          	ld	s2,16(sp)
    80003274:	00813983          	ld	s3,8(sp)
    80003278:	03010113          	addi	sp,sp,48
    8000327c:	00008067          	ret

0000000080003280 <uartputc_sync>:
    80003280:	ff010113          	addi	sp,sp,-16
    80003284:	00813423          	sd	s0,8(sp)
    80003288:	01010413          	addi	s0,sp,16
    8000328c:	00002717          	auipc	a4,0x2
    80003290:	68c72703          	lw	a4,1676(a4) # 80005918 <panicked>
    80003294:	02071663          	bnez	a4,800032c0 <uartputc_sync+0x40>
    80003298:	00050793          	mv	a5,a0
    8000329c:	100006b7          	lui	a3,0x10000
    800032a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800032a4:	02077713          	andi	a4,a4,32
    800032a8:	fe070ce3          	beqz	a4,800032a0 <uartputc_sync+0x20>
    800032ac:	0ff7f793          	andi	a5,a5,255
    800032b0:	00f68023          	sb	a5,0(a3)
    800032b4:	00813403          	ld	s0,8(sp)
    800032b8:	01010113          	addi	sp,sp,16
    800032bc:	00008067          	ret
    800032c0:	0000006f          	j	800032c0 <uartputc_sync+0x40>

00000000800032c4 <uartstart>:
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00813423          	sd	s0,8(sp)
    800032cc:	01010413          	addi	s0,sp,16
    800032d0:	00002617          	auipc	a2,0x2
    800032d4:	65060613          	addi	a2,a2,1616 # 80005920 <uart_tx_r>
    800032d8:	00002517          	auipc	a0,0x2
    800032dc:	65050513          	addi	a0,a0,1616 # 80005928 <uart_tx_w>
    800032e0:	00063783          	ld	a5,0(a2)
    800032e4:	00053703          	ld	a4,0(a0)
    800032e8:	04f70263          	beq	a4,a5,8000332c <uartstart+0x68>
    800032ec:	100005b7          	lui	a1,0x10000
    800032f0:	00004817          	auipc	a6,0x4
    800032f4:	8c080813          	addi	a6,a6,-1856 # 80006bb0 <uart_tx_buf>
    800032f8:	01c0006f          	j	80003314 <uartstart+0x50>
    800032fc:	0006c703          	lbu	a4,0(a3)
    80003300:	00f63023          	sd	a5,0(a2)
    80003304:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003308:	00063783          	ld	a5,0(a2)
    8000330c:	00053703          	ld	a4,0(a0)
    80003310:	00f70e63          	beq	a4,a5,8000332c <uartstart+0x68>
    80003314:	01f7f713          	andi	a4,a5,31
    80003318:	00e806b3          	add	a3,a6,a4
    8000331c:	0055c703          	lbu	a4,5(a1)
    80003320:	00178793          	addi	a5,a5,1
    80003324:	02077713          	andi	a4,a4,32
    80003328:	fc071ae3          	bnez	a4,800032fc <uartstart+0x38>
    8000332c:	00813403          	ld	s0,8(sp)
    80003330:	01010113          	addi	sp,sp,16
    80003334:	00008067          	ret

0000000080003338 <uartgetc>:
    80003338:	ff010113          	addi	sp,sp,-16
    8000333c:	00813423          	sd	s0,8(sp)
    80003340:	01010413          	addi	s0,sp,16
    80003344:	10000737          	lui	a4,0x10000
    80003348:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000334c:	0017f793          	andi	a5,a5,1
    80003350:	00078c63          	beqz	a5,80003368 <uartgetc+0x30>
    80003354:	00074503          	lbu	a0,0(a4)
    80003358:	0ff57513          	andi	a0,a0,255
    8000335c:	00813403          	ld	s0,8(sp)
    80003360:	01010113          	addi	sp,sp,16
    80003364:	00008067          	ret
    80003368:	fff00513          	li	a0,-1
    8000336c:	ff1ff06f          	j	8000335c <uartgetc+0x24>

0000000080003370 <uartintr>:
    80003370:	100007b7          	lui	a5,0x10000
    80003374:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003378:	0017f793          	andi	a5,a5,1
    8000337c:	0a078463          	beqz	a5,80003424 <uartintr+0xb4>
    80003380:	fe010113          	addi	sp,sp,-32
    80003384:	00813823          	sd	s0,16(sp)
    80003388:	00913423          	sd	s1,8(sp)
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	02010413          	addi	s0,sp,32
    80003394:	100004b7          	lui	s1,0x10000
    80003398:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000339c:	0ff57513          	andi	a0,a0,255
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	534080e7          	jalr	1332(ra) # 800028d4 <consoleintr>
    800033a8:	0054c783          	lbu	a5,5(s1)
    800033ac:	0017f793          	andi	a5,a5,1
    800033b0:	fe0794e3          	bnez	a5,80003398 <uartintr+0x28>
    800033b4:	00002617          	auipc	a2,0x2
    800033b8:	56c60613          	addi	a2,a2,1388 # 80005920 <uart_tx_r>
    800033bc:	00002517          	auipc	a0,0x2
    800033c0:	56c50513          	addi	a0,a0,1388 # 80005928 <uart_tx_w>
    800033c4:	00063783          	ld	a5,0(a2)
    800033c8:	00053703          	ld	a4,0(a0)
    800033cc:	04f70263          	beq	a4,a5,80003410 <uartintr+0xa0>
    800033d0:	100005b7          	lui	a1,0x10000
    800033d4:	00003817          	auipc	a6,0x3
    800033d8:	7dc80813          	addi	a6,a6,2012 # 80006bb0 <uart_tx_buf>
    800033dc:	01c0006f          	j	800033f8 <uartintr+0x88>
    800033e0:	0006c703          	lbu	a4,0(a3)
    800033e4:	00f63023          	sd	a5,0(a2)
    800033e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800033ec:	00063783          	ld	a5,0(a2)
    800033f0:	00053703          	ld	a4,0(a0)
    800033f4:	00f70e63          	beq	a4,a5,80003410 <uartintr+0xa0>
    800033f8:	01f7f713          	andi	a4,a5,31
    800033fc:	00e806b3          	add	a3,a6,a4
    80003400:	0055c703          	lbu	a4,5(a1)
    80003404:	00178793          	addi	a5,a5,1
    80003408:	02077713          	andi	a4,a4,32
    8000340c:	fc071ae3          	bnez	a4,800033e0 <uartintr+0x70>
    80003410:	01813083          	ld	ra,24(sp)
    80003414:	01013403          	ld	s0,16(sp)
    80003418:	00813483          	ld	s1,8(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret
    80003424:	00002617          	auipc	a2,0x2
    80003428:	4fc60613          	addi	a2,a2,1276 # 80005920 <uart_tx_r>
    8000342c:	00002517          	auipc	a0,0x2
    80003430:	4fc50513          	addi	a0,a0,1276 # 80005928 <uart_tx_w>
    80003434:	00063783          	ld	a5,0(a2)
    80003438:	00053703          	ld	a4,0(a0)
    8000343c:	04f70263          	beq	a4,a5,80003480 <uartintr+0x110>
    80003440:	100005b7          	lui	a1,0x10000
    80003444:	00003817          	auipc	a6,0x3
    80003448:	76c80813          	addi	a6,a6,1900 # 80006bb0 <uart_tx_buf>
    8000344c:	01c0006f          	j	80003468 <uartintr+0xf8>
    80003450:	0006c703          	lbu	a4,0(a3)
    80003454:	00f63023          	sd	a5,0(a2)
    80003458:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000345c:	00063783          	ld	a5,0(a2)
    80003460:	00053703          	ld	a4,0(a0)
    80003464:	02f70063          	beq	a4,a5,80003484 <uartintr+0x114>
    80003468:	01f7f713          	andi	a4,a5,31
    8000346c:	00e806b3          	add	a3,a6,a4
    80003470:	0055c703          	lbu	a4,5(a1)
    80003474:	00178793          	addi	a5,a5,1
    80003478:	02077713          	andi	a4,a4,32
    8000347c:	fc071ae3          	bnez	a4,80003450 <uartintr+0xe0>
    80003480:	00008067          	ret
    80003484:	00008067          	ret

0000000080003488 <kinit>:
    80003488:	fc010113          	addi	sp,sp,-64
    8000348c:	02913423          	sd	s1,40(sp)
    80003490:	fffff7b7          	lui	a5,0xfffff
    80003494:	00004497          	auipc	s1,0x4
    80003498:	74b48493          	addi	s1,s1,1867 # 80007bdf <end+0xfff>
    8000349c:	02813823          	sd	s0,48(sp)
    800034a0:	01313c23          	sd	s3,24(sp)
    800034a4:	00f4f4b3          	and	s1,s1,a5
    800034a8:	02113c23          	sd	ra,56(sp)
    800034ac:	03213023          	sd	s2,32(sp)
    800034b0:	01413823          	sd	s4,16(sp)
    800034b4:	01513423          	sd	s5,8(sp)
    800034b8:	04010413          	addi	s0,sp,64
    800034bc:	000017b7          	lui	a5,0x1
    800034c0:	01100993          	li	s3,17
    800034c4:	00f487b3          	add	a5,s1,a5
    800034c8:	01b99993          	slli	s3,s3,0x1b
    800034cc:	06f9e063          	bltu	s3,a5,8000352c <kinit+0xa4>
    800034d0:	00003a97          	auipc	s5,0x3
    800034d4:	710a8a93          	addi	s5,s5,1808 # 80006be0 <end>
    800034d8:	0754ec63          	bltu	s1,s5,80003550 <kinit+0xc8>
    800034dc:	0734fa63          	bgeu	s1,s3,80003550 <kinit+0xc8>
    800034e0:	00088a37          	lui	s4,0x88
    800034e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800034e8:	00002917          	auipc	s2,0x2
    800034ec:	44890913          	addi	s2,s2,1096 # 80005930 <kmem>
    800034f0:	00ca1a13          	slli	s4,s4,0xc
    800034f4:	0140006f          	j	80003508 <kinit+0x80>
    800034f8:	000017b7          	lui	a5,0x1
    800034fc:	00f484b3          	add	s1,s1,a5
    80003500:	0554e863          	bltu	s1,s5,80003550 <kinit+0xc8>
    80003504:	0534f663          	bgeu	s1,s3,80003550 <kinit+0xc8>
    80003508:	00001637          	lui	a2,0x1
    8000350c:	00100593          	li	a1,1
    80003510:	00048513          	mv	a0,s1
    80003514:	00000097          	auipc	ra,0x0
    80003518:	5e4080e7          	jalr	1508(ra) # 80003af8 <__memset>
    8000351c:	00093783          	ld	a5,0(s2)
    80003520:	00f4b023          	sd	a5,0(s1)
    80003524:	00993023          	sd	s1,0(s2)
    80003528:	fd4498e3          	bne	s1,s4,800034f8 <kinit+0x70>
    8000352c:	03813083          	ld	ra,56(sp)
    80003530:	03013403          	ld	s0,48(sp)
    80003534:	02813483          	ld	s1,40(sp)
    80003538:	02013903          	ld	s2,32(sp)
    8000353c:	01813983          	ld	s3,24(sp)
    80003540:	01013a03          	ld	s4,16(sp)
    80003544:	00813a83          	ld	s5,8(sp)
    80003548:	04010113          	addi	sp,sp,64
    8000354c:	00008067          	ret
    80003550:	00002517          	auipc	a0,0x2
    80003554:	cc050513          	addi	a0,a0,-832 # 80005210 <digits+0x18>
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	4b4080e7          	jalr	1204(ra) # 80002a0c <panic>

0000000080003560 <freerange>:
    80003560:	fc010113          	addi	sp,sp,-64
    80003564:	000017b7          	lui	a5,0x1
    80003568:	02913423          	sd	s1,40(sp)
    8000356c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003570:	009504b3          	add	s1,a0,s1
    80003574:	fffff537          	lui	a0,0xfffff
    80003578:	02813823          	sd	s0,48(sp)
    8000357c:	02113c23          	sd	ra,56(sp)
    80003580:	03213023          	sd	s2,32(sp)
    80003584:	01313c23          	sd	s3,24(sp)
    80003588:	01413823          	sd	s4,16(sp)
    8000358c:	01513423          	sd	s5,8(sp)
    80003590:	01613023          	sd	s6,0(sp)
    80003594:	04010413          	addi	s0,sp,64
    80003598:	00a4f4b3          	and	s1,s1,a0
    8000359c:	00f487b3          	add	a5,s1,a5
    800035a0:	06f5e463          	bltu	a1,a5,80003608 <freerange+0xa8>
    800035a4:	00003a97          	auipc	s5,0x3
    800035a8:	63ca8a93          	addi	s5,s5,1596 # 80006be0 <end>
    800035ac:	0954e263          	bltu	s1,s5,80003630 <freerange+0xd0>
    800035b0:	01100993          	li	s3,17
    800035b4:	01b99993          	slli	s3,s3,0x1b
    800035b8:	0734fc63          	bgeu	s1,s3,80003630 <freerange+0xd0>
    800035bc:	00058a13          	mv	s4,a1
    800035c0:	00002917          	auipc	s2,0x2
    800035c4:	37090913          	addi	s2,s2,880 # 80005930 <kmem>
    800035c8:	00002b37          	lui	s6,0x2
    800035cc:	0140006f          	j	800035e0 <freerange+0x80>
    800035d0:	000017b7          	lui	a5,0x1
    800035d4:	00f484b3          	add	s1,s1,a5
    800035d8:	0554ec63          	bltu	s1,s5,80003630 <freerange+0xd0>
    800035dc:	0534fa63          	bgeu	s1,s3,80003630 <freerange+0xd0>
    800035e0:	00001637          	lui	a2,0x1
    800035e4:	00100593          	li	a1,1
    800035e8:	00048513          	mv	a0,s1
    800035ec:	00000097          	auipc	ra,0x0
    800035f0:	50c080e7          	jalr	1292(ra) # 80003af8 <__memset>
    800035f4:	00093703          	ld	a4,0(s2)
    800035f8:	016487b3          	add	a5,s1,s6
    800035fc:	00e4b023          	sd	a4,0(s1)
    80003600:	00993023          	sd	s1,0(s2)
    80003604:	fcfa76e3          	bgeu	s4,a5,800035d0 <freerange+0x70>
    80003608:	03813083          	ld	ra,56(sp)
    8000360c:	03013403          	ld	s0,48(sp)
    80003610:	02813483          	ld	s1,40(sp)
    80003614:	02013903          	ld	s2,32(sp)
    80003618:	01813983          	ld	s3,24(sp)
    8000361c:	01013a03          	ld	s4,16(sp)
    80003620:	00813a83          	ld	s5,8(sp)
    80003624:	00013b03          	ld	s6,0(sp)
    80003628:	04010113          	addi	sp,sp,64
    8000362c:	00008067          	ret
    80003630:	00002517          	auipc	a0,0x2
    80003634:	be050513          	addi	a0,a0,-1056 # 80005210 <digits+0x18>
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	3d4080e7          	jalr	980(ra) # 80002a0c <panic>

0000000080003640 <kfree>:
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00813823          	sd	s0,16(sp)
    80003648:	00113c23          	sd	ra,24(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	03451793          	slli	a5,a0,0x34
    80003658:	04079c63          	bnez	a5,800036b0 <kfree+0x70>
    8000365c:	00003797          	auipc	a5,0x3
    80003660:	58478793          	addi	a5,a5,1412 # 80006be0 <end>
    80003664:	00050493          	mv	s1,a0
    80003668:	04f56463          	bltu	a0,a5,800036b0 <kfree+0x70>
    8000366c:	01100793          	li	a5,17
    80003670:	01b79793          	slli	a5,a5,0x1b
    80003674:	02f57e63          	bgeu	a0,a5,800036b0 <kfree+0x70>
    80003678:	00001637          	lui	a2,0x1
    8000367c:	00100593          	li	a1,1
    80003680:	00000097          	auipc	ra,0x0
    80003684:	478080e7          	jalr	1144(ra) # 80003af8 <__memset>
    80003688:	00002797          	auipc	a5,0x2
    8000368c:	2a878793          	addi	a5,a5,680 # 80005930 <kmem>
    80003690:	0007b703          	ld	a4,0(a5)
    80003694:	01813083          	ld	ra,24(sp)
    80003698:	01013403          	ld	s0,16(sp)
    8000369c:	00e4b023          	sd	a4,0(s1)
    800036a0:	0097b023          	sd	s1,0(a5)
    800036a4:	00813483          	ld	s1,8(sp)
    800036a8:	02010113          	addi	sp,sp,32
    800036ac:	00008067          	ret
    800036b0:	00002517          	auipc	a0,0x2
    800036b4:	b6050513          	addi	a0,a0,-1184 # 80005210 <digits+0x18>
    800036b8:	fffff097          	auipc	ra,0xfffff
    800036bc:	354080e7          	jalr	852(ra) # 80002a0c <panic>

00000000800036c0 <kalloc>:
    800036c0:	fe010113          	addi	sp,sp,-32
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	00113c23          	sd	ra,24(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00002797          	auipc	a5,0x2
    800036d8:	25c78793          	addi	a5,a5,604 # 80005930 <kmem>
    800036dc:	0007b483          	ld	s1,0(a5)
    800036e0:	02048063          	beqz	s1,80003700 <kalloc+0x40>
    800036e4:	0004b703          	ld	a4,0(s1)
    800036e8:	00001637          	lui	a2,0x1
    800036ec:	00500593          	li	a1,5
    800036f0:	00048513          	mv	a0,s1
    800036f4:	00e7b023          	sd	a4,0(a5)
    800036f8:	00000097          	auipc	ra,0x0
    800036fc:	400080e7          	jalr	1024(ra) # 80003af8 <__memset>
    80003700:	01813083          	ld	ra,24(sp)
    80003704:	01013403          	ld	s0,16(sp)
    80003708:	00048513          	mv	a0,s1
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret

0000000080003718 <initlock>:
    80003718:	ff010113          	addi	sp,sp,-16
    8000371c:	00813423          	sd	s0,8(sp)
    80003720:	01010413          	addi	s0,sp,16
    80003724:	00813403          	ld	s0,8(sp)
    80003728:	00b53423          	sd	a1,8(a0)
    8000372c:	00052023          	sw	zero,0(a0)
    80003730:	00053823          	sd	zero,16(a0)
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret

000000008000373c <acquire>:
    8000373c:	fe010113          	addi	sp,sp,-32
    80003740:	00813823          	sd	s0,16(sp)
    80003744:	00913423          	sd	s1,8(sp)
    80003748:	00113c23          	sd	ra,24(sp)
    8000374c:	01213023          	sd	s2,0(sp)
    80003750:	02010413          	addi	s0,sp,32
    80003754:	00050493          	mv	s1,a0
    80003758:	10002973          	csrr	s2,sstatus
    8000375c:	100027f3          	csrr	a5,sstatus
    80003760:	ffd7f793          	andi	a5,a5,-3
    80003764:	10079073          	csrw	sstatus,a5
    80003768:	fffff097          	auipc	ra,0xfffff
    8000376c:	8ec080e7          	jalr	-1812(ra) # 80002054 <mycpu>
    80003770:	07852783          	lw	a5,120(a0)
    80003774:	06078e63          	beqz	a5,800037f0 <acquire+0xb4>
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	8dc080e7          	jalr	-1828(ra) # 80002054 <mycpu>
    80003780:	07852783          	lw	a5,120(a0)
    80003784:	0004a703          	lw	a4,0(s1)
    80003788:	0017879b          	addiw	a5,a5,1
    8000378c:	06f52c23          	sw	a5,120(a0)
    80003790:	04071063          	bnez	a4,800037d0 <acquire+0x94>
    80003794:	00100713          	li	a4,1
    80003798:	00070793          	mv	a5,a4
    8000379c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800037a0:	0007879b          	sext.w	a5,a5
    800037a4:	fe079ae3          	bnez	a5,80003798 <acquire+0x5c>
    800037a8:	0ff0000f          	fence
    800037ac:	fffff097          	auipc	ra,0xfffff
    800037b0:	8a8080e7          	jalr	-1880(ra) # 80002054 <mycpu>
    800037b4:	01813083          	ld	ra,24(sp)
    800037b8:	01013403          	ld	s0,16(sp)
    800037bc:	00a4b823          	sd	a0,16(s1)
    800037c0:	00013903          	ld	s2,0(sp)
    800037c4:	00813483          	ld	s1,8(sp)
    800037c8:	02010113          	addi	sp,sp,32
    800037cc:	00008067          	ret
    800037d0:	0104b903          	ld	s2,16(s1)
    800037d4:	fffff097          	auipc	ra,0xfffff
    800037d8:	880080e7          	jalr	-1920(ra) # 80002054 <mycpu>
    800037dc:	faa91ce3          	bne	s2,a0,80003794 <acquire+0x58>
    800037e0:	00002517          	auipc	a0,0x2
    800037e4:	a3850513          	addi	a0,a0,-1480 # 80005218 <digits+0x20>
    800037e8:	fffff097          	auipc	ra,0xfffff
    800037ec:	224080e7          	jalr	548(ra) # 80002a0c <panic>
    800037f0:	00195913          	srli	s2,s2,0x1
    800037f4:	fffff097          	auipc	ra,0xfffff
    800037f8:	860080e7          	jalr	-1952(ra) # 80002054 <mycpu>
    800037fc:	00197913          	andi	s2,s2,1
    80003800:	07252e23          	sw	s2,124(a0)
    80003804:	f75ff06f          	j	80003778 <acquire+0x3c>

0000000080003808 <release>:
    80003808:	fe010113          	addi	sp,sp,-32
    8000380c:	00813823          	sd	s0,16(sp)
    80003810:	00113c23          	sd	ra,24(sp)
    80003814:	00913423          	sd	s1,8(sp)
    80003818:	01213023          	sd	s2,0(sp)
    8000381c:	02010413          	addi	s0,sp,32
    80003820:	00052783          	lw	a5,0(a0)
    80003824:	00079a63          	bnez	a5,80003838 <release+0x30>
    80003828:	00002517          	auipc	a0,0x2
    8000382c:	9f850513          	addi	a0,a0,-1544 # 80005220 <digits+0x28>
    80003830:	fffff097          	auipc	ra,0xfffff
    80003834:	1dc080e7          	jalr	476(ra) # 80002a0c <panic>
    80003838:	01053903          	ld	s2,16(a0)
    8000383c:	00050493          	mv	s1,a0
    80003840:	fffff097          	auipc	ra,0xfffff
    80003844:	814080e7          	jalr	-2028(ra) # 80002054 <mycpu>
    80003848:	fea910e3          	bne	s2,a0,80003828 <release+0x20>
    8000384c:	0004b823          	sd	zero,16(s1)
    80003850:	0ff0000f          	fence
    80003854:	0f50000f          	fence	iorw,ow
    80003858:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	7f8080e7          	jalr	2040(ra) # 80002054 <mycpu>
    80003864:	100027f3          	csrr	a5,sstatus
    80003868:	0027f793          	andi	a5,a5,2
    8000386c:	04079a63          	bnez	a5,800038c0 <release+0xb8>
    80003870:	07852783          	lw	a5,120(a0)
    80003874:	02f05e63          	blez	a5,800038b0 <release+0xa8>
    80003878:	fff7871b          	addiw	a4,a5,-1
    8000387c:	06e52c23          	sw	a4,120(a0)
    80003880:	00071c63          	bnez	a4,80003898 <release+0x90>
    80003884:	07c52783          	lw	a5,124(a0)
    80003888:	00078863          	beqz	a5,80003898 <release+0x90>
    8000388c:	100027f3          	csrr	a5,sstatus
    80003890:	0027e793          	ori	a5,a5,2
    80003894:	10079073          	csrw	sstatus,a5
    80003898:	01813083          	ld	ra,24(sp)
    8000389c:	01013403          	ld	s0,16(sp)
    800038a0:	00813483          	ld	s1,8(sp)
    800038a4:	00013903          	ld	s2,0(sp)
    800038a8:	02010113          	addi	sp,sp,32
    800038ac:	00008067          	ret
    800038b0:	00002517          	auipc	a0,0x2
    800038b4:	99050513          	addi	a0,a0,-1648 # 80005240 <digits+0x48>
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	154080e7          	jalr	340(ra) # 80002a0c <panic>
    800038c0:	00002517          	auipc	a0,0x2
    800038c4:	96850513          	addi	a0,a0,-1688 # 80005228 <digits+0x30>
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	144080e7          	jalr	324(ra) # 80002a0c <panic>

00000000800038d0 <holding>:
    800038d0:	00052783          	lw	a5,0(a0)
    800038d4:	00079663          	bnez	a5,800038e0 <holding+0x10>
    800038d8:	00000513          	li	a0,0
    800038dc:	00008067          	ret
    800038e0:	fe010113          	addi	sp,sp,-32
    800038e4:	00813823          	sd	s0,16(sp)
    800038e8:	00913423          	sd	s1,8(sp)
    800038ec:	00113c23          	sd	ra,24(sp)
    800038f0:	02010413          	addi	s0,sp,32
    800038f4:	01053483          	ld	s1,16(a0)
    800038f8:	ffffe097          	auipc	ra,0xffffe
    800038fc:	75c080e7          	jalr	1884(ra) # 80002054 <mycpu>
    80003900:	01813083          	ld	ra,24(sp)
    80003904:	01013403          	ld	s0,16(sp)
    80003908:	40a48533          	sub	a0,s1,a0
    8000390c:	00153513          	seqz	a0,a0
    80003910:	00813483          	ld	s1,8(sp)
    80003914:	02010113          	addi	sp,sp,32
    80003918:	00008067          	ret

000000008000391c <push_off>:
    8000391c:	fe010113          	addi	sp,sp,-32
    80003920:	00813823          	sd	s0,16(sp)
    80003924:	00113c23          	sd	ra,24(sp)
    80003928:	00913423          	sd	s1,8(sp)
    8000392c:	02010413          	addi	s0,sp,32
    80003930:	100024f3          	csrr	s1,sstatus
    80003934:	100027f3          	csrr	a5,sstatus
    80003938:	ffd7f793          	andi	a5,a5,-3
    8000393c:	10079073          	csrw	sstatus,a5
    80003940:	ffffe097          	auipc	ra,0xffffe
    80003944:	714080e7          	jalr	1812(ra) # 80002054 <mycpu>
    80003948:	07852783          	lw	a5,120(a0)
    8000394c:	02078663          	beqz	a5,80003978 <push_off+0x5c>
    80003950:	ffffe097          	auipc	ra,0xffffe
    80003954:	704080e7          	jalr	1796(ra) # 80002054 <mycpu>
    80003958:	07852783          	lw	a5,120(a0)
    8000395c:	01813083          	ld	ra,24(sp)
    80003960:	01013403          	ld	s0,16(sp)
    80003964:	0017879b          	addiw	a5,a5,1
    80003968:	06f52c23          	sw	a5,120(a0)
    8000396c:	00813483          	ld	s1,8(sp)
    80003970:	02010113          	addi	sp,sp,32
    80003974:	00008067          	ret
    80003978:	0014d493          	srli	s1,s1,0x1
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	6d8080e7          	jalr	1752(ra) # 80002054 <mycpu>
    80003984:	0014f493          	andi	s1,s1,1
    80003988:	06952e23          	sw	s1,124(a0)
    8000398c:	fc5ff06f          	j	80003950 <push_off+0x34>

0000000080003990 <pop_off>:
    80003990:	ff010113          	addi	sp,sp,-16
    80003994:	00813023          	sd	s0,0(sp)
    80003998:	00113423          	sd	ra,8(sp)
    8000399c:	01010413          	addi	s0,sp,16
    800039a0:	ffffe097          	auipc	ra,0xffffe
    800039a4:	6b4080e7          	jalr	1716(ra) # 80002054 <mycpu>
    800039a8:	100027f3          	csrr	a5,sstatus
    800039ac:	0027f793          	andi	a5,a5,2
    800039b0:	04079663          	bnez	a5,800039fc <pop_off+0x6c>
    800039b4:	07852783          	lw	a5,120(a0)
    800039b8:	02f05a63          	blez	a5,800039ec <pop_off+0x5c>
    800039bc:	fff7871b          	addiw	a4,a5,-1
    800039c0:	06e52c23          	sw	a4,120(a0)
    800039c4:	00071c63          	bnez	a4,800039dc <pop_off+0x4c>
    800039c8:	07c52783          	lw	a5,124(a0)
    800039cc:	00078863          	beqz	a5,800039dc <pop_off+0x4c>
    800039d0:	100027f3          	csrr	a5,sstatus
    800039d4:	0027e793          	ori	a5,a5,2
    800039d8:	10079073          	csrw	sstatus,a5
    800039dc:	00813083          	ld	ra,8(sp)
    800039e0:	00013403          	ld	s0,0(sp)
    800039e4:	01010113          	addi	sp,sp,16
    800039e8:	00008067          	ret
    800039ec:	00002517          	auipc	a0,0x2
    800039f0:	85450513          	addi	a0,a0,-1964 # 80005240 <digits+0x48>
    800039f4:	fffff097          	auipc	ra,0xfffff
    800039f8:	018080e7          	jalr	24(ra) # 80002a0c <panic>
    800039fc:	00002517          	auipc	a0,0x2
    80003a00:	82c50513          	addi	a0,a0,-2004 # 80005228 <digits+0x30>
    80003a04:	fffff097          	auipc	ra,0xfffff
    80003a08:	008080e7          	jalr	8(ra) # 80002a0c <panic>

0000000080003a0c <push_on>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00813823          	sd	s0,16(sp)
    80003a14:	00113c23          	sd	ra,24(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	100024f3          	csrr	s1,sstatus
    80003a24:	100027f3          	csrr	a5,sstatus
    80003a28:	0027e793          	ori	a5,a5,2
    80003a2c:	10079073          	csrw	sstatus,a5
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	624080e7          	jalr	1572(ra) # 80002054 <mycpu>
    80003a38:	07852783          	lw	a5,120(a0)
    80003a3c:	02078663          	beqz	a5,80003a68 <push_on+0x5c>
    80003a40:	ffffe097          	auipc	ra,0xffffe
    80003a44:	614080e7          	jalr	1556(ra) # 80002054 <mycpu>
    80003a48:	07852783          	lw	a5,120(a0)
    80003a4c:	01813083          	ld	ra,24(sp)
    80003a50:	01013403          	ld	s0,16(sp)
    80003a54:	0017879b          	addiw	a5,a5,1
    80003a58:	06f52c23          	sw	a5,120(a0)
    80003a5c:	00813483          	ld	s1,8(sp)
    80003a60:	02010113          	addi	sp,sp,32
    80003a64:	00008067          	ret
    80003a68:	0014d493          	srli	s1,s1,0x1
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	5e8080e7          	jalr	1512(ra) # 80002054 <mycpu>
    80003a74:	0014f493          	andi	s1,s1,1
    80003a78:	06952e23          	sw	s1,124(a0)
    80003a7c:	fc5ff06f          	j	80003a40 <push_on+0x34>

0000000080003a80 <pop_on>:
    80003a80:	ff010113          	addi	sp,sp,-16
    80003a84:	00813023          	sd	s0,0(sp)
    80003a88:	00113423          	sd	ra,8(sp)
    80003a8c:	01010413          	addi	s0,sp,16
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	5c4080e7          	jalr	1476(ra) # 80002054 <mycpu>
    80003a98:	100027f3          	csrr	a5,sstatus
    80003a9c:	0027f793          	andi	a5,a5,2
    80003aa0:	04078463          	beqz	a5,80003ae8 <pop_on+0x68>
    80003aa4:	07852783          	lw	a5,120(a0)
    80003aa8:	02f05863          	blez	a5,80003ad8 <pop_on+0x58>
    80003aac:	fff7879b          	addiw	a5,a5,-1
    80003ab0:	06f52c23          	sw	a5,120(a0)
    80003ab4:	07853783          	ld	a5,120(a0)
    80003ab8:	00079863          	bnez	a5,80003ac8 <pop_on+0x48>
    80003abc:	100027f3          	csrr	a5,sstatus
    80003ac0:	ffd7f793          	andi	a5,a5,-3
    80003ac4:	10079073          	csrw	sstatus,a5
    80003ac8:	00813083          	ld	ra,8(sp)
    80003acc:	00013403          	ld	s0,0(sp)
    80003ad0:	01010113          	addi	sp,sp,16
    80003ad4:	00008067          	ret
    80003ad8:	00001517          	auipc	a0,0x1
    80003adc:	79050513          	addi	a0,a0,1936 # 80005268 <digits+0x70>
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	f2c080e7          	jalr	-212(ra) # 80002a0c <panic>
    80003ae8:	00001517          	auipc	a0,0x1
    80003aec:	76050513          	addi	a0,a0,1888 # 80005248 <digits+0x50>
    80003af0:	fffff097          	auipc	ra,0xfffff
    80003af4:	f1c080e7          	jalr	-228(ra) # 80002a0c <panic>

0000000080003af8 <__memset>:
    80003af8:	ff010113          	addi	sp,sp,-16
    80003afc:	00813423          	sd	s0,8(sp)
    80003b00:	01010413          	addi	s0,sp,16
    80003b04:	1a060e63          	beqz	a2,80003cc0 <__memset+0x1c8>
    80003b08:	40a007b3          	neg	a5,a0
    80003b0c:	0077f793          	andi	a5,a5,7
    80003b10:	00778693          	addi	a3,a5,7
    80003b14:	00b00813          	li	a6,11
    80003b18:	0ff5f593          	andi	a1,a1,255
    80003b1c:	fff6071b          	addiw	a4,a2,-1
    80003b20:	1b06e663          	bltu	a3,a6,80003ccc <__memset+0x1d4>
    80003b24:	1cd76463          	bltu	a4,a3,80003cec <__memset+0x1f4>
    80003b28:	1a078e63          	beqz	a5,80003ce4 <__memset+0x1ec>
    80003b2c:	00b50023          	sb	a1,0(a0)
    80003b30:	00100713          	li	a4,1
    80003b34:	1ae78463          	beq	a5,a4,80003cdc <__memset+0x1e4>
    80003b38:	00b500a3          	sb	a1,1(a0)
    80003b3c:	00200713          	li	a4,2
    80003b40:	1ae78a63          	beq	a5,a4,80003cf4 <__memset+0x1fc>
    80003b44:	00b50123          	sb	a1,2(a0)
    80003b48:	00300713          	li	a4,3
    80003b4c:	18e78463          	beq	a5,a4,80003cd4 <__memset+0x1dc>
    80003b50:	00b501a3          	sb	a1,3(a0)
    80003b54:	00400713          	li	a4,4
    80003b58:	1ae78263          	beq	a5,a4,80003cfc <__memset+0x204>
    80003b5c:	00b50223          	sb	a1,4(a0)
    80003b60:	00500713          	li	a4,5
    80003b64:	1ae78063          	beq	a5,a4,80003d04 <__memset+0x20c>
    80003b68:	00b502a3          	sb	a1,5(a0)
    80003b6c:	00700713          	li	a4,7
    80003b70:	18e79e63          	bne	a5,a4,80003d0c <__memset+0x214>
    80003b74:	00b50323          	sb	a1,6(a0)
    80003b78:	00700e93          	li	t4,7
    80003b7c:	00859713          	slli	a4,a1,0x8
    80003b80:	00e5e733          	or	a4,a1,a4
    80003b84:	01059e13          	slli	t3,a1,0x10
    80003b88:	01c76e33          	or	t3,a4,t3
    80003b8c:	01859313          	slli	t1,a1,0x18
    80003b90:	006e6333          	or	t1,t3,t1
    80003b94:	02059893          	slli	a7,a1,0x20
    80003b98:	40f60e3b          	subw	t3,a2,a5
    80003b9c:	011368b3          	or	a7,t1,a7
    80003ba0:	02859813          	slli	a6,a1,0x28
    80003ba4:	0108e833          	or	a6,a7,a6
    80003ba8:	03059693          	slli	a3,a1,0x30
    80003bac:	003e589b          	srliw	a7,t3,0x3
    80003bb0:	00d866b3          	or	a3,a6,a3
    80003bb4:	03859713          	slli	a4,a1,0x38
    80003bb8:	00389813          	slli	a6,a7,0x3
    80003bbc:	00f507b3          	add	a5,a0,a5
    80003bc0:	00e6e733          	or	a4,a3,a4
    80003bc4:	000e089b          	sext.w	a7,t3
    80003bc8:	00f806b3          	add	a3,a6,a5
    80003bcc:	00e7b023          	sd	a4,0(a5)
    80003bd0:	00878793          	addi	a5,a5,8
    80003bd4:	fed79ce3          	bne	a5,a3,80003bcc <__memset+0xd4>
    80003bd8:	ff8e7793          	andi	a5,t3,-8
    80003bdc:	0007871b          	sext.w	a4,a5
    80003be0:	01d787bb          	addw	a5,a5,t4
    80003be4:	0ce88e63          	beq	a7,a4,80003cc0 <__memset+0x1c8>
    80003be8:	00f50733          	add	a4,a0,a5
    80003bec:	00b70023          	sb	a1,0(a4)
    80003bf0:	0017871b          	addiw	a4,a5,1
    80003bf4:	0cc77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003bf8:	00e50733          	add	a4,a0,a4
    80003bfc:	00b70023          	sb	a1,0(a4)
    80003c00:	0027871b          	addiw	a4,a5,2
    80003c04:	0ac77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c08:	00e50733          	add	a4,a0,a4
    80003c0c:	00b70023          	sb	a1,0(a4)
    80003c10:	0037871b          	addiw	a4,a5,3
    80003c14:	0ac77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c18:	00e50733          	add	a4,a0,a4
    80003c1c:	00b70023          	sb	a1,0(a4)
    80003c20:	0047871b          	addiw	a4,a5,4
    80003c24:	08c77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c28:	00e50733          	add	a4,a0,a4
    80003c2c:	00b70023          	sb	a1,0(a4)
    80003c30:	0057871b          	addiw	a4,a5,5
    80003c34:	08c77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c38:	00e50733          	add	a4,a0,a4
    80003c3c:	00b70023          	sb	a1,0(a4)
    80003c40:	0067871b          	addiw	a4,a5,6
    80003c44:	06c77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c48:	00e50733          	add	a4,a0,a4
    80003c4c:	00b70023          	sb	a1,0(a4)
    80003c50:	0077871b          	addiw	a4,a5,7
    80003c54:	06c77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c58:	00e50733          	add	a4,a0,a4
    80003c5c:	00b70023          	sb	a1,0(a4)
    80003c60:	0087871b          	addiw	a4,a5,8
    80003c64:	04c77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c68:	00e50733          	add	a4,a0,a4
    80003c6c:	00b70023          	sb	a1,0(a4)
    80003c70:	0097871b          	addiw	a4,a5,9
    80003c74:	04c77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c78:	00e50733          	add	a4,a0,a4
    80003c7c:	00b70023          	sb	a1,0(a4)
    80003c80:	00a7871b          	addiw	a4,a5,10
    80003c84:	02c77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c88:	00e50733          	add	a4,a0,a4
    80003c8c:	00b70023          	sb	a1,0(a4)
    80003c90:	00b7871b          	addiw	a4,a5,11
    80003c94:	02c77663          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003c98:	00e50733          	add	a4,a0,a4
    80003c9c:	00b70023          	sb	a1,0(a4)
    80003ca0:	00c7871b          	addiw	a4,a5,12
    80003ca4:	00c77e63          	bgeu	a4,a2,80003cc0 <__memset+0x1c8>
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00b70023          	sb	a1,0(a4)
    80003cb0:	00d7879b          	addiw	a5,a5,13
    80003cb4:	00c7f663          	bgeu	a5,a2,80003cc0 <__memset+0x1c8>
    80003cb8:	00f507b3          	add	a5,a0,a5
    80003cbc:	00b78023          	sb	a1,0(a5)
    80003cc0:	00813403          	ld	s0,8(sp)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret
    80003ccc:	00b00693          	li	a3,11
    80003cd0:	e55ff06f          	j	80003b24 <__memset+0x2c>
    80003cd4:	00300e93          	li	t4,3
    80003cd8:	ea5ff06f          	j	80003b7c <__memset+0x84>
    80003cdc:	00100e93          	li	t4,1
    80003ce0:	e9dff06f          	j	80003b7c <__memset+0x84>
    80003ce4:	00000e93          	li	t4,0
    80003ce8:	e95ff06f          	j	80003b7c <__memset+0x84>
    80003cec:	00000793          	li	a5,0
    80003cf0:	ef9ff06f          	j	80003be8 <__memset+0xf0>
    80003cf4:	00200e93          	li	t4,2
    80003cf8:	e85ff06f          	j	80003b7c <__memset+0x84>
    80003cfc:	00400e93          	li	t4,4
    80003d00:	e7dff06f          	j	80003b7c <__memset+0x84>
    80003d04:	00500e93          	li	t4,5
    80003d08:	e75ff06f          	j	80003b7c <__memset+0x84>
    80003d0c:	00600e93          	li	t4,6
    80003d10:	e6dff06f          	j	80003b7c <__memset+0x84>

0000000080003d14 <__memmove>:
    80003d14:	ff010113          	addi	sp,sp,-16
    80003d18:	00813423          	sd	s0,8(sp)
    80003d1c:	01010413          	addi	s0,sp,16
    80003d20:	0e060863          	beqz	a2,80003e10 <__memmove+0xfc>
    80003d24:	fff6069b          	addiw	a3,a2,-1
    80003d28:	0006881b          	sext.w	a6,a3
    80003d2c:	0ea5e863          	bltu	a1,a0,80003e1c <__memmove+0x108>
    80003d30:	00758713          	addi	a4,a1,7
    80003d34:	00a5e7b3          	or	a5,a1,a0
    80003d38:	40a70733          	sub	a4,a4,a0
    80003d3c:	0077f793          	andi	a5,a5,7
    80003d40:	00f73713          	sltiu	a4,a4,15
    80003d44:	00174713          	xori	a4,a4,1
    80003d48:	0017b793          	seqz	a5,a5
    80003d4c:	00e7f7b3          	and	a5,a5,a4
    80003d50:	10078863          	beqz	a5,80003e60 <__memmove+0x14c>
    80003d54:	00900793          	li	a5,9
    80003d58:	1107f463          	bgeu	a5,a6,80003e60 <__memmove+0x14c>
    80003d5c:	0036581b          	srliw	a6,a2,0x3
    80003d60:	fff8081b          	addiw	a6,a6,-1
    80003d64:	02081813          	slli	a6,a6,0x20
    80003d68:	01d85893          	srli	a7,a6,0x1d
    80003d6c:	00858813          	addi	a6,a1,8
    80003d70:	00058793          	mv	a5,a1
    80003d74:	00050713          	mv	a4,a0
    80003d78:	01088833          	add	a6,a7,a6
    80003d7c:	0007b883          	ld	a7,0(a5)
    80003d80:	00878793          	addi	a5,a5,8
    80003d84:	00870713          	addi	a4,a4,8
    80003d88:	ff173c23          	sd	a7,-8(a4)
    80003d8c:	ff0798e3          	bne	a5,a6,80003d7c <__memmove+0x68>
    80003d90:	ff867713          	andi	a4,a2,-8
    80003d94:	02071793          	slli	a5,a4,0x20
    80003d98:	0207d793          	srli	a5,a5,0x20
    80003d9c:	00f585b3          	add	a1,a1,a5
    80003da0:	40e686bb          	subw	a3,a3,a4
    80003da4:	00f507b3          	add	a5,a0,a5
    80003da8:	06e60463          	beq	a2,a4,80003e10 <__memmove+0xfc>
    80003dac:	0005c703          	lbu	a4,0(a1)
    80003db0:	00e78023          	sb	a4,0(a5)
    80003db4:	04068e63          	beqz	a3,80003e10 <__memmove+0xfc>
    80003db8:	0015c603          	lbu	a2,1(a1)
    80003dbc:	00100713          	li	a4,1
    80003dc0:	00c780a3          	sb	a2,1(a5)
    80003dc4:	04e68663          	beq	a3,a4,80003e10 <__memmove+0xfc>
    80003dc8:	0025c603          	lbu	a2,2(a1)
    80003dcc:	00200713          	li	a4,2
    80003dd0:	00c78123          	sb	a2,2(a5)
    80003dd4:	02e68e63          	beq	a3,a4,80003e10 <__memmove+0xfc>
    80003dd8:	0035c603          	lbu	a2,3(a1)
    80003ddc:	00300713          	li	a4,3
    80003de0:	00c781a3          	sb	a2,3(a5)
    80003de4:	02e68663          	beq	a3,a4,80003e10 <__memmove+0xfc>
    80003de8:	0045c603          	lbu	a2,4(a1)
    80003dec:	00400713          	li	a4,4
    80003df0:	00c78223          	sb	a2,4(a5)
    80003df4:	00e68e63          	beq	a3,a4,80003e10 <__memmove+0xfc>
    80003df8:	0055c603          	lbu	a2,5(a1)
    80003dfc:	00500713          	li	a4,5
    80003e00:	00c782a3          	sb	a2,5(a5)
    80003e04:	00e68663          	beq	a3,a4,80003e10 <__memmove+0xfc>
    80003e08:	0065c703          	lbu	a4,6(a1)
    80003e0c:	00e78323          	sb	a4,6(a5)
    80003e10:	00813403          	ld	s0,8(sp)
    80003e14:	01010113          	addi	sp,sp,16
    80003e18:	00008067          	ret
    80003e1c:	02061713          	slli	a4,a2,0x20
    80003e20:	02075713          	srli	a4,a4,0x20
    80003e24:	00e587b3          	add	a5,a1,a4
    80003e28:	f0f574e3          	bgeu	a0,a5,80003d30 <__memmove+0x1c>
    80003e2c:	02069613          	slli	a2,a3,0x20
    80003e30:	02065613          	srli	a2,a2,0x20
    80003e34:	fff64613          	not	a2,a2
    80003e38:	00e50733          	add	a4,a0,a4
    80003e3c:	00c78633          	add	a2,a5,a2
    80003e40:	fff7c683          	lbu	a3,-1(a5)
    80003e44:	fff78793          	addi	a5,a5,-1
    80003e48:	fff70713          	addi	a4,a4,-1
    80003e4c:	00d70023          	sb	a3,0(a4)
    80003e50:	fec798e3          	bne	a5,a2,80003e40 <__memmove+0x12c>
    80003e54:	00813403          	ld	s0,8(sp)
    80003e58:	01010113          	addi	sp,sp,16
    80003e5c:	00008067          	ret
    80003e60:	02069713          	slli	a4,a3,0x20
    80003e64:	02075713          	srli	a4,a4,0x20
    80003e68:	00170713          	addi	a4,a4,1
    80003e6c:	00e50733          	add	a4,a0,a4
    80003e70:	00050793          	mv	a5,a0
    80003e74:	0005c683          	lbu	a3,0(a1)
    80003e78:	00178793          	addi	a5,a5,1
    80003e7c:	00158593          	addi	a1,a1,1
    80003e80:	fed78fa3          	sb	a3,-1(a5)
    80003e84:	fee798e3          	bne	a5,a4,80003e74 <__memmove+0x160>
    80003e88:	f89ff06f          	j	80003e10 <__memmove+0xfc>

0000000080003e8c <__mem_free>:
    80003e8c:	ff010113          	addi	sp,sp,-16
    80003e90:	00813423          	sd	s0,8(sp)
    80003e94:	01010413          	addi	s0,sp,16
    80003e98:	00002597          	auipc	a1,0x2
    80003e9c:	aa058593          	addi	a1,a1,-1376 # 80005938 <freep>
    80003ea0:	0005b783          	ld	a5,0(a1)
    80003ea4:	ff050693          	addi	a3,a0,-16
    80003ea8:	0007b703          	ld	a4,0(a5)
    80003eac:	00d7fc63          	bgeu	a5,a3,80003ec4 <__mem_free+0x38>
    80003eb0:	00e6ee63          	bltu	a3,a4,80003ecc <__mem_free+0x40>
    80003eb4:	00e7fc63          	bgeu	a5,a4,80003ecc <__mem_free+0x40>
    80003eb8:	00070793          	mv	a5,a4
    80003ebc:	0007b703          	ld	a4,0(a5)
    80003ec0:	fed7e8e3          	bltu	a5,a3,80003eb0 <__mem_free+0x24>
    80003ec4:	fee7eae3          	bltu	a5,a4,80003eb8 <__mem_free+0x2c>
    80003ec8:	fee6f8e3          	bgeu	a3,a4,80003eb8 <__mem_free+0x2c>
    80003ecc:	ff852803          	lw	a6,-8(a0)
    80003ed0:	02081613          	slli	a2,a6,0x20
    80003ed4:	01c65613          	srli	a2,a2,0x1c
    80003ed8:	00c68633          	add	a2,a3,a2
    80003edc:	02c70a63          	beq	a4,a2,80003f10 <__mem_free+0x84>
    80003ee0:	fee53823          	sd	a4,-16(a0)
    80003ee4:	0087a503          	lw	a0,8(a5)
    80003ee8:	02051613          	slli	a2,a0,0x20
    80003eec:	01c65613          	srli	a2,a2,0x1c
    80003ef0:	00c78633          	add	a2,a5,a2
    80003ef4:	04c68263          	beq	a3,a2,80003f38 <__mem_free+0xac>
    80003ef8:	00813403          	ld	s0,8(sp)
    80003efc:	00d7b023          	sd	a3,0(a5)
    80003f00:	00f5b023          	sd	a5,0(a1)
    80003f04:	00000513          	li	a0,0
    80003f08:	01010113          	addi	sp,sp,16
    80003f0c:	00008067          	ret
    80003f10:	00872603          	lw	a2,8(a4)
    80003f14:	00073703          	ld	a4,0(a4)
    80003f18:	0106083b          	addw	a6,a2,a6
    80003f1c:	ff052c23          	sw	a6,-8(a0)
    80003f20:	fee53823          	sd	a4,-16(a0)
    80003f24:	0087a503          	lw	a0,8(a5)
    80003f28:	02051613          	slli	a2,a0,0x20
    80003f2c:	01c65613          	srli	a2,a2,0x1c
    80003f30:	00c78633          	add	a2,a5,a2
    80003f34:	fcc692e3          	bne	a3,a2,80003ef8 <__mem_free+0x6c>
    80003f38:	00813403          	ld	s0,8(sp)
    80003f3c:	0105053b          	addw	a0,a0,a6
    80003f40:	00a7a423          	sw	a0,8(a5)
    80003f44:	00e7b023          	sd	a4,0(a5)
    80003f48:	00f5b023          	sd	a5,0(a1)
    80003f4c:	00000513          	li	a0,0
    80003f50:	01010113          	addi	sp,sp,16
    80003f54:	00008067          	ret

0000000080003f58 <__mem_alloc>:
    80003f58:	fc010113          	addi	sp,sp,-64
    80003f5c:	02813823          	sd	s0,48(sp)
    80003f60:	02913423          	sd	s1,40(sp)
    80003f64:	03213023          	sd	s2,32(sp)
    80003f68:	01513423          	sd	s5,8(sp)
    80003f6c:	02113c23          	sd	ra,56(sp)
    80003f70:	01313c23          	sd	s3,24(sp)
    80003f74:	01413823          	sd	s4,16(sp)
    80003f78:	01613023          	sd	s6,0(sp)
    80003f7c:	04010413          	addi	s0,sp,64
    80003f80:	00002a97          	auipc	s5,0x2
    80003f84:	9b8a8a93          	addi	s5,s5,-1608 # 80005938 <freep>
    80003f88:	00f50913          	addi	s2,a0,15
    80003f8c:	000ab683          	ld	a3,0(s5)
    80003f90:	00495913          	srli	s2,s2,0x4
    80003f94:	0019049b          	addiw	s1,s2,1
    80003f98:	00048913          	mv	s2,s1
    80003f9c:	0c068c63          	beqz	a3,80004074 <__mem_alloc+0x11c>
    80003fa0:	0006b503          	ld	a0,0(a3)
    80003fa4:	00852703          	lw	a4,8(a0)
    80003fa8:	10977063          	bgeu	a4,s1,800040a8 <__mem_alloc+0x150>
    80003fac:	000017b7          	lui	a5,0x1
    80003fb0:	0009099b          	sext.w	s3,s2
    80003fb4:	0af4e863          	bltu	s1,a5,80004064 <__mem_alloc+0x10c>
    80003fb8:	02099a13          	slli	s4,s3,0x20
    80003fbc:	01ca5a13          	srli	s4,s4,0x1c
    80003fc0:	fff00b13          	li	s6,-1
    80003fc4:	0100006f          	j	80003fd4 <__mem_alloc+0x7c>
    80003fc8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    80003fcc:	00852703          	lw	a4,8(a0)
    80003fd0:	04977463          	bgeu	a4,s1,80004018 <__mem_alloc+0xc0>
    80003fd4:	00050793          	mv	a5,a0
    80003fd8:	fea698e3          	bne	a3,a0,80003fc8 <__mem_alloc+0x70>
    80003fdc:	000a0513          	mv	a0,s4
    80003fe0:	00000097          	auipc	ra,0x0
    80003fe4:	1f0080e7          	jalr	496(ra) # 800041d0 <kvmincrease>
    80003fe8:	00050793          	mv	a5,a0
    80003fec:	01050513          	addi	a0,a0,16
    80003ff0:	07678e63          	beq	a5,s6,8000406c <__mem_alloc+0x114>
    80003ff4:	0137a423          	sw	s3,8(a5)
    80003ff8:	00000097          	auipc	ra,0x0
    80003ffc:	e94080e7          	jalr	-364(ra) # 80003e8c <__mem_free>
    80004000:	000ab783          	ld	a5,0(s5)
    80004004:	06078463          	beqz	a5,8000406c <__mem_alloc+0x114>
    80004008:	0007b503          	ld	a0,0(a5)
    8000400c:	00078693          	mv	a3,a5
    80004010:	00852703          	lw	a4,8(a0)
    80004014:	fc9760e3          	bltu	a4,s1,80003fd4 <__mem_alloc+0x7c>
    80004018:	08e48263          	beq	s1,a4,8000409c <__mem_alloc+0x144>
    8000401c:	4127073b          	subw	a4,a4,s2
    80004020:	02071693          	slli	a3,a4,0x20
    80004024:	01c6d693          	srli	a3,a3,0x1c
    80004028:	00e52423          	sw	a4,8(a0)
    8000402c:	00d50533          	add	a0,a0,a3
    80004030:	01252423          	sw	s2,8(a0)
    80004034:	00fab023          	sd	a5,0(s5)
    80004038:	01050513          	addi	a0,a0,16
    8000403c:	03813083          	ld	ra,56(sp)
    80004040:	03013403          	ld	s0,48(sp)
    80004044:	02813483          	ld	s1,40(sp)
    80004048:	02013903          	ld	s2,32(sp)
    8000404c:	01813983          	ld	s3,24(sp)
    80004050:	01013a03          	ld	s4,16(sp)
    80004054:	00813a83          	ld	s5,8(sp)
    80004058:	00013b03          	ld	s6,0(sp)
    8000405c:	04010113          	addi	sp,sp,64
    80004060:	00008067          	ret
    80004064:	000019b7          	lui	s3,0x1
    80004068:	f51ff06f          	j	80003fb8 <__mem_alloc+0x60>
    8000406c:	00000513          	li	a0,0
    80004070:	fcdff06f          	j	8000403c <__mem_alloc+0xe4>
    80004074:	00003797          	auipc	a5,0x3
    80004078:	b5c78793          	addi	a5,a5,-1188 # 80006bd0 <base>
    8000407c:	00078513          	mv	a0,a5
    80004080:	00fab023          	sd	a5,0(s5)
    80004084:	00f7b023          	sd	a5,0(a5)
    80004088:	00000713          	li	a4,0
    8000408c:	00003797          	auipc	a5,0x3
    80004090:	b407a623          	sw	zero,-1204(a5) # 80006bd8 <base+0x8>
    80004094:	00050693          	mv	a3,a0
    80004098:	f11ff06f          	j	80003fa8 <__mem_alloc+0x50>
    8000409c:	00053703          	ld	a4,0(a0)
    800040a0:	00e7b023          	sd	a4,0(a5)
    800040a4:	f91ff06f          	j	80004034 <__mem_alloc+0xdc>
    800040a8:	00068793          	mv	a5,a3
    800040ac:	f6dff06f          	j	80004018 <__mem_alloc+0xc0>

00000000800040b0 <__putc>:
    800040b0:	fe010113          	addi	sp,sp,-32
    800040b4:	00813823          	sd	s0,16(sp)
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	02010413          	addi	s0,sp,32
    800040c0:	00050793          	mv	a5,a0
    800040c4:	fef40593          	addi	a1,s0,-17
    800040c8:	00100613          	li	a2,1
    800040cc:	00000513          	li	a0,0
    800040d0:	fef407a3          	sb	a5,-17(s0)
    800040d4:	fffff097          	auipc	ra,0xfffff
    800040d8:	918080e7          	jalr	-1768(ra) # 800029ec <console_write>
    800040dc:	01813083          	ld	ra,24(sp)
    800040e0:	01013403          	ld	s0,16(sp)
    800040e4:	02010113          	addi	sp,sp,32
    800040e8:	00008067          	ret

00000000800040ec <__getc>:
    800040ec:	fe010113          	addi	sp,sp,-32
    800040f0:	00813823          	sd	s0,16(sp)
    800040f4:	00113c23          	sd	ra,24(sp)
    800040f8:	02010413          	addi	s0,sp,32
    800040fc:	fe840593          	addi	a1,s0,-24
    80004100:	00100613          	li	a2,1
    80004104:	00000513          	li	a0,0
    80004108:	fffff097          	auipc	ra,0xfffff
    8000410c:	8c4080e7          	jalr	-1852(ra) # 800029cc <console_read>
    80004110:	fe844503          	lbu	a0,-24(s0)
    80004114:	01813083          	ld	ra,24(sp)
    80004118:	01013403          	ld	s0,16(sp)
    8000411c:	02010113          	addi	sp,sp,32
    80004120:	00008067          	ret

0000000080004124 <console_handler>:
    80004124:	fe010113          	addi	sp,sp,-32
    80004128:	00813823          	sd	s0,16(sp)
    8000412c:	00113c23          	sd	ra,24(sp)
    80004130:	00913423          	sd	s1,8(sp)
    80004134:	02010413          	addi	s0,sp,32
    80004138:	14202773          	csrr	a4,scause
    8000413c:	100027f3          	csrr	a5,sstatus
    80004140:	0027f793          	andi	a5,a5,2
    80004144:	06079e63          	bnez	a5,800041c0 <console_handler+0x9c>
    80004148:	00074c63          	bltz	a4,80004160 <console_handler+0x3c>
    8000414c:	01813083          	ld	ra,24(sp)
    80004150:	01013403          	ld	s0,16(sp)
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret
    80004160:	0ff77713          	andi	a4,a4,255
    80004164:	00900793          	li	a5,9
    80004168:	fef712e3          	bne	a4,a5,8000414c <console_handler+0x28>
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	4b8080e7          	jalr	1208(ra) # 80002624 <plic_claim>
    80004174:	00a00793          	li	a5,10
    80004178:	00050493          	mv	s1,a0
    8000417c:	02f50c63          	beq	a0,a5,800041b4 <console_handler+0x90>
    80004180:	fc0506e3          	beqz	a0,8000414c <console_handler+0x28>
    80004184:	00050593          	mv	a1,a0
    80004188:	00001517          	auipc	a0,0x1
    8000418c:	fe850513          	addi	a0,a0,-24 # 80005170 <_ZZ12printIntegermE6digits+0xe0>
    80004190:	fffff097          	auipc	ra,0xfffff
    80004194:	8d8080e7          	jalr	-1832(ra) # 80002a68 <__printf>
    80004198:	01013403          	ld	s0,16(sp)
    8000419c:	01813083          	ld	ra,24(sp)
    800041a0:	00048513          	mv	a0,s1
    800041a4:	00813483          	ld	s1,8(sp)
    800041a8:	02010113          	addi	sp,sp,32
    800041ac:	ffffe317          	auipc	t1,0xffffe
    800041b0:	4b030067          	jr	1200(t1) # 8000265c <plic_complete>
    800041b4:	fffff097          	auipc	ra,0xfffff
    800041b8:	1bc080e7          	jalr	444(ra) # 80003370 <uartintr>
    800041bc:	fddff06f          	j	80004198 <console_handler+0x74>
    800041c0:	00001517          	auipc	a0,0x1
    800041c4:	0b050513          	addi	a0,a0,176 # 80005270 <digits+0x78>
    800041c8:	fffff097          	auipc	ra,0xfffff
    800041cc:	844080e7          	jalr	-1980(ra) # 80002a0c <panic>

00000000800041d0 <kvmincrease>:
    800041d0:	fe010113          	addi	sp,sp,-32
    800041d4:	01213023          	sd	s2,0(sp)
    800041d8:	00001937          	lui	s2,0x1
    800041dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800041e0:	00813823          	sd	s0,16(sp)
    800041e4:	00113c23          	sd	ra,24(sp)
    800041e8:	00913423          	sd	s1,8(sp)
    800041ec:	02010413          	addi	s0,sp,32
    800041f0:	01250933          	add	s2,a0,s2
    800041f4:	00c95913          	srli	s2,s2,0xc
    800041f8:	02090863          	beqz	s2,80004228 <kvmincrease+0x58>
    800041fc:	00000493          	li	s1,0
    80004200:	00148493          	addi	s1,s1,1
    80004204:	fffff097          	auipc	ra,0xfffff
    80004208:	4bc080e7          	jalr	1212(ra) # 800036c0 <kalloc>
    8000420c:	fe991ae3          	bne	s2,s1,80004200 <kvmincrease+0x30>
    80004210:	01813083          	ld	ra,24(sp)
    80004214:	01013403          	ld	s0,16(sp)
    80004218:	00813483          	ld	s1,8(sp)
    8000421c:	00013903          	ld	s2,0(sp)
    80004220:	02010113          	addi	sp,sp,32
    80004224:	00008067          	ret
    80004228:	01813083          	ld	ra,24(sp)
    8000422c:	01013403          	ld	s0,16(sp)
    80004230:	00813483          	ld	s1,8(sp)
    80004234:	00013903          	ld	s2,0(sp)
    80004238:	00000513          	li	a0,0
    8000423c:	02010113          	addi	sp,sp,32
    80004240:	00008067          	ret
	...
